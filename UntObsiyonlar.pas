unit UntObsiyonlar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvObj, BaseGrid, AdvGrid, ComCtrls, StdCtrls, MoneyEdit,
  ExtCtrls, DB, ADODB,DateUtils;

type
  TFrmObsiyonlar = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    AdvListe: TAdvStringGrid;
    Qry1: TADOQuery;
    Panel3: TPanel;
    BtnListele: TButton;
    procedure BtnListeleClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvListeDblClick(Sender: TObject);
  private
    { Private declarations }
  public
  Function IncreaseTime(T:TTime;i:integer):TTime;
    { Public declarations }
  end;

var
  FrmObsiyonlar: TFrmObsiyonlar;

implementation

uses UntGelir;

{$R *.dfm}

procedure TFrmObsiyonlar.AdvListeDblClick(Sender: TObject);
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
Qry1.Parameters.ParamByName('id').Value := AdvListe.Cells[6,AdvListe.Row] ;
Qry1.Prepared;
Qry1.Open;

FrmGelir.CmbAdi.Text             := Qry1.FieldByName('MusAdi').AsString;
FrmGelir.CmbSoyadi.Text          := Qry1.FieldByName('MusSoyadi').AsString;
FrmGelir.CmbUrunCesidi.ItemIndex := FrmGelir.CmbUrunCesidi.Items.IndexOf(Qry1.FieldByName('UrunCesidi').AsString);
FrmGelir.TxtNereden.Text         := Qry1.FieldByName('Nereden').AsString;
FrmGelir.TxtNereye.Text          := Qry1.FieldByName('Nereye').AsString;

FrmGelir.CmbKullanilanKart.ItemIndex := FrmGelir.CmbKullanilanKart.Items.IndexOf(Qry1.FieldByName('KullanilanKart').AsString);

FrmGelir.CurrNetFiyati.Value     := Qry1.FieldByName('NetFiyati').AsCurrency;
FrmGelir.CurrKomisyon.Value      := Qry1.FieldByName('Komisyon').AsCurrency;
FrmGelir.CurrDigerKomisyon.Value := Qry1.FieldByName('DigerKomisyon').AsCurrency;
FrmGelir.CurrToplamFiyat.Value   := Qry1.FieldByName('ToplamFiyat').AsCurrency;

FrmGelir.CurrToplamFiyat.Value   := Qry1.FieldByName('ToplamFiyat').AsCurrency;

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

//FrmGelir.CurrOdenenMiktar.Value   := Qry1.FieldByName('OdenenMiktar').AsCurrency;

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

//FrmGelir.CurrKalanMiktar.Value  := Qry1.FieldByName('KalanMiktar').AsCurrency;

FrmGelir.MemAciklama.Text  := Qry1.FieldByName('aciklama').AsString;


FrmGelir.CmbAdi.Tag   := Qry1.FieldByName('id').AsInteger;


FrmGelir.ShowModal;

BtnListele.Click;
FrmGelir.Free;
end;

procedure TFrmObsiyonlar.BtnListeleClick(Sender: TObject);
var TmpSql:String;
i,s,y,x:integer;
begin

AdvListe.ClearRows(1,AdvListe.RowCount-1);
AdvListe.RowCount := 2;

TmpSql:='Select HavaDenizYolu,MusAdi,MusSoyadi,obstarihi,obssaati,id from rezervasyon where '+
'obsiyon=''Var'' and onay=''Yok'' order by obstarihi,obssaati ';  //and ObsTarihi=:dt1 and ObsSaati between :t1 and :t2

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
{
Qry1.Parameters.ParamByName('dt1').Value := IntToStr(YearOf(Date))+'-'+
                                            IntToStr(MonthOf(Date))+'-'+
                                            IntToStr(DayOf(Date));

Qry1.Parameters.ParamByName('t1').Value := IntToStr(HourOf(time))+':'+
                                           IntToStr(MinuteOf(time))+':'+
                                           IntToStr(SecondOf(time));

Qry1.Parameters.ParamByName('t2').Value := IntToStr(HourOf(IncreaseTime(time, 60)))+':'+
                                           IntToStr(MinuteOf(IncreaseTime(time, 60)))+':'+
                                           IntToStr(SecondOf(IncreaseTime(time, 60)));
}
Qry1.Prepared;
Qry1.Open;

if qry1.RecordCount = 0 then exit;

AdvListe.RowCount := Qry1.RecordCount + 1 ;

for i := 1 to Qry1.RecordCount do begin
AdvListe.Cells[1,i]:= qry1.FieldByName('MusAdi').AsString;
AdvListe.Cells[2,i]:= qry1.FieldByName('MusSoyadi').AsString;
AdvListe.Cells[3,i]:= qry1.FieldByName('HavaDenizYolu').AsString;
AdvListe.Cells[4,i]:= qry1.FieldByName('obstarihi').AsString;
AdvListe.Cells[5,i]:= qry1.FieldByName('obssaati').AsString;
AdvListe.Cells[6,i]:= qry1.FieldByName('id').AsString;
Qry1.Next;
end;

AdvListe.AutoNumberCol(0);
end;

procedure TFrmObsiyonlar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FrmObsiyonlar:= nil;

end;

function TFrmObsiyonlar.IncreaseTime(T: TTime; i: integer): TTime;
Var Hour, Min, Sec, MSec: Word;
begin
    DecodeTime(t, Hour, Min, Sec, MSec);
    Min:=min+i;
    Hour:=Hour+Min div 60;
    Hour:=Hour mod 24;
    Min:=Min mod 60;
    result:=EncodeTime(Hour, Min, Sec, MSec);
end;


end.
