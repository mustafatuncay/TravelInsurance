unit UntSirketGelirGiderKayit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DB, ADODB,DateUtils, AdvEdit,
  AdvMoneyEdit, Grids, AdvObj, BaseGrid, AdvGrid, Buttons;

type
  TFrmSirketGelirGiderKayit = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    BtnKaydet: TButton;
    BtnGuncelle: TButton;
    BtnTemizle: TButton;
    BtnSil: TButton;
    Label2: TLabel;
    Qry1: TADOQuery;
    Label4: TLabel;
    MemAciklama: TMemo;
    Label7: TLabel;
    CurrTutar: TAdvMoneyEdit;
    DtTarih: TDateTimePicker;
    CmbTur: TComboBox;
    Label3: TLabel;
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
  FrmSirketGelirGiderKayit: TFrmSirketGelirGiderKayit;

implementation

uses UntDm, UntGlobal;

{$R *.dfm}

procedure TFrmSirketGelirGiderKayit.BtnKaydetClick(Sender: TObject);
var TmpSql:string;
i:integer;
begin


TmpSql := 'insert into SirketGelirGider (Tarih,Tur,Tutar,Aciklama) ' +
' Values' +
'(:Tarih,:Tur,:Tutar,:Aciklama)  ' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Tarih').Value    :=
IntToStr(YearOf(Date))+'-'+IntToStr(MonthOf(Date))+'-'+IntToStr(DayOf(Date));
Qry1.Parameters.ParamByName('Tur').Value      := CmbTur.Text ;
Qry1.Parameters.ParamByName('Tutar').Value    := CurrTutar.Value   ;
Qry1.Parameters.ParamByName('Aciklama').Value := MemAciklama.Text  ;
Qry1.Prepared;
Qry1.ExecSQL;

////////////////////////////////////////////////////////////////////////////////


MsgUyari('Kaydedildi  ...');
close;
end;

procedure TFrmSirketGelirGiderKayit.BtnSilClick(Sender: TObject);
var TmpSql:String;
begin

if MsgOnay('Kaydý Silmek Ýstiyormusunuz ?') = False Then exit;

TmpSql:= 'Delete From SirketGelirGider where id=:id ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('id').Value  := DtTarih.Tag;
Qry1.Prepared;
Qry1.ExecSQL;

MsgUyari('Kayýt Silindi ... ');
close;
end;

procedure TFrmSirketGelirGiderKayit.BtnGuncelleClick(Sender: TObject);
var TmpSql:string;

begin

TmpSql := 'Update SirketGelirGider set '+
'Tarih=:Tarih,' +
'Tur=:Tur,' +
'Tutar=:Tutar, '+
'Aciklama=:Aciklama'+

' where id=:id ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Tarih').Value    :=
IntToStr(YearOf(Date))+'-'+IntToStr(MonthOf(Date))+'-'+IntToStr(DayOf(Date));
Qry1.Parameters.ParamByName('Tur').Value      := CmbTur.Text ;
Qry1.Parameters.ParamByName('Tutar').Value    := CurrTutar.Value   ;
Qry1.Parameters.ParamByName('Aciklama').Value := MemAciklama.Text  ;

Qry1.Parameters.ParamByName('id').Value      := DtTarih.Tag;

Qry1.Prepared;
Qry1.ExecSQL;



MsgUyari('Güncellendi  ...');
close;

end;

procedure TFrmSirketGelirGiderKayit.BtnTemizleClick(Sender: TObject);
begin
DtTarih.Date:=Date;
CurrTutar.Value := 0;
MemAciklama.Text := '';

BtnKaydet.Enabled :=True ;
BtnGuncelle.Enabled := False;
BtnSil.Enabled := False ;

end;

procedure TFrmSirketGelirGiderKayit.CreateParams(var Params: TCreateParams);
begin
 inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;

procedure TFrmSirketGelirGiderKayit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FrmSirketGelirGiderKayit:= nil;
end;

procedure TFrmSirketGelirGiderKayit.FormCreate(Sender: TObject);
begin
DtTarih.Date := Date ;
end;

end.
