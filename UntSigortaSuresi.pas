unit UntSigortaSuresi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, AdvObj, BaseGrid, AdvGrid, DB, ADODB,
  asgprev, tmsAdvGridExcel,StrUtils, ComCtrls,DateUtils;

type
  TFrmSigortaSuresi = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    AdvListe: TAdvStringGrid;
    BtnListele3: TButton;
    Button12: TButton;
    Button11: TButton;
    SaveDialog1: TSaveDialog;
    AdvExcel: TAdvGridExcelIO;
    AdvPreview: TAdvPreviewDialog;
    Qry1: TADOQuery;
    ChkBasTarih: TCheckBox;
    DtBas1: TDateTimePicker;
    DtBas2: TDateTimePicker;
    DtBit2: TDateTimePicker;
    DtBit1: TDateTimePicker;
    ChkBitTarih: TCheckBox;
    procedure Button12Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnListele3Click(Sender: TObject);
  private
    { Private declarations }
  public
procedure CreateParams(var Params: TCreateParams); override;
    { Public declarations }
  end;

var
  FrmSigortaSuresi: TFrmSigortaSuresi;

implementation

{$R *.dfm}

procedure TFrmSigortaSuresi.BtnListele3Click(Sender: TObject);
Var TmpSql:String;
i:integer;
begin

AdvListe.ClearRows(1,AdvListe.RowCount-1);
AdvListe.RowCount := 2;

TmpSql := 'Select Adi,Soyadi,PoliceNo,Tarih,Tarih1,Tarih2,Saat1,Saat2,PlakaNumarasi,Markasi,SasiNo,ModelNo,imalYili,Sifati,Taksit,ToplamMiktar,id '+
' from Sigorta where id<>0 ' ;

if ChkBitTarih.Checked = True then
TmpSql := TmpSql + ' and Tarih2 between :TBit1 and :TBit2 ' ;

if ChkBasTarih.Checked = True then
TmpSql := TmpSql + ' and Tarih1 between :TBas1 and :TBas2 ' ;


Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

if ChkBitTarih.Checked = True then begin
Qry1.Parameters.ParamByName('TBit1').Value :=
IntToStr(YearOf(DtBit1.Date))+'-'+IntToStr(MonthOf(DtBit1.Date))+'-'+IntToStr(DayOf(DtBit1.Date));

Qry1.Parameters.ParamByName('TBit2').Value :=
IntToStr(YearOf(DtBit2.Date))+'-'+IntToStr(MonthOf(DtBit2.Date))+'-'+IntToStr(DayOf(DtBit2.Date));
end;

if ChkBasTarih.Checked = True then begin
Qry1.Parameters.ParamByName('TBas1').Value :=
IntToStr(YearOf(DtBas1.Date))+'-'+IntToStr(MonthOf(DtBas1.Date))+'-'+IntToStr(DayOf(DtBas1.Date));

Qry1.Parameters.ParamByName('TBas2').Value :=
IntToStr(YearOf(DtBas2.Date))+'-'+IntToStr(MonthOf(DtBas2.Date))+'-'+IntToStr(DayOf(DtBas2.Date));
end;

Qry1.Prepared:=True;
Qry1.Open;

if Qry1.RecordCount <> 0 Then AdvListe.RowCount := Qry1.RecordCount + 1 ;

For  i:=1 to Qry1.RecordCount do begin
AdvListe.Cells[1,i]  :=  Qry1.FieldByName('Adi').AsString  ;
AdvListe.Cells[2,i]  :=  Qry1.FieldByName('Soyadi').AsString  ;
AdvListe.Cells[3,i]  :=  Qry1.FieldByName('PoliceNo').AsString  ;
AdvListe.Cells[4,i]  :=  Qry1.FieldByName('Tarih').AsString     ;
AdvListe.Cells[5,i]  :=  Qry1.FieldByName('Tarih1').AsString    ;
AdvListe.Cells[6,i]  :=  LeftStr(Qry1.FieldByName('Saat1').AsString,5) ;
AdvListe.Cells[7,i]  :=  Qry1.FieldByName('Tarih2').AsString    ;
AdvListe.Cells[8,i]  :=  LeftStr(Qry1.FieldByName('Saat2').AsString,5) ;
AdvListe.Cells[9,i]  :=  Qry1.FieldByName('PlakaNumarasi').AsString    ;
AdvListe.Cells[10,i] :=  Qry1.FieldByName('Markasi').AsString   ;
AdvListe.Cells[11,i] :=  Qry1.FieldByName('ModelNo').AsString   ;
AdvListe.Cells[12,i] :=  Qry1.FieldByName('imalYili').AsString  ;
AdvListe.Cells[13,i] :=  Qry1.FieldByName('Taksit').AsString    ;
AdvListe.Cells[14,i] :=  Qry1.FieldByName('ToplamMiktar').AsString ;
AdvListe.Cells[15,i] :=  Qry1.FieldByName('id').AsString  ;



Qry1.Next;
end;

AdvListe.AutoNumberCol(0);

end;


procedure TFrmSigortaSuresi.Button11Click(Sender: TObject);
begin
AdvExcel.AdvStringGrid := AdvListe ;
SaveDialog1.Execute;
if SaveDialog1.FileName='' Then Exit;
AdvExcel.XLSExport(SaveDialog1.FileName+'SigortaSuresiRaporu.xls');
end;

procedure TFrmSigortaSuresi.Button12Click(Sender: TObject);
begin
AdvListe.PrintSettings.TitleLines.Clear;
AdvListe.PrintSettings.TitleLines.Add(Label1.Caption);
AdvListe.PrintSettings.TitleLines.Add('');

AdvPreview.Grid := AdvListe ;
AdvPreview.Execute ;
end;



procedure TFrmSigortaSuresi.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;

procedure TFrmSigortaSuresi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FrmSigortaSuresi:= nil;
end;

end.
