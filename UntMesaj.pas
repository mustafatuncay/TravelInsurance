unit UntMesaj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, Grids, AdvObj, BaseGrid, AdvGrid, ExtCtrls,
  ComCtrls, DB, ADODB;

type
  TFrmMesaj = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    AdvListe: TAdvStringGrid;
    ChkLbHaklar: TCheckListBox;
    BtnKaydet: TButton;
    BtnGuncelle: TButton;
    BtnSil: TButton;
    BtnYeni: TButton;
    TxtKullaniciAdi: TEdit;
    TxtSifre: TEdit;
    TxtTekrarSifre: TEdit;
    ChkSelect: TCheckBox;
    Panel1: TPanel;
    Label6: TLabel;
    Qry1: TADOQuery;
    procedure BtnKaydetClick(Sender: TObject);
    procedure ChkSelectClick(Sender: TObject);
    procedure AdvListeDblClick(Sender: TObject);
    procedure BtnYeniClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSilClick(Sender: TObject);
    procedure BtnGuncelleClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure temizle;
    procedure CreateParams(var Params: TCreateParams); override;
    { Public declarations }
  end;

var
  FrmMesaj: TFrmMesaj;

implementation

uses UntGlobal;

{$R *.dfm}

procedure TFrmMesaj.AdvListeDblClick(Sender: TObject);

begin

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Select * from Yonetim where id=:id ');
Qry1.Parameters.ParamByName('id').Value    := AdvListe.Cells[3,AdvListe.Row] ;
Qry1.Prepared;
Qry1.Open;

TxtKullaniciAdi.Tag := Qry1.FieldByName('id').AsInteger  ;

TxtKullaniciAdi.Text := Qry1.FieldByName('KullaniciAdi').AsString ;
TxtSifre.Text        := Qry1.FieldByName('Sifre').AsString ;
TxtTekrarSifre.Text  := Qry1.FieldByName('Sifre').AsString ;


if Qry1.FieldByName('PMusteriKayit').AsInteger = 1 Then
   ChkLbHaklar.Checked[0]:= True
Else ChkLbHaklar.Checked[0]:= False ;

if Qry1.FieldByName('PSatisRezervasyon').AsInteger = 1 Then
   ChkLbHaklar.Checked[1]:= True
Else ChkLbHaklar.Checked[1]:= False ;

if Qry1.FieldByName('PGiderler').AsInteger = 1 Then
   ChkLbHaklar.Checked[2]:= True
Else ChkLbHaklar.Checked[2]:= False ;

if Qry1.FieldByName('PTanimlamalar').AsInteger = 1 Then
   ChkLbHaklar.Checked[3]:= True
Else ChkLbHaklar.Checked[3]:= False ;

if Qry1.FieldByName('PKrediKartiYatirimlari').AsInteger = 1 Then
   ChkLbHaklar.Checked[4]:= True
Else ChkLbHaklar.Checked[4]:= False ;

if Qry1.FieldByName('PRaporlar').AsInteger = 1 Then
   ChkLbHaklar.Checked[5]:= True
Else ChkLbHaklar.Checked[5]:= False ;

if Qry1.FieldByName('PYonetimAyarlari').AsInteger = 1 Then
   ChkLbHaklar.Checked[6]:= True
Else ChkLbHaklar.Checked[6]:= False ;

if Qry1.FieldByName('PObsiyonlar').AsInteger = 1 Then
   ChkLbHaklar.Checked[7]:= True
Else ChkLbHaklar.Checked[7]:= False ;

if Qry1.FieldByName('PYedekAlma').AsInteger = 1 Then
   ChkLbHaklar.Checked[8]:= True
Else ChkLbHaklar.Checked[8]:= False ;

BtnKaydet.Enabled   := False ;
BtnGuncelle.Enabled := True ;
BtnSil.Enabled      := True ;

end;

procedure TFrmMesaj.BtnGuncelleClick(Sender: TObject);
var TmpSql:String;
begin

if trim(TxtKullaniciAdi.Text) = '' Then begin
MsgUyari('Lütfen , Kullanýcý Adýný Giriniz ... !!! ');
exit;
end;

if trim(TxtSifre.Text) = '' Then begin
MsgUyari('Lütfen , Þifre Giriniz ... !!! ');
exit;
end;

if trim(TxtTekrarSifre.Text) = '' Then begin
MsgUyari('Lütfen , Þifre için gerekli yerleri doldurunuz ... !!! ');
exit;
end;

if trim(TxtTekrarSifre.Text) <> trim(TxtSifre.Text) Then begin
MsgUyari('Lütfen , Þifrenizi Tekrar Giriniz ... !!! ');
TxtSifre.Clear;
TxtTekrarSifre.Clear;
TxtSifre.SetFocus;
exit;
end;

qry1.Close;
qry1.SQL.Clear;
qry1.SQL.Add('Select id from Yonetim where id<>:id and KullaniciAdi=:KullaniciAdi ');
Qry1.Parameters.ParamByName('KullaniciAdi').Value := Trim(TxtKullaniciAdi.Text) ;
Qry1.Parameters.ParamByName('id').Value := TxtKullaniciAdi.Tag ;
qry1.Prepared;
qry1.open;
if qry1.RecordCount <> 0 then Begin
MsgUyari('Kullanýcý Adý Mevcut ...');
exit;
end;

TmpSql := 'Update Yonetim Set ' +

'KullaniciAdi=:KullaniciAdi,'+
'Sifre=:Sifre,'+
'PMusteriKayit=:PMusteriKayit,'+
'PSatisRezervasyon=:PSatisRezervasyon,'+
'PGiderler=:PGiderler,'+
'PTanimlamalar=:PTanimlamalar,'+
'PKrediKartiYatirimlari=:PKrediKartiYatirimlari,'+
'PRaporlar=:PRaporlar,'+
'PYonetimAyarlari=:PYonetimAyarlari, '+
'PObsiyonlar=:PObsiyonlar, '+
'PYedekAlma=:PYedekAlma '+

'Where id=:id ' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('KullaniciAdi').Value   := Trim(TxtKullaniciAdi.Text) ;
Qry1.Parameters.ParamByName('Sifre').Value          := Trim(TxtSifre.Text) ;

if ChkLbHaklar.Checked[0] Then
Qry1.Parameters.ParamByName('PMusteriKayit').Value    := 1
Else Qry1.Parameters.ParamByName('PMusteriKayit').Value := 0;

if ChkLbHaklar.Checked[1] Then
Qry1.Parameters.ParamByName('PSatisRezervasyon').Value    := 1
Else Qry1.Parameters.ParamByName('PSatisRezervasyon').Value := 0;

if ChkLbHaklar.Checked[2] Then
Qry1.Parameters.ParamByName('PGiderler').Value    := 1
Else Qry1.Parameters.ParamByName('PGiderler').Value := 0;

if ChkLbHaklar.Checked[3] Then
Qry1.Parameters.ParamByName('PTanimlamalar').Value      := 1
Else Qry1.Parameters.ParamByName('PTanimlamalar').Value := 0;

if ChkLbHaklar.Checked[4] Then
Qry1.Parameters.ParamByName('PKrediKartiYatirimlari').Value    := 1
Else Qry1.Parameters.ParamByName('PKrediKartiYatirimlari').Value := 0;

if ChkLbHaklar.Checked[5] Then
Qry1.Parameters.ParamByName('PRaporlar').Value    := 1
Else Qry1.Parameters.ParamByName('PRaporlar').Value := 0;

if ChkLbHaklar.Checked[6] Then
Qry1.Parameters.ParamByName('PYonetimAyarlari').Value    := 1
Else Qry1.Parameters.ParamByName('PYonetimAyarlari').Value := 0;

if ChkLbHaklar.Checked[7] Then
Qry1.Parameters.ParamByName('PObsiyonlar').Value      := 1
Else Qry1.Parameters.ParamByName('PObsiyonlar').Value := 0;

if ChkLbHaklar.Checked[8] Then
Qry1.Parameters.ParamByName('PYedekAlma').Value    := 1
Else Qry1.Parameters.ParamByName('PYedekAlma').Value := 0;

Qry1.Parameters.ParamByName('id').Value := TxtKullaniciAdi.Tag ;

Qry1.Prepared;
Qry1.ExecSQL ;

MsgUyari('Guncellendi ...');

Temizle;


end;
procedure TFrmMesaj.BtnKaydetClick(Sender: TObject);
var TmpSql:String;

begin

if trim(TxtKullaniciAdi.Text) = '' Then begin
MsgUyari('Lütfen , Kullanýcý Adýný Giriniz ... !!! ');
exit;
end;

if trim(TxtSifre.Text) = '' Then begin
MsgUyari('Lütfen , Þifre Giriniz ... !!! ');
exit;
end;

if trim(TxtTekrarSifre.Text) = '' Then begin
MsgUyari('Lütfen , Þifre için gerekli yerleri doldurunuz ... !!! ');
exit;
end;

if trim(TxtTekrarSifre.Text) <> trim(TxtSifre.Text) Then begin
MsgUyari('Lütfen , Þifrenizi Tekrar Giriniz ... !!! ');
TxtSifre.Clear;
TxtTekrarSifre.Clear;
TxtSifre.SetFocus;
exit;
end;

qry1.Close;
qry1.SQL.Clear;
qry1.SQL.Add('Select id from Yonetim where KullaniciAdi=:KullaniciAdi ');
Qry1.Parameters.ParamByName('KullaniciAdi').Value := Trim(TxtKullaniciAdi.Text) ;
qry1.Prepared;
qry1.open;
if qry1.RecordCount <> 0 then Begin
MsgUyari('Kullanýcý Adý Mevcut ...');
exit;
end;

TmpSql := 'Insert Into Yonetim ' +
'(KullaniciAdi,Sifre,PMusteriKayit,PSatisRezervasyon,PGiderler,PTanimlamalar,PKrediKartiYatirimlari,PRaporlar,PYonetimAyarlari,PObsiyonlar,PYedekAlma) '+
' Values'+
'(:KullaniciAdi,:Sifre,:PMusteriKayit,:PSatisRezervasyon,:PGiderler,:PTanimlamalar,:PKrediKartiYatirimlari,:PRaporlar,:PYonetimAyarlari,:PObsiyonlar,:PYedekAlma) ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('KullaniciAdi').Value          := Trim(TxtKullaniciAdi.Text) ;
Qry1.Parameters.ParamByName('Sifre').Value                 := Trim(TxtSifre.Text) ;

if ChkLbHaklar.Checked[0] Then
Qry1.Parameters.ParamByName('PMusteriKayit').Value    := 1
Else Qry1.Parameters.ParamByName('PMusteriKayit').Value := 0;

if ChkLbHaklar.Checked[1] Then
Qry1.Parameters.ParamByName('PSatisRezervasyon').Value    := 1
Else Qry1.Parameters.ParamByName('PSatisRezervasyon').Value := 0;

if ChkLbHaklar.Checked[2] Then
Qry1.Parameters.ParamByName('PGiderler').Value    := 1
Else Qry1.Parameters.ParamByName('PGiderler').Value := 0;

if ChkLbHaklar.Checked[3] Then
Qry1.Parameters.ParamByName('PTanimlamalar').Value    := 1
Else Qry1.Parameters.ParamByName('PTanimlamalar').Value := 0;

if ChkLbHaklar.Checked[4] Then
Qry1.Parameters.ParamByName('PKrediKartiYatirimlari').Value    := 1
Else Qry1.Parameters.ParamByName('PKrediKartiYatirimlari').Value := 0;

if ChkLbHaklar.Checked[5] Then
Qry1.Parameters.ParamByName('PRaporlar').Value    := 1
Else Qry1.Parameters.ParamByName('PRaporlar').Value := 0;

if ChkLbHaklar.Checked[6] Then
Qry1.Parameters.ParamByName('PYonetimAyarlari').Value    := 1
Else Qry1.Parameters.ParamByName('PYonetimAyarlari').Value := 0;

if ChkLbHaklar.Checked[7] Then
Qry1.Parameters.ParamByName('PObsiyonlar').Value    := 1
Else Qry1.Parameters.ParamByName('PObsiyonlar').Value := 0;

if ChkLbHaklar.Checked[8] Then
Qry1.Parameters.ParamByName('PYedekAlma').Value    := 1
Else Qry1.Parameters.ParamByName('PYedekAlma').Value := 0;

Qry1.Prepared;
Qry1.ExecSQL;

MsgUyari('Kaydedildi ... ');

Temizle;

end;


procedure TFrmMesaj.BtnSilClick(Sender: TObject);
begin
if TxtKullaniciAdi.Tag = 0 Then begin
MsgUyari('Kayýt Mevcut Deðil ... !!! ');
exit;
end;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Delete from Yonetim where id =:id');
Qry1.Parameters.ParamByName('id').Value := TxtKullaniciAdi.Tag ;
Qry1.Prepared;
Qry1.ExecSQL;

MsgUyari('Kayýt Silindi ...');

Temizle;
end;

procedure TFrmMesaj.BtnYeniClick(Sender: TObject);
begin
Temizle;
end;

procedure TFrmMesaj.ChkSelectClick(Sender: TObject);
var i:integer;
begin

for i := 0 to ChkLbHaklar.Items.Count - 1 do begin
    ChkLbHaklar.Checked[i] := ChkSelect.Checked ;
end;

end;

procedure TFrmMesaj.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;

procedure TFrmMesaj.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Action := caFree;
FrmMesaj:= nil;

end;

procedure TFrmMesaj.FormShow(Sender: TObject);
begin
Temizle;
end;

procedure TFrmMesaj.temizle;
var i:integer;
begin

TxtKullaniciAdi.Tag:=0;

TxtKullaniciAdi.Clear;
TxtSifre.Clear;
TxtTekrarSifre.Clear;

ChkSelect.Checked := False;

for i:=0 to ChkLbHaklar.Items.Count-1 do
ChkLbHaklar.Checked[i] := False ;

AdvListe.ClearRows(1,AdvListe.RowCount-1);
AdvListe.RowCount := 2 ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Select id,KullaniciAdi,Sifre from Yonetim ');
Qry1.Open;

if Qry1.RecordCount <> 0  then
AdvListe.RowCount := Qry1.RecordCount + 1;

for i:=1 to Qry1.RecordCount do begin

AdvListe.Cells[1,i] := Qry1.FieldByName('KullaniciAdi').AsString ;
AdvListe.Cells[2,i] := Qry1.FieldByName('Sifre').AsString ;
AdvListe.Cells[3,i] := Qry1.FieldByName('id').AsString ;

Qry1.Next;
end;

AdvListe.AutoNumberCol(0);

BtnKaydet.Enabled   := True ;
BtnGuncelle.Enabled := False ;
BtnSil.Enabled      := False ;
end;

end.
