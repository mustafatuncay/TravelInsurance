unit UntOtelKayitListe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DB, ADODB,DateUtils, Grids, AdvObj,
  BaseGrid, AdvGrid, tmsAdvGridExcel, asgprev, Buttons;

type
  TFrmOtelKayitListe = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Qry1: TADOQuery;
    Panel15: TPanel;
    Button7: TButton;
    Button10: TButton;
    Button16: TButton;
    AdvOtelKayit: TAdvStringGrid;
    AdvPreview: TAdvPreviewDialog;
    AdvExcel: TAdvGridExcelIO;
    SaveDialog1: TSaveDialog;
    Label2: TLabel;
    TxtOtelAdi: TEdit;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button7Click(Sender: TObject);
    procedure AdvOtelKayitDblClick(Sender: TObject);
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
  FrmOtelKayitListe: TFrmOtelKayitListe;

implementation

uses UntDm, UntGlobal, UntOtelKayit;

{$R *.dfm}

procedure TFrmOtelKayitListe.AdvOtelKayitDblClick(Sender: TObject);
var TmpSql:String;
begin
FrmOtelKayit:=TFrmOtelKayit.Create(Self);

FrmOtelKayit.BtnKaydet.Enabled :=False ;
FrmOtelKayit.BtnGuncelle.Enabled := True;
FrmOtelKayit.BtnSil.Enabled := True ;

TmpSql := 'Select * from Otel where id=:id';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('id').Value := AdvOtelKayit.Cells[7,AdvOtelKayit.Row] ;
Qry1.Prepared;
Qry1.Open;

FrmOtelKayit.TxtOtelAdi.Text := Qry1.FieldByName('Adi').AsString;
FrmOtelKayit.TxtTelefon.Text := Qry1.FieldByName('Telefon').AsString;
FrmOtelKayit.TxtAdres.Text   := Qry1.FieldByName('Adres').AsString;
FrmOtelKayit.TxtEmail.Text   := Qry1.FieldByName('Email').AsString;
FrmOtelKayit.TxtEmail2.Text  := Qry1.FieldByName('Email2').AsString;
FrmOtelKayit.TxtFax.Text     := Qry1.FieldByName('Fax').AsString;
FrmOtelKayit.TxtMsn.Text     := Qry1.FieldByName('Msn').AsString;
FrmOtelKayit.MemNot.Text     := Qry1.FieldByName('Notlar').AsString;
FrmOtelKayit.TxtCepTel.Text  := Qry1.FieldByName('CepTel').AsString;
FrmOtelKayit.Txtilgili.Text  := Qry1.FieldByName('ilgili').AsString;

FrmOtelKayit.TxtOtelAdi.Tag  := Qry1.FieldByName('id').AsInteger;


Qry1.Next;

FrmOtelKayit.ShowModal;
FrmOtelKayit.Free;

end;

procedure TFrmOtelKayitListe.BitBtn4Click(Sender: TObject);
begin
if  assigned(FrmOtelKayit) then begin
if (FrmOtelKayit.WindowState = wsMinimized ) Then FrmOtelKayit.WindowState := wsNormal  ;
FrmOtelKayit.BringToFront;
exit;
end;


FrmOtelKayit:=TFrmOtelKayit.Create(Self);

FrmOtelKayit.BtnKaydet.Enabled   := True  ;
FrmOtelKayit.BtnGuncelle.Enabled := False ;
FrmOtelKayit.BtnSil.Enabled      := False ;

FrmOtelKayit.Show;
end;

procedure TFrmOtelKayitListe.Button10Click(Sender: TObject);
begin
AdvExcel.AdvStringGrid := AdvOtelKayit ;
SaveDialog1.Execute;
if SaveDialog1.FileName='' Then Exit;
AdvExcel.XLSExport(SaveDialog1.FileName+'OtelRaporu.xls');
end;

procedure TFrmOtelKayitListe.Button16Click(Sender: TObject);
begin
AdvOtelKayit.PrintSettings.TitleLines.Clear;
AdvOtelKayit.PrintSettings.TitleLines.Add('OTEL RAPORU');
AdvOtelKayit.PrintSettings.TitleLines.Add('');

AdvPreview.Grid := AdvOtelKayit ;
AdvPreview.Execute ;
end;

procedure TFrmOtelKayitListe.Button7Click(Sender: TObject);
var TmpSql:string;
i:integer;
begin

AdvOtelKayit.ClearRows(1,AdvOtelKayit.RowCount-1);
AdvOtelKayit.RowCount := 2 ;

TmpSql := 'Select * from otel where id<>0 ' ;
TmpSql := TmpSql + ' and adi like :adi ' ;

TmpSql := TmpSql + ' order by adi';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Adi').Value := TxtOtelAdi.Text+'%' ;
Qry1.Prepared;
Qry1.Open;

if Qry1.RecordCount = 0 then exit;

AdvOtelKayit.RowCount := Qry1.RecordCount + 1 ;

for i:=1 to Qry1.RecordCount do begin
AdvOtelKayit.Cells[1,i] := Qry1.FieldByName('Adi').AsString;
AdvOtelKayit.Cells[2,i] := Qry1.FieldByName('Telefon').AsString;
AdvOtelKayit.Cells[3,i] := Qry1.FieldByName('Adres').AsString;
AdvOtelKayit.Cells[4,i] := Qry1.FieldByName('Email').AsString;
AdvOtelKayit.Cells[5,i] := Qry1.FieldByName('Email2').AsString;
AdvOtelKayit.Cells[6,i] := Qry1.FieldByName('Fax').AsString;
AdvOtelKayit.Cells[7,i] := Qry1.FieldByName('id').AsString;
Qry1.Next;
end;

AdvOtelKayit.AutoNumberCol(0);

end;



procedure TFrmOtelKayitListe.CreateParams(var Params: TCreateParams);
begin
 inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;

procedure TFrmOtelKayitListe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FrmOtelKayitListe:= nil;
end;

end.
