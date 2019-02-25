unit UntTransferFirmaListe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DB, ADODB,DateUtils, Grids, AdvObj,
  BaseGrid, AdvGrid, tmsAdvGridExcel, asgprev, Buttons;

type
  TFrmTransferFirmaListe = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Qry1: TADOQuery;
    Panel15: TPanel;
    Label2: TLabel;
    Button7: TButton;
    Button10: TButton;
    Button16: TButton;
    TxtFirmaAdi: TEdit;
    AdvFirma: TAdvStringGrid;
    AdvPreview: TAdvPreviewDialog;
    AdvExcel: TAdvGridExcelIO;
    SaveDialog1: TSaveDialog;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button7Click(Sender: TObject);
    procedure AdvFirmaDblClick(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CreateParams(var Params: TCreateParams); override;
    { Public declarations }
  end;

var
  FrmTransferFirmaListe: TFrmTransferFirmaListe;

implementation

uses UntDm, UntGlobal, UntTransferFirma;

{$R *.dfm}

procedure TFrmTransferFirmaListe.AdvFirmaDblClick(Sender: TObject);
var TmpSql:String;
begin
if AdvFirma.Cells[9,AdvFirma.Row]='' then exit;


FrmTransferFirma:=TFrmTransferFirma.Create(Self);

FrmTransferFirma.BtnKaydet.Enabled :=False ;
FrmTransferFirma.BtnGuncelle.Enabled := True;
FrmTransferFirma.BtnSil.Enabled := True ;

TmpSql := 'Select * from TransferFirma where id=:id';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('id').Value := AdvFirma.Cells[9,AdvFirma.Row] ;
Qry1.Prepared;
Qry1.Open;

FrmTransferFirma.TxtFirmaAdi.Text := Qry1.FieldByName('Adi').AsString;
FrmTransferFirma.TxtTelefon.Text  := Qry1.FieldByName('Tel').AsString;
FrmTransferFirma.TxtAdres.Text    := Qry1.FieldByName('Adres').AsString;
FrmTransferFirma.TxtEmail.Text    := Qry1.FieldByName('Email1').AsString;
FrmTransferFirma.TxtEmail2.Text   := Qry1.FieldByName('Email2').AsString;
FrmTransferFirma.TxtFax.Text      := Qry1.FieldByName('Fax').AsString;
FrmTransferFirma.TxtMsn.Text      := Qry1.FieldByName('Msn').AsString;
FrmTransferFirma.MemNot.Text      := Qry1.FieldByName('Notlar').AsString;

FrmTransferFirma.TxtFirmaAdi.Tag  := Qry1.FieldByName('id').AsInteger;


Qry1.Next;

FrmTransferFirma.ShowModal;
FrmTransferFirma.Free;

end;

procedure TFrmTransferFirmaListe.BitBtn4Click(Sender: TObject);
begin
if  assigned(FrmTransferFirma) then begin
if (FrmTransferFirma.WindowState = wsMinimized ) Then FrmTransferFirma.WindowState := wsNormal  ;
FrmTransferFirma.BringToFront;
exit;
end;


FrmTransferFirma:=TFrmTransferFirma.Create(Self);

FrmTransferFirma.BtnKaydet.Enabled :=True ;
FrmTransferFirma.BtnGuncelle.Enabled := False;
FrmTransferFirma.BtnSil.Enabled := False ;

FrmTransferFirma.Show;
end;

procedure TFrmTransferFirmaListe.Button10Click(Sender: TObject);
begin
AdvExcel.AdvStringGrid := AdvFirma ;
SaveDialog1.Execute;
if SaveDialog1.FileName='' Then Exit;
AdvExcel.XLSExport(SaveDialog1.FileName+'TransferFirmaRaporu.xls');
end;

procedure TFrmTransferFirmaListe.Button16Click(Sender: TObject);
begin
AdvFirma.PrintSettings.TitleLines.Clear;
AdvFirma.PrintSettings.TitleLines.Add('TRANSFER FÝRMA RAPORU');
AdvFirma.PrintSettings.TitleLines.Add('');

AdvPreview.Grid := AdvFirma ;
AdvPreview.Execute ;
end;

procedure TFrmTransferFirmaListe.Button7Click(Sender: TObject);
var TmpSql:string;
i:integer;
begin

AdvFirma.ClearRows(1,AdvFirma.RowCount-1);
AdvFirma.RowCount := 2 ;

TmpSql := 'Select * from TransferFirma where id<>0 ' ;
TmpSql := TmpSql + ' and adi like :adi ' ;

TmpSql := TmpSql + ' order by adi';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Adi').Value := TxtFirmaAdi.Text+'%' ;
Qry1.Prepared;
Qry1.Open;

if Qry1.RecordCount = 0 then exit;

AdvFirma.RowCount := Qry1.RecordCount + 1 ;

for i:=1 to Qry1.RecordCount do begin
AdvFirma.Cells[1,i] := Qry1.FieldByName('Adi').AsString;
AdvFirma.Cells[2,i] := Qry1.FieldByName('Tel').AsString;
AdvFirma.Cells[3,i] := Qry1.FieldByName('Adres').AsString;
AdvFirma.Cells[4,i] := Qry1.FieldByName('Email1').AsString;
AdvFirma.Cells[5,i] := Qry1.FieldByName('Email2').AsString;
AdvFirma.Cells[6,i] := Qry1.FieldByName('Fax').AsString;
AdvFirma.Cells[7,i] := Qry1.FieldByName('Msn').AsString;
AdvFirma.Cells[8,i] := Qry1.FieldByName('Notlar').AsString;

AdvFirma.Cells[9,i] := Qry1.FieldByName('id').AsString;
Qry1.Next;
end;

AdvFirma.AutoNumberCol(0);

end;



procedure TFrmTransferFirmaListe.CreateParams(var Params: TCreateParams);
begin
 inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;

procedure TFrmTransferFirmaListe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FrmTransferFirmaListe:= nil;
end;

end.
