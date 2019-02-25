unit UntGlobal;
interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls, ToolWin,
  Mask, Db, DBClient, DBTables, ADODB,shellapi,
  Jpeg,AdvGrid,ComObj,registry,winsock,Variants, BaseGrid, DBAdvGrd,printers, asgprint, asgprev ,
  Menus,AdvToolBar;

type
  FisString = record
  BorcAlacak :String;
  Hesapkodu:String;
  BelgeNo:String;
  Aciklama:String;
  ParaBirimi:String;
  Miktar:Double;
end;
type
  Belgeler = record
  Tur :String;
  BelgeNo:String;
  Tutar:Double;
  Odeme:Double;
  RecID:String;
end;

type
  HExtre = record
  BA,HesapKod,HesapAdi,PBirimi:String;
  Tarih,BelgeNo,Aciklama      :String;
  HMiktar,MMiktar,Kur         :Double;
end;

type
  HakString = record
  Yonetici:Boolean;
  Gorme   :Boolean;
  Kayit   :Boolean;
  Degistir:Boolean;
  Sil     :Boolean;
  Yazdir  :Boolean;
end;
// ************************************************
function  sayilaravirgul(s:string) : String;
Function  ConvertString(actStr:String):String ;
//Procedure CompTemizle(fForm  : Tform;actComp:integer);
Function  NumberToText(actNumber:String):String;
Function  onlar(x : String) : String ;
Function  yuzler(x : String) : String ;
Function  birler(x : String) : String ;
Function  NumberTokurus(Number:String):String;

Procedure AdvStrYazdir(FormAdi:TForm;TmpGrid:TAdvStringGrid;Islem:String;Sayfa:String);
Procedure AdvDBYazdir(FormAdi:TForm;TmpGrid:TDBAdvStringGrid;Islem:String;Sayfa:String);
Procedure AdvDBExceleAktar(FormAdi:TForm;Grid:TDBAdvStringGrid);
Procedure AdvStrExceleAktar(FormAdi:TForm;Grid:TAdvStringGrid);
Procedure MsgUyari(Mesaj:String);
Function  MsgOnay(Mesaj:String):Boolean;
function  AutoBelgeNo():String;
function  Encrypt(Text : string; Key1, Key2, Key3, Key4 : Integer) : string;
procedure SayisalGoruntu(TmpQry:TADOQuery);
//Procedure Tarihler(DT01,DT02:TDateEdit);
// ***** Genel Tan�mlamalar **************
var
Hakbilgi:array of HakString;
Fisbilgi  :array of fisString;
BelgeBilgi:array of Belgeler;
HesapExtre:array of HExtre;
ProCaption  :String;
maliyil:String;
GridFooter:Integer;
TmpKayitIsmi:String;
path:String;
ActPerNo  :String;
ActYonetici : Boolean;
ActSirket : String ;
ActKullanici :String ;
ActForm : Boolean; 
// ***************************************
implementation

uses DateUtils, UntDm, Math, UntOnay,StrUtils,UntUyari;

function sayilaravirgul(s:string) : String;
var
a,i:integer;
begin

i:=length(s);
if pos(',',s) <>0 then exit;
for a:=1 to i-1 do if (a mod 3)=0 then insert(',',s,i-a+1);
Result:=s;

end;


function Encrypt(Text : string; Key1, Key2, Key3, Key4 : Integer) : string;
var
 BufS, Hexa, Hexa1, Hexa2 : string;
 BufI, BufI2, Sc, Sl, Num1, Num2, Num3, Num4, Res1, Res2, Res3, Res4 : Integer;
begin
 Sl := Length(Text);
 Sc := 0;
 BufS := '';
 if (Key1 in [1 .. 120]) and (Key2 in [1 .. 120]) and (Key3 in [1 .. 120]) and (Key4 in [1 .. 120]) then
 begin
  BufI := Key1 * Key4;
  BufI2 := Key3 * Key2;
  BufI := BufI - BufI2;
  if BufI = 0 then
  begin
   Result := '';
   Exit;
  end;
 end
 else
 begin
  Result := '';
  Exit;
 end;
 repeat
  Inc(Sc);
  if Sc > Sl then Num1 := 0 else Num1 := Ord(Text[Sc]);
  Inc(Sc);
  if Sc > Sl then Num2 := 0 else Num2 := Ord(Text[Sc]);
  Inc(Sc);
  if Sc > Sl then Num3 := 0 else Num3 := Ord(Text[Sc]);
  Inc(sc);
  if Sc > Sl then Num4 := 0 else Num4 := Ord(Text[Sc]);
  Res1 := Num1 * Key1;
  BufI := Num2 * Key3;
  Res1 := Res1 + BufI;
  Res2 := Num1 * Key2;
  BufI := Num2 * Key4;
  Res2 := Res2 + BufI;
  Res3 := Num3 * Key1;
  BufI := Num4 * Key3;
  Res3 := Res3 + BufI;
  Res4 := Num3 * Key2;
  BufI := Num4 * Key4;
  Res4 := Res4 + BufI;
  for BufI := 1 to 4 do
  begin
   case BufI of
    1 : Hexa := IntToHex(Res1, 4);
    2 : Hexa := IntToHex(Res2, 4);
    3 : Hexa := IntToHex(Res3, 4);
    4 : Hexa := IntToHex(Res4, 4);
   end;
   Hexa1 := '$' + Hexa[1] + Hexa[2];
   Hexa2 := '$' + Hexa[3] + Hexa[4];
   if (Hexa1 = '$00') and (Hexa2 = '$00') then
   begin
    Hexa1 := '$FF';
    Hexa2 := '$FF';
   end;
   if Hexa1 = '$00' then Hexa1 := '$FE';
   if Hexa2 = '$00' then
   begin
    Hexa2 := Hexa1;
    Hexa1 := '$FD';
   end;
   BufS := BufS + Chr(StrToInt(Hexa1)) + Chr(StrToInt(Hexa2));
  end;
  until Sc >= Sl;
 Result := BufS;
end;


Procedure MsgUyari(Mesaj:String);
begin
{ *** Genel Uyar�lar� Buradan yap�yoruz..;
  *** Create Date : 27.02.2006
  *** Last Update :}
  FrmUyari:=TFrmUyari.Create(Application);
  FrmUyari.lblCaption.Caption:=Mesaj;
  FrmUyari.ShowModal;
  FrmUyari.Release;
end;
// ***




procedure SayisalGoruntu(TmpQry:TADOQuery);
var i:integer;
begin
for i:=0 to TmpQry.Fields.Count-1 do
if (TmpQry.Fields.Fields[i].DataType  = ftFloat) or
   (TmpQry.Fields.Fields[i].DataType  = ftCurrency) then
  (TmpQry.Fields.Fields[i] as TNumericField).DisplayFormat := ',0.00' ;
end;
// ***
{
function KurGetir(Tip:String;Tarih:TDate;Sembol:string;CurrencyEdit:TCurrencyEdit):Double;
// *** Kur de�erini getirir
begin
CurrencyEdit.DisplayFormat:=',0.000 YTL;-,0.000 YTL';
if Sembol='YTL' then
begin
  CurrencyEdit.Value:=1;
  exit;
end;
with dm.Qrylist do
begin
  Close;
  SQL.Clear ;
  SQL.Add('Select '+tip+' From GunlukKurlar Where Tarih='''+datetostr(Tarih)+''' and  Sembol='''+Sembol+''' ');
  Open;
  CurrencyEdit.Value:=FieldByName(tip).AsFloat;
  CurrencyEdit.DisplayFormat:=',0.000 '+Sembol +';-,0.000 '+Sembol;
end;
end;
// ***
}

function AutoBelgeNo():String;
begin
  Result:=FormatDateTime('mmdd',Date)+FormatDateTime('hhmmss',Now)
end;
// ***
{Procedure Tarihler(DT01,DT02:TDateEdit);
var
  AktifAy,AktifYil,SonGun:integer;
  TarihFormat,Tarih01,Tarih02:String;
begin
  AktifAy :=MonthOf(Date);
  AktifYil:=YearOf(Date);
  SonGun  :=DaysInAMonth(AktifYil,AktifAy);
  TarihFormat:='dd'+DateSeparator+'mm'+DateSeparator+'yyyy';
  Tarih01:='01'+DateSeparator+IntToStr(AktifAy)+ DateSeparator+IntToStr(AktifYil);
  Tarih02:=IntToStr(SonGun)+DateSeparator+IntToStr(AktifAy)+ DateSeparator+IntToStr(AktifYil);
  DT01.Text:=FormatDateTime(TarihFormat,StrToDate(Tarih01));
  DT02.Text:=FormatDateTime(TarihFormat,StrToDate(Tarih02));
end;
// ***

// ***
}
Function MsgOnay(Mesaj:String):Boolean;
begin
{ *** Kullan�c� Onaylar�n� buradan yap�yoruz...
  *** Create Date : 02.03.2006
  *** Last Update :}
  FrmOnay:=TFrmOnay.Create(Application);
  FrmOnay.lblCaption.Caption:=Mesaj;
  FrmOnay.ShowModal;
    Result:=FrmOnay.ActOnay;
  FrmOnay.Release;
end;
// ***


Procedure AdvStrExceleAktar(FormAdi:TForm;Grid:TAdvStringGrid);
//var SaveDlg:TSaveDialog;
//    GridExcel :TAdvGridExcelIO;
begin
{SaveDlg := TSaveDialog.Create(FormAdi);
SaveDlg.Filter := 'Excel' ;
SaveDlg.Execute;
Grid.FixedColor:=clWhite;
GridExcel:= TAdvGridExcelIO.Create(Formadi);
with GridExcel do begin
  AdvStringGrid := Grid ;
//  KeepExcelCellFormat := False ;
  UseUnicode := False   ;
//  MergeEmptyRightCells := False ;
  GridStartRow := 0 ;
  GridStartCol := 0 ;
end;

if SaveDlg.FileName <> '' then
GridExcel.XLSExport(SaveDlg.FileName+'.xls','Sheet1');
}
end;

Procedure AdvDBExceleAktar(FormAdi:TForm;Grid:TDBAdvStringGrid);
//var SaveDlg:TSaveDialog;
//    GridExcel :TAdvGridExcelIO;
begin
{
SaveDlg := TSaveDialog.Create(FormAdi);
SaveDlg.Filter := 'Excel' ;
SaveDlg.Execute;

Grid.FixedColor:=clWhite;

GridExcel:= TAdvGridExcelIO.Create(Formadi);
with GridExcel do begin
  AdvStringGrid := Grid ;
//  KeepExcelCellFormat := False ;
  UseUnicode := False   ;
//  MergeEmptyRightCells := False ;
  GridStartRow := 0 ;
  GridStartCol := 0 ;
end;
if SaveDlg.FileName <> '' then
GridExcel.XLSExport(SaveDlg.FileName+'.xls','Sheet1');
}
end;

Procedure AdvStrYazdir(FormAdi:TForm;TmpGrid:TAdvStringGrid;Islem:String;Sayfa:String);
var AdvPrev:TAdvPreviewDialog;
begin
TmpGrid.PrintSettings.Title := ppBottomLeft ;
TmpGrid.PrintSettings.PageNr := ppBottomRight ;
TmpGrid.PrintSettings.PagePrefix := 'Sayfa' ;
TmpGrid.PrintSettings.FooterSize := 100 +GridFooter ;
TmpGrid.PrintSettings.FooterFont.Charset := TURKISH_CHARSET ;
TmpGrid.PrintSettings.FooterFont.Color := clSilver  ;
TmpGrid.PrintSettings.FooterFont.Height := -11 ;
TmpGrid.PrintSettings.FooterFont.Name := 'Tahoma' ;
TmpGrid.PrintSettings.FooterFont.Style := [] ;
TmpGrid.PrintSettings.RepeatFixedRows := True ;
TmpGrid.PrintSettings.PrintGraphics := True;
TmpGrid.PrintSettings.NoAutoSize := True   ;
TmpGrid.PrintSettings.NoAutoSizeRow := True ;


if Sayfa = 'Yatay' then begin
printer.Orientation := poLandscape ;
TmpGrid.PrintSettings.Orientation := poLandscape ;

TmpGrid.PrintSettings.TitleLines.Add('----------------------------------------------------------------------------------------------------------------------------------------------------------------'+
                                        '----------------------------------------------------------------------------------------------------------------------------------------------------------------'+
                                        '--------------------------------------------------------');
TmpGrid.PrintSettings.TitleLines.Add('Firma Ad� :' +TmpKayitIsmi+'                                                                                                 '+
                                        '                                         Mali Y�l:   '+Maliyil);
TmpGrid.PrintSettings.TitleLines.Add('----------------------------------------------------------------------------------------------------------------------------------------------------------------'+
                                        '----------------------------------------------------------------------------------------------------------------------------------------------------------------'+
                                        '--------------------------------------------------------');
TmpGrid.PrintSettings.TitleLines.Add('xx V.1.0 ');
end;
if Sayfa = 'Dikey' then begin
printer.Orientation := poPortrait ;
TmpGrid.PrintSettings.Orientation := poPortrait ;
TmpGrid.PrintSettings.TitleLines.Add('----------------------------------------------------------------------------------------------------------------------------------------------------------------'+
                                        '----------------------------------------------------------------------------------------------------------------------------------------------------------------'+
                                        '--------------------------------------------------------');
TmpGrid.PrintSettings.TitleLines.Add('Firma Ad� :' +TmpKayitIsmi+'                                                                                                 '+
                                        '              Mali Y�l:   '+Maliyil);
TmpGrid.PrintSettings.TitleLines.Add('----------------------------------------------------------------------------------------------------------------------------------------------------------------'+
                                        '----------------------------------------------------------------------------------------------------------------------------------------------------------------'+
                                        '--------------------------------------------------------');
TmpGrid.PrintSettings.TitleLines.Add('xx V.1.0 ');
end;

AdvPrev :=TAdvPreviewDialog.Create(FormAdi);
with AdvPrev do  begin
  DialogCaption := '�nizleme' ;
  DialogPrevBtn := '�nceki'  ;
  DialogNextBtn := 'Sonraki'   ;
  DialogPrintBtn := 'Yazd�r';
  DialogCloseBtn := 'Kapat' ;
  Grid := TmpGrid ;
  PreviewFast := False ;
  PreviewWidth := 350 ;
  PreviewHeight := 300 ;
  PreviewLeft := 100  ;
  PreviewTop := 100 ;
  PreviewCenter := False   ;
  PrinterSetupDialog := False ;
  PrintSelectedRows := False ;
  PrintSelectedCols := False ;
  PrintSelection := False   ;
end;

if Islem = 'Yazd�r' then TmpGrid.Print;
if Islem = 'G�r�nt�le' then AdvPrev.Execute;

end;


Procedure AdvDBYazdir(FormAdi:TForm;TmpGrid:TDBAdvStringGrid;Islem:String;Sayfa:String);
var AdvPrev:TAdvPreviewDialog;
begin

TmpGrid.PrintSettings.Title := ppBottomLeft ;
TmpGrid.PrintSettings.PageNr := ppBottomRight ;
TmpGrid.PrintSettings.PagePrefix := 'Sayfa' ;
TmpGrid.PrintSettings.FooterSize := 130 +GridFooter;
TmpGrid.PrintSettings.FooterFont.Charset := TURKISH_CHARSET ;
TmpGrid.PrintSettings.FooterFont.Color := clSilver  ;
TmpGrid.PrintSettings.FooterFont.Height := -11 ;
TmpGrid.PrintSettings.FooterFont.Name := 'Tahoma' ;
TmpGrid.PrintSettings.FooterFont.Style := [] ;
TmpGrid.PrintSettings.RepeatFixedRows := True ;
TmpGrid.PrintSettings.PrintGraphics := True;
TmpGrid.PrintSettings.NoAutoSize := True   ;
TmpGrid.PrintSettings.NoAutoSizeRow := True ;



if Sayfa = 'Yatay' then begin
printer.Orientation := poLandscape ;
TmpGrid.PrintSettings.Orientation := poLandscape ;

TmpGrid.PrintSettings.TitleLines.Add('----------------------------------------------------------------------------------------------------------------------------------------------------------------'+
                                        '----------------------------------------------------------------------------------------------------------------------------------------------------------------'+
                                        '--------------------------------------------------------');
TmpGrid.PrintSettings.TitleLines.Add('Firma Ad� :' +TmpKayitIsmi+'                                                                                                 '+
                                        '                                         Mali Y�l:   '+Maliyil);
TmpGrid.PrintSettings.TitleLines.Add('----------------------------------------------------------------------------------------------------------------------------------------------------------------'+
                                        '----------------------------------------------------------------------------------------------------------------------------------------------------------------'+
                                        '--------------------------------------------------------');
TmpGrid.PrintSettings.TitleLines.Add('xx V.1.0 ');
end;




if Sayfa = 'Dikey' then begin
printer.Orientation := poPortrait ;
TmpGrid.PrintSettings.Orientation := poPortrait ;

TmpGrid.PrintSettings.TitleLines.Add('----------------------------------------------------------------------------------------------------------------------------------------------------------------'+
                                        '----------------------------------------------------------------------------------------------------------------------------------------------------------------'+
                                        '--------------------------------------------------------');
TmpGrid.PrintSettings.TitleLines.Add('Firma Ad� :' +TmpKayitIsmi+'                                                                                                 '+
                                        '              Mali Y�l:   '+Maliyil);
TmpGrid.PrintSettings.TitleLines.Add('----------------------------------------------------------------------------------------------------------------------------------------------------------------'+
                                        '----------------------------------------------------------------------------------------------------------------------------------------------------------------'+
                                        '--------------------------------------------------------');
TmpGrid.PrintSettings.TitleLines.Add('xx V.1.0 ');
end;

AdvPrev :=TAdvPreviewDialog.Create(FormAdi);
with AdvPrev do  begin
  DialogCaption := '�nizleme' ;
  DialogPrevBtn := '�nceki'  ;
  DialogNextBtn := 'Sonraki'   ;
  DialogPrintBtn := 'Yazd�r';
  DialogCloseBtn := 'Kapat' ;
  Grid := TmpGrid ;
  PreviewFast := False ;
  PreviewWidth := 500 ;
  PreviewHeight := 500 ;
  PreviewLeft := 100  ;
  PreviewTop := 100 ;
  PreviewCenter := False   ;
  PrinterSetupDialog := False ;
  PrintSelectedRows := False ;
  PrintSelectedCols := False ;
  PrintSelection := False   ;
end;
if Islem = 'Yazd�r' then TmpGrid.Print;
if Islem = 'G�r�nt�le' then AdvPrev.Execute;
end;












function ConvertString(actStr:String):String ;
var
    x,u:Integer;
    a,tmp:string;
begin
    tmp:='';
    u:=length(actstr);
    for x := 1 to u  do
        begin
            a:=copy(actstr,x,1);
            if a <> '.'  then
                tmp:=tmp+a;
        end;
     ConvertString:=trim(tmp);
end;

{
procedure CompTemizle(fForm : Tform;actComp:integer);
var
i:integer;
begin
  for i:=0 to fForm.ComponentCount -1 do
  begin
    if actComp  = 1 then
      if  (fForm.Components[i] is TEdit)  then TEdit(fForm.Components[i]).text :='';
    if actComp  = 2 then
      if  (fForm.Components[i] is TLabel) then TLabel (fForm.Components[i]).Caption  :='';
    if actComp  = 3 then
      if  (fForm.Components[i] is TCurrencyEdit) then (fForm.Components[i] as TCurrencyEdit).Value :=0;
    if actComp  = 4 then
      if  (fForm.Components[i] is TComboBox) then (fForm.Components[i] as TComboBox).Text:='';
    if actComp  = 5 then
      if  (fForm.Components[i] is TComboBox) then (fForm.Components[i] as TComboBox).ItemIndex  :=0;
end;
end;
}

Function yuzler(x : String) : String;
Begin
case StrToInt(x) of
0   : yuzler := ''          ;
1   : yuzler := 'y�z '      ;
2   : yuzler := 'ikiy�z '   ;
3   : yuzler := '��y�z '    ;
4   : yuzler := 'd�rty�z '  ;
5   : yuzler := 'be�y�z '   ;
6   : yuzler := 'alt�y�z '  ;
7   : yuzler := 'yediy�z '  ;
8   : yuzler := 'sekizy�z ' ;
9   : yuzler := 'dokuzy�z ' ;
end;
end;

Function onlar(x : String) : String ;
Begin
case StrToInt(x) of
0   : onlar := ''       ;
1   : onlar := 'on '    ;
2   : onlar := 'yirmi ' ;
3   : onlar := 'otuz '  ;
4   : onlar := 'k�rk '  ;
5   : onlar := 'elli '  ;
6   : onlar := 'atm�� ' ;
7   : onlar := 'yetmi� ';
8   : onlar := 'seksen ';
9   : onlar := 'doksan ';
end ;
end;

Function birler(x : String) : String;
begin
case StrToInt(x) of
0   : birler := ''      ;
1   : birler := 'bir '  ;
2   : birler := 'iki '  ;
3   : birler := '�� '   ;
4   : birler := 'd�rt ' ;
5   : birler := 'be� '  ;
6   : birler := 'alt� ' ;
7   : birler := 'yedi ' ;
8   : birler := 'sekiz ';
9   : birler := 'dokuz ';
end;
end;

Function  NumberToText(actNumber:String):String;
Var
    W:array of String;
    tmp, newNumber:String ;
    Hane,R01,R02,R03,R04,R05 :String;
    digit1,digit2,digit3:String;
    say,x  :integer;
begin
SetLength(w,16);
NewNumber:='000000000000000'+actNumber ;
say:=0;
for  x:=length(NewNumber) downto 1 do
begin
   say:=say+1;
   if say < 16 then w[say]:=copy(NewNumber,x,1);
end;
for  x:=15  downto 1  do
  tmp:=tmp+ w[x];
//*********************
digit3 := yuzler(w[15]);
digit2 := onlar (w[14]);
digit1 := birler(w[13]);
Hane   := ' Trilyon  ';
If (digit3 = '') And (digit2 = '') And (digit1 = '') Then Hane := '';
R05 := digit3 + digit2 + digit1 + Hane;
//*********************
digit3 := yuzler(w[12]);
digit2 := onlar (w[11]);
digit1 := birler(w[10]);
Hane   := ' Milyar  ';
If (digit3 = '') And (digit2 = '') And (digit1 = '') Then Hane := '';
R04 := digit3 + digit2 + digit1 + Hane;
//*********************
digit3 := yuzler(w[9]);
digit2 := onlar (w[8]);
digit1 := birler(w[7]);
Hane   := ' Milyon  ';
If (digit3 = '') And (digit2 = '') And (digit1 = '') Then Hane := '';
R03 := digit3 + digit2 + digit1 + Hane;
//*********************
digit3 := yuzler(w[6]);
digit2 := onlar (w[5]);
digit1 := birler(w[4]);
Hane   := ' Bin  ';
If (digit3 = '') And (digit2 = '') And (digit1 = '') Then Hane := '';
If (digit3 = '') And (digit2 = '') And (digit1 = 'bir ') Then digit1 := '';
R02 := digit3 + digit2 + digit1 + Hane;
//*********************
digit3 := yuzler(w[3]);
digit2 := onlar (w[2]);
digit1 := birler(w[1]);
R01    := digit3 + digit2 + digit1 ;

  NumberToText:=R05+R04+R03+R02+R01;
end;




Function  NumberTokurus(Number:String):String;
Var
    y,o,b:String;
begin
y:='';
o:='';
b:='';
  if copy(number,1,1)<>'0' then
    o:=onlar(copy(number,1,1));
  if copy(number,2,1)<>'0' then
    b:=birler(copy(number,2,1));
  NumberTokurus:=o+b;
end;

end.

