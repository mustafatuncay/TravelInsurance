unit UntOtelKayit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DB, ADODB,DateUtils,ShellApi;

type
  TFrmOtelKayit = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    BtnKaydet: TButton;
    BtnGuncelle: TButton;
    BtnTemizle: TButton;
    BtnSil: TButton;
    Label2: TLabel;
    TxtOtelAdi: TEdit;
    Label3: TLabel;
    TxtTelefon: TEdit;
    Label6: TLabel;
    Qry1: TADOQuery;
    TxtAdres: TEdit;
    Label12: TLabel;
    TxtEmail: TEdit;
    Label4: TLabel;
    TxtEmail2: TEdit;
    Label5: TLabel;
    TxtFax: TEdit;
    MemNot: TMemo;
    Label7: TLabel;
    Label8: TLabel;
    TxtMsn: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    TxtCepTel: TEdit;
    Txtilgili: TEdit;
    procedure BtnKaydetClick(Sender: TObject);
    procedure BtnTemizleClick(Sender: TObject);
    procedure BtnGuncelleClick(Sender: TObject);
    procedure BtnSilClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TxtEmailDblClick(Sender: TObject);
    procedure TxtEmail2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CreateParams(var Params: TCreateParams); override;
    { Public declarations }
  end;

var
  FrmOtelKayit: TFrmOtelKayit;

implementation

uses UntDm, UntGlobal;

{$R *.dfm}

procedure TFrmOtelKayit.BtnKaydetClick(Sender: TObject);
var TmpSql:string;
begin


if trim(TxtOtelAdi.Text)='' then begin
MsgUyari('Lütfen Otel Adýný Giriniz ...');
exit;
end;

if trim(TxtAdres.Text)='' then begin
MsgUyari('Lütfen Otelin Adresini Giriniz ...');
exit;
end;


Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Select id from Otel where Adi=:Adi  ');
Qry1.Parameters.ParamByName('Adi').Value     := Trim(TxtOtelAdi.Text);
Qry1.Prepared;
Qry1.Open;

if Qry1.RecordCount<>0 then begin
MsgUyari('Kayýtlý Otel, Lütfen Deðiþtiriniz  ...');
exit;
end;


TmpSql := 'insert into Otel (Adi,Telefon,Adres,Email,Email2,Fax,Msn,Notlar,CepTel,ilgili) ' +
' Values' +
'(:Adi,:Telefon,:Adres,:Email,:Email2,:Fax,:Msn,:Notlar,:CepTel,:ilgili)  ' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Adi').Value     := Trim(TxtOtelAdi.Text) ;
Qry1.Parameters.ParamByName('Telefon').Value := Trim(TxtTelefon.Text) ;
Qry1.Parameters.ParamByName('Adres').Value   := Trim(TxtAdres.Text)   ;
Qry1.Parameters.ParamByName('Email').Value   := Trim(TxtEmail.Text)   ;
Qry1.Parameters.ParamByName('Email2').Value  := Trim(TxtEmail2.Text)  ;
Qry1.Parameters.ParamByName('Fax').Value     := Trim(TxtFax.Text)     ;
Qry1.Parameters.ParamByName('Msn').Value     := Trim(TxtMsn.Text)     ;
Qry1.Parameters.ParamByName('Notlar').Value  := Trim(MemNot.Text)     ;
Qry1.Parameters.ParamByName('CepTel').Value  := Trim(TxtCepTel.Text)  ;
Qry1.Parameters.ParamByName('ilgili').Value  := Trim(Txtilgili.Text)  ;
Qry1.Prepared;
Qry1.ExecSQL;

MsgUyari('Kaydedildi  ...');
close;
end;

procedure TFrmOtelKayit.BtnSilClick(Sender: TObject);
var TmpSql:String;
begin

if MsgOnay('Kaydý Silmek Ýstiyormusunuz ?') = False Then exit;

TmpSql:= 'Delete From Otel where id=:id ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('id').Value  := TxtOtelAdi.Tag;
Qry1.Prepared;
Qry1.ExecSQL;

MsgUyari('Kayýt Silindi ... ');
close;
end;

procedure TFrmOtelKayit.BtnGuncelleClick(Sender: TObject);
var TmpSql:string;
begin

if trim(TxtOtelAdi.Text)='' then begin
MsgUyari('Lütfen Otel Adýný Giriniz ...');
exit;
end;

if trim(TxtAdres.Text)='' then begin
MsgUyari('Lütfen Otelin Adresini Giriniz ...');
exit;
end;


Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Select id from Otel where  id<>:id and Adi=:Adi  ');
Qry1.Parameters.ParamByName('Adi').Value := Trim(TxtOtelAdi.Text);
Qry1.Parameters.ParamByName('id').Value  := TxtOtelAdi.Tag;
Qry1.Prepared;
Qry1.Open;

if Qry1.RecordCount<>0 then begin
MsgUyari('Kayýtlý Otel, Lütfen Deðiþtiriniz  ...');
exit;
end;


TmpSql := 'Update Otel set '+
'Adi=:Adi,' +
'Telefon=:Telefon,' +
'Adres=:Adres, '+
'Email=:Email,'+
'Email2=:Email2,'+
'Fax=:Fax,'+
'Msn=:Msn,'+
'Notlar=:Notlar, '+
'CepTel=:CepTel, '+
'ilgili=:ilgili '+

' where id=:id ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Adi').Value     := Trim(TxtOtelAdi.Text) ;
Qry1.Parameters.ParamByName('Telefon').Value := Trim(TxtTelefon.Text) ;
Qry1.Parameters.ParamByName('Adres').Value   := Trim(TxtAdres.Text)   ;
Qry1.Parameters.ParamByName('Email').Value   := Trim(TxtEmail.Text)   ;
Qry1.Parameters.ParamByName('Email2').Value  := Trim(TxtEmail2.Text)  ;
Qry1.Parameters.ParamByName('Fax').Value     := Trim(TxtFax.Text)     ;
Qry1.Parameters.ParamByName('Msn').Value     := Trim(TxtMsn.Text)     ;
Qry1.Parameters.ParamByName('Notlar').Value  := Trim(MemNot.Text)     ;
Qry1.Parameters.ParamByName('CepTel').Value  := Trim(TxtCepTel.Text)  ;
Qry1.Parameters.ParamByName('ilgili').Value  := Trim(Txtilgili.Text)  ;

Qry1.Parameters.ParamByName('id').Value      := TxtOtelAdi.Tag;

Qry1.Prepared;
Qry1.ExecSQL;

MsgUyari('Güncellendi  ...');
close;

end;

procedure TFrmOtelKayit.BtnTemizleClick(Sender: TObject);
begin
TxtCepTel.Clear;
Txtilgili.Clear;
TxtOtelAdi.Clear;
TxtTelefon.Clear;
TxtAdres.Clear;
TxtEmail.Clear;
TxtEmail2.Clear;
TxtFax.Clear;
TxtMsn.Clear;
MemNot.Clear;

TxtOtelAdi.Tag := 0;

BtnKaydet.Enabled :=True ;
BtnGuncelle.Enabled := False;
BtnSil.Enabled := False ;

end;

procedure TFrmOtelKayit.CreateParams(var Params: TCreateParams);
begin
 inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;

procedure TFrmOtelKayit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FrmOtelKayit:= nil;
end;

procedure TFrmOtelKayit.TxtEmail2DblClick(Sender: TObject);
var
  TmpMail: String;
begin
 // pCh := 'mailto:mshkolnik@scalabium.com?subject=your_subject&body=your_body&file="c:\autoexec.bat"';
  TmpMail := 'mailto:'+ TxtEmail2.Text ;
  ShellExecute(0, 'open', PChar(TmpMail), nil, nil, SW_SHOWNORMAL);
end;

procedure TFrmOtelKayit.TxtEmailDblClick(Sender: TObject);
var
  TmpMail: String;
begin
 // pCh := 'mailto:mshkolnik@scalabium.com?subject=your_subject&body=your_body&file="c:\autoexec.bat"';
  TmpMail := 'mailto:'+ TxtEmail.Text ;
  ShellExecute(0, 'open', PChar(TmpMail), nil, nil, SW_SHOWNORMAL);
end;

end.
