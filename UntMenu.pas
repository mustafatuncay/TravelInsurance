unit UntMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, AdvSmoothPanel, DB, ADODB,registry, pngimage,
  jpeg, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  xmldom, XMLIntf, Grids, AdvObj, BaseGrid, AdvGrid, msxmldom, XMLDoc,StrUtils,
  Buttons, ComCtrls,DateUtils,urlmon,ShellApi;

  {
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, jpeg, ExtCtrls, Grids, AdvObj, BaseGrid, AdvGrid,
  ComCtrls, MoneyEdit, Menus, DB, ADODB,registry,ShellApi, asgprev,DateUtils,UrlMon,
  AdvEdit, AdvMoneyEdit, tmsAdvGridExcel, DBGrids;     }



type
  TFrmMenu = class(TForm)
    Qry1: TADOQuery;
    Panel1: TPanel;
    Memo1: TMemo;
    PnlAyarlar: TPanel;
    BtnMusteriKaydi: TButton;
    BtnYonetimAyarlari: TButton;
    PnlSigorta: TPanel;
    BtnSatislarRezervasyon: TButton;
    BtnRaporlar: TButton;
    BtnKrediKartiYatirimlari: TButton;
    BtnObsiyonlar: TButton;
    PnlTurizm: TPanel;
    BtnSigortaislemleri: TButton;
    BtnSigortaRapor: TButton;
    BtnSigortaHesapRapor: TButton;
    BtnSigortaUyari: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    PnlRapor: TPanel;
    BtnOtelKayit: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    BtnTransferFirma: TButton;
    BtnAjanda: TButton;
    BtnSirketGelirGider: TButton;
    BtnTurFirmalari: TButton;
    BtnDoviz: TButton;
    IdHTTP1: TIdHTTP;
    XMLDocument1: TXMLDocument;
    AdvDoviz: TAdvStringGrid;
    MemDoviz: TMemo;
    BtnSirketHesaplama: TButton;
    BtnTanimlamalar: TButton;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    AdvMesaj: TAdvStringGrid;
    CmbKime: TComboBox;
    TxtMesaj: TEdit;
    DtGun: TDateTimePicker;
    Timer1: TTimer;
    LblKullanici: TLabel;
    procedure BtnMusteriKaydiClick(Sender: TObject);
    procedure BtnSatislarRezervasyonClick(Sender: TObject);
    procedure BtnTanimlamalarClick(Sender: TObject);
    procedure BtnRaporlarClick(Sender: TObject);
    procedure BtnKrediKartiYatirimlariClick(Sender: TObject);
    procedure BtnYonetimAyarlariClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnObsiyonlarClick(Sender: TObject);
    procedure BtnSigortaislemleriClick(Sender: TObject);
    procedure BtnSigortaRaporClick(Sender: TObject);
    procedure BtnSigortaHesapRaporClick(Sender: TObject);
    procedure BtnSigortaUyariClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure BtnOtelKayitClick(Sender: TObject);
    procedure BtnTransferFirmaClick(Sender: TObject);
    procedure BtnAjandaClick(Sender: TObject);
    procedure BtnSirketGelirGiderClick(Sender: TObject);
    procedure BtnTurFirmalariClick(Sender: TObject);
    procedure BtnDovizClick(Sender: TObject);
    procedure AdvDovizDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSirketHesaplamaClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure AdvMesajCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure AdvMesajCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    function DownloadFile(SourceFile, DestFile: string): Boolean;
  private
    { Private declarations }
  public

    procedure MesajListele ;
    procedure CreateParams(var Params: TCreateParams); override;
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

uses UntMusteriKayit, UntDm, UntGelir, UntSabitDegerler, UntGiderler, UntGlobal,
  UntRapor, UntKrediKarti, UntYonetim, UntObsiyonlar, UntSigortaislemleri,
  UntSigortalar, UntSigortaHesapRapor, UntSigortaSuresi, UntYedek,
  UntGelirGiderRapor, UntOtelKayit, UntTransferFirma, UntTransferFirmaListe,
  UntMusteriKayitListe, UntOtelKayitListe, UntAjandaListe,
  UntSirketGelirGiderListe, UntTurFirmaListe, UntProjectGlobal, UntHesap;

{$R *.dfm}

procedure TFrmMenu.BtnMusteriKaydiClick(Sender: TObject);
begin

if  assigned(FrmMusteriKayitListe) then begin
if (FrmMusteriKayitListe.WindowState = wsMinimized ) Then FrmMusteriKayitListe.WindowState := wsNormal  ;
FrmMusteriKayitListe.BringToFront;
exit;
end;


FrmMusteriKayitListe:=TFrmMusteriKayitListe.Create(Self);



FrmMusteriKayitListe.Show;

end;

procedure TFrmMenu.BtnObsiyonlarClick(Sender: TObject);
begin
if  assigned(FrmObsiyonlar) then begin
if (FrmObsiyonlar.WindowState = wsMinimized ) Then FrmObsiyonlar.WindowState := wsNormal  ;
FrmObsiyonlar.BringToFront;
exit;
end;

FrmObsiyonlar:=TFrmObsiyonlar.Create(Self);
FrmObsiyonlar.Show;
end;

procedure TFrmMenu.BtnOtelKayitClick(Sender: TObject);
begin
if  assigned(FrmOtelKayitListe) then begin
if (FrmOtelKayitListe.WindowState = wsMinimized ) Then FrmOtelKayitListe.WindowState := wsNormal  ;
FrmOtelKayitListe.BringToFront;
exit;
end;


FrmOtelKayitListe:=TFrmOtelKayitListe.Create(Self);

FrmOtelKayitListe.Show;
end;

procedure TFrmMenu.BtnSatislarRezervasyonClick(Sender: TObject);
begin

if  assigned(FrmGelir) then begin
if (FrmGelir.WindowState = wsMinimized ) Then FrmGelir.WindowState := wsNormal  ;
FrmGelir.BringToFront;
exit;
end;

FrmGelir:=TFrmGelir.Create(Self);

FrmGelir.BtnBiletKaydet.Enabled := True;
FrmGelir.BtnBiletGuncelle.Enabled := False;
FrmGelir.BtnBiletSil.Enabled := False;

FrmGelir.DtNereden.Date:=Date;
FrmGelir.DtNereye.Date :=Date;

FrmGelir.PageControl1.TabIndex := 0;
 FrmGelir.OtelGetir;
FrmGelir.Show;

end;

procedure TFrmMenu.BtnRaporlarClick(Sender: TObject);
begin
if  assigned(FrmRapor) then begin
if (FrmRapor.WindowState = wsMinimized ) Then FrmRapor.WindowState := wsNormal  ;
FrmRapor.BringToFront;
exit;
end;

FrmRapor:=TFrmRapor.Create(Self);
FrmRapor.Show;

end;

procedure TFrmMenu.BtnTanimlamalarClick(Sender: TObject);
begin
if  assigned(FrmSabitDegerler) then begin
if (FrmSabitDegerler.WindowState = wsMinimized ) Then FrmSabitDegerler.WindowState := wsNormal  ;
FrmSabitDegerler.BringToFront;
exit;
end;

FrmSabitDegerler:=TFrmSabitDegerler.Create(Self);
FrmSabitDegerler.Show;

end;

procedure TFrmMenu.BtnTransferFirmaClick(Sender: TObject);
begin
if  assigned(FrmTransferFirmaListe) then begin
if (FrmTransferFirmaListe.WindowState = wsMinimized ) Then FrmTransferFirmaListe.WindowState := wsNormal  ;
FrmTransferFirmaListe.BringToFront;
exit;
end;


FrmTransferFirmaListe:=TFrmTransferFirmaListe.Create(Self);
FrmTransferFirmaListe.Show;

end;

procedure TFrmMenu.BtnYonetimAyarlariClick(Sender: TObject);
begin
if  assigned(FrmYonetim) then begin
if (FrmYonetim.WindowState = wsMinimized ) Then FrmYonetim.WindowState := wsNormal  ;
FrmYonetim.BringToFront;
exit;
end;


FrmYonetim:=TFrmYonetim.Create(Self);
FrmYonetim.Show;

end;

procedure TFrmMenu.BtnAjandaClick(Sender: TObject);
begin
if  assigned(FrmAjandaListe) then begin
if (FrmAjandaListe.WindowState = wsMinimized ) Then FrmAjandaListe.WindowState := wsNormal  ;
FrmAjandaListe.BringToFront;
exit;
end;


FrmAjandaListe:=TFrmAjandaListe.Create(Self);

FrmAjandaListe.Show;
end;

procedure TFrmMenu.BtnSirketGelirGiderClick(Sender: TObject);
begin
if  assigned(FrmSirketGelirGiderListe) then begin
if (FrmSirketGelirGiderListe.WindowState = wsMinimized ) Then FrmSirketGelirGiderListe.WindowState := wsNormal  ;
FrmSirketGelirGiderListe.BringToFront;
exit;
end;


FrmSirketGelirGiderListe:=TFrmSirketGelirGiderListe.Create(Self);

FrmSirketGelirGiderListe.Show;
end;

procedure TFrmMenu.BtnTurFirmalariClick(Sender: TObject);
begin
if  assigned(FrmTurFirmaListe) then begin
if (FrmTurFirmaListe.WindowState = wsMinimized ) Then FrmTurFirmaListe.WindowState := wsNormal  ;
FrmTurFirmaListe.BringToFront;
exit;
end;


FrmTurFirmaListe:=TFrmTurFirmaListe.Create(Self);
FrmTurFirmaListe.Show;

end;


procedure TFrmMenu.AdvMesajCanEditCell(Sender: TObject; ARow, ACol: Integer;
  var CanEdit: Boolean);
begin
CanEdit := False  ;
if ACol = 1 then CanEdit := True ;

end;

procedure TFrmMenu.AdvMesajCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
  State: Boolean);
begin
if ACol = 1 then  begin

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('update mesaj set okundu=:okundu where id=:id');

if State = True then
Qry1.Parameters.ParamByName('okundu').Value := 'Y'
Else
Qry1.Parameters.ParamByName('okundu').Value := 'N';

Qry1.Parameters.ParamByName('id').Value := AdvMesaj.Cells[6,Arow];
Qry1.Prepared;
Qry1.ExecSQL ;

end;

end;

procedure TFrmMenu.BitBtn2Click(Sender: TObject);
var i,x:integer;
begin
if CmbKime.ItemIndex=-1 then begin
MsgUyari('Mesajýn kime atýlacaðýný seçiniz  ...');
exit;
end;

if CmbKime.ItemIndex=0 then x:= CmbKime.Items.Count -1
Else x:= 1 ;
//showmessage(inttostr(x));
For i:=1 to x do begin
if x<>1 then CmbKime.ItemIndex := i ;
//showmessage(Kullanici+' - '+CmbKime.Text);
if Kullanici=CmbKime.Text then continue ;

Qry1.Close;
qry1.SQL.Clear;
Qry1.SQL.Add(' insert into mesaj (kullaniciadi,mesaj,tarih,kime,saat,okundu) values(:kullaniciadi,:mesaj,:tarih,:kime,:saat,:okundu)');
Qry1.Parameters.ParamByName('kullaniciadi').Value := Kullanici ;
Qry1.Parameters.ParamByName('mesaj').Value        := TxtMesaj.Text ;
Qry1.Parameters.ParamByName('tarih').Value :=
IntToStr(YearOf(Date))+'-'+IntToStr(MonthOf(Date))+'-'+IntToStr(DayOf(Date));
Qry1.Parameters.ParamByName('kime').Value   := CmbKime.Text;
Qry1.Parameters.ParamByName('saat').Value :=
IntToStr(HourOf(Now))+':'+IntToStr(MinuteOf(Now))+':'+IntToStr(SecondOf(Now));
Qry1.Parameters.ParamByName('okundu').Value := 'N'  ;
Qry1.Prepared;
Qry1.ExecSQL ;
end;


MesajListele;


end;

procedure TFrmMenu.BtnDovizClick(Sender: TObject);

begin


TRY
{
XMLDocument1.Active:=false;

//XMLDocument1.FileName:='http://www.kktcmerkezbankasi.org/kur/gunluk.xml';
XMLDocument1.FileName:='http://www.mb.gov.ct.tr/kur/gunluk.xml';
XMLDocument1.Active:=true;
XMLDocument1.SaveToFile(GetCurrentDir+'\x.xml');
}

DownloadFile('http://www.mb.gov.ct.tr/kur/gunluk.xml', GetCurrentDir+'\gunluk.xml') ;

AdvDoviz.LoadFromXML(GetCurrentDir+'\gunluk.xml');
AdvDoviz.AutoSize:=True;

MemDoviz.Clear;
MemDoviz.Lines.Add( RightStr('                            ',21)   + LeftStr('Alýþ         ',9)+LeftStr('Satýþ        ',10));
MemDoviz.Lines.Add(' ');
MemDoviz.Lines.Add( RightStr('               '+AdvDoviz.Cells[2,4]+'  ',20) + LeftStr(AdvDoviz.Cells[3,4]+'       ',10)+LeftStr(AdvDoviz.Cells[4,4]+'        ',10))  ;
MemDoviz.Lines.Add( RightStr('               '+AdvDoviz.Cells[23,4]+'  ',20)+ LeftStr(AdvDoviz.Cells[24,4]+'      ',10)+LeftStr(AdvDoviz.Cells[25,4]+'       ',10)) ;
MemDoviz.Lines.Add( RightStr('               '+AdvDoviz.Cells[30,4]+'  ',20)+ LeftStr(AdvDoviz.Cells[31,4]+'      ',10)+LeftStr(AdvDoviz.Cells[32,4]+'       ',10)) ;

AlisDolar   :=  StrToCurr(AdvDoviz.Cells[3,4])  ;
AlisEuro    :=  StrToCurr(AdvDoviz.Cells[24,4]) ;
AlisSterlin :=  StrToCurr(AdvDoviz.Cells[31,4]) ;

EXCEPT
//MsgUyari('Döviz Kurlarýna Eriþilemiyor, Lütfen internet baðlantýnýzý kontrol ediniz ...') ;
MemDoviz.Text := 'Döviz Kurlarýna Eriþilemiyor, Lütfen internet baðlantýnýzý kontrol ediniz ...' ;
END;


end;

procedure TFrmMenu.BtnSigortaislemleriClick(Sender: TObject);
begin
if  assigned(FrmSigortaislemleri) then begin
if (FrmSigortaislemleri.WindowState = wsMinimized ) Then FrmSigortaislemleri.WindowState := wsNormal  ;
FrmSigortaislemleri.BringToFront;
exit;
end;


FrmSigortaislemleri:=TFrmSigortaislemleri.Create(Self);

FrmSigortaislemleri.CurrSigortaSuresi.Value := 12;
FrmSigortaislemleri.DtTrafik1.Date:=Date;
FrmSigortaislemleri.DtTrafik2.Date := IncMonth(FrmSigortaislemleri.DtTrafik1.Date,12) ;

FrmSigortaislemleri.DtTanzim.Date  :=Date;
FrmSigortaislemleri.DtsTrafik1.Time:=Time;
FrmSigortaislemleri.DtsTrafik2.Time:=Time;
FrmSigortaislemleri.DtOdemeTarihi.Date:=Date;
FrmSigortaislemleri.CurrYuzdelik.Value := 25 ;
FrmSigortaislemleri.CurrTaksit.Value := 6 ;


FrmSigortaislemleri.GrbHesap.Visible := False;

FrmSigortaislemleri.BtnKaydet.Enabled   := True ;
FrmSigortaislemleri.BtnGuncelle.Enabled := False;
FrmSigortaislemleri.BtnSil.Enabled      := False ;

FrmSigortaislemleri.MusteriGetir;
FrmSigortaislemleri.Show;

end;

procedure TFrmMenu.BtnSigortaRaporClick(Sender: TObject);
begin
if  assigned(FrmSigortalar) then begin
if (FrmSigortalar.WindowState = wsMinimized ) Then FrmSigortalar.WindowState := wsMaximized  ;
FrmSigortalar.BringToFront;
exit;
end;

FrmSigortalar:=TFrmSigortalar.Create(Self);
FrmSigortalar.PageControl1.TabIndex := 0;
FrmSigortalar.Show;
end;

procedure TFrmMenu.BtnSigortaHesapRaporClick(Sender: TObject);
begin
if  assigned(FrmSigortaHesapRapor) then begin
if (FrmSigortaHesapRapor.WindowState = wsMinimized ) Then FrmSigortaHesapRapor.WindowState := wsMaximized  ;
FrmSigortaHesapRapor.BringToFront;
exit;
end;

FrmSigortaHesapRapor:=TFrmSigortaHesapRapor.Create(Self);
FrmSigortaHesapRapor.MusteriGetir;
FrmSigortaHesapRapor.Show;
end;

procedure TFrmMenu.BtnSigortaUyariClick(Sender: TObject);
begin
if  assigned(FrmSigortaSuresi) then begin
if (FrmSigortaSuresi.WindowState = wsMinimized ) Then FrmSigortaSuresi.WindowState := wsMaximized  ;
FrmSigortaSuresi.BringToFront;
exit;
end;

FrmSigortaSuresi:=TFrmSigortaSuresi.Create(Self);

FrmSigortaSuresi.DtBas1.Date := Date ;
FrmSigortaSuresi.DtBas2.Date := Date + 30 ;

FrmSigortaSuresi.DtBit1.Date := Date ;
FrmSigortaSuresi.DtBit2.Date := Date + 30 ;

FrmSigortaSuresi.Show;
end;

procedure TFrmMenu.Button5Click(Sender: TObject);
begin
PnlAyarlar.Visible := False;
PnlSigorta.Visible := False;
PnlTurizm.Visible  := True;
PnlRapor.Visible  := False;

end;

procedure TFrmMenu.Button6Click(Sender: TObject);
begin
PnlAyarlar.Visible := True;
PnlSigorta.Visible := False;
PnlTurizm.Visible  := False;
PnlRapor.Visible  := False;
end;

procedure TFrmMenu.Button7Click(Sender: TObject);
begin
PnlAyarlar.Visible := False;
PnlSigorta.Visible := True;
PnlTurizm.Visible  := False;
PnlRapor.Visible  := False;
end;

procedure TFrmMenu.Button8Click(Sender: TObject);
begin
PnlAyarlar.Visible := False;
PnlSigorta.Visible := False;
PnlTurizm.Visible  := False;
PnlRapor.Visible  := True;
end;

procedure TFrmMenu.CreateParams(var Params: TCreateParams);
begin
 inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;

function TFrmMenu.DownloadFile(SourceFile, DestFile: string): Boolean;
begin
  try
    Result := UrlDownloadToFile(nil, PChar(SourceFile), PChar(DestFile), 0, nil) = 0;
  except
    Result := False;
  end;
end;

procedure TFrmMenu.BtnSirketHesaplamaClick(Sender: TObject);
begin
if  assigned(FrmHesap) then begin
if (FrmHesap.WindowState = wsMinimized ) Then FrmHesap.WindowState := wsNormal  ;
FrmHesap.BringToFront;
exit;
end;


FrmHesap:=TFrmHesap.Create(Self);

FrmHesap.Show;
end;


procedure TFrmMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;




procedure TFrmMenu.FormShow(Sender: TObject);
var i:integer;
begin
BtnDoviz.Click;

Qry1.Close;
qry1.SQL.Clear;
Qry1.SQL.Add(' select kullaniciadi from yonetim order by kullaniciadi ');
Qry1.open ;
CmbKime.Items.Add('Herkes');
for i:=1 to Qry1.RecordCount do begin
CmbKime.Items.Add(Qry1.FieldByName('kullaniciadi').AsString);
Qry1.Next;
end;

DtGun.Date := Date ;
end;

procedure TFrmMenu.MesajListele;
var i:integer;
begin

AdvMesaj.ClearRows(1,AdvMesaj.RowCount-1);
AdvMesaj.RowCount := 2 ;

Qry1.Close;
qry1.SQL.Clear;
Qry1.SQL.Add(' select * from mesaj where kime=:kime or kullaniciadi=:kullaniciadi and tarih=:tarih  order by id desc');
Qry1.Parameters.ParamByName('kime').Value  := Kullanici;
Qry1.Parameters.ParamByName('kullaniciadi').Value  := Kullanici;
Qry1.Parameters.ParamByName('tarih').Value :=
IntToStr(YearOf(DtGun.Date))+'-'+IntToStr(MonthOf(DtGun.Date))+'-'+IntToStr(DayOf(DtGun.Date));
Qry1.Prepared;
Qry1.open ;

if Qry1.RecordCount<>0  then AdvMesaj.RowCount := Qry1.RecordCount + 1 ;
for i:=1 to AdvMesaj.RowCount-1  do begin
if Kullanici <> Qry1.FieldByName('kullaniciadi').AsString Then begin
   AdvMesaj.AddCheckBox(1,i,False,True);
   AdvMesaj.Cells[1,i] := Qry1.FieldByName('Okundu').AsString ;
end;
if Qry1.FieldByName('Okundu').AsString = 'N' Then AdvMesaj.RowColor[i] := clRed ;
AdvMesaj.Cells[2,i] := Qry1.FieldByName('saat').AsString ;
AdvMesaj.Cells[3,i] := Qry1.FieldByName('kullaniciadi').AsString ;
AdvMesaj.Cells[4,i] := Qry1.FieldByName('kime').AsString ;
AdvMesaj.Cells[5,i] := Qry1.FieldByName('mesaj').AsString ;
AdvMesaj.Cells[6,i] := Qry1.FieldByName('id').AsString ;

qry1.Next;
end;

AdvMesaj.AutoNumberCol(0);


end;

procedure TFrmMenu.Timer1Timer(Sender: TObject);
var x:integer;
begin
//TxtMesaj.Text := IntToStr(StrToInt(TxtMesaj.Text) + 1);
//BtnDoviz.Click;
x:=0;
try
MesajListele;
except
 x:=1;
end;


if x=1 then  begin
dm.Cnn1.Close;
Try
dm.Cnn1.Open();
except

End;
end;


end;

procedure TFrmMenu.AdvDovizDblClick(Sender: TObject);
begin
 ShowMessage( inttostr(AdvDoviz.Col)+','+inttostr(AdvDoviz.Row) );
end;

procedure TFrmMenu.BtnKrediKartiYatirimlariClick(Sender: TObject);
begin
if  assigned(FrmKrediKarti) then begin
if (FrmKrediKarti.WindowState = wsMinimized ) Then FrmKrediKarti.WindowState := wsNormal  ;
FrmKrediKarti.BringToFront;
exit;
end;

FrmKrediKarti:=TFrmKrediKarti.Create(Self);
FrmKrediKarti.Show;

end;

end.
