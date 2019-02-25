unit UntGelirGiderRapor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, AdvObj, BaseGrid, AdvGrid, pngimage, DB,
  ADODB, asgprev, ComCtrls,DateUtils, AdvEdit, AdvMoneyEdit;

type
  TFrmGelirGiderRapor = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Qry1: TADOQuery;
    Qry2: TADOQuery;
    AdvPreview: TAdvPreviewDialog;
    Ds1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Label3: TLabel;
    CmbParaBirimi: TComboBox;
    BtnListele: TButton;
    Button2: TButton;
    Button1: TButton;
    Dt1: TDateTimePicker;
    Dt2: TDateTimePicker;
    ChkParaBirimi: TCheckBox;
    ChkTarih: TCheckBox;
    CmbKullanilanKart: TComboBox;
    ChkKullanilanKart: TCheckBox;
    TxtAciklama: TEdit;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Image1: TImage;
    Image2: TImage;
    Label8: TLabel;
    CmbAdi: TComboBox;
    CmbSoyadi: TComboBox;
    CmbCepTel1: TComboBox;
    CmbAdres: TComboBox;
    ChkMusteri: TCheckBox;
    AdvListe: TAdvStringGrid;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Button3: TButton;
    ChkEkside: TCheckBox;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    CmbTopAdi: TComboBox;
    CmbTopSoyadi: TComboBox;
    CmbTopTel: TComboBox;
    CmbTopAdres: TComboBox;
    ChkTopMusteri: TCheckBox;
    Button4: TButton;
    AdvTopListe: TAdvStringGrid;
    ChkTopParaBirimi: TCheckBox;
    CmbTopParaBirimi: TComboBox;
    ChkPnr: TCheckBox;
    TxtTopBakiye: TEdit;
    TxtBorc: TEdit;
    TxtAlacak: TEdit;
    TxtBakiye: TEdit;
    TxtPnr: TEdit;
    Label11: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnListeleClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CmbAdiChange(Sender: TObject);
    procedure CmbSoyadiChange(Sender: TObject);
    procedure AdvListeGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure AdvListeDblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CmbTopAdiChange(Sender: TObject);
    procedure CmbTopSoyadiChange(Sender: TObject);
    procedure AdvTopListeGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
  private
    { Private declarations }
  public
  procedure musterigetir;
   procedure CreateParams(var Params: TCreateParams); override;
    { Public declarations }
  end;

var
  FrmGelirGiderRapor: TFrmGelirGiderRapor;

implementation

uses UntGelirGiderKayit, RepGelirGiderMusteri;

{$R *.dfm}

procedure TFrmGelirGiderRapor.AdvListeDblClick(Sender: TObject);
begin
exit;

if  assigned(FrmGelirGiderKayit) then begin
if (FrmGelirGiderKayit.WindowState = wsMinimized ) Then FrmGelirGiderKayit.WindowState := wsMaximized  ;
FrmGelirGiderKayit.BringToFront;
exit;
end;

FrmGelirGiderKayit:=TFrmGelirGiderKayit.Create(Self);

FrmGelirGiderKayit.SabitDegerGetir;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Select * from  gelirgider where id=:id ' );
Qry1.Parameters.ParamByName('id').Value  := AdvListe.Cells[10,AdvListe.Row] ;
Qry1.Prepared:=True;
Qry1.Open;


FrmGelirGiderKayit.CmbAdi.ItemIndex      :=  FrmGelirGiderKayit.CmbAdi.Items.IndexOf(Qry1.FieldByName('Adi').AsString);
FrmGelirGiderKayit.CmbSoyadi.ItemIndex   :=  FrmGelirGiderKayit.CmbSoyadi.Items.IndexOf(Qry1.FieldByName('Soyadi').AsString);
FrmGelirGiderKayit.CmbTelNo.ItemIndex    :=  FrmGelirGiderKayit.CmbTelNo.Items.IndexOf(Qry1.FieldByName('TelNo').AsString);
FrmGelirGiderKayit.CmbKimlikNo.ItemIndex :=  FrmGelirGiderKayit.CmbKimlikNo.Items.IndexOf(Qry1.FieldByName('KimlikNo').AsString);


FrmGelirGiderKayit.CmbislemTuru.ItemIndex  :=  FrmGelirGiderKayit.CmbislemTuru.Items.IndexOf(Qry1.FieldByName('islemturu').AsString);
FrmGelirGiderKayit.CmbParaBirimi.ItemIndex :=  FrmGelirGiderKayit.CmbParaBirimi.Items.IndexOf(Qry1.FieldByName('ParaBirimi').AsString);

FrmGelirGiderKayit.CmbKullanilanKart.ItemIndex :=  FrmGelirGiderKayit.CmbKullanilanKart.Items.IndexOf(Qry1.FieldByName('KullanilanKart').AsString);


FrmGelirGiderKayit.DtTarih.Date     :=  date ;

FrmGelirGiderKayit.CurrAlacak.Value :=  Qry1.FieldByName('Borc').AsCurrency;

FrmGelirGiderKayit.MemAciklama.Text := 'Ödeme';

FrmGelirGiderKayit.CmbOdemeSekli.ItemIndex  :=  FrmGelirGiderKayit.CmbOdemeSekli.Items.IndexOf(Qry1.FieldByName('OdemeSekli').AsString);


FrmGelirGiderKayit.Show;
end;

procedure TFrmGelirGiderRapor.AdvListeGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin

if ACol in [6,7,8] then HAlign := taRightJustify ;

end;

procedure TFrmGelirGiderRapor.AdvTopListeGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
if ACol in [3,4,5] then HAlign := taRightJustify ;
end;

procedure TFrmGelirGiderRapor.BtnListeleClick(Sender: TObject);
Var TmpSql:String;
i:integer;
ToplamBorc,ToplamAlacak,ToplamBakiye:Currency;

begin
ToplamBakiye := 0;

AdvListe.ClearRows(1,AdvListe.RowCount-1);
AdvListe.RowCount := 2;



TmpSql := 'select id,Adi,Soyadi,KimlikNo,TelNo,Tarih,islemTuru,Borc,Alacak,ParaBirimi,idNo,Aciklama,KullanilanKart '+
' from gelirgider where id<>0 ' ;


if ChkTarih.Checked = True then          TmpSql:= TmpSql + ' and Tarih between :dt1 and :dt2 '  ;
if ChkParaBirimi.Checked = True then     TmpSql:= TmpSql + ' and ParaBirimi=:ParaBirimi  '  ;
if ChkMusteri.Checked = True then        TmpSql:= TmpSql + ' and Adi like :Adi and Soyadi like :Soyadi '  ;
if ChkKullanilanKart.Checked = True then TmpSql:= TmpSql + ' and KullanilanKart =:KullanilanKart '  ;
if Trim(TxtAciklama.Text) <> '' then     TmpSql:= TmpSql + ' and Aciklama like :Aciklama '  ;
//if ChkPnr.Checked = True then            TmpSql:= TmpSql + ' and Pnr like :Pnr '  ;




TmpSql:= TmpSql +  ' order by Tarih,id ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

if ChkTarih.Checked = True then begin
Qry1.Parameters.ParamByName('Dt1').Value    := IntToStr(YearOf(Dt1.Date))+'-'+
                                               IntToStr(MonthOf(Dt1.Date))+'-'+
                                               IntToStr(DayOf(Dt1.Date));

Qry1.Parameters.ParamByName('Dt2').Value    := IntToStr(YearOf(Dt2.Date))+'-'+
                                               IntToStr(MonthOf(Dt2.Date))+'-'+
                                               IntToStr(DayOf(Dt2.Date));
end;

if ChkParaBirimi.Checked = True then
Qry1.Parameters.ParamByName('ParaBirimi').Value  := CmbParaBirimi.Text;

if ChkMusteri.Checked = True then begin
Qry1.Parameters.ParamByName('Adi').Value    := CmbAdi.Text+'%';
Qry1.Parameters.ParamByName('Soyadi').Value := CmbSoyadi.Text+'%';
end;

if ChkKullanilanKart.Checked = True then
Qry1.Parameters.ParamByName('KullanilanKart').Value  := CmbKullanilanKart.Text;

if Trim(TxtAciklama.Text) <> '' then
Qry1.Parameters.ParamByName('Aciklama').Value  := '%'+TxtAciklama.Text+'%';

Qry1.Prepared:=True;
Qry1.Open;

if Qry1.RecordCount<>0 Then
AdvListe.RowCount := Qry1.RecordCount  + 1 ;


For i:=1 to Qry1.RecordCount do begin

AdvListe.Cells[1,i] := Qry1.FieldByName('Tarih').AsString      ;
AdvListe.Cells[2,i] := Qry1.FieldByName('Adi').AsString        ;
AdvListe.Cells[3,i] := Qry1.FieldByName('Soyadi').AsString     ;
AdvListe.Cells[4,i] := Qry1.FieldByName('Aciklama').AsString   ;
AdvListe.Cells[5,i] := Qry1.FieldByName('ParaBirimi').AsString ;
AdvListe.Cells[6,i] := FormatFloat('#,##0.00',Qry1.FieldByName('Borc').AsCurrency);
AdvListe.Cells[7,i] := FormatFloat('#,##0.00',Qry1.FieldByName('Alacak').AsCurrency);

ToplamBorc   := ToplamBorc + Qry1.FieldByName('Borc').AsCurrency  ;
ToplamAlacak := ToplamAlacak + Qry1.FieldByName('Alacak').AsCurrency  ;

ToplamBakiye := ToplamBakiye - Qry1.FieldByName('Borc').AsCurrency  ;
ToplamBakiye := ToplamBakiye + Qry1.FieldByName('Alacak').AsCurrency  ;
AdvListe.Cells[8,i] := FormatFloat('#,##0.00',ToplamBakiye);

AdvListe.Cells[9,i] :=  Qry1.FieldByName('KullanilanKart').AsString        ;

AdvListe.Cells[10,i] :=  Qry1.FieldByName('id').AsString        ;

Qry1.Next;
end;

AdvListe.AutoNumberCol(0);

TxtBorc.Text   := FormatFloat('#,##0.00',ToplamBorc);
TxtAlacak.Text := FormatFloat('#,##0.00',ToplamAlacak);
TxtBakiye.Text := FormatFloat('#,##0.00',ToplamBakiye);

end;

procedure TFrmGelirGiderRapor.Button1Click(Sender: TObject);
begin
if  assigned(FrmGelirGiderKayit) then begin
if (FrmGelirGiderKayit.WindowState = wsMinimized ) Then FrmGelirGiderKayit.WindowState := wsMaximized  ;
FrmGelirGiderKayit.BringToFront;
exit;
end;

FrmGelirGiderKayit:=TFrmGelirGiderKayit.Create(Self);

FrmGelirGiderKayit.SabitDegerGetir;

FrmGelirGiderKayit.Show;
end;

procedure TFrmGelirGiderRapor.Button2Click(Sender: TObject);
begin
QRepGelirGiderMusteri:=TQRepGelirGiderMusteri.Create(Self);


QRepGelirGiderMusteri.QRLTarih.Caption :=  DateToStr(date);

if ChkMusteri.Checked = True then
QRepGelirGiderMusteri.QrlAdi.Caption := CmbAdi.Text +' '+CmbSoyadi.Text ;

if ChkParaBirimi.Checked = True then
QRepGelirGiderMusteri.QrlParaBirimi.Caption := CmbParaBirimi.Text ;


QRepGelirGiderMusteri.QrlTopBorc.Caption   := TxtBorc.Text ;
QRepGelirGiderMusteri.QrlTopAlacak.Caption := TxtAlacak.Text ;
QRepGelirGiderMusteri.QrlBakiye.Caption    := TxtBakiye.Text ;

QRepGelirGiderMusteri.PreviewModal;
QRepGelirGiderMusteri.Free;

exit;
AdvListe.PrintSettings.TitleLines.Clear;
AdvListe.PrintSettings.TitleLines.Add('GELÝR - GÝDER RAPORU');
AdvListe.PrintSettings.TitleLines.Add('');

AdvPreview.Execute;
end;

procedure TFrmGelirGiderRapor.Button3Click(Sender: TObject);
Var TmpSql:String;
i,x:integer;
TmpBakiye,TmpTopBakiye:Currency;
begin

AdvTopListe.ClearRows(1,AdvTopListe.RowCount-1);
AdvTopListe.RowCount := 2;
x:=0;
TmpTopBakiye:=0;

TmpSql := 'select Adi,Soyadi,Sum(Borc) as B,Sum(Alacak) as A from gelirgider where id<>0 ' ;


if ChkTopParaBirimi.Checked = True then   TmpSql:= TmpSql + ' and ParaBirimi=:ParaBirimi  '  ;
if ChkTopMusteri.Checked = True then      TmpSql:= TmpSql + ' and Adi =:Adi and Soyadi =:Soyadi '  ;


TmpSql:= TmpSql +  ' Group by Adi,Soyadi ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

if ChkTopParaBirimi.Checked = True then
Qry1.Parameters.ParamByName('ParaBirimi').Value  := CmbTopParaBirimi.Text;

if ChkTopMusteri.Checked = True then begin
Qry1.Parameters.ParamByName('Adi').Value    := CmbTopAdi.Text;
Qry1.Parameters.ParamByName('Soyadi').Value := CmbTopSoyadi.Text;
end;


Qry1.Prepared:=True;
Qry1.Open;


For i:=1 to Qry1.RecordCount do begin

TmpBakiye:=Qry1.FieldByName('A').AsCurrency-Qry1.FieldByName('B').AsCurrency;

if ChkEkside.Checked = True then
   if TmpBakiye>=0 then begin
   Qry1.Next;
   Continue;
   end;

AdvTopListe.AddRow;
x:=x+1;

AdvTopListe.Cells[1,x] := Qry1.FieldByName('Adi').AsString        ;
AdvTopListe.Cells[2,x] := Qry1.FieldByName('Soyadi').AsString     ;
AdvTopListe.Cells[3,x] := FormatFloat('#,##0.00',Qry1.FieldByName('B').AsCurrency);
AdvTopListe.Cells[4,x] := FormatFloat('#,##0.00',Qry1.FieldByName('A').AsCurrency);
AdvTopListe.Cells[5,x] := FormatFloat('#,##0.00',TmpBakiye);
TmpTopBakiye:=TmpTopBakiye+TmpBakiye;
if TmpBakiye<0 Then AdvTopListe.Colors[5,x]:=clRed;
if TmpBakiye>0 Then AdvTopListe.Colors[5,x]:=clYellow;
Qry1.Next;
end;


for i:=1 to AdvTopListe.RowCount-1 do begin
TmpSql := 'select CepTel1 from musteri where adi=:adi and Soyadi=:soyadi  ' ;
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Adi').Value     := AdvTopListe.Cells[1,i];
Qry1.Parameters.ParamByName('Soyadi').Value  := AdvTopListe.Cells[2,i];
Qry1.Prepared:=True;
Qry1.Open;

AdvTopListe.Cells[6,i] := Qry1.FieldByName('CepTel1').AsString  ;
end;



AdvTopListe.AutoNumberCol(0);
TxtTopBakiye.Text := FormatFloat('#,##0.00',TmpTopBakiye); ;
end;

procedure TFrmGelirGiderRapor.Button4Click(Sender: TObject);
begin
if  assigned(FrmGelirGiderKayit) then begin
if (FrmGelirGiderKayit.WindowState = wsMinimized ) Then FrmGelirGiderKayit.WindowState := wsMaximized  ;
FrmGelirGiderKayit.BringToFront;
exit;
end;

FrmGelirGiderKayit:=TFrmGelirGiderKayit.Create(Self);

FrmGelirGiderKayit.SabitDegerGetir;

FrmGelirGiderKayit.Show;
end;

procedure TFrmGelirGiderRapor.CmbAdiChange(Sender: TObject);
begin
//if ChkYeniKayit.Checked = True then exit;

CmbSoyadi.ItemIndex  := CmbAdi.ItemIndex ;
CmbCepTel1.ItemIndex := CmbAdi.ItemIndex ;
CmbAdres.ItemIndex   := CmbAdi.ItemIndex ;

end;

procedure TFrmGelirGiderRapor.CmbSoyadiChange(Sender: TObject);
begin
//if ChkYeniKayit.Checked = True then exit;

CmbAdi.ItemIndex     := CmbSoyadi.ItemIndex ;
CmbCepTel1.ItemIndex := CmbSoyadi.ItemIndex ;
CmbAdres.ItemIndex   := CmbSoyadi.ItemIndex ;

end;

procedure TFrmGelirGiderRapor.CmbTopAdiChange(Sender: TObject);
begin

CmbTopSoyadi.ItemIndex  := CmbTopAdi.ItemIndex ;
CmbTopTel.ItemIndex     := CmbTopAdi.ItemIndex ;
CmbTopAdres.ItemIndex   := CmbTopAdi.ItemIndex ;

end;

procedure TFrmGelirGiderRapor.CmbTopSoyadiChange(Sender: TObject);
begin
CmbTopAdi.ItemIndex   := CmbTopSoyadi.ItemIndex ;
CmbTopTel.ItemIndex   := CmbTopSoyadi.ItemIndex ;
CmbTopAdres.ItemIndex := CmbTopSoyadi.ItemIndex ;
end;

procedure TFrmGelirGiderRapor.CreateParams(var Params: TCreateParams);
begin
 inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;

procedure TFrmGelirGiderRapor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FrmGelirGiderRapor:= nil;
end;

procedure TFrmGelirGiderRapor.FormShow(Sender: TObject);
var TmpSql:String;
i:integer;
begin
PageControl1.TabIndex := 0 ;

Dt1.Date:= Date;
Dt2.Date:= Date;

///////////////////////////////////////////////////////////////////////
CmbKullanilanKart.clear;
TmpSql:= 'Select aciklama from sabitdegerler where kriterno=:kriterno order by aciklama';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('kriterno').Value := '2' ;
Qry1.Prepared;
Qry1.Open;
for i:=0 to Qry1.RecordCount-1  do begin
CmbKullanilanKart.Items.Add(Qry1.FieldByName('aciklama').AsString);
Qry1.Next;
end;
///////////////////////////////////////////////////////////////////////

musterigetir;
end;

procedure TFrmGelirGiderRapor.musterigetir;
var i:integer;
TmpSql:String;
begin

CmbAdi.Clear;
CmbSoyadi.Clear;
CmbCepTel1.Clear;
CmbAdres.Clear;

CmbTopAdi.Clear;
CmbTopSoyadi.Clear;
CmbTopTel.Clear;
CmbTopAdres.Clear;
                                                       //where MusteriTuru=:MusteriTuru
TmpSql:= 'Select Adi,Soyadi,CepTel1,Adres from musteri  order by adi,soyadi' ;
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

CmbTopAdi.Items.Add(Qry1.FieldByName('Adi').AsString);
CmbTopSoyadi.Items.Add(Qry1.FieldByName('Soyadi').AsString);
CmbTopTel.Items.Add(Qry1.FieldByName('CepTel1').AsString);
CmbTopAdres.Items.Add(Qry1.FieldByName('Adres').AsString);

Qry1.Next;
end;


end;

end.
