unit UntSirketGelirGiderListe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DB, ADODB,DateUtils, Grids, AdvObj,
  BaseGrid, AdvGrid, tmsAdvGridExcel, asgprev, Buttons;

type
  TFrmSirketGelirGiderListe = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Qry1: TADOQuery;
    Panel15: TPanel;
    Button7: TButton;
    Button10: TButton;
    Button16: TButton;
    AdvSirket: TAdvStringGrid;
    AdvPreview: TAdvPreviewDialog;
    AdvExcel: TAdvGridExcelIO;
    SaveDialog1: TSaveDialog;
    Label2: TLabel;
    TxtAciklama: TEdit;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button7Click(Sender: TObject);
    procedure AdvSirketDblClick(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure AdvSirketGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
  private
    { Private declarations }
  public
    procedure CreateParams(var Params: TCreateParams); override;
    { Public declarations }
  end;

var
  FrmSirketGelirGiderListe: TFrmSirketGelirGiderListe;

implementation

uses UntDm, UntGlobal, UntSirketGelirGiderKayit;

{$R *.dfm}

procedure TFrmSirketGelirGiderListe.AdvSirketDblClick(Sender: TObject);
var TmpSql,Tmpid:String;
i:integer;
begin
FrmSirketGelirGiderKayit:=TFrmSirketGelirGiderKayit.Create(Self);

FrmSirketGelirGiderKayit.BtnKaydet.Enabled :=False ;
FrmSirketGelirGiderKayit.BtnGuncelle.Enabled := True;
FrmSirketGelirGiderKayit.BtnSil.Enabled := True ;

if 4<AdvSirket.Col then  Tmpid := AdvSirket.Cells[8,AdvSirket.Row]
Else Tmpid := AdvSirket.Cells[9,AdvSirket.Row];

TmpSql := 'Select * from SirketGelirGider where id=:id';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('id').Value := Tmpid  ;
Qry1.Prepared;
Qry1.Open;

FrmSirketGelirGiderKayit.DtTarih.Date      := Qry1.FieldByName('Tarih').AsDateTime;
FrmSirketGelirGiderKayit.CmbTur.ItemIndex  := FrmSirketGelirGiderKayit.CmbTur.Items.IndexOf(Qry1.FieldByName('Tur').AsString);
FrmSirketGelirGiderKayit.CurrTutar.Value   := Qry1.FieldByName('Tutar').AsCurrency;
FrmSirketGelirGiderKayit.MemAciklama.Text  := Qry1.FieldByName('Aciklama').AsString;
FrmSirketGelirGiderKayit.DtTarih.Tag       := Qry1.FieldByName('id').AsInteger;

FrmSirketGelirGiderKayit.ShowModal;
FrmSirketGelirGiderKayit.Free;

end;

procedure TFrmSirketGelirGiderListe.AdvSirketGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
if ACol in [2,6] then HAlign := taRightJustify;

end;

procedure TFrmSirketGelirGiderListe.BitBtn4Click(Sender: TObject);
begin
if  assigned(FrmSirketGelirGiderKayit) then begin
if (FrmSirketGelirGiderKayit.WindowState = wsMinimized ) Then FrmSirketGelirGiderKayit.WindowState := wsNormal  ;
FrmSirketGelirGiderKayit.BringToFront;
exit;
end;


FrmSirketGelirGiderKayit:=TFrmSirketGelirGiderKayit.Create(Self);

FrmSirketGelirGiderKayit.BtnKaydet.Enabled   := True  ;
FrmSirketGelirGiderKayit.BtnGuncelle.Enabled := False ;
FrmSirketGelirGiderKayit.BtnSil.Enabled      := False ;

FrmSirketGelirGiderKayit.Show;
end;

procedure TFrmSirketGelirGiderListe.Button10Click(Sender: TObject);
begin
AdvExcel.AdvStringGrid := AdvSirket ;
SaveDialog1.Execute;
if SaveDialog1.FileName='' Then Exit;
AdvExcel.XLSExport(SaveDialog1.FileName+'SirketGelirGiderRaporu.xls');
end;

procedure TFrmSirketGelirGiderListe.Button16Click(Sender: TObject);
begin
AdvSirket.PrintSettings.TitleLines.Clear;
AdvSirket.PrintSettings.TitleLines.Add('ÞÝRKET GELÝR-GÝDER RAPORU');
AdvSirket.PrintSettings.TitleLines.Add('');

AdvPreview.Grid := AdvSirket ;
AdvPreview.Execute ;
end;

procedure TFrmSirketGelirGiderListe.Button7Click(Sender: TObject);
var TmpSql:string;
i:integer;
begin

AdvSirket.ClearRows(1,AdvSirket.RowCount-1);
AdvSirket.RowCount := 2 ;

TmpSql := 'Select * from SirketGelirGider where id<>0 ' ;
TmpSql := TmpSql + ' and Aciklama like :Aciklama ' ;
TmpSql := TmpSql + ' and Tur=:Tur ' ;
TmpSql := TmpSql + ' order by Tarih';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Aciklama').Value := '%'+TxtAciklama.Text+'%' ;
Qry1.Parameters.ParamByName('Tur').Value := 'Gelir' ;
Qry1.Prepared;
Qry1.Open;


AdvSirket.Colors[1,0]:=clYellow;
AdvSirket.MergeCells(1,0,3,1);
AdvSirket.Cells[1,0] := 'Gelir';

AdvSirket.Cells[1,1] :=  'Tarih';
AdvSirket.Cells[2,1] :=  'Tutar';
AdvSirket.Cells[3,1] :=  'Açýklama';

AdvSirket.RowCount := Qry1.RecordCount + 2 ;

for i:=2 to Qry1.RecordCount+1 do begin
AdvSirket.AddRow;
AdvSirket.Cells[1,i] := Qry1.FieldByName('Tarih').AsString;
AdvSirket.Cells[2,i] := FormatFloat('#,##0.00',Qry1.FieldByName('Tutar').AsCurrency);
AdvSirket.Cells[3,i] := Qry1.FieldByName('Aciklama').AsString;
AdvSirket.Cells[9,i] := Qry1.FieldByName('id').AsString;
Qry1.Next;
end;



////////////////////////////////////////////////////////////////////////////
TmpSql := 'Select * from SirketGelirGider where id<>0 ' ;
TmpSql := TmpSql + ' and Aciklama like :Aciklama ' ;
TmpSql := TmpSql + ' and Tur=:Tur ' ;
TmpSql := TmpSql + ' order by Tarih';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Aciklama').Value := '%'+TxtAciklama.Text+'%' ;
Qry1.Parameters.ParamByName('Tur').Value := 'Gider' ;
Qry1.Prepared;
Qry1.Open;

if Qry1.RecordCount>AdvSirket.RowCount-1 then AdvSirket.RowCount := Qry1.RecordCount + 2 ;

AdvSirket.Colors[5,0]:=clYellow;
AdvSirket.MergeCells(5,0,3,1);
AdvSirket.Cells[5,0] := 'Gider';

AdvSirket.Cells[5,1] :=  'Tarih';
AdvSirket.Cells[6,1] :=  'Tutar';
AdvSirket.Cells[7,1] :=  'Açýklama';

for i:=2 to Qry1.RecordCount+1 do begin
//AdvSirket.AddRow;
AdvSirket.Cells[5,i] := Qry1.FieldByName('Tarih').AsString;
AdvSirket.Cells[6,i] := FormatFloat('#,##0.00',Qry1.FieldByName('Tutar').AsCurrency);
AdvSirket.Cells[7,i] := Qry1.FieldByName('Aciklama').AsString;
AdvSirket.Cells[8,i] := Qry1.FieldByName('id').AsString;
Qry1.Next;
end;


AdvSirket.AutoNumberCol(0);

end;



procedure TFrmSirketGelirGiderListe.CreateParams(var Params: TCreateParams);
begin
 inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;

procedure TFrmSirketGelirGiderListe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FrmSirketGelirGiderListe:= nil;
end;

end.
