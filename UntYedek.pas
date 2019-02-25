unit UntYedek;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, MoneyEdit, ComCtrls,DateUtils,ShellApi,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdSMTPBase, IdBaseComponent,  Gauges, IdMessageClient, IdSMTP, IdMessage,IdAttachment,IdText,
  FileCtrl;
  //IdMessageClient, IdSMTPBase, IdSMTP, IdBaseComponent, IdMessage, Gauges,IdAttachment,IdText,IdAttachmentFile;

type
  TFrmYedekAlma = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    BtnKaydet: TButton;
    BtnGuncelle: TButton;
    BtnTemizle: TButton;
    BtnSil: TButton;
    Label2: TLabel;
    CmbGiderTuru: TComboBox;
    Qry1: TADOQuery;
    DtTarih: TDateTimePicker;
    MemAciklama: TMemo;
    CurrMiktar: TMoneyEdit;
    Label10: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Gauge1: TGauge;
    IdMessage1: TIdMessage;
    IdSMTP1: TIdSMTP;
    Button3: TButton;
    Button4: TButton;
    FileListBox1: TFileListBox;
    procedure BtnKaydetClick(Sender: TObject);
    procedure BtnTemizleClick(Sender: TObject);
    procedure BtnGuncelleClick(Sender: TObject);
    procedure BtnSilClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
   procedure CreateParams(var Params: TCreateParams); override;
    { Public declarations }
  end;

var
  FrmYedekAlma: TFrmYedekAlma;

implementation

uses UntGlobal;

{$R *.dfm}

procedure TFrmYedekAlma.BtnGuncelleClick(Sender: TObject);
var TmpSql:string;
begin

if CmbGiderTuru.Text = '' then begin
MsgUyari('Lürfen gider türünü seçiniz ...');
exit;
end;

if CurrMiktar.Value = 0 then begin
MsgUyari('Lürfen miktarý giriniz ...');
exit;
end;

TmpSql:= 'Update gider set '+
'GiderTuru=:GiderTuru,'+
'Tarih=:Tarih,'+
'Miktar=:Miktar,'+
'Aciklama=:Aciklama '+
' where id=:id ' ;


Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('GiderTuru').Value := CmbGiderTuru.Text ;
Qry1.Parameters.ParamByName('Tarih').Value  := IntToStr(YearOf(DtTarih.Date))+'-'+
                                               IntToStr(MonthOf(DtTarih.Date))+'-'+
                                               IntToStr(DayOf(DtTarih.Date));
Qry1.Parameters.ParamByName('Miktar').Value := CurrMiktar.Value ;
Qry1.Parameters.ParamByName('Aciklama').Value := MemAciklama.Text ;

Qry1.Parameters.ParamByName('id').Value := CmbGiderTuru.Tag ;

Qry1.Prepared;
Qry1.ExecSQL;

MsgUyari('Güncellendi ...') ;

end;


procedure TFrmYedekAlma.BtnKaydetClick(Sender: TObject);
var TmpSql:string;
begin

if CmbGiderTuru.Text = '' then begin
MsgUyari('Lürfen gider türünü seçiniz ...');
exit;
end;

if CurrMiktar.Value = 0 then begin
MsgUyari('Lürfen miktarý giriniz ...');
exit;
end;

TmpSql:= 'insert into gider (GiderTuru,Tarih,Miktar,Aciklama) Values(:GiderTuru,:Tarih,:Miktar,:Aciklama)' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('GiderTuru').Value := CmbGiderTuru.Text ;
Qry1.Parameters.ParamByName('Tarih').Value  := IntToStr(YearOf(DtTarih.Date))+'-'+
                                               IntToStr(MonthOf(DtTarih.Date))+'-'+
                                               IntToStr(DayOf(DtTarih.Date));
Qry1.Parameters.ParamByName('Miktar').Value := CurrMiktar.Value ;
Qry1.Parameters.ParamByName('Aciklama').Value := MemAciklama.Text ;

Qry1.Prepared;
Qry1.ExecSQL;

MsgUyari('Kaydedildi ...') ;

end;

procedure TFrmYedekAlma.BtnSilClick(Sender: TObject);
var TmpSql:String;
begin

if MsgOnay('Kaydý Silmek Ýstiyormusunuz ?') = False Then exit;

TmpSql:= 'Delete From gider where id=:id ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('id').Value  := CmbGiderTuru.Tag;
Qry1.Prepared;
Qry1.ExecSQL;

MsgUyari('Kayýt Silindi ... ');

end;

procedure TFrmYedekAlma.BtnTemizleClick(Sender: TObject);
begin
DtTarih.Date := Date ;
CurrMiktar.Value := 0 ;
MemAciklama.Clear;
CmbGiderTuru.ItemIndex := 0;
CmbGiderTuru.Tag := 0;

BtnKaydet.Enabled := True;
BtnGuncelle.Enabled := False;
BtnSil.Enabled := False;


end;

procedure TFrmYedekAlma.Button1Click(Sender: TObject);
begin
ShellExecute(Handle, 'open', PChar('c:\dosya\backup.bat'), nil,nil, SW_SHOWNORMAL);
ShellExecute(Handle, 'open', PChar('c:\dosya\zip.bat'), nil,nil, SW_SHOWNORMAL);

end;

procedure TFrmYedekAlma.Button2Click(Sender: TObject);
var
  IdSMTP               : TIdSMTP;
  IdMessage            : TIdMessage;
//  HTMLpart             : TIdText;
//  Attachment           : TIdAttachment;
  i,x                  : integer;


//    IdSMTP               : TIdSMTP;
 // IdMessage            : TIdMessage;
 // HTMLpart             : TIdText;
 // Attachment           : TIdAttachment;
 // i,x                  : integer;


  dosya,TmpSql : string;
begin
{
Screen.Cursor:=crHourGlass;

//Gauge1.MaxValue := TmpQry.RecordCount;

      // Mail Server Ayarlarý
      IdSMTP          := TIdSMTP.Create(Nil);
      IdSMTP.AuthType := satDefault;           //(satNone, satDefault, satSASL)
      IdSMTP.Host     := 'mail.aoa.edu.tr'; // sunucu adý (örn : mail.delphiturkiye.com
      IdSMTP.Username := 'mustafa.tuncay@aoa.edu.tr'; // kullanýcý adý
      IdSMTP.Password := 'mtk125'; // mail þifresi
      IdSMTP.Port := 25 ;
      IdSMTP.Connect;
      IdSMTP.Authenticate;

      // Mail Body iþlemleri
      IdMessage := TIdMessage.Create( nil );
      IdMessage.From.Name  := 'Mustafa Tuncay'; //Gönderen adý soyadý
      IdMessage.From.Address := 'mustafa.tuncay@aoa.edu.tr';//edmkadi.Text; // gönderen mail adresi

      IdMessage.Recipients.Add;
      IdMessage.Recipients[0].Address := 'mustafa0tuncay@gmail.com' ;

      IdMessage.Subject        := 'Deneme 123' ; // mail konusu
      IdMessage.ContentType    := 'text/plain';
      IdMessage.CharSet        := 'UTF-8'; // karakter seti

      HTMLpart := TIdText.Create( IdMessage.MessageParts );
      HTMLpart.ContentType     := 'text/plain';
      HTMLpart.Body.Text       := 'Deneme 456'; // mailin içeriði body kýsmý
      HTMLpart.ContentTransfer := 'quoted-printable';

      HTMLpart := TIdText.Create( IdMessage.MessageParts );
      HTMLpart.ContentType     := 'text/html';
      HTMLpart.ContentTransfer := 'quoted-printable';
      HTMLpart.Body := MemAciklama.Lines ;


      dosya :='c:\dosya\dokuzeylul.sql';

      //GetDBbinary(dosya,'attach',qry1);
                                                                 //, dosya
     // Attachment := TIdAttachment.Create ( IdMessage.MessageParts );
     // Attachment.ContentDisposition := 'attachment';
     // Attachment.ExtraHeaders.Values['content-id'] := dosya; // ekli dosya göndermek için dosyanýn bulunduðu yol
     TIdAttachment.Create (IdMessage.MessageParts.Items,dosya );
      IdSMTP.Send(IdMessage);
     // lboxlog.Items.Add(tmpqry.fieldbyname('name').AsString  +' '+ tmpqry.fieldbyname('surname').AsString+' ('+Qry1.fieldbyname('attachname').AsString+') '+'COMPLETED !!!') ;


      IdSMTP.Disconnect;
     // Attachment.Free;
      IdMessage.Free;
      IdSMTP.Free;

      //qry1.Next;
      }
     end;

procedure TFrmYedekAlma.Button3Click(Sender: TObject);
var
  IdSMTP               : TIdSMTP;
  IdMessage            : TIdMessage;
//  HTMLpart             : TIdText;
//  Attachment           : TIdAttachmentFile;
  i,x                  : integer;

  dosya,TmpSql : string;
begin

   {   // Mail Server Ayarlarý
      IdSMTP          := TIdSMTP.Create(Nil);
      IdSMTP1.AuthType := satNone;
      IdSMTP.Host     := 'mail.aoa.edu.tr';
      IdSMTP.Username := 'mustafa.tuncay@aoa.edu.tr';
      IdSMTP.Password := 'mtk125';
      IdSMTP.Port := 25 ;
      IdSMTP.Connect;
      IdSMTP.Authenticate;

      // Mail Body iþlemleri
      IdMessage := TIdMessage.Create( nil );
      IdMessage.From.Name  := 'Mustafa Tuncay' ;//Gönderen adý soyadý
      IdMessage.From.Address := 'mustafa.tuncay@aoa.edu.tr';//edmkadi.Text; // gönderen mail adresi

      IdMessage.Recipients.Add;
      IdMessage.Recipients[0].Address := 'mustafa0tuncay@gmail.com';

      IdMessage.Subject        := 'konu 1234'; // mail konusu
      IdMessage.ContentType    := 'text/plain';
      IdMessage.CharSet        := 'UTF-8'; // karakter seti

      HTMLpart := TIdText.Create( IdMessage.MessageParts );
      HTMLpart.ContentType     := 'text/plain';
      HTMLpart.Body.Text       := 'Body 123'; // mailin içeriði body kýsmý
      HTMLpart.ContentTransfer := 'quoted-printable';

      HTMLpart := TIdText.Create( IdMessage.MessageParts );
      HTMLpart.ContentType     := 'text/html';
      HTMLpart.ContentTransfer := 'quoted-printable';
      HTMLpart.Body := MemAciklama.Lines ;


      dosya :='c:\dosya\x.sql';

     // GetDBbinary(dosya,'attach',qry1);

      Attachment := TIdAttachmentFile.Create( IdMessage.MessageParts, dosya );
      Attachment.ContentDisposition := 'attachment';
      Attachment.ExtraHeaders.Values['content-id'] := dosya; // ekli dosya göndermek için dosyanýn bulunduðu yol

      IdSMTP.Send(IdMessage);

      IdSMTP.Disconnect;

      Attachment.Free;
      IdMessage.Free;
      IdSMTP.Free;



             }


end;


procedure TFrmYedekAlma.Button4Click(Sender: TObject);
var
 // IdSMTP               : TIdSMTP;
//  IdMessage            : TIdMessage;
 HTMLpart             : TIdText;
  Attachment           : TIdAttachment;
  i,x                  : integer;

  dosya,TmpSql : string;
begin


      // Mail Server Ayarlarý

      IdSMTP1.AuthType := satNone;
      IdSMTP1.Host     := 'mail.aoa.edu.tr'; // sunucu adý (örn : mail.delphiturkiye.com
      IdSMTP1.Username := 'mustafa.tuncay@aoa.edu.tr'; // kullanýcý adý
      IdSMTP1.Password := 'mtk125' ; // mail þifresi
      IdSMTP1.Port := 25 ;
      IdSMTP1.Connect;
      IdSMTP1.Authenticate;

      // Mail Body iþlemleri
      IdMessage1.From.Name  := 'Mustafa Tuncay'; //Gönderen adý soyadý
      IdMessage1.From.Address := 'mustafa.tuncay@aoa.edu.tr';//edmkadi.Text; // gönderen mail adresi

      IdMessage1.Recipients.Add;
      IdMessage1.Recipients[0].Address := 'mustafa0tuncay@gmail.com' ;

      IdMessage1.Subject        := 'Konu 03.07.2012' ; // mail konusu
   //   IdMessage1.ContentType    := 'text/plain';
    //  IdMessage1.CharSet        := 'UTF-8'; // karakter seti


      IdMessage1.Body := MemAciklama.Lines ;


      HTMLpart := TIdText.Create( IdMessage1.MessageParts );
      HTMLpart.ContentType     := 'text/plain';
     HTMLpart.Body.Text       := MemAciklama.Text; // mailin içeriði body kýsmý
     HTMLpart.ContentTransfer := 'quoted-printable';

   //  HTMLpart := TIdText.Create( IdMessage1.MessageParts );
   //  HTMLpart.ContentType     := 'text/html';
   //  HTMLpart.ContentTransfer := 'quoted-printable';
   //  HTMLpart.Body := MemAciklama.Lines ;


     //  IdMessage1.MessageParts.Clear;


      Attachment := TIdAttachment.Create( IdMessage1.MessageParts);
      Attachment.ContentDisposition := 'attachment';
      Attachment.ExtraHeaders.Values['content-id'] :=  'd:\x.gif' ; // ekli dosya göndermek için dosyanýn bulunduðu yol

      IdSMTP1.Send(IdMessage1);


      IdSMTP1.Disconnect;
      Attachment.Free;




end;




procedure TFrmYedekAlma.CreateParams(var Params: TCreateParams);
begin
 inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;

procedure TFrmYedekAlma.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FrmYedekAlma:= nil;

end;

end.
