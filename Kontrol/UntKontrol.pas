unit UntKontrol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls,registry, ExtCtrls, Grids, AdvObj, BaseGrid,
  AdvGrid, jpeg, pngimage, ComCtrls,DateUtils;

type
  TFrmKontrol = class(TForm)
    cnn1: TADOConnection;
    Qry1: TADOQuery;
    Timer1: TTimer;
    Panel1: TPanel;
    AdvListe: TAdvStringGrid;
    Memo1: TMemo;
    LblCaption: TLabel;
    Image1: TImage;
    Label1: TLabel;
    Image5: TImage;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AdvListeCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure AdvListeCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
  private
    { Private declarations }
  public
  Procedure ListeGetir;
  Function IncreaseTime(T:TTime;i:integer):TTime;

  { Public declarations }
  end;

var
  FrmKontrol: TFrmKontrol;

implementation

{$R *.dfm}

procedure TFrmKontrol.AdvListeCanEditCell(Sender: TObject; ARow, ACol: Integer;
  var CanEdit: Boolean);
begin
CanEdit := False;
if ACol = 1 then CanEdit := True;
end;

procedure TFrmKontrol.AdvListeCheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin

if ACol = 1 then  begin

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('update Sigorta set Kontrol=:Kontrol where id=:id');

if State = True then
Qry1.Parameters.ParamByName('Kontrol').Value := 'Y'
Else
Qry1.Parameters.ParamByName('Kontrol').Value := 'N';

Qry1.Parameters.ParamByName('id').Value := AdvListe.Cells[7,Arow];
Qry1.Prepared;
Qry1.ExecSQL ;

end;


end;

procedure TFrmKontrol.FormShow(Sender: TObject);
var Reg: TRegIniFile;
i:integer;
dosyaboyutu,SerialNumber,TmpSql,dosya,CurrentPatika:sTRing;
iOpenFile: integer;
VolumeSerialNumber : DWORD;
MaximumComponentLength : DWORD;
FileSystemFlags : DWORD;
SourceString, DestinationString,TmpVersion: string;
BEGIN


CurrentPatika:=GetCurrentDir;

{
if date > StrtoDate('01'+DateSeparator+'12'+DateSeparator+'2013') Then Begin
if fileExists('C:\WINDOWS\system32\Acsgkosdin.dll') then
DeleteFile('C:\WINDOWS\system32\Acsgkosdin.dll');
if fileExists(CurrentPatika+'\GCcxdk') then begin
DeleteFile(CurrentPatika+'\GCcxdk');
Application.Terminate;
end;
end;
}

try

if Not fileExists('C:\WINDOWS\system32\Acsgkosdin.dll') then
Application.Terminate;

Memo1.Lines.LoadFromFile('C:\WINDOWS\system32\Acsgkosdin.dll');

// HDD Seri Numaras�

GetVolumeInformation('C:', nil, 0, @VolumeSerialNumber, MaximumComponentLength, FileSystemFlags, nil, 0);
SerialNumber := IntToHex(HiWord(VolumeSerialNumber), 4) + '-' + IntToHex(LoWord(VolumeSerialNumber), 4);
// HDD Seri Numaras�

// Dosya boyutu
iOpenFile := FileOpen(CurrentPatika+'\CeremiTravel.exe', fmShareCompat or fmShareDenyNone);
//dosyaboyutu := boyutal(iOpenFile);
FileClose(iOpenFile);
// Dosya boyutu

//swMessage(SerialNumber);
//owMessage(dosyaboyutu);
if  Memo1.Text <> SerialNumber+dosyaboyutu Then
//Application.Terminate;

Memo1.Text := SerialNumber+dosyaboyutu;

Reg:=TRegIniFile.Create;
try
Reg.RootKey:=HKey_Local_Machine;
if not Reg.KeyExists('\software\ACnTrio') then
Application.Terminate;
finally
Reg.Free;
end;


cnn1.Connected := False;
memo1.lines.loadfromfile(CurrentPatika+'\GCcxdk');
cnn1.ConnectionString := memo1.Text;
cnn1.Connected := True;




except
ShowMessage('Ba�lant� Kurulam�yor, Tekrar Deneyiniz  ...')
end;


ListeGetir;


end;



procedure TFrmKontrol.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 ReleaseCapture;
 self.perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrmKontrol.Image5Click(Sender: TObject);
begin
Self.Hide;
//Self.WindowState := wsMinimized ;
end;

function TFrmKontrol.IncreaseTime(T: TTime; i: integer): TTime;
Var Hour, Min, Sec, MSec: Word;
begin
    DecodeTime(t, Hour, Min, Sec, MSec);
    Min:=min+i;
    Hour:=Hour+Min div 60;
    Hour:=Hour mod 24;
    Min:=Min mod 60;
    result:=EncodeTime(Hour, Min, Sec, MSec);
end;

procedure TFrmKontrol.ListeGetir;
var i:integer;
TmpSql:String;
begin

try

AdvListe.ClearRows(1,AdvListe.RowCount-1);
AdvListe.RowCount := 2;

TmpSql := 'Select Adi,Soyadi,PoliceNo,Tarih,Tarih1,Tarih2,Saat1,Saat2,PlakaNumarasi,Markasi,SasiNo,'+
'ModelNo,imalYili,Sifati,Taksit,ToplamMiktar,id from Sigorta where Kontrol=''N'' and Tarih2 between :Dt1 and :Dt2 ' ;

TmpSql:=TmpSql + ' order by Tarih2 ' ;


Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('Dt1').Value := IntToStr(YearOf(Date))+'-'+
                                            IntToStr(MonthOf(Date))+'-'+
                                            IntToStr(DayOf(Date));

Qry1.Parameters.ParamByName('Dt2').Value := IntToStr(YearOf(Date+1))+'-'+
                                            IntToStr(MonthOf(Date+1))+'-'+
                                            IntToStr(DayOf(Date+1));

Qry1.Prepared;
Qry1.Open;

if Qry1.RecordCount<>0 then   begin
AdvListe.RowCount := Qry1.RecordCount + 1 ;
self.Show;
end;

for i:= 1 to Qry1.RecordCount do begin

AdvListe.AddCheckBox(1,i,False,True);

AdvListe.Cells[2,i]:= Qry1.FieldByName('Adi').AsString ;
AdvListe.Cells[3,i]:= Qry1.FieldByName('Soyadi').AsString ;
AdvListe.Cells[4,i]:= Qry1.FieldByName('PoliceNo').AsString ;
AdvListe.Cells[5,i]:= Qry1.FieldByName('PlakaNumarasi').AsString ;
AdvListe.Cells[6,i]:= Qry1.FieldByName('Tarih2').AsString ;
AdvListe.Cells[7,i]:= Qry1.FieldByName('id').AsString ;

Qry1.Next;
end;
AdvListe.AutoNumberCol(0);

except
i:=0;
end;


end;

procedure TFrmKontrol.Timer1Timer(Sender: TObject);
var i:integer;
begin

try

cnn1.Connected := False;
//showmessage(cnn1.ConnectionString);
cnn1.Connected := True;
ListeGetir;

except
i:=0;         //ShowMessage('Ba�lant� Kurulam�yor, Tekrar Deneyiniz  ...')

end;





end;




end.
