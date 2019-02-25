unit UntSigortalar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, pngimage,
  StdCtrls, jpeg, ExtCtrls, Grids, AdvObj, BaseGrid, AdvGrid, Buttons,DateUtils,
  ComCtrls, MoneyEdit, asgprev, asgprint, Menus,StrUtils, DBGrids, ADODB,
  AdvEdit, AdvMoneyEdit;

type
  TFrmSigortalar = class(TForm)
    AdvPreview: TAdvPreviewDialog;
    PopupMenu1: TPopupMenu;
    eslimFii1: TMenuItem;
    Qry1: TADOQuery;
    Qry2: TADOQuery;
    PageControl1: TPageControl;
    TrafikSigortasi: TTabSheet;
    AdvTrafik: TAdvStringGrid;
    KaskoSikortasi: TTabSheet;
    SeyahatSigortasi: TTabSheet;
    EvSigortasi: TTabSheet;
    isYeriSigortasi: TTabSheet;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Label10: TLabel;
    CmbAdi: TComboBox;
    CmbSoyadi: TComboBox;
    CmbCepTel1: TComboBox;
    CmbAdres: TComboBox;
    ChkSec: TCheckBox;
    Panel3: TPanel;
    AdvKasko: TAdvStringGrid;
    Panel6: TPanel;
    AdvSeyahat: TAdvStringGrid;
    Panel8: TPanel;
    Panel10: TPanel;
    Image1: TImage;
    Image2: TImage;
    AdvEv: TAdvStringGrid;
    AdvisYeri: TAdvStringGrid;
    ChkBitTarih: TCheckBox;
    DtBit1: TDateTimePicker;
    DtBit2: TDateTimePicker;
    BtnListele: TButton;
    Button2: TButton;
    CurrKasko: TAdvMoneyEdit;
    CurrSeyahat: TAdvMoneyEdit;
    CurrEv: TAdvMoneyEdit;
    CurrisYeri: TAdvMoneyEdit;
    CmbKriter: TComboBox;
    TxtKriter: TEdit;
    ChkMusteri: TCheckBox;
    DtBas2: TDateTimePicker;
    DtBas1: TDateTimePicker;
    ChkBasTarih: TCheckBox;
    AnadoluHayat: TTabSheet;
    SaglikSigortasi: TTabSheet;
    AdvAnadoluHayat: TAdvStringGrid;
    AdvSaglik: TAdvStringGrid;
    FerdiKazaSigortasi: TTabSheet;
    TekneSigortasi: TTabSheet;
    AdvFerdiKazaSigortasi: TAdvStringGrid;
    AdvTekneSigortasi: TAdvStringGrid;
    DigerSigortalar: TTabSheet;
    Panel2: TPanel;
    CurrTekne: TAdvMoneyEdit;
    Panel1: TPanel;
    CurrTrafik: TAdvMoneyEdit;
    Panel7: TPanel;
    CurrAnadoluHayat: TAdvMoneyEdit;
    Panel9: TPanel;
    CurrSaglik: TAdvMoneyEdit;
    Panel11: TPanel;
    CurrFerdiKaza: TAdvMoneyEdit;
    Panel13: TPanel;
    CurrDiger: TAdvMoneyEdit;
    AdvDiger: TAdvStringGrid;
    RbAgenteTumu: TRadioButton;
    RbBorcuOlanlar: TRadioButton;
    RbAcenteOdenen: TRadioButton;
    Button1: TButton;
    Qry3: TADOQuery;
    TxtNotlar: TEdit;
    Label2: TLabel;
    DtKayit2: TDateTimePicker;
    DtKayit1: TDateTimePicker;
    ChkKayitTarihi: TCheckBox;
    ChkOdemeAciklama: TCheckBox;
    TxtOdemeAciklama: TEdit;
    ChkMakbuzNo: TCheckBox;
    TxtMakbuzNo: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CmbAdiChange(Sender: TObject);
    procedure CmbSoyadiChange(Sender: TObject);
    procedure CmbCepTel1Change(Sender: TObject);
    procedure CmbAdresChange(Sender: TObject);
    procedure BtnListeleClick(Sender: TObject);
    procedure AdvTrafikDblClick(Sender: TObject);
    procedure AdvKaskoDblClick(Sender: TObject);
    procedure AdvSeyahatDblClick(Sender: TObject);
    procedure AdvEvDblClick(Sender: TObject);
    procedure AdvisYeriDblClick(Sender: TObject);
    procedure AdvTrafikGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure AdvKaskoGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure AdvSeyahatGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure AdvEvGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure AdvisYeriGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure FormShow(Sender: TObject);
    procedure AdvAnadoluHayatDblClick(Sender: TObject);
    procedure AdvSaglikDblClick(Sender: TObject);
    procedure AdvFerdiKazaSigortasiDblClick(Sender: TObject);
    procedure AdvTekneSigortasiDblClick(Sender: TObject);
    procedure AdvDigerDblClick(Sender: TObject);
    procedure CmbAdiDropDown(Sender: TObject);
    procedure CmbSoyadiDropDown(Sender: TObject);
    procedure CmbCepTel1DropDown(Sender: TObject);
    procedure CmbAdresDropDown(Sender: TObject);
    procedure PageControl1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure odemegetir(i:string;TmpAdv:TAdvStringGrid);
    Procedure MusteriGetir;

    Procedure TrafikKaskoGetir(TmpListe:TAdvStringGrid;TmpTur:String);
    Procedure SeyahatEvisYeriGetir(TmpListe:TAdvStringGrid;TmpTur:String);
    Procedure AnadoluHayatGetir(TmpListe:TAdvStringGrid;TmpTur:String);
    Procedure SaglikSigortasiGetir(TmpListe:TAdvStringGrid;TmpTur:String);
    procedure FerdiKazaSigortasiGetir(TmpListe:TAdvStringGrid;TmpTur:String);
    procedure TekneSigortasiGetir(TmpListe:TAdvStringGrid;TmpTur:String);
    procedure DigerSigortaGetir(TmpListe:TAdvStringGrid;TmpTur:string);

    Procedure SigortaGetir(Tmpid:String;TmpTur:String);
    procedure CreateParams(var Params: TCreateParams); override;
    { Public declarations }
  end;

var
  FrmSigortalar: TFrmSigortalar;

implementation

uses UntProjectGlobal, UntGlobal, UntSigortaislemleri;

{$R *.dfm}

procedure TFrmSigortalar.AdvAnadoluHayatDblClick(Sender: TObject);
begin
SigortaGetir(AdvAnadoluHayat.Cells[14,AdvAnadoluHayat.Row],'AnadoluHayat');
end;

procedure TFrmSigortalar.AdvDigerDblClick(Sender: TObject);
begin
SigortaGetir(AdvDiger.Cells[14,AdvDiger.Row],'Diger');
end;

procedure TFrmSigortalar.AdvEvDblClick(Sender: TObject);
begin
SigortaGetir(AdvEv.Cells[14,AdvEv.Row],'EvSigortasi');
end;

procedure TFrmSigortalar.AdvEvGetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
if acol = 13 then HAlign := taRightJustify;
end;

procedure TFrmSigortalar.AdvFerdiKazaSigortasiDblClick(Sender: TObject);
begin
SigortaGetir(AdvFerdiKazaSigortasi.Cells[14,AdvFerdiKazaSigortasi.Row],'FerdiKazaSigortasi');
end;

procedure TFrmSigortalar.AdvisYeriDblClick(Sender: TObject);
begin
SigortaGetir(AdvisYeri.Cells[14,AdvisYeri.Row],'isYeriSigortasi');
end;

procedure TFrmSigortalar.AdvisYeriGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
if acol = 13 then HAlign := taRightJustify;
end;

procedure TFrmSigortalar.AdvKaskoDblClick(Sender: TObject);
begin
SigortaGetir(AdvKasko.Cells[16,AdvKasko.Row],'KaskoSigortasi');
end;

procedure TFrmSigortalar.AdvKaskoGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
if acol = 16 then HAlign := taRightJustify;
end;

procedure TFrmSigortalar.AdvSaglikDblClick(Sender: TObject);
begin
SigortaGetir(AdvSaglik.Cells[14,AdvSaglik.Row],'SaglikSigortasi');
end;

procedure TFrmSigortalar.AdvSeyahatDblClick(Sender: TObject);
begin
SigortaGetir(AdvSeyahat.Cells[14,AdvSeyahat.Row],'SeyahatSigortasi');
end;

procedure TFrmSigortalar.AdvSeyahatGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
if acol = 13 then HAlign := taRightJustify;
end;

procedure TFrmSigortalar.AdvTekneSigortasiDblClick(Sender: TObject);
begin
SigortaGetir(AdvTekneSigortasi.Cells[14,AdvTekneSigortasi.Row],'TekneSigortasi');
end;

procedure TFrmSigortalar.AdvTrafikDblClick(Sender: TObject);
begin
SigortaGetir(AdvTrafik.Cells[16,AdvTrafik.Row],'TrafikSigortasi');
end;

procedure TFrmSigortalar.AdvTrafikGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
if acol = 16 then HAlign := taRightJustify;

end;

procedure TFrmSigortalar.AnadoluHayatGetir(TmpListe: TAdvStringGrid;
  TmpTur: String);
Var TmpSql:String;
i:integer;
Toplam:Currency;
begin

Toplam:=0;
TmpListe.ClearRows(1,TmpListe.RowCount-1);
TmpListe.RowCount := 2;

TmpSql := 'Select Bakiye,Notlar,Adi,Soyadi,CepTel2,PoliceNo,Tarih,Tarih1,Tarih2,Saat1,Saat2,Sifati,TanzimTarihi,Yuzdelik,Taksit,ToplamMiktar,id '+
' from Sigorta where Turu=:Turu ' ;

if Trim(TxtNotlar.Text) <> '' then
TmpSql := TmpSql + ' and Notlar like :Notlar ' ;

if chkkayittarihi.checked=True then
TmpSql := TmpSql + ' and Tarih between :TDt1 and :TDt2 ' ;

if ChkBitTarih.Checked = True then
TmpSql := TmpSql + ' and Tarih2 between :TBit1 and :TBit2 ' ;

if ChkBasTarih.Checked = True then
TmpSql := TmpSql + ' and Tarih1 between :TBas1 and :TBas2 ' ;

if ChkMusteri.Checked = True then
TmpSql := TmpSql + ' and Adi like :Adi and Soyadi like :Soyadi ' ;


if CmbKriter.Text = 'Plaka No' then
TmpSql := TmpSql + ' and PlakaNumarasi=:PlakaNumarasi ' ;

if CmbKriter.Text = 'Müþteri No' then
TmpSql := TmpSql + ' and MusteriNo=:MusteriNo ' ;

if CmbKriter.Text = 'Poliçe No' then
TmpSql := TmpSql + ' and PoliceNo=:PoliceNo ' ;

if RbBorcuOlanlar.Checked = True Then
TmpSql := TmpSql + ' and Bakiye<0 ' ;
if RbAcenteOdenen.Checked = True Then
TmpSql := TmpSql + ' and Bakiye>=0 ' ;

if ChkMakbuzNo.checked=True then
TmpSql := TmpSql + ' and id in (SELECT o.sigortaid FROM SigortaOdeme  AS o WHERE o.MakbuzNo like :MakbuzNo )  ' ;

if ChkOdemeAciklama.checked=True then
TmpSql := TmpSql + ' and id in (SELECT o.sigortaid FROM SigortaOdeme  AS o WHERE o.aciklama like :odemeaciklama )  ' ;



TmpSql := TmpSql + ' order by Tarih1 desc ' ;


Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Turu').Value   := TmpTur;



if Trim(TxtNotlar.Text) <> '' then
Qry1.Parameters.ParamByName('Notlar').Value := '%'+TxtNotlar.Text+'%';

if chkkayittarihi.checked=True then begin
Qry1.Parameters.ParamByName('TDt1').Value :=
IntToStr(YearOf(DtKayit1.Date))+'-'+IntToStr(MonthOf(DtKayit1.Date))+'-'+IntToStr(DayOf(DtKayit1.Date));

Qry1.Parameters.ParamByName('TDt2').Value :=
IntToStr(YearOf(DtKayit2.Date))+'-'+IntToStr(MonthOf(DtKayit2.Date))+'-'+IntToStr(DayOf(DtKayit2.Date));
end;




if ChkBitTarih.Checked = True then begin
Qry1.Parameters.ParamByName('TBit1').Value :=
IntToStr(YearOf(DtBit1.Date))+'-'+IntToStr(MonthOf(DtBit1.Date))+'-'+IntToStr(DayOf(DtBit1.Date));

Qry1.Parameters.ParamByName('TBit2').Value :=
IntToStr(YearOf(DtBit2.Date))+'-'+IntToStr(MonthOf(DtBit2.Date))+'-'+IntToStr(DayOf(DtBit2.Date));
end;


if ChkBasTarih.Checked = True then begin
Qry1.Parameters.ParamByName('TBas1').Value :=
IntToStr(YearOf(DtBas1.Date))+'-'+IntToStr(MonthOf(DtBas1.Date))+'-'+IntToStr(DayOf(DtBas1.Date));

Qry1.Parameters.ParamByName('TBas2').Value :=
IntToStr(YearOf(DtBas2.Date))+'-'+IntToStr(MonthOf(DtBas2.Date))+'-'+IntToStr(DayOf(DtBas2.Date));
end;

if ChkMusteri.Checked = True then begin
Qry1.Parameters.ParamByName('Adi').Value    := CmbAdi.Text+'%';
Qry1.Parameters.ParamByName('Soyadi').Value := CmbSoyadi.Text+'%';
end;

if CmbKriter.Text = 'Plaka No' then
Qry1.Parameters.ParamByName('PlakaNumarasi').Value := TxtKriter.Text;

if CmbKriter.Text = 'Müþteri No' then
Qry1.Parameters.ParamByName('MusteriNo').Value := TxtKriter.Text;

if CmbKriter.Text = 'Poliçe No' then
Qry1.Parameters.ParamByName('PoliceNo').Value := TxtKriter.Text;

if ChkMakbuzNo.checked=True then
Qry1.Parameters.ParamByName('MakbuzNo').Value   := TxtMakbuzNo.text+'%'  ;

if ChkOdemeAciklama.checked=True then
Qry1.Parameters.ParamByName('odemeaciklama').Value   := '%'+txtodemeaciklama.text+'%'  ;


Qry1.Prepared:=True;
Qry1.Open;

if Qry1.RecordCount <> 0 Then TmpListe.RowCount := Qry1.RecordCount + 1 ;

For  i:=1 to Qry1.RecordCount do begin
TmpListe.Cells[1,i]  :=  Qry1.FieldByName('Adi').AsString  ;
TmpListe.Cells[2,i]  :=  Qry1.FieldByName('Soyadi').AsString  ;
TmpListe.Cells[3,i]  :=  Qry1.FieldByName('CepTel2').AsString  ;
TmpListe.Cells[4,i]  :=  Qry1.FieldByName('PoliceNo').AsString  ;
TmpListe.Cells[5,i]  :=  datetostr(Qry1.FieldByName('Tarih').Asdatetime)     ;
TmpListe.Cells[6,i]  :=  Qry1.FieldByName('Tarih1').AsString    ;
TmpListe.Cells[7,i]  :=  Qry1.FieldByName('Tarih2').AsString    ;
TmpListe.Cells[8,i]  :=  Qry1.FieldByName('Sifati').AsString   ;
TmpListe.Cells[9,i]  :=  datetostr(Qry1.FieldByName('TanzimTarihi').Asdatetime)  ;
TmpListe.Cells[10,i] :=  Qry1.FieldByName('Taksit').AsString    ;
TmpListe.Cells[11,i] :=  Qry1.FieldByName('ToplamMiktar').AsString  ;
Toplam := Toplam + Qry1.FieldByName('ToplamMiktar').AsCurrency  ;

TmpListe.Cells[12,i]  := FormatFloat('#,##0.00',Qry1.FieldByName('Bakiye').AsCurrency);
TmpListe.Colors[12,i] := clYellow;

TmpListe.Cells[13,i] := Qry1.FieldByName('Notlar').AsString ;

TmpListe.Cells[14,i] := Qry1.FieldByName('id').AsString  ;

Qry1.Next;
end;

TmpListe.AutoNumberCol(0);

CurrAnadoluHayat.Value := Toplam ;
AnadoluHayat.Tag := 1;

end;

procedure TFrmSigortalar.BtnListeleClick(Sender: TObject);
begin

TrafikSigortasi.Tag    := 0;
KaskoSikortasi.Tag     := 0;
SeyahatSigortasi.Tag   := 0;
EvSigortasi.Tag        := 0;
isYeriSigortasi.Tag    := 0;
AnadoluHayat.Tag       := 0;
SaglikSigortasi.Tag    := 0;
FerdiKazaSigortasi.Tag := 0;
TekneSigortasi.Tag     := 0;
DigerSigortalar.Tag    := 0;

if PageControl1.TabIndex = 0 then TrafikKaskoGetir(AdvTrafik,'TRAFÝK SÝGORTASI');
if PageControl1.TabIndex = 1 then TrafikKaskoGetir(AdvKasko,'KASKO SÝGORTASI');
if PageControl1.TabIndex = 2 then SeyahatEvisYeriGetir(AdvSeyahat,'SEYAHAT SÝGORTASI');

if PageControl1.TabIndex = 3 then SeyahatEvisYeriGetir(AdvEv,'EV SÝGORTASI');
if PageControl1.TabIndex = 4 then SeyahatEvisYeriGetir(Advisyeri,'ÝÞYERÝ SÝGORTASI');

if PageControl1.TabIndex = 5 then AnadoluHayatGetir(AdvAnadoluHayat,'ANADOLU HAYAT');

if PageControl1.TabIndex = 6 then SaglikSigortasiGetir(AdvSaglik,'SAGLIK SIGORTASI');
if PageControl1.TabIndex = 7 then FerdiKazaSigortasiGetir(AdvFerdiKazaSigortasi,'FERDI KAZA SIGORTASI');
if PageControl1.TabIndex = 8 then TekneSigortasiGetir(AdvTekneSigortasi,'TEKNE SIGORTASI');
if PageControl1.TabIndex = 9 then DigerSigortaGetir(AdvDiger,'DIGER SIGORTALAR');
end;

procedure TFrmSigortalar.Button1Click(Sender: TObject);
var TmpSql:String;
ToplamBorc,ToplamAlacak,TmpBakiye:currency;
i,x:integer;
begin
TmpSql := 'Select * from Sigorta' ;
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Open;

for i:=1 to qry1.recordcount do   begin
TmpSql := 'Select * from SigortaOdeme where Sigortaid=:Sigortaid order by OdemeTarihi,id ' ;
Qry2.Close;
Qry2.SQL.Clear;
Qry2.SQL.Add(TmpSql);
Qry2.Parameters.ParamByName('Sigortaid').Value := qry1.fieldbyname('id').asstring ;
Qry2.Prepared:=True;
Qry2.Open;

ToplamBorc:=0;
ToplamAlacak:=0;
TmpBakiye:=0;

for x:=1 to qry2.recordcount do begin
ToplamBorc:=ToplamBorc + Qry2.FieldByName('Borc').AsCurrency;
ToplamAlacak:=ToplamAlacak + Qry2.FieldByName('Alacak').AsCurrency;
TmpBakiye := TmpBakiye + (Qry2.FieldByName('Alacak').AsCurrency - Qry2.FieldByName('Borc').AsCurrency) ;
Qry2.Next;
end;


TmpSql := 'Update Sigorta Set ToplamBorc=:ToplamBorc,ToplamAlacak=:ToplamAlacak,Bakiye=:Bakiye where id=:id ' ;
Qry3.Close;
Qry3.SQL.Clear;
Qry3.SQL.Add(TmpSql);
Qry3.Parameters.ParamByName('ToplamBorc').Value := ToplamBorc ;
Qry3.Parameters.ParamByName('ToplamAlacak').Value := ToplamAlacak ;
Qry3.Parameters.ParamByName('Bakiye').Value := TmpBakiye ;
Qry3.Parameters.ParamByName('id').Value := qry1.fieldbyname('id').asstring ;
Qry3.Prepared:=True;
Qry3.ExecSql;

Qry1.next;
end;



end;

procedure TFrmSigortalar.Button2Click(Sender: TObject);
var i,x,rr:integer;
TmpSql:String;
begin

AdvTrafik.PrintSettings.TitleLines.Clear;

if PageControl1.TabIndex = 0 then begin
AdvTrafik.PrintSettings.TitleLines.Add('TRAFÝK SÝGORTASI');
AdvTrafik.PrintSettings.TitleLines.Add(' ');
AdvPreview.Grid := AdvTrafik ;
end;

if PageControl1.TabIndex = 1 then begin
AdvTrafik.PrintSettings.TitleLines.Add('KASKO SÝGORTASI');
AdvTrafik.PrintSettings.TitleLines.Add(' ');
AdvPreview.Grid := AdvKasko ;
end;

if PageControl1.TabIndex = 2 then begin
AdvTrafik.PrintSettings.TitleLines.Add('SEYAHAT SÝGORTASI');
AdvTrafik.PrintSettings.TitleLines.Add(' ');
AdvPreview.Grid := AdvSeyahat ;
end;

if PageControl1.TabIndex = 3 then begin
AdvTrafik.PrintSettings.TitleLines.Add('EV SÝGORTASI');
AdvTrafik.PrintSettings.TitleLines.Add(' ');
AdvPreview.Grid := AdvEv ;
end;

if PageControl1.TabIndex = 4 then begin
AdvTrafik.PrintSettings.TitleLines.Add('ÝÞYERÝ SÝGORTASI');
AdvTrafik.PrintSettings.TitleLines.Add(' ');
AdvPreview.Grid := AdvisYeri ;
end;


if PageControl1.TabIndex = 5 then begin
AdvTrafik.PrintSettings.TitleLines.Add('ANADOLU HAYAT SÝGORTASI');
AdvTrafik.PrintSettings.TitleLines.Add(' ');
AdvPreview.Grid := AdvisYeri ;
end;

if PageControl1.TabIndex = 6 then begin
AdvTrafik.PrintSettings.TitleLines.Add('SAÐLIK SÝGORTASI');
AdvTrafik.PrintSettings.TitleLines.Add(' ');
AdvPreview.Grid := AdvisYeri ;
end;

if PageControl1.TabIndex = 7 then begin
AdvTrafik.PrintSettings.TitleLines.Add('FERDÝ KAZA SÝGORTASI');
AdvTrafik.PrintSettings.TitleLines.Add(' ');
AdvPreview.Grid := AdvisYeri ;
end;

if PageControl1.TabIndex = 8 then begin
AdvTrafik.PrintSettings.TitleLines.Add('TEKNE SÝGORTASI');
AdvTrafik.PrintSettings.TitleLines.Add(' ');
AdvPreview.Grid := AdvisYeri ;
end;

if PageControl1.TabIndex = 9 then begin
AdvTrafik.PrintSettings.TitleLines.Add('DÝÐER SÝGORTALAR');
AdvTrafik.PrintSettings.TitleLines.Add(' ');
AdvPreview.Grid := AdvisYeri ;
end;





AdvPreview.Execute ;

end;

procedure TFrmSigortalar.CmbAdiChange(Sender: TObject);
begin
if chksec.Checked = False then exit;

CmbSoyadi.ItemIndex  := CmbAdi.ItemIndex;
CmbCepTel1.ItemIndex := CmbAdi.ItemIndex;
CmbAdres.ItemIndex   := CmbAdi.ItemIndex;

end;

procedure TFrmSigortalar.CmbAdiDropDown(Sender: TObject);
begin
if CmbAdi.Items.Count = 0 then
MusteriGetir;
end;

procedure TFrmSigortalar.CmbAdresChange(Sender: TObject);
begin
if chksec.Checked = False then exit;

CmbSoyadi.ItemIndex  := CmbAdres.ItemIndex ;
CmbAdi.ItemIndex     := CmbAdres.ItemIndex;
CmbCepTel1.ItemIndex := CmbAdres.ItemIndex;
end;

procedure TFrmSigortalar.CmbAdresDropDown(Sender: TObject);
begin
if CmbCepTel1.Items.Count = 0 then MusteriGetir;
end;

procedure TFrmSigortalar.CmbCepTel1Change(Sender: TObject);
begin
if chksec.Checked = False then exit;

CmbSoyadi.ItemIndex  := CmbCepTel1.ItemIndex ;
CmbAdi.ItemIndex     := CmbCepTel1.ItemIndex;
CmbAdres.ItemIndex   := CmbCepTel1.ItemIndex;
end;

procedure TFrmSigortalar.CmbCepTel1DropDown(Sender: TObject);
begin
if CmbCepTel1.Items.Count = 0 then MusteriGetir;
end;

procedure TFrmSigortalar.CmbSoyadiChange(Sender: TObject);
begin
if chksec.Checked = False then exit;
CmbAdi.ItemIndex     := CmbSoyadi.ItemIndex;
CmbCepTel1.ItemIndex := CmbSoyadi.ItemIndex;
CmbAdres.ItemIndex   := CmbSoyadi.ItemIndex;
end;

procedure TFrmSigortalar.CmbSoyadiDropDown(Sender: TObject);
begin
if CmbSoyadi.Items.Count = 0 then MusteriGetir;
end;

procedure TFrmSigortalar.CreateParams(var Params: TCreateParams);
begin
 inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;
end;



procedure TFrmSigortalar.DigerSigortaGetir(TmpListe: TAdvStringGrid;
  TmpTur: string);
Var TmpSql:String;
i:integer;
Toplam:Currency;
begin

Toplam:=0;
TmpListe.ClearRows(1,TmpListe.RowCount-1);
TmpListe.RowCount := 2;

TmpSql := 'Select Bakiye,Notlar,Adi,Soyadi,CepTel2,PoliceNo,Tarih,Tarih1,Tarih2,DigerAdi,DigerSoyadi,Yuzdelik,Taksit,ToplamMiktar,id '+
' from Sigorta where Turu=:Turu ' ;

if Trim(TxtNotlar.Text) <> '' then
TmpSql := TmpSql + ' and Notlar like :Notlar ' ;


if chkkayittarihi.checked=True then
TmpSql := TmpSql + ' and Tarih between :TDt1 and :TDt2 ' ;


if ChkBitTarih.Checked = True then
TmpSql := TmpSql + ' and Tarih2 between :TBit1 and :TBit2 ' ;

if ChkBasTarih.Checked = True then
TmpSql := TmpSql + ' and Tarih1 between :TBas1 and :TBas2 ' ;

if ChkMusteri.Checked = True then
TmpSql := TmpSql + ' and Adi like :Adi and Soyadi like :Soyadi ' ;

if CmbKriter.Text = 'Plaka No' then
TmpSql := TmpSql + ' and PlakaNumarasi=:PlakaNumarasi ' ;

if CmbKriter.Text = 'Müþteri No' then
TmpSql := TmpSql + ' and MusteriNo=:MusteriNo ' ;

if CmbKriter.Text = 'Poliçe No' then
TmpSql := TmpSql + ' and PoliceNo=:PoliceNo ' ;

if RbBorcuOlanlar.Checked = True Then
TmpSql := TmpSql + ' and Bakiye<0 ' ;
if RbAcenteOdenen.Checked = True Then
TmpSql := TmpSql + ' and Bakiye>=0 ' ;


if ChkMakbuzNo.checked=True then
TmpSql := TmpSql + ' and id in (SELECT o.sigortaid FROM SigortaOdeme  AS o WHERE o.MakbuzNo like :MakbuzNo )  ' ;

if ChkOdemeAciklama.checked=True then
TmpSql := TmpSql + ' and id in (SELECT o.sigortaid FROM SigortaOdeme  AS o WHERE o.aciklama like :odemeaciklama )  ' ;





TmpSql := TmpSql + ' order by Tarih1 desc ' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Turu').Value   := TmpTur;


if Trim(TxtNotlar.Text) <> '' then
Qry1.Parameters.ParamByName('Notlar').Value := '%'+TxtNotlar.Text+'%';

if chkkayittarihi.checked=True then begin
Qry1.Parameters.ParamByName('TDt1').Value :=
IntToStr(YearOf(DtKayit1.Date))+'-'+IntToStr(MonthOf(DtKayit1.Date))+'-'+IntToStr(DayOf(DtKayit1.Date));

Qry1.Parameters.ParamByName('TDt2').Value :=
IntToStr(YearOf(DtKayit2.Date))+'-'+IntToStr(MonthOf(DtKayit2.Date))+'-'+IntToStr(DayOf(DtKayit2.Date));
end;

if ChkBitTarih.Checked = True then begin
Qry1.Parameters.ParamByName('TBit1').Value :=
IntToStr(YearOf(DtBit1.Date))+'-'+IntToStr(MonthOf(DtBit1.Date))+'-'+IntToStr(DayOf(DtBit1.Date));

Qry1.Parameters.ParamByName('TBit2').Value :=
IntToStr(YearOf(DtBit2.Date))+'-'+IntToStr(MonthOf(DtBit2.Date))+'-'+IntToStr(DayOf(DtBit2.Date));
end;


if ChkBasTarih.Checked = True then begin
Qry1.Parameters.ParamByName('TBas1').Value :=
IntToStr(YearOf(DtBas1.Date))+'-'+IntToStr(MonthOf(DtBas1.Date))+'-'+IntToStr(DayOf(DtBas1.Date));

Qry1.Parameters.ParamByName('TBas2').Value :=
IntToStr(YearOf(DtBas2.Date))+'-'+IntToStr(MonthOf(DtBas2.Date))+'-'+IntToStr(DayOf(DtBas2.Date));
end;

if ChkMusteri.Checked = True then begin
Qry1.Parameters.ParamByName('Adi').Value    := CmbAdi.Text+'%';
Qry1.Parameters.ParamByName('Soyadi').Value := CmbSoyadi.Text+'%';
end;

if CmbKriter.Text = 'Plaka No' then
Qry1.Parameters.ParamByName('PlakaNumarasi').Value := TxtKriter.Text;

if CmbKriter.Text = 'Müþteri No' then
Qry1.Parameters.ParamByName('MusteriNo').Value := TxtKriter.Text;

if CmbKriter.Text = 'Poliçe No' then
Qry1.Parameters.ParamByName('PoliceNo').Value := TxtKriter.Text;


if ChkMakbuzNo.checked=True then
Qry1.Parameters.ParamByName('MakbuzNo').Value   := TxtMakbuzNo.text+'%'  ;

if ChkOdemeAciklama.checked=True then
Qry1.Parameters.ParamByName('odemeaciklama').Value   := '%'+txtodemeaciklama.text+'%'  ;


Qry1.Prepared:=True;
Qry1.Open;

if Qry1.RecordCount <> 0 Then TmpListe.RowCount := Qry1.RecordCount + 1 ;

For  i:=1 to Qry1.RecordCount do begin
TmpListe.Cells[1,i]  :=  Qry1.FieldByName('Adi').AsString  ;
TmpListe.Cells[2,i]  :=  Qry1.FieldByName('Soyadi').AsString  ;
TmpListe.Cells[3,i]  :=  Qry1.FieldByName('CepTel2').AsString  ;
TmpListe.Cells[4,i]  :=  Qry1.FieldByName('PoliceNo').AsString  ;
TmpListe.Cells[5,i]  :=  datetostr(Qry1.FieldByName('Tarih').Asdatetime)     ;
TmpListe.Cells[6,i]  :=  datetostr(Qry1.FieldByName('Tarih1').Asdatetime)    ;
TmpListe.Cells[7,i]  :=  datetostr(Qry1.FieldByName('Tarih2').Asdatetime)    ;
TmpListe.Cells[8,i]  :=  Qry1.FieldByName('Digeradi').AsString   ;
TmpListe.Cells[9,i]  :=  Qry1.FieldByName('DigerSoyadi').AsString  ;
TmpListe.Cells[10,i] :=  Qry1.FieldByName('Taksit').AsString    ;
TmpListe.Cells[11,i] :=  Qry1.FieldByName('ToplamMiktar').AsString  ;
Toplam := Toplam + Qry1.FieldByName('ToplamMiktar').AsCurrency  ;

TmpListe.Cells[12,i] := FormatFloat('#,##0.00',Qry1.FieldByName('Bakiye').AsCurrency);
TmpListe.Colors[12,i]:=clYellow;

TmpListe.Cells[13,i] := Qry1.FieldByName('Notlar').AsString ;

TmpListe.Cells[14,i] := Qry1.FieldByName('id').AsString  ;

Qry1.Next;
end;

TmpListe.AutoNumberCol(0);

CurrDiger.Value := Toplam ;
DigerSigortalar.Tag := 1;

end;

procedure TFrmSigortalar.FerdiKazaSigortasiGetir(TmpListe: TAdvStringGrid;
  TmpTur: String);

Var TmpSql:String;
i:integer;
Toplam:Currency;
begin

Toplam:=0;
TmpListe.ClearRows(1,TmpListe.RowCount-1);
TmpListe.RowCount := 2;

TmpSql := 'Select Bakiye,Notlar,Adi,Soyadi,CepTel2,PoliceNo,Tarih,Tarih1,Tarih2,Txtisim,TxtSoyisim,Yuzdelik,Taksit,ToplamMiktar,id '+
' from Sigorta where Turu=:Turu ' ;

if Trim(TxtNotlar.Text) <> '' then
TmpSql := TmpSql + ' and Notlar like :Notlar ' ;



if chkkayittarihi.checked=True then
TmpSql := TmpSql + ' and Tarih between :TDt1 and :TDt2 ' ;

if ChkBitTarih.Checked = True then
TmpSql := TmpSql + ' and Tarih2 between :TBit1 and :TBit2 ' ;

if ChkBasTarih.Checked = True then
TmpSql := TmpSql + ' and Tarih1 between :TBas1 and :TBas2 ' ;

if ChkMusteri.Checked = True then
TmpSql := TmpSql + ' and Adi like :Adi and Soyadi like :Soyadi ' ;

if CmbKriter.Text = 'Plaka No' then
TmpSql := TmpSql + ' and PlakaNumarasi=:PlakaNumarasi ' ;

if CmbKriter.Text = 'Müþteri No' then
TmpSql := TmpSql + ' and MusteriNo=:MusteriNo ' ;

if CmbKriter.Text = 'Poliçe No' then
TmpSql := TmpSql + ' and PoliceNo=:PoliceNo ' ;

if RbBorcuOlanlar.Checked = True Then
TmpSql := TmpSql + ' and Bakiye<0 ' ;
if RbAcenteOdenen.Checked = True Then
TmpSql := TmpSql + ' and Bakiye>=0 ' ;

if ChkMakbuzNo.checked=True then
TmpSql := TmpSql + ' and id in (SELECT o.sigortaid FROM SigortaOdeme  AS o WHERE o.MakbuzNo like :MakbuzNo )  ' ;

if ChkOdemeAciklama.checked=True then
TmpSql := TmpSql + ' and id in (SELECT o.sigortaid FROM SigortaOdeme  AS o WHERE o.aciklama like :odemeaciklama )  ' ;




TmpSql := TmpSql + ' order by Tarih1 desc ' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Turu').Value   := TmpTur;


if Trim(TxtNotlar.Text) <> '' then
Qry1.Parameters.ParamByName('Notlar').Value := '%'+TxtNotlar.Text+'%';

if chkkayittarihi.checked=True then begin
Qry1.Parameters.ParamByName('TDt1').Value :=
IntToStr(YearOf(DtKayit1.Date))+'-'+IntToStr(MonthOf(DtKayit1.Date))+'-'+IntToStr(DayOf(DtKayit1.Date));

Qry1.Parameters.ParamByName('TDt2').Value :=
IntToStr(YearOf(DtKayit2.Date))+'-'+IntToStr(MonthOf(DtKayit2.Date))+'-'+IntToStr(DayOf(DtKayit2.Date));
end;

if ChkBitTarih.Checked = True then begin
Qry1.Parameters.ParamByName('TBit1').Value :=
IntToStr(YearOf(DtBit1.Date))+'-'+IntToStr(MonthOf(DtBit1.Date))+'-'+IntToStr(DayOf(DtBit1.Date));

Qry1.Parameters.ParamByName('TBit2').Value :=
IntToStr(YearOf(DtBit2.Date))+'-'+IntToStr(MonthOf(DtBit2.Date))+'-'+IntToStr(DayOf(DtBit2.Date));
end;


if ChkBasTarih.Checked = True then begin
Qry1.Parameters.ParamByName('TBas1').Value :=
IntToStr(YearOf(DtBas1.Date))+'-'+IntToStr(MonthOf(DtBas1.Date))+'-'+IntToStr(DayOf(DtBas1.Date));

Qry1.Parameters.ParamByName('TBas2').Value :=
IntToStr(YearOf(DtBas2.Date))+'-'+IntToStr(MonthOf(DtBas2.Date))+'-'+IntToStr(DayOf(DtBas2.Date));
end;

if ChkMusteri.Checked = True then begin
Qry1.Parameters.ParamByName('Adi').Value    := CmbAdi.Text+'%';
Qry1.Parameters.ParamByName('Soyadi').Value := CmbSoyadi.Text+'%';
end;

if CmbKriter.Text = 'Plaka No' then
Qry1.Parameters.ParamByName('PlakaNumarasi').Value := TxtKriter.Text;

if CmbKriter.Text = 'Müþteri No' then
Qry1.Parameters.ParamByName('MusteriNo').Value := TxtKriter.Text;

if CmbKriter.Text = 'Poliçe No' then
Qry1.Parameters.ParamByName('PoliceNo').Value := TxtKriter.Text;


if ChkMakbuzNo.checked=True then
Qry1.Parameters.ParamByName('MakbuzNo').Value   := TxtMakbuzNo.text+'%'  ;

if ChkOdemeAciklama.checked=True then
Qry1.Parameters.ParamByName('odemeaciklama').Value   := '%'+txtodemeaciklama.text+'%'  ;

Qry1.Prepared:=True;
Qry1.Open;

if Qry1.RecordCount <> 0 Then TmpListe.RowCount := Qry1.RecordCount + 1 ;

For  i:=1 to Qry1.RecordCount do begin
TmpListe.Cells[1,i]  :=  Qry1.FieldByName('Adi').AsString  ;
TmpListe.Cells[2,i]  :=  Qry1.FieldByName('Soyadi').AsString  ;
TmpListe.Cells[3,i]  :=  Qry1.FieldByName('CepTel2').AsString  ;
TmpListe.Cells[4,i]  :=  Qry1.FieldByName('PoliceNo').AsString  ;
TmpListe.Cells[5,i]  :=  datetostr(Qry1.FieldByName('Tarih').asdatetime)     ;
TmpListe.Cells[6,i]  :=  Qry1.FieldByName('Tarih1').AsString    ;
TmpListe.Cells[7,i]  :=  Qry1.FieldByName('Tarih2').AsString    ;
TmpListe.Cells[8,i]  :=  Qry1.FieldByName('Txtisim').AsString   ;
TmpListe.Cells[9,i]  :=  Qry1.FieldByName('Txtsoyisim').AsString  ;
TmpListe.Cells[10,i] :=  Qry1.FieldByName('Taksit').AsString    ;
TmpListe.Cells[11,i] :=  Qry1.FieldByName('ToplamMiktar').AsString  ;
Toplam := Toplam + Qry1.FieldByName('ToplamMiktar').AsCurrency  ;

TmpListe.Cells[12,i] := FormatFloat('#,##0.00',Qry1.FieldByName('Bakiye').AsCurrency);
TmpListe.Colors[12,i]:=clYellow;

TmpListe.Cells[13,i] := Qry1.FieldByName('Notlar').AsString ;

TmpListe.Cells[14,i] := Qry1.FieldByName('id').AsString  ;

Qry1.Next;
end;

TmpListe.AutoNumberCol(0);

CurrFerdiKaza.Value := Toplam ;
FerdiKazaSigortasi.Tag := 1;

end;

procedure TFrmSigortalar.FormClose(Sender: TObject; var Action: TCloseAction);
var h:integer; begin
Action := caFree;
FrmSigortalar:= nil;

//FrmSigortaislemleri.Close;

h := FindWindow(nil, 'Sigorta Ýþlemleri');
if h <> 0 then PostMessage(h, WM_CLOSE, 0, 0);
//if h <> 0 then showmessage('asdd');


end;

procedure TFrmSigortalar.FormShow(Sender: TObject);
begin
DtBas1.Date := Date ;
DtBas2.Date := Date + 30;
DtBit1.Date := Date ;
DtBit2.Date := Date + 30 ;



DtKayit1.Date := Date ;
DtKayit2.Date := Date ;
end;







procedure TFrmSigortalar.MusteriGetir;
var i:integer;
TmpSql:String;
begin

CmbAdi.Clear;
CmbSoyadi.Clear;
CmbCepTel1.Clear;
CmbAdres.Clear;

TmpSql:= 'Select Adi,Soyadi,CepTel1,Adres from musteri order by adi,soyadi' ;
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

procedure TFrmSigortalar.odemegetir(i:string;TmpAdv:TAdvStringGrid);
Var
TmpSql:String;
x:integer ;
begin

TmpAdv.ClearRows(1,TmpAdv.RowCount-1);
TmpAdv.RowCount := 2 ;

TmpSql := 'Select TaksitNo,Tarih,Miktar,Odeme,OdemeTarihi ' +
'From SigortaOdeme Where Sigortaid=:Sigortaid order by TaksitNo ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Sigortaid').Value := i  ;
Qry1.Prepared;
Qry1.Open;

if qry1.RecordCount <> 0 then TmpAdv.RowCount := Qry1.RecordCount + 1 ;

for x:=1 to Qry1.RecordCount do begin

TmpAdv.Cells[0,x] := Qry1.FieldByName('TaksitNo').AsString ;
TmpAdv.Cells[1,x] := Qry1.FieldByName('Tarih').AsString ;
TmpAdv.Cells[2,x] := Qry1.FieldByName('Miktar').AsString ;
if  Qry1.FieldByName('Odeme').AsString = 'Ödendi' Then Begin
TmpAdv.AddPicture(3, x,image1.Picture, False ,noStretch, 20, haCenter, vaCenter);
TmpAdv.Cells[4,x] := DateToStr(Qry1.FieldByName('OdemeTarihi').AsDateTime) ;
End
Else
TmpAdv.AddPicture(3, x,image2.Picture, False ,noStretch, 20, haCenter, vaCenter);

TmpAdv.Cells[5,x] := Qry1.FieldByName('Odeme').AsString ;

Qry1.Next;
end;

end;



procedure TFrmSigortalar.PageControl1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if PageControl1.TabIndex = 0 then if TrafikSigortasi.Tag = 0    Then TrafikKaskoGetir(AdvTrafik,'TRAFÝK SÝGORTASI');
if PageControl1.TabIndex = 1 then if KaskoSikortasi.Tag = 0     Then TrafikKaskoGetir(AdvKasko,'KASKO SÝGORTASI');
if PageControl1.TabIndex = 2 then if SeyahatSigortasi.Tag = 0   Then SeyahatEvisYeriGetir(AdvSeyahat,'SEYAHAT SÝGORTASI');
if PageControl1.TabIndex = 3 then if EvSigortasi.Tag = 0        Then SeyahatEvisYeriGetir(AdvEv,'EV SÝGORTASI');
if PageControl1.TabIndex = 4 then if isYeriSigortasi.Tag = 0    Then SeyahatEvisYeriGetir(Advisyeri,'ÝÞYERÝ SÝGORTASI');
if PageControl1.TabIndex = 5 then if AnadoluHayat.Tag = 0       Then AnadoluHayatGetir(AdvAnadoluHayat,'ANADOLU HAYAT');
if PageControl1.TabIndex = 6 then if SaglikSigortasi.Tag = 0    Then SaglikSigortasiGetir(AdvSaglik,'SAGLIK SIGORTASI');
if PageControl1.TabIndex = 7 then if FerdiKazaSigortasi.Tag = 0 Then FerdiKazaSigortasiGetir(AdvFerdiKazaSigortasi,'FERDI KAZA SIGORTASI');
if PageControl1.TabIndex = 8 then if TekneSigortasi.Tag = 0     Then TekneSigortasiGetir(AdvTekneSigortasi,'TEKNE SIGORTASI');
if PageControl1.TabIndex = 9 then if DigerSigortalar.Tag = 0    Then DigerSigortaGetir(AdvDiger,'DIGER SIGORTALAR');
end;

procedure TFrmSigortalar.SaglikSigortasiGetir(TmpListe: TAdvStringGrid;
  TmpTur: String);
Var TmpSql:String;
i:integer;
Toplam:Currency;
begin

Toplam:=0;
TmpListe.ClearRows(1,TmpListe.RowCount-1);
TmpListe.RowCount := 2;

TmpSql := 'Select Bakiye,Notlar,Adi,Soyadi,CepTel2,PoliceNo,Tarih,Tarih1,Tarih2,Saat1,Saat2,Sifati,TanzimTarihi,Yuzdelik,Taksit,ToplamMiktar,id '+
' from Sigorta where Turu=:Turu ' ;

if Trim(TxtNotlar.Text) <> '' then
TmpSql := TmpSql + ' and Notlar like :Notlar ' ;

if chkkayittarihi.checked=True then
TmpSql := TmpSql + ' and Tarih between :TDt1 and :TDt2 ' ;

if ChkBitTarih.Checked = True then
TmpSql := TmpSql + ' and Tarih2 between :TBit1 and :TBit2 ' ;

if ChkBasTarih.Checked = True then
TmpSql := TmpSql + ' and Tarih1 between :TBas1 and :TBas2 ' ;

if ChkMusteri.Checked = True then
TmpSql := TmpSql + ' and Adi like :Adi and Soyadi like :Soyadi ' ;

if CmbKriter.Text = 'Plaka No' then
TmpSql := TmpSql + ' and PlakaNumarasi=:PlakaNumarasi ' ;

if CmbKriter.Text = 'Müþteri No' then
TmpSql := TmpSql + ' and MusteriNo=:MusteriNo ' ;

if CmbKriter.Text = 'Poliçe No' then
TmpSql := TmpSql + ' and PoliceNo=:PoliceNo ' ;

if RbBorcuOlanlar.Checked = True Then
TmpSql := TmpSql + ' and Bakiye<0 ' ;
if RbAcenteOdenen.Checked = True Then
TmpSql := TmpSql + ' and Bakiye>=0 ' ;

if ChkMakbuzNo.checked=True then
TmpSql := TmpSql + ' and id in (SELECT o.sigortaid FROM SigortaOdeme  AS o WHERE o.MakbuzNo like :MakbuzNo )  ' ;

if ChkOdemeAciklama.checked=True then
TmpSql := TmpSql + ' and id in (SELECT o.sigortaid FROM SigortaOdeme  AS o WHERE o.aciklama like :odemeaciklama )  ' ;




TmpSql := TmpSql + ' order by Tarih1 desc ' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Turu').Value   := TmpTur;



if Trim(TxtNotlar.Text) <> '' then
Qry1.Parameters.ParamByName('Notlar').Value := '%'+TxtNotlar.Text+'%';

if chkkayittarihi.checked=True then begin
Qry1.Parameters.ParamByName('TDt1').Value :=
IntToStr(YearOf(DtKayit1.Date))+'-'+IntToStr(MonthOf(DtKayit1.Date))+'-'+IntToStr(DayOf(DtKayit1.Date));

Qry1.Parameters.ParamByName('TDt2').Value :=
IntToStr(YearOf(DtKayit2.Date))+'-'+IntToStr(MonthOf(DtKayit2.Date))+'-'+IntToStr(DayOf(DtKayit2.Date));
end;


if ChkBitTarih.Checked = True then begin
Qry1.Parameters.ParamByName('TBit1').Value :=
IntToStr(YearOf(DtBit1.Date))+'-'+IntToStr(MonthOf(DtBit1.Date))+'-'+IntToStr(DayOf(DtBit1.Date));

Qry1.Parameters.ParamByName('TBit2').Value :=
IntToStr(YearOf(DtBit2.Date))+'-'+IntToStr(MonthOf(DtBit2.Date))+'-'+IntToStr(DayOf(DtBit2.Date));
end;


if ChkBasTarih.Checked = True then begin
Qry1.Parameters.ParamByName('TBas1').Value :=
IntToStr(YearOf(DtBas1.Date))+'-'+IntToStr(MonthOf(DtBas1.Date))+'-'+IntToStr(DayOf(DtBas1.Date));

Qry1.Parameters.ParamByName('TBas2').Value :=
IntToStr(YearOf(DtBas2.Date))+'-'+IntToStr(MonthOf(DtBas2.Date))+'-'+IntToStr(DayOf(DtBas2.Date));
end;

if ChkMusteri.Checked = True then begin
Qry1.Parameters.ParamByName('Adi').Value    := CmbAdi.Text+'%';
Qry1.Parameters.ParamByName('Soyadi').Value := CmbSoyadi.Text+'%';
end;

if CmbKriter.Text = 'Plaka No' then
Qry1.Parameters.ParamByName('PlakaNumarasi').Value := TxtKriter.Text;

if CmbKriter.Text = 'Müþteri No' then
Qry1.Parameters.ParamByName('MusteriNo').Value := TxtKriter.Text;

if CmbKriter.Text = 'Poliçe No' then
Qry1.Parameters.ParamByName('PoliceNo').Value := TxtKriter.Text;

if ChkMakbuzNo.checked=True then
Qry1.Parameters.ParamByName('MakbuzNo').Value   := TxtMakbuzNo.text+'%'  ;

if ChkOdemeAciklama.checked=True then
Qry1.Parameters.ParamByName('odemeaciklama').Value   := '%'+txtodemeaciklama.text+'%'  ;



Qry1.Prepared:=True;
Qry1.Open;

if Qry1.RecordCount <> 0 Then TmpListe.RowCount := Qry1.RecordCount + 1 ;

For  i:=1 to Qry1.RecordCount do begin
TmpListe.Cells[1,i]  :=  Qry1.FieldByName('Adi').AsString  ;
TmpListe.Cells[2,i]  :=  Qry1.FieldByName('Soyadi').AsString  ;
TmpListe.Cells[3,i]  :=  Qry1.FieldByName('CepTel2').AsString  ;
TmpListe.Cells[4,i]  :=  Qry1.FieldByName('PoliceNo').AsString  ;
TmpListe.Cells[5,i]  :=  Qry1.FieldByName('Tarih').AsString     ;
TmpListe.Cells[6,i]  :=  Qry1.FieldByName('Tarih1').AsString    ;
TmpListe.Cells[7,i]  :=  Qry1.FieldByName('Tarih2').AsString    ;
TmpListe.Cells[8,i]  :=  Qry1.FieldByName('Sifati').AsString   ;
TmpListe.Cells[9,i]  :=  Qry1.FieldByName('TanzimTarihi').AsString  ;
TmpListe.Cells[10,i] :=  Qry1.FieldByName('Taksit').AsString    ;
TmpListe.Cells[11,i] :=  Qry1.FieldByName('ToplamMiktar').AsString  ;
Toplam := Toplam + Qry1.FieldByName('ToplamMiktar').AsCurrency  ;

TmpListe.Cells[12,i] := FormatFloat('#,##0.00',Qry1.FieldByName('Bakiye').AsCurrency);
TmpListe.Colors[12,i]:=clYellow;

TmpListe.Cells[13,i] := Qry1.FieldByName('Notlar').AsString ;

TmpListe.Cells[14,i] := Qry1.FieldByName('id').AsString  ;

Qry1.Next;
end;

TmpListe.AutoNumberCol(0);

CurrSaglik.Value := Toplam ;
SaglikSigortasi.Tag := 1;
end;

procedure TFrmSigortalar.SeyahatEvisYeriGetir(TmpListe:TAdvStringGrid;TmpTur:String);
Var TmpSql:String;
i:integer;
Toplam:Currency;
begin

Toplam:=0;
TmpListe.ClearRows(1,TmpListe.RowCount-1);
TmpListe.RowCount := 2;

TmpSql := 'Select Bakiye,Notlar,Adi,Soyadi,CepTel2,PoliceNo,Tarih,Tarih1,Tarih2,Sifati,TanzimTarihi,Yuzdelik,Taksit,ToplamMiktar,id '+
' from Sigorta where Turu=:Turu ' ;


if Trim(TxtNotlar.Text) <> '' then
TmpSql := TmpSql + ' and Notlar like :Notlar ' ;

if chkkayittarihi.checked=True then
TmpSql := TmpSql + ' and Tarih between :TDt1 and :TDt2 ' ;

if ChkBitTarih.Checked = True then
TmpSql := TmpSql + ' and Tarih2 between :TBit1 and :TBit2 ' ;

if ChkBasTarih.Checked = True then
TmpSql := TmpSql + ' and Tarih1 between :TBas1 and :TBas2 ' ;

if ChkMusteri.Checked = True then
TmpSql := TmpSql + ' and Adi like :Adi and Soyadi like :Soyadi ' ;

if CmbKriter.Text = 'Plaka No' then
TmpSql := TmpSql + ' and PlakaNumarasi=:PlakaNumarasi ' ;

if CmbKriter.Text = 'Müþteri No' then
TmpSql := TmpSql + ' and MusteriNo=:MusteriNo ' ;

if CmbKriter.Text = 'Poliçe No' then
TmpSql := TmpSql + ' and PoliceNo=:PoliceNo ' ;

if RbBorcuOlanlar.Checked = True Then
TmpSql := TmpSql + ' and Bakiye<0 ' ;
if RbAcenteOdenen.Checked = True Then
TmpSql := TmpSql + ' and Bakiye>=0 ' ;

if ChkMakbuzNo.checked=True then
TmpSql := TmpSql + ' and id in (SELECT o.sigortaid FROM SigortaOdeme  AS o WHERE o.MakbuzNo like :MakbuzNo )  ' ;

if ChkOdemeAciklama.checked=True then
TmpSql := TmpSql + ' and id in (SELECT o.sigortaid FROM SigortaOdeme  AS o WHERE o.aciklama like :odemeaciklama )  ' ;



TmpSql := TmpSql + ' order by Tarih1 desc ' ;


Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Turu').Value   := TmpTur;

if Trim(TxtNotlar.Text) <> '' then
Qry1.Parameters.ParamByName('Notlar').Value := '%'+TxtNotlar.Text+'%';

if chkkayittarihi.checked=True then begin
Qry1.Parameters.ParamByName('TDt1').Value :=
IntToStr(YearOf(DtKayit1.Date))+'-'+IntToStr(MonthOf(DtKayit1.Date))+'-'+IntToStr(DayOf(DtKayit1.Date));

Qry1.Parameters.ParamByName('TDt2').Value :=
IntToStr(YearOf(DtKayit2.Date))+'-'+IntToStr(MonthOf(DtKayit2.Date))+'-'+IntToStr(DayOf(DtKayit2.Date));
end;



if ChkBitTarih.Checked = True then begin
Qry1.Parameters.ParamByName('TBit1').Value :=
IntToStr(YearOf(DtBit1.Date))+'-'+IntToStr(MonthOf(DtBit1.Date))+'-'+IntToStr(DayOf(DtBit1.Date));

Qry1.Parameters.ParamByName('TBit2').Value :=
IntToStr(YearOf(DtBit2.Date))+'-'+IntToStr(MonthOf(DtBit2.Date))+'-'+IntToStr(DayOf(DtBit2.Date));
end;

if ChkBasTarih.Checked = True then begin
Qry1.Parameters.ParamByName('TBas1').Value :=
IntToStr(YearOf(DtBas1.Date))+'-'+IntToStr(MonthOf(DtBas1.Date))+'-'+IntToStr(DayOf(DtBas1.Date));

Qry1.Parameters.ParamByName('TBas2').Value :=
IntToStr(YearOf(DtBas2.Date))+'-'+IntToStr(MonthOf(DtBas2.Date))+'-'+IntToStr(DayOf(DtBas2.Date));
end;

if ChkMusteri.Checked = True then begin
Qry1.Parameters.ParamByName('Adi').Value    := CmbAdi.Text+'%';
Qry1.Parameters.ParamByName('Soyadi').Value := CmbSoyadi.Text+'%';
end;

if CmbKriter.Text = 'Plaka No' then
Qry1.Parameters.ParamByName('PlakaNumarasi').Value := TxtKriter.Text;

if CmbKriter.Text = 'Müþteri No' then
Qry1.Parameters.ParamByName('MusteriNo').Value := TxtKriter.Text;

if CmbKriter.Text = 'Poliçe No' then
Qry1.Parameters.ParamByName('PoliceNo').Value := TxtKriter.Text;

if ChkMakbuzNo.checked=True then
Qry1.Parameters.ParamByName('MakbuzNo').Value   := TxtMakbuzNo.text+'%'  ;

if ChkOdemeAciklama.checked=True then
Qry1.Parameters.ParamByName('odemeaciklama').Value   := '%'+txtodemeaciklama.text+'%'  ;


Qry1.Prepared:=True;
Qry1.Open;

if Qry1.RecordCount <> 0 Then TmpListe.RowCount := Qry1.RecordCount + 1 ;

For  i:=1 to Qry1.RecordCount do begin
TmpListe.Cells[1,i]  :=  Qry1.FieldByName('Adi').AsString  ;
TmpListe.Cells[2,i]  :=  Qry1.FieldByName('Soyadi').AsString  ;
TmpListe.Cells[3,i]  :=  Qry1.FieldByName('CepTel2').AsString  ;
TmpListe.Cells[4,i]  :=  Qry1.FieldByName('PoliceNo').AsString  ;
TmpListe.Cells[5,i]  :=  Qry1.FieldByName('Tarih').AsString     ;
TmpListe.Cells[6,i]  :=  Qry1.FieldByName('Tarih1').AsString    ;
TmpListe.Cells[7,i]  :=  Qry1.FieldByName('Tarih2').AsString    ;
TmpListe.Cells[8,i]  :=  Qry1.FieldByName('Sifati').AsString   ;
TmpListe.Cells[9,i]  :=  Qry1.FieldByName('TanzimTarihi').AsString  ;
TmpListe.Cells[10,i] :=  Qry1.FieldByName('Taksit').AsString    ;
TmpListe.Cells[11,i] :=  Qry1.FieldByName('ToplamMiktar').AsString  ;
Toplam := Toplam + Qry1.FieldByName('ToplamMiktar').AsCurrency  ;

TmpListe.Cells[12,i] := FormatFloat('#,##0.00',Qry1.FieldByName('Bakiye').AsCurrency);
TmpListe.Colors[12,i]:=clYellow;

TmpListe.Cells[13,i] :=  Qry1.FieldByName('Notlar').AsString ;

TmpListe.Cells[14,i] :=  Qry1.FieldByName('id').AsString  ;

Qry1.Next;
end;

TmpListe.AutoNumberCol(0);

if TmpTur='SEYAHAT SÝGORTASI' then begin
CurrSeyahat.Value := Toplam ;
SeyahatSigortasi.Tag := 1;
end;

if TmpTur='EV SÝGORTASI' then begin
CurrEv.Value := Toplam ;
EvSigortasi.Tag := 1;
end;

if TmpTur='ÝÞYERÝ SÝGORTASI' then begin
CurrisYeri.Value := Toplam ;
isYeriSigortasi.Tag := 1;
end;



end;



procedure TFrmSigortalar.SigortaGetir(Tmpid: String;TmpTur:String);
Var TmpSql:String;
i:integer;
TmpBakiye:Currency;
begin
{
if  assigned(FrmSigortaislemleri) then begin
if (FrmSigortaislemleri.WindowState = wsMinimized ) Then FrmSigortaislemleri.WindowState := wsNormal  ;
FrmSigortaislemleri.BringToFront;
exit;
end;

}
FrmSigortaislemleri:=TFrmSigortaislemleri.Create(Self);

TmpSql := 'Select '+
'Adi,Soyadi,CepTel,Adres,Turu,ParaBirimi,PoliceNo,Tarih1,Tarih2,Saat1,Saat2,Yuzdelik,'+
'Taksit,ToplamMiktar,sigortasuresi,MusteriNo,Notlar,YenilemeNo,CepTel2,ToplamMiktar,id ';

if TmpTur='TekneSigortasi' then begin
TmpSql := TmpSql + ',TxtTekneModeli,CurrTekneDegeri,CmbTeknePAraBirimi,TAdi,TSoyadi,'+
'TKimlikNo,TDogumTarihi,TTekneAdi,TMotorGucu,TTekneUzunlugu,TTekneGeniisligi,'+
'TKayitLiman,TSuanKayitLiman,TBayrak ' ;
end;

if TmpTur='SaglikSigortasi' then begin
TmpSql := TmpSql + ' ,PaketTuru,KisiSayisi,DTDogumTarihi ';
end;

if (TmpTur='KaskoSigortasi') or (TmpTur='TrafikSigortasi') then begin
TmpSql := TmpSql + ' ,PlakaNumarasi,imalYili,ModelNo,Markasi,ArabaninDegeri,ArabaDegerParabirim,'+
'MotorNo,SasiNo,Renk,MotorGucu';
end;

if (TmpTur='FerdiKazaSigortasi') or (TmpTur='SeyahatSigortasi') then begin
TmpSql := TmpSql + ',Txtisim,Dogum2,TxtSoyisim,CurrTeminatDegeri,FkKimlikNo,FkPassportNo,'+
'FkUyruk,FkParaBirimi,FkAdres ';
end;

if (TmpTur='EvSigortasi') or (TmpTur='isYeriSigortasi') then begin
TmpSql := TmpSql + ',TanzimTarihi,Sifati,EvisAdi,EvisSoyadi,EvisKimlikNo,EvisBinaDegeri,EvisDemirbasDegeri,'+
'EvisElektronikDegeri,EvisCamKirilmasiDegeri,EvisAdres,EvisisyeriAdi,EvisEmteaDegeri,'+
'EvisDepremDegeri,EvisKagir,EvisTur ';
end;

if TmpTur='Diger' then begin
TmpSql := TmpSql + ',DigerAdi,DigerSoyadi,DigerKimlikNo,DigerSigortaTuru ';
end;

if TmpTur='AnadoluHayat' then begin
TmpSql := TmpSql + ',SigortaTuru2,DTDogum,Cinsiyet,OdenecekPrim,ParaBirimi2,SigortaEttiren,SigortaliAdi,'+
'SigortaliSoyadi,AHAdres,KacYilParaAlacak';
end;

TmpSql := TmpSql + ' from Sigorta where id=:id ' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('id').Value :=Tmpid;
Qry1.Prepared:=True;
Qry1.Open;

FrmSigortaislemleri.CmbAdi.Items.Add(Qry1.FieldByName('Adi').AsString);
FrmSigortaislemleri.CmbAdi.ItemIndex := 0;

FrmSigortaislemleri.CmbSoyadi.Items.Add(Qry1.FieldByName('Soyadi').AsString);
FrmSigortaislemleri.CmbSoyadi.ItemIndex := 0;

FrmSigortaislemleri.CmbCepTel1.Items.Add(Qry1.FieldByName('CepTel').AsString);
FrmSigortaislemleri.CmbCepTel1.ItemIndex := 0;

FrmSigortaislemleri.CmbAdres.Items.Add(Qry1.FieldByName('Adres').AsString);
FrmSigortaislemleri.CmbAdres.ItemIndex := 0;


FrmSigortaislemleri.CmbSigortaTuru.ItemIndex := FrmSigortaislemleri.CmbSigortaTuru.Items.IndexOf(Qry1.FieldByName('Turu').AsString)      ;
FrmSigortaislemleri.CmbParaBirimi.ItemIndex  := FrmSigortaislemleri.CmbParaBirimi.Items.IndexOf(Qry1.FieldByName('ParaBirimi').AsString) ;
FrmSigortaislemleri.CmbParaBirimi.Enabled := False;
FrmSigortaislemleri.TurGetir;
FrmSigortaislemleri.TxtPoliceNo.Text     := Qry1.FieldByName('PoliceNo').AsString   ;
FrmSigortaislemleri.DtTrafik1.Date       := Qry1.FieldByName('Tarih1').AsDateTime   ;
FrmSigortaislemleri.DtTrafik1.Date       := Qry1.FieldByName('Tarih1').AsDateTime   ;
FrmSigortaislemleri.DtTrafik2.Date       := Qry1.FieldByName('Tarih2').AsDateTime   ;
FrmSigortaislemleri.DtsTrafik1.Date      := Qry1.FieldByName('Saat1').AsDateTime    ;
FrmSigortaislemleri.DtsTrafik2.Date      := Qry1.FieldByName('Saat2').AsDateTime    ;
FrmSigortaislemleri.CurrYuzdelik.Value     := Qry1.FieldByName('Yuzdelik').AsCurrency      ;
FrmSigortaislemleri.CurrTaksit.Value       := Qry1.FieldByName('Taksit').AsCurrency        ;
FrmSigortaislemleri.CurrToplamMiktar.Value := Qry1.FieldByName('ToplamMiktar').AsCurrency  ;
FrmSigortaislemleri.CurrSigortaSuresi.Value     := Qry1.FieldByName('sigortasuresi').AsCurrency  ;
FrmSigortaislemleri.TxtMusteriNo.Text  := Qry1.FieldByName('MusteriNo').AsString ;
FrmSigortaislemleri.MemNotlar.Text     := Qry1.FieldByName('Notlar').AsString  ;
FrmSigortaislemleri.TxtYenilemeNo.Text := Qry1.FieldByName('YenilemeNo').AsString  ;
FrmSigortaislemleri.TxtCepTel2.Text                  := Qry1.FieldByName('CepTel2').AsString ;

if TmpTur='TekneSigortasi' then begin
FrmSigortaislemleri.TxtTekneModeli.Text     := Qry1.FieldByName('TxtTekneModeli').AsString  ;
FrmSigortaislemleri.CurrTekneDegeri.Value   := Qry1.FieldByName('CurrTekneDegeri').AsCurrency  ;
FrmSigortaislemleri.CmbTeknePAraBirimi.Text := Qry1.FieldByName('CmbTeknePAraBirimi').AsString  ;
FrmSigortaislemleri.TxtTAdi.Text            := Qry1.FieldByName('TAdi').AsString ;
FrmSigortaislemleri.TxtTSoyadi.Text         := Qry1.FieldByName('TSoyadi').AsString ;
FrmSigortaislemleri.TxtTKimlikNo.Text                := Qry1.FieldByName('TKimlikNo').AsString                ;
FrmSigortaislemleri.DtTDogumTarihi.Date     := Qry1.FieldByName('TDogumTarihi').AsDateTime  ;
FrmSigortaislemleri.TxtTTekneAdi.Text                := Qry1.FieldByName('TTekneAdi').AsString                ;
FrmSigortaislemleri.TxtTMotorGucu.Text               := Qry1.FieldByName('TMotorGucu').AsString               ;
FrmSigortaislemleri.TxtTTekneUzunlugu.Text           := Qry1.FieldByName('TTekneUzunlugu').AsString           ;
FrmSigortaislemleri.TxtTTekneGeniisligi.Text         := Qry1.FieldByName('TTekneGeniisligi').AsString         ;
FrmSigortaislemleri.TxtTKayitLiman.Text              := Qry1.FieldByName('TKayitLiman').AsString              ;
FrmSigortaislemleri.TxtTSuanKayitLiman.Text          := Qry1.FieldByName('TSuanKayitLiman').AsString          ;
FrmSigortaislemleri.TxtTBayrak.Text                  := Qry1.FieldByName('TBayrak').AsString                  ;
end;


if TmpTur='SaglikSigortasi' then begin
FrmSigortaislemleri.CmbPaketTuru.Text       := Qry1.FieldByName('PaketTuru').AsString  ;
FrmSigortaislemleri.CurrKisiSayisi.Value    := Qry1.FieldByName('KisiSayisi').AsCurrency  ;
FrmSigortaislemleri.DTDogumTarihi.DateTime  := Qry1.FieldByName('DTDogumTarihi').AsDateTime  ;

////////////////////////////////
FrmSigortaislemleri.AdvKisiler.ClearRows(1,FrmSigortaislemleri.AdvKisiler.RowCount);

TmpSql := 'Select * from SaglikSigortaKisiListesi where Sigortaid=:Sigortaid  ' ;
Qry2.Close;
Qry2.SQL.Clear;
Qry2.SQL.Add(TmpSql);
Qry2.Parameters.ParamByName('Sigortaid').Value := FrmSigortaislemleri.CmbAdi.Tag ;
Qry2.Prepared:=True;
Qry2.Open;

if Qry2.RecordCount<>0 Then FrmSigortaislemleri.AdvKisiler.RowCount := Qry2.RecordCount+1;

for i:=1 to Qry1.RecordCount do begin
FrmSigortaislemleri.AdvKisiler.Cells[0,i] := Qry1.FieldByName('Turu').AsString ;
FrmSigortaislemleri.AdvKisiler.Cells[1,i] := Qry1.FieldByName('Adi').AsString ;
FrmSigortaislemleri.AdvKisiler.Cells[2,i] := Qry1.FieldByName('Soyadi').AsString ;
Qry2.Next;
end;
//////////////////////////////////////////////////

end;

if (TmpTur='KaskoSigortasi') or (TmpTur='TrafikSigortasi') then begin
FrmSigortaislemleri.TxtTrafikPlaka.Text         := Qry1.FieldByName('PlakaNumarasi').AsString ;
FrmSigortaislemleri.CmbTrafikimalyili.text      := Qry1.FieldByName('imalYili').AsString ;
FrmSigortaislemleri.TxtTrafikModelNo.Text       := Qry1.FieldByName('ModelNo').AsString ;
FrmSigortaislemleri.TxtMarka.Text               := Qry1.FieldByName('Markasi').AsString       ;
FrmSigortaislemleri.CurrArabaDeger.Value        := Qry1.FieldByName('ArabaninDegeri').AsCurrency  ;
FrmSigortaislemleri.CmbArabaDegerParaBirim.Text := Qry1.FieldByName('ArabaDegerParabirim').AsString  ;
FrmSigortaislemleri.TxtMotorNo.Text             := Qry1.FieldByName('MotorNo').AsString ;
FrmSigortaislemleri.TxtSasiNo.Text              := Qry1.FieldByName('SasiNo').AsString ;
FrmSigortaislemleri.TxtRenk.Text                := Qry1.FieldByName('Renk').AsString ;
FrmSigortaislemleri.TxtMotorGucu.Text           := Qry1.FieldByName('MotorGucu').AsString ;
end;


if (TmpTur='FerdiKazaSigortasi') or (TmpTur='SeyahatSigortasi') then begin
FrmSigortaislemleri.Txtisim.Text            := Qry1.FieldByName('Txtisim').AsString  ;
FrmSigortaislemleri.DtDogum2.DateTime       := Qry1.FieldByName('Dogum2').AsDateTime  ;
FrmSigortaislemleri.TxtSoyisim.Text         := Qry1.FieldByName('TxtSoyisim').AsString  ;
FrmSigortaislemleri.CurrTeminatDegeri.Value := Qry1.FieldByName('CurrTeminatDegeri').AsCurrency  ;
FrmSigortaislemleri.TxtFkKimlikNo.Text      := Qry1.FieldByName('FkKimlikNo').AsString               ;
FrmSigortaislemleri.TxtFkPassportNo.Text    := Qry1.FieldByName('FkPassportNo').AsString             ;
FrmSigortaislemleri.TxtFkUyruk.Text         := Qry1.FieldByName('FkUyruk').AsString                  ;
FrmSigortaislemleri.CmbFkParaBirimi.Text    := Qry1.FieldByName('FkParaBirimi').AsString             ;
FrmSigortaislemleri.MemFkAdres.Text         := Qry1.FieldByName('FkAdres').AsString                  ;
end;

if (TmpTur='EvSigortasi') or (TmpTur='isYeriSigortasi') then begin
FrmSigortaislemleri.DtTanzim.Date                    := Qry1.FieldByName('TanzimTarihi').AsDateTime           ;
FrmSigortaislemleri.CmbSifati.Text                   := Qry1.FieldByName('Sifati').AsString                   ;
FrmSigortaislemleri.TxtEvisAdi.Text                  := Qry1.FieldByName('EvisAdi').AsString                  ;
FrmSigortaislemleri.TxtEvisSoyadi.Text               := Qry1.FieldByName('EvisSoyadi').AsString               ;
FrmSigortaislemleri.TxtEvisKimlikNo.Text             := Qry1.FieldByName('EvisKimlikNo').AsString             ;
FrmSigortaislemleri.CurrEvisBinaDegeri.Value         := Qry1.FieldByName('EvisBinaDegeri').AsCurrency         ;
FrmSigortaislemleri.CurrEvisDemirbasDegeri.Value     := Qry1.FieldByName('EvisDemirbasDegeri').AsCurrency     ;
FrmSigortaislemleri.CurrEvisElektronikDegeri.Value   := Qry1.FieldByName('EvisElektronikDegeri').AsCurrency   ;
FrmSigortaislemleri.CurrEvisCamKirilmasiDegeri.Value := Qry1.FieldByName('EvisCamKirilmasiDegeri').AsCurrency ;
FrmSigortaislemleri.MemEvisAdres.Text                := Qry1.FieldByName('EvisAdres').AsString                ;
FrmSigortaislemleri.TxtEvisisyeriAdi.Text            := Qry1.FieldByName('EvisisyeriAdi').AsString            ;
FrmSigortaislemleri.CurrEvisEmteaDegeri.Value        := Qry1.FieldByName('EvisEmteaDegeri').AsCurrency        ;
FrmSigortaislemleri.CurrEvisDepremDegeri.Value       := Qry1.FieldByName('EvisDepremDegeri').AsCurrency       ;
FrmSigortaislemleri.CmbEvisKagir.Text                := Qry1.FieldByName('EvisKagir').AsString                ;
FrmSigortaislemleri.CmbEvisTur.Text                  := Qry1.FieldByName('EvisTur').AsString                  ;
end;

if TmpTur='Diger' then begin
FrmSigortaislemleri.TxtDigerAdi.Text         := Qry1.FieldByName('DigerAdi').AsString         ;
FrmSigortaislemleri.TxtDigerSoyadi.Text      := Qry1.FieldByName('DigerSoyadi').AsString      ;
FrmSigortaislemleri.TxtDigerKimlikNo.Text    := Qry1.FieldByName('DigerKimlikNo').AsString    ;
FrmSigortaislemleri.TxtDigerSigortaTuru.Text := Qry1.FieldByName('DigerSigortaTuru').AsString ;
end;

if TmpTur='AnadoluHayat' then begin
FrmSigortaislemleri.CmbSigortaTuru2.Text       := Qry1.FieldByName('SigortaTuru2').AsString  ;
FrmSigortaislemleri.DtDogum.DateTime           := Qry1.FieldByName('DTDogum').AsDateTime  ;
FrmSigortaislemleri.CmbCinsiyet.Text           := Qry1.FieldByName('Cinsiyet').AsString  ;
FrmSigortaislemleri.CurrOdenecekPrim.Value     := Qry1.FieldByName('OdenecekPrim').AsCurrency  ;
FrmSigortaislemleri.CmbParaBirimi2.Text        := Qry1.FieldByName('ParaBirimi2').AsString  ;
FrmSigortaislemleri.TxtSigortaEttiren.Text     := Qry1.FieldByName('SigortaEttiren').AsString     ;
FrmSigortaislemleri.TxtSigortaliAdi.Text       := Qry1.FieldByName('SigortaliAdi').AsString       ;
FrmSigortaislemleri.TxtSigortaliSoyadi.Text    := Qry1.FieldByName('SigortaliSoyadi').AsString    ;
FrmSigortaislemleri.MemAhAdres.Text            := Qry1.FieldByName('AHAdres').AsString            ;
FrmSigortaislemleri.CurrKacYilParaAlacak.Value := Qry1.FieldByName('KacYilParaAlacak').AsCurrency ;
end;


FrmSigortaislemleri.CmbAdi.Tag := Qry1.FieldByName('id').AsInteger  ;

////////////////////////////////
FrmSigortaislemleri.AdvListe.ClearRows(1,FrmSigortaislemleri.AdvListe.RowCount);
FrmSigortaislemleri.CurrGenelToplam.Value := Qry1.FieldByName('ToplamMiktar').AsCurrency  ;

TmpSql := 'Select TaksitNo, '+
' CASE   WHEN Tarih=Null THEN  '' '' ELSE Tarih END AS tarih  ,'+
' Miktar from SigortaTaksit where Sigortaid=:Sigortaid  order by TaksitNo ' ;
Qry2.Close;
Qry2.SQL.Clear;
Qry2.SQL.Add(TmpSql);
Qry2.Parameters.ParamByName('Sigortaid').Value := FrmSigortaislemleri.CmbAdi.Tag ;
Qry2.Prepared;
Qry2.Open;





if Qry2.RecordCount<>0 Then FrmSigortaislemleri.AdvListe.RowCount := Qry2.RecordCount+1;

for i:=1 to Qry2.RecordCount do begin
FrmSigortaislemleri.AdvListe.Cells[0,i] := Qry2.FieldByName('TaksitNo').AsString ;
FrmSigortaislemleri.AdvListe.Cells[1,i] := Qry2.FieldByName('Tarih').asstring ;
FrmSigortaislemleri.AdvListe.Cells[2,i] := Qry2.FieldByName('Miktar').AsString ;
Qry2.Next;
end;
//////////////////////////////////////////////////

FrmSigortaislemleri.HesapGetir;
FrmSigortaislemleri.BtnKaydet.Enabled   := False ;
FrmSigortaislemleri.BtnGuncelle.Enabled := True;
FrmSigortaislemleri.BtnSil.Enabled      := True ;
FrmSigortaislemleri.Show;
end;

procedure TFrmSigortalar.TekneSigortasiGetir(TmpListe: TAdvStringGrid;
  TmpTur: String);
Var TmpSql:String;
i:integer;
Toplam:Currency;
begin

Toplam:=0;
TmpListe.ClearRows(1,TmpListe.RowCount-1);
TmpListe.RowCount := 2;

TmpSql := 'Select Bakiye,Notlar,Adi,Soyadi,CepTel2,PoliceNo,Tarih,Tarih1,Tarih2,TAdi,TSoyadi,Yuzdelik,Taksit,ToplamMiktar,id '+
' from Sigorta where Turu=:Turu ' ;

if Trim(TxtNotlar.Text) <> '' then
TmpSql := TmpSql + ' and Notlar like :Notlar ' ;



if chkkayittarihi.checked=True then
TmpSql := TmpSql + ' and Tarih between :TDt1 and :TDt2 ' ;

if ChkBitTarih.Checked = True then
TmpSql := TmpSql + ' and Tarih2 between :TBit1 and :TBit2 ' ;

if ChkBasTarih.Checked = True then
TmpSql := TmpSql + ' and Tarih1 between :TBas1 and :TBas2 ' ;

if ChkMusteri.Checked = True then
TmpSql := TmpSql + ' and Adi like :Adi and Soyadi like :Soyadi ' ;

if CmbKriter.Text = 'Plaka No' then
TmpSql := TmpSql + ' and PlakaNumarasi=:PlakaNumarasi ' ;

if CmbKriter.Text = 'Müþteri No' then
TmpSql := TmpSql + ' and MusteriNo=:MusteriNo ' ;

if CmbKriter.Text = 'Poliçe No' then
TmpSql := TmpSql + ' and PoliceNo=:PoliceNo ' ;

if RbBorcuOlanlar.Checked = True Then
TmpSql := TmpSql + ' and Bakiye<0 ' ;
if RbAcenteOdenen.Checked = True Then
TmpSql := TmpSql + ' and Bakiye>=0 ' ;

if ChkMakbuzNo.checked=True then
TmpSql := TmpSql + ' and id in (SELECT o.sigortaid FROM SigortaOdeme  AS o WHERE o.MakbuzNo like :MakbuzNo )  ' ;

if ChkOdemeAciklama.checked=True then
TmpSql := TmpSql + ' and id in (SELECT o.sigortaid FROM SigortaOdeme  AS o WHERE o.aciklama like :odemeaciklama )  ' ;



TmpSql := TmpSql + ' order by Tarih1 desc ' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Turu').Value   := TmpTur;


if Trim(TxtNotlar.Text) <> '' then
Qry1.Parameters.ParamByName('Notlar').Value := '%'+TxtNotlar.Text+'%';

if chkkayittarihi.checked=True then begin
Qry1.Parameters.ParamByName('TDt1').Value :=
IntToStr(YearOf(DtKayit1.Date))+'-'+IntToStr(MonthOf(DtKayit1.Date))+'-'+IntToStr(DayOf(DtKayit1.Date));

Qry1.Parameters.ParamByName('TDt2').Value :=
IntToStr(YearOf(DtKayit2.Date))+'-'+IntToStr(MonthOf(DtKayit2.Date))+'-'+IntToStr(DayOf(DtKayit2.Date));
end;


if ChkBitTarih.Checked = True then begin
Qry1.Parameters.ParamByName('TBit1').Value :=
IntToStr(YearOf(DtBit1.Date))+'-'+IntToStr(MonthOf(DtBit1.Date))+'-'+IntToStr(DayOf(DtBit1.Date));

Qry1.Parameters.ParamByName('TBit2').Value :=
IntToStr(YearOf(DtBit2.Date))+'-'+IntToStr(MonthOf(DtBit2.Date))+'-'+IntToStr(DayOf(DtBit2.Date));
end;


if ChkBasTarih.Checked = True then begin
Qry1.Parameters.ParamByName('TBas1').Value :=
IntToStr(YearOf(DtBas1.Date))+'-'+IntToStr(MonthOf(DtBas1.Date))+'-'+IntToStr(DayOf(DtBas1.Date));

Qry1.Parameters.ParamByName('TBas2').Value :=
IntToStr(YearOf(DtBas2.Date))+'-'+IntToStr(MonthOf(DtBas2.Date))+'-'+IntToStr(DayOf(DtBas2.Date));
end;

if ChkMusteri.Checked = True then begin
Qry1.Parameters.ParamByName('Adi').Value    := CmbAdi.Text+'%';
Qry1.Parameters.ParamByName('Soyadi').Value := CmbSoyadi.Text+'%';
end;

if CmbKriter.Text = 'Plaka No' then
Qry1.Parameters.ParamByName('PlakaNumarasi').Value := TxtKriter.Text;

if CmbKriter.Text = 'Müþteri No' then
Qry1.Parameters.ParamByName('MusteriNo').Value := TxtKriter.Text;

if CmbKriter.Text = 'Poliçe No' then
Qry1.Parameters.ParamByName('PoliceNo').Value := TxtKriter.Text;




if ChkMakbuzNo.checked=True then
Qry1.Parameters.ParamByName('MakbuzNo').Value   := TxtMakbuzNo.text+'%'  ;

if ChkOdemeAciklama.checked=True then
Qry1.Parameters.ParamByName('odemeaciklama').Value   := '%'+txtodemeaciklama.text+'%'  ;


Qry1.Prepared:=True;
Qry1.Open;

if Qry1.RecordCount <> 0 Then TmpListe.RowCount := Qry1.RecordCount + 1 ;

For  i:=1 to Qry1.RecordCount do begin
TmpListe.Cells[1,i]  :=  Qry1.FieldByName('Adi').AsString  ;
TmpListe.Cells[2,i]  :=  Qry1.FieldByName('Soyadi').AsString  ;
TmpListe.Cells[3,i]  :=  Qry1.FieldByName('CepTel2').AsString  ;
TmpListe.Cells[4,i]  :=  Qry1.FieldByName('PoliceNo').AsString  ;
TmpListe.Cells[5,i]  :=  Qry1.FieldByName('Tarih').AsString     ;
TmpListe.Cells[6,i]  :=  Qry1.FieldByName('Tarih1').AsString    ;
TmpListe.Cells[7,i]  :=  Qry1.FieldByName('Tarih2').AsString    ;
TmpListe.Cells[8,i]  :=  Qry1.FieldByName('TAdi').AsString   ;
TmpListe.Cells[9,i]  :=  Qry1.FieldByName('TSoyadi').AsString  ;
TmpListe.Cells[10,i] :=  Qry1.FieldByName('Taksit').AsString    ;
TmpListe.Cells[11,i] :=  Qry1.FieldByName('ToplamMiktar').AsString  ;
Toplam := Toplam + Qry1.FieldByName('ToplamMiktar').AsCurrency  ;

TmpListe.Cells[12,i] := FormatFloat('#,##0.00',Qry1.FieldByName('Bakiye').AsCurrency);
TmpListe.Colors[12,i]:=clYellow;

TmpListe.Cells[13,i] := Qry1.FieldByName('Notlar').AsString ;

TmpListe.Cells[14,i] := Qry1.FieldByName('id').AsString  ;

Qry1.Next;
end;

TmpListe.AutoNumberCol(0);

CurrTekne.Value := Toplam ;
TekneSigortasi.Tag := 1;

end;
procedure TFrmSigortalar.TrafikKaskoGetir(TmpListe:TAdvStringGrid;TmpTur:String);
Var TmpSql:String;
i:integer;
Toplam:Currency;
begin
Toplam:=0;

TmpListe.ClearRows(1,TmpListe.RowCount-1);
TmpListe.RowCount := 2;

TmpSql := 'Select Bakiye,Notlar,Adi,Soyadi,CepTel2,PoliceNo,Tarih,Tarih1,Tarih2,PlakaNumarasi,'+
'Markasi,SasiNo,ModelNo,imalYili,Sifati,Taksit,ToplamMiktar,id '+
' from Sigorta where Turu=:Turu  ' ;

if Trim(TxtNotlar.Text) <> '' then
TmpSql := TmpSql + ' and Notlar like :Notlar ' ;

if chkkayittarihi.checked=True then
TmpSql := TmpSql + ' and Tarih between :TDt1 and :TDt2 ' ;

if ChkBitTarih.Checked = True then
TmpSql := TmpSql + ' and Tarih2 between :TBit1 and :TBit2 ' ;

if ChkBasTarih.Checked = True then
TmpSql := TmpSql + ' and Tarih1 between :TBas1 and :TBas2 ' ;

if ChkMusteri.Checked = True then
TmpSql := TmpSql + ' and Adi like :Adi and Soyadi like :Soyadi ' ;

if CmbKriter.Text = 'Plaka No' then
TmpSql := TmpSql + ' and PlakaNumarasi=:PlakaNumarasi ' ;

if CmbKriter.Text = 'Müþteri No' then
TmpSql := TmpSql + ' and MusteriNo=:MusteriNo ' ;

if CmbKriter.Text = 'Poliçe No' then
TmpSql := TmpSql + ' and PoliceNo=:PoliceNo ' ;

if RbBorcuOlanlar.Checked = True Then
TmpSql := TmpSql + ' and Bakiye<0 ' ;
if RbAcenteOdenen.Checked = True Then
TmpSql := TmpSql + ' and Bakiye>=0 ' ;



if ChkMakbuzNo.checked=True then
TmpSql := TmpSql + ' and id in (SELECT o.sigortaid FROM SigortaOdeme  AS o WHERE o.MakbuzNo like :MakbuzNo )  ' ;

if ChkOdemeAciklama.checked=True then
TmpSql := TmpSql + ' and id in (SELECT o.sigortaid FROM SigortaOdeme  AS o WHERE o.aciklama like :odemeaciklama )  ' ;

TmpSql := TmpSql + ' order by Tarih1 desc ' ;




Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Turu').Value   := TmpTur;


if chkkayittarihi.checked=True then  begin
Qry1.Parameters.ParamByName('TDt1').Value :=
IntToStr(YearOf(DtKayit1.Date))+'-'+IntToStr(MonthOf(DtKayit1.Date))+'-'+IntToStr(DayOf(DtKayit1.Date));

Qry1.Parameters.ParamByName('TDt2').Value :=
IntToStr(YearOf(DtKayit2.Date))+'-'+IntToStr(MonthOf(DtKayit2.Date))+'-'+IntToStr(DayOf(DtKayit2.Date));
end;


if Trim(TxtNotlar.Text) <> '' then
Qry1.Parameters.ParamByName('Notlar').Value := '%'+TxtNotlar.Text+'%';


if ChkMusteri.Checked = True then begin
Qry1.Parameters.ParamByName('Adi').Value    := CmbAdi.Text+'%';
Qry1.Parameters.ParamByName('Soyadi').Value := CmbSoyadi.Text+'%';
end;

if ChkBitTarih.Checked = True then begin
Qry1.Parameters.ParamByName('TBit1').Value :=
IntToStr(YearOf(DtBit1.Date))+'-'+IntToStr(MonthOf(DtBit1.Date))+'-'+IntToStr(DayOf(DtBit1.Date));

Qry1.Parameters.ParamByName('TBit2').Value :=
IntToStr(YearOf(DtBit2.Date))+'-'+IntToStr(MonthOf(DtBit2.Date))+'-'+IntToStr(DayOf(DtBit2.Date));
end;


if ChkBasTarih.Checked = True then begin
Qry1.Parameters.ParamByName('TBas1').Value :=
IntToStr(YearOf(DtBas1.Date))+'-'+IntToStr(MonthOf(DtBas1.Date))+'-'+IntToStr(DayOf(DtBas1.Date));

Qry1.Parameters.ParamByName('TBas2').Value :=
IntToStr(YearOf(DtBas2.Date))+'-'+IntToStr(MonthOf(DtBas2.Date))+'-'+IntToStr(DayOf(DtBas2.Date));
end;

if CmbKriter.Text = 'Plaka No' then
Qry1.Parameters.ParamByName('PlakaNumarasi').Value := TxtKriter.Text;

if CmbKriter.Text = 'Müþteri No' then
Qry1.Parameters.ParamByName('MusteriNo').Value := TxtKriter.Text;

if CmbKriter.Text = 'Poliçe No' then
Qry1.Parameters.ParamByName('PoliceNo').Value := TxtKriter.Text;

if ChkMakbuzNo.checked=True then
Qry1.Parameters.ParamByName('MakbuzNo').Value   := TxtMakbuzNo.text+'%'  ;

if ChkOdemeAciklama.checked=True then
Qry1.Parameters.ParamByName('odemeaciklama').Value   := '%'+txtodemeaciklama.text+'%'  ;

Qry1.Prepared:=True;
Qry1.Open;

if Qry1.RecordCount <> 0 Then TmpListe.RowCount := Qry1.RecordCount + 1 ;

For  i:=1 to Qry1.RecordCount do begin
TmpListe.Cells[1,i]  :=  Qry1.FieldByName('Adi').AsString  ;
TmpListe.Cells[2,i]  :=  Qry1.FieldByName('Soyadi').AsString  ;
TmpListe.Cells[3,i]  :=  Qry1.FieldByName('CepTel2').AsString  ;
TmpListe.Cells[4,i]  :=  Qry1.FieldByName('PoliceNo').AsString  ;
TmpListe.Cells[5,i]  :=  Qry1.FieldByName('Tarih').AsString     ;
TmpListe.Cells[6,i]  :=  Qry1.FieldByName('Tarih1').AsString    ;
TmpListe.Cells[7,i]  :=  Qry1.FieldByName('Tarih2').AsString    ;
TmpListe.Cells[8,i]  :=  Qry1.FieldByName('PlakaNumarasi').AsString ;
TmpListe.Cells[9,i]  :=  Qry1.FieldByName('Markasi').AsString   ;
TmpListe.Cells[10,i] :=  Qry1.FieldByName('ModelNo').AsString   ;
TmpListe.Cells[11,i] :=  Qry1.FieldByName('imalYili').AsString  ;
TmpListe.Cells[12,i] :=  Qry1.FieldByName('Taksit').AsString    ;
TmpListe.Cells[13,i] :=  Qry1.FieldByName('ToplamMiktar').AsString ;

Toplam:=Toplam + Qry1.FieldByName('ToplamMiktar').AsCurrency ;

TmpListe.Cells[14,i] := FormatFloat('#,##0.00',Qry1.FieldByName('Bakiye').AsCurrency);
TmpListe.Colors[14,i]:=clYellow;

TmpListe.Cells[15,i] :=  Qry1.FieldByName('Notlar').AsString ;

TmpListe.Cells[16,i] :=  Qry1.FieldByName('id').AsString  ;

Qry1.Next;
end;

TmpListe.AutoNumberCol(0);

if TmpTur='TRAFÝK SÝGORTASI' then begin
CurrTrafik.Value := Toplam ;
TrafikSigortasi.Tag := 1 ;
end;

if TmpTur='KASKO SÝGORTASI'  then begin
CurrKasko.Value := Toplam ;
KaskoSikortasi.Tag := 1 ;
end;

end;


end.                                                                                        *
