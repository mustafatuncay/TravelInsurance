unit UntKrediKartDetay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvObj, BaseGrid, AdvGrid, StdCtrls, ExtCtrls, DB, ADODB,
  MoneyEdit, asgprev, tmsAdvGridExcel;

type
  TFrmKrediKartDetay = class(TForm)
    Panel1: TPanel;
    lblbaslik: TLabel;
    Panel3: TPanel;
    BtnListele: TButton;
    AdvListe: TAdvStringGrid;
    Qry1: TADOQuery;
    Label10: TLabel;
    CurrToplamFiyat: TMoneyEdit;
    AdvPreview: TAdvPreviewDialog;
    Button15: TButton;
    lblbilgi: TLabel;
    Button1: TButton;
    AdvExcel: TAdvGridExcelIO;
    SaveDialog1: TSaveDialog;
    CurrToplamOdenen: TMoneyEdit;
    Label1: TLabel;
    Label2: TLabel;
    CurrToplamKalan: TMoneyEdit;
    procedure BtnListeleClick(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure AdvListeDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    PubSirket:String;{ Public declarations }
  end;

var
  FrmKrediKartDetay: TFrmKrediKartDetay;

implementation

uses UntGelir;

{$R *.dfm}

procedure TFrmKrediKartDetay.AdvListeDblClick(Sender: TObject);
var TmpSql:String;
begin
FrmGelir:=TFrmGelir.Create(Self);

FrmGelir.BtnBiletKaydet.Enabled :=False ;
FrmGelir.BtnBiletGuncelle.Enabled := True;
FrmGelir.BtnBiletSil.Enabled := True ;

TmpSql := 'Select * from rezervasyon where id=:id';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('id').Value := AdvListe.Cells[10,AdvListe.Row] ;
Qry1.Prepared;
Qry1.Open;

FrmGelir.CmbAdi.Text             := Qry1.FieldByName('MusAdi').AsString;
FrmGelir.CmbSoyadi.Text          := Qry1.FieldByName('MusSoyadi').AsString;
FrmGelir.CmbUrunCesidi.ItemIndex := FrmGelir.CmbUrunCesidi.Items.IndexOf(Qry1.FieldByName('UrunCesidi').AsString);
FrmGelir.TxtNereden.Text         := Qry1.FieldByName('Nereden').AsString;
FrmGelir.TxtNereye.Text          := Qry1.FieldByName('Nereye').AsString;

FrmGelir.CmbKullanilanKart.ItemIndex := FrmGelir.CmbKullanilanKart.Items.IndexOf(Qry1.FieldByName('KullanilanKart').AsString);


if Qry1.FieldByName('Biletiptali').AsString = 'Bilet iptal' Then
FrmGelir.ChkBiletiptali.Checked := True
Else
FrmGelir.ChkBiletiptali.Checked := False ;

FrmGelir.CurrGeriiade.Value   := Qry1.FieldByName('Geriiade').AsCurrency;

if Qry1.FieldByName('NeredenChk').AsString = '1' Then
FrmGelir.ChkNereden.Checked := True
Else
FrmGelir.ChkNereden.Checked := False ;

if Qry1.FieldByName('NereyeChk').AsString = '1' Then
FrmGelir.ChkNereye.Checked := True
Else
FrmGelir.ChkNereye.Checked := False ;

FrmGelir.DtNereden.Date      := Qry1.FieldByName('NeredenTarih').AsDateTime;
FrmGelir.DtNereye.Date       := Qry1.FieldByName('NereyeTarih').AsDateTime;
FrmGelir.CmbCepTel1.Text     := Qry1.FieldByName('MusCepTel1').AsString;
FrmGelir.CmbAdres.Text       := Qry1.FieldByName('MusAdres').AsString;
FrmGelir.CmbSirket.ItemIndex := FrmGelir.CmbSirket.Items.IndexOf(Qry1.FieldByName('Sirket').AsString);

if Qry1.FieldByName('Obsiyon').AsString = 'Var' Then
FrmGelir.ChkObsiyon.Checked := True
Else
FrmGelir.ChkObsiyon.Checked := False ;

if Qry1.FieldByName('Onay').AsString = 'Var' Then
FrmGelir.ChkOnay.Checked := True
Else
FrmGelir.ChkOnay.Checked := False ;

FrmGelir.DtObsTarihi.Date            := Qry1.FieldByName('ObsTarihi').AsDateTime;
FrmGelir.DtObsSaat.Time              := Qry1.FieldByName('ObsSaati').AsDateTime;
FrmGelir.TxtPnr.Text                 := Qry1.FieldByName('Pnr').AsString;
FrmGelir.CurrKullanilanKart.Value    := Qry1.FieldByName('CurrKullanilanKart').AsCurrency;
FrmGelir.CmbHavaDenizYolu.ItemIndex  := FrmGelir.CmbHavaDenizYolu.Items.IndexOf(Qry1.FieldByName('HavaDenizYolu').AsString);
FrmGelir.MemAciklama.Text            := Qry1.FieldByName('aciklama').AsString;
FrmGelir.CurrNetFiyati.Value        := Qry1.FieldByName('NetFiyati').AsCurrency;
FrmGelir.CurrKomisyon.Value         := Qry1.FieldByName('Komisyon').AsCurrency;
FrmGelir.CurrDigerKomisyon.Value    := Qry1.FieldByName('DigerKomisyon').AsCurrency;
FrmGelir.CurrTarihDegisikligi.Value := Qry1.FieldByName('TarihDegisikligi').AsCurrency;
FrmGelir.CurrToplamFiyat.Value      := Qry1.FieldByName('ToplamFiyat').AsCurrency;
//FrmGelir.CurrOdenenMiktar.Value     := Qry1.FieldByName('OdenenMiktar').AsCurrency;
//FrmGelir.CurrKalanMiktar.Value      := Qry1.FieldByName('KalanMiktar').AsCurrency;


FrmGelir.CmbAdi.Tag   := Qry1.FieldByName('id').AsInteger;

FrmGelir.ShowModal;
BtnListele.Click;
FrmGelir.Free;
end;


procedure TFrmKrediKartDetay.BtnListeleClick(Sender: TObject);
var TmpSql:String;
i,s,y,x:integer;
TmpToplamFiyat,TmpOdenenFiyat,TmpKalanFiyat:currency;
begin
TmpToplamFiyat:=0;
TmpOdenenFiyat:=0;
TmpKalanFiyat:=0;

AdvListe.ClearRows(1,AdvListe.RowCount-1);
AdvListe.RowCount := 2;

TmpSql:= 'Select id,KayitTarihi,MusAdi,MusSoyadi,Nereden,Nereye,HavaDenizYolu,ToplamFiyat,OdenenMiktar,KalanMiktar '+
' from rezervasyon where Odendi=''Ödenmedi'' ';

TmpSql := TmpSql + 'and Sirket=:Sirket ' ;

TmpSql := TmpSql + ' and OdemeTuru=''Kredi'' order by KayitTarihi' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('Sirket').Value  := PubSirket ;
Qry1.Prepared;
Qry1.Open;

TmpToplamFiyat := 0 ;

if qry1.RecordCount = 0 then exit;

AdvListe.RowCount := Qry1.RecordCount + 1 ;

for i := 1 to Qry1.RecordCount do begin
AdvListe.Cells[1,i]:= qry1.FieldByName('KayitTarihi').AsString;
AdvListe.Cells[2,i]:= qry1.FieldByName('MusAdi').AsString;
AdvListe.Cells[3,i]:= qry1.FieldByName('MusSoyadi').AsString;
AdvListe.Cells[4,i]:= qry1.FieldByName('HavaDenizYolu').AsString;
AdvListe.Cells[5,i]:= qry1.FieldByName('Nereden').AsString;
AdvListe.Cells[6,i]:= qry1.FieldByName('Nereye').AsString;
AdvListe.Cells[7,i]:= FormatFloat('#,##0.00',Qry1.FieldByName('ToplamFiyat').AsCurrency);
TmpToplamFiyat := TmpToplamFiyat+qry1.FieldByName('ToplamFiyat').AsCurrency ;

AdvListe.Cells[8,i]:= FormatFloat('#,##0.00',Qry1.FieldByName('OdenenMiktar').AsCurrency);
TmpOdenenFiyat := TmpOdenenFiyat+qry1.FieldByName('OdenenMiktar').AsCurrency ;

AdvListe.Cells[9,i]:= FormatFloat('#,##0.00',Qry1.FieldByName('KalanMiktar').AsCurrency);
TmpKalanFiyat := TmpKalanFiyat+qry1.FieldByName('KalanMiktar').AsCurrency ;

AdvListe.Cells[10,i]:= qry1.FieldByName('id').AsString;
Qry1.Next;
end;


AdvListe.AutoNumberCol(0);
CurrToplamFiyat.Value  :=  TmpToplamFiyat ;
CurrToplamOdenen.Value :=  TmpOdenenFiyat ;
CurrToplamKalan.Value  :=  TmpKalanFiyat ;
AdvListe.AddRow;
//AdvListe.Cells[6,AdvListe.RowCount-1]:= 'Toplam Fiyat :' ;
AdvListe.Cells[7,AdvListe.RowCount-1]:=  FormatFloat('#,##0.00',CurrToplamFiyat.Value) ;
AdvListe.Cells[8,AdvListe.RowCount-1]:=  FormatFloat('#,##0.00',CurrToplamOdenen.Value) ;
AdvListe.Cells[9,AdvListe.RowCount-1]:=  FormatFloat('#,##0.00',CurrToplamKalan.Value) ;
AdvListe.Colors[7,AdvListe.RowCount-1]:=clYellow;
AdvListe.Colors[8,AdvListe.RowCount-1]:=clYellow;
AdvListe.Colors[9,AdvListe.RowCount-1]:=clYellow;

end;

procedure TFrmKrediKartDetay.Button15Click(Sender: TObject);
begin

AdvListe.PrintSettings.TitleLines.Clear;
AdvListe.PrintSettings.TitleLines.Add('HESAP EXTRESÝ');
//AdvListe.PrintSettings.TitleLines.Add('('+lblbilgi.Caption+')  Toplam Fiyat :' +
//FormatFloat('#,##0.00',CurrToplamFiyat.Value)  );
AdvPreview.Grid := AdvListe ;
AdvPreview.Execute ;

end;

procedure TFrmKrediKartDetay.Button1Click(Sender: TObject);
begin
AdvExcel.AdvStringGrid := AdvListe ;
SaveDialog1.Execute;
if SaveDialog1.FileName='' Then Exit;
AdvExcel.XLSExport(SaveDialog1.FileName+'.xls');
end;

end.
