unit UntAjandaKayit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DB, ADODB,DateUtils, AdvEdit,
  AdvMoneyEdit, Grids, AdvObj, BaseGrid, AdvGrid, Buttons;

type
  TFrmAjandaKayit = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    BtnKaydet: TButton;
    BtnGuncelle: TButton;
    BtnTemizle: TButton;
    BtnSil: TButton;
    Label2: TLabel;
    TxtKonu: TEdit;
    Label3: TLabel;
    Txtilgili: TEdit;
    Label6: TLabel;
    Qry1: TADOQuery;
    Txtiletiþim: TEdit;
    Label12: TLabel;
    Txtilgilenen: TEdit;
    Label4: TLabel;
    MemNot: TMemo;
    Label7: TLabel;
    CurrTutar: TAdvMoneyEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    AdvYolcuListesi: TAdvStringGrid;
    Label5: TLabel;
    Label8: TLabel;
    TxtPnr: TEdit;
    procedure BtnKaydetClick(Sender: TObject);
    procedure BtnTemizleClick(Sender: TObject);
    procedure BtnGuncelleClick(Sender: TObject);
    procedure BtnSilClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure AdvYolcuListesiCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure AdvYolcuListesiGetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
  private
    { Private declarations }
  public
    procedure CreateParams(var Params: TCreateParams); override;
    { Public declarations }
  end;

var
  FrmAjandaKayit: TFrmAjandaKayit;

implementation

uses UntDm, UntGlobal;

{$R *.dfm}

procedure TFrmAjandaKayit.BtnKaydetClick(Sender: TObject);
var TmpSql:string;
i:integer;
begin


if trim(TxtKonu.Text)='' then begin
MsgUyari('Lütfen Konuyu Giriniz ...');
exit;
end;

if trim(Txtilgili.Text)='' then begin
MsgUyari('Lütfen Ýlgiliyi Giriniz ...');
exit;
end;



TmpSql := 'insert into Ajanda (Tarih,Konu,ilgili,iletisim,ilgilenen,Tutar,Notlar,Pnr) ' +
' Values' +
'(:Tarih,:Konu,:ilgili,:iletisim,:ilgilenen,:Tutar,:Notlar,:Pnr)  ' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Tarih').Value    :=
IntToStr(YearOf(Date))+'-'+IntToStr(MonthOf(Date))+'-'+IntToStr(DayOf(Date)) ;
Qry1.Parameters.ParamByName('Konu').Value      := Trim(TxtKonu.Text)         ;
Qry1.Parameters.ParamByName('ilgili').Value    := Trim(Txtilgili.Text)       ;
Qry1.Parameters.ParamByName('iletisim').Value  := Trim(Txtiletiþim.Text)     ;
Qry1.Parameters.ParamByName('ilgilenen').Value := Trim(Txtilgilenen.Text)    ;
Qry1.Parameters.ParamByName('Tutar').Value     := CurrTutar.Value            ;
Qry1.Parameters.ParamByName('Notlar').Value    := Trim(MemNot.Text)          ;
Qry1.Parameters.ParamByName('Pnr').Value       := Trim(TxtPnr.Text)          ;
Qry1.Prepared;
Qry1.ExecSQL;


////////////////////////
TmpSql := 'Select Max(id) as d from Ajanda';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Open;
TxtKonu.Tag     := Qry1.FieldByName('d').AsInteger ;
////////////////////////


for i:=1  to AdvYolcuListesi.RowCount-1 do begin

if (Trim(AdvYolcuListesi.Cells[1,i])='') then Continue;

TmpSql := 'insert into AjandaYolcuListesi ' +
' (Tur,Adi,Soyadi,Ajandaid,DogumTarihi,PassportNo) '+
' Values' +
' (:Tur,:Adi,:Soyadi,:Ajandaid,:DogumTarihi,:PassportNo) ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Tur').Value   := AdvYolcuListesi.Cells[0,i] ;
Qry1.Parameters.ParamByName('Adi').Value    := AdvYolcuListesi.Cells[1,i];
Qry1.Parameters.ParamByName('Soyadi').Value := AdvYolcuListesi.Cells[2,i];
Qry1.Parameters.ParamByName('Ajandaid').Value  := TxtKonu.Tag ;

if AdvYolcuListesi.Cells[3,i]='' then  AdvYolcuListesi.Cells[3,i] := DateToStr(date);


Qry1.Parameters.ParamByName('DogumTarihi').Value:=
IntToStr(YearOf(StrToDate(AdvYolcuListesi.Cells[3,i])))+'-'+
IntToStr(MonthOf(StrToDate(AdvYolcuListesi.Cells[3,i])))+'-'+
IntToStr(DayOf(StrToDate(AdvYolcuListesi.Cells[3,i])));

Qry1.Parameters.ParamByName('PassportNo').Value := AdvYolcuListesi.Cells[4,i];

Qry1.Prepared;
Qry1.ExecSQL;
end;


////////////////////////////////////////////////////////////////////////////////


MsgUyari('Kaydedildi  ...');
close;
end;

procedure TFrmAjandaKayit.BtnSilClick(Sender: TObject);
var TmpSql:String;
begin

if MsgOnay('Kaydý Silmek Ýstiyormusunuz ?') = False Then exit;

TmpSql:= 'Delete From Ajanda where id=:id ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('id').Value  := TxtKonu.Tag;
Qry1.Prepared;
Qry1.ExecSQL;

TmpSql := 'Delete from AjandaYolcuListesi where Ajandaid=:Ajandaid';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Ajandaid').Value   := TxtKonu.Tag ;
Qry1.Prepared ;
Qry1.ExecSQL;

MsgUyari('Kayýt Silindi ... ');
close;
end;

procedure TFrmAjandaKayit.AdvYolcuListesiCanEditCell(Sender: TObject; ARow,
  ACol: Integer; var CanEdit: Boolean);
begin
 CanEdit := True;
end;

procedure TFrmAjandaKayit.AdvYolcuListesiGetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin
if ACol = 0  then begin

AEditor := edComboList;

AdvYolcuListesi.ClearComboString;

AdvYolcuListesi.AddComboString('AD');
AdvYolcuListesi.AddComboString('CH');
AdvYolcuListesi.AddComboString('INF');
AdvYolcuListesi.AddComboString('STD');
AdvYolcuListesi.AddComboString('ZS');
AdvYolcuListesi.AddComboString('WCHR');
end;

if ACol = 3  then begin
AEditor := edDateEdit;
end;

end;

procedure TFrmAjandaKayit.BitBtn4Click(Sender: TObject);
begin
AdvYolcuListesi.AddRow;
end;

procedure TFrmAjandaKayit.BitBtn5Click(Sender: TObject);
begin
if AdvYolcuListesi.RowCount = 2 then
AdvYolcuListesi.ClearRows(AdvYolcuListesi.Row,1)
Else begin
AdvYolcuListesi.ClearRows(AdvYolcuListesi.Row,1);
AdvYolcuListesi.RemoveRows(AdvYolcuListesi.Row,1);
end;
end;

procedure TFrmAjandaKayit.BtnGuncelleClick(Sender: TObject);
var TmpSql:string;
i:integer;
begin

if trim(TxtKonu.Text)='' then begin
MsgUyari('Lütfen Konuyu Giriniz ...');
exit;
end;

if trim(Txtilgili.Text)='' then begin
MsgUyari('Lütfen Ýlgiliyi Giriniz ...');
exit;
end;


TmpSql := 'Update Ajanda set '+
'Konu=:Konu,' +
'ilgili=:ilgili, '+
'iletisim=:iletisim,'+
'ilgilenen=:ilgilenen,'+
'Tutar=:Tutar,'+
'Notlar=:Notlar,'+
'Pnr=:Pnr'+

' where id=:id ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Konu').Value      := Trim(TxtKonu.Text)         ;
Qry1.Parameters.ParamByName('ilgili').Value    := Trim(Txtilgili.Text)       ;
Qry1.Parameters.ParamByName('iletisim').Value  := Trim(Txtiletiþim.Text)     ;
Qry1.Parameters.ParamByName('ilgilenen').Value := Trim(Txtilgilenen.Text)    ;
Qry1.Parameters.ParamByName('Tutar').Value     := CurrTutar.Value            ;
Qry1.Parameters.ParamByName('Notlar').Value    := Trim(MemNot.Text)          ;
Qry1.Parameters.ParamByName('Pnr').Value       := Trim(TxtPnr.Text)          ;

Qry1.Parameters.ParamByName('id').Value      := TxtKonu.Tag;

Qry1.Prepared;
Qry1.ExecSQL;


/////////////////////////////////////////////////////////////////////////////////

TmpSql := 'Delete from AjandaYolcuListesi where Ajandaid=:Ajandaid';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Ajandaid').Value   := TxtKonu.Tag ;
Qry1.Prepared ;
Qry1.ExecSQL;

for i:=1  to AdvYolcuListesi.RowCount-1 do begin

if (Trim(AdvYolcuListesi.Cells[1,i])='') then Continue;

TmpSql := 'insert into AjandaYolcuListesi ' +
' (Tur,Adi,Soyadi,Ajandaid,DogumTarihi,PassportNo) '+
' Values' +
' (:Tur,:Adi,:Soyadi,:Ajandaid,:DogumTarihi,:PassportNo) ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Tur').Value   := AdvYolcuListesi.Cells[0,i] ;
Qry1.Parameters.ParamByName('Adi').Value    := AdvYolcuListesi.Cells[1,i];
Qry1.Parameters.ParamByName('Soyadi').Value := AdvYolcuListesi.Cells[2,i];
Qry1.Parameters.ParamByName('Ajandaid').Value  := TxtKonu.Tag ;

if AdvYolcuListesi.Cells[3,i]='' then  AdvYolcuListesi.Cells[3,i] := DateToStr(date);


Qry1.Parameters.ParamByName('DogumTarihi').Value:=
IntToStr(YearOf(StrToDate(AdvYolcuListesi.Cells[3,i])))+'-'+
IntToStr(MonthOf(StrToDate(AdvYolcuListesi.Cells[3,i])))+'-'+
IntToStr(DayOf(StrToDate(AdvYolcuListesi.Cells[3,i])));

Qry1.Parameters.ParamByName('PassportNo').Value := AdvYolcuListesi.Cells[4,i];


Qry1.Prepared;
Qry1.ExecSQL;
end;

/////////////////////////////////////////////////////////////////////////////////


MsgUyari('Güncellendi  ...');
close;

end;

procedure TFrmAjandaKayit.BtnTemizleClick(Sender: TObject);
begin
AdvYolcuListesi.ClearRows(1,AdvYolcuListesi.RowCount-1);
AdvYolcuListesi.RowCount := 2;

TxtKonu.Clear;
Txtilgili.Clear;
Txtiletiþim.Clear;
Txtilgilenen.Clear;
TxtPnr.Clear;
MemNot.Clear;
CurrTutar.Value := 0;
TxtKonu.Tag := 0;

BtnKaydet.Enabled   :=True ;
BtnGuncelle.Enabled := False;
BtnSil.Enabled      := False ;

end;

procedure TFrmAjandaKayit.CreateParams(var Params: TCreateParams);
begin
 inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;

procedure TFrmAjandaKayit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FrmAjandaKayit:= nil;
end;

end.
