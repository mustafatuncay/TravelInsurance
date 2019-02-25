unit UntTurFirma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DB, ADODB,DateUtils;

type
  TFrmTurFirma = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    BtnKaydet: TButton;
    BtnGuncelle: TButton;
    BtnTemizle: TButton;
    BtnSil: TButton;
    Label2: TLabel;
    TxtFirmaAdi: TEdit;
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
    procedure BtnKaydetClick(Sender: TObject);
    procedure BtnTemizleClick(Sender: TObject);
    procedure BtnGuncelleClick(Sender: TObject);
    procedure BtnSilClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure CreateParams(var Params: TCreateParams); override;
    { Public declarations }
  end;

var
  FrmTurFirma: TFrmTurFirma;

implementation

uses UntDm, UntGlobal;

{$R *.dfm}

procedure TFrmTurFirma.BtnKaydetClick(Sender: TObject);
var TmpSql:string;
begin


if trim(TxtFirmaAdi.Text)='' then begin
MsgUyari('Lütfen Tur Firma Adýný Giriniz ...');
exit;
end;



Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Select id from TurFirma where Adi=:Adi  ');
Qry1.Parameters.ParamByName('Adi').Value     := Trim(TxtFirmaAdi.Text);
Qry1.Prepared;
Qry1.Open;

if Qry1.RecordCount<>0 then begin
MsgUyari('Kayýtlý Tur Firma, Lütfen Deðiþtiriniz  ...');
exit;
end;


TmpSql := 'insert into TurFirma (Adi,Tel,Adres,Email1,Email2,Fax,Msn,Notlar) ' +
' Values' +
'(:Adi,:Tel,:Adres,:Email1,:Email2,:Fax,:Msn,:Notlar)  ' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Adi').Value     := Trim(TxtFirmaAdi.Text) ;
Qry1.Parameters.ParamByName('Tel').Value     := Trim(TxtTelefon.Text)  ;
Qry1.Parameters.ParamByName('Adres').Value   := Trim(TxtAdres.Text)    ;
Qry1.Parameters.ParamByName('Email1').Value  := Trim(TxtEmail.Text)    ;
Qry1.Parameters.ParamByName('Email2').Value  := Trim(TxtEmail2.Text)   ;
Qry1.Parameters.ParamByName('Fax').Value     := Trim(TxtFax.Text)      ;
Qry1.Parameters.ParamByName('Msn').Value     := Trim(TxtMsn.Text)      ;
Qry1.Parameters.ParamByName('Notlar').Value     := Trim(MemNot.Text)   ;
Qry1.Prepared;
Qry1.ExecSQL;

MsgUyari('Kaydedildi  ...');
close;
end;

procedure TFrmTurFirma.BtnSilClick(Sender: TObject);
var TmpSql:String;
begin

if MsgOnay('Kaydý Silmek Ýstiyormusunuz ?') = False Then exit;

TmpSql:= 'Delete From TurFirma  where id=:id ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('id').Value  := TxtFirmaAdi.Tag;
Qry1.Prepared;
Qry1.ExecSQL;

MsgUyari('Kayýt Silindi ... ');
close;
end;

procedure TFrmTurFirma.BtnGuncelleClick(Sender: TObject);
var TmpSql:string;
begin

if trim(TxtFirmaAdi.Text)='' then begin
MsgUyari('Lütfen Tur Firma Adýný Giriniz ...');
exit;
end;


Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Select id from TurFirma where  id<>:id and Adi=:Adi  ');
Qry1.Parameters.ParamByName('Adi').Value := Trim(TxtFirmaAdi.Text);
Qry1.Parameters.ParamByName('id').Value  := TxtFirmaAdi.Tag;
Qry1.Prepared;
Qry1.Open;

if Qry1.RecordCount<>0 then begin
MsgUyari('Kayýtlý Tur Firma , Lütfen Deðiþtiriniz  ...');
exit;
end;


TmpSql := 'Update TurFirma set '+
'Adi=:Adi,' +
'Tel=:Tel,' +
'Adres=:Adres, '+
'Email1=:Email1,'+
'Email2=:Email2,'+
'Fax=:Fax,'+
'Msn=:Msn,'+
'Notlar=:Notlar '+
' where id=:id ';


Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Adi').Value     := Trim(TxtFirmaAdi.Text) ;
Qry1.Parameters.ParamByName('Tel').Value := Trim(TxtTelefon.Text)  ;
Qry1.Parameters.ParamByName('Adres').Value   := Trim(TxtAdres.Text)    ;
Qry1.Parameters.ParamByName('Email1').Value   := Trim(TxtEmail.Text)    ;
Qry1.Parameters.ParamByName('Email2').Value  := Trim(TxtEmail2.Text)   ;
Qry1.Parameters.ParamByName('Fax').Value     := Trim(TxtFax.Text)      ;
Qry1.Parameters.ParamByName('Msn').Value     := Trim(TxtMsn.Text)      ;
Qry1.Parameters.ParamByName('Notlar').Value  := Trim(MemNot.Text)      ;
Qry1.Parameters.ParamByName('id').Value      := TxtFirmaAdi.Tag        ;
Qry1.Prepared;
Qry1.ExecSQL;

MsgUyari('Güncellendi  ...');
close;

end;

procedure TFrmTurFirma.BtnTemizleClick(Sender: TObject);
begin
TxtFirmaAdi.Clear;
TxtTelefon.Clear;
TxtAdres.Clear;
TxtEmail.Clear;
TxtEmail2.Clear;
TxtFax.Clear;
TxtMsn.Clear;
MemNot.Clear;

TxtFirmaAdi.Tag := 0;

BtnKaydet.Enabled :=True ;
BtnGuncelle.Enabled := False;
BtnSil.Enabled := False ;

end;

procedure TFrmTurFirma.CreateParams(var Params: TCreateParams);
begin
 inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;

procedure TFrmTurFirma.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FrmTurFirma:= nil;
end;

end.
