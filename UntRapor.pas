unit UntRapor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, AdvObj, BaseGrid, AdvGrid, DB,
  ADODB, tmsAdvGridExcel, asgprev,DateUtils,StrUtils,printers, MoneyEdit,
  GDIPHeaderItem, GDIPButtonBarItem, GDIPButtonItem, GDIPImageTextItem,
  GDIPGraphicItem, GDIPCheckItem, GDIPRadioItem, GDIPCustomItem, GDIPTextItem,
  GDIPSectionItem, GDIPImageSectionItem, GDIPGroupItem, CustomItemsContainer,
  AdvPolyBox, AdvCardList, AdvCardListStyler, DBGrids, CheckLst ;

type
  TFrmRapor = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    Qry1: TADOQuery;
    AdvExcel: TAdvGridExcelIO;
    AdvPreview: TAdvPreviewDialog;
    SaveDialog1: TSaveDialog;
    Qry3: TADOQuery;
    TabSheet5: TTabSheet;
    Panel9: TPanel;
    Button9: TButton;
    AdvKrediKarti: TAdvStringGrid;
    CmbKullanilanKart: TComboBox;
    Label13: TLabel;
    Button13: TButton;
    DtKK1: TDateTimePicker;
    DtKK2: TDateTimePicker;
    ChkKKTarih: TCheckBox;
    TabSheet10: TTabSheet;
    Panel14: TPanel;
    GroupBox6: TGroupBox;
    CmbKartMusAdi: TComboBox;
    CmbKartMusSoyadi: TComboBox;
    ChkKArtMusteri: TCheckBox;
    BtkKartListele: TButton;
    AdvKArt: TAdvStringGrid;
    ChkBilet: TCheckBox;
    ChkTransfer: TCheckBox;
    ChkOtelx: TCheckBox;
    TabSheet12: TTabSheet;
    Panel16: TPanel;
    AdvAgente: TAdvStringGrid;
    ChkAgenteKayitTarihi: TCheckBox;
    DtAgente1: TDateTimePicker;
    DtAgente2: TDateTimePicker;
    TxtBorc: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox7: TGroupBox;
    CmbAcenteMusteriAdi: TComboBox;
    CmbAcenteMusteriSoyAdi: TComboBox;
    ChkAcenteMusteri: TCheckBox;
    RbBorcuOlanlar: TRadioButton;
    RbAcenteOdenen: TRadioButton;
    RbAgenteTumu: TRadioButton;
    Edit3: TEdit;
    ChkTur: TCheckBox;
    ChkATur: TCheckBox;
    ChkAOtel: TCheckBox;
    ChkATransfer: TCheckBox;
    ChkABilet: TCheckBox;
    Button7: TButton;
    ChkOdeme: TCheckBox;
    DtOdeme1: TDateTimePicker;
    DtOdeme2: TDateTimePicker;
    TxtAgentePnr: TEdit;
    ChkAgentePnr: TCheckBox;
    GrpYolcu: TGroupBox;
    TxtYAdi: TEdit;
    TxtYSoyadi: TEdit;
    ChkYAdi: TCheckBox;
    ChkYSoyAdi: TCheckBox;
    ChkAyniGun: TCheckBox;
    ChkKullanilanKart: TCheckBox;
    CmbAgenteKullanilanKart: TComboBox;
    Button1: TButton;
    Button18: TButton;
    Button2: TButton;
    Button3: TButton;
    ChkKullanici: TCheckListBox;
    Label2: TLabel;
    ChkKullanici2: TCheckListBox;
    Label3: TLabel;
    Label17: TLabel;
    CmbHavaDenizYolu: TComboBox;
    ASP: TADOStoredProc;
    procedure FormShow(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtkKartListeleClick(Sender: TObject);
    procedure AdvKArtDblClick(Sender: TObject);
    procedure CmbKartMusAdiChange(Sender: TObject);
    procedure CmbKartMusSoyadiChange(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure AdvAgenteGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure CmbAcenteMusteriAdiChange(Sender: TObject);
    procedure CmbAcenteMusteriSoyAdiChange(Sender: TObject);
    procedure AdvAgenteDblClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure ChkABiletClick(Sender: TObject);
    procedure ChkAOtelClick(Sender: TObject);
    procedure ChkATransferClick(Sender: TObject);
    procedure ChkATurClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
   var Puby:integer;
   TmpPubToplamFiyat:Currency; { Public declarations }
   procedure sabitdegergetir;
   procedure CreateParams(var Params: TCreateParams); override;

   Procedure OtelSatisGetir(KArtNo:String);
   Procedure TransferGetir(KArtNo:String);
   Procedure BiletSatisGetir(KArtNo:String);
   Procedure TurGetir(KArtNo:String);
  end;

var
  FrmRapor: TFrmRapor;

implementation

uses UntGelir, UntProjectGlobal, RepAgenteSatis, UntDm;

{$R *.dfm}

procedure TFrmRapor.AdvAgenteDblClick(Sender: TObject);
var TmpSql,TmpBiletSatis,TmpOtelSatis,TmpTransfer,TmpTur:String;
begin
FrmGelir:=TFrmGelir.Create(Self);

FrmGelir.GrpMusteriSirket.Enabled := False;
FrmGelir.PubKartNo  := AdvAgente.Cells[19,AdvAgente.Row];

TmpSql := 'Select adi,soyadi,telno,adres,aciklama, BiletSatis,OtelSatis,Transfer,Tur from satiskarti where id=:id';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('id').Value := AdvAgente.Cells[19,AdvAgente.Row] ;
Qry1.Prepared;
Qry1.Open;

TmpBiletSatis := Qry1.FieldByName('BiletSatis').AsString ;
TmpOtelSatis  := Qry1.FieldByName('OtelSatis').AsString ;
TmpTransfer   := Qry1.FieldByName('Transfer').AsString ;
TmpTur        := Qry1.FieldByName('Tur').AsString ;


FrmGelir.CmbAdi.ItemIndex         := FrmGelir.CmbAdi.Items.IndexOf(Qry1.FieldByName('Adi').AsString);
FrmGelir.CmbSoyadi.ItemIndex      := FrmGelir.CmbSoyadi.Items.IndexOf(Qry1.FieldByName('Soyadi').AsString);
FrmGelir.CmbCepTel1.ItemIndex     := FrmGelir.CmbCepTel1.Items.IndexOf(Qry1.FieldByName('TelNo').AsString);
FrmGelir.CmbAdres.ItemIndex       := FrmGelir.CmbAdres.Items.IndexOf(Qry1.FieldByName('Adres').AsString);
FrmGelir.MemKartAciklama.Text     := Qry1.FieldByName('Aciklama').AsString ;

if TmpBiletSatis = 'Var' Then begin
FrmGelir.ChkBiletSatis.Checked    := True;
FrmGelir.TabBiletSatis.TabVisible := True;
BiletSatisGetir(AdvAgente.Cells[19,AdvAgente.Row]);
end
Else begin
FrmGelir.ChkBiletSatis.Checked    := False;
FrmGelir.TabBiletSatis.TabVisible := False;
end;

if TmpOtelSatis = 'Var' Then begin
FrmGelir.ChkOtelSatis.Checked    := True;
FrmGelir.TabOtelSatis.TabVisible := True;
OtelSatisGetir(AdvAgente.Cells[19,AdvAgente.Row]);
end
Else begin
FrmGelir.ChkOtelSatis.Checked    := False;
FrmGelir.TabOtelSatis.TabVisible := False;
end;

if TmpTransfer = 'Var' Then begin
FrmGelir.ChkTransfer.Checked     := True;
FrmGelir.TabTransfer.TabVisible  := True;
TransferGetir(AdvAgente.Cells[19,AdvAgente.Row]);
end
Else begin
FrmGelir.ChkTransfer.Checked     := False;
FrmGelir.TabTransfer.TabVisible  := False;
end;

if TmpTur = 'Var' Then begin
FrmGelir.ChkTur.Checked    := True;
FrmGelir.TabTur.TabVisible := True;
TurGetir(AdvAgente.Cells[19,AdvAgente.Row]);
end
Else begin
FrmGelir.ChkTur.Checked    := False;
FrmGelir.TabTur.TabVisible := False;
end;




if AdvAgente.Cells[2,AdvAgente.Row]='Bilet'    then begin

FrmGelir.TabBiletSatis.Show;
end;

if AdvAgente.Cells[2,AdvAgente.Row]='Otel'     then begin
FrmGelir.TabOtelSatis.Show;
end;

if AdvAgente.Cells[2,AdvAgente.Row]='Transfer' then begin
FrmGelir.TabTransfer.Show;
end;

if AdvAgente.Cells[2,AdvAgente.Row]='Tur'      then begin
FrmGelir.TabTur.Show;
end;


FrmGelir.ImgKaydet.Enabled := False;
FrmGelir.lblKaydet.Enabled := False;

FrmGelir.imgGuncelle.Enabled := True;
FrmGelir.LblGuncelle.Enabled := True;

FrmGelir.imgSil.Enabled := True;
FrmGelir.LblSil.Enabled := True;

FrmGelir.Show;
end;

procedure TFrmRapor.AdvAgenteGetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
if ACol in [7,8,9,11,13,15,16] then HAlign := taRightJustify;

end;

procedure TFrmRapor.AdvKArtDblClick(Sender: TObject);
begin

FrmGelir:=TFrmGelir.Create(Self);

FrmGelir.GrpMusteriSirket.Enabled := False;
FrmGelir.PubKartNo                := AdvKArt.Cells[11,AdvKArt.Row];
FrmGelir.CmbAdi.ItemIndex         := FrmGelir.CmbAdi.Items.IndexOf(AdvKArt.Cells[2,AdvKArt.Row]);
FrmGelir.CmbSoyadi.ItemIndex      := FrmGelir.CmbSoyadi.Items.IndexOf(AdvKArt.Cells[3,AdvKArt.Row]);
FrmGelir.CmbCepTel1.ItemIndex     := FrmGelir.CmbCepTel1.Items.IndexOf(AdvKArt.Cells[4,AdvKArt.Row]);
FrmGelir.CmbAdres.ItemIndex       := FrmGelir.CmbAdres.Items.IndexOf(AdvKArt.Cells[5,AdvKArt.Row]);
FrmGelir.MemKartAciklama.Text     := AdvKArt.Cells[6,AdvKArt.Row];

if AdvKArt.Cells[7,AdvKArt.Row] = 'Var' Then begin
FrmGelir.ChkBiletSatis.Checked    := True;
FrmGelir.TabBiletSatis.TabVisible := True;
end
Else begin
FrmGelir.ChkBiletSatis.Checked    := False;
FrmGelir.TabBiletSatis.TabVisible := False;
end;

if AdvKArt.Cells[8,AdvKArt.Row] = 'Var' Then begin
FrmGelir.ChkOtelSatis.Checked    := True;
FrmGelir.TabOtelSatis.TabVisible := True;
end
Else begin
FrmGelir.ChkOtelSatis.Checked    := False;
FrmGelir.TabOtelSatis.TabVisible := False;
end;

if AdvKArt.Cells[9,AdvKArt.Row] = 'Var' Then begin
FrmGelir.ChkTransfer.Checked     := True;
FrmGelir.TabTransfer.TabVisible  := True;
end
Else begin
FrmGelir.ChkTransfer.Checked     := False;
FrmGelir.TabTransfer.TabVisible  := False;
end;

if AdvKArt.Cells[10,AdvKArt.Row] = 'Var' Then begin
FrmGelir.ChkTur.Checked    := True;
FrmGelir.TabTur.TabVisible := True;
end
Else begin
FrmGelir.ChkTur.Checked    := False;
FrmGelir.TabTur.TabVisible := False;
end;


OtelSatisGetir (AdvKArt.Cells[11,AdvKArt.Row]);
TransferGetir  (AdvKArt.Cells[11,AdvKArt.Row]);
BiletSatisGetir(AdvKArt.Cells[11,AdvKArt.Row]);
TurGetir(AdvKArt.Cells[11,AdvKArt.Row]);

FrmGelir.ImgKaydet.Enabled := False;
FrmGelir.lblKaydet.Enabled := False;

FrmGelir.imgGuncelle.Enabled := True;
FrmGelir.LblGuncelle.Enabled := True;

FrmGelir.imgSil.Enabled := True;
FrmGelir.LblSil.Enabled := True;

FrmGelir.Show;
end;

procedure TFrmRapor.Button13Click(Sender: TObject);
begin
AdvKrediKarti.PrintSettings.TitleLines.Clear;
AdvKrediKarti.PrintSettings.TitleLines.Add('KREDÝ KARTLARI');
AdvKrediKarti.PrintSettings.TitleLines.Add('');

AdvPreview.Grid := AdvKrediKarti ;
AdvPreview.Execute ;
end;

procedure TFrmRapor.Button18Click(Sender: TObject);
var TmpSql:string;
i,x:integer;
TmpTopNetfiyat,TmpTopKomisyon,TmpTopToplamFiyat,TmpTopOdemeTutari1,TmpTopOdemeTutari2,TmpTopOdemeTutari3,TmpTopKalanMiktar : Currency;
begin

TmpTopNetfiyat:=0;
TmpTopKomisyon:=0;
TmpTopToplamFiyat:=0;
TmpTopOdemeTutari1:=0;
TmpTopOdemeTutari2:=0;
TmpTopOdemeTutari3:=0;
TmpTopKalanMiktar:=0;

AdvAgente.ClearRows(1,AdvAgente.RowCount-1);
AdvAgente.RowCount := 2;
x:=0;

//////////////////////////OTEL SATIÞ////////////////////////////////////////////////////////
if ChkAOtel.Checked = True then begin

TmpSql:='Select KayitTarihi,OtelAdi,MusteriAdi,MusteriSoyadi,Aciklama,NetFiyat,Komisyon,ToplamFiyat,KartNo,id,'+
'OdemeSekli1,OdemeSekli2,OdemeSekli3,OdemeTutari1,OdemeTutari2,OdemeTutari3,OdemeTarihi1,OdemeTarihi2,OdemeTarihi3,'+
'KalanMiktar,Odeme,KullanilanKart from otelsatis where id<>0 ';

if ChkKullanilanKart.Checked = True then
TmpSql := TmpSql + ' and KullanilanKart=:KullanilanKart ' ;

if ChkYAdi.Checked = True then
TmpSql := TmpSql + ' and id in (Select OtelSatisid from konaklayacakkisiler where Adi like :Adi) ' ;

if ChkYSoyAdi.Checked = True then
TmpSql := TmpSql + ' and id in (Select OtelSatisid from konaklayacakkisiler where SoyAdi like :SoyAdi) ' ;

if ChkAgenteKayitTarihi.Checked = True then
TmpSql := TmpSql + ' and KayitTarihi between :dt1 and :dt2 ' ;

if ChkAcenteMusteri.Checked = True then
TmpSql := TmpSql + ' and MusteriAdi like :MusteriAdi and MusteriSoyadi like :MusteriSoyadi ' ;

if RbBorcuOlanlar.Checked = True then
TmpSql := TmpSql + ' and KalanMiktar > 0 ' ;

if RbAcenteOdenen.Checked = True then
TmpSql := TmpSql + ' and KalanMiktar = 0 ' ;


if ChkAyniGun.Checked = True then
TmpSql := TmpSql + ' and KayitTarihi <> :Bugun' ;

if ChkOdeme.Checked = True then begin
TmpSql := TmpSql + ' and (OdemeTarihi1 between :Dto1 and :Dto2 ' ;
TmpSql := TmpSql + ' or  OdemeTarihi2 between :Dto3 and :Dto4 ' ;
TmpSql := TmpSql + ' or  OdemeTarihi3 between :Dto5 and :Dto6) ' ;
end;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

if ChkKullanilanKart.Checked = True then
Qry1.Parameters.ParamByName('KullanilanKart').Value := CmbAgenteKullanilanKart.Text;

if ChkYAdi.Checked = True then
Qry1.Parameters.ParamByName('Adi').Value    := TxtYAdi.Text +'%';
if ChkYSoyAdi.Checked = True then
Qry1.Parameters.ParamByName('SoyAdi').Value := TxtYSoyadi.Text +'%';

if ChkAgenteKayitTarihi.Checked = True then begin
Qry1.Parameters.ParamByName('Dt1').Value :=
IntToStr(YearOf(DtAgente1.Date))+'-'+IntToStr(MonthOf(DtAgente1.Date))+'-'+IntToStr(DayOf(DtAgente1.Date));
Qry1.Parameters.ParamByName('Dt2').Value :=
IntToStr(YearOf(DtAgente2.Date))+'-'+IntToStr(MonthOf(DtAgente2.Date))+'-'+IntToStr(DayOf(DtAgente2.Date));
end;

if ChkAcenteMusteri.Checked = True then begin
Qry1.Parameters.ParamByName('MusteriAdi').Value    := CmbAcenteMusteriAdi.Text +'%';
Qry1.Parameters.ParamByName('MusteriSoyadi').Value := CmbAcenteMusteriSoyAdi.Text +'%';
end;

if ChkAyniGun.Checked = True then
Qry1.Parameters.ParamByName('Bugun').Value :=
IntToStr(YearOf(Date))+'-'+IntToStr(MonthOf(Date))+'-'+IntToStr(DayOf(Date));


if ChkOdeme.Checked = True then begin
Qry1.Parameters.ParamByName('Dto1').Value :=
IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date));
Qry1.Parameters.ParamByName('Dto2').Value :=
IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date));
Qry1.Parameters.ParamByName('Dto3').Value :=
IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date));
Qry1.Parameters.ParamByName('Dto4').Value :=
IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date));
Qry1.Parameters.ParamByName('Dto5').Value :=
IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date));
Qry1.Parameters.ParamByName('Dto6').Value :=
IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date));
end;

Qry1.Prepared;
Qry1.Open;

for i := 1 to Qry1.RecordCount do begin
x:=x+1; AdvAgente.AddRow;
AdvAgente.Cells[1,x]   := Qry1.FieldByName('KayitTarihi').AsString;
AdvAgente.Cells[2,x]   := 'Otel';
AdvAgente.Cells[3,x]   := Qry1.FieldByName('OtelAdi').AsString;
AdvAgente.Cells[4,x]   := Qry1.FieldByName('MusteriAdi').AsString;
AdvAgente.Cells[5,x]   := Qry1.FieldByName('MusteriSoyadi').AsString;
AdvAgente.Cells[6,x]   := Qry1.FieldByName('Aciklama').AsString;
AdvAgente.Cells[7,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('NetFiyat').AsCurrency);
AdvAgente.Cells[8,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('Komisyon').AsCurrency);
AdvAgente.Cells[9,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('ToplamFiyat').AsCurrency);
AdvAgente.Cells[10,x]  := Qry1.FieldByName('OdemeSekli1').AsString;
AdvAgente.Cells[11,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari1').AsCurrency);
AdvAgente.Cells[12,x]  := Qry1.FieldByName('OdemeSekli2').AsString;
AdvAgente.Cells[13,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari2').AsCurrency);
AdvAgente.Cells[14,x]  := Qry1.FieldByName('OdemeSekli3').AsString;
AdvAgente.Cells[15,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari3').AsCurrency);
AdvAgente.Cells[16,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('KalanMiktar').AsCurrency);
AdvAgente.Cells[17,x]  := Qry1.FieldByName('KullanilanKart').AsString;

TmpTopNetfiyat     := TmpTopNetfiyat     + Qry1.FieldByName('NetFiyat').AsCurrency     ;
TmpTopKomisyon     := TmpTopKomisyon     + Qry1.FieldByName('Komisyon').AsCurrency     ;
TmpTopToplamFiyat  := TmpTopToplamFiyat  + Qry1.FieldByName('ToplamFiyat').AsCurrency  ;
TmpTopOdemeTutari1 := TmpTopOdemeTutari1 + Qry1.FieldByName('OdemeTutari1').AsCurrency ;
TmpTopOdemeTutari2 := TmpTopOdemeTutari2 + Qry1.FieldByName('OdemeTutari2').AsCurrency ;
TmpTopOdemeTutari3 := TmpTopOdemeTutari3 + Qry1.FieldByName('OdemeTutari3').AsCurrency ;
TmpTopKalanMiktar  := TmpTopKalanMiktar  + Qry1.FieldByName('KalanMiktar').AsCurrency  ;

if Qry1.FieldByName('KalanMiktar').AsCurrency < 0 then AdvAgente.RowColor[x]:=clRed;

//AdvAgente.Cells[10,i]  := Qry1.FieldByName('Odeme').AsString;
AdvAgente.Cells[18,x]  := Qry1.FieldByName('KartNo').AsString;
AdvAgente.Cells[19,x]  := Qry1.FieldByName('id').AsString;

Qry1.Next;
end;
end;
///////////////////////////////////////////////////////////////////////////////



//////////////////////////BÝLET SATIÞ////////////////////////////////////////////////////////
if ChkABilet.Checked = True then begin
TmpSql:='Select KayitTarihi,HavaDenizYolu,MusAdi,MusSoyadi,Aciklama,NetFiyati,Komisyon,ToplamFiyat,KartNo,id,'+
'OdemeSekli1,OdemeSekli2,OdemeSekli3,OdemeTutari1,OdemeTutari2,OdemeTutari3,KalanMiktar,Odeme,KullanilanKart ' +
' from rezervasyon where id<>0 ';
if ChkKullanilanKart.Checked = True then
TmpSql := TmpSql + ' and KullanilanKart=:KullanilanKart ' ;

if ChkYAdi.Checked = True then
TmpSql := TmpSql + ' and id in (Select Biletid from BiletYolcuListesi where Adi like :Adi) ' ;
if ChkYSoyAdi.Checked = True then
TmpSql := TmpSql + ' and id in (Select Biletid from BiletYolcuListesi where SoyAdi like :SoyAdi) ' ;

if (ChkAgentePnr.Checked  = True) then
TmpSql := TmpSql + ' and Pnr =:Pnr ' ;

if ChkAgenteKayitTarihi.Checked = True then
TmpSql := TmpSql + ' and KayitTarihi between :dt1 and :dt2 ' ;

if ChkAcenteMusteri.Checked = True then
TmpSql := TmpSql + ' and MusAdi like :MusAdi and MusSoyadi like :MusSoyadi ' ;

if RbBorcuOlanlar.Checked = True then
TmpSql := TmpSql + ' and KalanMiktar > 0 ' ;

if RbAcenteOdenen.Checked = True then
TmpSql := TmpSql + ' and KalanMiktar = 0 ' ;

if ChkAyniGun.Checked = True then
TmpSql := TmpSql + ' and KayitTarihi <> :Bugun' ;

if ChkOdeme.Checked = True then begin
TmpSql := TmpSql + ' and (OdemeTarihi1 between :Dto1 and :Dto2 ' ;
TmpSql := TmpSql + ' or  OdemeTarihi2 between :Dto3 and :Dto4 ' ;
TmpSql := TmpSql + ' or  OdemeTarihi3 between :Dto5 and :Dto6) ' ;
end;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

if ChkKullanilanKart.Checked = True then
Qry1.Parameters.ParamByName('KullanilanKart').Value := CmbAgenteKullanilanKart.Text;

if ChkYAdi.Checked = True then
Qry1.Parameters.ParamByName('Adi').Value    := TxtYAdi.Text +'%';
if ChkYSoyAdi.Checked = True then
Qry1.Parameters.ParamByName('SoyAdi').Value := TxtYSoyadi.Text +'%';

if (ChkAgentePnr.Checked  = True) then
Qry1.Parameters.ParamByName('Pnr').Value := TxtAgentePnr.Text ;

if ChkAgenteKayitTarihi.Checked = True then begin
Qry1.Parameters.ParamByName('Dt1').Value :=
IntToStr(YearOf(DtAgente1.Date))+'-'+IntToStr(MonthOf(DtAgente1.Date))+'-'+IntToStr(DayOf(DtAgente1.Date));
Qry1.Parameters.ParamByName('Dt2').Value :=
IntToStr(YearOf(DtAgente2.Date))+'-'+IntToStr(MonthOf(DtAgente2.Date))+'-'+IntToStr(DayOf(DtAgente2.Date));
end;

if ChkAcenteMusteri.Checked = True then begin
Qry1.Parameters.ParamByName('MusAdi').Value    := CmbAcenteMusteriAdi.Text +'%';
Qry1.Parameters.ParamByName('MusSoyadi').Value := CmbAcenteMusteriSoyAdi.Text +'%';
end;

if ChkAyniGun.Checked = True then
Qry1.Parameters.ParamByName('Bugun').Value :=
IntToStr(YearOf(Date))+'-'+IntToStr(MonthOf(Date))+'-'+IntToStr(DayOf(Date));


if ChkOdeme.Checked = True then begin
Qry1.Parameters.ParamByName('Dto1').Value :=
IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date));
Qry1.Parameters.ParamByName('Dto2').Value :=
IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date));
Qry1.Parameters.ParamByName('Dto3').Value :=
IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date));
Qry1.Parameters.ParamByName('Dto4').Value :=
IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date));
Qry1.Parameters.ParamByName('Dto5').Value :=
IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date));
Qry1.Parameters.ParamByName('Dto6').Value :=
IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date));
end;


Qry1.Prepared;
Qry1.Open;

for i := 1 to Qry1.RecordCount do begin
x:=x+1; AdvAgente.AddRow;
AdvAgente.Cells[1,x]   := Qry1.FieldByName('KayitTarihi').AsString;
AdvAgente.Cells[2,x]   := 'Bilet';
AdvAgente.Cells[3,x]   := Qry1.FieldByName('HavaDenizYolu').AsString;
AdvAgente.Cells[4,x]   := Qry1.FieldByName('MusAdi').AsString;
AdvAgente.Cells[5,x]   := Qry1.FieldByName('MusSoyadi').AsString;
AdvAgente.Cells[6,x]   := Qry1.FieldByName('Aciklama').AsString;
AdvAgente.Cells[7,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('NetFiyati').AsCurrency);
AdvAgente.Cells[8,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('Komisyon').AsCurrency);
AdvAgente.Cells[9,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('ToplamFiyat').AsCurrency);
AdvAgente.Cells[10,x]  := Qry1.FieldByName('OdemeSekli1').AsString;
AdvAgente.Cells[11,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari1').AsCurrency);
AdvAgente.Cells[12,x]  := Qry1.FieldByName('OdemeSekli2').AsString;
AdvAgente.Cells[13,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari2').AsCurrency);
AdvAgente.Cells[14,x]  := Qry1.FieldByName('OdemeSekli3').AsString;
AdvAgente.Cells[15,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari3').AsCurrency);
AdvAgente.Cells[16,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('KalanMiktar').AsCurrency);
AdvAgente.Cells[17,x]  := Qry1.FieldByName('KullanilanKart').AsString;

TmpTopNetfiyat     := TmpTopNetfiyat     + Qry1.FieldByName('NetFiyati').AsCurrency     ;
TmpTopKomisyon     := TmpTopKomisyon     + Qry1.FieldByName('Komisyon').AsCurrency     ;
TmpTopToplamFiyat  := TmpTopToplamFiyat  + Qry1.FieldByName('ToplamFiyat').AsCurrency  ;
TmpTopOdemeTutari1 := TmpTopOdemeTutari1 + Qry1.FieldByName('OdemeTutari1').AsCurrency ;
TmpTopOdemeTutari2 := TmpTopOdemeTutari2 + Qry1.FieldByName('OdemeTutari2').AsCurrency ;
TmpTopOdemeTutari3 := TmpTopOdemeTutari3 + Qry1.FieldByName('OdemeTutari3').AsCurrency ;
TmpTopKalanMiktar  := TmpTopKalanMiktar  + Qry1.FieldByName('KalanMiktar').AsCurrency  ;

if Qry1.FieldByName('KalanMiktar').AsCurrency < 0 then AdvAgente.RowColor[x]:=clRed;
//AdvAgente.Cells[10,i]  := Qry1.FieldByName('Odeme').AsString;
AdvAgente.Cells[18,x]  := Qry1.FieldByName('KartNo').AsString;
AdvAgente.Cells[19,x]  := Qry1.FieldByName('id').AsString;

Qry1.Next;
end;
end;
///////////////////////////////////////////////////////////////////////////////


/////////////////////////TRANSFER SATIÞ////////////////////////////////////////////////////////
if ChkATransfer.Checked = True then begin
TmpSql:='Select KayitTarihi,TransferFirmasi,MusteriAdi,MusteriSoyAdi,Aciklama,NetFiyat,Komisyon,ToplamFiyat,KartNo,id,'+
'OdemeSekli1,OdemeSekli2,OdemeSekli3,OdemeTutari1,OdemeTutari2,OdemeTutari3,KalanMiktar,Odeme,KullanilanKart ' +
' from transfer where id<>0 ';

if ChkKullanilanKart.Checked = True then
TmpSql := TmpSql + ' and KullanilanKart=:KullanilanKart ' ;

if ChkAgenteKayitTarihi.Checked = True then
TmpSql := TmpSql + ' and KayitTarihi between :dt1 and :dt2 ' ;

if ChkAcenteMusteri.Checked = True then
TmpSql := TmpSql + ' and MusteriAdi like :MusteriAdi and MusteriSoyAdi like :MusteriSoyAdi ' ;

if RbBorcuOlanlar.Checked = True then
TmpSql := TmpSql + ' and KalanMiktar > 0 ' ;

if RbAcenteOdenen.Checked = True then
TmpSql := TmpSql + ' and KalanMiktar = 0 ' ;

if ChkAyniGun.Checked = True then
TmpSql := TmpSql + ' and KayitTarihi <> :Bugun' ;

if ChkOdeme.Checked = True then begin
TmpSql := TmpSql + ' and (OdemeTarihi1 between :Dto1 and :Dto2 ' ;
TmpSql := TmpSql + ' or  OdemeTarihi2 between :Dto3 and :Dto4 ' ;
TmpSql := TmpSql + ' or  OdemeTarihi3 between :Dto5 and :Dto6) ' ;
end;



Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

if ChkKullanilanKart.Checked = True then
Qry1.Parameters.ParamByName('KullanilanKart').Value := CmbAgenteKullanilanKart.Text;

if ChkAgenteKayitTarihi.Checked = True then begin
Qry1.Parameters.ParamByName('Dt1').Value :=
IntToStr(YearOf(DtAgente1.Date))+'-'+IntToStr(MonthOf(DtAgente1.Date))+'-'+IntToStr(DayOf(DtAgente1.Date));
Qry1.Parameters.ParamByName('Dt2').Value :=
IntToStr(YearOf(DtAgente2.Date))+'-'+IntToStr(MonthOf(DtAgente2.Date))+'-'+IntToStr(DayOf(DtAgente2.Date));
end;

if ChkAcenteMusteri.Checked = True then begin
Qry1.Parameters.ParamByName('MusteriAdi').Value    := CmbAcenteMusteriAdi.Text +'%';
Qry1.Parameters.ParamByName('MusteriSoyAdi').Value := CmbAcenteMusteriSoyAdi.Text +'%';
end;

if ChkAyniGun.Checked = True then
Qry1.Parameters.ParamByName('Bugun').Value :=
IntToStr(YearOf(Date))+'-'+IntToStr(MonthOf(Date))+'-'+IntToStr(DayOf(Date));

if ChkOdeme.Checked = True then begin
Qry1.Parameters.ParamByName('Dto1').Value :=
IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date));
Qry1.Parameters.ParamByName('Dto2').Value :=
IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date));
Qry1.Parameters.ParamByName('Dto3').Value :=
IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date));
Qry1.Parameters.ParamByName('Dto4').Value :=
IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date));
Qry1.Parameters.ParamByName('Dto5').Value :=
IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date));
Qry1.Parameters.ParamByName('Dto6').Value :=
IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date));
end;

Qry1.Prepared;
Qry1.Open;

for i := 1 to Qry1.RecordCount do begin
x:=x+1; AdvAgente.AddRow;
AdvAgente.Cells[1,x]   := Qry1.FieldByName('KayitTarihi').AsString;
AdvAgente.Cells[2,x]   := 'Transfer';
AdvAgente.Cells[3,x]   := Qry1.FieldByName('TransferFirmasi').AsString;
AdvAgente.Cells[4,x]   := Qry1.FieldByName('MusteriAdi').AsString;
AdvAgente.Cells[5,x]   := Qry1.FieldByName('MusteriSoyAdi').AsString;
AdvAgente.Cells[6,x]   := Qry1.FieldByName('Aciklama').AsString;
AdvAgente.Cells[7,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('NetFiyat').AsCurrency);
AdvAgente.Cells[8,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('Komisyon').AsCurrency);
AdvAgente.Cells[9,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('ToplamFiyat').AsCurrency);
AdvAgente.Cells[10,x]  := Qry1.FieldByName('OdemeSekli1').AsString;
AdvAgente.Cells[11,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari1').AsCurrency);
AdvAgente.Cells[12,x]  := Qry1.FieldByName('OdemeSekli2').AsString;
AdvAgente.Cells[13,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari2').AsCurrency);
AdvAgente.Cells[14,x]  := Qry1.FieldByName('OdemeSekli3').AsString;
AdvAgente.Cells[15,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari3').AsCurrency);
AdvAgente.Cells[16,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('KalanMiktar').AsCurrency);
AdvAgente.Cells[17,x]  := Qry1.FieldByName('KullanilanKart').AsString;

TmpTopNetfiyat     := TmpTopNetfiyat     + Qry1.FieldByName('NetFiyat').AsCurrency     ;
TmpTopKomisyon     := TmpTopKomisyon     + Qry1.FieldByName('Komisyon').AsCurrency     ;
TmpTopToplamFiyat  := TmpTopToplamFiyat  + Qry1.FieldByName('ToplamFiyat').AsCurrency  ;
TmpTopOdemeTutari1 := TmpTopOdemeTutari1 + Qry1.FieldByName('OdemeTutari1').AsCurrency ;
TmpTopOdemeTutari2 := TmpTopOdemeTutari2 + Qry1.FieldByName('OdemeTutari2').AsCurrency ;
TmpTopOdemeTutari3 := TmpTopOdemeTutari3 + Qry1.FieldByName('OdemeTutari3').AsCurrency ;
TmpTopKalanMiktar  := TmpTopKalanMiktar  + Qry1.FieldByName('KalanMiktar').AsCurrency  ;

if Qry1.FieldByName('KalanMiktar').AsCurrency < 0 then AdvAgente.RowColor[x]:=clRed;

//AdvAgente.Cells[10,i]  := Qry1.FieldByName('Odeme').AsString;
AdvAgente.Cells[18,x]  := Qry1.FieldByName('KartNo').AsString;
AdvAgente.Cells[19,x]  := Qry1.FieldByName('id').AsString;

Qry1.Next;
end;
end;
///////////////////////////////////////////////////////////////////////////////

/////////////////////////TUR SATIÞ////////////////////////////////////////////////////////
if ChkATur.Checked = True then begin
TmpSql:='Select KayitTarihi,TurFirmasi,MusteriAdi,MusteriSoyAdi,Aciklama,NetFiyat,Komisyon,ToplamFiyat,KartNo,id,'+
'OdemeSekli1,OdemeSekli2,OdemeSekli3,OdemeTutari1,OdemeTutari2,OdemeTutari3,KalanMiktar,Odeme,KullanilanKart ' +
' from Tur where id<>0 ';

if ChkKullanilanKart.Checked = True then
TmpSql := TmpSql + ' and KullanilanKart=:KullanilanKart ' ;


if ChkYAdi.Checked = True then
TmpSql := TmpSql + ' and id in (Select Turid from YolcuListesi where Adi like :Adi) ' ;
if ChkYSoyAdi.Checked = True then
TmpSql := TmpSql + ' and id in (Select Turid from YolcuListesi where SoyAdi like :SoyAdi) ' ;

if ChkAgenteKayitTarihi.Checked = True then
TmpSql := TmpSql + ' and KayitTarihi between :dt1 and :dt2 ' ;

if ChkAcenteMusteri.Checked = True then
TmpSql := TmpSql + ' and MusteriAdi like :MusteriAdi and MusteriSoyAdi like :MusteriSoyAdi ' ;

if RbBorcuOlanlar.Checked = True then
TmpSql := TmpSql + ' and KalanMiktar > 0 ' ;

if RbAcenteOdenen.Checked = True then
TmpSql := TmpSql + ' and KalanMiktar = 0 ' ;

if ChkAyniGun.Checked = True then
TmpSql := TmpSql + ' and KayitTarihi <> :Bugun' ;

if ChkOdeme.Checked = True then begin
TmpSql := TmpSql + ' and (OdemeTarihi1 between :Dto1 and :Dto2 ' ;
TmpSql := TmpSql + ' or  OdemeTarihi2 between :Dto3 and :Dto4 ' ;
TmpSql := TmpSql + ' or  OdemeTarihi3 between :Dto5 and :Dto6) ' ;
end;


Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

if ChkKullanilanKart.Checked = True then
Qry1.Parameters.ParamByName('KullanilanKart').Value := CmbAgenteKullanilanKart.Text;

if ChkYAdi.Checked = True then
Qry1.Parameters.ParamByName('Adi').Value    := TxtYAdi.Text +'%';
if ChkYSoyAdi.Checked = True then
Qry1.Parameters.ParamByName('SoyAdi').Value := TxtYSoyadi.Text +'%';

if ChkAgenteKayitTarihi.Checked = True then begin
Qry1.Parameters.ParamByName('Dt1').Value :=
IntToStr(YearOf(DtAgente1.Date))+'-'+IntToStr(MonthOf(DtAgente1.Date))+'-'+IntToStr(DayOf(DtAgente1.Date));
Qry1.Parameters.ParamByName('Dt2').Value :=
IntToStr(YearOf(DtAgente2.Date))+'-'+IntToStr(MonthOf(DtAgente2.Date))+'-'+IntToStr(DayOf(DtAgente2.Date));
end;

if ChkAcenteMusteri.Checked = True then begin
Qry1.Parameters.ParamByName('MusteriAdi').Value    := CmbAcenteMusteriAdi.Text +'%';
Qry1.Parameters.ParamByName('MusteriSoyAdi').Value := CmbAcenteMusteriSoyAdi.Text +'%';
end;

if ChkAyniGun.Checked = True then
Qry1.Parameters.ParamByName('Bugun').Value :=
IntToStr(YearOf(Date))+'-'+IntToStr(MonthOf(Date))+'-'+IntToStr(DayOf(Date));


if ChkOdeme.Checked = True then begin
Qry1.Parameters.ParamByName('Dto1').Value :=
IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date));
Qry1.Parameters.ParamByName('Dto2').Value :=
IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date));
Qry1.Parameters.ParamByName('Dto3').Value :=
IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date));
Qry1.Parameters.ParamByName('Dto4').Value :=
IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date));
Qry1.Parameters.ParamByName('Dto5').Value :=
IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date));
Qry1.Parameters.ParamByName('Dto6').Value :=
IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date));
end;

Qry1.Prepared;
Qry1.Open;

for i := 1 to Qry1.RecordCount do begin
x:=x+1; AdvAgente.AddRow;
AdvAgente.Cells[1,x]   := Qry1.FieldByName('KayitTarihi').AsString;
AdvAgente.Cells[2,x]   := 'Tur';
AdvAgente.Cells[3,x]   := Qry1.FieldByName('TurFirmasi').AsString;
AdvAgente.Cells[4,x]   := Qry1.FieldByName('MusteriAdi').AsString;
AdvAgente.Cells[5,x]   := Qry1.FieldByName('MusteriSoyAdi').AsString;
AdvAgente.Cells[6,x]   := Qry1.FieldByName('Aciklama').AsString;
AdvAgente.Cells[7,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('NetFiyat').AsCurrency);
AdvAgente.Cells[8,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('Komisyon').AsCurrency);
AdvAgente.Cells[9,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('ToplamFiyat').AsCurrency);
AdvAgente.Cells[10,x]  := Qry1.FieldByName('OdemeSekli1').AsString;
AdvAgente.Cells[11,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari1').AsCurrency);
AdvAgente.Cells[12,x]  := Qry1.FieldByName('OdemeSekli2').AsString;
AdvAgente.Cells[13,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari2').AsCurrency);
AdvAgente.Cells[14,x]  := Qry1.FieldByName('OdemeSekli3').AsString;
AdvAgente.Cells[15,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari3').AsCurrency);
AdvAgente.Cells[16,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('KalanMiktar').AsCurrency);
AdvAgente.Cells[17,x]  := Qry1.FieldByName('KullanilanKart').AsString;

TmpTopNetfiyat     := TmpTopNetfiyat     + Qry1.FieldByName('NetFiyat').AsCurrency     ;
TmpTopKomisyon     := TmpTopKomisyon     + Qry1.FieldByName('Komisyon').AsCurrency     ;
TmpTopToplamFiyat  := TmpTopToplamFiyat  + Qry1.FieldByName('ToplamFiyat').AsCurrency  ;
TmpTopOdemeTutari1 := TmpTopOdemeTutari1 + Qry1.FieldByName('OdemeTutari1').AsCurrency ;
TmpTopOdemeTutari2 := TmpTopOdemeTutari2 + Qry1.FieldByName('OdemeTutari2').AsCurrency ;
TmpTopOdemeTutari3 := TmpTopOdemeTutari3 + Qry1.FieldByName('OdemeTutari3').AsCurrency ;
TmpTopKalanMiktar  := TmpTopKalanMiktar  + Qry1.FieldByName('KalanMiktar').AsCurrency  ;

if Qry1.FieldByName('KalanMiktar').AsCurrency < 0 then AdvAgente.RowColor[x]:=clRed;

//AdvAgente.Cells[10,i]  := Qry1.FieldByName('Odeme').AsString;
AdvAgente.Cells[18,x]  := Qry1.FieldByName('KartNo').AsString;
AdvAgente.Cells[19,x]  := Qry1.FieldByName('id').AsString;
Qry1.Next;
end;
end;
///////////////////////////////////////////////////////////////////////////////

//AdvKArt.SortSettings.Direction := [sdAscending] ;
if AdvAgente.Cells[1,1]<>'' then AdvAgente.RowCount := AdvAgente.RowCount-1;

AdvAgente.SortIndexes.Clear;
AdvAgente.SortIndexes.Add(1);
AdvAgente.QSortIndexed;
AdvAgente.AutoNumberCol(0);

//////////////////////////////////////////////////////////////////////////////////
if AdvAgente.Cells[1,1]<>'' then begin
x:=x+1; AdvAgente.AddRow;
AdvAgente.Cells[7,x]  := FormatFloat('#,##0.00',TmpTopNetfiyat)     ;
AdvAgente.Cells[8,x]  := FormatFloat('#,##0.00',TmpTopKomisyon)     ;
AdvAgente.Cells[9,x]  := FormatFloat('#,##0.00',TmpTopToplamFiyat)  ;
AdvAgente.Cells[11,x] := FormatFloat('#,##0.00',TmpTopOdemeTutari1) ;
AdvAgente.Cells[13,x] := FormatFloat('#,##0.00',TmpTopOdemeTutari2) ;
AdvAgente.Cells[15,x] := FormatFloat('#,##0.00',TmpTopOdemeTutari3) ;
AdvAgente.Cells[16,x] := FormatFloat('#,##0.00',TmpTopKalanMiktar)  ;
AdvAgente.RowColor[x]:=clYellow;
AdvAgente.Colors[16,x]:=clRed;
end;


AdvAgente.ColWidths[18]:=1;
AdvAgente.ColWidths[19]:=1;

end;

procedure TFrmRapor.Button1Click(Sender: TObject);
begin

QRepAgenteSatis:=TQRepAgenteSatis.Create(Self);
QRepAgenteSatis.QrlToplam.Caption := FormatFloat('#,##0.00',TmpPubToplamFiyat) ;
QRepAgenteSatis.QRLTarih.Caption := DateToStr(Date) ;
QRepAgenteSatis.PreviewModal;
QRepAgenteSatis.Free;
end;

procedure TFrmRapor.Button2Click(Sender: TObject);
var TmpSql:string;
i,x:integer;
TmpTopNetfiyat,TmpTopKomisyon,TmpTopToplamFiyat,TmpTopOdemeTutari1,TmpTopOdemeTutari2,TmpTopOdemeTutari3,TmpTopKalanMiktar : Currency;
begin

TmpTopNetfiyat:=0;
TmpTopKomisyon:=0;
TmpTopToplamFiyat:=0;
TmpTopOdemeTutari1:=0;
TmpTopOdemeTutari2:=0;
TmpTopOdemeTutari3:=0;
TmpTopKalanMiktar:=0;

AdvAgente.ClearRows(1,AdvAgente.RowCount-1);
AdvAgente.RowCount := 2;
x:=0;

//////////////////////////OTEL SATIÞ////////////////////////////////////////////////////////
if ChkAOtel.Checked = True then begin

TmpSql:='Select KayitTarihi,OtelAdi,MusteriAdi,MusteriSoyadi,Aciklama,NetFiyat,Komisyon,ToplamFiyat,KartNo,id,'+
'OdemeSekli1,OdemeSekli2,OdemeSekli3,OdemeTutari1,OdemeTutari2,OdemeTutari3,OdemeTarihi1,OdemeTarihi2,OdemeTarihi3,'+
'KalanMiktar,Odeme,KullanilanKart from otelsatis where id<>0 ';

if ChkKullanilanKart.Checked = True then
TmpSql := TmpSql + ' and KullanilanKart='''+CmbAgenteKullanilanKart.Text+''' ' ;

if ChkYAdi.Checked = True then
TmpSql := TmpSql + ' and id in (Select OtelSatisid from konaklayacakkisiler where Adi like '''+TxtYAdi.Text +'%'') ' ;
if ChkYSoyAdi.Checked = True then
TmpSql := TmpSql + ' and id in (Select OtelSatisid from konaklayacakkisiler where SoyAdi like '''+TxtYSoyadi.Text +'%'') ' ;

if ChkAgenteKayitTarihi.Checked = True then
TmpSql := TmpSql + ' and KayitTarihi between '+
' '''+IntToStr(YearOf(DtAgente1.Date))+'-'+IntToStr(MonthOf(DtAgente1.Date))+'-'+IntToStr(DayOf(DtAgente1.Date))+''' and '+
' '''+IntToStr(YearOf(DtAgente2.Date))+'-'+IntToStr(MonthOf(DtAgente2.Date))+'-'+IntToStr(DayOf(DtAgente2.Date))+''' ' ;

if ChkAcenteMusteri.Checked = True then
TmpSql := TmpSql + ' and MusteriAdi like '''+CmbAcenteMusteriAdi.Text +'%'' and MusteriSoyadi like '''+CmbAcenteMusteriSoyAdi.Text +'%'' ' ;

if RbBorcuOlanlar.Checked = True then
TmpSql := TmpSql + ' and KalanMiktar > 0 ' ;

if RbAcenteOdenen.Checked = True then
TmpSql := TmpSql + ' and KalanMiktar = 0 ' ;


if ChkAyniGun.Checked = True then
TmpSql := TmpSql + ' and KayitTarihi <> ' +
' '''+IntToStr(YearOf(Date))+'-'+IntToStr(MonthOf(Date))+'-'+IntToStr(DayOf(Date))+'''  ';

if ChkOdeme.Checked = True then begin
TmpSql := TmpSql + ' and (OdemeTarihi1 between ' +
' '''+IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date))+''' and '+
' '''+IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date))+''' ' ;

TmpSql := TmpSql + ' or  OdemeTarihi2 between  ' +
' '''+IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date))+''' and '+
' '''+IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date))+''' ' ;

TmpSql := TmpSql + ' or  OdemeTarihi3 between  ' +
' '''+IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date))+''' and '+
' '''+IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date))+''' ) ' ;
end;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Open;

for i := 1 to Qry1.RecordCount do begin
x:=x+1; AdvAgente.AddRow;
AdvAgente.Cells[1,x]   := Qry1.FieldByName('KayitTarihi').AsString;
AdvAgente.Cells[2,x]   := 'Otel';
AdvAgente.Cells[3,x]   := Qry1.FieldByName('OtelAdi').AsString;
AdvAgente.Cells[4,x]   := Qry1.FieldByName('MusteriAdi').AsString;
AdvAgente.Cells[5,x]   := Qry1.FieldByName('MusteriSoyadi').AsString;
AdvAgente.Cells[6,x]   := Qry1.FieldByName('Aciklama').AsString;
AdvAgente.Cells[7,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('NetFiyat').AsCurrency);
AdvAgente.Cells[8,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('Komisyon').AsCurrency);
AdvAgente.Cells[9,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('ToplamFiyat').AsCurrency);
AdvAgente.Cells[10,x]  := Qry1.FieldByName('OdemeSekli1').AsString;
AdvAgente.Cells[11,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari1').AsCurrency);
AdvAgente.Cells[12,x]  := Qry1.FieldByName('OdemeSekli2').AsString;
AdvAgente.Cells[13,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari2').AsCurrency);
AdvAgente.Cells[14,x]  := Qry1.FieldByName('OdemeSekli3').AsString;
AdvAgente.Cells[15,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari3').AsCurrency);
AdvAgente.Cells[16,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('KalanMiktar').AsCurrency);
AdvAgente.Cells[17,x]  := Qry1.FieldByName('KullanilanKart').AsString;

TmpTopNetfiyat     := TmpTopNetfiyat     + Qry1.FieldByName('NetFiyat').AsCurrency     ;
TmpTopKomisyon     := TmpTopKomisyon     + Qry1.FieldByName('Komisyon').AsCurrency     ;
TmpTopToplamFiyat  := TmpTopToplamFiyat  + Qry1.FieldByName('ToplamFiyat').AsCurrency  ;
TmpTopOdemeTutari1 := TmpTopOdemeTutari1 + Qry1.FieldByName('OdemeTutari1').AsCurrency ;
TmpTopOdemeTutari2 := TmpTopOdemeTutari2 + Qry1.FieldByName('OdemeTutari2').AsCurrency ;
TmpTopOdemeTutari3 := TmpTopOdemeTutari3 + Qry1.FieldByName('OdemeTutari3').AsCurrency ;
TmpTopKalanMiktar  := TmpTopKalanMiktar  + Qry1.FieldByName('KalanMiktar').AsCurrency  ;

if Qry1.FieldByName('KalanMiktar').AsCurrency < 0 then AdvAgente.RowColor[x]:=clRed;

//AdvAgente.Cells[10,i]  := Qry1.FieldByName('Odeme').AsString;
AdvAgente.Cells[18,x]  := Qry1.FieldByName('KartNo').AsString;
AdvAgente.Cells[19,x]  := Qry1.FieldByName('id').AsString;

Qry1.Next;
end;
end;
///////////////////////////////////////////////////////////////////////////////



//////////////////////////BÝLET SATIÞ////////////////////////////////////////////////////////
if ChkABilet.Checked = True then begin
TmpSql:='Select KayitTarihi,HavaDenizYolu,MusAdi,MusSoyadi,Aciklama,NetFiyati,Komisyon,ToplamFiyat,KartNo,id,'+
'OdemeSekli1,OdemeSekli2,OdemeSekli3,OdemeTutari1,OdemeTutari2,OdemeTutari3,KalanMiktar,Odeme,KullanilanKart ' +
' from rezervasyon where id<>0 ';

if ChkYAdi.Checked = True then
TmpSql := TmpSql + ' and id in (Select Biletid from BiletYolcuListesi where Adi like '''+TxtYAdi.Text +'%'') ' ;
if ChkYSoyAdi.Checked = True then
TmpSql := TmpSql + ' and id in (Select Biletid from BiletYolcuListesi where SoyAdi like '''+TxtYSoyAdi.Text +'%'') ' ;

if (ChkAgentePnr.Checked  = True) then
TmpSql := TmpSql + ' and Pnr ='''+TxtAgentePnr.Text+''' ' ;

if ChkAgenteKayitTarihi.Checked = True then
TmpSql := TmpSql + ' and KayitTarihi between '+
' '''+IntToStr(YearOf(DtAgente1.Date))+'-'+IntToStr(MonthOf(DtAgente1.Date))+'-'+IntToStr(DayOf(DtAgente1.Date))+''' and '+
' '''+IntToStr(YearOf(DtAgente2.Date))+'-'+IntToStr(MonthOf(DtAgente2.Date))+'-'+IntToStr(DayOf(DtAgente2.Date))+''' ' ;

if ChkAcenteMusteri.Checked = True then
TmpSql := TmpSql + ' and MusAdi like '''+CmbAcenteMusteriAdi.Text +'%'' and MusSoyadi like '''+CmbAcenteMusteriSoyAdi.Text +'%'' ' ;

if RbBorcuOlanlar.Checked = True then
TmpSql := TmpSql + ' and KalanMiktar > 0 ' ;

if RbAcenteOdenen.Checked = True then
TmpSql := TmpSql + ' and KalanMiktar = 0 ' ;

if ChkAyniGun.Checked = True then
TmpSql := TmpSql + ' and KayitTarihi <> ' +
' '''+IntToStr(YearOf(Date))+'-'+IntToStr(MonthOf(Date))+'-'+IntToStr(DayOf(Date))+'''  ';


if ChkOdeme.Checked = True then begin
TmpSql := TmpSql + ' and (OdemeTarihi1 between ' +
' '''+IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date))+''' and '+
' '''+IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date))+''' ' ;

TmpSql := TmpSql + ' or  OdemeTarihi2 between  ' +
' '''+IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date))+''' and '+
' '''+IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date))+''' ' ;

TmpSql := TmpSql + ' or  OdemeTarihi3 between  ' +
' '''+IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date))+''' and '+
' '''+IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date))+''' ) ' ;

end;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Open;

for i := 1 to Qry1.RecordCount do begin
x:=x+1; AdvAgente.AddRow;
AdvAgente.Cells[1,x]   := Qry1.FieldByName('KayitTarihi').AsString;
AdvAgente.Cells[2,x]   := 'Bilet';
AdvAgente.Cells[3,x]   := Qry1.FieldByName('HavaDenizYolu').AsString;
AdvAgente.Cells[4,x]   := Qry1.FieldByName('MusAdi').AsString;
AdvAgente.Cells[5,x]   := Qry1.FieldByName('MusSoyadi').AsString;
AdvAgente.Cells[6,x]   := Qry1.FieldByName('Aciklama').AsString;
AdvAgente.Cells[7,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('NetFiyati').AsCurrency);
AdvAgente.Cells[8,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('Komisyon').AsCurrency);
AdvAgente.Cells[9,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('ToplamFiyat').AsCurrency);
AdvAgente.Cells[10,x]  := Qry1.FieldByName('OdemeSekli1').AsString;
AdvAgente.Cells[11,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari1').AsCurrency);
AdvAgente.Cells[12,x]  := Qry1.FieldByName('OdemeSekli2').AsString;
AdvAgente.Cells[13,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari2').AsCurrency);
AdvAgente.Cells[14,x]  := Qry1.FieldByName('OdemeSekli3').AsString;
AdvAgente.Cells[15,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari3').AsCurrency);
AdvAgente.Cells[16,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('KalanMiktar').AsCurrency);
AdvAgente.Cells[17,x]  := Qry1.FieldByName('KullanilanKart').AsString;

TmpTopNetfiyat     := TmpTopNetfiyat     + Qry1.FieldByName('NetFiyati').AsCurrency     ;
TmpTopKomisyon     := TmpTopKomisyon     + Qry1.FieldByName('Komisyon').AsCurrency     ;
TmpTopToplamFiyat  := TmpTopToplamFiyat  + Qry1.FieldByName('ToplamFiyat').AsCurrency  ;
TmpTopOdemeTutari1 := TmpTopOdemeTutari1 + Qry1.FieldByName('OdemeTutari1').AsCurrency ;
TmpTopOdemeTutari2 := TmpTopOdemeTutari2 + Qry1.FieldByName('OdemeTutari2').AsCurrency ;
TmpTopOdemeTutari3 := TmpTopOdemeTutari3 + Qry1.FieldByName('OdemeTutari3').AsCurrency ;
TmpTopKalanMiktar  := TmpTopKalanMiktar  + Qry1.FieldByName('KalanMiktar').AsCurrency  ;

if Qry1.FieldByName('KalanMiktar').AsCurrency < 0 then AdvAgente.RowColor[x]:=clRed;
//AdvAgente.Cells[10,i]  := Qry1.FieldByName('Odeme').AsString;
AdvAgente.Cells[18,x]  := Qry1.FieldByName('KartNo').AsString;
AdvAgente.Cells[19,x]  := Qry1.FieldByName('id').AsString;

Qry1.Next;
end;
end;
///////////////////////////////////////////////////////////////////////////////


/////////////////////////TRANSFER SATIÞ////////////////////////////////////////////////////////
if ChkATransfer.Checked = True then begin
TmpSql:='Select KayitTarihi,TransferFirmasi,MusteriAdi,MusteriSoyAdi,Aciklama,NetFiyat,Komisyon,ToplamFiyat,KartNo,id,'+
'OdemeSekli1,OdemeSekli2,OdemeSekli3,OdemeTutari1,OdemeTutari2,OdemeTutari3,KalanMiktar,Odeme,KullanilanKart ' +
' from transfer where id<>0 ';

if ChkKullanilanKart.Checked = True then
TmpSql := TmpSql + ' and KullanilanKart='''+CmbAgenteKullanilanKart.Text+''' ' ;

if ChkAgenteKayitTarihi.Checked = True then
TmpSql := TmpSql + ' and KayitTarihi between '+
' '''+IntToStr(YearOf(DtAgente1.Date))+'-'+IntToStr(MonthOf(DtAgente1.Date))+'-'+IntToStr(DayOf(DtAgente1.Date))+''' and '+
' '''+IntToStr(YearOf(DtAgente2.Date))+'-'+IntToStr(MonthOf(DtAgente2.Date))+'-'+IntToStr(DayOf(DtAgente2.Date))+''' ' ;


if ChkAcenteMusteri.Checked = True then
TmpSql := TmpSql + ' and MusteriAdi like '''+CmbAcenteMusteriAdi.Text +'%'' and MusteriSoyadi like '''+CmbAcenteMusteriSoyAdi.Text +'%'' ' ;

if RbBorcuOlanlar.Checked = True then
TmpSql := TmpSql + ' and KalanMiktar > 0 ' ;

if RbAcenteOdenen.Checked = True then
TmpSql := TmpSql + ' and KalanMiktar = 0 ' ;

if ChkAyniGun.Checked = True then
TmpSql := TmpSql + ' and KayitTarihi <> ' +
' '''+IntToStr(YearOf(Date))+'-'+IntToStr(MonthOf(Date))+'-'+IntToStr(DayOf(Date))+'''  ';

if ChkOdeme.Checked = True then begin
TmpSql := TmpSql + ' and (OdemeTarihi1 between ' +
' '''+IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date))+''' and '+
' '''+IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date))+''' ' ;

TmpSql := TmpSql + ' or  OdemeTarihi2 between  ' +
' '''+IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date))+''' and '+
' '''+IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date))+''' ' ;

TmpSql := TmpSql + ' or  OdemeTarihi3 between  ' +
' '''+IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date))+''' and '+
' '''+IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date))+''' ) ' ;

end;


Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Prepared;
Qry1.Open;

for i := 1 to Qry1.RecordCount do begin
x:=x+1; AdvAgente.AddRow;
AdvAgente.Cells[1,x]   := Qry1.FieldByName('KayitTarihi').AsString;
AdvAgente.Cells[2,x]   := 'Transfer';
AdvAgente.Cells[3,x]   := Qry1.FieldByName('TransferFirmasi').AsString;
AdvAgente.Cells[4,x]   := Qry1.FieldByName('MusteriAdi').AsString;
AdvAgente.Cells[5,x]   := Qry1.FieldByName('MusteriSoyAdi').AsString;
AdvAgente.Cells[6,x]   := Qry1.FieldByName('Aciklama').AsString;
AdvAgente.Cells[7,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('NetFiyat').AsCurrency);
AdvAgente.Cells[8,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('Komisyon').AsCurrency);
AdvAgente.Cells[9,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('ToplamFiyat').AsCurrency);
AdvAgente.Cells[10,x]  := Qry1.FieldByName('OdemeSekli1').AsString;
AdvAgente.Cells[11,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari1').AsCurrency);
AdvAgente.Cells[12,x]  := Qry1.FieldByName('OdemeSekli2').AsString;
AdvAgente.Cells[13,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari2').AsCurrency);
AdvAgente.Cells[14,x]  := Qry1.FieldByName('OdemeSekli3').AsString;
AdvAgente.Cells[15,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari3').AsCurrency);
AdvAgente.Cells[16,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('KalanMiktar').AsCurrency);
AdvAgente.Cells[17,x]  := Qry1.FieldByName('KullanilanKart').AsString;

TmpTopNetfiyat     := TmpTopNetfiyat     + Qry1.FieldByName('NetFiyat').AsCurrency     ;
TmpTopKomisyon     := TmpTopKomisyon     + Qry1.FieldByName('Komisyon').AsCurrency     ;
TmpTopToplamFiyat  := TmpTopToplamFiyat  + Qry1.FieldByName('ToplamFiyat').AsCurrency  ;
TmpTopOdemeTutari1 := TmpTopOdemeTutari1 + Qry1.FieldByName('OdemeTutari1').AsCurrency ;
TmpTopOdemeTutari2 := TmpTopOdemeTutari2 + Qry1.FieldByName('OdemeTutari2').AsCurrency ;
TmpTopOdemeTutari3 := TmpTopOdemeTutari3 + Qry1.FieldByName('OdemeTutari3').AsCurrency ;
TmpTopKalanMiktar  := TmpTopKalanMiktar  + Qry1.FieldByName('KalanMiktar').AsCurrency  ;

if Qry1.FieldByName('KalanMiktar').AsCurrency < 0 then AdvAgente.RowColor[x]:=clRed;

//AdvAgente.Cells[10,i]  := Qry1.FieldByName('Odeme').AsString;
AdvAgente.Cells[18,x]  := Qry1.FieldByName('KartNo').AsString;
AdvAgente.Cells[19,x]  := Qry1.FieldByName('id').AsString;

Qry1.Next;
end;
end;
///////////////////////////////////////////////////////////////////////////////

/////////////////////////TUR SATIÞ////////////////////////////////////////////////////////
if ChkATur.Checked = True then begin
TmpSql:='Select KayitTarihi,TurFirmasi,MusteriAdi,MusteriSoyAdi,Aciklama,NetFiyat,Komisyon,ToplamFiyat,KartNo,id,'+
'OdemeSekli1,OdemeSekli2,OdemeSekli3,OdemeTutari1,OdemeTutari2,OdemeTutari3,KalanMiktar,Odeme,KullanilanKart ' +
' from Tur where id<>0 ';

if ChkKullanilanKart.Checked = True then
TmpSql := TmpSql + ' and KullanilanKart='''+CmbAgenteKullanilanKart.Text+''' ' ;

if ChkYAdi.Checked = True then
TmpSql := TmpSql + ' and id in (Select Turid from YolcuListesi where Adi like '''+TxtYAdi.Text +'%'') ' ;
if ChkYSoyAdi.Checked = True then
TmpSql := TmpSql + ' and id in (Select Turid from YolcuListesi where SoyAdi like '''+TxtYSoyAdi.Text +'%'') ' ;

if ChkAgenteKayitTarihi.Checked = True then
TmpSql := TmpSql + ' and KayitTarihi between '+
' '''+IntToStr(YearOf(DtAgente1.Date))+'-'+IntToStr(MonthOf(DtAgente1.Date))+'-'+IntToStr(DayOf(DtAgente1.Date))+''' and '+
' '''+IntToStr(YearOf(DtAgente2.Date))+'-'+IntToStr(MonthOf(DtAgente2.Date))+'-'+IntToStr(DayOf(DtAgente2.Date))+''' ' ;


if ChkAcenteMusteri.Checked = True then
TmpSql := TmpSql + ' and MusteriAdi like '''+CmbAcenteMusteriAdi.Text +'%'' and MusteriSoyadi like '''+CmbAcenteMusteriSoyAdi.Text +'%'' ' ;

if RbBorcuOlanlar.Checked = True then
TmpSql := TmpSql + ' and KalanMiktar > 0 ' ;

if RbAcenteOdenen.Checked = True then
TmpSql := TmpSql + ' and KalanMiktar = 0 ' ;

if ChkAyniGun.Checked = True then
TmpSql := TmpSql + ' and KayitTarihi <> ' +
' '''+IntToStr(YearOf(Date))+'-'+IntToStr(MonthOf(Date))+'-'+IntToStr(DayOf(Date))+'''  ';


if ChkOdeme.Checked = True then begin
TmpSql := TmpSql + ' and (OdemeTarihi1 between ' +
' '''+IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date))+''' and '+
' '''+IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date))+''' ' ;

TmpSql := TmpSql + ' or  OdemeTarihi2 between  ' +
' '''+IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date))+''' and '+
' '''+IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date))+''' ' ;

TmpSql := TmpSql + ' or  OdemeTarihi3 between  ' +
' '''+IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date))+''' and '+
' '''+IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date))+''' ) ' ;

end;



Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Prepared;
Qry1.Open;

for i := 1 to Qry1.RecordCount do begin
x:=x+1; AdvAgente.AddRow;
AdvAgente.Cells[1,x]   := Qry1.FieldByName('KayitTarihi').AsString;
AdvAgente.Cells[2,x]   := 'Tur';
AdvAgente.Cells[3,x]   := Qry1.FieldByName('TurFirmasi').AsString;
AdvAgente.Cells[4,x]   := Qry1.FieldByName('MusteriAdi').AsString;
AdvAgente.Cells[5,x]   := Qry1.FieldByName('MusteriSoyAdi').AsString;
AdvAgente.Cells[6,x]   := Qry1.FieldByName('Aciklama').AsString;
AdvAgente.Cells[7,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('NetFiyat').AsCurrency);
AdvAgente.Cells[8,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('Komisyon').AsCurrency);
AdvAgente.Cells[9,x]   := FormatFloat('#,##0.00',Qry1.FieldByName('ToplamFiyat').AsCurrency);
AdvAgente.Cells[10,x]  := Qry1.FieldByName('OdemeSekli1').AsString;
AdvAgente.Cells[11,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari1').AsCurrency);
AdvAgente.Cells[12,x]  := Qry1.FieldByName('OdemeSekli2').AsString;
AdvAgente.Cells[13,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari2').AsCurrency);
AdvAgente.Cells[14,x]  := Qry1.FieldByName('OdemeSekli3').AsString;
AdvAgente.Cells[15,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('OdemeTutari3').AsCurrency);
AdvAgente.Cells[16,x]  := FormatFloat('#,##0.00',Qry1.FieldByName('KalanMiktar').AsCurrency);
AdvAgente.Cells[17,x]  := Qry1.FieldByName('KullanilanKart').AsString;

TmpTopNetfiyat     := TmpTopNetfiyat     + Qry1.FieldByName('NetFiyat').AsCurrency     ;
TmpTopKomisyon     := TmpTopKomisyon     + Qry1.FieldByName('Komisyon').AsCurrency     ;
TmpTopToplamFiyat  := TmpTopToplamFiyat  + Qry1.FieldByName('ToplamFiyat').AsCurrency  ;
TmpTopOdemeTutari1 := TmpTopOdemeTutari1 + Qry1.FieldByName('OdemeTutari1').AsCurrency ;
TmpTopOdemeTutari2 := TmpTopOdemeTutari2 + Qry1.FieldByName('OdemeTutari2').AsCurrency ;
TmpTopOdemeTutari3 := TmpTopOdemeTutari3 + Qry1.FieldByName('OdemeTutari3').AsCurrency ;
TmpTopKalanMiktar  := TmpTopKalanMiktar  + Qry1.FieldByName('KalanMiktar').AsCurrency  ;

if Qry1.FieldByName('KalanMiktar').AsCurrency < 0 then AdvAgente.RowColor[x]:=clRed;

//AdvAgente.Cells[10,i]  := Qry1.FieldByName('Odeme').AsString;
AdvAgente.Cells[18,x]  := Qry1.FieldByName('KartNo').AsString;
AdvAgente.Cells[19,x]  := Qry1.FieldByName('id').AsString;
Qry1.Next;
end;
end;
///////////////////////////////////////////////////////////////////////////////

//AdvKArt.SortSettings.Direction := [sdAscending] ;
if AdvAgente.Cells[1,1]<>'' then AdvAgente.RowCount := AdvAgente.RowCount-1;

AdvAgente.SortIndexes.Clear;
AdvAgente.SortIndexes.Add(1);
AdvAgente.QSortIndexed;
AdvAgente.AutoNumberCol(0);

//////////////////////////////////////////////////////////////////////////////////
if AdvAgente.Cells[1,1]<>'' then begin
x:=x+1; AdvAgente.AddRow;
AdvAgente.Cells[7,x]  := FormatFloat('#,##0.00',TmpTopNetfiyat)     ;
AdvAgente.Cells[8,x]  := FormatFloat('#,##0.00',TmpTopKomisyon)     ;
AdvAgente.Cells[9,x]  := FormatFloat('#,##0.00',TmpTopToplamFiyat)  ;
AdvAgente.Cells[11,x] := FormatFloat('#,##0.00',TmpTopOdemeTutari1) ;
AdvAgente.Cells[13,x] := FormatFloat('#,##0.00',TmpTopOdemeTutari2) ;
AdvAgente.Cells[15,x] := FormatFloat('#,##0.00',TmpTopOdemeTutari3) ;
AdvAgente.Cells[16,x] := FormatFloat('#,##0.00',TmpTopKalanMiktar)  ;
AdvAgente.RowColor[x]:=clYellow;
AdvAgente.Colors[16,x]:=clRed;
end;


AdvAgente.ColWidths[18]:=1;
AdvAgente.ColWidths[19]:=1;

end;
procedure TFrmRapor.Button3Click(Sender: TObject);
var TmpSql,TmpSql2,TmpKullanici1,TmpKullanici2:string;
i,x:integer;
TmpTopNetfiyat,TmpTopDKomisyon,TmpTopKomisyon,TmpTopToplamFiyat,TmpTopOdemeTutari1,TmpTopOdemeTutari2,TmpTopOdemeTutari3,TmpTopKalanMiktar,TmpTToplam : Currency;
begin

TmpTopNetfiyat:=0;
TmpTopKomisyon:=0;
TmpTopDKomisyon:=0;
TmpTopToplamFiyat:=0;
TmpTopOdemeTutari1:=0;
TmpTopOdemeTutari2:=0;
TmpTopOdemeTutari3:=0;
TmpTopKalanMiktar:=0;
TmpTToplam:=0;

AdvAgente.ClearRows(1,AdvAgente.RowCount-1);
AdvAgente.RowCount := 2;
x:=0;

///////////////////////////////////////////////////////////////////////
TmpSql2:='';
if ChkKullanilanKart.Checked = True then
TmpSql2 := TmpSql2 + ' and KullanilanKart='''+CmbAgenteKullanilanKart.Text+''' ' ;

if ChkOdeme.Checked = True then begin
TmpSql2 := TmpSql2 + ' and (OdemeTarihi1 between ' +
' '''+IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date))+''' and '+
' '''+IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date))+''' ' ;

TmpSql2 := TmpSql2 + ' or  OdemeTarihi2 between  ' +
' '''+IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date))+''' and '+
' '''+IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date))+''' ' ;

TmpSql2 := TmpSql2 + ' or  OdemeTarihi3 between  ' +
' '''+IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date))+''' and '+
' '''+IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date))+''' ) ' ;
end;

if RbBorcuOlanlar.Checked = True then
TmpSql2 := TmpSql2 + ' and KalanMiktar > 0 ' ;

if RbAcenteOdenen.Checked = True then
TmpSql2 := TmpSql2 + ' and KalanMiktar = 0 ' ;

if ChkAyniGun.Checked = True then
TmpSql2 := TmpSql2 + ' and KayitTarihi <> ' +
' '''+IntToStr(YearOf(Date))+'-'+IntToStr(MonthOf(Date))+'-'+IntToStr(DayOf(Date))+'''  ';

if ChkAgenteKayitTarihi.Checked = True then
TmpSql2 := TmpSql2+ ' and KayitTarihi between '+
' '''+IntToStr(YearOf(DtAgente1.Date))+'-'+IntToStr(MonthOf(DtAgente1.Date))+'-'+IntToStr(DayOf(DtAgente1.Date))+''' and '+
' '''+IntToStr(YearOf(DtAgente2.Date))+'-'+IntToStr(MonthOf(DtAgente2.Date))+'-'+IntToStr(DayOf(DtAgente2.Date))+''' ' ;

TmpKullanici1:='';
TmpKullanici2:='';
for i:=0 to chkKullanici.items.count-1 do begin
    if chkKullanici.Checked[i]  = True then  TmpKullanici1 := TmpKullanici1 +''''+chkKullanici.items.Strings[i]+''',';
    if chkKullanici2.Checked[i] = True then  TmpKullanici2 := TmpKullanici2 +''''+chkKullanici2.items.Strings[i]+''',';
end;

TmpKullanici1:=leftStr(TmpKullanici1,Length(TmpKullanici1)-1);
TmpKullanici2:=leftStr(TmpKullanici2,Length(TmpKullanici2)-1);

if TmpKullanici1<>'' then
TmpSql2 := TmpSql2+ ' and kaydeden in ('+TmpKullanici1+') ';

if TmpKullanici2<>'' then
TmpSql2 := TmpSql2+ ' and guncelleyen in ('+TmpKullanici2+') ';

///////////////////////////////////////////////////////////////////////

//////////////////////////OTEL SATIÞ////////////////////////////////////////////////////////


TmpSql:='Select KayitTarihi,''Otel'' as islem,OtelAdi,MusteriAdi,MusteriSoyadi,Aciklama,NetFiyat,Komisyon, 0 as DigerKomisyon,ToplamFiyat as TF,KartNo,id,ToplamFiyat, '+
'OdemeSekli1,OdemeSekli2,OdemeSekli3,OdemeTutari1,OdemeTutari2,OdemeTutari3,KalanMiktar,Odeme,KullanilanKart '+
'from otelsatis  ';

if ChkAOtel.Checked = True then TmpSql := TmpSql + ' where id<>0 '
Else TmpSql := TmpSql + ' where id=0 ' ;

if ChkYAdi.Checked = True then
TmpSql := TmpSql + ' and id in (Select OtelSatisid from konaklayacakkisiler where Adi like '''+TxtYAdi.Text +'%'') ' ;
if ChkYSoyAdi.Checked = True then
TmpSql := TmpSql + ' and id in (Select OtelSatisid from konaklayacakkisiler where SoyAdi like '''+TxtYSoyadi.Text +'%'') ' ;

if ChkAcenteMusteri.Checked = True then
TmpSql := TmpSql + ' and MusteriAdi like '''+CmbAcenteMusteriAdi.Text +'%'' and MusteriSoyadi like '''+CmbAcenteMusteriSoyAdi.Text +'%'' ' ;

TmpSql := TmpSql + TmpSql2;

///////////////////////////////////////////////////////////////////////////////

//////////////////////////BÝLET SATIÞ////////////////////////////////////////////////////////
TmpSql:=TmpSql+ 'Union All ' ;
TmpSql:=TmpSql+'Select KayitTarihi,''Bilet'' as islem,HavaDenizYolu,MusAdi,MusSoyadi,Aciklama,NetFiyati,Komisyon,DigerKomisyon,(Toplamfiyat-Geriiade) as TF,KartNo,id,Toplamfiyat,'+
'OdemeSekli1,OdemeSekli2,OdemeSekli3,OdemeTutari1,OdemeTutari2,OdemeTutari3,KalanMiktar,Odeme,KullanilanKart ' +
' from rezervasyon  ';

if ChkABilet.Checked = True then TmpSql := TmpSql + ' where id<>0 '
Else TmpSql := TmpSql + ' where id=0 ' ;

if ChkYAdi.Checked = True then
TmpSql := TmpSql + ' and id in (Select Biletid from BiletYolcuListesi where Adi like '''+TxtYAdi.Text +'%'') ' ;
if ChkYSoyAdi.Checked = True then
TmpSql := TmpSql + ' and id in (Select Biletid from BiletYolcuListesi where SoyAdi like '''+TxtYSoyAdi.Text +'%'') ' ;

if (ChkAgentePnr.Checked  = True) then
TmpSql := TmpSql + ' and Pnr ='''+TxtAgentePnr.Text+''' ' ;

if ChkAcenteMusteri.Checked = True then
TmpSql := TmpSql + ' and MusAdi like '''+CmbAcenteMusteriAdi.Text +'%'' and MusSoyadi like '''+CmbAcenteMusteriSoyAdi.Text +'%'' ' ;

if CmbHavaDenizYolu.text <> '' then
TmpSql := TmpSql + ' and HavaDenizYolu ='''+CmbHavaDenizYolu.text+''' ' ;

TmpSql := TmpSql + TmpSql2;
///////////////////////////////////////////////////////////////////////////////

/////////////////////////TRANSFER SATIÞ////////////////////////////////////////////////////////
TmpSql:=TmpSql+ 'Union All ' ;
TmpSql:=TmpSql+'Select KayitTarihi,''Transfer'' as islem,TransferFirmasi,MusteriAdi,MusteriSoyAdi,Aciklama,NetFiyat,Komisyon,0,ToplamFiyat as TF,KartNo,id,Toplamfiyat, '+
'OdemeSekli1,OdemeSekli2,OdemeSekli3,OdemeTutari1,OdemeTutari2,OdemeTutari3,KalanMiktar,Odeme,KullanilanKart ' +
' from transfer ';

if ChkATransfer.Checked = True then TmpSql := TmpSql + ' where id<>0 '
Else TmpSql := TmpSql + ' where id=0 ' ;

if ChkAcenteMusteri.Checked = True then
TmpSql := TmpSql + ' and MusteriAdi like '''+CmbAcenteMusteriAdi.Text +'%'' and MusteriSoyadi like '''+CmbAcenteMusteriSoyAdi.Text +'%'' ' ;

if ChkYAdi.Checked = True then
TmpSql := TmpSql + ' and id in (Select Transferid from TransferYolcuListesi where Adi like '''+TxtYAdi.Text +'%'') ' ;
if ChkYSoyAdi.Checked = True then
TmpSql := TmpSql + ' and id in (Select Transferid from TransferYolcuListesi where SoyAdi like '''+TxtYSoyAdi.Text +'%'') ' ;

TmpSql := TmpSql + TmpSql2;
///////////////////////////////////////////////////////////////////////////////

/////////////////////////TUR SATIÞ////////////////////////////////////////////////////////
TmpSql:=TmpSql+ 'Union All ' ;
TmpSql:=TmpSql+'Select KayitTarihi,''Tur'' as islem, TurFirmasi,MusteriAdi,MusteriSoyAdi,Aciklama,NetFiyat,Komisyon,0,ToplamFiyat as TF,KartNo,id,Toplamfiyat,'+
'OdemeSekli1,OdemeSekli2,OdemeSekli3,OdemeTutari1,OdemeTutari2,OdemeTutari3,KalanMiktar,Odeme,KullanilanKart ' +
' from Tur ';

if ChkATur.Checked = True then TmpSql := TmpSql + ' where id<>0 '
Else TmpSql := TmpSql + ' where id=0 ' ;

if ChkYAdi.Checked = True then
TmpSql := TmpSql + ' and id in (Select Turid from YolcuListesi where Adi like '''+TxtYAdi.Text +'%'') ' ;
if ChkYSoyAdi.Checked = True then
TmpSql := TmpSql + ' and id in (Select Turid from YolcuListesi where SoyAdi like '''+TxtYSoyAdi.Text +'%'') ' ;

if ChkAcenteMusteri.Checked = True then
TmpSql := TmpSql + ' and MusteriAdi like '''+CmbAcenteMusteriAdi.Text +'%'' and MusteriSoyadi like '''+CmbAcenteMusteriSoyAdi.Text +'%'' ' ;

TmpSql := TmpSql + TmpSql2 +'Order By KayitTarihi DESC ';
///////////////////////////////////////////////////////////////////////////////

Qry3.Close;
Qry3.SQL.Clear;
Qry3.SQL.Add( 'DROP PROCEDURE IF EXISTS My_Procedure;');
Qry3.execsql;

Qry3.Close;
Qry3.SQL.Clear;
Qry3.SQL.Add( 'CREATE PROCEDURE My_Procedure() ');
Qry3.SQL.Add( 'BEGIN ');
Qry3.SQL.Add( ' '+TmpSql+' ; ');
Qry3.SQL.Add( 'END ');
Qry3.execsql;

Qry3.Close;
Qry3.SQL.Clear;
Qry3.SQL.Add( 'call My_Procedure() ');
Qry3.open;

for i := 1 to Qry3.RecordCount do begin
x:=x+1; AdvAgente.AddRow;
AdvAgente.Cells[1,x]   := Qry3.FieldByName('KayitTarihi').AsString;
AdvAgente.Cells[2,x]   := Qry3.FieldByName('islem').AsString;
AdvAgente.Cells[3,x]   := Qry3.FieldByName('OtelAdi').AsString;
AdvAgente.Cells[4,x]   := Qry3.FieldByName('MusteriAdi').AsString;
AdvAgente.Cells[5,x]   := Qry3.FieldByName('MusteriSoyadi').AsString;
AdvAgente.Cells[6,x]   := Qry3.FieldByName('Aciklama').AsString;
AdvAgente.Cells[7,x]   := FormatFloat('#,##0.00',Qry3.FieldByName('NetFiyat').AsCurrency);
AdvAgente.Cells[8,x]   := FormatFloat('#,##0.00',Qry3.FieldByName('Komisyon').AsCurrency);
AdvAgente.Cells[9,x]   := FormatFloat('#,##0.00',Qry3.FieldByName('DigerKomisyon').AsCurrency);
AdvAgente.Cells[10,x]  := FormatFloat('#,##0.00',Qry3.FieldByName('TF').AsCurrency);
AdvAgente.Cells[11,x]  := Qry3.FieldByName('OdemeSekli1').AsString;
AdvAgente.Cells[12,x]  := FormatFloat('#,##0.00',Qry3.FieldByName('OdemeTutari1').AsCurrency);
AdvAgente.Cells[13,x]  := Qry3.FieldByName('OdemeSekli2').AsString;
AdvAgente.Cells[14,x]  := FormatFloat('#,##0.00',Qry3.FieldByName('OdemeTutari2').AsCurrency);
AdvAgente.Cells[15,x]  := Qry3.FieldByName('OdemeSekli3').AsString;
AdvAgente.Cells[16,x]  := FormatFloat('#,##0.00',Qry3.FieldByName('OdemeTutari3').AsCurrency);
AdvAgente.Cells[17,x]  := FormatFloat('#,##0.00',Qry3.FieldByName('KalanMiktar').AsCurrency);
AdvAgente.Cells[18,x]  := Qry3.FieldByName('KullanilanKart').AsString;

TmpTopNetfiyat     := TmpTopNetfiyat     + Qry3.FieldByName('NetFiyat').AsCurrency     ;
TmpTopKomisyon     := TmpTopKomisyon     + Qry3.FieldByName('Komisyon').AsCurrency     ;
TmpTopDKomisyon    := TmpTopDKomisyon    + Qry3.FieldByName('DigerKomisyon').AsCurrency;
TmpTopToplamFiyat  := TmpTopToplamFiyat  + Qry3.FieldByName('ToplamFiyat').AsCurrency  ;
TmpTopOdemeTutari1 := TmpTopOdemeTutari1 + Qry3.FieldByName('OdemeTutari1').AsCurrency ;
TmpTopOdemeTutari2 := TmpTopOdemeTutari2 + Qry3.FieldByName('OdemeTutari2').AsCurrency ;
TmpTopOdemeTutari3 := TmpTopOdemeTutari3 + Qry3.FieldByName('OdemeTutari3').AsCurrency ;
TmpTopKalanMiktar  := TmpTopKalanMiktar  + Qry3.FieldByName('KalanMiktar').AsCurrency  ;
TmpTToplam         := TmpTToplam  + Qry3.FieldByName('KalanMiktar').AsCurrency  ;

if Qry3.FieldByName('KalanMiktar').AsCurrency < 0 then AdvAgente.RowColor[x]:=clRed;

AdvAgente.Cells[19,x]  := Qry3.FieldByName('KartNo').AsString;
AdvAgente.Cells[20,x]  := Qry3.FieldByName('id').AsString;

Qry3.Next;
end;
///////////////////////////////////////////////////////////////////////////////

if AdvAgente.Cells[1,1]<>'' then AdvAgente.RowCount := AdvAgente.RowCount-1;
{AdvAgente.SortIndexes.Clear;
AdvAgente.SortIndexes.Add(1);
AdvAgente.QSortIndexed;
}
AdvAgente.AutoNumberCol(0);

//////////////////////////////////////////////////////////////////////////////////
if AdvAgente.Cells[1,1]<>'' then begin
x:=x+1; AdvAgente.AddRow;
AdvAgente.Cells[7,x]  := FormatFloat('#,##0.00',TmpTopNetfiyat)     ;
AdvAgente.Cells[8,x]  := FormatFloat('#,##0.00',TmpTopKomisyon)     ;
AdvAgente.Cells[9,x]  := FormatFloat('#,##0.00',TmpTopDKomisyon)     ;
AdvAgente.Cells[10,x] := FormatFloat('#,##0.00',TmpTopToplamFiyat);
AdvAgente.Cells[12,x] := FormatFloat('#,##0.00',TmpTopOdemeTutari1) ;
AdvAgente.Cells[14,x] := FormatFloat('#,##0.00',TmpTopOdemeTutari2) ;
AdvAgente.Cells[16,x] := FormatFloat('#,##0.00',TmpTopOdemeTutari3) ;
AdvAgente.Cells[17,x] := FormatFloat('#,##0.00',TmpTopKalanMiktar)  ;
AdvAgente.RowColor[x]:=clYellow;
AdvAgente.Colors[17,x]:=clRed;

TmpPubToplamFiyat := TmpTToplam ;
end;


AdvAgente.ColWidths[19]:=1;
AdvAgente.ColWidths[20]:=1;
end;

procedure TFrmRapor.BiletSatisGetir(KArtNo: String);
var TmpSql:String;
i:integer;
begin

TmpSql := 'Select ' +

'id,KartNo,MusAdi,MusSoyadi,UrunCesidi,Nereden,Nereye,KullanilanKart,NetFiyati,Komisyon,DigerKomisyon,ToplamFiyat,Biletiptali,'+
'Geriiade,KayitTarihi,NeredenChk,NereyeChk,NeredenTarih,NereyeTarih,MusCepTel1,MusAdres,Sirket,Obsiyon,Onay,ObsTarihi,'+
'ObsSaati,Pnr,CurrKullanilanKart,HavaDenizYolu,Kontrol,aciklama,Guncelleme,TarihDegisikligi,'+
'OdemeTarihi1,OdemeTarihi2,OdemeTarihi3,OdemeSekli1,OdemeSekli2,OdemeSekli3,OdemeTutari1,OdemeTutari2,OdemeTutari3, '+
'KalanMiktar,Odeme,Kaydeden,Saat1,Saat2,UcusNo1,UcusNo2,Pnr2,Saat2x,Saat1x '+

'from rezervasyon where KartNo=:KartNo';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('KartNo').Value :=KArtNo ;
Qry1.Prepared;
Qry1.Open;

if Qry1.RecordCount = 0 then begin

FrmGelir.BtnBiletKaydet.Enabled   := True;
FrmGelir.BtnBiletGuncelle.Enabled := False;
FrmGelir.BtnBiletSil.Enabled      := False;

exit;
end;

FrmGelir.TxtPnr2.Text    := Qry1.FieldByName('Pnr2').AsString ;

FrmGelir.DtSaat1.Time    := Qry1.FieldByName('Saat1').AsDatetime ;
FrmGelir.DtSaat2.Time    := Qry1.FieldByName('Saat2').AsDatetime ;
FrmGelir.DtSaat1x.Time   := Qry1.FieldByName('Saat1x').AsDatetime ;
FrmGelir.DtSaat2x.Time   := Qry1.FieldByName('Saat2x').AsDatetime ;

FrmGelir.TxtUcusNo1.Text := Qry1.FieldByName('UcusNo1').AsString ;
FrmGelir.TxtUcusNo2.Text := Qry1.FieldByName('UcusNo2').AsString ;

FrmGelir.CmbAdi.ItemIndex     := FrmGelir.CmbAdi.Items.IndexOf(Qry1.FieldByName('MusAdi').AsString);
FrmGelir.CmbSoyadi.ItemIndex  := FrmGelir.CmbSoyadi.Items.IndexOf(Qry1.FieldByName('MusSoyadi').AsString);
FrmGelir.CmbCepTel1.ItemIndex := FrmGelir.CmbCepTel1.Items.IndexOf(Qry1.FieldByName('MusCepTel1').AsString);
FrmGelir.CmbAdres.ItemIndex   := FrmGelir.CmbAdres.Items.IndexOf(Qry1.FieldByName('MusAdres').AsString);

FrmGelir.CmbUrunCesidi.ItemIndex := FrmGelir.CmbUrunCesidi.Items.IndexOf(Qry1.FieldByName('UrunCesidi').AsString);
FrmGelir.TxtNereden.Text         := Qry1.FieldByName('Nereden').AsString;
FrmGelir.TxtNereye.Text          := Qry1.FieldByName('Nereye').AsString;

FrmGelir.CmbKullanilanKart.ItemIndex := FrmGelir.CmbKullanilanKart.Items.IndexOf(Qry1.FieldByName('KullanilanKart').AsString);

if Qry1.FieldByName('Biletiptali').AsString = 'Bilet iptal' Then FrmGelir.ChkBiletiptali.Checked := True
Else FrmGelir.ChkBiletiptali.Checked := False ;

FrmGelir.CurrGeriiade.Value   := Qry1.FieldByName('Geriiade').AsCurrency;

if Qry1.FieldByName('NeredenChk').AsString = '1' Then FrmGelir.ChkNereden.Checked := True
Else FrmGelir.ChkNereden.Checked := False ;

if Qry1.FieldByName('NereyeChk').AsString = '1' Then FrmGelir.ChkNereye.Checked := True
Else FrmGelir.ChkNereye.Checked := False ;

FrmGelir.DtNereden.Date      := Qry1.FieldByName('NeredenTarih').AsDateTime;
FrmGelir.DtNereye.Date       := Qry1.FieldByName('NereyeTarih').AsDateTime;
FrmGelir.CmbSirket.ItemIndex := FrmGelir.CmbSirket.Items.IndexOf(Qry1.FieldByName('Sirket').AsString);

if Qry1.FieldByName('Obsiyon').AsString = 'Var' Then FrmGelir.ChkObsiyon.Checked := True
Else FrmGelir.ChkObsiyon.Checked := False ;

if Qry1.FieldByName('Onay').AsString = 'Var' Then FrmGelir.ChkOnay.Checked := True
Else FrmGelir.ChkOnay.Checked := False ;

FrmGelir.DtObsTarihi.Date           := Qry1.FieldByName('ObsTarihi').AsDateTime;
FrmGelir.DtObsSaat.Time             := Qry1.FieldByName('ObsSaati').AsDateTime;
FrmGelir.TxtPnr.Text                := Qry1.FieldByName('Pnr').AsString;
FrmGelir.CurrKullanilanKart.Value   := Qry1.FieldByName('CurrKullanilanKart').AsCurrency;
FrmGelir.CmbHavaDenizYolu.ItemIndex := FrmGelir.CmbHavaDenizYolu.Items.IndexOf(Qry1.FieldByName('HavaDenizYolu').AsString);
FrmGelir.MemAciklama.Text           := Qry1.FieldByName('aciklama').AsString;
FrmGelir.CurrNetFiyati.Value        := Qry1.FieldByName('NetFiyati').AsCurrency;
FrmGelir.CurrKomisyon.Value         := Qry1.FieldByName('Komisyon').AsCurrency;
FrmGelir.CurrDigerKomisyon.Value    := Qry1.FieldByName('DigerKomisyon').AsCurrency;
FrmGelir.CurrTarihDegisikligi.Value := Qry1.FieldByName('TarihDegisikligi').AsCurrency;
FrmGelir.CurrToplamFiyat.Value      := Qry1.FieldByName('ToplamFiyat').AsCurrency;

/////////////////////////////////  ÖDEME ///////////////////////////////////////
FrmGelir.DtB1.Date     := Qry1.FieldByName('OdemeTarihi1').AsDateTime  ;
FrmGelir.DtB2.Date     := Qry1.FieldByName('OdemeTarihi2').AsDateTime  ;
FrmGelir.DtB3.Date     := Qry1.FieldByName('OdemeTarihi3').AsDateTime  ;

FrmGelir.CmbB1.ItemIndex := FrmGelir.CmbB1.Items.IndexOf(Qry1.FieldByName('OdemeSekli1').AsString);
FrmGelir.CmbB2.ItemIndex := FrmGelir.CmbB2.Items.IndexOf(Qry1.FieldByName('OdemeSekli2').AsString);
FrmGelir.CmbB3.ItemIndex := FrmGelir.CmbB3.Items.IndexOf(Qry1.FieldByName('OdemeSekli3').AsString);

FrmGelir.CurrB1.Value     := Qry1.FieldByName('OdemeTutari1').AsCurrency  ;
FrmGelir.CurrB2.Value     := Qry1.FieldByName('OdemeTutari2').AsCurrency  ;
FrmGelir.CurrB3.Value     := Qry1.FieldByName('OdemeTutari3').AsCurrency  ;
FrmGelir.CurrBKalan.Value := Qry1.FieldByName('KalanMiktar').AsCurrency  ;

if Qry1.FieldByName('odeme').AsString = 'Ödendi' Then FrmGelir.ChkBOdendi.Checked := True
Else FrmGelir.ChkBOdendi.Checked := False;
////////////////////////////////////////////////////////////////////////////////

FrmGelir.CmbAdi.Tag := Qry1.FieldByName('id').AsInteger;


TmpSql := 'Select Turu,Adi,Soyadi,DogumTarihi from biletyolculistesi where Biletid=:Biletid';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Biletid').Value := FrmGelir.CmbAdi.Tag ;
Qry1.Prepared;
Qry1.Open;

if qry1.RecordCount <> 0 Then  begin
FrmGelir.AdvBiletYolcuListesi.RowCount := Qry1.RecordCount + 1 ;

for i:=1  to qry1.RecordCount do begin

FrmGelir.AdvBiletYolcuListesi.Cells[0,i]:= Qry1.FieldByName('Turu').AsString;
FrmGelir.AdvBiletYolcuListesi.Cells[1,i]:= Qry1.FieldByName('Adi').AsString;
FrmGelir.AdvBiletYolcuListesi.Cells[2,i]:= Qry1.FieldByName('Soyadi').AsString;
FrmGelir.AdvBiletYolcuListesi.Cells[3,i]:= Qry1.FieldByName('DogumTarihi').AsString;

Qry1.Next;
end;

end;


//FrmGelir.PageControl1.TabIndex := 0;

FrmGelir.BtnBiletKaydet.Enabled   :=False;
FrmGelir.BtnBiletGuncelle.Enabled :=True;
FrmGelir.BtnBiletSil.Enabled      :=True;
FrmGelir.BtnBiletTemizle.Enabled  :=False;

end;

procedure TFrmRapor.Button7Click(Sender: TObject);
var i:integer;
begin

for i:=1 to AdvAgente.RowCount-2 do  begin

if AdvAgente.Cells[2,i]='Bilet' then begin
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Update rezervasyon set KalanMiktar=:KalanMiktar, OdemeTutari1=:OdemeTutari1, Odeme=:Odeme where id=:id ');
Qry1.Parameters.ParamByName('KalanMiktar').Value  := '0' ;
Qry1.Parameters.ParamByName('OdemeTutari1').Value := AdvAgente.Cells[9,i] ;
Qry1.Parameters.ParamByName('Odeme').Value        := 'Ödendi' ;
Qry1.Parameters.ParamByName('id').Value           := AdvAgente.Cells[19,i] ;
Qry1.Prepared;
Qry1.ExecSQL;
end;

if AdvAgente.Cells[2,i]='Otel' then begin
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Update OtelSatis set KalanMiktar=:KalanMiktar, OdemeTutari1=:OdemeTutari1, Odeme=:Odeme where id=:id ');
Qry1.Parameters.ParamByName('KalanMiktar').Value  := '0' ;
Qry1.Parameters.ParamByName('OdemeTutari1').Value := AdvAgente.Cells[9,i] ;
Qry1.Parameters.ParamByName('Odeme').Value        := 'Ödendi' ;
Qry1.Parameters.ParamByName('id').Value           := AdvAgente.Cells[19,i] ;
Qry1.Prepared;
Qry1.ExecSQL;
end;


if AdvAgente.Cells[2,i]='Transfer' then begin
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Update Transfer set KalanMiktar=:KalanMiktar, OdemeTutari1=:OdemeTutari1, Odeme=:Odeme where id=:id ');
Qry1.Parameters.ParamByName('KalanMiktar').Value  := '0' ;
Qry1.Parameters.ParamByName('OdemeTutari1').Value := AdvAgente.Cells[9,i] ;
Qry1.Parameters.ParamByName('Odeme').Value        := 'Ödendi' ;
Qry1.Parameters.ParamByName('id').Value           := AdvAgente.Cells[19,i] ;
Qry1.Prepared;
Qry1.ExecSQL;
end;


if AdvAgente.Cells[2,i]='Tur' then begin
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Update Tur set KalanMiktar=:KalanMiktar, OdemeTutari1=:OdemeTutari1, Odeme=:Odeme where id=:id ');
Qry1.Parameters.ParamByName('KalanMiktar').Value  := '0' ;
Qry1.Parameters.ParamByName('OdemeTutari1').Value := AdvAgente.Cells[9,i] ;
Qry1.Parameters.ParamByName('Odeme').Value        := 'Ödendi' ;
Qry1.Parameters.ParamByName('id').Value           := AdvAgente.Cells[19,i] ;
Qry1.Prepared;
Qry1.ExecSQL;
end;







end;

//ShowMessage('OK');
Button18.Click;
end;

procedure TFrmRapor.BtkKartListeleClick(Sender: TObject);
var TmpSql:String;
i:integer;
begin

AdvKArt.ClearRows(1,AdvKArt.RowCount-1);
AdvKArt.RowCount := 2;

TmpSql:='Select  KayitTarihi,Adi,Soyadi,TelNo,Adres,Aciklama,BiletSatis,OtelSatis,Transfer,Tur,id '+
'from SatisKarti where id<>0 ';

if ChkKArtMusteri.Checked = True then
TmpSql := TmpSql + ' and Adi like :Adi and Soyadi like :Soyadi ' ;

if ChkBilet.Checked = True then
TmpSql := TmpSql + ' and BiletSatis=''Var'' ';

if ChkOtelx.Checked = True then
TmpSql := TmpSql + ' and OtelSatis=''Var'' ';

if ChkTransfer.Checked = True then
TmpSql := TmpSql + ' and Transfer=''Var'' ';

if ChkTur.Checked = True then
TmpSql := TmpSql + ' and Tur=''Var'' ';

TmpSql := TmpSql + ' order by KayitTarihi desc' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

if ChkKArtMusteri.Checked = True then begin
Qry1.Parameters.ParamByName('Adi').Value    := CmbKartMusAdi.Text +'%';
Qry1.Parameters.ParamByName('Soyadi').Value := CmbKartMusSoyadi.Text +'%';
end;

Qry1.Prepared;
Qry1.Open;

if qry1.RecordCount = 0 then exit;

AdvKArt.RowCount := Qry1.RecordCount + 1 ;

for i := 1 to Qry1.RecordCount do begin

AdvKArt.Cells[1,i] := Qry1.FieldByName('KayitTarihi').AsString;

AdvKArt.Cells[2,i] := Qry1.FieldByName('Adi').AsString;
AdvKArt.Cells[3,i] := Qry1.FieldByName('Soyadi').AsString;
AdvKArt.Cells[4,i] := Qry1.FieldByName('TelNo').AsString;
AdvKArt.Cells[5,i] := Qry1.FieldByName('Adres').AsString;
AdvKArt.Cells[6,i] := Qry1.FieldByName('Aciklama').AsString;
AdvKArt.Cells[7,i] := Qry1.FieldByName('BiletSatis').AsString;
AdvKArt.Cells[8,i] := Qry1.FieldByName('OtelSatis').AsString;
AdvKArt.Cells[9,i] := Qry1.FieldByName('Transfer').AsString;
AdvKArt.Cells[10,i]:= Qry1.FieldByName('Tur').AsString;
AdvKArt.Cells[11,i]:= Qry1.FieldByName('id').AsString;

Qry1.Next;
end;


AdvKArt.AutoNumberCol(0);



end;


procedure TFrmRapor.Button9Click(Sender: TObject);
var TmpSql:string;
i:integer;
TmpToplamYatirim,TmpToplamHarcama:Currency;
begin

AdvKrediKarti.ClearRows(0,AdvKrediKarti.RowCount-1);
AdvKrediKarti.RowCount := 2 ;
AdvKrediKarti.ColWidths[0]:=100;
AdvKrediKarti.ColWidths[3]:=100;
AdvKrediKarti.ColWidths[1]:=100;
AdvKrediKarti.ColWidths[4]:=100;

TmpToplamHarcama:=0;
TmpSql := 'Select Tarih,Borc from gelirgider where KullanilanKart=:KullanilanKart order by Tarih' ;



if ChkKKTarih.Checked = True then
TmpSql := TmpSql + ' and Tarih between :dt1 and :dt2 ' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('KullanilanKart').Value := CmbKullanilanKart.Text ;

if ChkKKTarih.Checked = True then begin
Qry1.Parameters.ParamByName('Dt1').Value := IntToStr(YearOf(DtKK1.Date))+'-'+
                                            IntToStr(MonthOf(DtKK1.Date))+'-'+
                                            IntToStr(DayOf(DtKK1.Date));

Qry1.Parameters.ParamByName('Dt2').Value := IntToStr(YearOf(DtKK2.Date))+'-'+
                                            IntToStr(MonthOf(DtKK2.Date))+'-'+
                                            IntToStr(DayOf(DtKK2.Date));
end;

Qry1.Prepared;
Qry1.Open;

AdvKrediKarti.RowCount := Qry1.RecordCount + 4 ;
AdvKrediKarti.Cells[0,2] := 'Harcamalar';
AdvKrediKarti.RowHeights[3]:=2;
AdvKrediKarti.Colors[0,3]:= clBlack;
AdvKrediKarti.MergeCells(0,3,2,1);

for i:=1 to Qry1.RecordCount do begin
AdvKrediKarti.Cells[0,i+3] := Qry1.FieldByName('Tarih').AsString;

AdvKrediKarti.Cells[1,i+3] := FormatFloat('#,##0.00',Qry1.FieldByName('Borc').AsCurrency);
TmpToplamHarcama:=TmpToplamHarcama+ Qry1.FieldByName('Borc').AsCurrency;

Qry1.Next;
end;

AdvKrediKarti.Cells[1,2] := FormatFloat('#,##0.00',TmpToplamHarcama);
AdvKrediKarti.Colors[1,2]:=clYellow;

//////////////////////////////////////////////////////////////////////////////////////////
TmpToplamYatirim:=0;
TmpSql := 'Select miktar,tarih from kredikartiyatirim where kartadi=:kartadi order by tarih' ;

if ChkKKTarih.Checked = True then
TmpSql := TmpSql + ' and tarih between :dt1 and :dt2 ' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('kartadi').Value := CmbKullanilanKart.Text ;

if ChkKKTarih.Checked = True then begin
Qry1.Parameters.ParamByName('Dt1').Value := IntToStr(YearOf(DtKK1.Date))+'-'+
                                            IntToStr(MonthOf(DtKK1.Date))+'-'+
                                            IntToStr(DayOf(DtKK1.Date));

Qry1.Parameters.ParamByName('Dt2').Value := IntToStr(YearOf(DtKK2.Date))+'-'+
                                            IntToStr(MonthOf(DtKK2.Date))+'-'+
                                            IntToStr(DayOf(DtKK2.Date));
end;

Qry1.Prepared;
Qry1.Open;

if AdvKrediKarti.RowCount<(Qry1.RecordCount+4) then AdvKrediKarti.RowCount := Qry1.RecordCount+4;

AdvKrediKarti.Cells[3,2] := 'Yatýrýmlar';
AdvKrediKarti.RowHeights[3]:=2;
AdvKrediKarti.Colors[3,3]:= clBlack;
AdvKrediKarti.MergeCells(3,3,2,1);

for i:=1 to Qry1.RecordCount do begin
AdvKrediKarti.Cells[3,i+3] := Qry1.FieldByName('tarih').AsString;
AdvKrediKarti.Cells[4,i+3] := FormatFloat('#,##0.00',Qry1.FieldByName('miktar').AsCurrency);
TmpToplamYatirim:=TmpToplamYatirim+Qry1.FieldByName('miktar').AsCurrency;
Qry1.Next;
end;

AdvKrediKarti.Cells[4,2] := FormatFloat('#,##0.00',TmpToplamYatirim);
AdvKrediKarti.Colors[4,2]:=clYellow;



AdvKrediKarti.Cells[0,0]:='Toplam Yatirim - Toplam Harcama = '+FormatFloat('#,##0.00',TmpToplamYatirim-TmpToplamHarcama);
AdvKrediKarti.MergeCells(0,0,5,1);
AdvKrediKarti.Colors[0,0]:=$00EACAB6;
end;


procedure TFrmRapor.ChkABiletClick(Sender: TObject);
begin

if (ChkABilet.Checked = True) and (ChkAOtel.Checked = False) and (ChkATransfer.Checked = False) and (ChkATur.Checked = False) then begin
ChkAgentePnr.Visible := True ;
TxtAgentePnr.Visible := True ;
end
Else begin
ChkAgentePnr.Checked := False ;
ChkAgentePnr.Visible := False ;
TxtAgentePnr.Visible := False ;
end;




end;

procedure TFrmRapor.ChkAOtelClick(Sender: TObject);
begin


if (ChkABilet.Checked = True) and (ChkAOtel.Checked = False) and (ChkATransfer.Checked = False) and (ChkATur.Checked = False) then begin
ChkAgentePnr.Visible:=True;
TxtAgentePnr.Visible := True ;
end
Else begin
ChkAgentePnr.Checked := False ;
ChkAgentePnr.Visible := False ;
TxtAgentePnr.Visible := False ;
end;



end;

procedure TFrmRapor.ChkATransferClick(Sender: TObject);
begin
if (ChkABilet.Checked = True) and (ChkAOtel.Checked = False) and (ChkATransfer.Checked = False) and (ChkATur.Checked = False) then begin
ChkAgentePnr.Visible:=True;
TxtAgentePnr.Visible := True ;
end
Else begin
ChkAgentePnr.Checked := False ;
ChkAgentePnr.Visible := False ;
TxtAgentePnr.Visible := False ;
end;


end;

procedure TFrmRapor.ChkATurClick(Sender: TObject);
begin
if (ChkABilet.Checked = True) and (ChkAOtel.Checked = False) and (ChkATransfer.Checked = False) and (ChkATur.Checked = False) then begin
ChkAgentePnr.Visible:=True;
TxtAgentePnr.Visible := True ;
end
Else begin
ChkAgentePnr.Checked := False ;
ChkAgentePnr.Visible := False ;
TxtAgentePnr.Visible := False ;
end;


end;

procedure TFrmRapor.CmbAcenteMusteriAdiChange(Sender: TObject);
begin
CmbAcenteMusteriSoyAdi.ItemIndex := CmbAcenteMusteriAdi.ItemIndex;
end;

procedure TFrmRapor.CmbAcenteMusteriSoyAdiChange(Sender: TObject);
begin
CmbAcenteMusteriAdi.ItemIndex := CmbAcenteMusteriSoyAdi.ItemIndex;
end;

procedure TFrmRapor.CmbKartMusAdiChange(Sender: TObject);
begin
CmbKartMusSoyadi.ItemIndex := CmbKartMusAdi.ItemIndex;
end;

procedure TFrmRapor.CmbKartMusSoyadiChange(Sender: TObject);
begin
CmbKartMusAdi.ItemIndex := CmbKartMusSoyadi.ItemIndex;
end;

procedure TFrmRapor.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;

procedure TFrmRapor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FrmRapor:= nil;

end;

procedure TFrmRapor.FormShow(Sender: TObject);
var TmpSql:String;
i:integer;
begin
PageControl1.TabIndex := 0 ;
DtAgente1.Date := Date;
DtAgente2.Date := Date;
DtOdeme1.Date  := Date;
DtOdeme2.Date  := Date;
DtKK1.Date := Date;
DtKK2.Date := Date;

sabitdegergetir;

{
if PubPYonetim <> 1 Then begin
PageControl1.Pages[1].TabVisible := False;
PageControl1.Pages[2].TabVisible := False;
PageControl1.Pages[3].TabVisible := False;
//PageControl1.Pages[4].TabVisible := False;
end;
}



ChkKullanici.Clear;
ChkKullanici2.Clear;

TmpSql:= 'Select KullaniciAdi from Yonetim';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Open;

for i:=0 to Qry1.RecordCount-1  do begin
ChkKullanici.Items.Add(qry1.FieldByName('KullaniciAdi').AsString);
ChkKullanici2.Items.Add(qry1.FieldByName('KullaniciAdi').AsString);
Qry1.Next;
end;
//////////////////////////////////////
Dm.Qry13.first;
for i:=0 to Dm.Qry13.RecordCount-1  do begin
CmbHavaDenizYolu.Items.Add(Dm.Qry13.FieldByName('aciklama').AsString);
Dm.Qry13.Next;
end;



end;

procedure TFrmRapor.OtelSatisGetir(KArtNo: String);
var TmpSql:String;
i:integer;
begin

TmpSql := 'Select * from OtelSatis where KartNo=:KartNo';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('KartNo').Value := KArtNo ;
Qry1.Prepared;
Qry1.Open;

if Qry1.RecordCount = 0 then begin

FrmGelir.BtnOtelKaydet.Enabled   := True;
FrmGelir.BtnOtelGuncelle.Enabled := False;
FrmGelir.BtnOtelSil.Enabled      := False;

exit;
end;

FrmGelir.CmbAdi.ItemIndex         := FrmGelir.CmbAdi.Items.IndexOf(Qry1.FieldByName('MusteriAdi').AsString);
FrmGelir.CmbSoyadi.ItemIndex      := FrmGelir.CmbSoyadi.Items.IndexOf(Qry1.FieldByName('MusteriSoyadi').AsString);
FrmGelir.CmbCepTel1.ItemIndex     := FrmGelir.CmbCepTel1.Items.IndexOf(Qry1.FieldByName('MusteriTel').AsString);
FrmGelir.CmbAdres.ItemIndex       := FrmGelir.CmbAdres.Items.IndexOf(Qry1.FieldByName('MusteriAdres').AsString);

FrmGelir.CmbOtelAdi.ItemIndex     := FrmGelir.CmbOtelAdi.Items.IndexOf(Qry1.FieldByName('OtelAdi').AsString);
FrmGelir.CmbOtelAdres.ItemIndex   := FrmGelir.CmbOtelAdres.Items.IndexOf(Qry1.FieldByName('OtelAdres').AsString);
FrmGelir.CmbOtelTelefon.ItemIndex := FrmGelir.CmbOtelTelefon.Items.IndexOf(Qry1.FieldByName('OtelTelefon').AsString);
FrmGelir.CmbOtelEmail.ItemIndex   := FrmGelir.CmbOtelEmail.Items.IndexOf(Qry1.FieldByName('OtelEmail').AsString);

FrmGelir.CmbOtelKullanilanKart.ItemIndex := FrmGelir.CmbOtelKullanilanKart.Items.IndexOf(Qry1.FieldByName('KullanilanKart').AsString);

FrmGelir.Txtilgili.Text             := Qry1.FieldByName('ilgili').AsString ;
FrmGelir.MemOtelAciklama.Text       := Qry1.FieldByName('Aciklama').AsString ;
FrmGelir.DtGirisTarihi.Date         := Qry1.FieldByName('GirisTarihi').AsDateTime  ;
FrmGelir.DtCikisTarihi.Date         := Qry1.FieldByName('CikisTarihi').AsDateTime  ;
FrmGelir.CurrOdaSayisi.Value        := Qry1.FieldByName('OdaSayisi').AsCurrency    ;
FrmGelir.TxtKonaklamaSekli.Text     := Qry1.FieldByName('KonaklamaSekli').AsString ;
FrmGelir.CmbOdaKategori.Text        := Qry1.FieldByName('OdaKategorisi').AsString  ;
FrmGelir.CurrOtelToplamFiyat.Value  := Qry1.FieldByName('ToplamFiyat').AsCurrency  ;
FrmGelir.CurrOtelNetFiyat.Value     := Qry1.FieldByName('NetFiyat').AsCurrency  ;
FrmGelir.CurrOtelKomisyon.Value     := Qry1.FieldByName('Komisyon').AsCurrency  ;

/////////////////////////////////  ÖDEME ///////////////////////////////////////
FrmGelir.DtO1.Date     := Qry1.FieldByName('OdemeTarihi1').AsDateTime  ;
FrmGelir.DtO2.Date     := Qry1.FieldByName('OdemeTarihi2').AsDateTime  ;
FrmGelir.DtO3.Date     := Qry1.FieldByName('OdemeTarihi3').AsDateTime  ;

FrmGelir.CmbO1.ItemIndex := FrmGelir.CmbO1.Items.IndexOf(Qry1.FieldByName('OdemeSekli1').AsString);
FrmGelir.CmbO2.ItemIndex := FrmGelir.CmbO2.Items.IndexOf(Qry1.FieldByName('OdemeSekli2').AsString);
FrmGelir.CmbO3.ItemIndex := FrmGelir.CmbO3.Items.IndexOf(Qry1.FieldByName('OdemeSekli3').AsString);

FrmGelir.CurrO1.Value     := Qry1.FieldByName('OdemeTutari1').AsCurrency  ;
FrmGelir.CurrO2.Value     := Qry1.FieldByName('OdemeTutari2').AsCurrency  ;
FrmGelir.CurrO3.Value     := Qry1.FieldByName('OdemeTutari3').AsCurrency  ;
FrmGelir.CurrOKalan.Value := Qry1.FieldByName('KalanMiktar').AsCurrency   ;

if Qry1.FieldByName('odeme').AsString = 'Ödendi' Then FrmGelir.ChkOOdendi.Checked := True
Else FrmGelir.ChkOOdendi.Checked := False;
////////////////////////////////////////////////////////////////////////////////

FrmGelir.CmbOtelAdi.Tag := Qry1.FieldByName('id').AsInteger;



TmpSql := 'Select Turu,Adi,Soyadi,DogumTarihi,OdaNo from konaklayacakkisiler where OtelSatisid=:OtelSatisid';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('OtelSatisid').Value := FrmGelir.CmbOtelAdi.Tag ;
Qry1.Prepared;
Qry1.Open;

if qry1.RecordCount <> 0 Then  begin
FrmGelir.AdvKisiler.RowCount := Qry1.RecordCount + 1 ;

for i:=1  to qry1.RecordCount do begin
FrmGelir.AdvKisiler.Cells[0,i]:= Qry1.FieldByName('Turu').AsString;
FrmGelir.AdvKisiler.Cells[1,i]:= Qry1.FieldByName('Adi').AsString;
FrmGelir.AdvKisiler.Cells[2,i]:= Qry1.FieldByName('Soyadi').AsString;
FrmGelir.AdvKisiler.Cells[3,i]:= Qry1.FieldByName('DogumTarihi').AsString;
FrmGelir.AdvKisiler.Cells[4,i]:= Qry1.FieldByName('OdaNo').AsString;
Qry1.Next;
end;





end;



//FrmGelir.PageControl1.TabIndex := 1;

FrmGelir.BtnOtelKaydet.Enabled   := False;
FrmGelir.BtnOtelGuncelle.Enabled := True;
FrmGelir.BtnOtelSil.Enabled      := True;
FrmGelir.BtnOtelTemizle.Enabled  := False;

end;

procedure TFrmRapor.sabitdegergetir;
var TmpSql:String;
i:integer;
begin
///////////////////////////////////////MÜÞTERÝ GETÝR//////////////////////////////////////////////////////
CmbAcenteMusteriAdi.Clear;
CmbAcenteMusteriSoyAdi.Clear;

CmbKartMusAdi.Clear;
CmbKartMusSoyadi.Clear;


dm.Qry5.First;
for i:=0 to dm.Qry5.RecordCount-1 do begin
CmbAcenteMusteriAdi.Items.Add(dm.Qry5.FieldByName('Adi').AsString);
CmbAcenteMusteriSoyAdi.Items.Add(dm.Qry5.FieldByName('Soyadi').AsString);
CmbKartMusAdi.Items.Add(dm.Qry5.FieldByName('Adi').AsString);
CmbKartMusSoyadi.Items.Add(dm.Qry5.FieldByName('Soyadi').AsString);
dm.Qry5.Next;
end;
;
//////////////////////////////////////////////////////////////////////////////////////////


CmbKullanilanKart.Clear;
CmbAgenteKullanilanKart.Clear;

Dm.Qry11.first;
for i:=0 to Dm.Qry11.RecordCount-1  do begin
CmbKullanilanKart.Items.Add(Dm.Qry11.FieldByName('aciklama').AsString);
CmbAgenteKullanilanKart.Items.Add(Dm.Qry11.FieldByName('aciklama').AsString);
Dm.Qry11.Next;
end;


end;

procedure TFrmRapor.TransferGetir(KArtNo: String);
var TmpSql:String;
i:integer;
begin

TmpSql := 'Select * from transfer where KArtNo=:KArtNo';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('KArtNo').Value := KArtNo ;
Qry1.Prepared;
Qry1.Open;

if Qry1.RecordCount = 0 then begin

FrmGelir.BtnTransferKaydet.Enabled   :=True;
FrmGelir.BtnTransferGuncelle.Enabled :=False;
FrmGelir.BtnTransferSil.Enabled      :=False;

exit;
end;

FrmGelir.CmbAdi.ItemIndex         := FrmGelir.CmbAdi.Items.IndexOf(Qry1.FieldByName('MusteriAdi').AsString);
FrmGelir.CmbSoyadi.ItemIndex      := FrmGelir.CmbSoyadi.Items.IndexOf(Qry1.FieldByName('MusteriSoyadi').AsString);
FrmGelir.CmbCepTel1.ItemIndex     := FrmGelir.CmbCepTel1.Items.IndexOf(Qry1.FieldByName('MusteriTel').AsString);
FrmGelir.CmbAdres.ItemIndex       := FrmGelir.CmbAdres.Items.IndexOf(Qry1.FieldByName('MusteriAdres').AsString);

FrmGelir.CmbTransferOtelAdi.ItemIndex        := FrmGelir.CmbTransferOtelAdi.Items.IndexOf(Qry1.FieldByName('OtelAdi').AsString);
FrmGelir.CmbTransferOtelAdres.ItemIndex      := FrmGelir.CmbTransferOtelAdres.Items.IndexOf(Qry1.FieldByName('OtelAdres').AsString);
FrmGelir.CmbTransferOtelTel.ItemIndex        := FrmGelir.CmbTransferOtelTel.Items.IndexOf(Qry1.FieldByName('OtelTelefon').AsString);
FrmGelir.CmbTransferOtelEmail.ItemIndex      := FrmGelir.CmbTransferOtelEmail.Items.IndexOf(Qry1.FieldByName('OtelEmail').AsString);
FrmGelir.CmbTransferKullanilanKart.ItemIndex := FrmGelir.CmbTransferKullanilanKart.Items.IndexOf(Qry1.FieldByName('KullanilanKart').AsString);

FrmGelir.TxtTransferAdi.Text           := Qry1.FieldByName('Adi').AsString ;
FrmGelir.TxtTransferSoyadi.Text        := Qry1.FieldByName('Soyadi').AsString ;
FrmGelir.TxtTransferCepNo.Text         := Qry1.FieldByName('CepNo').AsString ;
FrmGelir.CurrKisiSayi.Value            := Qry1.FieldByName('KisiSayisi').AsCurrency ;
FrmGelir.CmbArac.ItemIndex             := FrmGelir.CmbArac.Items.IndexOf(Qry1.FieldByName('Arac').AsString);
FrmGelir.CurrTransferToplamFiyat.Value := Qry1.FieldByName('ToplamFiyat').AsCurrency ;

if Qry1.FieldByName('TransferTuru').AsString='Tek Yön' then FrmGelir.RbTekYon.Checked := True ;

if Qry1.FieldByName('TransferTuru').AsString='Çift Yön' then FrmGelir.RbCiftYon.Checked := True ;

FrmGelir.TxtT1Nereden.Text    := Qry1.FieldByName('BirNereden').AsString ;
FrmGelir.TxtT1Nereye.Text     := Qry1.FieldByName('BirNereye').AsString ;
FrmGelir.TxtT1UcusKodu.Text   := Qry1.FieldByName('BirUcusKodu').AsString ;
FrmGelir.TxtT2Nereden.Text    := Qry1.FieldByName('ikiNereden').AsString ;
FrmGelir.TxtT2Nereye.Text     := Qry1.FieldByName('ikiNereye').AsString ;
FrmGelir.TxtT2UcusKodu.Text   := Qry1.FieldByName('ikiUcusKodu').AsString ;

FrmGelir.Dt1NeredenTarih.Date := Qry1.FieldByName('birNeredenTarih').AsDateTime ;
FrmGelir.Dt1NeredenSaat.Time  := Qry1.FieldByName('BirNeredenSaat').AsDateTime ;
FrmGelir.Dt1inisSaati.Time    := Qry1.FieldByName('BirinisSaati').AsDateTime ;
FrmGelir.Dt2inisSaati.Time    := Qry1.FieldByName('ikiinisSaati').AsDateTime ;
FrmGelir.Dt2NeredenTarih.Date := Qry1.FieldByName('ikiNeredenTarih').AsDateTime ;
FrmGelir.Dt2NeredenSaat.Time  := Qry1.FieldByName('ikiNeredenSaat').AsDateTime ;
FrmGelir.Dt1NereyeTarih.Date  := Qry1.FieldByName('birNereyeTarih').AsDateTime ;
FrmGelir.Dt1NereyeSaat.Time   := Qry1.FieldByName('BirNereyeSaat').AsDateTime ;
FrmGelir.Dt2NereyeTarih.Date  := Qry1.FieldByName('ikiNereyeTarih').AsDateTime ;
FrmGelir.Dt2NereyeSaat.Time   := Qry1.FieldByName('ikiNereyeSaat').AsDateTime ;
FrmGelir.MemTransfer.Text     := Qry1.FieldByName('Aciklama').AsString ;
FrmGelir.CurrTransferNetFiyat.Value  := Qry1.FieldByName('NetFiyat').AsCurrency  ;
FrmGelir.CurrTransferKomisyon.Value  := Qry1.FieldByName('Komisyon').AsCurrency  ;
FrmGelir.CmbTransferFirma.ItemIndex  := FrmGelir.CmbTransferFirma.Items.IndexOf(Qry1.FieldByName('TransferFirmasi').AsString);

/////////////////////////////////  ÖDEME ///////////////////////////////////////
FrmGelir.DtT1.Date     := Qry1.FieldByName('OdemeTarihi1').AsDateTime  ;
FrmGelir.DtT2.Date     := Qry1.FieldByName('OdemeTarihi2').AsDateTime  ;
FrmGelir.DtT3.Date     := Qry1.FieldByName('OdemeTarihi3').AsDateTime  ;

FrmGelir.CmbT1.ItemIndex := FrmGelir.CmbT1.Items.IndexOf(Qry1.FieldByName('OdemeSekli1').AsString);
FrmGelir.CmbT2.ItemIndex := FrmGelir.CmbT2.Items.IndexOf(Qry1.FieldByName('OdemeSekli2').AsString);
FrmGelir.CmbT3.ItemIndex := FrmGelir.CmbT3.Items.IndexOf(Qry1.FieldByName('OdemeSekli3').AsString);

FrmGelir.CurrT1.Value     := Qry1.FieldByName('OdemeTutari1').AsCurrency  ;
FrmGelir.CurrT2.Value     := Qry1.FieldByName('OdemeTutari2').AsCurrency  ;
FrmGelir.CurrT3.Value     := Qry1.FieldByName('OdemeTutari3').AsCurrency  ;
FrmGelir.CurrTKalan.Value := Qry1.FieldByName('KalanMiktar').AsCurrency   ;

if Qry1.FieldByName('odeme').AsString = 'Ödendi' Then FrmGelir.ChkTOdendi.Checked := True
Else FrmGelir.ChkTOdendi.Checked := False;
////////////////////////////////////////////////////////////////////////////////

FrmGelir.TxtTransferAdi.Tag := Qry1.FieldByName('id').AsInteger;

////////////////////////////////////////////////////////////////////////////////

TmpSql := 'Select Turu,Adi,Soyadi,DogumTarihi from Transferyolculistesi where Transferid=:Transferid';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Transferid').Value := FrmGelir.TxtTransferAdi.Tag ;
Qry1.Prepared;
Qry1.Open;

if qry1.RecordCount <> 0 Then  begin
FrmGelir.AdvTransferYolcuListesi.RowCount := Qry1.RecordCount + 1 ;

for i:=1  to qry1.RecordCount do begin

FrmGelir.AdvTransferYolcuListesi.Cells[0,i]:= Qry1.FieldByName('Turu').AsString;
FrmGelir.AdvTransferYolcuListesi.Cells[1,i]:= Qry1.FieldByName('Adi').AsString;
FrmGelir.AdvTransferYolcuListesi.Cells[2,i]:= Qry1.FieldByName('Soyadi').AsString;
FrmGelir.AdvTransferYolcuListesi.Cells[3,i]:= Qry1.FieldByName('DogumTarihi').AsString;

Qry1.Next;
end;

end;

////////////////////////////////////////////////////////////////////////////////

//FrmGelir.PageControl1.TabIndex := 2;

FrmGelir.BtnTransferKaydet.Enabled   :=False;
FrmGelir.BtnTransferGuncelle.Enabled :=True;
FrmGelir.BtnTransferSil.Enabled      :=True;
FrmGelir.BtnTransferTemizle.Enabled  :=False;

end;


procedure TFrmRapor.TurGetir(KArtNo: String);
var TmpSql:String;
i:integer;
begin

TmpSql := 'Select * from Tur where KartNo=:KartNo';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('KartNo').Value :=KArtNo ;
Qry1.Prepared;
Qry1.Open;

if Qry1.RecordCount = 0 then begin

FrmGelir.BtnTurKaydet.Enabled   := True;
FrmGelir.BtnTurGuncelle.Enabled := False;
FrmGelir.BtnTurSil.Enabled      := False;

exit;
end;

FrmGelir.TxtTurAdi.Text              := Qry1.FieldByName('TurAdi').AsString ;
FrmGelir.TxtVoucherKodu.Text         := Qry1.FieldByName('VoucherKodu').AsString ;
FrmGelir.CmbTurUrunCesidi.ItemIndex  := FrmGelir.CmbTurUrunCesidi.Items.IndexOf(Qry1.FieldByName('UrunCesidi').AsString) ;
FrmGelir.CmbTurFirmasi.ItemIndex     := FrmGelir.CmbTurFirmasi.Items.IndexOf(Qry1.FieldByName('TurFirmasi').AsString) ;
FrmGelir.DtBasTarih.Date             := Qry1.FieldByName('BasTarih').AsDateTime ;
FrmGelir.DtBasSaat.Time              := Qry1.FieldByName('BasSaat').AsDateTime ;
FrmGelir.DtBitTarih.Date             := Qry1.FieldByName('BitTarih').AsDateTime ;
FrmGelir.DtBitSaat.Time              := Qry1.FieldByName('BitSaat').AsDateTime ;
FrmGelir.TxtBaslangicNoktasi.Text    := Qry1.FieldByName('BasNoktasi').AsString ;
FrmGelir.TxtBitisNoktasi.Text        := Qry1.FieldByName('BitNoktasi').AsString ;
FrmGelir.TxtRehberBilgileri.Text     := Qry1.FieldByName('RehberBilgileri').AsString ;
FrmGelir.CmbTurKullanilanKart.Text   := Qry1.FieldByName('KullanilanKart').AsString ;
FrmGelir.MemTur.Text                 := Qry1.FieldByName('Aciklama').AsString ;
FrmGelir.CurrYetiskin.Value          := Qry1.FieldByName('Yetiskin').AsCurrency ;
FrmGelir.CurrCocuk.Value             := Qry1.FieldByName('Cocuk').AsCurrency ;
FrmGelir.CurrBebek.Value             := Qry1.FieldByName('Bebek').AsCurrency ;
FrmGelir.TxtTurKonaklamaSekli.Text   := Qry1.FieldByName('KonaklamaSekli').AsString ;
FrmGelir.TxtTurKonaklamaBilgisi.Text := Qry1.FieldByName('KonaklamaBilgisi').AsString ;
FrmGelir.TxtUlasimBilgisi.Text       := Qry1.FieldByName('UlasimBilgisi').AsString ;
FrmGelir.CmbTurOdaKategori.ItemIndex := FrmGelir.CmbTurOdaKategori.Items.IndexOf(Qry1.FieldByName('OdaKategorisi').AsString) ;
FrmGelir.CurrTurNetFiyat.Value       := Qry1.FieldByName('NetFiyat').AsCurrency ;
FrmGelir.CurrTurKomisyon.Value       := Qry1.FieldByName('Komisyon').AsCurrency ;
FrmGelir.CurrTurToplamFiyat.Value    := Qry1.FieldByName('ToplamFiyat').AsCurrency ;

/////////////////////////////////  ÖDEME ///////////////////////////////////////
FrmGelir.DtTu1.Date     := Qry1.FieldByName('OdemeTarihi1').AsDateTime  ;
FrmGelir.DtTu2.Date     := Qry1.FieldByName('OdemeTarihi2').AsDateTime  ;
FrmGelir.DtTu3.Date     := Qry1.FieldByName('OdemeTarihi3').AsDateTime  ;

FrmGelir.CmbTu1.ItemIndex := FrmGelir.CmbTu1.Items.IndexOf(Qry1.FieldByName('OdemeSekli1').AsString);
FrmGelir.CmbTu2.ItemIndex := FrmGelir.CmbTu2.Items.IndexOf(Qry1.FieldByName('OdemeSekli2').AsString);
FrmGelir.CmbTu3.ItemIndex := FrmGelir.CmbTu3.Items.IndexOf(Qry1.FieldByName('OdemeSekli3').AsString);

FrmGelir.CurrTu1.Value     := Qry1.FieldByName('OdemeTutari1').AsCurrency  ;
FrmGelir.CurrTu2.Value     := Qry1.FieldByName('OdemeTutari2').AsCurrency  ;
FrmGelir.CurrTu3.Value     := Qry1.FieldByName('OdemeTutari3').AsCurrency  ;
FrmGelir.CurrTuKalan.Value := Qry1.FieldByName('KalanMiktar').AsCurrency   ;

if Qry1.FieldByName('odeme').AsString = 'Ödendi' Then FrmGelir.ChkTuOdendi.Checked := True
Else FrmGelir.ChkTuOdendi.Checked := False;
////////////////////////////////////////////////////////////////////////////////

FrmGelir.TxtTurAdi.Tag := Qry1.FieldByName('id').AsInteger;


TmpSql := 'Select Tur,Adi,Soyadi,DogumTarihi from yolculistesi where Turid=:Turid';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Turid').Value := FrmGelir.TxtTurAdi.Tag ;
Qry1.Prepared;
Qry1.Open;

if qry1.RecordCount <> 0 Then  begin
FrmGelir.AdvYolcuListesi.RowCount := Qry1.RecordCount + 1 ;

for i:=1  to qry1.RecordCount do begin

FrmGelir.AdvYolcuListesi.Cells[0,i]:= Qry1.FieldByName('Tur').AsString;
FrmGelir.AdvYolcuListesi.Cells[1,i]:= Qry1.FieldByName('Adi').AsString;
FrmGelir.AdvYolcuListesi.Cells[2,i]:= Qry1.FieldByName('Soyadi').AsString;
FrmGelir.AdvYolcuListesi.Cells[3,i]:= Qry1.FieldByName('DogumTarihi').AsString;

Qry1.Next;
end;

end;


//FrmGelir.PageControl1.TabIndex := 0;

FrmGelir.BtnTurKaydet.Enabled   :=False;
FrmGelir.BtnTurGuncelle.Enabled :=True;
FrmGelir.BtnTurSil.Enabled      :=True;
FrmGelir.BtnTurTemizle.Enabled  :=False;

end;

end.
