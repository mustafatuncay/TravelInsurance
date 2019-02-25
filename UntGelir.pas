unit UntGelir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, MoneyEdit, DB, ADODB,DateUtils,
  Grids, AdvObj, BaseGrid, AdvGrid, jpeg, AdvEdit, AdvMoneyEdit,QRPDFFilt,
  QRWebFilt,QuickRpt, QRExport, gtXportIntf, gtQRXportIntf, gtClasses3,
  gtCstDocEng, gtCstPlnEng, gtCstPDFEng, gtExPDFEng, gtPDFEng,ShellApi,qrprntr,
  IdBaseComponent, IdComponent, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdMessage, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP ;
type
  TFrmGelir = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Qry1: TADOQuery;
    PageControl1: TPageControl;
    TabBiletSatis: TTabSheet;
    TabOtelSatis: TTabSheet;
    TabTransfer: TTabSheet;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label21: TLabel;
    Label7: TLabel;
    Label17: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    CmbUrunCesidi: TComboBox;
    TxtNereden: TEdit;
    TxtNereye: TEdit;
    ChkBiletiptali: TCheckBox;
    ChkNereden: TCheckBox;
    ChkNereye: TCheckBox;
    DtObsSaat: TDateTimePicker;
    DtObsTarihi: TDateTimePicker;
    CmbHavaDenizYolu: TComboBox;
    ChkOnay: TCheckBox;
    CmbKullanilanKart: TComboBox;
    CmbSirket: TComboBox;
    ChkObsiyon: TCheckBox;
    MemAciklama: TMemo;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    TxtKonaklamaSekli: TEdit;
    Txtilgili: TEdit;
    DtGirisTarihi: TDateTimePicker;
    DtCikisTarihi: TDateTimePicker;
    CurrOdaSayisi: TMoneyEdit;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    AdvKisiler: TAdvStringGrid;
    BtnEkle: TBitBtn;
    Label39: TLabel;
    CmbOdaKategori: TComboBox;
    BtnCikar: TBitBtn;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    TxtTransferAdi: TEdit;
    TxtTransferSoyadi: TEdit;
    Label44: TLabel;
    TxtTransferCepNo: TEdit;
    Label49: TLabel;
    Label50: TLabel;
    CmbTransferOtelAdi: TComboBox;
    Label51: TLabel;
    CmbTransferOtelTel: TComboBox;
    Label52: TLabel;
    CmbTransferOtelAdres: TComboBox;
    GrpTransfer1: TGroupBox;
    Label33: TLabel;
    Label34: TLabel;
    TxtT1Nereden: TEdit;
    TxtT1Nereye: TEdit;
    Dt1NeredenTarih: TDateTimePicker;
    Dt1NeredenSaat: TDateTimePicker;
    Dt1NereyeTarih: TDateTimePicker;
    Dt1NereyeSaat: TDateTimePicker;
    Label45: TLabel;
    TxtT1UcusKodu: TEdit;
    Label47: TLabel;
    Dt1inisSaati: TDateTimePicker;
    CmbArac: TComboBox;
    RbTekYon: TRadioButton;
    RbCiftYon: TRadioButton;
    CurrKisiSayi: TMoneyEdit;
    CmbOtelAdi: TComboBox;
    CmbOtelAdres: TComboBox;
    CmbOtelTelefon: TComboBox;
    CmbOtelEmail: TComboBox;
    GrpTransfer2: TGroupBox;
    Label46: TLabel;
    Label48: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    TxtT2Nereden: TEdit;
    TxtT2Nereye: TEdit;
    Dt2NeredenTarih: TDateTimePicker;
    Dt2NeredenSaat: TDateTimePicker;
    Dt2NereyeTarih: TDateTimePicker;
    Dt2NereyeSaat: TDateTimePicker;
    TxtT2UcusKodu: TEdit;
    Dt2inisSaati: TDateTimePicker;
    CmbTransferOtelEmail: TComboBox;
    Label55: TLabel;
    Panel2: TPanel;
    BtnBiletKaydet: TButton;
    BtnBiletGuncelle: TButton;
    BtnBiletTemizle: TButton;
    BtnBiletSil: TButton;
    Button1: TButton;
    Panel3: TPanel;
    BtnOtelKaydet: TButton;
    BtnOtelGuncelle: TButton;
    BtnOtelTemizle: TButton;
    BtnOtelSil: TButton;
    Button6: TButton;
    Panel4: TPanel;
    BtnTransferKaydet: TButton;
    BtnTransferGuncelle: TButton;
    BtnTransferTemizle: TButton;
    BtnTransferSil: TButton;
    Label32: TLabel;
    MemOtelAciklama: TMemo;
    Label56: TLabel;
    MemTransfer: TMemo;
    Panel5: TPanel;
    GrpMusteriSirket: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    BitBtn1: TBitBtn;
    CmbAdi: TComboBox;
    CmbSoyadi: TComboBox;
    CmbCepTel1: TComboBox;
    CmbAdres: TComboBox;
    ChkYeniKayit: TCheckBox;
    ImgKaydet: TImage;
    LblKaydet: TLabel;
    LblGuncelle: TLabel;
    imgGuncelle: TImage;
    LblSil: TLabel;
    imgSil: TImage;
    MemKartAciklama: TMemo;
    Label57: TLabel;
    LblKartNo: TLabel;
    ChkBiletSatis: TCheckBox;
    ChkOtelSatis: TCheckBox;
    ChkTransfer: TCheckBox;
    imgYeni: TImage;
    LblYeni: TLabel;
    Panel6: TPanel;
    CurrToplamFiyat: TAdvMoneyEdit;
    CurrOtelToplamFiyat: TAdvMoneyEdit;
    CurrTransferToplamFiyat: TAdvMoneyEdit;
    CurrNetFiyati: TAdvMoneyEdit;
    CurrKomisyon: TAdvMoneyEdit;
    CurrDigerKomisyon: TAdvMoneyEdit;
    CurrTarihDegisikligi: TAdvMoneyEdit;
    CurrGeriiade: TAdvMoneyEdit;
    CurrKullanilanKart: TAdvMoneyEdit;
    imgYazdir: TImage;
    LblYazdir: TLabel;
    Label58: TLabel;
    CmbOtelKullanilanKart: TComboBox;
    CurrOtelKullanilanKart: TAdvMoneyEdit;
    Label59: TLabel;
    CmbTransferKullanilanKart: TComboBox;
    CurrTransferKullanilanKart: TAdvMoneyEdit;
    Label60: TLabel;
    CurrOtelNetFiyat: TAdvMoneyEdit;
    Label61: TLabel;
    CurrOtelKomisyon: TAdvMoneyEdit;
    Label62: TLabel;
    CurrTransferNetFiyat: TAdvMoneyEdit;
    Label63: TLabel;
    CurrTransferKomisyon: TAdvMoneyEdit;
    Label64: TLabel;
    CmbTransferFirma: TComboBox;
    TabTur: TTabSheet;
    Label65: TLabel;
    Label66: TLabel;
    CmbTurUrunCesidi: TComboBox;
    Label67: TLabel;
    Label68: TLabel;
    CmbTurFirmasi: TComboBox;
    Label69: TLabel;
    DtBasTarih: TDateTimePicker;
    DtBasSaat: TDateTimePicker;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    CurrYetiskin: TMoneyEdit;
    CurrCocuk: TMoneyEdit;
    CurrBebek: TMoneyEdit;
    BitBtn3: TBitBtn;
    Label78: TLabel;
    AdvYolcuListesi: TAdvStringGrid;
    BitBtn2: TBitBtn;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    CurrTurToplamFiyat: TAdvMoneyEdit;
    CurrTurNetFiyat: TAdvMoneyEdit;
    CurrTurKomisyon: TAdvMoneyEdit;
    Label82: TLabel;
    CmbTurKullanilanKart: TComboBox;
    CurrTurKullanilanKart: TAdvMoneyEdit;
    Label40: TLabel;
    DtBitTarih: TDateTimePicker;
    DtBitSaat: TDateTimePicker;
    TxtTurKonaklamaSekli: TEdit;
    Label73: TLabel;
    TxtTurKonaklamaBilgisi: TEdit;
    Label83: TLabel;
    TxtUlasimBilgisi: TEdit;
    Label84: TLabel;
    Label85: TLabel;
    CmbTurOdaKategori: TComboBox;
    MemTur: TMemo;
    TxtVoucherKodu: TEdit;
    TxtBaslangicNoktasi: TEdit;
    TxtBitisNoktasi: TEdit;
    TxtRehberBilgileri: TEdit;
    ChkTur: TCheckBox;
    BtnTurGuncelle: TButton;
    BtnTurSil: TButton;
    BtnTurTemizle: TButton;
    BtnTurKaydet: TButton;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    AdvBiletYolcuListesi: TAdvStringGrid;
    Label89: TLabel;
    CurrOKalan: TAdvMoneyEdit;
    GroupBox2: TGroupBox;
    CmbT1: TComboBox;
    CurrT1: TAdvMoneyEdit;
    CmbT2: TComboBox;
    CurrT2: TAdvMoneyEdit;
    CmbT3: TComboBox;
    CurrT3: TAdvMoneyEdit;
    Label93: TLabel;
    CurrTKalan: TAdvMoneyEdit;
    Label97: TLabel;
    CurrTuKAlan: TAdvMoneyEdit;
    Label99: TLabel;
    CurrBKalan: TAdvMoneyEdit;
    ChkBOdendi: TCheckBox;
    ChkOOdendi: TCheckBox;
    ChkTOdendi: TCheckBox;
    ChkTuOdendi: TCheckBox;
    DtT1: TDateTimePicker;
    DtT2: TDateTimePicker;
    DtT3: TDateTimePicker;
    GroupBox3: TGroupBox;
    CmbTu1: TComboBox;
    CurrTu1: TAdvMoneyEdit;
    CmbTu2: TComboBox;
    CurrTu2: TAdvMoneyEdit;
    CmbTu3: TComboBox;
    CurrTu3: TAdvMoneyEdit;
    DtTu1: TDateTimePicker;
    DtTu2: TDateTimePicker;
    DtTu3: TDateTimePicker;
    GroupBox1: TGroupBox;
    CmbO1: TComboBox;
    CurrO1: TAdvMoneyEdit;
    CmbO2: TComboBox;
    CurrO2: TAdvMoneyEdit;
    CmbO3: TComboBox;
    CurrO3: TAdvMoneyEdit;
    DtO1: TDateTimePicker;
    DtO2: TDateTimePicker;
    DtO3: TDateTimePicker;
    GroupBox4: TGroupBox;
    CmbB1: TComboBox;
    CurrB1: TAdvMoneyEdit;
    CmbB2: TComboBox;
    CurrB2: TAdvMoneyEdit;
    CmbB3: TComboBox;
    CurrB3: TAdvMoneyEdit;
    DtB1: TDateTimePicker;
    DtB2: TDateTimePicker;
    DtB3: TDateTimePicker;
    Label6: TLabel;
    Button2: TButton;
    gtPDFEngine1: TgtPDFEngine;
    gtQRExportInterface1: TgtQRExportInterface;
    Button3: TButton;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Label19: TLabel;
    AdvTransferYolcuListesi: TAdvStringGrid;
    TxtTurAdi: TEdit;
    CmbEmail: TComboBox;
    Label86: TLabel;
    Image1: TImage;
    MemVoucher: TMemo;
    QRCompositeReport1: TQRCompositeReport;
    Panel7: TPanel;
    Panel8: TPanel;
    DtNereye: TDateTimePicker;
    DtSaat2: TDateTimePicker;
    TxtUcusNo2: TEdit;
    TxtPnr2: TEdit;
    DtNereden: TDateTimePicker;
    DtSaat1: TDateTimePicker;
    TxtUcusNo1: TEdit;
    TxtPnr: TEdit;
    Label18: TLabel;
    Label87: TLabel;
    DtSaat1x: TDateTimePicker;
    DtSaat2x: TDateTimePicker;
    Label14: TLabel;
    Label23: TLabel;
    Label88: TLabel;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    Button4: TButton;
    IdMessage1: TIdMessage;
    IdSMTP1: TIdSMTP;
    procedure BitBtn1Click(Sender: TObject);
    procedure CmbAdiChange(Sender: TObject);
    procedure CmbSoyadiChange(Sender: TObject);
    procedure BtnBiletKaydetClick(Sender: TObject);
    procedure BtnBiletTemizleClick(Sender: TObject);
    procedure BtnBiletGuncelleClick(Sender: TObject);
    procedure BtnBiletSilClick(Sender: TObject);
    procedure ChkNeredenClick(Sender: TObject);
    procedure ChkNereyeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnEkleClick(Sender: TObject);
    procedure BtnCikarClick(Sender: TObject);
    procedure AdvKisilerGetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure AdvKisilerCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure BtnOtelKaydetClick(Sender: TObject);
    procedure BtnOtelTemizleClick(Sender: TObject);
    procedure BtnOtelSilClick(Sender: TObject);
    procedure BtnOtelGuncelleClick(Sender: TObject);
    procedure BtnTransferKaydetClick(Sender: TObject);
    procedure BtnTransferSilClick(Sender: TObject);
    procedure BtnTransferTemizleClick(Sender: TObject);
    procedure BtnTransferGuncelleClick(Sender: TObject);
    procedure RbTekYonClick(Sender: TObject);
    procedure RbCiftYonClick(Sender: TObject);
    procedure CmbOtelAdiChange(Sender: TObject);
    procedure CmbTransferOtelAdiChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImgKaydetClick(Sender: TObject);
    procedure imgYeniClick(Sender: TObject);
    procedure imgSilClick(Sender: TObject);
    procedure imgGuncelleClick(Sender: TObject);
    procedure CurrToplamFiyatChange(Sender: TObject);
    procedure CurrNetFiyatiChange(Sender: TObject);
    procedure CurrKomisyonChange(Sender: TObject);
    procedure CurrDigerKomisyonChange(Sender: TObject);
    procedure CurrTarihDegisikligiChange(Sender: TObject);
    procedure imgYazdirClick(Sender: TObject);
    procedure CmbKullanilanKartChange(Sender: TObject);
    procedure CmbOtelKullanilanKartChange(Sender: TObject);
    procedure CmbTransferKullanilanKartChange(Sender: TObject);
    procedure BtnTurKaydetClick(Sender: TObject);
    procedure BtnTurSilClick(Sender: TObject);
    procedure BtnTurGuncelleClick(Sender: TObject);
    procedure BtnTurTemizleClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure AdvYolcuListesiCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure AdvYolcuListesiGetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure AdvBiletYolcuListesiCanEditCell(Sender: TObject; ARow,
      ACol: Integer; var CanEdit: Boolean);
    procedure AdvBiletYolcuListesiGetEditorType(Sender: TObject; ACol,
      ARow: Integer; var AEditor: TEditorType);
    procedure CurrOtelNetFiyatChange(Sender: TObject);
    procedure CurrOtelKomisyonChange(Sender: TObject);
    procedure CurrTransferNetFiyatChange(Sender: TObject);
    procedure CurrTransferKomisyonChange(Sender: TObject);
    procedure CurrTurNetFiyatChange(Sender: TObject);
    procedure CurrTurKomisyonChange(Sender: TObject);
    procedure CurrB1Change(Sender: TObject);
    procedure ChkBOdendiClick(Sender: TObject);
    procedure CurrO1Change(Sender: TObject);
    procedure CurrO2Change(Sender: TObject);
    procedure CurrO3Change(Sender: TObject);
    procedure ChkOOdendiClick(Sender: TObject);
    procedure CurrT1Change(Sender: TObject);
    procedure CurrT2Change(Sender: TObject);
    procedure CurrT3Change(Sender: TObject);
    procedure ChkTOdendiClick(Sender: TObject);
    procedure CurrTu1Change(Sender: TObject);
    procedure CurrTu2Change(Sender: TObject);
    procedure CurrTu3Change(Sender: TObject);
    procedure ChkTuOdendiClick(Sender: TObject);
    procedure CurrGeriiadeChange(Sender: TObject);
    procedure CurrB2Change(Sender: TObject);
    procedure CurrB3Change(Sender: TObject);
    procedure CurrBKalanChange(Sender: TObject);
    procedure CurrOKalanChange(Sender: TObject);
    procedure CurrTKalanChange(Sender: TObject);
    procedure CurrTuKAlanChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure AdvTransferYolcuListesiCanEditCell(Sender: TObject; ARow,
      ACol: Integer; var CanEdit: Boolean);
    procedure AdvTransferYolcuListesiGetEditorType(Sender: TObject; ACol,
      ARow: Integer; var AEditor: TEditorType);
    procedure Image1Click(Sender: TObject);
    procedure CmbO1Change(Sender: TObject);
    procedure CmbB1Change(Sender: TObject);
    procedure CmbB2Change(Sender: TObject);
    procedure CmbB3Change(Sender: TObject);
    procedure CmbO2Change(Sender: TObject);
    procedure CmbO3Change(Sender: TObject);
    procedure CmbT1Change(Sender: TObject);
    procedure CmbT2Change(Sender: TObject);
    procedure CmbT3Change(Sender: TObject);
    procedure CmbTu1Change(Sender: TObject);
    procedure CmbTu2Change(Sender: TObject);
    procedure CmbTu3Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public

  var PubKartNo:String;
  TmpBool1,TmpBool2,TmpBool3:Boolean;
  procedure Vouchericerik;
  Procedure MusteriGetir;
  Procedure MusteriGetir2;
  procedure SabitDegerGetir;
  procedure MusteriKaydet;
  Procedure TransferFirmaGetir;
  procedure CreateParams(var Params: TCreateParams); override;
  Procedure OtelTemizle;
  Procedure TransferTemizle;
  Procedure TurTemizle;
  procedure OtelGetir;
  procedure TurFirmaGetir;
  procedure ReportExport(aReport: TQuickRep; const aFileName: TFileName);
  Function KullanilanKart(TmpKullanilanKart:String):Currency;

        { Public declarations }

  end;

var
  FrmGelir: TFrmGelir;

implementation

uses UntMusteriKayit, UntGlobal, RepFatura, RepVoucher, UntProjectGlobal,
  RepTur, RepBilet, RepOtel, RepTransfer, UntDm;

{$R *.dfm}

procedure TFrmGelir.AdvBiletYolcuListesiCanEditCell(Sender: TObject; ARow,
  ACol: Integer; var CanEdit: Boolean);
begin
CanEdit := True;
end;

procedure TFrmGelir.AdvBiletYolcuListesiGetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin
if ACol = 0  then begin

AEditor := edComboList;

AdvBiletYolcuListesi.ClearComboString;

AdvBiletYolcuListesi.AddComboString('AD');
AdvBiletYolcuListesi.AddComboString('CH');
AdvBiletYolcuListesi.AddComboString('INF');
AdvBiletYolcuListesi.AddComboString('STD');
AdvBiletYolcuListesi.AddComboString('ZS');
AdvBiletYolcuListesi.AddComboString('WCHR');
end;

if ACol = 3  then begin
AEditor := edDateEdit;
end;

end;

procedure TFrmGelir.AdvKisilerCanEditCell(Sender: TObject; ARow, ACol: Integer;
  var CanEdit: Boolean);
begin
 CanEdit := True;

end;

procedure TFrmGelir.AdvKisilerGetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin
if ACol = 0  then begin

AEditor := edComboList;

AdvKisiler.ClearComboString;

AdvKisiler.AddComboString('AD');
AdvKisiler.AddComboString('CH');
AdvKisiler.AddComboString('INF');
AdvKisiler.AddComboString('STD');
AdvKisiler.AddComboString('ZS');
AdvKisiler.AddComboString('WCHR');
end;

if ACol = 3  then begin
AEditor := edDateEdit;
end;

end;

procedure TFrmGelir.AdvTransferYolcuListesiCanEditCell(Sender: TObject; ARow,
  ACol: Integer; var CanEdit: Boolean);
begin
CanEdit := True;
end;

procedure TFrmGelir.AdvTransferYolcuListesiGetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin
if ACol = 0  then begin

AEditor := edComboList;

AdvTransferYolcuListesi.ClearComboString;

AdvTransferYolcuListesi.AddComboString('AD');
AdvTransferYolcuListesi.AddComboString('CH');
AdvTransferYolcuListesi.AddComboString('INF');
AdvTransferYolcuListesi.AddComboString('STD');
AdvTransferYolcuListesi.AddComboString('ZS');
AdvTransferYolcuListesi.AddComboString('WCHR');

end;

if ACol = 3  then begin
AEditor := edDateEdit;
end;

end;

procedure TFrmGelir.AdvYolcuListesiCanEditCell(Sender: TObject; ARow,
  ACol: Integer; var CanEdit: Boolean);
begin
CanEdit := True;
end;

procedure TFrmGelir.AdvYolcuListesiGetEditorType(Sender: TObject; ACol,
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

procedure TFrmGelir.BitBtn1Click(Sender: TObject);
begin
FrmMusteriKayit:=TFrmMusteriKayit.Create(Self);

FrmMusteriKayit.BtnKaydet.Enabled   := True;
FrmMusteriKayit.BtnGuncelle.Enabled := False;
FrmMusteriKayit.BtnSil.Enabled      := False;

MusteriGetir2;
FrmMusteriKayit.ShowModal;
MusteriGetir;
FrmMusteriKayit.Free;
end;

procedure TFrmGelir.BitBtn2Click(Sender: TObject);
begin
AdvYolcuListesi.AddRow;
end;

procedure TFrmGelir.BitBtn3Click(Sender: TObject);
begin

if AdvYolcuListesi.RowCount = 2 then
AdvYolcuListesi.ClearRows(AdvYolcuListesi.Row,1)
Else begin
AdvYolcuListesi.ClearRows(AdvYolcuListesi.Row,1);
AdvYolcuListesi.RemoveRows(AdvYolcuListesi.Row,1);
end;

end;

procedure TFrmGelir.BitBtn4Click(Sender: TObject);
begin
AdvBiletYolcuListesi.AddRow;
end;

procedure TFrmGelir.BitBtn5Click(Sender: TObject);
begin

if AdvBiletYolcuListesi.RowCount = 2 then
AdvBiletYolcuListesi.ClearRows(AdvBiletYolcuListesi.Row,1)
Else begin
AdvBiletYolcuListesi.ClearRows(AdvBiletYolcuListesi.Row,1);
AdvBiletYolcuListesi.RemoveRows(AdvBiletYolcuListesi.Row,1);
end;

end;

procedure TFrmGelir.BitBtn6Click(Sender: TObject);
begin
AdvTransferYolcuListesi.AddRow;
end;

procedure TFrmGelir.BitBtn7Click(Sender: TObject);
begin
if AdvTransferYolcuListesi.RowCount = 2 then
AdvTransferYolcuListesi.ClearRows(AdvTransferYolcuListesi.Row,1)
Else begin
AdvTransferYolcuListesi.ClearRows(AdvTransferYolcuListesi.Row,1);
AdvTransferYolcuListesi.RemoveRows(AdvTransferYolcuListesi.Row,1);
end;

end;

procedure TFrmGelir.BtnCikarClick(Sender: TObject);
begin

if AdvKisiler.RowCount = 2 then
AdvKisiler.ClearRows(AdvKisiler.Row,1)
Else begin
AdvKisiler.ClearRows(AdvKisiler.Row,1);
AdvKisiler.RemoveRows(AdvKisiler.Row,1);
end;

end;

procedure TFrmGelir.BtnEkleClick(Sender: TObject);
begin
AdvKisiler.AddRow;
end;

procedure TFrmGelir.BtnOtelGuncelleClick(Sender: TObject);
var TmpSql,TmpOtelSatisid:string;
i:integer;
begin

if CmbOtelAdi.Tag=0 then begin
MsgUyari('Güncelleme Ýþlemi Ýptal Edildi !!! ...');
exit;
end;

if CmbAdi.Text='' then begin
MsgUyari('Lütfen Müþteri/Þirket Adýný Giriniz ...');
exit;
end;

if CmbSoyadi.Text='' then begin
MsgUyari('Lütfen Müþteri/Þirket Soyadýný Giriniz ...');
exit;
end;


if CmbOtelAdi.Text='' then begin
MsgUyari('Lütfen Otel Adýný Seçiniz ...');
exit;
end;


TmpSql := 'Update otelsatis Set ' +
'KayitTarihi=:KayitTarihi,'+
'OtelAdi=:OtelAdi,'+
'OtelAdres=:OtelAdres,'+
'OtelTelefon=:OtelTelefon,'+
'OtelEmail=:OtelEmail,'+
'ilgili=:ilgili,'+
'Aciklama=:Aciklama,'+
'GirisTarihi=:GirisTarihi,'+
'CikisTarihi=:CikisTarihi,'+
'OdaSayisi=:OdaSayisi,'+
'KonaklamaSekli=:KonaklamaSekli,'+
'OdaKategorisi=:OdaKategorisi,'+
'ToplamFiyat=:ToplamFiyat,'+
'MusteriAdi=:MusteriAdi,'+
'MusteriSoyadi=:MusteriSoyadi,'+
'MusteriTel=:MusteriTel,'+
'MusteriAdres=:MusteriAdres, '+
'KullanilanKart=:KullanilanKart, '+
'NetFiyat=:NetFiyat, '+
'Komisyon=:Komisyon, '+
'OdemeTarihi1=:OdemeTarihi1, '+
'OdemeTarihi2=:OdemeTarihi2, '+
'OdemeTarihi3=:OdemeTarihi3, '+
'OdemeSekli1=:OdemeSekli1, '+
'OdemeSekli2=:OdemeSekli2, '+
'OdemeSekli3=:OdemeSekli3, '+
'OdemeTutari1=:OdemeTutari1, '+
'OdemeTutari2=:OdemeTutari2, '+
'OdemeTutari3=:OdemeTutari3, '+
'KalanMiktar=:KalanMiktar, '+
'Odeme=:Odeme,'+
'Guncelleyen=:Guncelleyen'+

' where id=:id ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('KayitTarihi').Value := IntToStr(YearOf(Date))+'-'+
                                                    IntToStr(MonthOf(Date))+'-'+
                                                    IntToStr(DayOf(Date));
Qry1.Parameters.ParamByName('OtelAdi').Value         := CmbOtelAdi.Text;
Qry1.Parameters.ParamByName('OtelAdres').Value       := CmbOtelAdres.Text;
Qry1.Parameters.ParamByName('OtelTelefon').Value     := CmbOtelTelefon.Text;
Qry1.Parameters.ParamByName('OtelEmail').Value       := CmbOtelEmail.Text;
Qry1.Parameters.ParamByName('ilgili').Value          := Trim(Txtilgili.Text);
Qry1.Parameters.ParamByName('Aciklama').Value        := Trim(MemOtelAciklama.Text);


Qry1.Parameters.ParamByName('GirisTarihi').Value := IntToStr(YearOf(DtGirisTarihi.Date))+'-'+
                                                    IntToStr(MonthOf(DtGirisTarihi.Date))+'-'+
                                                    IntToStr(DayOf(DtGirisTarihi.Date));

Qry1.Parameters.ParamByName('CikisTarihi').Value := IntToStr(YearOf(DtCikisTarihi.Date))+'-'+
                                                    IntToStr(MonthOf(DtCikisTarihi.Date))+'-'+
                                                    IntToStr(DayOf(DtCikisTarihi.Date));

Qry1.Parameters.ParamByName('OdaSayisi').Value      := CurrOdaSayisi.Value ;
Qry1.Parameters.ParamByName('KonaklamaSekli').Value := Trim(TxtKonaklamaSekli.Text);
Qry1.Parameters.ParamByName('OdaKategorisi').Value  := CmbOdaKategori.Text;
Qry1.Parameters.ParamByName('ToplamFiyat').Value    := CurrOtelToplamFiyat.Value ;
Qry1.Parameters.ParamByName('MusteriAdi').Value     := CmbAdi.Text ;
Qry1.Parameters.ParamByName('MusteriSoyadi').Value  := CmbSoyadi.Text ;
Qry1.Parameters.ParamByName('MusteriTel').Value     := CmbCepTel1.Text ;
Qry1.Parameters.ParamByName('MusteriAdres').Value   := CmbAdres.Text   ;
Qry1.Parameters.ParamByName('KullanilanKart').Value := CmbOtelKullanilanKart.Text ;
Qry1.Parameters.ParamByName('NetFiyat').Value := CurrOtelNetFiyat.Value ;
Qry1.Parameters.ParamByName('Komisyon').Value := CurrOtelKomisyon.Value ;

/////////////////////////////////  ÖDEME ///////////////////////////////////////

Qry1.Parameters.ParamByName('OdemeTarihi1').Value  :=
IntToStr(YearOf(DtO1.Date))+'-'+IntToStr(MonthOf(DtO1.Date))+'-'+IntToStr(DayOf(DtO1.Date));
Qry1.Parameters.ParamByName('OdemeTarihi2').Value  :=
IntToStr(YearOf(DtO2.Date))+'-'+IntToStr(MonthOf(DtO2.Date))+'-'+IntToStr(DayOf(DtO2.Date));
Qry1.Parameters.ParamByName('OdemeTarihi3').Value  :=
IntToStr(YearOf(DtO3.Date))+'-'+IntToStr(MonthOf(DtO3.Date))+'-'+IntToStr(DayOf(DtO3.Date));

Qry1.Parameters.ParamByName('OdemeSekli1').Value := CmbO1.Text ;
Qry1.Parameters.ParamByName('OdemeSekli2').Value := CmbO2.Text ;
Qry1.Parameters.ParamByName('OdemeSekli3').Value := CmbO3.Text ;

Qry1.Parameters.ParamByName('OdemeTutari1').Value := CurrO1.Value ;
Qry1.Parameters.ParamByName('OdemeTutari2').Value := CurrO2.Value ;
Qry1.Parameters.ParamByName('OdemeTutari3').Value := CurrO3.Value ;

Qry1.Parameters.ParamByName('KalanMiktar').Value  := CurrOKalan.Value ;


if ChkOOdendi.Checked = True Then
Qry1.Parameters.ParamByName('Odeme').Value    := 'Ödendi'
Else
Qry1.Parameters.ParamByName('Odeme').Value    := 'Ödenmedi'  ;

////////////////////////////////////////////////////////////////////////////////
Qry1.Parameters.ParamByName('Guncelleyen').Value := Kullanici ;


Qry1.Parameters.ParamByName('id').Value   := CmbOtelAdi.Tag ;

Qry1.Prepared;
Qry1.ExecSQL;

/////////////////////////////////////////////////////////////////////////////////

TmpSql := 'Delete from konaklayacakkisiler where otelsatisid=:otelsatisid';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('otelsatisid').Value   := CmbOtelAdi.Tag ;
Qry1.Prepared ;
Qry1.ExecSQL;

for i:=1  to AdvKisiler.RowCount-1 do begin

if (Trim(AdvKisiler.Cells[1,i])='') then Continue;

TmpSql := 'insert into konaklayacakkisiler ' +
' (Turu,Adi,Soyadi,OtelSatisid,DogumTarihi,OdaNo) '+
' Values' +
' (:Turu,:Adi,:Soyadi,:OtelSatisid,:DogumTarihi,:OdaNo) ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Turu').Value        := AdvKisiler.Cells[0,i] ;
Qry1.Parameters.ParamByName('Adi').Value         := AdvKisiler.Cells[1,i];
Qry1.Parameters.ParamByName('Soyadi').Value      := AdvKisiler.Cells[2,i];
Qry1.Parameters.ParamByName('OtelSatisid').Value := CmbOtelAdi.Tag ;

if AdvKisiler.Cells[3,i]='' then  AdvKisiler.Cells[3,i] := DateToStr(date);

Qry1.Parameters.ParamByName('DogumTarihi').Value:=
IntToStr(YearOf(StrToDate(AdvKisiler.Cells[3,i])))+'-'+
IntToStr(MonthOf(StrToDate(AdvKisiler.Cells[3,i])))+'-'+
IntToStr(DayOf(StrToDate(AdvKisiler.Cells[3,i])));

Qry1.Parameters.ParamByName('OdaNo').Value      := AdvKisiler.Cells[4,i];

Qry1.Prepared;
Qry1.ExecSQL;

end;


/////////////////////////////////////////////////////////////////////////////////

{
////////////////////////////////////////////////////////////////////////////////

TmpSql:= 'Update gelirgider  Set Borc=:Borc , KullanilanKart=:KullanilanKart, Aciklama=:Aciklama where idNo=:idNo ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Borc').Value           := CurrOtelToplamFiyat.Value ;
Qry1.Parameters.ParamByName('KullanilanKart').Value := CmbOtelKullanilanKart.Text ;
Qry1.Parameters.ParamByName('Aciklama').Value       := Trim(MemOtelAciklama.Text);

Qry1.Parameters.ParamByName('idNo').Value      := CmbOtelAdi.Tag ;
Qry1.Prepared;
Qry1.ExecSQL;

////////////////////////////////////////////////////////////////////////////////
}

MsgUyari('Güncellendi  ...');

close;



end;


procedure TFrmGelir.BtnOtelKaydetClick(Sender: TObject);
var TmpSql,TmpOtelSatisid:string;
i:integer;
begin
if CmbAdi.Text='' then begin
MsgUyari('Lütfen Müþteri/Þirket Adýný Giriniz ...');
exit;
end;

if CmbSoyadi.Text='' then begin
MsgUyari('Lütfen Müþteri/Þirket Soyadýný Giriniz ...');
exit;
end;


if CmbOtelAdi.Text='' then begin
MsgUyari('Lütfen Otel Adýný Seçiniz ...');
exit;
end;


TmpSql := 'insert into otelsatis ' +
'(KartNo,KayitTarihi,OtelAdi,OtelAdres,OtelTelefon,OtelEmail,ilgili,Aciklama,GirisTarihi,CikisTarihi,OdaSayisi,'+
'KonaklamaSekli,OdaKategorisi,ToplamFiyat,MusteriAdi,MusteriSoyadi,MusteriTel,MusteriAdres,KullanilanKart,NetFiyat,Komisyon, '+
'OdemeTarihi1,OdemeTarihi2,OdemeTarihi3,OdemeSekli1,OdemeSekli2,OdemeSekli3,OdemeTutari1,OdemeTutari2,OdemeTutari3,KalanMiktar,Odeme,Kaydeden)'+
' Values' +
'(:KartNo,:KayitTarihi,:OtelAdi,:OtelAdres,:OtelTelefon,:OtelEmail,:ilgili,:Aciklama,:GirisTarihi,:CikisTarihi,:OdaSayisi,'+
':KonaklamaSekli,:OdaKategorisi,:ToplamFiyat,:MusteriAdi,:MusteriSoyadi,:MusteriTel,:MusteriAdres,:KullanilanKart,:NetFiyat,:Komisyon, ' +
':OdemeTarihi1,:OdemeTarihi2,:OdemeTarihi3,:OdemeSekli1,:OdemeSekli2,:OdemeSekli3,:OdemeTutari1,:OdemeTutari2,:OdemeTutari3,:KalanMiktar,:Odeme,:Kaydeden)';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('KartNo').Value         := PubKartNo ;

Qry1.Parameters.ParamByName('KayitTarihi').Value := IntToStr(YearOf(Date))+'-'+
                                                    IntToStr(MonthOf(Date))+'-'+
                                                    IntToStr(DayOf(Date));

Qry1.Parameters.ParamByName('OtelAdi').Value         := CmbOtelAdi.Text;
Qry1.Parameters.ParamByName('OtelAdres').Value       := CmbOtelAdres.Text;
Qry1.Parameters.ParamByName('OtelTelefon').Value     := CmbOtelTelefon.Text;
Qry1.Parameters.ParamByName('OtelEmail').Value       := CmbOtelEmail.Text;
Qry1.Parameters.ParamByName('ilgili').Value          := Trim(Txtilgili.Text);
Qry1.Parameters.ParamByName('Aciklama').Value        := Trim(MemOtelAciklama.Text);


Qry1.Parameters.ParamByName('GirisTarihi').Value := IntToStr(YearOf(DtGirisTarihi.Date))+'-'+
                                                    IntToStr(MonthOf(DtGirisTarihi.Date))+'-'+
                                                    IntToStr(DayOf(DtGirisTarihi.Date));

Qry1.Parameters.ParamByName('CikisTarihi').Value := IntToStr(YearOf(DtCikisTarihi.Date))+'-'+
                                                    IntToStr(MonthOf(DtCikisTarihi.Date))+'-'+
                                                    IntToStr(DayOf(DtCikisTarihi.Date));

Qry1.Parameters.ParamByName('OdaSayisi').Value      := CurrOdaSayisi.Value ;
Qry1.Parameters.ParamByName('KonaklamaSekli').Value := Trim(TxtKonaklamaSekli.Text);
Qry1.Parameters.ParamByName('OdaKategorisi').Value  := CmbOdaKategori.Text;
Qry1.Parameters.ParamByName('ToplamFiyat').Value    := CurrOtelToplamFiyat.Value ;
Qry1.Parameters.ParamByName('MusteriAdi').Value     := CmbAdi.Text ;
Qry1.Parameters.ParamByName('MusteriSoyadi').Value  := CmbSoyadi.Text ;
Qry1.Parameters.ParamByName('MusteriTel').Value     := CmbCepTel1.Text ;
Qry1.Parameters.ParamByName('MusteriAdres').Value   := CmbAdres.Text ;
Qry1.Parameters.ParamByName('KullanilanKart').Value := CmbOtelKullanilanKart.Text ;
Qry1.Parameters.ParamByName('NetFiyat').Value       := CurrOtelNetFiyat.Value ;
Qry1.Parameters.ParamByName('Komisyon').Value       := CurrOtelKomisyon.Value ;

/////////////////////////////////  ÖDEME ///////////////////////////////////////

Qry1.Parameters.ParamByName('OdemeTarihi1').Value  :=
IntToStr(YearOf(DtO1.Date))+'-'+IntToStr(MonthOf(DtO1.Date))+'-'+IntToStr(DayOf(DtO1.Date));
Qry1.Parameters.ParamByName('OdemeTarihi2').Value  :=
IntToStr(YearOf(DtO2.Date))+'-'+IntToStr(MonthOf(DtO2.Date))+'-'+IntToStr(DayOf(DtO2.Date));
Qry1.Parameters.ParamByName('OdemeTarihi3').Value  :=
IntToStr(YearOf(DtO3.Date))+'-'+IntToStr(MonthOf(DtO3.Date))+'-'+IntToStr(DayOf(DtO3.Date));

Qry1.Parameters.ParamByName('OdemeSekli1').Value := CmbO1.Text ;
Qry1.Parameters.ParamByName('OdemeSekli2').Value := CmbO2.Text ;
Qry1.Parameters.ParamByName('OdemeSekli3').Value := CmbO3.Text ;

Qry1.Parameters.ParamByName('OdemeTutari1').Value := CurrO1.Value ;
Qry1.Parameters.ParamByName('OdemeTutari2').Value := CurrO2.Value ;
Qry1.Parameters.ParamByName('OdemeTutari3').Value := CurrO3.Value ;

Qry1.Parameters.ParamByName('KalanMiktar').Value  := CurrOKalan.Value ;


if ChkOOdendi.Checked = True Then
Qry1.Parameters.ParamByName('Odeme').Value    := 'Ödendi'
Else
Qry1.Parameters.ParamByName('Odeme').Value    := 'Ödenmedi'  ;

Qry1.Parameters.ParamByName('Kaydeden').Value := Kullanici ;

////////////////////////////////////////////////////////////////////////////////


Qry1.Prepared;
Qry1.ExecSQL;



////////////////////////
TmpSql := 'Select Max(id) as d from otelsatis';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Open;
TmpOtelSatisid := Qry1.FieldByName('d').AsString ;
CmbOtelAdi.Tag := Qry1.FieldByName('d').AsInteger ;
////////////////////////

for i:=1  to AdvKisiler.RowCount-1 do begin

if (Trim(AdvKisiler.Cells[1,i])='') then Continue;

TmpSql := 'insert into konaklayacakkisiler ' +
' (Turu,Adi,Soyadi,OtelSatisid,DogumTarihi,OdaNo) '+
' Values' +
' (:Turu,:Adi,:Soyadi,:OtelSatisid,:DogumTarihi,:OdaNo) ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Turu').Value        := AdvKisiler.Cells[0,i] ;
Qry1.Parameters.ParamByName('Adi').Value         := AdvKisiler.Cells[1,i];
Qry1.Parameters.ParamByName('Soyadi').Value      := AdvKisiler.Cells[2,i];
Qry1.Parameters.ParamByName('OtelSatisid').Value := TmpOtelSatisid ;

if AdvKisiler.Cells[3,i]='' then  AdvKisiler.Cells[3,i] := DateToStr(date);

Qry1.Parameters.ParamByName('DogumTarihi').Value:=
IntToStr(YearOf(StrToDate(AdvKisiler.Cells[3,i])))+'-'+
IntToStr(MonthOf(StrToDate(AdvKisiler.Cells[3,i])))+'-'+
IntToStr(DayOf(StrToDate(AdvKisiler.Cells[3,i])));

Qry1.Parameters.ParamByName('OdaNo').Value      := AdvKisiler.Cells[4,i];

Qry1.Prepared;
Qry1.ExecSQL;
end;


{
////////////////////////////////////////////////////////////////////////////////

TmpSql:= 'insert into gelirgider (Adi,Soyadi,TelNo,Tarih,islemTuru,Borc,Alacak,ParaBirimi,idNo,Aciklama,KullanilanKart) '+
'Values(:Adi,:Soyadi,:TelNo,:Tarih,:islemTuru,:Borc,:Alacak,:ParaBirimi,:idNo,:Aciklama,:KullanilanKart)' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('Adi').Value      := CmbAdi.Text ;
Qry1.Parameters.ParamByName('Soyadi').Value   := CmbSoyadi.Text ;
Qry1.Parameters.ParamByName('TelNo').Value    := CmbCepTel1.Text ;

Qry1.Parameters.ParamByName('Tarih').Value    := IntToStr(YearOf(Date))+'-'+
                                                 IntToStr(MonthOf(Date))+'-'+
                                                 IntToStr(DayOf(Date));

Qry1.Parameters.ParamByName('islemTuru').Value := 'Otel Satýþ' ;
Qry1.Parameters.ParamByName('Borc').Value      := CurrOtelToplamFiyat.Value ;
Qry1.Parameters.ParamByName('Alacak').Value    := '0' ;

Qry1.Parameters.ParamByName('ParaBirimi').Value:= 'TL' ;
Qry1.Parameters.ParamByName('idNo').Value      := TmpOtelSatisid ;
Qry1.Parameters.ParamByName('Aciklama').Value  :=  Trim(MemOtelAciklama.Text);


Qry1.Parameters.ParamByName('KullanilanKart').Value := CmbOtelKullanilanKart.Text ;

Qry1.Prepared;
Qry1.ExecSQL;

////////////////////////////////////////////////////////////////////////////////
}


MsgUyari('Kaydedildi  ...');

BtnOtelKaydet.Enabled   := False;
BtnOtelGuncelle.Enabled := True;
BtnOtelSil.Enabled      := True;
BtnOtelTemizle.Enabled  := False;


end;

procedure TFrmGelir.BtnOtelSilClick(Sender: TObject);
var TmpSql:String;
begin
if MsgOnay('Kaydý Silmek Ýstiyormusunuz ?') = False Then exit;

TmpSql := 'Delete from konaklayacakkisiler where otelsatisid=:otelsatisid';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('otelsatisid').Value   := CmbOtelAdi.Tag ;
Qry1.Prepared ;
Qry1.ExecSQL;

TmpSql := 'Delete from otelsatis where id=:id';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('id').Value   := CmbOtelAdi.Tag ;
Qry1.Prepared ;
Qry1.ExecSQL;
//showmessage(inttostr(cmboteladi.tag));
{
TmpSql := 'Delete from gelirgider where idno=:idno';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('idno').Value   := CmbOtelAdi.Tag ;
Qry1.Prepared ;
Qry1.ExecSQL;
}

MsgUyari('Kayýt Silindi ...');
OtelTemizle;


end;

procedure TFrmGelir.BtnOtelTemizleClick(Sender: TObject);
begin
OtelTemizle;
end;

procedure TFrmGelir.BtnTransferGuncelleClick(Sender: TObject);
var TmpSql,TmpOtelSatisid:string;
i:integer;
begin
if TxtTransferAdi.Tag=0 then begin
MsgUyari('Güncelleme Ýþlemi Ýptal Edildi !!! ...');
exit;
end;


if TxtTransferAdi.Text='' then begin
MsgUyari('Lütfen Müþteri/Þirket Adýný Giriniz ...');
exit;
end;

if  TxtTransferSoyadi.Text='' then begin
MsgUyari('Lütfen Müþteri/Þirket Soyadýný Giriniz ...');
exit;
end;


TmpSql := 'Update transfer Set ' +
'KayitTarihi=:KayitTarihi,'+
'Adi=:Adi,'+
'Soyadi=:Soyadi,'+
'CepNo=:CepNo,'+
'OtelAdi=:OtelAdi,'+
'OtelTelefon=:OtelTelefon,'+
'OtelAdres=:OtelAdres,'+
'OtelEmail=:OtelEmail,'+
'KisiSayisi=:KisiSayisi,'+
'Arac=:Arac,'+
'ToplamFiyat=:ToplamFiyat,'+
'TransferTuru=:TransferTuru,'+
'BirNereden=:BirNereden,'+
'BirNereye=:BirNereye,'+
'BirUcusKodu=:BirUcusKodu,'+
'ikiNereden=:ikiNereden,'+
'ikiNereye=:ikiNereye,'+
'ikiUcusKodu=:ikiUcusKodu,'+
'birNeredenTarih=:birNeredenTarih,'+
'BirNeredenSaat=:BirNeredenSaat,'+
'BirinisSaati=:BirinisSaati,'+
'ikiinisSaati=:ikiinisSaati,'+
'ikiNeredenTarih=:ikiNeredenTarih,'+
'ikiNeredenSaat=:ikiNeredenSaat,'+
'birNereyeTarih=:birNereyeTarih,'+
'BirNereyeSaat=:BirNereyeSaat,'+
'ikiNereyeTarih=:ikiNereyeTarih,'+
'ikiNereyeSaat=:ikiNereyeSaat,'+
'MusteriAdi=:MusteriAdi,'+
'MusteriSoyadi=:MusteriSoyadi,'+
'MusteriTel=:MusteriTel,'+
'MusteriAdres=:MusteriAdres, '+
'Aciklama=:Aciklama, '+
'KullanilanKart=:KullanilanKart, '+
'NetFiyat=:NetFiyat, '+
'Komisyon=:Komisyon, '+
'TransferFirmasi=:TransferFirmasi, '+
'OdemeTarihi1=:OdemeTarihi1, '+
'OdemeTarihi2=:OdemeTarihi2, '+
'OdemeTarihi3=:OdemeTarihi3, '+
'OdemeSekli1=:OdemeSekli1, '+
'OdemeSekli2=:OdemeSekli2, '+
'OdemeSekli3=:OdemeSekli3, '+
'OdemeTutari1=:OdemeTutari1, '+
'OdemeTutari2=:OdemeTutari2, '+
'OdemeTutari3=:OdemeTutari3, '+
'KalanMiktar=:KalanMiktar, '+
'Odeme=:Odeme,'+
'Guncelleyen=:Guncelleyen '+


' where id=:id  ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('KayitTarihi').Value:= IntToStr(YearOf(Date))+'-'+
                                                   IntToStr(MonthOf(Date))+'-'+
                                                   IntToStr(DayOf(Date));

Qry1.Parameters.ParamByName('Adi').Value          := Trim(TxtTransferAdi.Text);
Qry1.Parameters.ParamByName('Soyadi').Value       := Trim(TxtTransferSoyadi.Text);
Qry1.Parameters.ParamByName('CepNo').Value        := Trim(TxtTransferCepNo.Text);

Qry1.Parameters.ParamByName('OtelAdi').Value      := CmbTransferOtelAdi.Text;
Qry1.Parameters.ParamByName('OtelTelefon').Value  := CmbTransferOtelTel.Text;
Qry1.Parameters.ParamByName('OtelAdres').Value    := CmbTransferOtelAdres.Text;
Qry1.Parameters.ParamByName('OtelEmail').Value    := CmbTransferOtelEmail.Text;

Qry1.Parameters.ParamByName('KisiSayisi').Value   := CurrKisiSayi.Value ;
Qry1.Parameters.ParamByName('Arac').Value         := CmbArac.Text ;
Qry1.Parameters.ParamByName('ToplamFiyat').Value  := CurrTransferToplamFiyat.Value ;

if RbTekYon.Checked = True then
Qry1.Parameters.ParamByName('TransferTuru').Value := 'Tek Yön';

if RbCiftYon.Checked = True then
Qry1.Parameters.ParamByName('TransferTuru').Value := 'Çift Yön';

Qry1.Parameters.ParamByName('BirNereden').Value   := Trim(TxtT1Nereden.Text);
Qry1.Parameters.ParamByName('BirNereye').Value    := Trim(TxtT1Nereye.Text);
Qry1.Parameters.ParamByName('BirUcusKodu').Value  := Trim(TxtT1UcusKodu.Text);
Qry1.Parameters.ParamByName('ikiNereden').Value   := Trim(TxtT2Nereden.Text);
Qry1.Parameters.ParamByName('ikiNereye').Value    := Trim(TxtT2Nereye.Text);
Qry1.Parameters.ParamByName('ikiUcusKodu').Value  := Trim(TxtT2UcusKodu.Text);

Qry1.Parameters.ParamByName('birNeredenTarih').Value:= IntToStr(YearOf(Dt1NeredenTarih.Date))+'-'+
                                                       IntToStr(MonthOf(Dt1NeredenTarih.Date))+'-'+
                                                       IntToStr(DayOf(Dt1NeredenTarih.Date));

Qry1.Parameters.ParamByName('BirNeredenSaat').Value := IntToStr(HourOf(Dt1NeredenSaat.Time))+':'+
                                                       IntToStr(MinuteOf(Dt1NeredenSaat.Time))+':'+
                                                       IntToStr(SecondOf(Dt1NeredenSaat.Time));

Qry1.Parameters.ParamByName('BirinisSaati').Value   := IntToStr(HourOf(Dt1inisSaati.Time))+':'+
                                                       IntToStr(MinuteOf(Dt1inisSaati.Time))+':'+
                                                       IntToStr(SecondOf(Dt1inisSaati.Time));

Qry1.Parameters.ParamByName('ikiinisSaati').Value   := IntToStr(HourOf(Dt2inisSaati.Time))+':'+
                                                       IntToStr(MinuteOf(Dt2inisSaati.Time))+':'+
                                                       IntToStr(SecondOf(Dt2inisSaati.Time));

Qry1.Parameters.ParamByName('ikiNeredenTarih').Value:= IntToStr(YearOf(Dt2NeredenTarih.Date))+'-'+
                                                       IntToStr(MonthOf(Dt2NeredenTarih.Date))+'-'+
                                                       IntToStr(DayOf(Dt2NeredenTarih.Date));

Qry1.Parameters.ParamByName('ikiNeredenSaat').Value := IntToStr(HourOf(Dt2NeredenSaat.Time))+':'+
                                                       IntToStr(MinuteOf(Dt2NeredenSaat.Time))+':'+
                                                       IntToStr(SecondOf(Dt2NeredenSaat.Time));

Qry1.Parameters.ParamByName('birNereyeTarih').Value := IntToStr(YearOf(Dt1NereyeTarih.Date))+'-'+
                                                       IntToStr(MonthOf(Dt1NereyeTarih.Date))+'-'+
                                                       IntToStr(DayOf(Dt1NereyeTarih.Date));

Qry1.Parameters.ParamByName('BirNereyeSaat').Value  := IntToStr(HourOf(Dt1NereyeSaat.Time))+':'+
                                                       IntToStr(MinuteOf(Dt1NereyeSaat.Time))+':'+
                                                       IntToStr(SecondOf(Dt1NereyeSaat.Time));

Qry1.Parameters.ParamByName('ikiNereyeTarih').Value := IntToStr(YearOf(Dt2NereyeTarih.Date))+'-'+
                                                       IntToStr(MonthOf(Dt2NereyeTarih.Date))+'-'+
                                                       IntToStr(DayOf(Dt2NereyeTarih.Date));

Qry1.Parameters.ParamByName('ikiNereyeSaat').Value  := IntToStr(HourOf(Dt2NereyeSaat.Time))+':'+
                                                       IntToStr(MinuteOf(Dt2NereyeSaat.Time))+':'+
                                                       IntToStr(SecondOf(Dt2NereyeSaat.Time));

Qry1.Parameters.ParamByName('MusteriAdi').Value     := CmbAdi.Text ;
Qry1.Parameters.ParamByName('MusteriSoyadi').Value  := CmbSoyadi.Text ;
Qry1.Parameters.ParamByName('MusteriTel').Value     := CmbCepTel1.Text ;
Qry1.Parameters.ParamByName('MusteriAdres').Value   := CmbAdres.Text ;
Qry1.Parameters.ParamByName('Aciklama').Value       := MemTransfer.Text ;
Qry1.Parameters.ParamByName('KullanilanKart').Value := CmbTransferKullanilanKart.Text ;
Qry1.Parameters.ParamByName('NetFiyat').Value := CurrTransferNetFiyat.Value ;
Qry1.Parameters.ParamByName('Komisyon').Value := CurrTransferKomisyon.Value ;
Qry1.Parameters.ParamByName('TransferFirmasi').Value  := CmbTransferFirma.Text ;

/////////////////////////////////  ÖDEME ///////////////////////////////////////

Qry1.Parameters.ParamByName('OdemeTarihi1').Value  :=
IntToStr(YearOf(DtT1.Date))+'-'+IntToStr(MonthOf(DtT1.Date))+'-'+IntToStr(DayOf(DtT1.Date));
Qry1.Parameters.ParamByName('OdemeTarihi2').Value  :=
IntToStr(YearOf(DtT2.Date))+'-'+IntToStr(MonthOf(DtT2.Date))+'-'+IntToStr(DayOf(DtT2.Date));
Qry1.Parameters.ParamByName('OdemeTarihi3').Value  :=
IntToStr(YearOf(DtT3.Date))+'-'+IntToStr(MonthOf(DtT3.Date))+'-'+IntToStr(DayOf(DtT3.Date));

Qry1.Parameters.ParamByName('OdemeSekli1').Value := CmbT1.Text ;
Qry1.Parameters.ParamByName('OdemeSekli2').Value := CmbT2.Text ;
Qry1.Parameters.ParamByName('OdemeSekli3').Value := CmbT3.Text ;

Qry1.Parameters.ParamByName('OdemeTutari1').Value := CurrT1.Value ;
Qry1.Parameters.ParamByName('OdemeTutari2').Value := CurrT2.Value ;
Qry1.Parameters.ParamByName('OdemeTutari3').Value := CurrT3.Value ;

Qry1.Parameters.ParamByName('KalanMiktar').Value  := CurrTKalan.Value ;


if ChkTOdendi.Checked = True Then
Qry1.Parameters.ParamByName('Odeme').Value    := 'Ödendi'
Else
Qry1.Parameters.ParamByName('Odeme').Value    := 'Ödenmedi'  ;

Qry1.Parameters.ParamByName('Guncelleyen').Value := Kullanici ;
////////////////////////////////////////////////////////////////////////////////

Qry1.Parameters.ParamByName('id').Value   := TxtTransferAdi.Tag ;

Qry1.Prepared;
Qry1.ExecSQL;

////////////////////////////////////////////////////////////////////////////////
TmpSql := 'Delete from TransferYolcuListesi where Transferid=:Transferid';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Transferid').Value   := TxtTransferAdi.Tag ;
Qry1.Prepared ;
Qry1.ExecSQL;


for i:=1  to AdvTransferYolcuListesi.RowCount-1 do begin

if (Trim(AdvTransferYolcuListesi.Cells[1,i])='') then Continue;

TmpSql := 'insert into TransferYolcuListesi ' +
' (Turu,Adi,Soyadi,Transferid,DogumTarihi) '+
' Values' +
' (:Turu,:Adi,:Soyadi,:Transferid,:DogumTarihi) ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Turu').Value    := AdvTransferYolcuListesi.Cells[0,i] ;
Qry1.Parameters.ParamByName('Adi').Value     := AdvTransferYolcuListesi.Cells[1,i];
Qry1.Parameters.ParamByName('Soyadi').Value  := AdvTransferYolcuListesi.Cells[2,i];
Qry1.Parameters.ParamByName('Transferid').Value := TxtTransferAdi.Tag ;

if AdvTransferYolcuListesi.Cells[3,i]='' then  AdvTransferYolcuListesi.Cells[3,i] := DateToStr(date);
Qry1.Parameters.ParamByName('DogumTarihi').Value:=
IntToStr(YearOf(StrToDate(AdvTransferYolcuListesi.Cells[3,i])))+'-'+
IntToStr(MonthOf(StrToDate(AdvTransferYolcuListesi.Cells[3,i])))+'-'+
IntToStr(DayOf(StrToDate(AdvTransferYolcuListesi.Cells[3,i])));

Qry1.Prepared;
Qry1.ExecSQL;
end;
////////////////////////////////////////////////////////////////////////////////

{
////////////////////////////////////////////////////////////////////////////////

TmpSql:= 'Update gelirgider Set Borc=:Borc , KullanilanKart=:KullanilanKart, Aciklama=:Aciklama where idNo=:idNo ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Borc').Value  := CurrTransferToplamFiyat.Value ;
Qry1.Parameters.ParamByName('KullanilanKart').Value := CmbTransferKullanilanKart.Text ;
Qry1.Parameters.ParamByName('Aciklama').Value       := Trim(MemTransfer.Text) ;
Qry1.Parameters.ParamByName('idNo').Value  := TxtTransferAdi.Tag ;
Qry1.Prepared;
Qry1.ExecSQL;

////////////////////////////////////////////////////////////////////////////////
 }

MsgUyari('Güncellendi  ...');

close;

end;

procedure TFrmGelir.BtnTransferKaydetClick(Sender: TObject);
var TmpSql,TmpTransferid:string;
i:integer;
begin

if Trim(TxtTransferAdi.Text)='' then begin
MsgUyari('Lütfen Müþteri/Þirket Adýný Giriniz ...');
exit;
end;

if  Trim(TxtTransferSoyadi.Text)='' then begin
MsgUyari('Lütfen Müþteri/Þirket Soyadýný Giriniz ...');
exit;
end;


TmpSql := 'insert into transfer ' +
'(KartNo,KayitTarihi,Adi,Soyadi,CepNo,OtelAdi,OtelTelefon,OtelAdres,OtelEmail,KisiSayisi,Arac,ToplamFiyat,TransferTuru,BirNereden,BirNereye,'+
'BirUcusKodu,ikiNereden,ikiNereye,ikiUcusKodu,birNeredenTarih,BirNeredenSaat,BirinisSaati,ikiinisSaati,ikiNeredenTarih,ikiNeredenSaat,birNereyeTarih,'+
'BirNereyeSaat,ikiNereyeTarih,ikiNereyeSaat,MusteriAdi,MusteriSoyadi,MusteriTel,MusteriAdres,Aciklama,KullanilanKart,NetFiyat,Komisyon,TransferFirmasi, '+
'OdemeTarihi1,OdemeTarihi2,OdemeTarihi3,OdemeSekli1,OdemeSekli2,OdemeSekli3,OdemeTutari1,OdemeTutari2,OdemeTutari3,KalanMiktar,Odeme,Kaydeden)'+
' Values' +
'(:KartNo,:KayitTarihi,:Adi,:Soyadi,:CepNo,:OtelAdi,:OtelTelefon,:OtelAdres,:OtelEmail,:KisiSayisi,:Arac,:ToplamFiyat,:TransferTuru,:BirNereden,:BirNereye,'+
':BirUcusKodu,:ikiNereden,:ikiNereye,:ikiUcusKodu,:birNeredenTarih,:BirNeredenSaat,:BirinisSaati,:ikiinisSaati,:ikiNeredenTarih,:ikiNeredenSaat,:birNereyeTarih,'+
':BirNereyeSaat,:ikiNereyeTarih,:ikiNereyeSaat,:MusteriAdi,:MusteriSoyadi,:MusteriTel,:MusteriAdres,:Aciklama,:KullanilanKart,:NetFiyat,:Komisyon,:TransferFirmasi, '+
':OdemeTarihi1,:OdemeTarihi2,:OdemeTarihi3,:OdemeSekli1,:OdemeSekli2,:OdemeSekli3,:OdemeTutari1,:OdemeTutari2,:OdemeTutari3,:KalanMiktar,:Odeme,:Kaydeden)';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('KartNo').Value         := PubKartNo ;

Qry1.Parameters.ParamByName('KayitTarihi').Value:= IntToStr(YearOf(Date))+'-'+
                                                       IntToStr(MonthOf(Date))+'-'+
                                                       IntToStr(DayOf(Date));

Qry1.Parameters.ParamByName('Adi').Value          := Trim(TxtTransferAdi.Text);
Qry1.Parameters.ParamByName('Soyadi').Value       := Trim(TxtTransferSoyadi.Text);
Qry1.Parameters.ParamByName('CepNo').Value        := Trim(TxtTransferCepNo.Text);

Qry1.Parameters.ParamByName('OtelAdi').Value      := CmbTransferOtelAdi.Text;
Qry1.Parameters.ParamByName('OtelTelefon').Value  := CmbTransferOtelTel.Text;
Qry1.Parameters.ParamByName('OtelAdres').Value    := CmbTransferOtelAdres.Text;
Qry1.Parameters.ParamByName('OtelEmail').Value    := CmbTransferOtelEmail.Text;

Qry1.Parameters.ParamByName('KisiSayisi').Value   := CurrKisiSayi.Value ;
Qry1.Parameters.ParamByName('Arac').Value         := CmbArac.Text ;
Qry1.Parameters.ParamByName('ToplamFiyat').Value  := CurrTransferToplamFiyat.Value ;

if RbTekYon.Checked = True then
Qry1.Parameters.ParamByName('TransferTuru').Value := 'Tek Yön';

if RbCiftYon.Checked = True then
Qry1.Parameters.ParamByName('TransferTuru').Value := 'Çift Yön';

Qry1.Parameters.ParamByName('BirNereden').Value   := Trim(TxtT1Nereden.Text);
Qry1.Parameters.ParamByName('BirNereye').Value    := Trim(TxtT1Nereye.Text);
Qry1.Parameters.ParamByName('BirUcusKodu').Value  := Trim(TxtT1UcusKodu.Text);
Qry1.Parameters.ParamByName('ikiNereden').Value   := Trim(TxtT2Nereden.Text);
Qry1.Parameters.ParamByName('ikiNereye').Value    := Trim(TxtT2Nereye.Text);
Qry1.Parameters.ParamByName('ikiUcusKodu').Value  := Trim(TxtT2UcusKodu.Text);

Qry1.Parameters.ParamByName('birNeredenTarih').Value:= IntToStr(YearOf(Dt1NeredenTarih.Date))+'-'+
                                                       IntToStr(MonthOf(Dt1NeredenTarih.Date))+'-'+
                                                       IntToStr(DayOf(Dt1NeredenTarih.Date));

Qry1.Parameters.ParamByName('BirNeredenSaat').Value := IntToStr(HourOf(Dt1NeredenSaat.Time))+':'+
                                                       IntToStr(MinuteOf(Dt1NeredenSaat.Time))+':'+
                                                       IntToStr(SecondOf(Dt1NeredenSaat.Time));

Qry1.Parameters.ParamByName('BirinisSaati').Value   := IntToStr(HourOf(Dt1inisSaati.Time))+':'+
                                                       IntToStr(MinuteOf(Dt1inisSaati.Time))+':'+
                                                       IntToStr(SecondOf(Dt1inisSaati.Time));

Qry1.Parameters.ParamByName('ikiinisSaati').Value   := IntToStr(HourOf(Dt2inisSaati.Time))+':'+
                                                       IntToStr(MinuteOf(Dt2inisSaati.Time))+':'+
                                                       IntToStr(SecondOf(Dt2inisSaati.Time));

Qry1.Parameters.ParamByName('ikiNeredenTarih').Value:= IntToStr(YearOf(Dt2NeredenTarih.Date))+'-'+
                                                       IntToStr(MonthOf(Dt2NeredenTarih.Date))+'-'+
                                                       IntToStr(DayOf(Dt2NeredenTarih.Date));

Qry1.Parameters.ParamByName('ikiNeredenSaat').Value := IntToStr(HourOf(Dt2NeredenSaat.Time))+':'+
                                                       IntToStr(MinuteOf(Dt2NeredenSaat.Time))+':'+
                                                       IntToStr(SecondOf(Dt2NeredenSaat.Time));

Qry1.Parameters.ParamByName('birNereyeTarih').Value := IntToStr(YearOf(Dt1NereyeTarih.Date))+'-'+
                                                       IntToStr(MonthOf(Dt1NereyeTarih.Date))+'-'+
                                                       IntToStr(DayOf(Dt1NereyeTarih.Date));

Qry1.Parameters.ParamByName('BirNereyeSaat').Value  := IntToStr(HourOf(Dt1NereyeSaat.Time))+':'+
                                                       IntToStr(MinuteOf(Dt1NereyeSaat.Time))+':'+
                                                       IntToStr(SecondOf(Dt1NereyeSaat.Time));

Qry1.Parameters.ParamByName('ikiNereyeTarih').Value := IntToStr(YearOf(Dt2NereyeTarih.Date))+'-'+
                                                       IntToStr(MonthOf(Dt2NereyeTarih.Date))+'-'+
                                                       IntToStr(DayOf(Dt2NereyeTarih.Date));

Qry1.Parameters.ParamByName('ikiNereyeSaat').Value  := IntToStr(HourOf(Dt2NereyeSaat.Time))+':'+
                                                       IntToStr(MinuteOf(Dt2NereyeSaat.Time))+':'+
                                                       IntToStr(SecondOf(Dt2NereyeSaat.Time));

Qry1.Parameters.ParamByName('MusteriAdi').Value     := CmbAdi.Text ;
Qry1.Parameters.ParamByName('MusteriSoyadi').Value  := CmbSoyadi.Text ;
Qry1.Parameters.ParamByName('MusteriTel').Value     := CmbCepTel1.Text ;
Qry1.Parameters.ParamByName('MusteriAdres').Value   := CmbAdres.Text ;
Qry1.Parameters.ParamByName('Aciklama').Value       := Trim(MemTransfer.Text) ;
Qry1.Parameters.ParamByName('KullanilanKart').Value := CmbTransferKullanilanKart.Text ;
Qry1.Parameters.ParamByName('NetFiyat').Value := CurrTransferNetFiyat.Value ;
Qry1.Parameters.ParamByName('Komisyon').Value := CurrTransferKomisyon.Value ;
Qry1.Parameters.ParamByName('TransferFirmasi').Value  := CmbTransferFirma.Text ;

/////////////////////////////////  ÖDEME ///////////////////////////////////////

Qry1.Parameters.ParamByName('OdemeTarihi1').Value  :=
IntToStr(YearOf(DtT1.Date))+'-'+IntToStr(MonthOf(DtT1.Date))+'-'+IntToStr(DayOf(DtT1.Date));
Qry1.Parameters.ParamByName('OdemeTarihi2').Value  :=
IntToStr(YearOf(DtT2.Date))+'-'+IntToStr(MonthOf(DtT2.Date))+'-'+IntToStr(DayOf(DtT2.Date));
Qry1.Parameters.ParamByName('OdemeTarihi3').Value  :=
IntToStr(YearOf(DtT3.Date))+'-'+IntToStr(MonthOf(DtT3.Date))+'-'+IntToStr(DayOf(DtT3.Date));

Qry1.Parameters.ParamByName('OdemeSekli1').Value := CmbT1.Text ;
Qry1.Parameters.ParamByName('OdemeSekli2').Value := CmbT2.Text ;
Qry1.Parameters.ParamByName('OdemeSekli3').Value := CmbT3.Text ;

Qry1.Parameters.ParamByName('OdemeTutari1').Value := CurrT1.Value ;
Qry1.Parameters.ParamByName('OdemeTutari2').Value := CurrT2.Value ;
Qry1.Parameters.ParamByName('OdemeTutari3').Value := CurrT3.Value ;

Qry1.Parameters.ParamByName('KalanMiktar').Value  := CurrTKalan.Value ;


if ChkTOdendi.Checked = True Then
Qry1.Parameters.ParamByName('Odeme').Value    := 'Ödendi'
Else
Qry1.Parameters.ParamByName('Odeme').Value    := 'Ödenmedi'  ;

Qry1.Parameters.ParamByName('Kaydeden').Value := Kullanici ;
////////////////////////////////////////////////////////////////////////////////


Qry1.Prepared;
Qry1.ExecSQL;


////////////////////////
TmpSql := 'Select Max(id) as d from transfer';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Open;
TmpTransferid      := Qry1.FieldByName('d').AsString ;
TxtTransferAdi.Tag := Qry1.FieldByName('d').AsInteger ;
////////////////////////

for i:=1  to AdvTransferYolcuListesi.RowCount-1 do begin

if (Trim(AdvTransferYolcuListesi.Cells[1,i])='') then Continue;

TmpSql := 'insert into TransferYolcuListesi ' +
' (Turu,Adi,Soyadi,Transferid,DogumTarihi) '+
' Values' +
' (:Turu,:Adi,:Soyadi,:Transferid,:DogumTarihi) ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Turu').Value    := AdvTransferYolcuListesi.Cells[0,i] ;
Qry1.Parameters.ParamByName('Adi').Value     := AdvTransferYolcuListesi.Cells[1,i];
Qry1.Parameters.ParamByName('Soyadi').Value  := AdvTransferYolcuListesi.Cells[2,i];
Qry1.Parameters.ParamByName('Transferid').Value := TxtTransferAdi.Tag ;

if AdvTransferYolcuListesi.Cells[3,i]='' then  AdvTransferYolcuListesi.Cells[3,i] := DateToStr(date);
Qry1.Parameters.ParamByName('DogumTarihi').Value:=
IntToStr(YearOf(StrToDate(AdvTransferYolcuListesi.Cells[3,i])))+'-'+
IntToStr(MonthOf(StrToDate(AdvTransferYolcuListesi.Cells[3,i])))+'-'+
IntToStr(DayOf(StrToDate(AdvTransferYolcuListesi.Cells[3,i])));

Qry1.Prepared;
Qry1.ExecSQL;
end;
////////////////////////////////////////////////////////////////////////////////

{
////////////////////////////////////////////////////////////////////////////////
TmpSql:= 'insert into gelirgider (Adi,Soyadi,TelNo,Tarih,islemTuru,Borc,Alacak,ParaBirimi,idNo,Aciklama,KullanilanKart) '+
'Values(:Adi,:Soyadi,:TelNo,:Tarih,:islemTuru,:Borc,:Alacak,:ParaBirimi,:idNo,:Aciklama,:KullanilanKart)' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('Adi').Value      := CmbAdi.Text ;
Qry1.Parameters.ParamByName('Soyadi').Value   := CmbSoyadi.Text ;
Qry1.Parameters.ParamByName('TelNo').Value    := CmbCepTel1.Text ;

Qry1.Parameters.ParamByName('Tarih').Value    := IntToStr(YearOf(Date))+'-'+
                                                 IntToStr(MonthOf(Date))+'-'+
                                                 IntToStr(DayOf(Date));

Qry1.Parameters.ParamByName('islemTuru').Value := 'Transfer' ;
Qry1.Parameters.ParamByName('Borc').Value      := CurrTransferToplamFiyat.Value ;
Qry1.Parameters.ParamByName('Alacak').Value    := '0' ;

Qry1.Parameters.ParamByName('ParaBirimi').Value:= 'TL' ;
Qry1.Parameters.ParamByName('idNo').Value      := TmpTransferid ;
Qry1.Parameters.ParamByName('Aciklama').Value  := Trim(MemTransfer.Text) ;



Qry1.Parameters.ParamByName('KullanilanKart').Value := CmbTransferKullanilanKart.Text ;

Qry1.Prepared;
Qry1.ExecSQL;

////////////////////////////////////////////////////////////////////////////////
}

MsgUyari('Kaydedildi  ...');

BtnTransferKaydet.Enabled   := False;
BtnTransferGuncelle.Enabled := True;
BtnTransferSil.Enabled      := True;
BtnTransferTemizle.Enabled  := False;

end;

procedure TFrmGelir.BtnTransferSilClick(Sender: TObject);
var TmpSql:String;
begin

if MsgOnay('Kaydý Silmek Ýstiyormusunuz ?') = False Then exit;

TmpSql := 'Delete from transfer where id=:id';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('id').Value   := TxtTransferAdi.Tag ;
Qry1.Prepared ;
Qry1.ExecSQL;

{
TmpSql := 'Delete from gelirgider where idno=:idno';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('idno').Value   := TxtTransferAdi.Tag ;
Qry1.Prepared ;
Qry1.ExecSQL;
}

MsgUyari('Kayýt Silindi ...');
TransferTemizle;


end;

procedure TFrmGelir.BtnTransferTemizleClick(Sender: TObject);
begin
TransferTemizle;

end;

procedure TFrmGelir.BtnTurGuncelleClick(Sender: TObject);
var TmpSql,TmpOtelSatisid:string;
i:integer;
begin

if TxtTurAdi.Tag=0 then begin
MsgUyari('Güncelleme Ýþlemi Ýptal Edildi !!! ...');
exit;
end;

if TxtTurAdi.Text='' then begin
MsgUyari('Lütfen Tur Adýný Giriniz ...');
exit;
end;

TmpSql := 'Update Tur Set ' +

'MusteriAdi=:MusteriAdi,'+
'MusteriSoyadi=:MusteriSoyadi,'+
'MusteriTel=:MusteriTel,'+
'MusteriAdres=:MusteriAdres,'+
'KayitTarihi=:KayitTarihi,'+
'TurAdi=:TurAdi,'+
'VoucherKodu=:VoucherKodu,'+
'UrunCesidi=:UrunCesidi,'+
'TurFirmasi=:TurFirmasi,'+
'BasTarih=:BasTarih,'+
'BasSaat=:BasSaat,'+
'BitTarih=:BitTarih,'+
'BitSaat=:BitSaat,'+
'BasNoktasi=:BasNoktasi,'+
'BitNoktasi=:BitNoktasi,'+
'RehberBilgileri=:RehberBilgileri, '+
'KullanilanKart=:KullanilanKart,'+
'Aciklama=:Aciklama,'+
'Yetiskin=:Yetiskin,'+
'Cocuk=:Cocuk,'+
'Bebek=:Bebek,'+
'KonaklamaSekli=:KonaklamaSekli,'+
'KonaklamaBilgisi=:KonaklamaBilgisi,'+
'UlasimBilgisi=:UlasimBilgisi,'+
'OdaKategorisi=:OdaKategorisi,'+
'NetFiyat=:NetFiyat, '+
'Komisyon=:Komisyon,'+
'ToplamFiyat=:ToplamFiyat, ' +
'OdemeTarihi1=:OdemeTarihi1, '+
'OdemeTarihi2=:OdemeTarihi2, '+
'OdemeTarihi3=:OdemeTarihi3, '+
'OdemeSekli1=:OdemeSekli1, '+
'OdemeSekli2=:OdemeSekli2, '+
'OdemeSekli3=:OdemeSekli3, '+
'OdemeTutari1=:OdemeTutari1, '+
'OdemeTutari2=:OdemeTutari2, '+
'OdemeTutari3=:OdemeTutari3, '+
'KalanMiktar=:KalanMiktar, '+
'Odeme=:Odeme,'+
'Guncelleyen=:Guncelleyen'+

' where id=:id ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('MusteriAdi').Value     := CmbAdi.Text ;
Qry1.Parameters.ParamByName('MusteriSoyadi').Value  := CmbSoyadi.Text ;
Qry1.Parameters.ParamByName('MusteriTel').Value     := CmbCepTel1.Text ;
Qry1.Parameters.ParamByName('MusteriAdres').Value   := CmbAdres.Text ;

Qry1.Parameters.ParamByName('KayitTarihi').Value :=
IntToStr(YearOf(Date))+'-'+IntToStr(MonthOf(Date))+'-'+IntToStr(DayOf(Date));

Qry1.Parameters.ParamByName('TurAdi').Value          := Trim(TxtTurAdi.Text);
Qry1.Parameters.ParamByName('VoucherKodu').Value     := Trim(TxtVoucherKodu.Text);
Qry1.Parameters.ParamByName('UrunCesidi').Value      := CmbTurUrunCesidi.Text;
Qry1.Parameters.ParamByName('TurFirmasi').Value      := CmbTurFirmasi.Text;

Qry1.Parameters.ParamByName('BasTarih').Value :=
IntToStr(YearOf(DtBasTarih.Date))+'-'+IntToStr(MonthOf(DtBasTarih.Date))+'-'+IntToStr(DayOf(DtBasTarih.Date));
Qry1.Parameters.ParamByName('BasSaat').Value :=
IntToStr(HourOf(DtBasSaat.Time))+':'+IntToStr(MinuteOf(DtBasSaat.Time))+':'+IntToStr(SecondOf(DtBasSaat.Time));
Qry1.Parameters.ParamByName('BitTarih').Value :=
IntToStr(YearOf(DtBitTarih.Date))+'-'+IntToStr(MonthOf(DtBitTarih.Date))+'-'+IntToStr(DayOf(DtBitTarih.Date));
Qry1.Parameters.ParamByName('BitSaat').Value :=
IntToStr(HourOf(DtBitSaat.Time))+':'+IntToStr(MinuteOf(DtBitSaat.Time))+':'+IntToStr(SecondOf(DtBitSaat.Time));

Qry1.Parameters.ParamByName('BasNoktasi').Value       := Trim(TxtBaslangicNoktasi.Text);
Qry1.Parameters.ParamByName('BitNoktasi').Value       := Trim(TxtBitisNoktasi.Text);
Qry1.Parameters.ParamByName('RehberBilgileri').Value  := Trim(TxtRehberBilgileri.Text);
Qry1.Parameters.ParamByName('KullanilanKart').Value   := CmbTurKullanilanKart.Text;
Qry1.Parameters.ParamByName('Aciklama').Value         := Trim(MemTur.Text);
Qry1.Parameters.ParamByName('Yetiskin').Value         := CurrYetiskin.Value ;
Qry1.Parameters.ParamByName('Cocuk').Value            := CurrCocuk.Value ;
Qry1.Parameters.ParamByName('Bebek').Value            := CurrBebek.Value ;
Qry1.Parameters.ParamByName('KonaklamaSekli').Value   := Trim(TxtTurKonaklamaSekli.Text);
Qry1.Parameters.ParamByName('KonaklamaBilgisi').Value := Trim(TxtTurKonaklamaBilgisi.Text);
Qry1.Parameters.ParamByName('UlasimBilgisi').Value    := Trim(TxtUlasimBilgisi.Text) ;
Qry1.Parameters.ParamByName('OdaKategorisi').Value    := CmbTurOdaKategori.Text ;
Qry1.Parameters.ParamByName('NetFiyat').Value         := CurrTurNetFiyat.Value    ;
Qry1.Parameters.ParamByName('Komisyon').Value         := CurrTurKomisyon.Value    ;
Qry1.Parameters.ParamByName('ToplamFiyat').Value      := CurrTurToplamFiyat.Value ;


/////////////////////////////////  ÖDEME ///////////////////////////////////////

Qry1.Parameters.ParamByName('OdemeTarihi1').Value  :=
IntToStr(YearOf(DtTu1.Date))+'-'+IntToStr(MonthOf(DtTu1.Date))+'-'+IntToStr(DayOf(DtTu1.Date));
Qry1.Parameters.ParamByName('OdemeTarihi2').Value  :=
IntToStr(YearOf(DtTu2.Date))+'-'+IntToStr(MonthOf(DtTu2.Date))+'-'+IntToStr(DayOf(DtTu2.Date));
Qry1.Parameters.ParamByName('OdemeTarihi3').Value  :=
IntToStr(YearOf(DtTu3.Date))+'-'+IntToStr(MonthOf(DtTu3.Date))+'-'+IntToStr(DayOf(DtTu3.Date));

Qry1.Parameters.ParamByName('OdemeSekli1').Value := CmbTu1.Text ;
Qry1.Parameters.ParamByName('OdemeSekli2').Value := CmbTu2.Text ;
Qry1.Parameters.ParamByName('OdemeSekli3').Value := CmbTu3.Text ;

Qry1.Parameters.ParamByName('OdemeTutari1').Value := CurrTu1.Value ;
Qry1.Parameters.ParamByName('OdemeTutari2').Value := CurrTu2.Value ;
Qry1.Parameters.ParamByName('OdemeTutari3').Value := CurrTu3.Value ;

Qry1.Parameters.ParamByName('KalanMiktar').Value  := CurrTuKalan.Value ;


if ChkTuOdendi.Checked = True Then
Qry1.Parameters.ParamByName('Odeme').Value    := 'Ödendi'
Else
Qry1.Parameters.ParamByName('Odeme').Value    := 'Ödenmedi'  ;

////////////////////////////////////////////////////////////////////////////////

Qry1.Parameters.ParamByName('Guncelleyen').Value := Kullanici ;

Qry1.Parameters.ParamByName('id').Value   := TxtTurAdi.Tag ;

Qry1.Prepared;
Qry1.ExecSQL;

/////////////////////////////////////////////////////////////////////////////////

TmpSql := 'Delete from YolcuListesi where Turid=:Turid';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Turid').Value   := TxtTurAdi.Tag ;
Qry1.Prepared ;
Qry1.ExecSQL;

for i:=1  to AdvYolcuListesi.RowCount-1 do begin

if (Trim(AdvYolcuListesi.Cells[1,i])='') then Continue;

TmpSql := 'insert into YolcuListesi ' +
' (Tur,Adi,Soyadi,Turid,DogumTarihi) '+
' Values' +
' (:Tur,:Adi,:Soyadi,:Turid,:DogumTarihi) ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Tur').Value   := AdvYolcuListesi.Cells[0,i] ;
Qry1.Parameters.ParamByName('Adi').Value    := AdvYolcuListesi.Cells[1,i];
Qry1.Parameters.ParamByName('Soyadi').Value := AdvYolcuListesi.Cells[2,i];
Qry1.Parameters.ParamByName('Turid').Value  := TxtTurAdi.Tag ;

if AdvYolcuListesi.Cells[3,i]='' then  AdvYolcuListesi.Cells[3,i] := DateToStr(date);

Qry1.Parameters.ParamByName('DogumTarihi').Value:=
IntToStr(YearOf(StrToDate(AdvYolcuListesi.Cells[3,i])))+'-'+
IntToStr(MonthOf(StrToDate(AdvYolcuListesi.Cells[3,i])))+'-'+
IntToStr(DayOf(StrToDate(AdvYolcuListesi.Cells[3,i])));

Qry1.Prepared;
Qry1.ExecSQL;
end;

/////////////////////////////////////////////////////////////////////////////////

{
////////////////////////////////////////////////////////////////////////////////
TmpSql:= 'Update gelirgider  Set Borc=:Borc , KullanilanKart=:KullanilanKart, Aciklama=:Aciklama where idNo=:idNo ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Borc').Value           := CurrTurToplamFiyat.Value ;
Qry1.Parameters.ParamByName('KullanilanKart').Value := CmbTurKullanilanKart.Text ;
Qry1.Parameters.ParamByName('Aciklama').Value       := Trim(MemTur.Text);
Qry1.Parameters.ParamByName('idNo').Value           := TxtTurAdi.Tag ;
Qry1.Prepared;
Qry1.ExecSQL;
////////////////////////////////////////////////////////////////////////////////
}




MsgUyari('Güncellendi  ...');
close;


end;

procedure TFrmGelir.BtnTurKaydetClick(Sender: TObject);
var TmpSql:string;
i:integer;
begin

if TxtTurAdi.Text='' then begin
MsgUyari('Lütfen Tur Adýný Giriniz ...');
exit;
end;


TmpSql := 'insert into Tur ' +
'(MusteriAdi,MusteriSoyadi,MusteriTel,MusteriAdres,KartNo,KayitTarihi,TurAdi,VoucherKodu,UrunCesidi,TurFirmasi,BasTarih,BasSaat,BitTarih,BitSaat,BasNoktasi,BitNoktasi,RehberBilgileri, '+
'KullanilanKart,Aciklama,Yetiskin,Cocuk,Bebek,KonaklamaSekli,KonaklamaBilgisi,UlasimBilgisi,OdaKategorisi,NetFiyat, '+
'Komisyon,ToplamFiyat, '+
'OdemeTarihi1,OdemeTarihi2,OdemeTarihi3,OdemeSekli1,OdemeSekli2,OdemeSekli3,OdemeTutari1,OdemeTutari2,OdemeTutari3,KalanMiktar,Odeme,Kaydeden)'+
' Values' +
'(:MusteriAdi,:MusteriSoyadi,:MusteriTel,:MusteriAdres,:KartNo,:KayitTarihi,:TurAdi,:VoucherKodu,:UrunCesidi,:TurFirmasi,:BasTarih,:BasSaat,:BitTarih,:BitSaat,:BasNoktasi,:BitNoktasi,:RehberBilgileri, '+
':KullanilanKart,:Aciklama,:Yetiskin,:Cocuk,:Bebek,:KonaklamaSekli,:KonaklamaBilgisi,:UlasimBilgisi,:OdaKategorisi,:NetFiyat, '+
':Komisyon,:ToplamFiyat, '+
':OdemeTarihi1,:OdemeTarihi2,:OdemeTarihi3,:OdemeSekli1,:OdemeSekli2,:OdemeSekli3,:OdemeTutari1,:OdemeTutari2,:OdemeTutari3,:KalanMiktar,:Odeme,:Kaydeden)';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('MusteriAdi').Value     := CmbAdi.Text ;
Qry1.Parameters.ParamByName('MusteriSoyadi').Value  := CmbSoyadi.Text ;
Qry1.Parameters.ParamByName('MusteriTel').Value     := CmbCepTel1.Text ;
Qry1.Parameters.ParamByName('MusteriAdres').Value   := CmbAdres.Text ;



Qry1.Parameters.ParamByName('KartNo').Value         := PubKartNo ;

Qry1.Parameters.ParamByName('KayitTarihi').Value :=
IntToStr(YearOf(Date))+'-'+IntToStr(MonthOf(Date))+'-'+IntToStr(DayOf(Date));

Qry1.Parameters.ParamByName('TurAdi').Value          := Trim(TxtTurAdi.Text);
Qry1.Parameters.ParamByName('VoucherKodu').Value     := Trim(TxtVoucherKodu.Text);
Qry1.Parameters.ParamByName('UrunCesidi').Value      := CmbTurUrunCesidi.Text;
Qry1.Parameters.ParamByName('TurFirmasi').Value      := CmbTurFirmasi.Text;

Qry1.Parameters.ParamByName('BasTarih').Value :=
IntToStr(YearOf(DtBasTarih.Date))+'-'+IntToStr(MonthOf(DtBasTarih.Date))+'-'+IntToStr(DayOf(DtBasTarih.Date));
Qry1.Parameters.ParamByName('BasSaat').Value :=
IntToStr(HourOf(DtBasSaat.Time))+':'+IntToStr(MinuteOf(DtBasSaat.Time))+':'+IntToStr(SecondOf(DtBasSaat.Time));
Qry1.Parameters.ParamByName('BitTarih').Value :=
IntToStr(YearOf(DtBitTarih.Date))+'-'+IntToStr(MonthOf(DtBitTarih.Date))+'-'+IntToStr(DayOf(DtBitTarih.Date));
Qry1.Parameters.ParamByName('BitSaat').Value :=
IntToStr(HourOf(DtBitSaat.Time))+':'+IntToStr(MinuteOf(DtBitSaat.Time))+':'+IntToStr(SecondOf(DtBitSaat.Time));

Qry1.Parameters.ParamByName('BasNoktasi').Value       := Trim(TxtBaslangicNoktasi.Text);
Qry1.Parameters.ParamByName('BitNoktasi').Value       := Trim(TxtBitisNoktasi.Text);
Qry1.Parameters.ParamByName('RehberBilgileri').Value  := Trim(TxtRehberBilgileri.Text);
Qry1.Parameters.ParamByName('KullanilanKart').Value   := CmbTurKullanilanKart.Text;
Qry1.Parameters.ParamByName('Aciklama').Value         := Trim(MemTur.Text);
Qry1.Parameters.ParamByName('Yetiskin').Value         := CurrYetiskin.Value ;
Qry1.Parameters.ParamByName('Cocuk').Value            := CurrCocuk.Value ;
Qry1.Parameters.ParamByName('Bebek').Value            := CurrBebek.Value ;
Qry1.Parameters.ParamByName('KonaklamaSekli').Value   := Trim(TxtTurKonaklamaSekli.Text);
Qry1.Parameters.ParamByName('KonaklamaBilgisi').Value := Trim(TxtTurKonaklamaBilgisi.Text);
Qry1.Parameters.ParamByName('UlasimBilgisi').Value    := Trim(TxtUlasimBilgisi.Text) ;
Qry1.Parameters.ParamByName('OdaKategorisi').Value    := CmbTurOdaKategori.Text ;
Qry1.Parameters.ParamByName('NetFiyat').Value         := CurrTurNetFiyat.Value    ;
Qry1.Parameters.ParamByName('Komisyon').Value         := CurrTurKomisyon.Value    ;
Qry1.Parameters.ParamByName('ToplamFiyat').Value      := CurrTurToplamFiyat.Value ;

/////////////////////////////////  ÖDEME ///////////////////////////////////////

Qry1.Parameters.ParamByName('OdemeTarihi1').Value  :=
IntToStr(YearOf(DtTu1.Date))+'-'+IntToStr(MonthOf(DtTu1.Date))+'-'+IntToStr(DayOf(DtTu1.Date));
Qry1.Parameters.ParamByName('OdemeTarihi2').Value  :=
IntToStr(YearOf(DtTu2.Date))+'-'+IntToStr(MonthOf(DtTu2.Date))+'-'+IntToStr(DayOf(DtTu2.Date));
Qry1.Parameters.ParamByName('OdemeTarihi3').Value  :=
IntToStr(YearOf(DtTu3.Date))+'-'+IntToStr(MonthOf(DtTu3.Date))+'-'+IntToStr(DayOf(DtTu3.Date));

Qry1.Parameters.ParamByName('OdemeSekli1').Value := CmbTu1.Text ;
Qry1.Parameters.ParamByName('OdemeSekli2').Value := CmbTu2.Text ;
Qry1.Parameters.ParamByName('OdemeSekli3').Value := CmbTu3.Text ;

Qry1.Parameters.ParamByName('OdemeTutari1').Value := CurrTu1.Value ;
Qry1.Parameters.ParamByName('OdemeTutari2').Value := CurrTu2.Value ;
Qry1.Parameters.ParamByName('OdemeTutari3').Value := CurrTu3.Value ;

Qry1.Parameters.ParamByName('KalanMiktar').Value  := CurrTuKalan.Value ;


if ChkTuOdendi.Checked = True Then
Qry1.Parameters.ParamByName('Odeme').Value    := 'Ödendi'
Else
Qry1.Parameters.ParamByName('Odeme').Value    := 'Ödenmedi';

Qry1.Parameters.ParamByName('Kaydeden').Value := Kullanici ;

////////////////////////////////////////////////////////////////////////////////

Qry1.Prepared;
Qry1.ExecSQL;



////////////////////////
TmpSql := 'Select Max(id) as d from Tur';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Open;
TxtTurAdi.Tag := Qry1.FieldByName('d').AsInteger ;
////////////////////////

for i:=1  to AdvYolcuListesi.RowCount-1 do begin

if (Trim(AdvYolcuListesi.Cells[1,i])='') then Continue;

TmpSql := 'insert into YolcuListesi ' +
' (Tur,Adi,Soyadi,Turid,DogumTarihi) '+
' Values' +
' (:Tur,:Adi,:Soyadi,:Turid,:DogumTarihi) ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Tur').Value    := AdvYolcuListesi.Cells[0,i] ;
Qry1.Parameters.ParamByName('Adi').Value    := AdvYolcuListesi.Cells[1,i];
Qry1.Parameters.ParamByName('Soyadi').Value := AdvYolcuListesi.Cells[2,i];
Qry1.Parameters.ParamByName('Turid').Value  := TxtTurAdi.Tag ;

if AdvYolcuListesi.Cells[3,i]='' then  AdvYolcuListesi.Cells[3,i] := DateToStr(date);


Qry1.Parameters.ParamByName('DogumTarihi').Value:=
IntToStr(YearOf(StrToDate(AdvYolcuListesi.Cells[3,i])))+'-'+
IntToStr(MonthOf(StrToDate(AdvYolcuListesi.Cells[3,i])))+'-'+
IntToStr(DayOf(StrToDate(AdvYolcuListesi.Cells[3,i])));

Qry1.Prepared;
Qry1.ExecSQL;
end;


{
////////////////////////////////////////////////////////////////////////////////

TmpSql:= 'insert into gelirgider (Adi,Soyadi,TelNo,Tarih,islemTuru,Borc,Alacak,ParaBirimi,idNo,Aciklama,KullanilanKart) '+
'Values(:Adi,:Soyadi,:TelNo,:Tarih,:islemTuru,:Borc,:Alacak,:ParaBirimi,:idNo,:Aciklama,:KullanilanKart)' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('Adi').Value      := CmbAdi.Text ;
Qry1.Parameters.ParamByName('Soyadi').Value   := CmbSoyadi.Text ;
Qry1.Parameters.ParamByName('TelNo').Value    := CmbCepTel1.Text ;

Qry1.Parameters.ParamByName('Tarih').Value    := IntToStr(YearOf(Date))+'-'+
                                                 IntToStr(MonthOf(Date))+'-'+
                                                 IntToStr(DayOf(Date));

Qry1.Parameters.ParamByName('islemTuru').Value := 'Tur Satýþ' ;
Qry1.Parameters.ParamByName('Borc').Value      := CurrTurToplamFiyat.Value ;
Qry1.Parameters.ParamByName('Alacak').Value    := '0' ;

Qry1.Parameters.ParamByName('ParaBirimi').Value:= 'TL' ;
Qry1.Parameters.ParamByName('idNo').Value      := TxtTurAdi.Tag ;
Qry1.Parameters.ParamByName('Aciklama').Value  := Trim(MemTur.Text);

Qry1.Parameters.ParamByName('KullanilanKart').Value := CmbTurKullanilanKart.Text ;

Qry1.Prepared;
Qry1.ExecSQL;

////////////////////////////////////////////////////////////////////////////////
}

MsgUyari('Kaydedildi  ...');

BtnTurKaydet.Enabled   := False;
BtnTurGuncelle.Enabled := True;
BtnTurSil.Enabled      := True;
BtnTurTemizle.Enabled  := False;


end;


procedure TFrmGelir.BtnTurSilClick(Sender: TObject);
var TmpSql:String;
begin
if MsgOnay('Kaydý Silmek Ýstiyormusunuz ?') = False Then exit;

TmpSql := 'Delete from YolcuListesi where Turid=:Turid';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Turid').Value   := TxtTurAdi.Tag ;
Qry1.Prepared ;
Qry1.ExecSQL;

TmpSql := 'Delete from Tur where id=:id';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('id').Value   := TxtTurAdi.Tag ;
Qry1.Prepared ;
Qry1.ExecSQL;

{
TmpSql := 'Delete from gelirgider where idno=:idno';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('idno').Value   := TxtTurAdi.Tag ;
Qry1.Prepared ;
Qry1.ExecSQL;
}

MsgUyari('Kayýt Silindi ...');
TurTemizle;
end;

procedure TFrmGelir.BtnTurTemizleClick(Sender: TObject);
begin
TurTemizle;
end;

procedure TFrmGelir.BtnBiletGuncelleClick(Sender: TObject);
var TmpSql:string;
i:integer;
begin

if CmbAdi.Tag=0 then begin
MsgUyari('Güncelleme Ýþlemi Ýptal Edildi !!! ...');
exit;
end;

if CmbAdi.Text='' then begin
MsgUyari('Lütfen Müþteri Adýný Giriniz ...');
exit;
end;

if CmbSoyadi.Text='' then begin
MsgUyari('Lütfen Müþteri Soyadýný Giriniz ...');
exit;
end;

if CmbUrunCesidi.Text='' then begin
MsgUyari('Lütfen Ürün Çeþidini Seçiniz ...');
exit;
end;

TmpSql := 'Update rezervasyon set '+
'MusAdi=:MusAdi,'+
'MusSoyadi=:MusSoyadi,'+
'UrunCesidi=:UrunCesidi,'+
'Nereden=:Nereden,'+
'Nereye=:Nereye,'+
'KullanilanKart=:KullanilanKart,'+
'NetFiyati=:NetFiyati,'+
'Komisyon=:Komisyon,'+
'DigerKomisyon=:DigerKomisyon,'+
'ToplamFiyat=:ToplamFiyat,'+
'Biletiptali=:Biletiptali,'+
'Geriiade=:Geriiade,'+
'NeredenChk=:NeredenChk,'+
'NereyeChk=:NereyeChk,'+
'NeredenTarih=:NeredenTarih,'+
'NereyeTarih=:NereyeTarih,'+
'MusCepTel1=:MusCepTel1,' +
'MusAdres=:MusAdres,'+
'Sirket=:Sirket,'+
'Obsiyon=:Obsiyon,'+
'Onay=:Onay,'+
'ObsTarihi=:ObsTarihi,'+
'ObsSaati=:ObsSaati,'+
'Pnr=:Pnr,'+
'CurrKullanilanKart=:CurrKullanilanKart,'+
'HavaDenizYolu=:HavaDenizYolu, '+
'Kontrol=:Kontrol, '+
'aciklama=:aciklama, '+
'Guncelleme=:Guncelleme, '+
'TarihDegisikligi=:TarihDegisikligi,'+
'OdemeTarihi1=:OdemeTarihi1, '+
'OdemeTarihi2=:OdemeTarihi2, '+
'OdemeTarihi3=:OdemeTarihi3, '+
'OdemeSekli1=:OdemeSekli1, '+
'OdemeSekli2=:OdemeSekli2, '+
'OdemeSekli3=:OdemeSekli3, '+
'OdemeTutari1=:OdemeTutari1, '+
'OdemeTutari2=:OdemeTutari2, '+
'OdemeTutari3=:OdemeTutari3, '+
'KalanMiktar=:KalanMiktar, '+
'Odeme=:Odeme,'+
'Saat1=:Saat1, '+
'Saat2=:Saat2, '+
'UcusNo1=:UcusNo1, '+
'UcusNo2=:UcusNo2, '+
'Pnr2=:Pnr2, '+
'Guncelleyen=:Guncelleyen, '+

'Saat1x=:Saat1x, '+
'Saat2x=:Saat2x '+

' where id=:id ' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('MusAdi').Value         := CmbAdi.Text;
Qry1.Parameters.ParamByName('MusSoyadi').Value      := CmbSoyadi.Text;
Qry1.Parameters.ParamByName('UrunCesidi').Value     := CmbUrunCesidi.Text;
Qry1.Parameters.ParamByName('Nereden').Value        := Trim(TxtNereden.Text);
Qry1.Parameters.ParamByName('Nereye').Value         := Trim(TxtNereye.Text);
Qry1.Parameters.ParamByName('KullanilanKart').Value := CmbKullanilanKart.Text ;
Qry1.Parameters.ParamByName('NetFiyati').Value      := CurrNetFiyati.Value ;
Qry1.Parameters.ParamByName('Komisyon').Value       := CurrKomisyon.Value ;
Qry1.Parameters.ParamByName('DigerKomisyon').Value  := CurrDigerKomisyon.Value ;
Qry1.Parameters.ParamByName('ToplamFiyat').Value    := CurrToplamFiyat.Value ;

if ChkBiletiptali.Checked = True Then
Qry1.Parameters.ParamByName('Biletiptali').Value    := 'Bilet iptal'
Else
Qry1.Parameters.ParamByName('Biletiptali').Value    := ' ';

Qry1.Parameters.ParamByName('Geriiade').Value       := CurrGeriiade.Value ;



if ChkNereden.Checked = True Then
Qry1.Parameters.ParamByName('NeredenChk').Value    := '1'
Else
Qry1.Parameters.ParamByName('NeredenChk').Value    := '0';

if ChkNereye.Checked = True Then
Qry1.Parameters.ParamByName('NereyeChk').Value    := '1'
Else
Qry1.Parameters.ParamByName('NereyeChk').Value    := '0' ;

Qry1.Parameters.ParamByName('NeredenTarih').Value := IntToStr(YearOf(DtNereden.Date))+'-'+
                                                    IntToStr(MonthOf(DtNereden.Date))+'-'+
                                                    IntToStr(DayOf(DtNereden.Date));

Qry1.Parameters.ParamByName('NereyeTarih').Value := IntToStr(YearOf(DtNereye.Date))+'-'+
                                                    IntToStr(MonthOf(DtNereye.Date))+'-'+
                                                    IntToStr(DayOf(DtNereye.Date));

Qry1.Parameters.ParamByName('MusCepTel1').Value    := Trim(CmbCepTel1.Text);
Qry1.Parameters.ParamByName('MusAdres').Value      := Trim(CmbAdres.Text);
Qry1.Parameters.ParamByName('Sirket').Value        :=CmbSirket.Text;

if ChkObsiyon.Checked = True Then
Qry1.Parameters.ParamByName('Obsiyon').Value    := 'Var'
Else
Qry1.Parameters.ParamByName('Obsiyon').Value    :='Yok'  ;

if ChkOnay.Checked = True Then
Qry1.Parameters.ParamByName('Onay').Value    := 'Var'
Else
Qry1.Parameters.ParamByName('Onay').Value    :='Yok'  ;

Qry1.Parameters.ParamByName('ObsTarihi').Value      := IntToStr(YearOf(DtObsTarihi.Date))+'-'+
                                                       IntToStr(MonthOf(DtObsTarihi.Date))+'-'+
                                                       IntToStr(DayOf(DtObsTarihi.Date));

Qry1.Parameters.ParamByName('ObsSaati').Value       := IntToStr(HourOf(DtObsSaat.Time))+':'+
                                                       IntToStr(MinuteOf(DtObsSaat.Time))+':'+
                                                       IntToStr(SecondOf(DtObsSaat.Time));

Qry1.Parameters.ParamByName('Pnr').Value    := Trim(TxtPnr.Text);

Qry1.Parameters.ParamByName('CurrKullanilanKart').Value   := CurrKullanilanKart.Value ;

Qry1.Parameters.ParamByName('HavaDenizYolu').Value    := Trim(CmbHavaDenizYolu.Text);

Qry1.Parameters.ParamByName('Kontrol').Value    := 'N' ;

Qry1.Parameters.ParamByName('aciklama').Value   := Trim(MemAciklama.Text) ;
Qry1.Parameters.ParamByName('Guncelleme').Value   := '1' ;
Qry1.Parameters.ParamByName('TarihDegisikligi').Value := CurrTarihDegisikligi.Value ;
/////////////////////////////////  ÖDEME ///////////////////////////////////////

Qry1.Parameters.ParamByName('OdemeTarihi1').Value  :=
IntToStr(YearOf(DtB1.Date))+'-'+IntToStr(MonthOf(DtB1.Date))+'-'+IntToStr(DayOf(DtB1.Date));
Qry1.Parameters.ParamByName('OdemeTarihi2').Value  :=
IntToStr(YearOf(DtB2.Date))+'-'+IntToStr(MonthOf(DtB2.Date))+'-'+IntToStr(DayOf(DtB2.Date));
Qry1.Parameters.ParamByName('OdemeTarihi3').Value  :=
IntToStr(YearOf(DtB3.Date))+'-'+IntToStr(MonthOf(DtB3.Date))+'-'+IntToStr(DayOf(DtB3.Date));

Qry1.Parameters.ParamByName('OdemeSekli1').Value := CmbB1.Text ;
Qry1.Parameters.ParamByName('OdemeSekli2').Value := CmbB2.Text ;
Qry1.Parameters.ParamByName('OdemeSekli3').Value := CmbB3.Text ;

Qry1.Parameters.ParamByName('OdemeTutari1').Value := CurrB1.Value ;
Qry1.Parameters.ParamByName('OdemeTutari2').Value := CurrB2.Value ;
Qry1.Parameters.ParamByName('OdemeTutari3').Value := CurrB3.Value ;

Qry1.Parameters.ParamByName('KalanMiktar').Value  := CurrBKalan.Value ;


if ChkBOdendi.Checked = True Then
Qry1.Parameters.ParamByName('Odeme').Value    := 'Ödendi'
Else
Qry1.Parameters.ParamByName('Odeme').Value    := 'Ödenmedi'  ;


Qry1.Parameters.ParamByName('Guncelleyen').Value := Kullanici ;

Qry1.Parameters.ParamByName('Saat1').Value :=
IntToStr(HourOf(DtSaat1.Time))+':'+IntToStr(MinuteOf(DtSaat1.Time))+':'+IntToStr(SecondOf(DtSaat1.Time));
Qry1.Parameters.ParamByName('Saat2').Value :=
IntToStr(HourOf(DtSaat2.Time))+':'+IntToStr(MinuteOf(DtSaat2.Time))+':'+IntToStr(SecondOf(DtSaat2.Time));

Qry1.Parameters.ParamByName('UcusNo1').Value := TxtUcusNo1.Text ;
Qry1.Parameters.ParamByName('UcusNo2').Value := TxtUcusNo2.Text ;

Qry1.Parameters.ParamByName('Pnr2').Value := TxtPnr2.Text ;

Qry1.Parameters.ParamByName('Saat1x').Value :=
IntToStr(HourOf(DtSaat1x.Time))+':'+IntToStr(MinuteOf(DtSaat1x.Time))+':'+IntToStr(SecondOf(DtSaat1x.Time));
Qry1.Parameters.ParamByName('Saat2x').Value :=
IntToStr(HourOf(DtSaat2x.Time))+':'+IntToStr(MinuteOf(DtSaat2x.Time))+':'+IntToStr(SecondOf(DtSaat2x.Time));




////////////////////////////////////////////////////////////////////////////////


Qry1.Parameters.ParamByName('id').Value     := CmbAdi.Tag ;

Qry1.Prepared;
Qry1.ExecSQL;


if CmbSirket.ItemIndex = -1 then begin
TmpSql:= 'Select aciklama from sabitdegerler where kriterno=:kriterno and aciklama=:aciklama ';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('kriterno').Value := '4' ;
Qry1.Parameters.ParamByName('aciklama').Value := Trim(CmbSirket.Text) ;
Qry1.Prepared;
Qry1.Open;

if Qry1.RecordCount = 0 then begin
TmpSql := 'insert into sabitdegerler (kriterno,kriter,aciklama) Values(:kriterno,:kriter,:aciklama) ' ;
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('kriterno').Value  := '4';
Qry1.Parameters.ParamByName('kriter').Value    := 'Þirketler';
Qry1.Parameters.ParamByName('aciklama').Value  := Trim(CmbSirket.Text);
Qry1.Prepared;
Qry1.ExecSQL;
end;
end;

/////////////////////////////////////////////////////////////////////////////////

TmpSql := 'Delete from BiletYolcuListesi where Biletid=:Biletid';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Biletid').Value   := CmbAdi.Tag ;
Qry1.Prepared ;
Qry1.ExecSQL;

for i:=1  to AdvBiletYolcuListesi.RowCount-1 do begin

if (Trim(AdvBiletYolcuListesi.Cells[1,i])='') then Continue;

TmpSql := 'insert into BiletYolcuListesi ' +
' (Turu,Adi,Soyadi,Biletid,DogumTarihi) '+
' Values' +
' (:Turu,:Adi,:Soyadi,:Biletid,:DogumTarihi) ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Turu').Value   := AdvBiletYolcuListesi.Cells[0,i] ;
Qry1.Parameters.ParamByName('Adi').Value    := AdvBiletYolcuListesi.Cells[1,i];
Qry1.Parameters.ParamByName('Soyadi').Value := AdvBiletYolcuListesi.Cells[2,i];
Qry1.Parameters.ParamByName('Biletid').Value  := CmbAdi.Tag ;

if AdvBiletYolcuListesi.Cells[3,i]='' then  AdvBiletYolcuListesi.Cells[3,i] := DateToStr(date);


Qry1.Parameters.ParamByName('DogumTarihi').Value:=
IntToStr(YearOf(StrToDate(AdvBiletYolcuListesi.Cells[3,i])))+'-'+
IntToStr(MonthOf(StrToDate(AdvBiletYolcuListesi.Cells[3,i])))+'-'+
IntToStr(DayOf(StrToDate(AdvBiletYolcuListesi.Cells[3,i])));


Qry1.Prepared;
Qry1.ExecSQL;
end;

/////////////////////////////////////////////////////////////////////////////////


{
////////////////////////////////////////////////////////////////////////////////

TmpSql:= 'Update gelirgider  Set Borc=:Borc, KullanilanKart=:KullanilanKart, Aciklama=:Aciklama where idNo=:idNo ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Borc').Value            := CurrToplamFiyat.Value ;
Qry1.Parameters.ParamByName('KullanilanKart').Value  := CmbKullanilanKart.Text ;
Qry1.Parameters.ParamByName('Aciklama').Value        := Trim(MemAciklama.Text) ;

Qry1.Parameters.ParamByName('idNo').Value      := CmbAdi.Tag ;
Qry1.Prepared;
Qry1.ExecSQL;

////////////////////////////////////////////////////////////////////////////////
}
MsgUyari('Güncellendi  ...');
close;
end;

procedure TFrmGelir.BtnBiletKaydetClick(Sender: TObject);
var TmpSql,TmpBiletSatisid:string;
i:integer;
begin

if CmbAdi.Text='' then begin
MsgUyari('Lütfen Müþteri/Þirket Adýný Giriniz ...');
exit;
end;

if CmbSoyadi.Text='' then begin
MsgUyari('Lütfen Müþteri/Þirket Soyadýný Giriniz ...');
exit;
end;

if CmbUrunCesidi.Text='' then begin
MsgUyari('Lütfen Ürün Çeþidini Seçiniz ...');
exit;
end;

if CmbHavaDenizYolu.Text='' then begin
MsgUyari('Lütfen Hava/Deniz Yolunu Seçiniz ...');
exit;
end;

TmpSql := 'insert into rezervasyon ' +
' (KartNo,MusAdi,MusSoyadi,UrunCesidi,Nereden,Nereye,KullanilanKart,NetFiyati,Komisyon,DigerKomisyon,ToplamFiyat,Biletiptali,'+
'Geriiade,KayitTarihi,NeredenChk,NereyeChk,NeredenTarih,NereyeTarih,MusCepTel1,MusAdres,Sirket,Obsiyon,Onay,ObsTarihi,'+
'ObsSaati,Pnr,CurrKullanilanKart,HavaDenizYolu,Kontrol,aciklama,Guncelleme,TarihDegisikligi,'+
'OdemeTarihi1,OdemeTarihi2,OdemeTarihi3,OdemeSekli1,OdemeSekli2,OdemeSekli3,OdemeTutari1,OdemeTutari2,OdemeTutari3, '+
'KalanMiktar,Odeme,Kaydeden,Saat1,Saat2,UcusNo1,UcusNo2,Pnr2,Saat1x,Saat2x)'+
' Values' +
'(:KartNo,:MusAdi,:MusSoyadi,:UrunCesidi,:Nereden,:Nereye,:KullanilanKart,:NetFiyati,:Komisyon,:DigerKomisyon,:ToplamFiyat,:Biletiptali,'+
':Geriiade,:KayitTarihi,:NeredenChk,:NereyeChk,:NeredenTarih,:NereyeTarih,:MusCepTel1,:MusAdres,:Sirket,:Obsiyon,:Onay,:ObsTarihi,'+
':ObsSaati,:Pnr,:CurrKullanilanKart,:HavaDenizYolu,:Kontrol,:aciklama,:Guncelleme,:TarihDegisikligi, '+
':OdemeTarihi1,:OdemeTarihi2,:OdemeTarihi3,:OdemeSekli1,:OdemeSekli2,:OdemeSekli3,:OdemeTutari1,:OdemeTutari2,:OdemeTutari3, '+
':KalanMiktar,:Odeme,:Kaydeden,:Saat1,:Saat2,:UcusNo1,:UcusNo2,:Pnr2,:Saat1x,:Saat2x)';


Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('KartNo').Value         := PubKartNo ;
Qry1.Parameters.ParamByName('MusAdi').Value         := CmbAdi.Text;
Qry1.Parameters.ParamByName('MusSoyadi').Value      := CmbSoyadi.Text;
Qry1.Parameters.ParamByName('UrunCesidi').Value     := CmbUrunCesidi.Text;
Qry1.Parameters.ParamByName('Nereden').Value        := Trim(TxtNereden.Text);
Qry1.Parameters.ParamByName('Nereye').Value         := Trim(TxtNereye.Text);
Qry1.Parameters.ParamByName('KullanilanKart').Value := CmbKullanilanKart.Text ;
Qry1.Parameters.ParamByName('NetFiyati').Value      := CurrNetFiyati.Value ;
Qry1.Parameters.ParamByName('Komisyon').Value       := CurrKomisyon.Value ;
Qry1.Parameters.ParamByName('DigerKomisyon').Value  := CurrDigerKomisyon.Value ;
Qry1.Parameters.ParamByName('ToplamFiyat').Value    := CurrToplamFiyat.Value ;

if ChkBiletiptali.Checked = True Then
Qry1.Parameters.ParamByName('Biletiptali').Value    := 'Bilet iptal'
Else
Qry1.Parameters.ParamByName('Biletiptali').Value    := ' ';

Qry1.Parameters.ParamByName('Geriiade').Value       := CurrGeriiade.Value ;

Qry1.Parameters.ParamByName('KayitTarihi').Value    :=
IntToStr(YearOf(Date))+'-'+IntToStr(MonthOf(Date))+'-'+IntToStr(DayOf(Date));

if ChkNereden.Checked = True Then
Qry1.Parameters.ParamByName('NeredenChk').Value   := '1'
Else
Qry1.Parameters.ParamByName('NeredenChk').Value   := '0';

if ChkNereye.Checked = True Then
Qry1.Parameters.ParamByName('NereyeChk').Value    := '1'
Else
Qry1.Parameters.ParamByName('NereyeChk').Value    := '0' ;

Qry1.Parameters.ParamByName('NeredenTarih').Value :=
IntToStr(YearOf(DtNereden.Date))+'-'+IntToStr(MonthOf(DtNereden.Date))+'-'+IntToStr(DayOf(DtNereden.Date));

Qry1.Parameters.ParamByName('NereyeTarih').Value  :=
IntToStr(YearOf(DtNereye.Date))+'-'+IntToStr(MonthOf(DtNereye.Date))+'-'+IntToStr(DayOf(DtNereye.Date));

Qry1.Parameters.ParamByName('MusCepTel1').Value   := Trim(CmbCepTel1.Text);
Qry1.Parameters.ParamByName('MusAdres').Value     := Trim(CmbAdres.Text);
Qry1.Parameters.ParamByName('Sirket').Value       := CmbSirket.Text;

if ChkObsiyon.Checked = True Then
Qry1.Parameters.ParamByName('Obsiyon').Value  := 'Var'
Else
Qry1.Parameters.ParamByName('Obsiyon').Value  :='Yok' ;

if ChkOnay.Checked = True Then
Qry1.Parameters.ParamByName('Onay').Value := 'Var'
Else
Qry1.Parameters.ParamByName('Onay').Value :='Yok' ;

Qry1.Parameters.ParamByName('ObsTarihi').Value    :=
IntToStr(YearOf(DtObsTarihi.Date))+'-'+IntToStr(MonthOf(DtObsTarihi.Date))+'-'+IntToStr(DayOf(DtObsTarihi.Date));

Qry1.Parameters.ParamByName('ObsSaati').Value     :=
IntToStr(HourOf(DtObsSaat.Time))+':'+IntToStr(MinuteOf(DtObsSaat.Time))+':'+IntToStr(SecondOf(DtObsSaat.Time));

Qry1.Parameters.ParamByName('Pnr').Value    := Trim(TxtPnr.Text);

Qry1.Parameters.ParamByName('CurrKullanilanKart').Value := CurrKullanilanKart.Value ;
Qry1.Parameters.ParamByName('HavaDenizYolu').Value      := Trim(CmbHavaDenizYolu.Text);
Qry1.Parameters.ParamByName('Kontrol').Value            := 'N' ;
Qry1.Parameters.ParamByName('aciklama').Value           := Trim(MemAciklama.Text) ;
Qry1.Parameters.ParamByName('Guncelleme').Value         := '0' ;
Qry1.Parameters.ParamByName('TarihDegisikligi').Value   := CurrTarihDegisikligi.Value ;


/////////////////////////////////  ÖDEME ///////////////////////////////////////

Qry1.Parameters.ParamByName('OdemeTarihi1').Value  :=
IntToStr(YearOf(DtB1.Date))+'-'+IntToStr(MonthOf(DtB1.Date))+'-'+IntToStr(DayOf(DtB1.Date));
Qry1.Parameters.ParamByName('OdemeTarihi2').Value  :=
IntToStr(YearOf(DtB2.Date))+'-'+IntToStr(MonthOf(DtB2.Date))+'-'+IntToStr(DayOf(DtB2.Date));
Qry1.Parameters.ParamByName('OdemeTarihi3').Value  :=
IntToStr(YearOf(DtB3.Date))+'-'+IntToStr(MonthOf(DtB3.Date))+'-'+IntToStr(DayOf(DtB3.Date));

Qry1.Parameters.ParamByName('OdemeSekli1').Value := CmbB1.Text ;
Qry1.Parameters.ParamByName('OdemeSekli2').Value := CmbB2.Text ;
Qry1.Parameters.ParamByName('OdemeSekli3').Value := CmbB3.Text ;

Qry1.Parameters.ParamByName('OdemeTutari1').Value := CurrB1.Value ;
Qry1.Parameters.ParamByName('OdemeTutari2').Value := CurrB2.Value ;
Qry1.Parameters.ParamByName('OdemeTutari3').Value := CurrB3.Value ;

Qry1.Parameters.ParamByName('KalanMiktar').Value  := CurrBKalan.Value ;


if ChkBOdendi.Checked = True Then
Qry1.Parameters.ParamByName('Odeme').Value    := 'Ödendi'
Else
Qry1.Parameters.ParamByName('Odeme').Value    := 'Ödenmedi'  ;

Qry1.Parameters.ParamByName('Kaydeden').Value := Kullanici ;

////////////////////////////////////////////////////////////////////////////////

Qry1.Parameters.ParamByName('Saat1').Value :=
IntToStr(HourOf(DtSaat1.Time))+':'+IntToStr(MinuteOf(DtSaat1.Time))+':'+IntToStr(SecondOf(DtSaat1.Time));
Qry1.Parameters.ParamByName('Saat2').Value :=
IntToStr(HourOf(DtSaat2.Time))+':'+IntToStr(MinuteOf(DtSaat2.Time))+':'+IntToStr(SecondOf(DtSaat2.Time));

Qry1.Parameters.ParamByName('UcusNo1').Value := TxtUcusNo1.Text ;
Qry1.Parameters.ParamByName('UcusNo2').Value := TxtUcusNo2.Text ;

Qry1.Parameters.ParamByName('Pnr2').Value := TxtPnr2.Text ;

Qry1.Parameters.ParamByName('Saat1x').Value :=
IntToStr(HourOf(DtSaat1x.Time))+':'+IntToStr(MinuteOf(DtSaat1x.Time))+':'+IntToStr(SecondOf(DtSaat1x.Time));
Qry1.Parameters.ParamByName('Saat2x').Value :=
IntToStr(HourOf(DtSaat2x.Time))+':'+IntToStr(MinuteOf(DtSaat2x.Time))+':'+IntToStr(SecondOf(DtSaat2x.Time));



Qry1.Prepared;
Qry1.ExecSQL;

if (CmbSirket.ItemIndex = -1) and (CmbSirket.Text<>'') then begin
TmpSql:= 'Select aciklama from sabitdegerler where kriterno=:kriterno and aciklama=:aciklama ';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('kriterno').Value := '4' ;
Qry1.Parameters.ParamByName('aciklama').Value := Trim(CmbSirket.Text) ;
Qry1.Prepared;
Qry1.Open;

if Qry1.RecordCount = 0 then begin
TmpSql := 'insert into sabitdegerler (kriterno,kriter,aciklama) Values(:kriterno,:kriter,:aciklama) ' ;
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('kriterno').Value  := '4';
Qry1.Parameters.ParamByName('kriter').Value    := 'Þirketler';
Qry1.Parameters.ParamByName('aciklama').Value  := Trim(CmbSirket.Text);
Qry1.Prepared;
Qry1.ExecSQL;
end;
end;

////////////////////////
TmpSql := 'Select Max(id) as d from rezervasyon';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Open;
TmpBiletSatisid := Qry1.FieldByName('d').AsString  ;
CmbAdi.Tag      := Qry1.FieldByName('d').AsInteger ;
////////////////////////


for i:=1  to AdvBiletYolcuListesi.RowCount-1 do begin

if (Trim(AdvBiletYolcuListesi.Cells[1,i])='') then Continue;

TmpSql := 'insert into BiletYolcuListesi ' +
' (Turu,Adi,Soyadi,Biletid,DogumTarihi) '+
' Values' +
' (:Turu,:Adi,:Soyadi,:Biletid,:DogumTarihi) ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Turu').Value   := AdvBiletYolcuListesi.Cells[0,i] ;
Qry1.Parameters.ParamByName('Adi').Value    := AdvBiletYolcuListesi.Cells[1,i];
Qry1.Parameters.ParamByName('Soyadi').Value := AdvBiletYolcuListesi.Cells[2,i];
Qry1.Parameters.ParamByName('Biletid').Value  := CmbAdi.Tag ;

if AdvBiletYolcuListesi.Cells[3,i]='' then  AdvBiletYolcuListesi.Cells[3,i] := DateToStr(date);
Qry1.Parameters.ParamByName('DogumTarihi').Value:=
IntToStr(YearOf(StrToDate(AdvBiletYolcuListesi.Cells[3,i])))+'-'+
IntToStr(MonthOf(StrToDate(AdvBiletYolcuListesi.Cells[3,i])))+'-'+
IntToStr(DayOf(StrToDate(AdvBiletYolcuListesi.Cells[3,i])));

Qry1.Prepared;
Qry1.ExecSQL;
end;
////////////////////////////////////////////////////////////////////////////////

{
////////////////////////////////////////////////////////////////////////////////

TmpSql:= 'insert into gelirgider (Adi,Soyadi,TelNo,Tarih,islemTuru,Borc,Alacak,ParaBirimi,idNo,Aciklama,KullanilanKart) '+
'Values(:Adi,:Soyadi,:TelNo,:Tarih,:islemTuru,:Borc,:Alacak,:ParaBirimi,:idNo,:Aciklama,:KullanilanKart)' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('Adi').Value      := CmbAdi.Text ;
Qry1.Parameters.ParamByName('Soyadi').Value   := CmbSoyadi.Text ;
Qry1.Parameters.ParamByName('TelNo').Value    := CmbCepTel1.Text ;

Qry1.Parameters.ParamByName('Tarih').Value    := IntToStr(YearOf(Date))+'-'+
                                                 IntToStr(MonthOf(Date))+'-'+
                                                 IntToStr(DayOf(Date));

Qry1.Parameters.ParamByName('islemTuru').Value := 'Bilet Satýþ' ;
Qry1.Parameters.ParamByName('Borc').Value      := CurrToplamFiyat.Value ;
Qry1.Parameters.ParamByName('Alacak').Value    := '0' ;

Qry1.Parameters.ParamByName('ParaBirimi').Value:= 'TL' ;
Qry1.Parameters.ParamByName('idNo').Value      := TmpBiletSatisid ;
Qry1.Parameters.ParamByName('Aciklama').Value  := Trim(MemAciklama.Text) ;
Qry1.Parameters.ParamByName('KullanilanKart').Value  := CmbKullanilanKart.Text ;
Qry1.Prepared;
Qry1.ExecSQL;

////////////////////////////////////////////////////////////////////////////////
}

MsgUyari('Kaydedildi  ...');

BtnBiletKaydet.Enabled   := False;
BtnBiletGuncelle.Enabled := True;
BtnBiletSil.Enabled      := True;
BtnBiletTemizle.Enabled  := False;


end;

procedure TFrmGelir.BtnBiletSilClick(Sender: TObject);
var TmpSql:String;
begin

if MsgOnay('Kaydý Silmek Ýstiyormusunuz ?') = False Then exit;

TmpSql := 'Delete from BiletYolcuListesi where Biletid=:Biletid';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Biletid').Value   := CmbAdi.Tag ;
Qry1.Prepared ;
Qry1.ExecSQL;


TmpSql:= 'Delete From rezervasyon where id=:id ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('id').Value  := CmbAdi.Tag;
Qry1.Prepared;
Qry1.ExecSQL;


{
TmpSql := 'Delete from gelirgider where idno=:idno';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('idno').Value   := CmbAdi.Tag ;
Qry1.Prepared ;
Qry1.ExecSQL;
}

MsgUyari('Kayýt Silindi ... ');
close;
end;


procedure TFrmGelir.BtnBiletTemizleClick(Sender: TObject);
begin

CmbAdi.Tag := 0;

AdvBiletYolcuListesi.ClearRows(1,AdvBiletYolcuListesi.RowCount-1);
AdvBiletYolcuListesi.RowCount := 2;

CmbUrunCesidi.ItemIndex    := -1;
CmbKullanilanKart.ItemIndex:= -1;
CmbSirket.ItemIndex        := -1;

CmbB1.ItemIndex := -1 ;
CmbB2.ItemIndex := -1 ;
CmbB3.ItemIndex := -1 ;


TxtNereden.Clear;
TxtNereye.Clear;

CurrNetFiyati.Value        := 0 ;
CurrKomisyon.Value         := 0 ;
CurrDigerKomisyon.Value    := 0 ;
CurrToplamFiyat.Value      := 0 ;
CurrGeriiade.Value         := 0 ;
CurrKullanilanKart.Value   := 0 ;
CurrTarihDegisikligi.Value := 0 ;

CurrB1.Value := 0 ;
CurrB2.Value := 0 ;
CurrB3.Value := 0 ;


DtObsSaat.Time   := Time ;
DtNereden.Date   := Date ;
DtNereye.Date    := Date ;
DtObsTarihi.Date := Date ;

ChkBiletiptali.Checked := False;
ChkNereden.Checked     := False;
ChkNereye.Checked      := False;
ChkYeniKayit.Checked   := False;
ChkOnay.Checked        := False;
ChkBOdendi.Checked      := False;
ChkObsiyon.Checked     := False;

MemAciklama.Clear;

DtB1.Date  := Date ;
DtB2.Date  := Date ;
DtB3.Date  := Date ;

DtSaat1.Time := Time ;
DtSaat2.Time := Time ;
TxtUcusNo1.Clear;
TxtUcusNo2.Clear;

FrmGelir.BtnBiletKaydet.Enabled   := True  ;
FrmGelir.BtnBiletGuncelle.Enabled := False ;
FrmGelir.BtnBiletSil.Enabled      := False ;




end;

procedure TFrmGelir.Button1Click(Sender: TObject);
begin
QRepFatura:=TQRepFatura.Create(Self);
QRepFatura.PreviewModal;
QRepFatura.Free;
end;

procedure TFrmGelir.Button2Click(Sender: TObject);
 var aPDF : TQRPDFDocumentFilter;
begin
aPDF := TQRPDFDocumentFilter.Create('d:\report.pdf');
//apdf.AddTTFont:=Tahoma;
//gtPDFEngine1.Create('d:\report.pdf');

//aPDF.TextEncoding := UnicodeEncoding ;
//aPDF.FontHandling := fhSubstitute;
//aPDF.AddTTFont('Tahoma');
//aPDF.TextOnTop := True ;

QRepVoucher:=TQRepVoucher.Create(Self);

QRepVoucher.ExportToFilter( aPDF );
//aPDF.Free;

QRepVoucher.Free;

end;

procedure TFrmGelir.Button3Click(Sender: TObject);
begin
QRepVoucher:=TQRepVoucher.Create(Self);
  QRepVoucher.QRLabel15.Caption := CmbAdi.Text +' '+CmbSoyadi.Text;
  gtPDFEngine1.FileName := 'd:\yawww.pdf';
  gtPDFEngine1.Preferences.ShowSetupDialog := false;
  gtQRExportInterface1.Engine := gtPDFEngine1;
  IgtDocumentEngine(gtQRExportInterface1.Engine).Preferences.OpenAfterCreate := False;
  gtQRExportInterface1.RenderDocument(QRepVoucher, false);

QRepVoucher.Free;
end;

procedure TFrmGelir.Button4Click(Sender: TObject);
var
  email      : TIdMessage;
  idSMTPGMail: TIdSMTP;
  idSSLGMail : TIdSSLIOHandlerSocketOpenSSL;
begin
  idSSLGMail                   := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  idSSLGMail.SSLOptions.Method := sslvTLSv1;
  idSSLGMail.SSLOptions.Mode   := sslmUnassigned;

  idSMTPGMail                  := TIdSMTP.Create(nil);
  idSMTPGMail.IOHandler        := idSSLGMail;
  idSMTPGMail.UseTLS           := utUseExplicitTLS;

  email                           := TIdMessage.Create(nil);
  email.From.Address              := 'ceremitravel@hotmail.co.uk';
  email.Recipients.EMailAddresses := 'mustafa0tuncay@gmail.com';
  email.Subject                   := 'sss';
  email.Body.Text                 := 'xcedcdrc';

  idSMTPGMail.Host     := 'smtp-mail.outlook.com';
  idSMTPGMail.Port     := 587;
  idSMTPGMail.UserName := 'ceremitravel@hotmail.co.uk';
  idSMTPGMail.Password := '812311axulu';


  idSMTPGMail.Connect;
  idSMTPGMail.Send(email);
  idSMTPGMail.Disconnect;

  email.Free;
  idSSLGMail.Free;
  idSMTPGMail.Free;
  Beep;


end;

procedure TFrmGelir.ChkBOdendiClick(Sender: TObject);
begin

if ChkBOdendi.Checked = True then CurrBKalan.Value  := 0
Else begin
CurrToplamFiyat.Value :=  CurrNetFiyati.Value + CurrKomisyon.Value + CurrDigerKomisyon.Value + CurrTarihDegisikligi.Value ;
CurrBKalan.Value := CurrToplamFiyat.Value - (CurrB1.Value + CurrB2.Value + CurrB3.Value);
end;

end;

procedure TFrmGelir.ChkNeredenClick(Sender: TObject);
begin
if ChkNereden.Checked = True then Panel7.Visible := True
Else
Panel7.Visible := False ;
end;

procedure TFrmGelir.ChkNereyeClick(Sender: TObject);
begin
if ChkNereye.Checked = True then Panel8.Visible := True
Else
Panel8.Visible := False ;

end;

procedure TFrmGelir.ChkOOdendiClick(Sender: TObject);
begin
if ChkOOdendi.Checked = True then CurrOKalan.Value  := 0
Else begin
CurrOtelToplamFiyat.Value := CurrOtelNetFiyat.Value + CurrOtelKomisyon.Value ;
CurrOKalan.Value := CurrOtelToplamFiyat.Value - (CurrO1.Value + CurrO2.Value + CurrO3.Value);end;
end;

procedure TFrmGelir.ChkTOdendiClick(Sender: TObject);
begin

if ChkTOdendi.Checked = True then CurrTKalan.Value  := 0
Else begin
CurrTransferToplamFiyat.Value := CurrTransferNetFiyat.Value + CurrTransferKomisyon.Value ;
CurrTKalan.Value := CurrTransferToplamFiyat.Value - (CurrT1.Value + CurrT2.Value + CurrT3.Value);
end;

end;

procedure TFrmGelir.ChkTuOdendiClick(Sender: TObject);
begin
if ChkTuOdendi.Checked = True then CurrTuKalan.Value  := 0
Else begin
CurrTurToplamFiyat.Value := CurrTurNetFiyat.Value + CurrTurKomisyon.Value ;
CurrTuKalan.Value := CurrTurToplamFiyat.Value - (CurrTu1.Value + CurrTu2.Value + CurrTu3.Value);
end;
end;

procedure TFrmGelir.CmbAdiChange(Sender: TObject);
begin

//exit;
if ChkYeniKayit.Checked = True then exit;


CmbSoyadi.ItemIndex  := CmbAdi.ItemIndex;
CmbCepTel1.ItemIndex := CmbAdi.ItemIndex;
CmbAdres.ItemIndex   := CmbAdi.ItemIndex;
CmbEmail.ItemIndex   := CmbAdi.ItemIndex;

end;

procedure TFrmGelir.CmbB1Change(Sender: TObject);
begin
if CmbB1.Text <> '' then DtB1.Date := Date ;
end;

procedure TFrmGelir.CmbB2Change(Sender: TObject);
begin
if CmbB2.Text <> '' then DtB2.Date := Date ;
end;

procedure TFrmGelir.CmbB3Change(Sender: TObject);
begin
if CmbB2.Text <> '' then DtB2.Date := Date ;
end;

procedure TFrmGelir.CmbKullanilanKartChange(Sender: TObject);
begin
//CurrKullanilanKart.Value := KullanilanKart(CmbKullanilanKart.Text);
end;

procedure TFrmGelir.CmbO1Change(Sender: TObject);
begin
if CmbO1.Text <> '' then DtO1.Date := Date ;
end;

procedure TFrmGelir.CmbO2Change(Sender: TObject);
begin
if CmbO2.Text <> '' then DtO2.Date := Date ;
end;

procedure TFrmGelir.CmbO3Change(Sender: TObject);
begin
if CmbO3.Text <> '' then DtO3.Date := Date ;
end;

procedure TFrmGelir.CmbOtelAdiChange(Sender: TObject);
begin

CmbOtelAdres.ItemIndex   := CmbOtelAdi.ItemIndex ;
CmbOtelEmail.ItemIndex   := CmbOtelAdi.ItemIndex ;
CmbOtelTelefon.ItemIndex := CmbOtelAdi.ItemIndex ;

end;

procedure TFrmGelir.CmbOtelKullanilanKartChange(Sender: TObject);
begin
CurrOtelKullanilanKart.Value := KullanilanKart(CmbOtelKullanilanKart.Text);
end;

procedure TFrmGelir.CmbSoyadiChange(Sender: TObject);
begin
//exit;
if ChkYeniKayit.Checked = True then exit;


CmbAdi.ItemIndex     := CmbSoyadi.ItemIndex;
CmbCepTel1.ItemIndex := CmbSoyadi.ItemIndex;
CmbAdres.ItemIndex   := CmbSoyadi.ItemIndex;
CmbEmail.ItemIndex   := CmbSoyadi.ItemIndex;

end;

procedure TFrmGelir.CmbT1Change(Sender: TObject);
begin
if CmbT1.Text <> '' then DtT1.Date := Date ;
end;

procedure TFrmGelir.CmbT2Change(Sender: TObject);
begin
if CmbT2.Text <> '' then DtT2.Date := Date ;
end;

procedure TFrmGelir.CmbT3Change(Sender: TObject);
begin
if CmbT3.Text <> '' then DtT3.Date := Date ;
end;

procedure TFrmGelir.CmbTransferKullanilanKartChange(Sender: TObject);
begin
CurrTransferKullanilanKart.Value := KullanilanKart(CmbTransferKullanilanKart.Text);
end;

procedure TFrmGelir.CmbTransferOtelAdiChange(Sender: TObject);
begin

CmbTransferOtelAdres.ItemIndex := CmbTransferOtelAdi.ItemIndex ;
CmbTransferOtelEmail.ItemIndex := CmbTransferOtelAdi.ItemIndex ;
CmbTransferOtelTel.ItemIndex   := CmbTransferOtelAdi.ItemIndex ;

end;

procedure TFrmGelir.CmbTu1Change(Sender: TObject);
begin
if CmbTu1.Text <> '' then DtTu1.Date := Date ;
end;

procedure TFrmGelir.CmbTu2Change(Sender: TObject);
begin
if CmbTu2.Text <> '' then DtTu2.Date := Date ;
end;

procedure TFrmGelir.CmbTu3Change(Sender: TObject);
begin
if CmbTu3.Text <> '' then DtTu3.Date := Date ;
end;

procedure TFrmGelir.CreateParams(var Params: TCreateParams);
begin
 inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;
end;

procedure TFrmGelir.CurrB1Change(Sender: TObject);
begin
CurrBKalan.Value := CurrToplamFiyat.Value - (CurrB1.Value + CurrB2.Value + CurrB3.Value)-CurrGeriiade.Value;
end;

procedure TFrmGelir.CurrB2Change(Sender: TObject);
begin
CurrBKalan.Value := CurrToplamFiyat.Value - (CurrB1.Value + CurrB2.Value + CurrB3.Value)-CurrGeriiade.Value;

end;

procedure TFrmGelir.CurrB3Change(Sender: TObject);
begin
CurrBKalan.Value := CurrToplamFiyat.Value - (CurrB1.Value + CurrB2.Value + CurrB3.Value)-CurrGeriiade.Value;

end;

procedure TFrmGelir.CurrBKalanChange(Sender: TObject);
begin
if CurrBKalan.Value = 0  then ChkBOdendi.Checked := True
Else ChkBOdendi.Checked := False;

end;

procedure TFrmGelir.CurrDigerKomisyonChange(Sender: TObject);
begin
CurrToplamFiyat.Value :=  CurrNetFiyati.Value + CurrKomisyon.Value + CurrDigerKomisyon.Value + CurrTarihDegisikligi.Value ;
CurrBKalan.Value := CurrToplamFiyat.Value - (CurrB1.Value + CurrB2.Value + CurrB3.Value);
end;

procedure TFrmGelir.CurrGeriiadeChange(Sender: TObject);
begin
CurrBKalan.Value :=  CurrToplamFiyat.Value - CurrGeriiade.Value ;
end;

procedure TFrmGelir.CurrKomisyonChange(Sender: TObject);
begin
CurrToplamFiyat.Value :=  CurrNetFiyati.Value + CurrKomisyon.Value + CurrDigerKomisyon.Value + CurrTarihDegisikligi.Value ;
CurrBKalan.Value := CurrToplamFiyat.Value - (CurrB1.Value + CurrB2.Value + CurrB3.Value);
end;

procedure TFrmGelir.CurrNetFiyatiChange(Sender: TObject);
begin
CurrToplamFiyat.Value :=  CurrNetFiyati.Value + CurrKomisyon.Value + CurrDigerKomisyon.Value + CurrTarihDegisikligi.Value ;
CurrBKalan.Value := CurrToplamFiyat.Value - (CurrB1.Value + CurrB2.Value + CurrB3.Value);
end;

procedure TFrmGelir.CurrO1Change(Sender: TObject);
begin
CurrOKalan.Value := CurrOtelToplamFiyat.Value - (CurrO1.Value + CurrO2.Value + CurrO3.Value);
end;

procedure TFrmGelir.CurrO2Change(Sender: TObject);
begin
CurrOKalan.Value := CurrOtelToplamFiyat.Value - (CurrO1.Value + CurrO2.Value + CurrO3.Value);
end;

procedure TFrmGelir.CurrO3Change(Sender: TObject);
begin
CurrOKalan.Value := CurrOtelToplamFiyat.Value - (CurrO1.Value + CurrO2.Value + CurrO3.Value);
end;

procedure TFrmGelir.CurrOKalanChange(Sender: TObject);
begin
if CurrOKalan.Value = 0  then ChkOOdendi.Checked := True
Else ChkOOdendi.Checked := False;
end;

procedure TFrmGelir.CurrOtelKomisyonChange(Sender: TObject);
begin
CurrOtelToplamFiyat.Value := CurrOtelNetFiyat.Value + CurrOtelKomisyon.Value ;
CurrOKalan.Value := CurrOtelToplamFiyat.Value - (CurrO1.Value + CurrO2.Value + CurrO3.Value);
end;

procedure TFrmGelir.CurrOtelNetFiyatChange(Sender: TObject);
begin
CurrOtelToplamFiyat.Value := CurrOtelNetFiyat.Value + CurrOtelKomisyon.Value ;
CurrOKalan.Value := CurrOtelToplamFiyat.Value - (CurrO1.Value + CurrO2.Value + CurrO3.Value);
end;

procedure TFrmGelir.CurrT1Change(Sender: TObject);
begin
CurrTKalan.Value := CurrTransferToplamFiyat.Value - (CurrT1.Value + CurrT2.Value + CurrT3.Value);
end;

procedure TFrmGelir.CurrT2Change(Sender: TObject);
begin
CurrTKalan.Value := CurrTransferToplamFiyat.Value - (CurrT1.Value + CurrT2.Value + CurrT3.Value);
end;

procedure TFrmGelir.CurrT3Change(Sender: TObject);
begin
CurrTKalan.Value := CurrTransferToplamFiyat.Value - (CurrT1.Value + CurrT2.Value + CurrT3.Value);
end;

procedure TFrmGelir.CurrTarihDegisikligiChange(Sender: TObject);
begin
CurrToplamFiyat.Value :=  CurrNetFiyati.Value + CurrKomisyon.Value + CurrDigerKomisyon.Value + CurrTarihDegisikligi.Value ;
CurrBKalan.Value := CurrToplamFiyat.Value - (CurrB1.Value + CurrB2.Value + CurrB3.Value);
end;

procedure TFrmGelir.CurrTKalanChange(Sender: TObject);
begin
if CurrTKalan.Value = 0  then ChkTOdendi.Checked := True
Else ChkTOdendi.Checked := False;
end;

procedure TFrmGelir.CurrToplamFiyatChange(Sender: TObject);
begin
//CurrKalanMiktar.Value := CurrToplamFiyat.Value - CurrOdenenMiktar.Value ;
end;

procedure TFrmGelir.CurrTransferKomisyonChange(Sender: TObject);
begin
CurrTransferToplamFiyat.Value := CurrTransferNetFiyat.Value + CurrTransferKomisyon.Value ;
CurrTKalan.Value := CurrTransferToplamFiyat.Value - (CurrT1.Value + CurrT2.Value + CurrT3.Value);
end;

procedure TFrmGelir.CurrTransferNetFiyatChange(Sender: TObject);
begin
CurrTransferToplamFiyat.Value := CurrTransferNetFiyat.Value + CurrTransferKomisyon.Value ;
CurrTKalan.Value := CurrTransferToplamFiyat.Value - (CurrT1.Value + CurrT2.Value + CurrT3.Value);
end;

procedure TFrmGelir.CurrTu1Change(Sender: TObject);
begin
CurrTuKalan.Value := CurrTurToplamFiyat.Value - (CurrTu1.Value + CurrTu2.Value + CurrTu3.Value);
end;

procedure TFrmGelir.CurrTu2Change(Sender: TObject);
begin
CurrTuKalan.Value := CurrTurToplamFiyat.Value - (CurrTu1.Value + CurrTu2.Value + CurrTu3.Value);
end;

procedure TFrmGelir.CurrTu3Change(Sender: TObject);
begin
CurrTuKalan.Value := CurrTurToplamFiyat.Value - (CurrTu1.Value + CurrTu2.Value + CurrTu3.Value);
end;

procedure TFrmGelir.CurrTuKAlanChange(Sender: TObject);
begin
if CurrTuKalan.Value = 0  then ChkTuOdendi.Checked := True
Else ChkTuOdendi.Checked := False;
end;

procedure TFrmGelir.CurrTurKomisyonChange(Sender: TObject);
begin
CurrTurToplamFiyat.Value := CurrTurNetFiyat.Value + CurrTurKomisyon.Value ;
CurrTuKalan.Value := CurrTurToplamFiyat.Value - (CurrTu1.Value + CurrTu2.Value + CurrTu3.Value);
end;

procedure TFrmGelir.CurrTurNetFiyatChange(Sender: TObject);
begin
CurrTurToplamFiyat.Value := CurrTurNetFiyat.Value + CurrTurKomisyon.Value ;
CurrTuKalan.Value := CurrTurToplamFiyat.Value - (CurrTu1.Value + CurrTu2.Value + CurrTu3.Value);
end;

procedure TFrmGelir.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FrmGelir:= nil;

end;

procedure TFrmGelir.FormCreate(Sender: TObject);
begin
DtObsSaat.Time      := Time ;
Dt1NeredenSaat.Time := Time ;
Dt1NereyeSaat.Time  := Time ;
Dt1inisSaati.Time   := Time ;
Dt2NeredenSaat.Time := Time ;
Dt2NereyeSaat.Time  := Time ;
Dt2inisSaati.Time   := Time ;
DtBasSaat.Time      := Time ;
DtBitSaat.Time      := Time ;

DtB1.Date  := Date ;
DtB2.Date  := Date ;
DtB3.Date  := Date ;
DtO1.Date  := Date ;
DtO2.Date  := Date ;
DtO3.Date  := Date ;
DtT1.Date  := Date ;
DtT2.Date  := Date ;
DtT3.Date  := Date ;
DtTu1.Date := Date ;
DtTu2.Date := Date ;
DtTu3.Date := Date ;
DtGirisTarihi.Date  := Date ;
DtCikisTarihi.Date  := Date ;
DtNereden.Date      := Date ;
DtNereye.Date       := Date ;
DtObsTarihi.Date    := Date ;
Dt1NeredenTarih.Date:= Date ;
Dt1NereyeTarih.Date := Date ;
Dt2NeredenTarih.Date:= Date ;
Dt2NereyeTarih.Date := Date ;
DtBasTarih.Date     := Date ;
DtBitTarih.Date     := Date ;

MusteriGetir;
TransferFirmaGetir;
SabitDegerGetir;
OtelGetir;
TurFirmaGetir;


TabBiletSatis.TabVisible := False;
TabOtelSatis.TabVisible  := False;
TabTransfer.TabVisible   := False;
TabTur.TabVisible        := False;
end;

procedure TFrmGelir.FormShow(Sender: TObject);
begin
DtObsSaat.Format      := 'HH:mm';
Dt1NeredenSaat.Format := 'HH:mm';
Dt1NereyeSaat.Format  := 'HH:mm';
Dt1inisSaati.Format   := 'HH:mm';
Dt2NeredenSaat.Format := 'HH:mm';
Dt2NereyeSaat.Format  := 'HH:mm';
Dt2inisSaati.Format   := 'HH:mm';

if pubodemeonay<>'Y' Then begin
GroupBox1.Enabled := False;
GroupBox2.Enabled := False;
GroupBox3.Enabled := False;
GroupBox4.Enabled := False;
end;


if pubguncellemeonay<>'Y' Then begin
BtnTurGuncelle.Enabled:=False;
BtnBiletGuncelle.Enabled:=False;
BtnOtelGuncelle.Enabled:=False;
BtnTransferGuncelle.Enabled:=False;
end;

if pubsilmeonay<>'Y' Then begin
BtnTurSil.Enabled:=False;
BtnBiletSil.Enabled:=False;
BtnOtelSil.Enabled:=False;
BtnTransferSil.Enabled:=False;
end;



end;

procedure TFrmGelir.Image1Click(Sender: TObject);
begin

QRepVoucher  := TQRepVoucher.Create(Self);

 QRepOtel     := TQRepOtel.Create(Self);
 QRepBilet    := TQRepBilet.Create(Self);
 QRepTransfer := TQRepTransfer.Create(Self);
 QRepTur      := TQRepTur.Create(Self);




 Vouchericerik;

  gtPDFEngine1.FileName := GetCurrentDir+'\Voucher.Pdf';
  gtPDFEngine1.Preferences.ShowSetupDialog := false;
  gtQRExportInterface1.Engine := gtPDFEngine1;
  IgtDocumentEngine(gtQRExportInterface1.Engine).Preferences.OpenAfterCreate := False;
  gtQRExportInterface1.RenderDocument(QRCompositeReport1, false);

QRepVoucher.Free;
QRepOtel.Free;
QRepBilet.Free;
QRepTransfer.Free;
QRepTur.Free;


MemVoucher.Clear;
MemVoucher.Text := CmbOtelEmail.Text ;
MemVoucher.Lines.SaveToFile(GetCurrentDir+'\Voucher.Txt');

ShellExecute(Handle,'open',PChar(GetCurrentDir+'\email.exe'),nil,nil,SW_SHOWNORMAL);

end;

procedure TFrmGelir.imgGuncelleClick(Sender: TObject);
var TmpSql:String;
begin

if CmbAdi.Text='' then begin
MsgUyari('Lütfen Müþteri/Þirket Adýný Giriniz ...');
exit;
end;

if  CmbSoyadi.Text='' then begin
MsgUyari('Lütfen Müþteri/Þirket Soyadýný Giriniz ...');
exit;
end;

TmpSql:= 'Update  SatisKarti Set '+
'Aciklama=:Aciklama,'+
'BiletSatis=:BiletSatis,'+
'OtelSatis=:OtelSatis,'+
'Transfer=:Transfer, '+
'Guncelleyen=:Guncelleyen '+


' where id=:id ' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('Aciklama').Value := Trim(MemKartAciklama.Text) ;

if ChkBiletSatis.Checked = True then
Qry1.Parameters.ParamByName('BiletSatis').Value := 'Var'
Else
Qry1.Parameters.ParamByName('BiletSatis').Value := 'Yok';

if ChkOtelSatis.Checked = True then
Qry1.Parameters.ParamByName('OtelSatis').Value := 'Var'
Else
Qry1.Parameters.ParamByName('OtelSatis').Value := 'Yok';

if ChkTransfer.Checked = True then
Qry1.Parameters.ParamByName('Transfer').Value := 'Var'
Else
Qry1.Parameters.ParamByName('Transfer').Value := 'Yok';

Qry1.Parameters.ParamByName('Guncelleyen').Value := Kullanici ;

Qry1.Parameters.ParamByName('id').Value := PubKartNo ;

Qry1.Prepared;
Qry1.ExecSQL;


if ChkBiletSatis.Checked = True then  TabBiletSatis.TabVisible := True
Else TabBiletSatis.TabVisible := False;

if ChkOtelSatis.Checked = True then TabOtelSatis.TabVisible := True
Else TabOtelSatis.TabVisible := False;

if ChkTransfer.Checked = True then TabTransfer.TabVisible := True
Else TabTransfer.TabVisible := False;

if ChkTur.Checked = True then TabTur.TabVisible := True
Else TabTur.TabVisible := False;

ImgKaydet.Enabled := False;
lblKaydet.Enabled := False;

imgGuncelle.Enabled := True;
LblGuncelle.Enabled := True;

imgSil.Enabled := True;
LblSil.Enabled := True;

MsgUyari('Güncellendi  ...');
end;

procedure TFrmGelir.imgSilClick(Sender: TObject);
var TmpSql:String;
begin
if MsgOnay('Kaydý silmek istediðinizden eminmisiniz ?... ')= False Then exit;

TmpSql:= 'Delete From SatisKarti where id=:id ';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('id').Value  := PubKartNo;
Qry1.Prepared;
Qry1.ExecSQL;

TmpSql:= 'Delete From Rezervasyon where KartNo=:KartNo ';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('KartNo').Value  := PubKartNo;
Qry1.Prepared;
Qry1.ExecSQL;

TmpSql:= 'Delete From OtelSatis where KartNo=:KartNo ';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('KartNo').Value  := PubKartNo;
Qry1.Prepared;
Qry1.ExecSQL;

TmpSql:= 'Delete From Transfer where KartNo=:KartNo ';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('KartNo').Value  := PubKartNo;
Qry1.Prepared;
Qry1.ExecSQL;

Close;

end;

procedure TFrmGelir.imgYazdirClick(Sender: TObject);

begin



if TmpComposite<>0 then  begin
Showmessage('Rapor Açýk  ... ') ;
Exit;
 QRepVoucher.Free;
 QRepOtel.Free;
 QRepBilet.Free;
 QRepTransfer.Free;
 QRepTur.Free;

// QRCompositeReport1.destroy;


end;



TmpComposite:=1;


 QRepVoucher  := TQRepVoucher.Create(Self);
 QRepOtel     := TQRepOtel.Create(Self);
 QRepBilet    := TQRepBilet.Create(Self);
 QRepTransfer := TQRepTransfer.Create(Self);
 QRepTur      := TQRepTur.Create(Self);

Vouchericerik;

QRCompositeReport1.Preview;

 QRepVoucher.Free;
 QRepOtel.Free;
 QRepBilet.Free;
 QRepTransfer.Free;
 QRepTur.Free;

TmpComposite := 0 ;




end;

procedure TFrmGelir.imgYeniClick(Sender: TObject);
begin
CmbOtelAdi.ItemIndex     := -1;
CmbOtelAdres.ItemIndex   := -1;
CmbOtelTelefon.ItemIndex := -1;
CmbOtelEmail.ItemIndex   := -1;

ChkBiletSatis.Checked := False;
ChkTransfer.Checked   := False;
ChkOtelSatis.Checked  := False;

MemKartAciklama.Clear;

PubKartNo:='0';

TabBiletSatis.TabVisible := False;
TabOtelSatis.TabVisible  := False;
TabTransfer.TabVisible   := False;


ImgKaydet.Enabled := True;
lblKaydet.Enabled := True;

imgGuncelle.Enabled := False;
LblGuncelle.Enabled := False;

imgSil.Enabled := False;
LblSil.Enabled := False;

OtelGetir;
end;

function TFrmGelir.KullanilanKart(TmpKullanilanKart: String): Currency;
var TmpSql:String;
TmpHarcama,TmpYatirim:Currency;
begin

TmpSql := 'Select Sum(Borc) as TB from gelirgider where KullanilanKart=:KullanilanKart';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('KullanilanKart').Value := TmpKullanilanKart ;
Qry1.Prepared;
Qry1.Open;
TmpHarcama:=Qry1.FieldByName('TB').AsCurrency ;


//////////////////////////////////////////
TmpSql := 'Select Sum(miktar) as M from kredikartiyatirim where kartadi=:kartadi' ;
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('kartadi').Value := TmpKullanilanKart ;
Qry1.Prepared;
Qry1.Open;
TmpYatirim := Qry1.FieldByName('M').AsCurrency;

Result := TmpHarcama-TmpYatirim ;
end;


procedure TFrmGelir.ImgKaydetClick(Sender: TObject);
var TmpSql:String;
begin

if CmbAdi.Text='' then begin
MsgUyari('Lütfen Müþteri/Þirket Adýný Giriniz ...');
exit;
end;

if  CmbSoyadi.Text='' then begin
MsgUyari('Lütfen Müþteri/Þirket Soyadýný Giriniz ...');
exit;
end;


TmpSql:= 'insert into SatisKarti (KayitTarihi,Adi,Soyadi,TelNo,Adres,Aciklama,BiletSatis,OtelSatis,Transfer,Tur,Kaydeden) '+
'Values(:KayitTarihi,:Adi,:Soyadi,:TelNo,:Adres,:Aciklama,:BiletSatis,:OtelSatis,:Transfer,:Tur,:Kaydeden)' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('KayitTarihi').Value := IntToStr(YearOf(Date))+'-'+
                                                    IntToStr(MonthOf(Date))+'-'+
                                                    IntToStr(DayOf(Date));

Qry1.Parameters.ParamByName('Adi').Value      := CmbAdi.Text     ;
Qry1.Parameters.ParamByName('Soyadi').Value   := CmbSoyadi.Text  ;
Qry1.Parameters.ParamByName('TelNo').Value    := CmbCepTel1.Text ;
Qry1.Parameters.ParamByName('Adres').Value    := CmbAdres.Text   ;

Qry1.Parameters.ParamByName('Aciklama').Value := Trim(MemKartAciklama.Text) ;

if ChkBiletSatis.Checked = True then
Qry1.Parameters.ParamByName('BiletSatis').Value := 'Var'
Else
Qry1.Parameters.ParamByName('BiletSatis').Value := 'Yok';

if ChkOtelSatis.Checked = True then
Qry1.Parameters.ParamByName('OtelSatis').Value := 'Var'
Else
Qry1.Parameters.ParamByName('OtelSatis').Value := 'Yok';

if ChkTransfer.Checked = True then
Qry1.Parameters.ParamByName('Transfer').Value := 'Var'
Else
Qry1.Parameters.ParamByName('Transfer').Value := 'Yok';

if ChkTur.Checked = True then
Qry1.Parameters.ParamByName('Tur').Value := 'Var'
Else
Qry1.Parameters.ParamByName('Tur').Value := 'Yok';

Qry1.Parameters.ParamByName('Kaydeden').Value := Kullanici ;

Qry1.Prepared;
Qry1.ExecSQL;

////////////////////////
TmpSql := 'Select Max(id) as d from SatisKarti';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Open;
PubKartNo:= Qry1.FieldByName('d').AsString ;
////////////////////////


if ChkBiletSatis.Checked = True then  TabBiletSatis.TabVisible := True
Else TabBiletSatis.TabVisible := False;

if ChkOtelSatis.Checked = True then TabOtelSatis.TabVisible := True
Else TabOtelSatis.TabVisible := False;

if ChkTransfer.Checked = True then TabTransfer.TabVisible := True
Else TabTransfer.TabVisible := False;

if ChkTur.Checked = True then TabTur.TabVisible := True
Else TabTur.TabVisible := False;



ImgKaydet.Enabled := False;
lblKaydet.Enabled := False;

imgGuncelle.Enabled := False;
LblGuncelle.Enabled := False;

imgSil.Enabled := False;
LblSil.Enabled := False;


end;

procedure TFrmGelir.MusteriGetir;
var i:integer;
TmpSql:String;
begin

CmbAdi.Clear;
CmbSoyadi.Clear;
CmbCepTel1.Clear;
CmbAdres.Clear;
CmbEmail.Clear;


TmpSql:= 'Select Adi,Soyadi,CepTel1,Adres,Email from musteri order by adi,soyadi' ;
dm.Qry5.Close;
dm.qry5.SQL.Clear;
dm.qry5.SQL.Add(TmpSql);
dm.qry5.Open;

dm.Qry5.First;
for i:=0 to dm.Qry5.RecordCount-1 do begin
CmbAdi.Items.Add(dm.Qry5.FieldByName('Adi').AsString);
CmbSoyadi.Items.Add(dm.Qry5.FieldByName('Soyadi').AsString);
CmbCepTel1.Items.Add(dm.Qry5.FieldByName('CepTel1').AsString);
CmbAdres.Items.Add(dm.Qry5.FieldByName('Adres').AsString);
CmbEmail.Items.Add(dm.Qry5.FieldByName('Email').AsString);
dm.Qry5.Next;
end;


end;

procedure TFrmGelir.MusteriGetir2;
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
FrmMusteriKayit.TxtKimlikNo.Text   := Qry1.FieldByName('KimlikNo').AsString;

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


FrmMusteriKayit.BtnKaydet.Enabled   := False;
FrmMusteriKayit.BtnGuncelle.Enabled := True;
FrmMusteriKayit.BtnSil.Enabled      := True;

end;


procedure TFrmGelir.MusteriKaydet;
var TmpSql:string;
begin


TmpSql := 'insert into musteri (Adi,Soyadi,Ceptel1,Adres) ' +
' Values' +
'(:Adi,:Soyadi,:Ceptel1,:Adres) ' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Adi').Value        := Trim(CmbAdi.Text);
Qry1.Parameters.ParamByName('Soyadi').Value     := Trim(CmbSoyadi.Text);
Qry1.Parameters.ParamByName('CepTel1').Value    := Trim(CmbCepTel1.Text);
Qry1.Parameters.ParamByName('Adres').Value      := Trim(CmbAdres.Text);
Qry1.Prepared;
Qry1.ExecSQL;


end;

procedure TFrmGelir.OtelGetir;
var i:integer;
TmpSql:String;
begin

CmbOtelAdi.Clear;
CmbOtelTelefon.Clear;
CmbOtelAdres.Clear;
CmbOtelEmail.Clear;

CmbTransferOtelAdi.Clear;
CmbTransferOtelTel.Clear;
CmbTransferOtelAdres.Clear;
CmbTransferOtelEmail.Clear;


{
TmpSql:= 'Select Adi,Telefon,Adres,Email from otel order by adi ' ;
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Open;
}

dm.Qry7.First;
for i:=0 to dm.Qry7.RecordCount-1 do begin
CmbOtelAdi.Items.Add(dm.Qry7.FieldByName('Adi').AsString);
CmbOtelTelefon.Items.Add(dm.Qry7.FieldByName('Telefon').AsString);
CmbOtelAdres.Items.Add(dm.Qry7.FieldByName('Adres').AsString);
CmbOtelEmail.Items.Add(dm.Qry7.FieldByName('Email').AsString);

CmbTransferOtelAdi.Items.Add(dm.Qry7.FieldByName('Adi').AsString);
CmbTransferOtelTel.Items.Add(dm.Qry7.FieldByName('Telefon').AsString);
CmbTransferOtelAdres.Items.Add(dm.Qry7.FieldByName('Adres').AsString);
CmbTransferOtelEmail.Items.Add(dm.Qry7.FieldByName('Email').AsString);


dm.Qry7.Next;
end;


end;

procedure TFrmGelir.OtelTemizle;
begin


AdvKisiler.ClearRows(1,AdvKisiler.RowCount-1);
AdvKisiler.RowCount := 2;

CmbO1.ItemIndex := -1;
CmbO2.ItemIndex := -1;
CmbO3.ItemIndex := -1;
CurrO1.Value := 0;
CurrO2.Value := 0;
CurrO3.Value := 0;
DtO1.Date := Date ;
DtO2.Date := Date ;
DtO3.Date := Date ;
CurrOKalan.Value := 0;
ChkOOdendi.Checked := False;


CmbOtelAdi.ItemIndex     := -1;
CmbOtelAdres.ItemIndex   := -1;
CmbOtelTelefon.ItemIndex := -1;
CmbOtelEmail.ItemIndex   := -1;

CmbOtelKullanilanKart.ItemIndex:= -1;

Txtilgili.Clear ;
MemOtelAciklama.Clear;


DtGirisTarihi.Date := Date ;
DtCikisTarihi.Date := Date ;

CurrOdaSayisi.Value := 0;
TxtKonaklamaSekli.Clear;
CmbOdaKategori.ItemIndex := -1 ;
CurrOtelToplamFiyat.Value := 0 ;
CurrOtelKullanilanKart.Value:= 0 ;
CurrOtelNetFiyat.Value := 0;
CurrOtelKomisyon.Value := 0;


CmbOtelAdi.Tag:=0;
end;

procedure TFrmGelir.QRCompositeReport1AddReports(Sender: TObject);
begin
with QRCompositeReport1.Reports do
 begin
   Add(QRepVoucher);
if chkotelsatis.checked=True Then   Add(QRepOtel);
if chkbiletsatis.checked=True Then   Add(QRepBilet);
if chktransfer.checked=True Then   Add(QRepTransfer);
if chktur.checked=True Then   Add(QRepTur);
end;

end;

procedure TFrmGelir.RbCiftYonClick(Sender: TObject);
begin
if RbCiftYon.Checked = False  then begin
GrpTransfer1.Visible := True  ;
GrpTransfer2.Visible := False ;

TxtT2Nereden.Clear  ;
TxtT2Nereye.Clear   ;
TxtT2UcusKodu.Clear ;
Dt2inisSaati.Time    := Time ;
Dt2NeredenTarih.Date := Date ;
Dt2NeredenSaat.Time  := Time ;
Dt2NereyeTarih.Date  := Date ;
Dt2NereyeSaat.Time   := Time ;

end;

if RbCiftYon.Checked = True  then begin
GrpTransfer1.Visible := True  ;
GrpTransfer2.Visible := True ;
end;

end;

procedure TFrmGelir.RbTekYonClick(Sender: TObject);
begin

if RbTekYon.Checked = True  then begin
GrpTransfer1.Visible := True  ;
GrpTransfer2.Visible := False ;

TxtT2Nereden.Clear  ;
TxtT2Nereye.Clear   ;
TxtT2UcusKodu.Clear ;
Dt2inisSaati.Time    := Time ;
Dt2NeredenTarih.Date := Date ;
Dt2NeredenSaat.Time  := Time ;
Dt2NereyeTarih.Date  := Date ;
Dt2NereyeSaat.Time   := Time ;
end;

if RbTekYon.Checked = False  then begin
GrpTransfer1.Visible := True  ;
GrpTransfer2.Visible := True ;
end;

end;



procedure TFrmGelir.ReportExport(aReport: TQuickRep;
  const aFileName: TFileName);
var Pdf: TQRPDFDocumentFilter;
     aMeta: TMetaFile;
     i: integer;
begin
{
  Pdf := TQRPDFDocumentFilter.Create;
  try
    aReport.Prepare;
    for i := 1 to aReport.QRPrinter.PageCount do begin
      aMeta := aReport.QRPrinter.GetPage(i);
      try
        Pdf.DefaultPageWidth := MulDiv(aMeta.Width,72,Pdf.ScreenLogPixels);
        Pdf.DefaultPageHeight := MulDiv(aMeta.Height,72,Pdf.ScreenLogPixels);
        Pdf.AddPage;
        // draw the page content
        Pdf.Canvas.RenderMetaFile(aMeta,1,0,0);
      finally
        aMeta.Free;
      end;
    end;
    Pdf.SaveToFile(aFileName);
  finally
    Pdf.free;
  end;
  }
end;

procedure TFrmGelir.SabitDegerGetir;
var TmpSql:String;
i:integer;
begin

CmbUrunCesidi.Clear;
CmbTurUrunCesidi.Clear;

CmbB1.Clear;
CmbB2.Clear;
CmbB3.Clear;

CmbO1.Clear;
CmbO2.Clear;
CmbO3.Clear;

CmbT1.Clear;
CmbT2.Clear;
CmbT3.Clear;

CmbTu1.Clear;
CmbTu2.Clear;
CmbTu3.Clear;


CmbKullanilanKart.Clear;
CmbSirket.Clear;
CmbHavaDenizYolu.Clear;
CmbTurKullanilanKart.Clear;

{
TmpSql:= 'Select aciklama from sabitdegerler where kriterno=:kriterno order by aciklama';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('kriterno').Value := '0' ;
Qry1.Prepared;
Qry1.Open;
}
Dm.Qry9.first;

for i:=0 to Dm.Qry9.RecordCount-1  do begin
CmbUrunCesidi.Items.Add(Dm.Qry9.FieldByName('aciklama').AsString);
CmbTurUrunCesidi.Items.Add(Dm.Qry9.FieldByName('aciklama').AsString);
Dm.Qry9.Next;
end;


{
TmpSql:= 'Select aciklama from sabitdegerler where kriterno=:kriterno order by aciklama';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('kriterno').Value := '1' ;
Qry1.Prepared;
Qry1.Open;
}

CmbB1.Items.Add('');
CmbB2.Items.Add('');
CmbB3.Items.Add('');

CmbO1.Items.Add('');
CmbO2.Items.Add('');
CmbO3.Items.Add('');

CmbT1.Items.Add('');
CmbT2.Items.Add('');
CmbT3.Items.Add('');

CmbTu1.Items.Add('');
CmbTu2.Items.Add('');
CmbTu3.Items.Add('');

Dm.Qry10.first;
for i:=0 to Dm.Qry10.RecordCount-1  do begin

CmbB1.Items.Add(Dm.Qry10.FieldByName('aciklama').AsString);
CmbB2.Items.Add(Dm.Qry10.FieldByName('aciklama').AsString);
CmbB3.Items.Add(Dm.Qry10.FieldByName('aciklama').AsString);

CmbO1.Items.Add(Dm.Qry10.FieldByName('aciklama').AsString);
CmbO2.Items.Add(Dm.Qry10.FieldByName('aciklama').AsString);
CmbO3.Items.Add(Dm.Qry10.FieldByName('aciklama').AsString);

CmbT1.Items.Add(Dm.Qry10.FieldByName('aciklama').AsString);
CmbT2.Items.Add(Dm.Qry10.FieldByName('aciklama').AsString);
CmbT3.Items.Add(Dm.Qry10.FieldByName('aciklama').AsString);

CmbTu1.Items.Add(Dm.Qry10.FieldByName('aciklama').AsString);
CmbTu2.Items.Add(Dm.Qry10.FieldByName('aciklama').AsString);
CmbTu3.Items.Add(Dm.Qry10.FieldByName('aciklama').AsString);

Dm.Qry10.Next;
end;


{
TmpSql:= 'Select aciklama from sabitdegerler where kriterno=:kriterno order by aciklama';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('kriterno').Value := '2' ;
Qry1.Prepared;
Qry1.Open;
}
Dm.Qry11.first;
for i:=0 to Dm.Qry11.RecordCount-1  do begin
CmbKullanilanKart.Items.Add(Dm.Qry11.FieldByName('aciklama').AsString);
CmbOtelKullanilanKart.Items.Add(Dm.Qry11.FieldByName('aciklama').AsString);
CmbTransferKullanilanKart.Items.Add(Dm.Qry11.FieldByName('aciklama').AsString);
CmbTurKullanilanKart.Items.Add(Dm.Qry11.FieldByName('aciklama').AsString);
Dm.Qry11.Next;
end;

{
TmpSql:= 'Select aciklama from sabitdegerler where kriterno=:kriterno order by aciklama';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('kriterno').Value := '4' ;
Qry1.Prepared;
Qry1.Open;
}

Dm.Qry12.first;

for i:=0 to Dm.Qry12.RecordCount-1  do begin
CmbSirket.Items.Add(Dm.Qry12.FieldByName('aciklama').AsString);
Dm.Qry12.Next;
end;


{
TmpSql:= 'Select aciklama from sabitdegerler where kriterno=:kriterno order by aciklama';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('kriterno').Value := '5' ;
Qry1.Prepared;
Qry1.Open;
}

Dm.Qry13.first;
for i:=0 to Dm.Qry13.RecordCount-1  do begin
CmbHavaDenizYolu.Items.Add(Dm.Qry13.FieldByName('aciklama').AsString);
Dm.Qry13.Next;
end;



end;

procedure TFrmGelir.TransferFirmaGetir;
var i:integer;
TmpSql:String;
begin

CmbTransferFirma.Clear;

{
TmpSql:= 'Select Adi from TransferFirma order by adi' ;
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Open;
}

dm.Qry6.First;
for i:=0 to dm.Qry6.RecordCount-1 do begin
CmbTransferFirma.Items.Add(dm.Qry6.FieldByName('Adi').AsString);
dm.Qry6.Next;
end;


end;



procedure TFrmGelir.TransferTemizle;
begin

AdvTransferYolcuListesi.ClearRows(1,AdvTransferYolcuListesi.RowCount-1);
AdvTransferYolcuListesi.RowCount := 2;

CmbT1.ItemIndex := -1;
CmbT2.ItemIndex := -1;
CmbT3.ItemIndex := -1;
CurrT1.Value := 0;
CurrT2.Value := 0;
CurrT3.Value := 0;
DtT1.Date := Date ;
DtT2.Date := Date ;
DtT3.Date := Date ;
CurrTKalan.Value := 0;
ChkTOdendi.Checked := False;


TxtTransferAdi.Clear    ;
TxtTransferSoyadi.Clear ;
TxtTransferCepNo.Clear  ;

CmbTransferOtelAdi.ItemIndex   := -1 ;
CmbTransferOtelTel.ItemIndex   := -1 ;
CmbTransferOtelAdres.ItemIndex := -1 ;
CmbTransferOtelEmail.ItemIndex := -1 ;
CmbTransferKullanilanKart.ItemIndex:= -1;

CmbTransferFirma.ItemIndex := -1 ;

CurrKisiSayi.Value := 0 ;
CmbArac.ItemIndex := -1 ;
CurrTransferToplamFiyat.Value := 0 ;
CurrTransferKullanilanKart.Value:= 0 ;
CurrTransferNetFiyat.Value:= 0 ;
CurrTransferKomisyon.Value:= 0 ;

TxtT1Nereden.Clear  ;
TxtT1Nereye.Clear   ;
TxtT1UcusKodu.Clear ;
TxtT2Nereden.Clear  ;
TxtT2Nereye.Clear   ;
TxtT2UcusKodu.Clear ;

Dt1NeredenTarih.Date := Date ;
Dt1NeredenSaat.Time  := Time ;
Dt1inisSaati.Time    := Time ;
Dt2inisSaati.Time    := Time ;
Dt2NeredenTarih.Date := Date ;
Dt2NeredenSaat.Time  := Time ;
Dt1NereyeTarih.Date  := Date ;
Dt1NereyeSaat.Time   := Time ;
Dt2NereyeTarih.Date  := Date ;
Dt2NereyeSaat.Time   := Time ;

TxtTransferAdi.Tag:=0;

end;

procedure TFrmGelir.TurFirmaGetir;
var i:integer;
TmpSql:String;
begin

CmbTurFirmasi.Clear;

{
TmpSql:= 'Select Adi from TurFirma order by adi ' ;
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Open;
}
dm.Qry8.First;

for i:=0 to dm.Qry8.RecordCount-1 do begin
CmbTurFirmasi.Items.Add(dm.Qry8.FieldByName('Adi').AsString);
dm.Qry8.Next;
end;
end;

procedure TFrmGelir.TurTemizle;
begin

CmbTu1.ItemIndex := -1;
CmbTu2.ItemIndex := -1;
CmbTu3.ItemIndex := -1;
CurrTu1.Value := 0;
CurrTu2.Value := 0;
CurrTu3.Value := 0;
DtTu1.Date := Date ;
DtTu2.Date := Date ;
DtTu3.Date := Date ;
CurrTuKalan.Value := 0;
ChkTuOdendi.Checked := False;

TxtTurAdi.Tag :=0;

AdvYolcuListesi.ClearRows(1,AdvYolcuListesi.RowCount-1);
AdvYolcuListesi.RowCount := 2;

TxtTurAdi.Clear;
TxtVoucherKodu.Clear;
CmbTurUrunCesidi.ItemIndex := -1 ;
CmbOtelEmail.ItemIndex := -1 ;
DtBasTarih.Date := Date ;
DtBasSaat.Time  := Time ;
DtBitTarih.Date := Date ;
DtBitSaat.Time  := Time ;
TxtBaslangicNoktasi.Clear;
TxtBitisNoktasi.Clear;
TxtRehberBilgileri.Clear;
CmbKullanilanKart.ItemIndex := -1 ;
MemTur.Clear;
CurrYetiskin.Value := 0 ;
CurrCocuk.Value := 0 ;
CurrBebek.Value := 0 ;
TxtTurKonaklamaSekli.Clear;
TxtTurKonaklamaBilgisi.Clear;
TxtUlasimBilgisi.Clear;
CmbTurOdaKategori.ItemIndex := -1 ;
CurrTurNetFiyat.Value   := 0 ;
CurrTurKomisyon.Value    := 0 ;
CurrTurToplamFiyat.Value := 0 ;
end;

procedure TFrmGelir.Vouchericerik;
var i:integer;
begin
QRepVoucher.QrlTarih.Caption := DateToStr(Date);

QRepVoucher.QrlTarih.Caption      := DateToStr(Date);
QRepVoucher.QrlAdiSoyadi.Caption  := CmbAdi.Text +' '+ CmbSoyadi.Text ;
QRepVoucher.QrlTelNo.Caption      := CmbCepTel1.Text;

//////////////////////   OTEL   //////////////////////
QRepOtel.QrlOtelAdi.Caption        := CmbOtelAdi.Text ;
QRepOtel.QrlOtelAdres.Caption      := CmbOtelAdres.Text ;
QRepOtel.QrlOtelTelefon.Caption    := CmbOtelTelefon.Text ;

if Trim(CmbOtelAdi.Text)<>'' then begin
QRepOtel.QrlGirisTarihi.Caption    := DateToStr(DtGirisTarihi.Date) ;
QRepOtel.QrlCikisTarihi.Caption    := DateToStr(DtCikisTarihi.Date) ;
end;


QRepOtel.QrlOdaSayisi.Caption      := CurrOdaSayisi.Text ;
QRepOtel.QrlOdaKategorisi.Caption  := CmbOdaKategori.Text ;
QRepOtel.QrlKonaklamaSekli.Caption := TxtKonaklamaSekli.Text ;
QRepOtel.Qrlilgili.Caption         := Txtilgili.Text ;
QRepOtel.QrlAciklama.Caption       := MemOtelAciklama.Text ;

QRepOtel.QrlKonaklayacakKisiler.Caption := '';
QRepOtel.qrband5.Height :=  QRepOtel.qrband5.Height + (17 * (AdvKisiler.RowCount-1)) ;
QRepOtel.QrlKonaklayacakKisiler.height := (17 * (AdvKisiler.RowCount-1))  ;
for i:=1 to AdvKisiler.RowCount-1 do begin
QRepOtel.QrlKonaklayacakKisiler.Caption := QRepOtel.QrlKonaklayacakKisiler.Caption +
AdvKisiler.Cells[0,i] +' - '+ AdvKisiler.Cells[1,i] +' - '+ AdvKisiler.Cells[2,i] +' - '+ AdvKisiler.Cells[3,i]+#13 ;
end;



//////////////////////////////////////////////////////////


//////////////////////  BÝLET   //////////////////////
if Trim(CmbHavaDenizYolu.Text)<>'' then begin

if ChkNereden.Checked = True then begin
QRepBilet.QrlKalkisTarihSaat1.Caption := DateToStr(DtNereden.Date) +' '+ TimeToStr(DtSaat1.Time) ;
QRepBilet.QrlVarisSaat1.Caption  := TimeToStr(DtSaat1x.Time) ;
QRepBilet.QrlUcusNo1.Caption          := TxtUcusNo1.Text ;
QRepBilet.QrlUcakFirmasi1.Caption     := CmbHavaDenizYolu.Text+ ' - '+ TxtNereden.Text;
QRepBilet.QrlPnr1.Caption             := TxtPnr.Text ;
end;

if ChkNereye.Checked = True then begin
QRepBilet.QrlKalkisTarihSaat2.Caption := DateToStr(DtNereye.Date) +' '+ TimeToStr(DtSaat2.Time) ;
QRepBilet.QrlVarisSaat2.Caption  := TimeToStr(DtSaat2x.Time) ;
QRepBilet.QrlUcusNo2.Caption          := TxtUcusNo2.Text ;
QRepBilet.QrlUcakFirmasi2.Caption     := CmbHavaDenizYolu.Text+ ' - '+ TxtNereye.Text;
QRepBilet.QrlPnr2.Caption             := TxtPnr2.Text ;
end;
end;


if RbCiftYon.Checked = True then begin
QRepBilet.QrlUcakFirmasi2.Caption     := CmbHavaDenizYolu.Text;
QRepBilet.QrlUcusNo2.Caption          := TxtT2UcusKodu.Text ;
QRepBilet.QrlPnr2.Caption             := TxtPnr.Text ;
end;


QRepBilet.QrlBiletYolcuListesi.Caption := '';
QRepBilet.qrband3.Height :=  QRepBilet.qrband3.Height + (17 * (AdvBiletYolcuListesi.RowCount-1)) ;
QRepBilet.QrlBiletYolcuListesi.height := (17 * (AdvBiletYolcuListesi.RowCount-1))  ;

for i:=1 to AdvBiletYolcuListesi.RowCount-1 do begin
QRepBilet.QrlBiletYolcuListesi.Caption :=  QRepBilet.QrlBiletYolcuListesi.Caption +
AdvBiletYolcuListesi.Cells[0,i] +' - '+ AdvBiletYolcuListesi.Cells[1,i] +' - '+ AdvBiletYolcuListesi.Cells[2,i] +' - '+ AdvBiletYolcuListesi.Cells[3,i]+#13  ;
end;

//////////////////////////////////////////////////////////


//////////////////////   TRANSFER    //////////////////////
QRepTransfer.QrlTransferAdi.Caption      := TxtTransferAdi.Text ;
QRepTransfer.QrlTransferSoyadi.Caption   := TxtTransferSoyadi.Text ;
QRepTransfer.QrlTransferCepNo.Caption    := TxtTransferCepNo.Text ;
QRepTransfer.QrlTransferFirma.Caption    := CmbTransferFirma.Text ;
QRepTransfer.QrlTransferArac.Caption     := CmbArac.Text ;
QRepTransfer.QrlTransferAciklama.Caption := MemTransfer.Text ;

QRepTransfer.QRLOtelAdresi.Caption := CmbTransferOtelAdres.Text;

QRepTransfer.QrlTransfer1.Caption := TxtT1UcusKodu.Text  ;
QRepTransfer.QrlTransfer2.Caption := TxtT2UcusKodu.Text ;

QRepTransfer.QrlTransferYolcuListesi.Caption := '';
QRepTransfer.qrband5.Height :=  QRepTransfer.qrband5.Height + (17 * (AdvTransferYolcuListesi.RowCount-1)) ;
QRepTransfer.QrlTransferYolcuListesi.height := (17 * (AdvTransferYolcuListesi.RowCount-1))  ;
QRepTransfer.QRLKalkisVaris1.Caption :=
DateTostr(Dt1NeredenTarih.Date)+'  '+TimeTostr(Dt1NeredenSaat.Time)+'  -  '+ DateTostr(Dt1NereyeTarih.Date)+'  '+TimeTostr(Dt1inissaati.Time) ;

if RbCiftYon.Checked = True  then
QRepTransfer.QRLKalkisVaris2.Caption :=
DateTostr(Dt2NeredenTarih.Date)+'  '+TimeTostr(Dt2NeredenSaat.Time)+'  -  '+ DateTostr(Dt2NereyeTarih.Date)+'  '+TimeTostr(Dt2inissaati.Time) ;

for i:=1 to AdvTransferYolcuListesi.RowCount-1 do begin
QRepTransfer.QrlTransferYolcuListesi.Caption :=  QRepTransfer.QrlTransferYolcuListesi.Caption +
AdvTransferYolcuListesi.Cells[0,i] +' - '+ AdvTransferYolcuListesi.Cells[1,i] +' - '+ AdvTransferYolcuListesi.Cells[2,i] +' - '+ AdvTransferYolcuListesi.Cells[3,i]+#13  ;
end;
//////////////////////////////////////////////////////////


//////////////////////   TUR   //////////////////////
QRepTur.QrlTurAdi.Caption                := TxtTurAdi.Text ;
QRepTur.QrlTurFirmasi.Caption            := CmbTurFirmasi.Text ;

if Trim(TxtTurAdi.Text)<>'' then begin
QRepTur.QrlTurBaslangic.Caption          := DateToStr(DtBasTarih.Date) +' '+ TimeToStr(DtBasSaat.Time) ;
QRepTur.QrlTurBitis.Caption              := DateToStr(DtBitTarih.Date) +' '+ TimeToStr(DtBitSaat.Time) ;
end;

QRepTur.QrlTurBasNokta.Caption           := TxtBaslangicNoktasi.Text ;
QRepTur.QrlTurBitNokta.Caption           := TxtBitisNoktasi.Text ;
QRepTur.QrlTurKonaklamaSekli.Caption     := TxtTurKonaklamaSekli.Text ;
QRepTur.QrlTurKonaklamaBilgisi.Caption   := TxtTurKonaklamaBilgisi.Text ;
QRepTur.QrlTurUlasimBilgisi.Caption      := TxtUlasimBilgisi.Text ;
QRepTur.QrlTurYetiskinCocukBebek.Caption := CurrYetiskin.Text +' - '+ CurrCocuk.Text +' - '+ CurrBebek.Text ;
QRepTur.QrlTurRehberBilgisi.Caption      := TxtRehberBilgileri.Text ;
QRepTur.QrlTurAciklama.Caption           := MemTur.Text ;

QRepTur.QrlTurYolcuListesi.Caption := '';
QRepTur.qrband5.Height :=  QRepTur.qrband5.Height + (17 * (AdvYolcuListesi.RowCount-1)) ;
QRepTur.QrlTurYolcuListesi.height := (17 * (AdvYolcuListesi.RowCount-1))  ;
for i:=1 to AdvYolcuListesi.RowCount-1 do begin
QRepTur.QrlTurYolcuListesi.Caption := QRepTur.QrlTurYolcuListesi.Caption +
AdvYolcuListesi.Cells[0,i] +' - '+ AdvYolcuListesi.Cells[1,i] +' - '+ AdvYolcuListesi.Cells[2,i] +' - '+ AdvYolcuListesi.Cells[3,i]+#13  ;
end;

////////////////////////////////////////////////////////////




end;

end.


