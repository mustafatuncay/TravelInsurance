unit UntSigortaHesapRapor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, AdvObj, BaseGrid, AdvGrid, pngimage, DB,
  ADODB, asgprev, ComCtrls,DateUtils;

type
  TFrmSigortaHesapRapor = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    CmbParaBirimi: TComboBox;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Image1: TImage;
    Image2: TImage;
    CmbAdi: TComboBox;
    CmbSoyadi: TComboBox;
    CmbCepTel1: TComboBox;
    CmbAdres: TComboBox;
    ChkSec: TCheckBox;
    BtnListele: TButton;
    Qry1: TADOQuery;
    Qry2: TADOQuery;
    AdvPreview: TAdvPreviewDialog;
    Button2: TButton;
    CmbBakiye: TComboBox;
    ChkMusteri: TCheckBox;
    ChkParaBirimi: TCheckBox;
    Button1: TButton;
    ChkKayitTarihi: TCheckBox;
    DtKayit1: TDateTimePicker;
    DtKayit2: TDateTimePicker;
    ChkOdeme: TCheckBox;
    DtOdeme1: TDateTimePicker;
    DtOdeme2: TDateTimePicker;
    PageControl1: TPageControl;
    Ozet: TTabSheet;
    Detay: TTabSheet;
    AdvListe: TAdvStringGrid;
    AdvListe2: TAdvStringGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnListeleClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CmbAdiChange(Sender: TObject);
    procedure CmbSoyadiChange(Sender: TObject);
    procedure CmbCepTel1Change(Sender: TObject);
    procedure CmbAdresChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private


    { Private declarations }
  public
  procedure musterigetir;
  procedure pubozet;
  procedure pubdetay;

   procedure CreateParams(var Params: TCreateParams); override;
    { Public declarations }
  end;

var
  FrmSigortaHesapRapor: TFrmSigortaHesapRapor;

implementation

{$R *.dfm}

procedure TFrmSigortaHesapRapor.BtnListeleClick(Sender: TObject);
begin
if PageControl1.TabIndex=0 then PubOzet;

if PageControl1.TabIndex=1 then PubDetay;;

end;

procedure TFrmSigortaHesapRapor.Button1Click(Sender: TObject);
var i:integer;
begin
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Select adi,soyadi,id from sigorta');
Qry1.Open;

for i:=1 to Qry1.RecordCount do  begin

Qry2.Close;
Qry2.SQL.Clear;
Qry2.SQL.Add('Update sigortaodeme set MusteriAdi=:MusteriAdi, MusteriSoyadi=:MusteriSoyadi where sigortaid=:sigortaid ');
Qry2.Parameters.ParamByName('MusteriAdi').Value    := Qry1.FieldByName('adi').AsString    ;
Qry2.Parameters.ParamByName('MusteriSoyadi').Value := Qry1.FieldByName('SoyAdi').AsString ;
Qry2.Parameters.ParamByName('sigortaid').Value     := Qry1.FieldByName('id').AsString ;
Qry2.Prepared;
Qry2.ExecSQL;

Qry1.Next;
end;

ShowMessage('iþlem tamam');

end;

procedure TFrmSigortaHesapRapor.Button2Click(Sender: TObject);
begin
  AdvPreview.Execute;
end;

procedure TFrmSigortaHesapRapor.CmbAdiChange(Sender: TObject);
begin
CmbSoyadi.ItemIndex  := CmbAdi.ItemIndex;
CmbCepTel1.ItemIndex := CmbAdi.ItemIndex;
CmbAdres.ItemIndex   := CmbAdi.ItemIndex;
end;

procedure TFrmSigortaHesapRapor.CmbAdresChange(Sender: TObject);
begin
CmbSoyadi.ItemIndex  := CmbAdres.ItemIndex ;
CmbAdi.ItemIndex     := CmbAdres.ItemIndex;
CmbCepTel1.ItemIndex := CmbAdres.ItemIndex;
end;

procedure TFrmSigortaHesapRapor.CmbCepTel1Change(Sender: TObject);
begin
CmbSoyadi.ItemIndex  := CmbCepTel1.ItemIndex ;
CmbAdi.ItemIndex     := CmbCepTel1.ItemIndex;
CmbAdres.ItemIndex   := CmbCepTel1.ItemIndex;
end;

procedure TFrmSigortaHesapRapor.CmbSoyadiChange(Sender: TObject);
begin
CmbAdi.ItemIndex     := CmbSoyadi.ItemIndex;
CmbCepTel1.ItemIndex := CmbSoyadi.ItemIndex;
CmbAdres.ItemIndex   := CmbSoyadi.ItemIndex;
end;

procedure TFrmSigortaHesapRapor.CreateParams(var Params: TCreateParams);
begin
 inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;



procedure TFrmSigortaHesapRapor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FrmSigortaHesapRapor:= nil;
end;

procedure TFrmSigortaHesapRapor.musterigetir;
var i:integer;
TmpSql:String;
begin

CmbAdi.Clear;
CmbSoyadi.Clear;
CmbCepTel1.Clear;
CmbAdres.Clear;
                                                            // where MusteriTuru=:MusteriTuru
TmpSql:= 'Select Adi,Soyadi,CepTel1,Adres from musteri   order by adi,soyadi' ;
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
//Qry1.Parameters.ParamByName('MusteriTuru').Value := 'Sigorta Müþterisi';
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





procedure TFrmSigortaHesapRapor.PageControl1Change(Sender: TObject);
begin
if Pagecontrol1.TabIndex=1 Then cmbbakiye.Visible:=False
Else cmbbakiye.Visible:=True;
end;

procedure TFrmSigortaHesapRapor.pubdetay;
Var TmpSql:String;
i,x:integer;
ToplamBorc,ToplamAlacak,ToplamBakiye:Currency;

begin

AdvListe2.ClearRows(1,AdvListe2.RowCount-1);
AdvListe2.RowCount := 2;


TmpSql := 'select MusteriAdi,MusteriSoyadi,Sigortaid,Tarih,OdemeTarihi,Aciklama,Borc,Alacak,ParaBirimi '+
' from SigortaOdeme where id<>0 ';


if ChkParaBirimi.Checked=True then
TmpSql := TmpSql + 'and ParaBirimi =:ParaBirimi ' ;

if ChkOdeme.Checked=True then
TmpSql := TmpSql + 'and OdemeTarihi between :OdemeTarihi1 and :OdemeTarihi2 ' ;

if ChkKayittarihi.Checked=True then
TmpSql := TmpSql + 'and Tarih between :Tarih1 and :Tarih2 ' ;


if ChkMusteri.Checked=True then
TmpSql := TmpSql + 'and MusteriAdi like :MusteriAdi and MusteriSoyadi like :MusteriSoyadi ' ;

TmpSql := TmpSql + ' order by MusteriAdi,MusteriSoyadi,OdemeTarihi ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

if ChkParaBirimi.Checked=True then
Qry1.Parameters.ParamByName('ParaBirimi').Value     := CmbParaBirimi.Text;


if ChkOdeme.checked=True then  begin
Qry1.Parameters.ParamByName('OdemeTarihi1').Value :=
IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date));

Qry1.Parameters.ParamByName('OdemeTarihi2').Value :=
IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date));
end;



if ChkKayittarihi.checked=True then  begin
Qry1.Parameters.ParamByName('Tarih1').Value :=
IntToStr(YearOf(DtKayit1.Date))+'-'+IntToStr(MonthOf(DtKayit1.Date))+'-'+IntToStr(DayOf(DtKayit1.Date));

Qry1.Parameters.ParamByName('Tarih2').Value :=
IntToStr(YearOf(DtKayit2.Date))+'-'+IntToStr(MonthOf(DtKayit2.Date))+'-'+IntToStr(DayOf(DtKayit2.Date));
end;


if ChkMusteri.Checked=True then begin
Qry1.Parameters.ParamByName('MusteriAdi').Value     := CmbAdi.Text+'%';
Qry1.Parameters.ParamByName('MusteriSoyadi').Value  := CmbSoyadi.Text+'%';
end;

Qry1.Prepared:=True;
Qry1.Open;

For i:=1 to Qry1.RecordCount do begin

AdvListe2.Cells[1,i] :=  Qry1.FieldByName('Tarih').AsString  ;
AdvListe2.Cells[2,i] :=  Qry1.FieldByName('OdemeTarihi').AsString  ;
AdvListe2.Cells[3,i] :=  Qry1.FieldByName('MusteriAdi').AsString  ;
AdvListe2.Cells[4,i] :=  Qry1.FieldByName('MusteriSoyadi').AsString  ;
AdvListe2.Cells[5,i] :=  Qry1.FieldByName('Aciklama').AsString  ;
AdvListe2.Cells[6,i] :=  Qry1.FieldByName('Borc').AsString  ;
AdvListe2.Cells[7,i] :=  Qry1.FieldByName('Alacak').AsString  ;
AdvListe2.Cells[8,i] :=  Qry1.FieldByName('ParaBirimi').AsString  ;

AdvListe2.AddRow;

Qry1.Next;
end;

AdvListe2.AutoNumberCol(0);


end;

procedure TFrmSigortaHesapRapor.pubozet;
Var TmpSql:String;
i,x:integer;
ToplamBorc,ToplamAlacak,ToplamBakiye:Currency;

begin

AdvListe.ClearRows(1,AdvListe.RowCount-1);
AdvListe.RowCount := 2;


TmpSql := 'select MusteriAdi,MusteriSoyadi,Parabirimi,Sum(Alacak) as A, Sum(Borc) as B, (Sum(Alacak)-Sum(Borc)) as Bakiye '+
' from SigortaOdeme where id<>0 ';

if ChkParaBirimi.Checked=True then
TmpSql := TmpSql + 'and ParaBirimi =:ParaBirimi ' ;

if ChkOdeme.Checked=True then
TmpSql := TmpSql + 'and OdemeTarihi between :OdemeTarihi1 and :OdemeTarihi2 ' ;

if ChkKayittarihi.Checked=True then
TmpSql := TmpSql + 'and Tarih between :Tarih1 and :Tarih2 ' ;

if ChkMusteri.Checked=True then
TmpSql := TmpSql + 'and MusteriAdi like :MusteriAdi and MusteriSoyadi like :MusteriSoyadi ' ;

TmpSql := TmpSql + ' group by MusteriAdi,MusteriSoyadi,ParaBirimi ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

if ChkParaBirimi.Checked=True then
Qry1.Parameters.ParamByName('ParaBirimi').Value     := CmbParaBirimi.Text;


if ChkOdeme.checked=True then  begin
Qry1.Parameters.ParamByName('OdemeTarihi1').Value :=
IntToStr(YearOf(DtOdeme1.Date))+'-'+IntToStr(MonthOf(DtOdeme1.Date))+'-'+IntToStr(DayOf(DtOdeme1.Date));

Qry1.Parameters.ParamByName('OdemeTarihi2').Value :=
IntToStr(YearOf(DtOdeme2.Date))+'-'+IntToStr(MonthOf(DtOdeme2.Date))+'-'+IntToStr(DayOf(DtOdeme2.Date));
end;



if ChkKayittarihi.checked=True then  begin
Qry1.Parameters.ParamByName('Tarih1').Value :=
IntToStr(YearOf(DtKayit1.Date))+'-'+IntToStr(MonthOf(DtKayit1.Date))+'-'+IntToStr(DayOf(DtKayit1.Date));

Qry1.Parameters.ParamByName('Tarih2').Value :=
IntToStr(YearOf(DtKayit2.Date))+'-'+IntToStr(MonthOf(DtKayit2.Date))+'-'+IntToStr(DayOf(DtKayit2.Date));
end;


if ChkMusteri.Checked=True then begin
Qry1.Parameters.ParamByName('MusteriAdi').Value     := CmbAdi.Text+'%';
Qry1.Parameters.ParamByName('MusteriSoyadi').Value  := CmbSoyadi.Text+'%';
end;

Qry1.Prepared:=True;
Qry1.Open;

//if Qry1.RecordCount <> 0 Then AdvListe.RowCount := Qry1.RecordCount + 1 ;
 ToplamBorc    := 0 ;
 ToplamAlacak  := 0 ;
 ToplamBakiye  := 0 ;
 x:=0;
For  i:=1 to Qry1.RecordCount do begin

if CmbBakiye.ItemIndex = 1 Then
if Qry1.FieldByName('Bakiye').AsCurrency<0 Then begin Qry1.Next; Continue ; end;

if CmbBakiye.ItemIndex = 0 Then
if  Qry1.FieldByName('Bakiye').AsCurrency>=0  Then begin Qry1.Next; Continue ; end;

x:=x+1;

AdvListe.Cells[1,x] :=  Qry1.FieldByName('MusteriAdi').AsString  ;
AdvListe.Cells[2,x] :=  Qry1.FieldByName('MusteriSoyadi').AsString  ;
AdvListe.Cells[3,x] :=  Qry1.FieldByName('ParaBirimi').AsString  ;
AdvListe.Cells[4,x] :=  Qry1.FieldByName('B').AsString  ;
AdvListe.Cells[5,x] :=  Qry1.FieldByName('A').AsString  ;

AdvListe.Cells[6,x] := FormatFloat('#,##0.00',Qry1.FieldByName('Bakiye').AsCurrency);
if Qry1.FieldByName('Bakiye').AsCurrency<0 Then AdvListe.Colors[6,x]:=clRed;
if Qry1.FieldByName('Bakiye').AsCurrency>0 Then AdvListe.Colors[6,x]:=clYellow;


 ToplamBorc    := ToplamBorc   + Qry1.FieldByName('B').AsCurrency ;
 ToplamAlacak  := ToplamAlacak + Qry1.FieldByName('A').AsCurrency  ;
 ToplamBakiye  := ToplamBakiye + Qry1.FieldByName('Bakiye').AsCurrency ;


AdvListe.AddRow;

Qry1.Next;
end;

AdvListe.AutoNumberCol(0);

AdvListe.Cells[4,AdvListe.RowCount-1] :=  FormatFloat('#,##0.00',ToplamBorc);
AdvListe.Cells[5,AdvListe.RowCount-1] :=  FormatFloat('#,##0.00',ToplamAlacak);
AdvListe.Cells[6,AdvListe.RowCount-1] :=  FormatFloat('#,##0.00',ToplamBakiye);

AdvListe.Colors[4,AdvListe.RowCount-1] := clYellow ;
AdvListe.Colors[5,AdvListe.RowCount-1] := clYellow ;
AdvListe.Colors[6,AdvListe.RowCount-1] := clYellow ;


end;

end.
