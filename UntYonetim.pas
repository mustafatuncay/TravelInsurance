unit UntYonetim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, Grids, AdvObj, BaseGrid, AdvGrid, ExtCtrls,
  ComCtrls, DB, ADODB;

type
  TFrmYonetim = class(TForm)
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
    ChkOdemeOnay: TCheckBox;
    ChkGuncellemeOnay: TCheckBox;
    ChkSilmeOnay: TCheckBox;
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
  FrmYonetim: TFrmYonetim;

implementation

uses UntGlobal;

{$R *.dfm}

procedure TFrmYonetim.AdvListeDblClick(Sender: TObject);
var TmpId:Integer;
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

if Qry1.FieldByName('guncellemeonay').Asstring = 'Y' Then
   ChkGuncellemeOnay.Checked:= True
Else ChkGuncellemeOnay.Checked:= False ;

if Qry1.FieldByName('silmeonay').Asstring = 'Y' Then
   ChkSilmeOnay.Checked:= True
Else ChkSilmeOnay.Checked:= False ;

if Qry1.FieldByName('OdemeOnay').Asstring = 'Y' Then
   ChkOdemeOnay.Checked:= True
Else ChkOdemeOnay.Checked:= False ;

if Qry1.FieldByName('P1').AsInteger = 1 Then
   ChkLbHaklar.Checked[0]:= True
Else ChkLbHaklar.Checked[0]:= False ;

if Qry1.FieldByName('P2').AsInteger = 1 Then
   ChkLbHaklar.Checked[1]:= True
Else ChkLbHaklar.Checked[1]:= False ;

if Qry1.FieldByName('P3').AsInteger = 1 Then
   ChkLbHaklar.Checked[2]:= True
Else ChkLbHaklar.Checked[2]:= False ;

if Qry1.FieldByName('P4').AsInteger = 1 Then
   ChkLbHaklar.Checked[3]:= True
Else ChkLbHaklar.Checked[3]:= False ;

if Qry1.FieldByName('P5').AsInteger = 1 Then
   ChkLbHaklar.Checked[4]:= True
Else ChkLbHaklar.Checked[4]:= False ;

if Qry1.FieldByName('P6').AsInteger = 1 Then
   ChkLbHaklar.Checked[5]:= True
Else ChkLbHaklar.Checked[5]:= False ;

if Qry1.FieldByName('P7').AsInteger = 1 Then
   ChkLbHaklar.Checked[6]:= True
Else ChkLbHaklar.Checked[6]:= False ;

if Qry1.FieldByName('P8').AsInteger = 1 Then
   ChkLbHaklar.Checked[7]:= True
Else ChkLbHaklar.Checked[7]:= False ;

if Qry1.FieldByName('P9').AsInteger = 1 Then
   ChkLbHaklar.Checked[8]:= True
Else ChkLbHaklar.Checked[8]:= False ;

if Qry1.FieldByName('P10').AsInteger = 1 Then
   ChkLbHaklar.Checked[9]:= True
Else ChkLbHaklar.Checked[9]:= False ;

if Qry1.FieldByName('P11').AsInteger = 1 Then
   ChkLbHaklar.Checked[10]:= True
Else ChkLbHaklar.Checked[10]:= False ;

if Qry1.FieldByName('P12').AsInteger = 1 Then
   ChkLbHaklar.Checked[11]:= True
Else ChkLbHaklar.Checked[11]:= False ;

if Qry1.FieldByName('P13').AsInteger = 1 Then
   ChkLbHaklar.Checked[12]:= True
Else ChkLbHaklar.Checked[12]:= False ;

if Qry1.FieldByName('P14').AsInteger = 1 Then
   ChkLbHaklar.Checked[13]:= True
Else ChkLbHaklar.Checked[13]:= False ;

if Qry1.FieldByName('P15').AsInteger = 1 Then
   ChkLbHaklar.Checked[14]:= True
Else ChkLbHaklar.Checked[14]:= False ;

if Qry1.FieldByName('P16').AsInteger = 1 Then
   ChkLbHaklar.Checked[15]:= True
Else ChkLbHaklar.Checked[15]:= False ;

if Qry1.FieldByName('P17').AsInteger = 1 Then
   ChkLbHaklar.Checked[16]:= True
Else ChkLbHaklar.Checked[16]:= False ;


BtnKaydet.Enabled   := False ;
BtnGuncelle.Enabled := True ;
BtnSil.Enabled      := True ;

end;

procedure TFrmYonetim.BtnGuncelleClick(Sender: TObject);
var TmpSql:String;
TmpPersonelId,TmpOgretmenId:integer;
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

'odemeonay=:odemeonay,'+
'guncellemeonay=:guncellemeonay,'+
'silmeonay=:silmeonay,'+
'KullaniciAdi=:KullaniciAdi,'+
'Sifre=:Sifre,'+
'P1=:P1,'+
'P2=:P2,'+
'P3=:P3,'+
'P4=:P4,'+
'P5=:P5,'+
'P6=:P6,'+
'P7=:P7, '+
'P8=:P8, '+
'P9=:P9,'+
'P10=:P10,'+
'P11=:P11,'+
'P12=:P12,'+
'P13=:P13,'+
'P14=:P14,'+
'P15=:P15,'+
'P16=:P16,'+
'P17=:P17 '+

'Where id=:id ' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

if Chkguncellemeonay.Checked=True Then
Qry1.Parameters.ParamByName('guncellemeonay').Value    := 'Y'
Else Qry1.Parameters.ParamByName('guncellemeonay').Value := 'N';

if Chksilmeonay.Checked=True Then
Qry1.Parameters.ParamByName('silmeonay').Value    := 'Y'
Else Qry1.Parameters.ParamByName('silmeonay').Value := 'N';

if ChkOdemeonay.Checked=True Then
Qry1.Parameters.ParamByName('odemeonay').Value    := 'Y'
Else Qry1.Parameters.ParamByName('odemeonay').Value := 'N';


Qry1.Parameters.ParamByName('KullaniciAdi').Value   := Trim(TxtKullaniciAdi.Text) ;
Qry1.Parameters.ParamByName('Sifre').Value          := Trim(TxtSifre.Text) ;

if ChkLbHaklar.Checked[0] Then
Qry1.Parameters.ParamByName('P1').Value    := '1'
Else Qry1.Parameters.ParamByName('P1').Value := '0';

if ChkLbHaklar.Checked[1] Then
Qry1.Parameters.ParamByName('P2').Value    := '1'
Else Qry1.Parameters.ParamByName('P2').Value := '0';

if ChkLbHaklar.Checked[2] Then
Qry1.Parameters.ParamByName('P3').Value    := '1'
Else Qry1.Parameters.ParamByName('P3').Value := '0';

if ChkLbHaklar.Checked[3] Then
Qry1.Parameters.ParamByName('P4').Value      := '1'
Else Qry1.Parameters.ParamByName('P4').Value := '0';

if ChkLbHaklar.Checked[4] Then
Qry1.Parameters.ParamByName('P5').Value    := '1'
Else Qry1.Parameters.ParamByName('P5').Value := '0';

if ChkLbHaklar.Checked[5] Then
Qry1.Parameters.ParamByName('P6').Value    := '1'
Else Qry1.Parameters.ParamByName('P6').Value := '0';

if ChkLbHaklar.Checked[6] Then
Qry1.Parameters.ParamByName('P7').Value    := '1'
Else Qry1.Parameters.ParamByName('P7').Value := '0';

if ChkLbHaklar.Checked[7] Then
Qry1.Parameters.ParamByName('P8').Value      := '1'
Else Qry1.Parameters.ParamByName('P8').Value := '0';

if ChkLbHaklar.Checked[8] Then
Qry1.Parameters.ParamByName('P9').Value    := '1'
Else Qry1.Parameters.ParamByName('P9').Value := '0';

if ChkLbHaklar.Checked[9] Then
Qry1.Parameters.ParamByName('P10').Value    := '1'
Else Qry1.Parameters.ParamByName('P10').Value := '0';

if ChkLbHaklar.Checked[10] Then
Qry1.Parameters.ParamByName('P11').Value    := '1'
Else Qry1.Parameters.ParamByName('P11').Value := '0';

if ChkLbHaklar.Checked[11] Then
Qry1.Parameters.ParamByName('P12').Value    := '1'
Else Qry1.Parameters.ParamByName('P12').Value := '0';

if ChkLbHaklar.Checked[12] Then
Qry1.Parameters.ParamByName('P13').Value    := '1'
Else Qry1.Parameters.ParamByName('P13').Value := '0';

if ChkLbHaklar.Checked[13] Then
Qry1.Parameters.ParamByName('P14').Value    := '1'
Else Qry1.Parameters.ParamByName('P14').Value := '0';

if ChkLbHaklar.Checked[14] Then
Qry1.Parameters.ParamByName('P15').Value    := '1'
Else Qry1.Parameters.ParamByName('P15').Value := '0';

if ChkLbHaklar.Checked[15] Then
Qry1.Parameters.ParamByName('P16').Value    := '1'
Else Qry1.Parameters.ParamByName('P16').Value := '0';

if ChkLbHaklar.Checked[16] Then
Qry1.Parameters.ParamByName('P17').Value    := '1'
Else Qry1.Parameters.ParamByName('P17').Value := '0';


Qry1.Parameters.ParamByName('id').Value := TxtKullaniciAdi.Tag ;

Qry1.Prepared;
Qry1.ExecSQL ;

MsgUyari('Guncellendi ...');

Temizle;


end;
procedure TFrmYonetim.BtnKaydetClick(Sender: TObject);
var TmpSql:String;
TmpPersonelId,TmpOgretmenId:integer;
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
'(guncellemeonay,silmeonay,odemeonay,KullaniciAdi,Sifre,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17)'+
' Values'+
'(:guncellemeonay,:silmeonay,:odemeonay,:KullaniciAdi,:Sifre,:P1,:P2,:P3,:P4,:P5,:P6,:P7,:P8,:P9,:P10,:P11,:P12,:P13,:P14,:P15,:P16,:P17)';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

if Chkguncellemeonay.Checked=True Then
Qry1.Parameters.ParamByName('guncellemeonay').Value    := 'Y'
Else Qry1.Parameters.ParamByName('guncellemeonay').Value := 'N';

if Chksilmeonay.Checked=True Then
Qry1.Parameters.ParamByName('silmeonay').Value    := 'Y'
Else Qry1.Parameters.ParamByName('silmeonay').Value := 'N';

if ChkOdemeonay.Checked=True Then
Qry1.Parameters.ParamByName('odemeonay').Value    := 'Y'
Else Qry1.Parameters.ParamByName('odemeonay').Value := 'N';

Qry1.Parameters.ParamByName('KullaniciAdi').Value          := Trim(TxtKullaniciAdi.Text) ;
Qry1.Parameters.ParamByName('Sifre').Value                 := Trim(TxtSifre.Text) ;

if ChkLbHaklar.Checked[0] Then
Qry1.Parameters.ParamByName('P1').Value    := '1'
Else Qry1.Parameters.ParamByName('P1').Value := '0';

if ChkLbHaklar.Checked[1] Then
Qry1.Parameters.ParamByName('P2').Value    := '1'
Else Qry1.Parameters.ParamByName('P2').Value := '0';

if ChkLbHaklar.Checked[2] Then
Qry1.Parameters.ParamByName('P3').Value    := '1'
Else Qry1.Parameters.ParamByName('P3').Value := '0';

if ChkLbHaklar.Checked[3] Then
Qry1.Parameters.ParamByName('P4').Value      := '1'
Else Qry1.Parameters.ParamByName('P4').Value := '0';

if ChkLbHaklar.Checked[4] Then
Qry1.Parameters.ParamByName('P5').Value    := '1'
Else Qry1.Parameters.ParamByName('P5').Value := '0';

if ChkLbHaklar.Checked[5] Then
Qry1.Parameters.ParamByName('P6').Value    := '1'
Else Qry1.Parameters.ParamByName('P6').Value := '0';

if ChkLbHaklar.Checked[6] Then
Qry1.Parameters.ParamByName('P7').Value    := '1'
Else Qry1.Parameters.ParamByName('P7').Value := '0';

if ChkLbHaklar.Checked[7] Then
Qry1.Parameters.ParamByName('P8').Value      := '1'
Else Qry1.Parameters.ParamByName('P8').Value := '0';

if ChkLbHaklar.Checked[8] Then
Qry1.Parameters.ParamByName('P9').Value    := '1'
Else Qry1.Parameters.ParamByName('P9').Value := '0';

if ChkLbHaklar.Checked[9] Then
Qry1.Parameters.ParamByName('P10').Value    := '1'
Else Qry1.Parameters.ParamByName('P10').Value := '0';

if ChkLbHaklar.Checked[10] Then
Qry1.Parameters.ParamByName('P11').Value    := '1'
Else Qry1.Parameters.ParamByName('P11').Value := '0';

if ChkLbHaklar.Checked[11] Then
Qry1.Parameters.ParamByName('P12').Value    := '1'
Else Qry1.Parameters.ParamByName('P12').Value := '0';

if ChkLbHaklar.Checked[12] Then
Qry1.Parameters.ParamByName('P13').Value    := '1'
Else Qry1.Parameters.ParamByName('P13').Value := '0';

if ChkLbHaklar.Checked[13] Then
Qry1.Parameters.ParamByName('P14').Value    := '1'
Else Qry1.Parameters.ParamByName('P14').Value := '0';

if ChkLbHaklar.Checked[14] Then
Qry1.Parameters.ParamByName('P15').Value    := '1'
Else Qry1.Parameters.ParamByName('P15').Value := '0';

if ChkLbHaklar.Checked[15] Then
Qry1.Parameters.ParamByName('P16').Value    := '1'
Else Qry1.Parameters.ParamByName('P16').Value := '0';

if ChkLbHaklar.Checked[16] Then
Qry1.Parameters.ParamByName('P17').Value    := '1'
Else Qry1.Parameters.ParamByName('P17').Value := '0';

Qry1.Prepared;
Qry1.ExecSQL;

MsgUyari('Kaydedildi ... ');

Temizle;

end;


procedure TFrmYonetim.BtnSilClick(Sender: TObject);
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

procedure TFrmYonetim.BtnYeniClick(Sender: TObject);
begin
Temizle;
end;

procedure TFrmYonetim.ChkSelectClick(Sender: TObject);
var i:integer;
begin

for i := 0 to ChkLbHaklar.Items.Count - 1 do begin
    ChkLbHaklar.Checked[i] := ChkSelect.Checked ;
end;

end;

procedure TFrmYonetim.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;

procedure TFrmYonetim.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Action := caFree;
FrmYonetim:= nil;

end;

procedure TFrmYonetim.FormShow(Sender: TObject);
begin
Temizle;
end;

procedure TFrmYonetim.temizle;
var i:integer;
begin

TxtKullaniciAdi.Tag:=0;

TxtKullaniciAdi.Clear;
TxtSifre.Clear;
TxtTekrarSifre.Clear;

ChkSelect.Checked := False;
Chkodemeonay.Checked := False;
Chkguncellemeonay.Checked := False;
ChkSilmeonay.Checked := False;
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
