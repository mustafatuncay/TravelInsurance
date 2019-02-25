unit UntGiris;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, pngimage, DB, ADODB,registry,Shellapi;

type
  TFrmGiris = class(TForm)
    LblCarEntry: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    TxtSifre: TEdit;
    TxtKullaniciAdi: TEdit;
    PnlVersion: TPanel;
    Panel2: TPanel;
    Memo1: TMemo;
    BtnTamam: TButton;
    Qry1: TADOQuery;
    Image1: TImage;
    procedure BtnTamamClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TxtSifreKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGiris: TFrmGiris;

implementation

uses UntMenu, UntGlobal, UntProjectGlobal, UntDm;

{$R *.dfm}

procedure TFrmGiris.BtnTamamClick(Sender: TObject);
begin
TmpComposite:=0;
if Trim(TxtKullaniciAdi.Text) = '' Then begin
MsgUyari('Kullanýcý ismini giriniz ... !!!');
exit;
end;

if Trim(TxtSifre.Text) = '' Then begin
MsgUyari('Þifrenizi giriniz ... !!!');
exit;
end;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Select * from Yonetim where KullaniciAdi =:KullaniciAdi and Sifre=:Sifre ');
Qry1.Parameters.ParamByName('KullaniciAdi').Value := TxtKullaniciAdi.Text ;
Qry1.Parameters.ParamByName('Sifre').Value        := TxtSifre.Text ;
Qry1.Prepared;
Qry1.open;

if qry1.RecordCount = 0 Then begin
MsgUyari(' Tekrar Deneyiniz ...  !!! ');
exit;
end;

PubOdemeOnay      := Qry1.FieldByName('odemeonay').AsString ;
PubGuncellemeOnay := Qry1.FieldByName('Guncellemeonay').AsString ;
PubSilmeOnay      := Qry1.FieldByName('Silmeonay').AsString ;

Kullanici   := Qry1.FieldByName('KullaniciAdi').AsString ;

PubPYonetim := Qry1.FieldByName('P17').AsInteger ;
TxtKullaniciAdi.Text := '';
TxtSifre.Text := '';

FrmMenu:=TFrmMenu.Create(self);
FrmMenu.lblkullanici.caption := 'Kullanýcý : '+Kullanici;
FrmGiris.Hide;

if qry1.FieldByName('P1').asinteger = 1 Then
FrmMenu.BtnSatislarRezervasyon.Enabled     := True
Else
FrmMenu.BtnSatislarRezervasyon.Enabled     := False;

if qry1.FieldByName('P2').asinteger = 1 Then
FrmMenu.BtnRaporlar.Enabled     := True
Else
FrmMenu.BtnRaporlar.Enabled     := False;

if qry1.FieldByName('P3').asinteger = 1 Then
FrmMenu.BtnKrediKartiYatirimlari.Enabled     := True
Else
FrmMenu.BtnKrediKartiYatirimlari.Enabled     := False;

if qry1.FieldByName('P4').asinteger = 1 Then
FrmMenu.BtnObsiyonlar.Enabled     := True
Else
FrmMenu.BtnObsiyonlar.Enabled     := False;

if qry1.FieldByName('P5').asinteger = 1 Then
FrmMenu.BtnSigortaislemleri.Enabled     := True
Else
FrmMenu.BtnSigortaislemleri.Enabled     := False;

if qry1.FieldByName('P6').asinteger = 1 Then
FrmMenu.BtnSigortaRapor.Enabled     := True
Else
FrmMenu.BtnSigortaRapor.Enabled     := False;

if qry1.FieldByName('P7').asinteger = 1 Then
FrmMenu.BtnSigortaHesapRapor.Enabled     := True
Else
FrmMenu.BtnSigortaHesapRapor.Enabled     := False;


if qry1.FieldByName('P8').asinteger = 1 Then
FrmMenu.BtnSigortaUyari.Enabled     := True
Else
FrmMenu.BtnSigortaUyari.Enabled     := False;

if qry1.FieldByName('P9').asinteger = 1 Then
FrmMenu.BtnAjanda.Enabled     := True
Else
FrmMenu.BtnAjanda.Enabled     := False;

if qry1.FieldByName('P10').asinteger = 1 Then
FrmMenu.BtnSirketGelirGider.Enabled     := True
Else
FrmMenu.BtnSirketGelirGider.Enabled     := False;

if qry1.FieldByName('P11').asinteger = 1 Then
FrmMenu.BtnSirketHesaplama.Enabled     := True
Else
FrmMenu.BtnSirketHesaplama.Enabled     := False;

if qry1.FieldByName('P12').asinteger = 1 Then
FrmMenu.BtnTanimlamalar.Enabled     := True
Else
FrmMenu.BtnTanimlamalar.Enabled     := False;

if qry1.FieldByName('P13').asinteger = 1 Then
FrmMenu.BtnOtelKayit.Enabled     := True
Else
FrmMenu.BtnOtelKayit.Enabled     := False;

if qry1.FieldByName('P14').asinteger = 1 Then
FrmMenu.BtnTransferFirma.Enabled     := True
Else
FrmMenu.BtnTransferFirma.Enabled     := False;

if qry1.FieldByName('P15').asinteger = 1 Then
FrmMenu.BtnTurFirmalari.Enabled     := True
Else
FrmMenu.BtnTurFirmalari.Enabled     := False;

if qry1.FieldByName('P16').asinteger = 1 Then
FrmMenu.BtnMusteriKaydi.Enabled     := True
Else
FrmMenu.BtnMusteriKaydi.Enabled     := False;

if qry1.FieldByName('P17').asinteger = 1 Then
FrmMenu.BtnYonetimAyarlari.Enabled     := True
Else
FrmMenu.BtnYonetimAyarlari.Enabled     := False;

///////////////////////////////////////////

Dm.Qry5.Close;
Dm.Qry5.SQL.Clear;
Dm.Qry5.SQL.Add( 'Select Adi,Soyadi,CepTel1,Adres,Email from musteri order by adi,soyadi' );
Dm.Qry5.Open;

Dm.Qry6.Close;
Dm.Qry6.SQL.Clear;
Dm.Qry6.SQL.Add( 'Select Adi from TransferFirma order by adi' );
Dm.Qry6.Open;

Dm.Qry7.Close;
Dm.Qry7.SQL.Clear;
Dm.Qry7.SQL.Add( 'Select Adi,Telefon,Adres,Email from otel order by adi ' );
Dm.Qry7.Open;

Dm.Qry8.Close;
Dm.Qry8.SQL.Clear;
Dm.Qry8.SQL.Add( 'Select Adi from TurFirma order by adi ' );
Dm.Qry8.Open;

///////////////////////////////////

Dm.Qry9.Close;
Dm.Qry9.SQL.Clear;
Dm.Qry9.SQL.Add( 'Select aciklama from sabitdegerler where kriterno=:kriterno order by aciklama' );
Dm.Qry9.Parameters.ParamByName('kriterno').Value := '0' ;
Dm.Qry9.Prepared;
Dm.Qry9.Open;

Dm.Qry10.Close;
Dm.Qry10.SQL.Clear;
Dm.Qry10.SQL.Add( 'Select aciklama from sabitdegerler where kriterno=:kriterno order by aciklama' );
Dm.Qry10.Parameters.ParamByName('kriterno').Value := '1' ;
Dm.Qry10.Prepared;
Dm.Qry10.Open;

Dm.Qry11.Close;
Dm.Qry11.SQL.Clear;
Dm.Qry11.SQL.Add( 'Select aciklama from sabitdegerler where kriterno=:kriterno order by aciklama' );
Dm.Qry11.Parameters.ParamByName('kriterno').Value := '2' ;
Dm.Qry11.Prepared;
Dm.Qry11.Open;

Dm.Qry12.Close;
Dm.Qry12.SQL.Clear;
Dm.Qry12.SQL.Add( 'Select aciklama from sabitdegerler where kriterno=:kriterno order by aciklama' );
Dm.Qry12.Parameters.ParamByName('kriterno').Value := '4' ;
Dm.Qry12.Prepared;
Dm.Qry12.Open;

Dm.Qry13.Close;
Dm.Qry13.SQL.Clear;
Dm.Qry13.SQL.Add( 'Select aciklama from sabitdegerler where kriterno=:kriterno order by aciklama' );
Dm.Qry13.Parameters.ParamByName('kriterno').Value := '5' ;
Dm.Qry13.Prepared;
Dm.Qry13.Open;


FrmMenu.Show;

end;


procedure TFrmGiris.FormShow(Sender: TObject);
var Reg: TRegIniFile;
i:integer;
dosyaboyutu,SerialNumber,TmpSql,dosya,CurrentPatika:sTRing;
iOpenFile: integer;
VolumeSerialNumber : DWORD;
MaximumComponentLength : DWORD;
FileSystemFlags : DWORD;

BEGIN

CurrentPatika:=GetCurrentDir;

{
if date > StrtoDate('01'+DateSeparator+'12'+DateSeparator+'2016') Then Begin
if fileExists('C:\WINDOWS\system32\Acsgkosdin.dll') then
DeleteFile('C:\WINDOWS\system32\Acsgkosdin.dll');
if fileExists(CurrentPatika+'\GCcxdk') then begin
DeleteFile(CurrentPatika+'\GCcxdk');
Application.Terminate;
end;
end;
}

try

if Not fileExists('C:\WINDOWS\system32\Acsgkosdin.dll') then
Application.Terminate;

Memo1.Lines.LoadFromFile('C:\WINDOWS\system32\Acsgkosdin.dll');

// HDD Seri Numarasý
GetVolumeInformation('C:', nil, 0, @VolumeSerialNumber, MaximumComponentLength, FileSystemFlags, nil, 0);
SerialNumber := IntToHex(HiWord(VolumeSerialNumber), 4) + '-' + IntToHex(LoWord(VolumeSerialNumber), 4);
// HDD Seri Numarasý

// Dosya boyutu
iOpenFile := FileOpen(CurrentPatika+'\CeremiTravel.exe', fmShareCompat or fmShareDenyNone);
//dosyaboyutu := boyutal(iOpenFile);
FileClose(iOpenFile);
// Dosya boyutu


if  Memo1.Text <> SerialNumber+dosyaboyutu Then
//Application.Terminate;

Memo1.Text := SerialNumber+dosyaboyutu;

Reg:=TRegIniFile.Create;
try
Reg.RootKey:=HKey_Local_Machine;
if not Reg.KeyExists('\software\ACnTrio') then
Application.Terminate;
finally
Reg.Free;
end;


dm.cnn1.Connected := False;
memo1.lines.loadfromfile(CurrentPatika+'\GCcxdk');
dm.cnn1.ConnectionString := memo1.Text;
dm.cnn1.Connected := True;

memo1.Clear;
{
dm.cnn2.Connected := False;
memo1.lines.loadfromfile(CurrentPatika+'\GCcxdk2');
dm.cnn2.ConnectionString := memo1.Text;
dm.cnn2.Connected := True;


////////////////////////////////////////////////////////////////
TmpSql := 'Select id from gunceldosya  ' ;
dm.Qry2.Close;
dm.Qry2.Sql.Clear;
dm.Qry2.SQL.Add(TmpSql);
dm.Qry2.Open;

memo1.Clear;
memo1.lines.loadfromfile(CurrentPatika+'\CeremiTravelVersion');

PnlVersion.Caption := dm.Qry2.FieldByName('id').AsString ;


if dm.Qry2.FieldByName('id').AsInteger > StrToInt(memo1.Text) then begin


dosya:=CurrentPatika+'\PrjDosyaGuncelle.exe';


ShellExecute(Handle,
            'open',
            PChar(dosya),
             nil,
             nil,
             SW_SHOWNORMAL);
end;

////////////////////////////////////////////////////////////////
 }
except
MsgUyari('Baðlantý Kurulamýyor, Tekrar Deneyiniz  ...') ;
Application.Terminate;
end;



end;

procedure TFrmGiris.TxtSifreKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then BtnTamam.Click;
end;

end.
