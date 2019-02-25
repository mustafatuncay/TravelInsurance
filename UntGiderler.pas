unit UntGiderler;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, MoneyEdit, ComCtrls,DateUtils;

type
  TFrmGiderler = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    BtnKaydet: TButton;
    BtnGuncelle: TButton;
    BtnTemizle: TButton;
    BtnSil: TButton;
    Label2: TLabel;
    CmbGiderTuru: TComboBox;
    Qry1: TADOQuery;
    DtTarih: TDateTimePicker;
    MemAciklama: TMemo;
    CurrMiktar: TMoneyEdit;
    Label10: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure BtnKaydetClick(Sender: TObject);
    procedure BtnTemizleClick(Sender: TObject);
    procedure BtnGuncelleClick(Sender: TObject);
    procedure BtnSilClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
   procedure CreateParams(var Params: TCreateParams); override;
    { Public declarations }
  end;

var
  FrmGiderler: TFrmGiderler;

implementation

uses UntGlobal;

{$R *.dfm}

procedure TFrmGiderler.BtnGuncelleClick(Sender: TObject);
var TmpSql:string;
begin

if CmbGiderTuru.Text = '' then begin
MsgUyari('Lürfen gider türünü seçiniz ...');
exit;
end;

if CurrMiktar.Value = 0 then begin
MsgUyari('Lürfen miktarý giriniz ...');
exit;
end;

TmpSql:= 'Update gider set '+
'GiderTuru=:GiderTuru,'+
'Tarih=:Tarih,'+
'Miktar=:Miktar,'+
'Aciklama=:Aciklama '+
' where id=:id ' ;


Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('GiderTuru').Value := CmbGiderTuru.Text ;
Qry1.Parameters.ParamByName('Tarih').Value  := IntToStr(YearOf(DtTarih.Date))+'-'+
                                               IntToStr(MonthOf(DtTarih.Date))+'-'+
                                               IntToStr(DayOf(DtTarih.Date));
Qry1.Parameters.ParamByName('Miktar').Value := CurrMiktar.Value ;
Qry1.Parameters.ParamByName('Aciklama').Value := MemAciklama.Text ;

Qry1.Parameters.ParamByName('id').Value := CmbGiderTuru.Tag ;

Qry1.Prepared;
Qry1.ExecSQL;

MsgUyari('Güncellendi ...') ;

end;


procedure TFrmGiderler.BtnKaydetClick(Sender: TObject);
var TmpSql:string;
begin

if CmbGiderTuru.Text = '' then begin
MsgUyari('Lürfen gider türünü seçiniz ...');
exit;
end;

if CurrMiktar.Value = 0 then begin
MsgUyari('Lürfen miktarý giriniz ...');
exit;
end;

TmpSql:= 'insert into gider (GiderTuru,Tarih,Miktar,Aciklama) Values(:GiderTuru,:Tarih,:Miktar,:Aciklama)' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('GiderTuru').Value := CmbGiderTuru.Text ;
Qry1.Parameters.ParamByName('Tarih').Value  := IntToStr(YearOf(DtTarih.Date))+'-'+
                                               IntToStr(MonthOf(DtTarih.Date))+'-'+
                                               IntToStr(DayOf(DtTarih.Date));
Qry1.Parameters.ParamByName('Miktar').Value := CurrMiktar.Value ;
Qry1.Parameters.ParamByName('Aciklama').Value := MemAciklama.Text ;

Qry1.Prepared;
Qry1.ExecSQL;

MsgUyari('Kaydedildi ...') ;

end;

procedure TFrmGiderler.BtnSilClick(Sender: TObject);
var TmpSql:String;
begin

if MsgOnay('Kaydý Silmek Ýstiyormusunuz ?') = False Then exit;

TmpSql:= 'Delete From gider where id=:id ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('id').Value  := CmbGiderTuru.Tag;
Qry1.Prepared;
Qry1.ExecSQL;

MsgUyari('Kayýt Silindi ... ');

end;

procedure TFrmGiderler.BtnTemizleClick(Sender: TObject);
begin
DtTarih.Date := Date ;
CurrMiktar.Value := 0 ;
MemAciklama.Clear;
CmbGiderTuru.ItemIndex := 0;
CmbGiderTuru.Tag := 0;

BtnKaydet.Enabled := True;
BtnGuncelle.Enabled := False;
BtnSil.Enabled := False;


end;

procedure TFrmGiderler.CreateParams(var Params: TCreateParams);
begin
 inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;

procedure TFrmGiderler.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FrmGiderler:= nil;

end;

procedure TFrmGiderler.FormCreate(Sender: TObject);
var TmpSql:String;
i:integer;
begin
DtTarih.Date := Date;
CmbGiderTuru.Clear;


TmpSql:= 'Select aciklama from sabitdegerler where kriterno=:kriterno order by aciklama';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('kriterno').Value := '3' ;
Qry1.Prepared;
Qry1.Open;

for i:=0 to Qry1.RecordCount-1  do begin
CmbGiderTuru.Items.Add(Qry1.FieldByName('aciklama').AsString);
Qry1.Next;
end;


end;

end.
