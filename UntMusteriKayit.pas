unit UntMusteriKayit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DB, ADODB,DateUtils;

type
  TFrmMusteriKayit = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    BtnKaydet: TButton;
    BtnGuncelle: TButton;
    BtnTemizle: TButton;
    BtnSil: TButton;
    Label2: TLabel;
    TxtAdi: TEdit;
    Label3: TLabel;
    TxtSoyadi: TEdit;
    CmbYolcuTipi: TComboBox;
    CmbUyruk: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    TxtCepTel1: TEdit;
    Label8: TLabel;
    TxtCepTel2: TEdit;
    Label9: TLabel;
    TxtisTel: TEdit;
    Label10: TLabel;
    TxtEvTel: TEdit;
    Label11: TLabel;
    TxtAdres: TEdit;
    Label12: TLabel;
    TxtEmail: TEdit;
    DtDogumTarihi: TDateTimePicker;
    Qry1: TADOQuery;
    Label13: TLabel;
    CmbMusteriTuru: TComboBox;
    Label14: TLabel;
    TxtKimlikNo: TEdit;
    MemNotlar: TMemo;
    Label15: TLabel;
    Label16: TLabel;
    TxtFax: TEdit;
    TxtAdi2: TEdit;
    TxtSoyadi2: TEdit;
    procedure BtnKaydetClick(Sender: TObject);
    procedure BtnTemizleClick(Sender: TObject);
    procedure BtnGuncelleClick(Sender: TObject);
    procedure BtnSilClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
  procedure CreateParams(var Params: TCreateParams); override;

    { Public declarations }
  end;

var
  FrmMusteriKayit: TFrmMusteriKayit;

implementation

uses UntDm, UntGlobal;

{$R *.dfm}

procedure TFrmMusteriKayit.BtnKaydetClick(Sender: TObject);
var TmpSql:string;
begin

if CmbMusteriTuru.Text='' then begin
MsgUyari('Lütfen Müþteri Türünü Seçiniz ...');
exit;
end;

if trim(TxtAdi.Text)='' then begin
MsgUyari('Lütfen Müþteri Adýný Giriniz ...');
exit;
end;

if trim(TxtSoyadi.Text)='' then begin
MsgUyari('Lütfen Müþteri Soyadýný Giriniz ...');
exit;
end;


Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Select id from musteri where adi=:adi and soyadi=:soyadi ');
Qry1.Parameters.ParamByName('Adi').Value        := Trim(TxtAdi.Text);
Qry1.Parameters.ParamByName('Soyadi').Value     := Trim(TxtSoyadi.Text);
Qry1.Prepared;
Qry1.Open;

if Qry1.RecordCount<>0 then begin
MsgUyari('Kayýtlý Müþteri, Lütfen Deðiþtiriniz  ...');
exit;
end;


TmpSql := 'insert into musteri (Adi,Soyadi,DogumTarihi,YolcuTipi,Uyrugu,Ceptel1,Ceptel2,Evtel,isTel,Adres,Email,MusteriTuru,KimlikNo,Notlar,Fax) ' +
' Values' +
'(:Adi,:Soyadi,:DogumTarihi,:YolcuTipi,:Uyrugu,:Ceptel1,:Ceptel2,:Evtel,:isTel,:Adres,:Email,:MusteriTuru,:KimlikNo,:Notlar,:Fax) ' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Adi').Value        := Trim(TxtAdi.Text);
Qry1.Parameters.ParamByName('Soyadi').Value     := Trim(TxtSoyadi.Text);

Qry1.Parameters.ParamByName('DogumTarihi').Value           := IntToStr(YearOf(DtDogumTarihi.Date))+'-'+
                                                              IntToStr(MonthOf(DtDogumTarihi.Date))+'-'+
                                                              IntToStr(DayOf(DtDogumTarihi.Date));

Qry1.Parameters.ParamByName('YolcuTipi').Value   := CmbYolcuTipi.Text;
Qry1.Parameters.ParamByName('Uyrugu').Value      := CmbUyruk.Text;
Qry1.Parameters.ParamByName('CepTel1').Value     := Trim(TxtCepTel1.Text);
Qry1.Parameters.ParamByName('CepTel2').Value     := Trim(TxtCepTel2.Text);
Qry1.Parameters.ParamByName('EvTel').Value       := Trim(TxtEvTel.Text);
Qry1.Parameters.ParamByName('isTel').Value       := Trim(TxtisTel.Text);
Qry1.Parameters.ParamByName('Adres').Value       := Trim(TxtAdres.Text);
Qry1.Parameters.ParamByName('Email').Value       := Trim(TxtEmail.Text);
Qry1.Parameters.ParamByName('MusteriTuru').Value := CmbMusteriTuru.Text;

Qry1.Parameters.ParamByName('KimlikNo').Value := Trim(TxtKimlikNo.Text);

Qry1.Parameters.ParamByName('Notlar').Value := Trim(MemNotlar.Text)  ;
Qry1.Parameters.ParamByName('Fax').Value := Trim(TxtFax.Text) ;

Qry1.Prepared;
Qry1.ExecSQL;

MsgUyari('Kaydedildi  ...');
close;
end;

procedure TFrmMusteriKayit.BtnSilClick(Sender: TObject);
var TmpSql:String;
begin

if MsgOnay('Kaydý Silmek Ýstiyormusunuz ?') = False Then exit;

TmpSql := 'select id from gelirgider where adi=:adi and Soyadi=:soyadi  ' ;
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Adi').Value     := TxtAdi.Text;
Qry1.Parameters.ParamByName('Soyadi').Value  := TxtSoyadi.Text;
Qry1.Prepared:=True;
Qry1.Open;
if Qry1.RecordCount <> 0 then    begin
MsgUyari('Kayýt Gelir Gider Tablosunda Ýþlem Görmüþ ... Kayýt Silinemiyor');
exit;
end;

TmpSql := 'select id from sigorta where adi=:adi and Soyadi=:soyadi  ' ;
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Adi').Value     := TxtAdi.Text;
Qry1.Parameters.ParamByName('Soyadi').Value  := TxtSoyadi.Text;
Qry1.Prepared:=True;
Qry1.Open;
if Qry1.RecordCount <> 0 then    begin
MsgUyari('Kayýt Sigortalar Tablosunda Ýþlem Görmüþ ... Kayýt Silinemiyor');
exit;
end;


TmpSql := 'select id from satiskarti where adi=:adi and Soyadi=:soyadi  ' ;
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Adi').Value     := TxtAdi.Text;
Qry1.Parameters.ParamByName('Soyadi').Value  := TxtSoyadi.Text;
Qry1.Prepared:=True;
Qry1.Open;
if Qry1.RecordCount <> 0 then    begin
MsgUyari('Kayýt Satýþ Kartý Tablosunda Ýþlem Görmüþ ... Kayýt Silinemiyor');
exit;
end;


TmpSql:= 'Delete From musteri where id=:id ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('id').Value  := TxtAdi.Tag;
Qry1.Prepared;
Qry1.ExecSQL;

MsgUyari('Kayýt Silindi ... ');
close;
end;

procedure TFrmMusteriKayit.BtnGuncelleClick(Sender: TObject);
var TmpSql:string;
x:integer;
begin
x:=0;

if CmbMusteriTuru.Text='' then begin
MsgUyari('Lütfen Müþteri Türünü Seçiniz ...');
exit;
end;

if trim(TxtAdi.Text)='' then begin
MsgUyari('Lütfen Müþteri Adýný Giriniz ...');
exit;
end;

if trim(TxtSoyadi.Text)='' then begin
MsgUyari('Lütfen Müþteri Soyadýný Giriniz ...');
exit;
end;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Select id from musteri where id<>:id and adi=:adi and soyadi=:soyadi ');
Qry1.Parameters.ParamByName('Adi').Value     := Trim(TxtAdi.Text);
Qry1.Parameters.ParamByName('Soyadi').Value  := Trim(TxtSoyadi.Text);
Qry1.Parameters.ParamByName('id').Value      := TxtAdi.Tag;
Qry1.Prepared;
Qry1.Open;

if Qry1.RecordCount<>0 then begin
MsgUyari('Kayýtlý Müþteri, Lütfen Deðiþtiriniz  ...');
exit;
end;



////////////////////////////////////////////////////////////////////////////////

TmpSql := 'select id from sigorta where adi=:adi and Soyadi=:soyadi  ' ;
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Adi').Value     := TxtAdi2.Text;
Qry1.Parameters.ParamByName('Soyadi').Value  := TxtSoyadi2.Text;
Qry1.Prepared:=True;
Qry1.Open;
if Qry1.RecordCount <> 0 then
if MsgOnay('Kayýt Sigortalar Tablosunda Ýþlem Görmüþ ... Güncellemek Ýstiyormusunuz ?') = False Then exit Else x:=1;



TmpSql := 'select id from satiskarti where adi=:adi and Soyadi=:soyadi  ';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Adi').Value     := TxtAdi2.Text;
Qry1.Parameters.ParamByName('Soyadi').Value  := TxtSoyadi2.Text;
Qry1.Prepared:=True;
Qry1.Open;
if Qry1.RecordCount <> 0 then
if MsgOnay('Kayýt Satýþ Kartý Tablosunda Ýþlem Görmüþ ... Güncellemek Ýstiyormusunuz ?') = False Then exit Else x:=1;



////////////////////////////////////////////////////////////////////////////////


TmpSql := 'Update musteri set '+
'Adi=:Adi,' +
'Soyadi=:Soyadi,' +
'DogumTarihi=:DogumTarihi,'+
'YolcuTipi=:YolcuTipi,'+
'Uyrugu=:Uyrugu,'+
'Ceptel1=:CepTel1,'+
'Ceptel2=:CEpTel2,'+
'Evtel=:EvTel,'+
'isTel=:isTel,'+
'Adres=:Adres,'+
'Email=:Email, '+
'MusteriTuru=:MusteriTuru, '+
'KimlikNo=:KimlikNo, '+
'Notlar=:Notlar, '+
'Fax=:Fax '+

' where id=:id ';


Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Adi').Value        := Trim(TxtAdi.Text);
Qry1.Parameters.ParamByName('Soyadi').Value     := Trim(TxtSoyadi.Text);

Qry1.Parameters.ParamByName('DogumTarihi').Value           := IntToStr(YearOf(DtDogumTarihi.Date))+'-'+
                                                              IntToStr(MonthOf(DtDogumTarihi.Date))+'-'+
                                                              IntToStr(DayOf(DtDogumTarihi.Date));

Qry1.Parameters.ParamByName('YolcuTipi').Value  := CmbYolcuTipi.Text;
Qry1.Parameters.ParamByName('Uyrugu').Value     := CmbUyruk.Text;
Qry1.Parameters.ParamByName('CepTel1').Value    := Trim(TxtCepTel1.Text);
Qry1.Parameters.ParamByName('CepTel2').Value    := Trim(TxtCepTel2.Text);
Qry1.Parameters.ParamByName('EvTel').Value      := Trim(TxtEvTel.Text);
Qry1.Parameters.ParamByName('isTel').Value      := Trim(TxtisTel.Text);
Qry1.Parameters.ParamByName('Adres').Value      := Trim(TxtAdres.Text);
Qry1.Parameters.ParamByName('Email').Value      := Trim(TxtEmail.Text);
Qry1.Parameters.ParamByName('MusteriTuru').Value := CmbMusteriTuru.Text;
Qry1.Parameters.ParamByName('KimlikNo').Value := Trim(TxtKimlikNo.Text);

Qry1.Parameters.ParamByName('Notlar').Value := Trim(MemNotlar.Text)  ;
Qry1.Parameters.ParamByName('Fax').Value    := Trim(TxtFax.Text) ;

Qry1.Parameters.ParamByName('id').Value      := TxtAdi.Tag;

Qry1.Prepared;
Qry1.ExecSQL;

if x=0 then begin
MsgUyari('Güncellendi  ...');
exit;
end;

TmpSql := 'Update sigorta set '+
'Adi=:Adi,' +
'Soyadi=:Soyadi ' +
' where Adi=:Adi2 and Soyadi=:Soyadi2 ';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Adi').Value      := Trim(TxtAdi.Text);
Qry1.Parameters.ParamByName('Soyadi').Value   := Trim(TxtSoyadi.Text);
Qry1.Parameters.ParamByName('Adi2').Value     := Trim(TxtAdi2.Text);
Qry1.Parameters.ParamByName('Soyadi2').Value  := Trim(TxtSoyadi2.Text);
Qry1.Prepared;
Qry1.ExecSQL;

TmpSql := 'Update SigortaOdeme set '+
'MusteriAdi=:MusteriAdi,' +
'MusteriSoyadi=:MusteriSoyadi ' +
' where MusteriAdi=:MusteriAdi2 and MusteriSoyadi=:MusteriSoyadi2 ';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('MusteriAdi').Value      := Trim(TxtAdi.Text);
Qry1.Parameters.ParamByName('MusteriSoyadi').Value   := Trim(TxtSoyadi.Text);
Qry1.Parameters.ParamByName('MusteriAdi2').Value     := Trim(TxtAdi2.Text);
Qry1.Parameters.ParamByName('MusteriSoyadi2').Value  := Trim(TxtSoyadi2.Text);
Qry1.Prepared;
Qry1.ExecSQL;

TmpSql := 'Update satiskarti set '+
'Adi=:Adi,' +
'SoyAdi=:SoyAdi ' +
' where Adi=:Adi2 and SoyAdi=:SoyAdi2 ';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Adi').Value      := Trim(TxtAdi.Text);
Qry1.Parameters.ParamByName('SoyAdi').Value   := Trim(TxtSoyadi.Text);
Qry1.Parameters.ParamByName('Adi2').Value     := Trim(TxtAdi2.Text);
Qry1.Parameters.ParamByName('SoyAdi2').Value  := Trim(TxtSoyadi2.Text);
Qry1.Prepared;
Qry1.ExecSQL;


TmpSql := 'Update rezervasyon set '+
'MusAdi=:MusAdi,' +
'MusSoyadi=:MusSoyadi ' +
' where MusAdi=:MusAdi2 and MusSoyadi=:MusSoyadi2 ';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('MusAdi').Value      := Trim(TxtAdi.Text);
Qry1.Parameters.ParamByName('MusSoyadi').Value   := Trim(TxtSoyadi.Text);
Qry1.Parameters.ParamByName('MusAdi2').Value     := Trim(TxtAdi2.Text);
Qry1.Parameters.ParamByName('MusSoyadi2').Value  := Trim(TxtSoyadi2.Text);
Qry1.Prepared;
Qry1.ExecSQL;


TmpSql := 'Update otelsatis set '+
'MusteriAdi=:MusteriAdi,' +
'MusteriSoyadi=:MusteriSoyadi ' +
' where MusteriAdi=:MusteriAdi2 and MusteriSoyadi=:MusteriSoyadi2 ';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('MusteriAdi').Value      := Trim(TxtAdi.Text);
Qry1.Parameters.ParamByName('MusteriSoyadi').Value   := Trim(TxtSoyadi.Text);
Qry1.Parameters.ParamByName('MusteriAdi2').Value     := Trim(TxtAdi2.Text);
Qry1.Parameters.ParamByName('MusteriSoyadi2').Value  := Trim(TxtSoyadi2.Text);
Qry1.Prepared;
Qry1.ExecSQL;



TmpSql := 'Update transfer set '+
'MusteriAdi=:MusteriAdi,' +
'MusteriSoyadi=:MusteriSoyadi ' +
' where MusteriAdi=:MusteriAdi2 and MusteriSoyadi=:MusteriSoyadi2 ';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('MusteriAdi').Value      := Trim(TxtAdi.Text);
Qry1.Parameters.ParamByName('MusteriSoyadi').Value   := Trim(TxtSoyadi.Text);
Qry1.Parameters.ParamByName('MusteriAdi2').Value     := Trim(TxtAdi2.Text);
Qry1.Parameters.ParamByName('MusteriSoyadi2').Value  := Trim(TxtSoyadi2.Text);
Qry1.Prepared;
Qry1.ExecSQL;



TmpSql := 'Update Tur set '+
'MusteriAdi=:MusteriAdi,' +
'MusteriSoyadi=:MusteriSoyadi ' +
' where MusteriAdi=:MusteriAdi2 and MusteriSoyadi=:MusteriSoyadi2 ';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('MusteriAdi').Value      := Trim(TxtAdi.Text);
Qry1.Parameters.ParamByName('MusteriSoyadi').Value   := Trim(TxtSoyadi.Text);
Qry1.Parameters.ParamByName('MusteriAdi2').Value     := Trim(TxtAdi2.Text);
Qry1.Parameters.ParamByName('MusteriSoyadi2').Value  := Trim(TxtSoyadi2.Text);
Qry1.Prepared;
Qry1.ExecSQL;


MsgUyari('Güncellendi  ...');
close;

end;

procedure TFrmMusteriKayit.BtnTemizleClick(Sender: TObject);
begin
TxtAdi.Clear;
TxtSoyadi.Clear;

TxtAdi2.Clear;
TxtSoyadi2.Clear;

TxtCepTel1.Clear;
TxtCepTel2.Clear;
TxtisTel.Clear;
TxtEvTel.Clear;
TxtAdres.clear;
TxtEmail.Clear;
TxtKimlikNo.Clear;
DtDogumTarihi.Date:= date;

MemNotlar.Clear;

TxtAdi.Tag := 0;

CmbYolcuTipi.ItemIndex := -1 ;
CmbUyruk.ItemIndex := -1 ;

BtnKaydet.Enabled :=True ;
BtnGuncelle.Enabled := False;
BtnSil.Enabled := False ;

end;

procedure TFrmMusteriKayit.CreateParams(var Params: TCreateParams);
begin
 inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;

procedure TFrmMusteriKayit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FrmMusteriKayit:= nil;
end;

end.
