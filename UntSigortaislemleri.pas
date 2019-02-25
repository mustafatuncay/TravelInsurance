unit UntSigortaislemleri;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, AdvObj, BaseGrid, AdvGrid, Buttons, DB,
  ADODB, ComCtrls, MoneyEdit,DateUtils, pngimage, GIFImg, Menus,StrUtils,
  AdvEdit, AdvMoneyEdit, AdvPageControl, asgprev;

type
  TFrmSigortaislemleri = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Qry1: TADOQuery;
    Panel4: TPanel;
    Label16: TLabel;
    DtTrafik1: TDateTimePicker;
    DtTrafik2: TDateTimePicker;
    DtsTrafik1: TDateTimePicker;
    DtsTrafik2: TDateTimePicker;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    Label10: TLabel;
    BitBtn2: TBitBtn;
    CmbAdi: TComboBox;
    CmbSoyadi: TComboBox;
    CmbCepTel1: TComboBox;
    CmbAdres: TComboBox;
    ChkSec: TCheckBox;
    CmbSigortaTuru: TComboBox;
    Label12: TLabel;
    Label14: TLabel;
    Label20: TLabel;
    TxtPoliceNo: TEdit;
    PopupMenu1: TPopupMenu;
    dendi1: TMenuItem;
    denmedi1: TMenuItem;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label11: TLabel;
    Label21: TLabel;
    CurrToplamMiktar: TMoneyEdit;
    AdvListe: TAdvStringGrid;
    Image2: TImage;
    Image1: TImage;
    CurrTaksit: TMoneyEdit;
    BitBtn4: TBitBtn;
    CurrGenelToplam: TMoneyEdit;
    CurrYuzdelik: TMoneyEdit;
    GrbHesap: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    AdvHesap: TAdvStringGrid;
    BitBtn1: TBitBtn;
    DtOdemeTarihi: TDateTimePicker;
    TxtOdemeAciklama: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    CmbParaBirimi: TComboBox;
    Panel2: TPanel;
    Panel7: TPanel;
    Panel3: TPanel;
    BtnKaydet: TButton;
    BtnGuncelle: TButton;
    BtnTemizle: TButton;
    BtnSil: TButton;
    Label24: TLabel;
    CmbHesap: TComboBox;
    Label4: TLabel;
    Label25: TLabel;
    CurrSigortaSuresi: TMoneyEdit;
    Label27: TLabel;
    MemNotlar: TMemo;
    CurrOdenenMiktar: TAdvMoneyEdit;
    Label28: TLabel;
    TxtMusteriNo: TEdit;
    Label33: TLabel;
    TxtYenilemeNo: TEdit;
    Sayfalar: TAdvPageControl;
    Diger: TAdvTabSheet;
    Evisyeri: TAdvTabSheet;
    TrafikKasko: TAdvTabSheet;
    Saglik: TAdvTabSheet;
    AnadoluHayat: TAdvTabSheet;
    Tekne: TAdvTabSheet;
    FerdiKaza: TAdvTabSheet;
    PnlAnadoluHayat: TPanel;
    Label34: TLabel;
    Label39: TLabel;
    Label37: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    CmbSigortaTuru2: TComboBox;
    DtDogum: TDateTimePicker;
    CmbCinsiyet: TComboBox;
    CurrOdenecekPrim: TMoneyEdit;
    CmbParaBirimi2: TComboBox;
    PnlTrafikKasko: TPanel;
    Label6: TLabel;
    Label18: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    Label26: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    TxtTrafikPlaka: TEdit;
    CmbTrafikimalyili: TComboBox;
    TxtTrafikModelNo: TEdit;
    TxtMarka: TEdit;
    CurrArabaDeger: TMoneyEdit;
    CmbArabaDegerParaBirim: TComboBox;
    TxtMotorNo: TEdit;
    TxtSasiNo: TEdit;
    TxtRenk: TEdit;
    TxtMotorGucu: TEdit;
    PnlFerdiKazaSigortasi: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    Label43: TLabel;
    Label46: TLabel;
    Label53: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Txtisim: TEdit;
    DtDogum2: TDateTimePicker;
    TxtSoyisim: TEdit;
    CurrTeminatDegeri: TMoneyEdit;
    TxtFkKimlikNo: TEdit;
    TxtFkPassportNo: TEdit;
    TxtFkUyruk: TEdit;
    CmbFkParaBirimi: TComboBox;
    MemFkAdres: TMemo;
    PnlX: TPanel;
    Label17: TLabel;
    Label19: TLabel;
    DtTanzim: TDateTimePicker;
    CmbSifati: TComboBox;
    PnlSaglikSigortasi: TPanel;
    Label35: TLabel;
    Label38: TLabel;
    Label36: TLabel;
    CmbPaketTuru: TComboBox;
    CurrKisiSayisi: TMoneyEdit;
    DTDogumTarihi: TDateTimePicker;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    AdvKisiler: TAdvStringGrid;
    PnlTekneSigortasi: TPanel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    TxtTekneModeli: TEdit;
    TxtTekneYili: TEdit;
    CurrTekneDegeri: TMoneyEdit;
    CmbTekneParaBirimi: TComboBox;
    Label58: TLabel;
    TxtEvisAdi: TEdit;
    TxtEvisSoyadi: TEdit;
    Label59: TLabel;
    Label60: TLabel;
    TxtEvisKimlikNo: TEdit;
    Label62: TLabel;
    Label63: TLabel;
    CurrEvisBinaDegeri: TMoneyEdit;
    CurrEvisDemirbasDegeri: TMoneyEdit;
    Label64: TLabel;
    Label65: TLabel;
    CurrEvisElektronikDegeri: TMoneyEdit;
    CurrEvisCamKirilmasiDegeri: TMoneyEdit;
    MemEvisAdres: TMemo;
    Label66: TLabel;
    Label67: TLabel;
    TxtEvisisyeriAdi: TEdit;
    Label68: TLabel;
    CurrEvisEmteaDegeri: TMoneyEdit;
    Label69: TLabel;
    CurrEvisDepremDegeri: TMoneyEdit;
    CmbEvisKagir: TComboBox;
    CmbEvisTur: TComboBox;
    Label70: TLabel;
    TxtSigortaEttiren: TEdit;
    Label71: TLabel;
    TxtSigortaliAdi: TEdit;
    TxtSigortaliSoyadi: TEdit;
    Label72: TLabel;
    MemAhAdres: TMemo;
    Label74: TLabel;
    Label75: TLabel;
    CurrKacYilParaAlacak: TMoneyEdit;
    Label76: TLabel;
    TxtTAdi: TEdit;
    TxtTSoyadi: TEdit;
    Label77: TLabel;
    Label78: TLabel;
    TxtTKimlikNo: TEdit;
    Label79: TLabel;
    DtTDogumTarihi: TDateTimePicker;
    Label80: TLabel;
    TxtTTekneAdi: TEdit;
    Label81: TLabel;
    TxtTMotorGucu: TEdit;
    Label82: TLabel;
    TxtTTekneUzunlugu: TEdit;
    Label83: TLabel;
    TxtTTekneGeniisligi: TEdit;
    Label84: TLabel;
    TxtTKayitLiman: TEdit;
    Label85: TLabel;
    TxtTSuanKayitLiman: TEdit;
    Label86: TLabel;
    TxtTBayrak: TEdit;
    Label87: TLabel;
    TxtDigerAdi: TEdit;
    TxtDigerSoyadi: TEdit;
    Label88: TLabel;
    Label89: TLabel;
    TxtDigerKimlikNo: TEdit;
    TxtDigerSigortaTuru: TEdit;
    Label91: TLabel;
    Label42: TLabel;
    TxtCepTel2: TEdit;
    BitBtn6: TBitBtn;
    AdvPreview: TAdvPreviewDialog;
    Label47: TLabel;
    TxtMakbuzNo: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnKaydetClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CmbAdiChange(Sender: TObject);
    procedure CmbSoyadiChange(Sender: TObject);
    procedure CmbCepTel1Change(Sender: TObject);
    procedure CmbAdresChange(Sender: TObject);
    procedure CmbSigortaTuruChange(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure AdvListeCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure AdvListeGetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure AdvListeCellsChanged(Sender: TObject; R: TRect);
    procedure CurrToplamMiktarChange(Sender: TObject);
    procedure CurrTaksitChange(Sender: TObject);
    procedure AdvListeGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure FormShow(Sender: TObject);
    procedure dendi1Click(Sender: TObject);
    procedure denmedi1Click(Sender: TObject);
    procedure BtnTemizleClick(Sender: TObject);
    procedure BtnGuncelleClick(Sender: TObject);
    procedure BtnSilClick(Sender: TObject);
    procedure AdvHesapCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure AdvHesapGetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure BitBtn1Click(Sender: TObject);
    procedure AdvHesapGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure CurrSigortaSuresiKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CreateParams(var Params: TCreateParams); override;
    Procedure MusteriGetir;
    Procedure MusteriGetir2;
    Procedure Temizle;
    Procedure TurGetir;
    Procedure HesapGetir;
    { Public declarations }
  end;

var
  FrmSigortaislemleri: TFrmSigortaislemleri;

implementation

uses UntSigortalar, UntGlobal, UntMusteriKayit, UntProjectGlobal;

{$R *.dfm}

procedure TFrmSigortaislemleri.AdvListeCanEditCell(Sender: TObject; ARow,
  ACol: Integer; var CanEdit: Boolean);
begin
CanEdit := False;
if ACol in [2,5] then CanEdit := True;

end;

procedure TFrmSigortaislemleri.AdvListeCellsChanged(Sender: TObject; R: TRect);
var i:integer;
TmpHesap:Currency;
begin

TmpHesap:=0;

for i:=1 to AdvListe.RowCount -1  do begin
if AdvListe.Cells[2,i]='' then continue;
TmpHesap := TmpHesap + StrToCurr(AdvListe.Cells[2,i]) ;
end;


CurrGenelToplam.Value := TmpHesap ;

end;

procedure TFrmSigortaislemleri.AdvListeGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
if ACol = 2 then HAlign := taRightJustify;
if ACol in [0,1,3] then HAlign := taCenter;
if ACol in [0,1,2,3] then VAlign := vtaCenter;
end;

procedure TFrmSigortaislemleri.AdvListeGetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin
if ACol = 2 then AEditor := edFloat;
end;

procedure TFrmSigortaislemleri.AdvHesapCanEditCell(Sender: TObject; ARow,
  ACol: Integer; var CanEdit: Boolean);
begin
CanEdit := True;
//if ACol in [2,5] then CanEdit := True;
end;

procedure TFrmSigortaislemleri.AdvHesapGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
if ACol in [3,4,5] then HAlign:= taRightJustify;
end;

procedure TFrmSigortaislemleri.AdvHesapGetEditorType(Sender: TObject;
  ACol, ARow: Integer; var AEditor: TEditorType);
begin
if ACol = 1 then AEditor := edDateEdit;
if ACol in [3,4,5] then AEditor := edFloat;


end;

procedure TFrmSigortaislemleri.BitBtn1Click(Sender: TObject);
var TmpSql:String;
begin


if CmbAdi.Tag=0 then  begin
MsgUyari('Lütfen Sigorta Kaydýný Yapýnýz !!!  ..');
exit;
end;


if Trim(CmbAdi.Text) = '' then begin
MsgUyari('Lütfen Adýný Seçiniz !!!  ..');
exit;
end;

if Trim(CmbSoyadi.Text) = '' then begin
MsgUyari('Lütfen Soyadýný Seçiniz !!!  ..');
exit;
end;


if CurrOdenenMiktar.Value = 0 then begin
MsgUyari('Lütfen Ödeme Miktarýný Giriniz  !!!  ..');
exit;
end;

if Trim(TxtOdemeAciklama.Text) = '' then begin
MsgUyari('Lütfen Ödeme Açýklama Bölümünü Doldurunuz !!!  ..');
exit;
end;

TmpSql := 'insert into SigortaOdeme'+
'(MusteriAdi,MusteriSoyadi,Sigortaid,Tarih,OdemeTarihi,Aciklama,Borc,Alacak,ParaBirimi,MakbuzNo)'+
' Values' +
'(:MusteriAdi,:MusteriSoyadi,:Sigortaid,:Tarih,:OdemeTarihi,:Aciklama,:Borc,:Alacak,:ParaBirimi,:MakbuzNo)';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('MusteriAdi').Value     := CmbAdi.Text    ;
Qry1.Parameters.ParamByName('MusteriSoyadi').Value  := CmbSoyadi.Text ;
Qry1.Parameters.ParamByName('Sigortaid').Value      :=  CmbAdi.Tag;

Qry1.Parameters.ParamByName('Tarih').Value          :=
IntToStr(YearOf(Date))+'-'+IntToStr(MonthOf(Date))+'-'+IntToStr(DayOf(Date));

Qry1.Parameters.ParamByName('OdemeTarihi').Value  :=
IntToStr(YearOf(DtOdemeTarihi.Date))+'-'+IntToStr(MonthOf(DtOdemeTarihi.Date))+'-'+IntToStr(DayOf(DtOdemeTarihi.Date));

Qry1.Parameters.ParamByName('Aciklama').Value   := Trim(TxtOdemeAciklama.Text) ;

if CmbHesap.Text = 'Borç' Then Begin
Qry1.Parameters.ParamByName('Borc').Value       := CurrOdenenMiktar.Value ;
Qry1.Parameters.ParamByName('Alacak').Value     := '0' ;
End;

if CmbHesap.Text = 'Alacak' Then Begin
Qry1.Parameters.ParamByName('Borc').Value       := '0' ;
Qry1.Parameters.ParamByName('Alacak').Value     := CurrOdenenMiktar.Value;
End;


Qry1.Parameters.ParamByName('ParaBirimi').Value := CmbParaBirimi.Text ;

Qry1.Parameters.ParamByName('MakbuzNo').Value := TxtMakbuzNo.Text ;

Qry1.Prepared:=True;
Qry1.ExecSQL;





HesapGetir;

end;

procedure TFrmSigortaislemleri.BitBtn2Click(Sender: TObject);
begin
FrmMusteriKayit:=TFrmMusteriKayit.Create(Self);


FrmMusteriKayit.BtnKaydet.Enabled := True;
FrmMusteriKayit.BtnGuncelle.Enabled := False;
FrmMusteriKayit.BtnSil.Enabled := False;

MusteriGetir2;
FrmMusteriKayit.ShowModal;
MusteriGetir;
FrmMusteriKayit.Free;
end;

procedure TFrmSigortaislemleri.BitBtn3Click(Sender: TObject);
begin
AdvKisiler.AddRow;
end;

procedure TFrmSigortaislemleri.BitBtn4Click(Sender: TObject);
var TmpTaksit1,TmpDigerTaksitler,TmpHesap,TmpArtan,TmpYuzdelik:Currency;
i,x:integer;
TmpDate:TDateTime;
begin
x:= StrToInt(CurrToStr(CurrTaksit.Value)) ;
TmpDate:=DtTrafik1.Date;
TmpYuzdelik:=CurrYuzdelik.Value/100;

AdvListe.ClearRows(1,AdvListe.RowCount -1);
AdvListe.RowCount := x+1;

if CurrTaksit.Value=1 then begin
AdvListe.Cells[0,1]:= '1' ;
AdvListe.Cells[1,1]:= DateToStr(TmpDate);
AdvListe.Cells[2,1]:= CurrToStr(CurrToplamMiktar.Value);
CurrGenelToplam.Value := CurrToplamMiktar.Value ;
exit;
end;



TmpHesap := (CurrToplamMiktar.Value -(CurrToplamMiktar.Value*TmpYuzdelik)) / (CurrTaksit.Value-1);

if Frac(TmpHesap)<0.5 then begin
TmpArtan := Frac(TmpHesap)*(CurrTaksit.Value-1);
TmpTaksit1 :=(CurrToplamMiktar.Value*TmpYuzdelik)+TmpArtan;
TmpDigerTaksitler := Int(TmpHesap);
end;

if Frac(TmpHesap)>=0.5 then begin
TmpArtan :=(1- Frac(TmpHesap))*(CurrTaksit.Value-1);
TmpTaksit1 :=(CurrToplamMiktar.Value*TmpYuzdelik)-TmpArtan;
TmpDigerTaksitler := int(TmpHesap) + 1;
end;

AdvListe.Cells[1,1]:= DateToStr(TmpDate);
AdvListe.Cells[2,1]:= CurrToStr(TmpTaksit1);
AdvListe.AddPicture(3, 1,image2.Picture, False ,noStretch, 20, haCenter, vaCenter) ;
AdvListe.Cells[5,1]:= 'Ödenmedi';

for i:=2  to  AdvListe.RowCount-1 do begin
TmpDate:=IncMonth(TmpDate);
AdvListe.Cells[1,i]:= DateToStr(TmpDate);
AdvListe.Cells[2,i]:= CurrToStr(TmpDigerTaksitler);
AdvListe.AddPicture(3, i,image2.Picture, False ,noStretch, 20, haCenter, vaCenter) ;
AdvListe.Cells[5,i]:= 'Ödenmedi';
end;
AdvListe.AutoNumberCol(0);


/////////////Genel Toplam //////////////////
TmpHesap :=0;
for i:=1 to AdvListe.RowCount -1  do begin
if AdvListe.Cells[2,i]='' then continue;
TmpHesap := TmpHesap + StrToCurr(AdvListe.Cells[2,i]) ;
end;
CurrGenelToplam.Value := TmpHesap ;

end;

procedure TFrmSigortaislemleri.BitBtn5Click(Sender: TObject);
begin
if AdvKisiler.RowCount = 2 then
AdvKisiler.ClearRows(AdvKisiler.Row,1)
Else begin
AdvKisiler.ClearRows(AdvKisiler.Row,1);
AdvKisiler.RemoveRows(AdvKisiler.Row,1);
end;

end;

procedure TFrmSigortaislemleri.BitBtn6Click(Sender: TObject);
begin
AdvHesap.PrintSettings.TitleLines.Clear;
AdvHesap.PrintSettings.TitleLines.Add('ÖDEMELER -- '+cmbAdi.text+' '+CmbSoyadi.Text);



AdvHesap.PrintSettings.TitleLines.Add('');

AdvPreview.Grid := AdvHesap ;
AdvPreview.Execute ;
end;

procedure TFrmSigortaislemleri.BtnGuncelleClick(Sender: TObject);
var TmpSql:String;
i:integer;
begin

if CurrSigortaSuresi.value = 0 then begin
MsgUyari('Lütfen Sigorta Süresini Giriniz !!!  ..');
exit;
end;

if Trim(CmbParaBirimi.Text) = '' then begin
MsgUyari('Lütfen Para Birimini Seçiniz !!!  ..');
exit;
end;

if Trim(CmbAdi.Text) = '' then begin
MsgUyari('Lütfen Adýný Seçiniz !!!  ..');
exit;
end;

if Trim(CmbSoyadi.Text) = '' then begin
MsgUyari('Lütfen Soyadýný Seçiniz !!!  ..');
exit;
end;

if CmbSigortaTuru.Text = '' then begin
MsgUyari('Lütfen Sigotra Türünü Seçiniz !!!  ..');
exit;
end;

if CurrGenelToplam.Value = 0 then begin
MsgUyari('Lütfen Taksitler Kýsmýný Doldurunuz  !!!  ..');
exit;
end;

{
if (CmbSigortaTuru.Text = 'SEYAHAT SÝGORTASI') or (CmbSigortaTuru.Text = 'EV SÝGORTASI') or (CmbSigortaTuru.Text = 'ÝÞYERÝ SÝGORTASI') Then begin
if CmbSifati.Text = '' then begin
MsgUyari('Lütfen Sýfatýný Seçiniz !!!  ..');
exit;
end;
end;
}
///////////////////////////////////////////////

if (CmbSigortaTuru.Text = 'TRAFÝK SÝGORTASI') or (CmbSigortaTuru.Text = 'KASKO SÝGORTASI') Then begin
if TxtTrafikPlaka.Text = '' then begin
MsgUyari('Lütfen Plakayý Giriniz !!!  ..');
exit;
end;

if Trim(CmbTrafikimalyili.Text) = '' then begin
MsgUyari('Lütfen Ýmal Yýlýný Seçiniz  !!!  ..');
exit;
end;
end;


TmpSql := 'Update Sigorta set '+
'Adi=:Adi,Soyadi=:Soyadi,CepTel=:CepTel,Adres=:Adres,Turu=:Turu,PoliceNo=:PoliceNo,Tarih=:Tarih,Tarih1=:Tarih1,'+
'Tarih2=:Tarih2,Saat1=:Saat1,Saat2=:Saat2,PlakaNumarasi=:PlakaNumarasi,Markasi=:Markasi,'+
'ModelNo=:ModelNo,imalYili=:imalYili,Sifati=:Sifati,TanzimTarihi=:TanzimTarihi,Yuzdelik=:Yuzdelik,Taksit=:Taksit,'+
'ToplamMiktar=:ToplamMiktar,ParaBirimi=:ParaBirimi,sigortasuresi=:sigortasuresi,ArabaninDegeri=:ArabaninDegeri,'+
'ArabaDegerParabirim=:ArabaDegerParabirim,Notlar=:Notlar,MusteriNo=:MusteriNo,Renk=:Renk,MotorNo=:MotorNo,'+
'SasiNo=:SasiNo,MotorGucu=:MotorGucu,YenilemeNo=:YenilemeNo,Kontrol=:Kontrol, Guncelleyen=:Guncelleyen,  '+
'SigortaTuru2=:SigortaTuru2,DTDogum=:DTDogum,Cinsiyet=:Cinsiyet,OdenecekPrim=:OdenecekPrim,ParaBirimi2=:ParaBirimi2, '+
'PaketTuru=:PaketTuru,KisiSayisi=:KisiSayisi,DTDogumTarihi=:DTDogumTarihi,Dogum2=:Dogum2,Txtisim=:Txtisim, '+
'TxtSoyisim=:TxtSoyisim,CurrTeminatDegeri=:CurrTeminatDegeri,CurrTekneDegeri=:CurrTekneDegeri,'+
'TxtTekneModeli=:TxtTekneModeli,TxtTekneYili=:TxtTekneYili,CmbTeknePAraBirimi=:CmbTeknePAraBirimi,'+

'DigerAdi=:DigerAdi,DigerSoyadi=:DigerSoyadi,DigerKimlikNo=:DigerKimlikNo,'+
'DigerSigortaTuru=:DigerSigortaTuru,SigortaEttiren=:SigortaEttiren,SigortaliAdi=:SigortaliAdi,'+
'SigortaliSoyadi=:SigortaliSoyadi,KacYilParaAlacak=:KacYilParaAlacak,AHAdres=:AHAdres,'+
'EvisAdi=:EvisAdi,EvisSoyadi=:EvisSoyadi,EvisKimlikNo=:EvisKimlikNo,EvisisyeriAdi=:EvisisyeriAdi,'+
'EvisBinaDegeri=:EvisBinaDegeri,EvisDemirbasDegeri=:EvisDemirbasDegeri,EvisElektronikDegeri=:EvisElektronikDegeri,'+
'EvisCamKirilmasiDegeri=:EvisCamKirilmasiDegeri,EvisEmteaDegeri=:EvisEmteaDegeri,EvisDepremDegeri=:EvisDepremDegeri,'+
'EvisAdres=:EvisAdres,EvisKagir=:EvisKagir,EvisTur=:EvisTur,FkParaBirimi=:FkParaBirimi,FkKimlikNo=:FkKimlikNo,'+
'FkPassportNo=:FkPassportNo,FkUyruk=:FkUyruk,FkAdres=:FkAdres,TAdi=:TAdi,TSoyadi=:TSoyadi,'+
'TKimlikNo=:TKimlikNo,TTekneAdi=:TTekneAdi,TMotorGucu=:TMotorGucu,TTekneUzunlugu=:TTekneUzunlugu,'+
'TTekneGeniisligi=:TTekneGeniisligi,TKayitLiman=:TKayitLiman,TSuanKayitLiman=:TSuanKayitLiman,TBayrak=:TBayrak,'+
'CepTel2=:CepTel2,TDogumTarihi=:TDogumTarihi '+


' where id=:id';                   //,ParaBirimi=:ParaBirimi

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('Adi').Value       := CmbAdi.Text     ;
Qry1.Parameters.ParamByName('Soyadi').Value    := CmbSoyadi.Text  ;
Qry1.Parameters.ParamByName('CepTel').Value    := CmbCepTel1.Text ;
Qry1.Parameters.ParamByName('Adres').Value     := CmbAdres.Text   ;
Qry1.Parameters.ParamByName('Turu').Value      := CmbSigortaTuru.Text   ;
Qry1.Parameters.ParamByName('PoliceNo').Value  := TxtPoliceNo.Text   ;

Qry1.Parameters.ParamByName('Tarih').Value         :=
IntToStr(YearOf(Date))+'-'+IntToStr(MonthOf(Date))+'-'+IntToStr(DayOf(Date));

Qry1.Parameters.ParamByName('Tarih1').Value        :=
IntToStr(YearOf(DtTrafik1.Date))+'-'+IntToStr(MonthOf(DtTrafik1.Date))+'-'+IntToStr(DayOf(DtTrafik1.Date));

Qry1.Parameters.ParamByName('Tarih2').Value        :=
IntToStr(YearOf(DtTrafik2.Date))+'-'+IntToStr(MonthOf(DtTrafik2.Date))+'-'+IntToStr(DayOf(DtTrafik2.Date));

Qry1.Parameters.ParamByName('Saat1').Value         :=
IntToStr(HourOf(DtsTrafik1.Time))+':'+IntToStr(MinuteOf(DtsTrafik1.Time))+':'+IntToStr(SecondOf(DtsTrafik1.Time));

Qry1.Parameters.ParamByName('Saat2').Value         :=
IntToStr(HourOf(DtsTrafik2.Time))+':'+IntToStr(MinuteOf(DtsTrafik2.Time))+':'+IntToStr(SecondOf(DtsTrafik2.Time));

Qry1.Parameters.ParamByName('PlakaNumarasi').Value := Trim(TxtTrafikPlaka.Text)  ;
Qry1.Parameters.ParamByName('Markasi').Value       := Trim(TxtMarka.Text)  ;
Qry1.Parameters.ParamByName('ModelNo').Value       := Trim(TxtTrafikModelNo.Text)  ;

if CmbTrafikimalyili.Text='' Then
Qry1.Parameters.ParamByName('imalYili').Value      :=   '0'
Else
Qry1.Parameters.ParamByName('imalYili').Value      := CmbTrafikimalyili.Text  ;

Qry1.Parameters.ParamByName('Sifati').Value        := CmbSifati.Text  ;

Qry1.Parameters.ParamByName('TanzimTarihi').Value  :=
IntToStr(YearOf(DtTanzim.Date))+'-'+IntToStr(MonthOf(DtTanzim.Date))+'-'+IntToStr(DayOf(DtTanzim.Date));

Qry1.Parameters.ParamByName('Yuzdelik').Value      := CurrYuzdelik.Value  ;
Qry1.Parameters.ParamByName('Taksit').Value        := CurrTaksit.Value  ;
Qry1.Parameters.ParamByName('ToplamMiktar').Value  := CurrToplamMiktar.Value  ;
Qry1.Parameters.ParamByName('ParaBirimi').Value    := CmbParaBirimi.Text  ;
Qry1.Parameters.ParamByName('sigortasuresi').Value := CurrToStr(CurrSigortaSuresi.Value)  ;

Qry1.Parameters.ParamByName('ArabaninDegeri').Value      := CurrArabaDeger.Value  ;
Qry1.Parameters.ParamByName('ArabaDegerParabirim').Value := CmbArabaDegerParaBirim.Text  ;

Qry1.Parameters.ParamByName('Notlar').Value := MemNotlar.Text  ;

Qry1.Parameters.ParamByName('MusteriNo').Value := Trim(TxtMusteriNo.Text)   ;
Qry1.Parameters.ParamByName('Renk').Value      := Trim(TxtRenk.Text)  ;
Qry1.Parameters.ParamByName('MotorNo').Value   := Trim(TxtMotorNo.Text)   ;
Qry1.Parameters.ParamByName('SasiNo').Value    := Trim(TxtSasiNo.Text)   ;

Qry1.Parameters.ParamByName('MotorGucu').Value    := Trim(TxtMotorGucu.Text)   ;
Qry1.Parameters.ParamByName('YenilemeNo').Value   := Trim(TxtYenilemeNo.Text)   ;
Qry1.Parameters.ParamByName('Kontrol').Value    := 'N' ;
Qry1.Parameters.ParamByName('Guncelleyen').Value := Kullanici ;


Qry1.Parameters.ParamByName('SigortaTuru2').Value := CmbSigortaTuru2.Text ;
Qry1.Parameters.ParamByName('DTDogum').Value      := IntToStr(YearOf(DtDogum.Date))+'-'+IntToStr(MonthOf(DtDogum.Date))+'-'+IntToStr(DayOf(DtDogum.Date));
Qry1.Parameters.ParamByName('Cinsiyet').Value     := CmbCinsiyet.Text ;
Qry1.Parameters.ParamByName('OdenecekPrim').Value := CurrOdenecekPrim.Value ;
Qry1.Parameters.ParamByName('ParaBirimi2').Value  := CmbParaBirimi2.Text ;

Qry1.Parameters.ParamByName('PaketTuru').Value    := CmbPaketTuru.Text ;
Qry1.Parameters.ParamByName('KisiSayisi').Value   := CurrKisiSayisi.Value ;
Qry1.Parameters.ParamByName('DTDogumTarihi').Value:= IntToStr(YearOf(DTDogumTarihi.Date))+'-'+IntToStr(MonthOf(DTDogumTarihi.Date))+'-'+IntToStr(DayOf(DTDogumTarihi.Date));

Qry1.Parameters.ParamByName('Dogum2').Value            := IntToStr(YearOf(DtDogum2.Date))+'-'+IntToStr(MonthOf(DtDogum2.Date))+'-'+IntToStr(DayOf(DtDogum2.Date));
Qry1.Parameters.ParamByName('Txtisim').Value           := Txtisim.Text    ;
Qry1.Parameters.ParamByName('TxtSoyisim').Value        := TxtSoyisim.Text ;
Qry1.Parameters.ParamByName('CurrTeminatDegeri').Value := CurrTeminatDegeri.Value ;

Qry1.Parameters.ParamByName('CurrTekneDegeri').Value   := CurrTekneDegeri.Value ;
Qry1.Parameters.ParamByName('TxtTekneModeli').Value    := TxtTekneModeli.Text   ;
Qry1.Parameters.ParamByName('TxtTekneYili').Value      := TxtTekneYili.Text     ;

Qry1.Parameters.ParamByName('CmbTeknePAraBirimi').Value  := CmbTeknePAraBirimi.Text     ;

Qry1.Parameters.ParamByName('DigerAdi').Value               := TxtDigerAdi.Text ;
Qry1.Parameters.ParamByName('DigerSoyadi').Value            := TxtDigerSoyadi.Text ;
Qry1.Parameters.ParamByName('DigerKimlikNo').Value          := TxtDigerKimlikNo.Text ;
Qry1.Parameters.ParamByName('DigerSigortaTuru').Value       := TxtDigerSigortaTuru.Text ;
Qry1.Parameters.ParamByName('SigortaEttiren').Value         := TxtSigortaEttiren.Text ;
Qry1.Parameters.ParamByName('SigortaliAdi').Value           := TxtSigortaliAdi.Text ;
Qry1.Parameters.ParamByName('SigortaliSoyadi').Value        := TxtSigortaliSoyadi.Text ;
Qry1.Parameters.ParamByName('KacYilParaAlacak').Value       := CurrKacYilParaAlacak.Value ;
Qry1.Parameters.ParamByName('AHAdres').Value                := MemAhAdres.Text ;
Qry1.Parameters.ParamByName('EvisAdi').Value                := TxtEvisAdi.Text ;
Qry1.Parameters.ParamByName('EvisSoyadi').Value             := TxtEvisSoyadi.Text ;
Qry1.Parameters.ParamByName('EvisKimlikNo').Value           := TxtEvisKimlikNo.Text ;
Qry1.Parameters.ParamByName('EvisisyeriAdi').Value          := TxtEvisisyeriAdi.Text ;
Qry1.Parameters.ParamByName('EvisBinaDegeri').Value         := CurrEvisBinaDegeri.Value ;
Qry1.Parameters.ParamByName('EvisDemirbasDegeri').Value     := CurrEvisDemirbasDegeri.Value ;
Qry1.Parameters.ParamByName('EvisElektronikDegeri').Value   := CurrEvisElektronikDegeri.Value ;
Qry1.Parameters.ParamByName('EvisCamKirilmasiDegeri').Value := CurrEvisCamKirilmasiDegeri.Value ;
Qry1.Parameters.ParamByName('EvisEmteaDegeri').Value        := CurrEvisEmteaDegeri.Value ;
Qry1.Parameters.ParamByName('EvisDepremDegeri').Value       := CurrEvisDepremDegeri.Value ;
Qry1.Parameters.ParamByName('EvisAdres').Value              := MemEvisAdres.Text ;
Qry1.Parameters.ParamByName('EvisKagir').Value              := CmbEvisKagir.Text ;
Qry1.Parameters.ParamByName('EvisTur').Value                := CmbEvisTur.Text ;
Qry1.Parameters.ParamByName('FkParaBirimi').Value           := CmbFkParaBirimi.Text ;
Qry1.Parameters.ParamByName('FkKimlikNo').Value             := TxtFkKimlikNo.Text ;
Qry1.Parameters.ParamByName('FkPassportNo').Value           := TxtFkPassportNo.Text ;
Qry1.Parameters.ParamByName('FkUyruk').Value                := TxtFkUyruk.Text ;
Qry1.Parameters.ParamByName('FkAdres').Value                := MemFkAdres.Text ;
Qry1.Parameters.ParamByName('TAdi').Value                   := TxtTAdi.Text ;
Qry1.Parameters.ParamByName('TSoyadi').Value                := TxtTSoyadi.Text ;
Qry1.Parameters.ParamByName('TKimlikNo').Value              := TxtTKimlikNo.Text ;
Qry1.Parameters.ParamByName('TTekneAdi').Value              := TxtTTekneAdi.Text ;
Qry1.Parameters.ParamByName('TMotorGucu').Value             := TxtTMotorGucu.Text ;
Qry1.Parameters.ParamByName('TTekneUzunlugu').Value         := TxtTTekneUzunlugu.Text ;
Qry1.Parameters.ParamByName('TTekneGeniisligi').Value       := TxtTTekneGeniisligi.Text ;
Qry1.Parameters.ParamByName('TKayitLiman').Value            := TxtTKayitLiman.Text ;
Qry1.Parameters.ParamByName('TSuanKayitLiman').Value        := TxtTSuanKayitLiman.Text ;
Qry1.Parameters.ParamByName('TBayrak').Value                := TxtTBayrak.Text ;
Qry1.Parameters.ParamByName('CepTel2').Value                := TxtCepTel2.Text ;
Qry1.Parameters.ParamByName('TDogumTarihi').Value:= IntToStr(YearOf(DtTDogumTarihi.Date))+'-'+IntToStr(MonthOf(DtTDogumTarihi.Date))+'-'+IntToStr(DayOf(DtTDogumTarihi.Date));


Qry1.Parameters.ParamByName('id').Value  := CmbAdi.Tag ;

Qry1.Prepared:=True;
Qry1.ExecSQL;

//////////////////////Ödeme Kaydet
TmpSql := 'Delete From SigortaTaksit Where Sigortaid=:Sigortaid ';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Sigortaid').Value      := CmbAdi.Tag    ;
Qry1.Prepared:=True;
Qry1.ExecSQL;

for i:=1 to AdvListe.RowCount - 1 do  begin

TmpSql := 'insert into SigortaTaksit'+
'(TaksitNo,Tarih,Miktar,Yuzdelik,Taksit,ToplamMiktar,MusteriAdi,MusteriSoyadi,Sigortaid)'+
' Values' +
'(:TaksitNo,:Tarih,:Miktar,:Yuzdelik,:Taksit,:ToplamMiktar,:MusteriAdi,:MusteriSoyadi,:Sigortaid)';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('TaksitNo').Value       := AdvListe.Cells[0,i]     ;

Qry1.Parameters.ParamByName('Tarih').Value          :=
MidStr(AdvListe.Cells[1,i],7,4)+'-'+MidStr(AdvListe.Cells[1,i],4,2)+'-'+MidStr(AdvListe.Cells[1,i],1,2);

Qry1.Parameters.ParamByName('Miktar').Value         := AdvListe.Cells[2,i] ;
Qry1.Parameters.ParamByName('Yuzdelik').Value       := CurrYuzdelik.Value ;
Qry1.Parameters.ParamByName('Taksit').Value         := CurrTaksit.Value    ;
Qry1.Parameters.ParamByName('ToplamMiktar').Value   := CurrToplamMiktar.Value    ;
Qry1.Parameters.ParamByName('MusteriAdi').Value     := CmbAdi.Text    ;
Qry1.Parameters.ParamByName('MusteriSoyadi').Value  := CmbSoyadi.Text    ;
Qry1.Parameters.ParamByName('Sigortaid').Value      := CmbAdi.Tag    ;

Qry1.Prepared:=True;
Qry1.ExecSQL;

end;
////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////
for i:=1  to AdvKisiler.RowCount-1 do begin

TmpSql := 'Delete From SaglikSigortaKisiListesi Where Sigortaid=:Sigortaid ';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Sigortaid').Value      := CmbAdi.Tag    ;
Qry1.Prepared:=True;
Qry1.ExecSQL;

if (Trim(AdvKisiler.Cells[1,i])='') then Continue;

TmpSql := 'insert into SaglikSigortaKisiListesi ' +
' (Turu,Adi,Soyadi,Sigortaid,DogumTarihi) '+
' Values' +
' (:Turu,:Adi,:Soyadi,:Sigortaid,:DogumTarihi) ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Turu').Value   := AdvKisiler.Cells[0,i] ;
Qry1.Parameters.ParamByName('Adi').Value    := AdvKisiler.Cells[1,i];
Qry1.Parameters.ParamByName('Soyadi').Value := AdvKisiler.Cells[2,i];
Qry1.Parameters.ParamByName('Sigortaid').Value  := CmbAdi.Tag ;

if AdvKisiler.Cells[3,i]='' then  AdvKisiler.Cells[3,i] := DateToStr(date);
Qry1.Parameters.ParamByName('DogumTarihi').Value:=
IntToStr(YearOf(StrToDate(AdvKisiler.Cells[3,i])))+'-'+
IntToStr(MonthOf(StrToDate(AdvKisiler.Cells[3,i])))+'-'+
IntToStr(DayOf(StrToDate(AdvKisiler.Cells[3,i])));

Qry1.Prepared;
Qry1.ExecSQL;
end;
////////////////////////////////////////////////////////////////////////////////


MsgUyari('Güncellendi ...');

AdvListe.ClearRows(1,AdvListe.RowCount-1);
AdvListe.RowCount := 2;

AdvHesap.ClearRows(1,AdvHesap.RowCount-1);
AdvHesap.RowCount := 2;

//Temizle;
//Self.Close;


end;

procedure TFrmSigortaislemleri.BtnKaydetClick(Sender: TObject);
var TmpSql,TmpSigortaid:String;
i:integer;
begin

if Trim(CmbParaBirimi.Text) = '' then begin
MsgUyari('Lütfen Para Birimini Seçiniz !!!  ..');
exit;
end;

if CurrSigortaSuresi.value = 0 then begin
MsgUyari('Lütfen Sigorta Süresini Giriniz !!!  ..');
exit;
end;

if Trim(CmbAdi.Text) = '' then begin
MsgUyari('Lütfen Adýný Seçiniz !!!  ..');
exit;
end;

if Trim(CmbSoyadi.Text) = '' then begin
MsgUyari('Lütfen Soyadýný Seçiniz !!!  ..');
exit;
end;

if CmbSigortaTuru.Text = '' then begin
MsgUyari('Lütfen Sigotra Türünü Seçiniz !!!  ..');
exit;
end;


if CurrGenelToplam.Value = 0 then begin
MsgUyari('Lütfen Taksitler Kýsmýný Doldurunuz  !!!  ..');
exit;
end;

{[
if (CmbSigortaTuru.Text = 'TRAFÝK SÝGORTASI') or (CmbSigortaTuru.Text = 'KASKO SÝGORTASI') Then begin
if TxtTrafikPlaka.Text = '' then begin
MsgUyari('Lütfen Plakayý Giriniz !!!  ..');
exit;
end;

if Trim(CmbTrafikimalyili.Text) = '' then begin
MsgUyari('Lütfen Ýmal Yýlýný Seçiniz  !!!  ..');
exit;
end;

}

TmpSql := 'insert into Sigorta'+
'(Adi,Soyadi,CepTel,Adres,Turu,PoliceNo,Tarih,Tarih1,Tarih2,Saat1,Saat2,PlakaNumarasi,Markasi,ModelNo,imalYili,Sifati,'+
'TanzimTarihi,Yuzdelik,Taksit,ToplamMiktar,ParaBirimi,sigortasuresi,ArabaninDegeri,ArabaDegerParabirim,Notlar,MusteriNo,'+
'Renk,MotorNo,SasiNo,MotorGucu,YenilemeNo,Kontrol,Kaydeden,SigortaTuru2,DTDogum,Cinsiyet,OdenecekPrim,ParaBirimi2,PaketTuru,KisiSayisi,DTDogumTarihi,'+
'Dogum2,Txtisim,TxtSoyisim,CurrTeminatDegeri,CurrTekneDegeri,TxtTekneModeli,TxtTekneYili,CmbTeknePAraBirimi,'+
'DigerAdi,DigerSoyadi,DigerKimlikNo,DigerSigortaTuru,SigortaEttiren,SigortaliAdi,'+
'SigortaliSoyadi,KacYilParaAlacak,AHAdres,EvisAdi,EvisSoyadi,EvisKimlikNo,EvisisyeriAdi,'+
'EvisBinaDegeri,EvisDemirbasDegeri,EvisElektronikDegeri,EvisCamKirilmasiDegeri,EvisEmteaDegeri,EvisDepremDegeri,'+
'EvisAdres,EvisKagir,EvisTur,FkParaBirimi,FkKimlikNo,FkPassportNo,FkUyruk,FkAdres,TAdi,TSoyadi,TKimlikNo,'+
'TTekneAdi,TMotorGucu,TTekneUzunlugu,TTekneGeniisligi,TKayitLiman,TSuanKayitLiman,TBayrak,CepTel2,TDogumTarihi ) '+
' Values' +
'(:Adi,:Soyadi,:CepTel,:Adres,:Turu,:PoliceNo,:Tarih,:Tarih1,:Tarih2,:Saat1,:Saat2,:PlakaNumarasi,:Markasi,:ModelNo,:imalYili,:Sifati,'+
':TanzimTarihi,:Yuzdelik,:Taksit,:ToplamMiktar,:ParaBirimi,:sigortasuresi,:ArabaninDegeri,:ArabaDegerParabirim,:Notlar,:MusteriNo,'+
':Renk,:MotorNo,:SasiNo,:MotorGucu,:YenilemeNo,:Kontrol,:Kaydeden,:SigortaTuru2,:DTDogum,:Cinsiyet,:OdenecekPrim,:ParaBirimi2,:PaketTuru,:KisiSayisi,:DTDogumTarihi,'+
':Dogum2,:Txtisim,:TxtSoyisim,:CurrTeminatDegeri,:CurrTekneDegeri,:TxtTekneModeli,:TxtTekneYili,:CmbTeknePAraBirimi,'+
':DigerAdi,:DigerSoyadi,:DigerKimlikNo,:DigerSigortaTuru,:SigortaEttiren,:SigortaliAdi,'+
':SigortaliSoyadi,:KacYilParaAlacak,:AHAdres,:EvisAdi,:EvisSoyadi,:EvisKimlikNo,:EvisisyeriAdi,'+
':EvisBinaDegeri,:EvisDemirbasDegeri,:EvisElektronikDegeri,:EvisCamKirilmasiDegeri,:EvisEmteaDegeri,:EvisDepremDegeri,'+
':EvisAdres,:EvisKagir,:EvisTur,:FkParaBirimi,:FkKimlikNo,:FkPassportNo,:FkUyruk,:FkAdres,:TAdi,:TSoyadi,:TKimlikNo,'+
':TTekneAdi,:TMotorGucu,:TTekneUzunlugu,:TTekneGeniisligi,:TKayitLiman,:TSuanKayitLiman,:TBayrak,:CepTel2,:TDogumTarihi ) ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('Adi').Value       := CmbAdi.Text     ;
Qry1.Parameters.ParamByName('Soyadi').Value    := CmbSoyadi.Text  ;
Qry1.Parameters.ParamByName('CepTel').Value    := CmbCepTel1.Text ;
Qry1.Parameters.ParamByName('Adres').Value     := CmbAdres.Text   ;
Qry1.Parameters.ParamByName('Turu').Value      := CmbSigortaTuru.Text   ;
Qry1.Parameters.ParamByName('PoliceNo').Value  := TxtPoliceNo.Text   ;
Qry1.Parameters.ParamByName('Tarih').Value         :=
IntToStr(YearOf(Date))+'-'+IntToStr(MonthOf(Date))+'-'+IntToStr(DayOf(Date));
Qry1.Parameters.ParamByName('Tarih1').Value        :=
IntToStr(YearOf(DtTrafik1.Date))+'-'+IntToStr(MonthOf(DtTrafik1.Date))+'-'+IntToStr(DayOf(DtTrafik1.Date));
Qry1.Parameters.ParamByName('Tarih2').Value        :=
IntToStr(YearOf(DtTrafik2.Date))+'-'+IntToStr(MonthOf(DtTrafik2.Date))+'-'+IntToStr(DayOf(DtTrafik2.Date));
Qry1.Parameters.ParamByName('Saat1').Value         :=
IntToStr(HourOf(DtsTrafik1.Time))+':'+IntToStr(MinuteOf(DtsTrafik1.Time))+':'+IntToStr(SecondOf(DtsTrafik1.Time));
Qry1.Parameters.ParamByName('Saat2').Value         :=
IntToStr(HourOf(DtsTrafik2.Time))+':'+IntToStr(MinuteOf(DtsTrafik2.Time))+':'+IntToStr(SecondOf(DtsTrafik2.Time));
Qry1.Parameters.ParamByName('PlakaNumarasi').Value := Trim(TxtTrafikPlaka.Text)  ;
Qry1.Parameters.ParamByName('Markasi').Value       := Trim(TxtMarka.Text)  ;
Qry1.Parameters.ParamByName('ModelNo').Value       := Trim(TxtTrafikModelNo.Text)  ;
if CmbTrafikimalyili.Text='' Then
Qry1.Parameters.ParamByName('imalYili').Value      :=   '0'
Else
Qry1.Parameters.ParamByName('imalYili').Value      := CmbTrafikimalyili.Text  ;
Qry1.Parameters.ParamByName('Sifati').Value        := CmbSifati.Text  ;
Qry1.Parameters.ParamByName('TanzimTarihi').Value  :=
IntToStr(YearOf(DtTanzim.Date))+'-'+IntToStr(MonthOf(DtTanzim.Date))+'-'+IntToStr(DayOf(DtTanzim.Date));
Qry1.Parameters.ParamByName('Yuzdelik').Value      := CurrYuzdelik.Value  ;
Qry1.Parameters.ParamByName('Taksit').Value        := CurrTaksit.Value  ;
Qry1.Parameters.ParamByName('ToplamMiktar').Value  := CurrToplamMiktar.Value  ;
Qry1.Parameters.ParamByName('ParaBirimi').Value    := CmbParaBirimi.Text  ;
Qry1.Parameters.ParamByName('sigortasuresi').Value := CurrToStr(CurrSigortaSuresi.Value)  ;
Qry1.Parameters.ParamByName('ArabaninDegeri').Value      := CurrArabaDeger.Value  ;
Qry1.Parameters.ParamByName('ArabaDegerParabirim').Value := CmbArabaDegerParaBirim.Text  ;
Qry1.Parameters.ParamByName('Notlar').Value := MemNotlar.Text  ;
Qry1.Parameters.ParamByName('MusteriNo').Value := Trim(TxtMusteriNo.Text)   ;
Qry1.Parameters.ParamByName('Renk').Value      := Trim(TxtRenk.Text)  ;
Qry1.Parameters.ParamByName('MotorNo').Value   := Trim(TxtMotorNo.Text)   ;
Qry1.Parameters.ParamByName('SasiNo').Value    := Trim(TxtSasiNo.Text)   ;
Qry1.Parameters.ParamByName('MotorGucu').Value    := Trim(TxtMotorGucu.Text)   ;
Qry1.Parameters.ParamByName('YenilemeNo').Value   := Trim(TxtYenilemeNo.Text)   ;
Qry1.Parameters.ParamByName('Kontrol').Value    := 'N' ;
Qry1.Parameters.ParamByName('Kaydeden').Value := Kullanici ;
Qry1.Parameters.ParamByName('SigortaTuru2').Value := CmbSigortaTuru2.Text ;
Qry1.Parameters.ParamByName('DTDogum').Value      := IntToStr(YearOf(DtDogum.Date))+'-'+IntToStr(MonthOf(DtDogum.Date))+'-'+IntToStr(DayOf(DtDogum.Date));
Qry1.Parameters.ParamByName('Cinsiyet').Value     := CmbCinsiyet.Text ;
Qry1.Parameters.ParamByName('OdenecekPrim').Value := CurrOdenecekPrim.Value ;
Qry1.Parameters.ParamByName('ParaBirimi2').Value  := CmbParaBirimi2.Text ;
Qry1.Parameters.ParamByName('PaketTuru').Value    := CmbPaketTuru.Text ;
Qry1.Parameters.ParamByName('KisiSayisi').Value   := CurrKisiSayisi.Value ;
Qry1.Parameters.ParamByName('DTDogumTarihi').Value:= IntToStr(YearOf(DTDogumTarihi.Date))+'-'+IntToStr(MonthOf(DTDogumTarihi.Date))+'-'+IntToStr(DayOf(DTDogumTarihi.Date));
Qry1.Parameters.ParamByName('Dogum2').Value            := IntToStr(YearOf(DtDogum2.Date))+'-'+IntToStr(MonthOf(DtDogum2.Date))+'-'+IntToStr(DayOf(DtDogum2.Date));
Qry1.Parameters.ParamByName('Txtisim').Value           := Txtisim.Text    ;
Qry1.Parameters.ParamByName('TxtSoyisim').Value        := TxtSoyisim.Text ;
Qry1.Parameters.ParamByName('CurrTeminatDegeri').Value := CurrTeminatDegeri.Value ;
Qry1.Parameters.ParamByName('CurrTekneDegeri').Value   := CurrTekneDegeri.Value ;
Qry1.Parameters.ParamByName('TxtTekneModeli').Value    := TxtTekneModeli.Text   ;
Qry1.Parameters.ParamByName('TxtTekneYili').Value      := TxtTekneYili.Text     ;
Qry1.Parameters.ParamByName('CmbTeknePAraBirimi').Value      := CmbTeknePAraBirimi.Text ;

Qry1.Parameters.ParamByName('DigerAdi').Value               := TxtDigerAdi.Text ;
Qry1.Parameters.ParamByName('DigerSoyadi').Value            := TxtDigerSoyadi.Text ;
Qry1.Parameters.ParamByName('DigerKimlikNo').Value          := TxtDigerKimlikNo.Text ;
Qry1.Parameters.ParamByName('DigerSigortaTuru').Value       := TxtDigerSigortaTuru.Text ;
Qry1.Parameters.ParamByName('SigortaEttiren').Value         := TxtSigortaEttiren.Text ;
Qry1.Parameters.ParamByName('SigortaliAdi').Value           := TxtSigortaliAdi.Text ;
Qry1.Parameters.ParamByName('SigortaliSoyadi').Value        := TxtSigortaliSoyadi.Text ;
Qry1.Parameters.ParamByName('KacYilParaAlacak').Value       := CurrKacYilParaAlacak.Value ;
Qry1.Parameters.ParamByName('AHAdres').Value                := MemAhAdres.Text ;
Qry1.Parameters.ParamByName('EvisAdi').Value                := TxtEvisAdi.Text ;
Qry1.Parameters.ParamByName('EvisSoyadi').Value             := TxtEvisSoyadi.Text ;
Qry1.Parameters.ParamByName('EvisKimlikNo').Value           := TxtEvisKimlikNo.Text ;
Qry1.Parameters.ParamByName('EvisisyeriAdi').Value          := TxtEvisisyeriAdi.Text ;
Qry1.Parameters.ParamByName('EvisBinaDegeri').Value         := CurrEvisBinaDegeri.Value ;
Qry1.Parameters.ParamByName('EvisDemirbasDegeri').Value     := CurrEvisDemirbasDegeri.Value ;
Qry1.Parameters.ParamByName('EvisElektronikDegeri').Value   := CurrEvisElektronikDegeri.Value ;
Qry1.Parameters.ParamByName('EvisCamKirilmasiDegeri').Value := CurrEvisCamKirilmasiDegeri.Value ;
Qry1.Parameters.ParamByName('EvisEmteaDegeri').Value        := CurrEvisEmteaDegeri.Value ;
Qry1.Parameters.ParamByName('EvisDepremDegeri').Value       := CurrEvisDepremDegeri.Value ;
Qry1.Parameters.ParamByName('EvisAdres').Value              := MemEvisAdres.Text ;
Qry1.Parameters.ParamByName('EvisKagir').Value              := CmbEvisKagir.Text ;
Qry1.Parameters.ParamByName('EvisTur').Value                := CmbEvisTur.Text ;
Qry1.Parameters.ParamByName('FkParaBirimi').Value           := CmbFkParaBirimi.Text ;
Qry1.Parameters.ParamByName('FkKimlikNo').Value             := TxtFkKimlikNo.Text ;
Qry1.Parameters.ParamByName('FkPassportNo').Value           := TxtFkPassportNo.Text ;
Qry1.Parameters.ParamByName('FkUyruk').Value                := TxtFkUyruk.Text ;
Qry1.Parameters.ParamByName('FkAdres').Value                := MemFkAdres.Text ;
Qry1.Parameters.ParamByName('TAdi').Value                   := TxtTAdi.Text ;
Qry1.Parameters.ParamByName('TSoyadi').Value                := TxtTSoyadi.Text ;
Qry1.Parameters.ParamByName('TKimlikNo').Value              := TxtTKimlikNo.Text ;
Qry1.Parameters.ParamByName('TTekneAdi').Value              := TxtTTekneAdi.Text ;
Qry1.Parameters.ParamByName('TMotorGucu').Value             := TxtTMotorGucu.Text ;
Qry1.Parameters.ParamByName('TTekneUzunlugu').Value         := TxtTTekneUzunlugu.Text ;
Qry1.Parameters.ParamByName('TTekneGeniisligi').Value       := TxtTTekneGeniisligi.Text ;
Qry1.Parameters.ParamByName('TKayitLiman').Value            := TxtTKayitLiman.Text ;
Qry1.Parameters.ParamByName('TSuanKayitLiman').Value        := TxtTSuanKayitLiman.Text ;
Qry1.Parameters.ParamByName('TBayrak').Value                := TxtTBayrak.Text ;
Qry1.Parameters.ParamByName('CepTel2').Value                := TxtCepTel2.Text ;
Qry1.Parameters.ParamByName('TDogumTarihi').Value:= IntToStr(YearOf(DtTDogumTarihi.Date))+'-'+IntToStr(MonthOf(DtTDogumTarihi.Date))+'-'+IntToStr(DayOf(DtTDogumTarihi.Date));

Qry1.Prepared:=True;
Qry1.ExecSQL;

////////////////////////

TmpSql := 'Select Max(id) as d from Sigorta';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Open;
TmpSigortaid := Qry1.FieldByName('d').AsString ;
CmbAdi.Tag   := Qry1.FieldByName('d').AsInteger  ;
////////////////////////

for i:=1 to AdvListe.RowCount - 1 do  begin

TmpSql := 'insert into SigortaTaksit '+
'(TaksitNo,Tarih,Miktar,Yuzdelik,Taksit,ToplamMiktar,MusteriAdi,MusteriSoyadi,Sigortaid)'+
' Values' +
'(:TaksitNo,:Tarih,:Miktar,:Yuzdelik,:Taksit,:ToplamMiktar,:MusteriAdi,:MusteriSoyadi,:Sigortaid)';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('TaksitNo').Value       := AdvListe.Cells[0,i]     ;
Qry1.Parameters.ParamByName('Tarih').Value          :=
MidStr(AdvListe.Cells[1,i],7,4)+'-'+MidStr(AdvListe.Cells[1,i],4,2)+'-'+MidStr(AdvListe.Cells[1,i],1,2);
Qry1.Parameters.ParamByName('Miktar').Value         := AdvListe.Cells[2,i] ;
Qry1.Parameters.ParamByName('Yuzdelik').Value       := CurrYuzdelik.Value ;
Qry1.Parameters.ParamByName('Taksit').Value         := CurrTaksit.Value    ;
Qry1.Parameters.ParamByName('ToplamMiktar').Value   := CurrToplamMiktar.Value    ;
Qry1.Parameters.ParamByName('MusteriAdi').Value     := CmbAdi.Text    ;
Qry1.Parameters.ParamByName('MusteriSoyadi').Value  := CmbSoyadi.Text    ;
Qry1.Parameters.ParamByName('Sigortaid').Value      := TmpSigortaid    ;
Qry1.Prepared:=True;
Qry1.ExecSQL;
end;

////////////////////////////////////////////////////////////////////////////////
for i:=1  to AdvKisiler.RowCount-1 do begin

if (Trim(AdvKisiler.Cells[1,i])='') then Continue;

TmpSql := 'insert into SaglikSigortaKisiListesi ' +
' (Turu,Adi,Soyadi,Sigortaid,DogumTarihi) '+
' Values' +
' (:Turu,:Adi,:Soyadi,:Sigortaid,:DogumTarihi) ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Turu').Value   := AdvKisiler.Cells[0,i] ;
Qry1.Parameters.ParamByName('Adi').Value    := AdvKisiler.Cells[1,i];
Qry1.Parameters.ParamByName('Soyadi').Value := AdvKisiler.Cells[2,i];
Qry1.Parameters.ParamByName('Sigortaid').Value  := CmbAdi.Tag ;

if AdvKisiler.Cells[3,i]='' then  AdvKisiler.Cells[3,i] := DateToStr(date);
Qry1.Parameters.ParamByName('DogumTarihi').Value:=
IntToStr(YearOf(StrToDate(AdvKisiler.Cells[3,i])))+'-'+
IntToStr(MonthOf(StrToDate(AdvKisiler.Cells[3,i])))+'-'+
IntToStr(DayOf(StrToDate(AdvKisiler.Cells[3,i])));

Qry1.Prepared;
Qry1.ExecSQL;
end;
////////////////////////////////////////////////////////////////////////////////
 //SigortaTuru2,DTDogum,Cinsiyet,OdenecekPrim,ParaBirimi2,PaketTuru,KisiSayisi,DTDogumTarihi

/////////////////////////////////////////////////////////////////////////////////////7777777


TmpSql := 'insert into SigortaOdeme'+
'(MusteriAdi,MusteriSoyadi,Sigortaid,Tarih,OdemeTarihi,Aciklama,Borc,Alacak,ParaBirimi)'+
' Values' +
'(:MusteriAdi,:MusteriSoyadi,:Sigortaid,:Tarih,:OdemeTarihi,:Aciklama,:Borc,:Alacak,:ParaBirimi)';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('MusteriAdi').Value     := CmbAdi.Text    ;
Qry1.Parameters.ParamByName('MusteriSoyadi').Value  := CmbSoyadi.Text ;
Qry1.Parameters.ParamByName('Sigortaid').Value      := TmpSigortaid   ;

Qry1.Parameters.ParamByName('Tarih').Value          :=
IntToStr(YearOf(Date))+'-'+IntToStr(MonthOf(Date))+'-'+IntToStr(DayOf(Date));

Qry1.Parameters.ParamByName('OdemeTarihi').Value  :=
IntToStr(YearOf(Date))+'-'+IntToStr(MonthOf(Date))+'-'+IntToStr(DayOf(Date));

Qry1.Parameters.ParamByName('Aciklama').Value   := CmbSigortaTuru.Text ;
Qry1.Parameters.ParamByName('Borc').Value       := CurrToplamMiktar.Value ;
Qry1.Parameters.ParamByName('Alacak').Value     := '0' ;
Qry1.Parameters.ParamByName('ParaBirimi').Value := CmbParaBirimi.Text;

Qry1.Prepared:=True;
Qry1.ExecSQL;


GrbHesap.Visible:=True;
HesapGetir;

BtnKaydet.Enabled   := False ;
BtnGuncelle.Enabled := True  ;
BtnSil.Enabled      := True  ;

MsgUyari('Kaydedildi ...');


AdvListe.ClearRows(1,AdvListe.RowCount-1);
AdvListe.RowCount := 2;

AdvHesap.ClearRows(1,AdvHesap.RowCount-1);
AdvHesap.RowCount := 2;

//Temizle;

end;

procedure TFrmSigortaislemleri.BtnSilClick(Sender: TObject);
var TmpSql:String;
i:integer;
begin

if MsgOnay('Kaydý Silmek Ýstiyormusunuz ?')=False then exit;

TmpSql := 'Delete From Sigorta where id=:id';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('id').Value  := CmbAdi.Tag ;
Qry1.Prepared:=True;
Qry1.ExecSQL;

TmpSql := 'Delete From SigortaOdeme Where Sigortaid=:Sigortaid ';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Sigortaid').Value  := CmbAdi.Tag    ;
Qry1.Prepared:=True;
Qry1.ExecSQL;

TmpSql := 'Delete From SigortaTaksit Where Sigortaid=:Sigortaid ';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Sigortaid').Value  := CmbAdi.Tag    ;
Qry1.Prepared:=True;
Qry1.ExecSQL;

MsgUyari('Kayýt Silindi ...');
Temizle;
Self.Close;


end;


procedure TFrmSigortaislemleri.BtnTemizleClick(Sender: TObject);
begin
Temizle;

GrbHesap.Visible:=False;

BtnKaydet.Enabled   := True ;
BtnGuncelle.Enabled := False;
BtnSil.Enabled      := False ;
end;

procedure TFrmSigortaislemleri.CmbAdiChange(Sender: TObject);
begin
if chksec.Checked = False then exit;

CmbSoyadi.ItemIndex  := CmbAdi.ItemIndex;
CmbCepTel1.ItemIndex := CmbAdi.ItemIndex;
CmbAdres.ItemIndex   := CmbAdi.ItemIndex;
end;

procedure TFrmSigortaislemleri.CmbAdresChange(Sender: TObject);
begin
if chksec.Checked = False then exit;

CmbSoyadi.ItemIndex  := CmbAdres.ItemIndex ;
CmbAdi.ItemIndex     := CmbAdres.ItemIndex;
CmbCepTel1.ItemIndex := CmbAdres.ItemIndex;
end;

procedure TFrmSigortaislemleri.CmbCepTel1Change(Sender: TObject);
begin
if chksec.Checked = False then exit;

CmbSoyadi.ItemIndex  := CmbCepTel1.ItemIndex ;
CmbAdi.ItemIndex     := CmbCepTel1.ItemIndex;
CmbAdres.ItemIndex   := CmbCepTel1.ItemIndex;
end;

procedure TFrmSigortaislemleri.CmbSigortaTuruChange(Sender: TObject);
begin
TurGetir;
end;

procedure TFrmSigortaislemleri.CmbSoyadiChange(Sender: TObject);
begin
if chksec.Checked = False then exit;
CmbAdi.ItemIndex     := CmbSoyadi.ItemIndex;
CmbCepTel1.ItemIndex := CmbSoyadi.ItemIndex;
CmbAdres.ItemIndex   := CmbSoyadi.ItemIndex;
end;

procedure TFrmSigortaislemleri.CreateParams(var Params: TCreateParams);
begin
 inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;

procedure TFrmSigortaislemleri.CurrSigortaSuresiKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
DtTrafik2.Date :=  IncMonth(DtTrafik1.Date,StrToInt(CurrSigortaSuresi.Text)) ;
end;

procedure TFrmSigortaislemleri.CurrTaksitChange(Sender: TObject);
begin
if CurrTaksit.Value = 1 then CurrYuzdelik.Value := 100 ;

AdvListe.ClearRows(1,AdvListe.RowCount -1);
AdvListe.RowCount := 2;

end;

procedure TFrmSigortaislemleri.CurrToplamMiktarChange(Sender: TObject);
begin


AdvListe.ClearRows(1,AdvListe.RowCount -1);
AdvListe.RowCount := 2;

end;

procedure TFrmSigortaislemleri.dendi1Click(Sender: TObject);
begin
AdvListe.AddPicture(3, AdvListe.Row,image1.Picture, False ,noStretch, 20, haCenter, vaCenter) ;
AdvListe.Cells[4,AdvListe.Row]:= DateToStr(Date);
AdvListe.Cells[5,AdvListe.Row]:= 'Ödendi';

end;

procedure TFrmSigortaislemleri.denmedi1Click(Sender: TObject);
begin
AdvListe.AddPicture(3, AdvListe.Row,image2.Picture, False ,noStretch, 20, haCenter, vaCenter) ;
AdvListe.Cells[4,AdvListe.Row]:= '';
AdvListe.Cells[5,AdvListe.Row]:= 'Ödenmedi';

end;

procedure TFrmSigortaislemleri.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FrmSigortaislemleri:= nil;
end;

procedure TFrmSigortaislemleri.FormShow(Sender: TObject);
begin
DtsTrafik1.Format   := 'HH:mm';
DtsTrafik2.Format   := 'HH:mm';
FrmSigortaislemleri.DtOdemeTarihi.Date:=Date;
FrmSigortaislemleri.DTDogumTarihi.Date:=Date;
FrmSigortaislemleri.DtDogum.Date:=Date;
FrmSigortaislemleri.DtDogum2.Date:=Date;

if pubodemeonay<>'Y' Then begin
GrbHesap.Enabled := False;
end;

if pubguncellemeonay<>'Y' Then begin
BtnGuncelle.Enabled:=False;
end;

if pubsilmeonay<>'Y' Then begin
BtnSil.Enabled:=False;
end;

end;

procedure TFrmSigortaislemleri.HesapGetir;
var TmpSql:String;
i:integer;
TmpBakiye,ToplamBorc,ToplamAlacak:Currency;
begin

AdvHesap.ClearRows(1,AdvHesap.RowCount-1);
AdvHesap.RowCount := 2;

TmpSql := 'Select * from SigortaOdeme where Sigortaid=:Sigortaid order by OdemeTarihi,id ' ;
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Sigortaid').Value := FrmSigortaislemleri.CmbAdi.Tag ;
Qry1.Prepared:=True;
Qry1.Open;

if Qry1.RecordCount<>0 Then AdvHesap.RowCount := Qry1.RecordCount+1;
TmpBakiye:=0;
ToplamBorc:=0;
ToplamAlacak:=0;

for i:=1 to Qry1.RecordCount do begin
FrmSigortaislemleri.AdvHesap.Cells[1,i] := Qry1.FieldByName('OdemeTarihi').AsString ;
FrmSigortaislemleri.AdvHesap.Cells[2,i] := 'MAkbuz No :'+ Qry1.FieldByName('MakbuzNo').AsString +',  '+Qry1.FieldByName('Aciklama').AsString ;
FrmSigortaislemleri.AdvHesap.Cells[3,i] := FormatFloat('#,##0.00',Qry1.FieldByName('Borc').AsCurrency)  ;
FrmSigortaislemleri.AdvHesap.Cells[4,i] := FormatFloat('#,##0.00',Qry1.FieldByName('Alacak').AsCurrency);

ToplamBorc:=ToplamBorc + Qry1.FieldByName('Borc').AsCurrency;
ToplamAlacak:=ToplamAlacak + Qry1.FieldByName('Alacak').AsCurrency;
TmpBakiye := TmpBakiye + (Qry1.FieldByName('Alacak').AsCurrency - Qry1.FieldByName('Borc').AsCurrency) ;



FrmSigortaislemleri.AdvHesap.Cells[5,i] := FormatFloat('#,##0.00',TmpBakiye);

Qry1.Next;
end;
FrmSigortaislemleri.AdvHesap.Colors[5,AdvHesap.RowCount-1]:=clYellow;



TmpSql := 'Update Sigorta Set ToplamBorc=:ToplamBorc,ToplamAlacak=:ToplamAlacak,Bakiye=:Bakiye where id=:id ' ;
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('ToplamBorc').Value := ToplamBorc ;
Qry1.Parameters.ParamByName('ToplamAlacak').Value := ToplamAlacak ;
Qry1.Parameters.ParamByName('Bakiye').Value := TmpBakiye ;
Qry1.Parameters.ParamByName('id').Value := CmbAdi.Tag ;
Qry1.Prepared:=True;
Qry1.ExecSql;

end;

procedure TFrmSigortaislemleri.MusteriGetir;
var i:integer;
TmpSql:String;
begin

CmbAdi.Clear;
CmbSoyadi.Clear;
CmbCepTel1.Clear;
CmbAdres.Clear;

TmpSql:= 'Select Adi,Soyadi,CepTel1,Adres from musteri  order by adi,soyadi' ;
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Prepared:=True;
Qry1.Open;

for i:=0 to Qry1.RecordCount-1 do begin
CmbAdi.Items.Add(Qry1.FieldByName('Adi').AsString);
CmbSoyadi.Items.Add(Qry1.FieldByName('Soyadi').AsString);
CmbCepTel1.Items.Add(Qry1.FieldByName('CepTel1').AsString);
CmbAdres.Items.Add(Qry1.FieldByName('Adres').AsString);
Qry1.Next;
end;

end;

procedure TFrmSigortaislemleri.MusteriGetir2;
var TmpSql:String;
begin
TmpSql:= 'Select * from musteri where adi=:adi and soyadi=:soyadi';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Adi').Value := CmbAdi.Text;
Qry1.Parameters.ParamByName('Soyadi').Value := CmbSoyadi.Text;
Qry1.Prepared;
Qry1.Open;


if qry1.RecordCount = 0 then exit;

FrmMusteriKayit.TxtAdi.Text        := Qry1.FieldByName('Adi').AsString;
FrmMusteriKayit.TxtSoyadi.Text     := Qry1.FieldByName('Soyadi').AsString;
FrmMusteriKayit.DtDogumTarihi.Date := Qry1.FieldByName('DogumTarihi').AsDateTime;
FrmMusteriKayit.CmbYolcuTipi.Text  := Qry1.FieldByName('YolcuTipi').AsString;
FrmMusteriKayit.CmbUyruk.Text      := Qry1.FieldByName('Uyrugu').AsString;
FrmMusteriKayit.TxtCepTel1.Text    := Qry1.FieldByName('CepTel1').AsString;
FrmMusteriKayit.TxtCepTel2.Text    := Qry1.FieldByName('CepTel2').AsString;
FrmMusteriKayit.TxtEvTel.Text      := Qry1.FieldByName('EvTel').AsString;
FrmMusteriKayit.TxtisTel.Text      := Qry1.FieldByName('isTel').AsString;
FrmMusteriKayit.TxtAdres.Text      := Qry1.FieldByName('Adres').AsString;
FrmMusteriKayit.TxtEmail.Text      := Qry1.FieldByName('Email').AsString;
FrmMusteriKayit.MemNotlar.Text     := Qry1.FieldByName('Notlar').AsString;

FrmMusteriKayit.TxtAdi.Tag      := Qry1.FieldByName('id').AsInteger;


FrmMusteriKayit.BtnKaydet.Enabled := False;
FrmMusteriKayit.BtnGuncelle.Enabled := True;
FrmMusteriKayit.BtnSil.Enabled := True;

end;

procedure TFrmSigortaislemleri.Temizle;
begin

AdvListe.ClearRows(1,AdvListe.RowCount-1);
AdvListe.RowCount := 2;

AdvHesap.ClearRows(1,AdvHesap.RowCount-1);
AdvHesap.RowCount := 2;

ChkSec.Checked := True;
CmbAdi.ItemIndex      := -1 ;
CmbSoyadi.ItemIndex   := -1 ;
CmbCepTel1.ItemIndex  := -1 ;
CmbAdres.ItemIndex    := -1 ;
TxtPoliceNo.Clear ;
CmbArabaDegerParaBirim.ItemIndex := -1 ;
DtTrafik1.Date:= Date;
DtTanzim.Date:=  Date;
DtOdemeTarihi.Date := Date;
DtsTrafik1.Time:=Time;
DtsTrafik2.Time:=Time;
TxtOdemeAciklama.Clear;
TxtMusteriNo.Clear;
CmbSifati.ItemIndex := -1 ;
CurrToplamMiktar.Value  := 0  ;
CurrOdenenMiktar.Value  := 0  ;
CurrSigortaSuresi.Value := 24 ;
MemNotlar.Clear;

TxtDigerAdi.Clear ;
TxtDigerSoyadi.Clear ;
TxtDigerKimlikNo.Clear ;
TxtDigerSigortaTuru.Clear ;
TxtSigortaEttiren.Clear ;
TxtSigortaliAdi.Clear ;
TxtSigortaliSoyadi.Clear ;
CurrKacYilParaAlacak.Value := 0 ;
MemAhAdres.Clear ;
TxtEvisAdi.Clear ;
TxtEvisSoyadi.Clear ;
TxtEvisKimlikNo.Clear ;
TxtEvisisyeriAdi.Clear ;
CurrEvisBinaDegeri.Value := 0 ;
CurrEvisDemirbasDegeri.Value := 0 ;
CurrEvisElektronikDegeri.Value := 0 ;
CurrEvisCamKirilmasiDegeri.Value := 0 ;
CurrEvisEmteaDegeri.Value := 0 ;
CurrEvisDepremDegeri.Value := 0 ;
MemEvisAdres.Clear ;
CmbEvisKagir.Clear ;
CmbEvisTur.ItemIndex :=-1 ;
CmbFkParaBirimi.ItemIndex :=-1 ;
TxtFkKimlikNo.Clear ;
TxtFkPassportNo.Clear ;
TxtFkUyruk.Clear ;
MemFkAdres.Clear ;
TxtTAdi.Clear ;
TxtTSoyadi.Clear ;
TxtTKimlikNo.Clear ;
TxtTTekneAdi.Clear ;
TxtTMotorGucu.Clear ;
TxtTTekneUzunlugu.Clear ;
TxtTTekneGeniisligi.Clear ;
TxtTKayitLiman.Clear ;
TxtTSuanKayitLiman.Clear ;
TxtTBayrak.Clear ;
TxtCepTel2.Clear ;

MusteriGetir;
CmbAdi.Tag := 0;
end;

procedure TFrmSigortaislemleri.TurGetir;
begin

if CmbSigortaTuru.Text = 'TRAFÝK SÝGORTASI' Then     Sayfalar.ActivePage := Trafikkasko ;
if CmbSigortaTuru.Text = 'KASKO SÝGORTASI' Then      Sayfalar.ActivePage := Trafikkasko ;
if CmbSigortaTuru.Text = 'SEYAHAT SÝGORTASI' Then    Sayfalar.ActivePage := FerdiKaza ;
if CmbSigortaTuru.Text = 'EV SÝGORTASI' Then         Sayfalar.ActivePage := Evisyeri ;
if CmbSigortaTuru.Text = 'ÝÞYERÝ SÝGORTASI' Then     Sayfalar.ActivePage := Evisyeri ;
if CmbSigortaTuru.Text = 'ANADOLU HAYAT' Then        Sayfalar.ActivePage := AnadoluHayat ;
if CmbSigortaTuru.Text = 'SAGLIK SIGORTASI' Then     Sayfalar.ActivePage := Saglik ;
if CmbSigortaTuru.Text = 'TEKNE SIGORTASI' Then      Sayfalar.ActivePage := Tekne ;
if CmbSigortaTuru.Text = 'FERDI KAZA SIGORTASI' Then Sayfalar.ActivePage := FerdiKaza ;
if CmbSigortaTuru.Text = 'DIGER SIGORTALAR' Then     Sayfalar.ActivePage := Diger ;

end;

end.
