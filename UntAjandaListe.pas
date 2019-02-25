unit UntAjandaListe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DB, ADODB,DateUtils, Grids, AdvObj,
  BaseGrid, AdvGrid, tmsAdvGridExcel, asgprev, Buttons;

type
  TFrmAjandaListe = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Qry1: TADOQuery;
    Panel15: TPanel;
    Button7: TButton;
    Button10: TButton;
    Button16: TButton;
    AdvAjanda: TAdvStringGrid;
    AdvPreview: TAdvPreviewDialog;
    AdvExcel: TAdvGridExcelIO;
    SaveDialog1: TSaveDialog;
    TxtKriter: TEdit;
    BitBtn4: TBitBtn;
    ChkTeklif: TCheckBox;
    ChkOnay: TCheckBox;
    ChkRed: TCheckBox;
    CmbKriter: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button7Click(Sender: TObject);
    procedure AdvAjandaDblClick(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure AdvAjandaGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure AdvAjandaCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure AdvAjandaCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
  private
    { Private declarations }
  public
    procedure CreateParams(var Params: TCreateParams); override;
    { Public declarations }
  end;

var
  FrmAjandaListe: TFrmAjandaListe;

implementation

uses UntDm, UntGlobal, UntAjandaKayit;

{$R *.dfm}

procedure TFrmAjandaListe.AdvAjandaCanEditCell(Sender: TObject; ARow,
  ACol: Integer; var CanEdit: Boolean);
begin
CanEdit := False ;

if ACol in [1,2,3] then CanEdit := True;

end;

procedure TFrmAjandaListe.AdvAjandaCheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin
if ACol = 1 then  begin
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('update Ajanda set Teklif=:Teklif where id=:id');
if State = True then
Qry1.Parameters.ParamByName('Teklif').Value := 'Y'
Else
Qry1.Parameters.ParamByName('Teklif').Value := 'N';
Qry1.Parameters.ParamByName('id').Value := AdvAjanda.Cells[11,Arow];
Qry1.Prepared;
Qry1.ExecSQL ;
end;

if ACol = 2 then  begin
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('update Ajanda set Onay=:Onay where id=:id');
if State = True then
Qry1.Parameters.ParamByName('Onay').Value := 'Y'
Else
Qry1.Parameters.ParamByName('Onay').Value := 'N';
Qry1.Parameters.ParamByName('id').Value := AdvAjanda.Cells[11,Arow];
Qry1.Prepared;
Qry1.ExecSQL ;
end;

if ACol = 3 then  begin
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('update Ajanda set Red=:Red where id=:id');
if State = True then
Qry1.Parameters.ParamByName('Red').Value := 'Y'
Else
Qry1.Parameters.ParamByName('Red').Value := 'N';
Qry1.Parameters.ParamByName('id').Value := AdvAjanda.Cells[11,Arow];
Qry1.Prepared;
Qry1.ExecSQL ;
end;

end;

procedure TFrmAjandaListe.AdvAjandaDblClick(Sender: TObject);
var TmpSql:String;
i:integer;
begin
FrmAjandaKayit:=TFrmAjandaKayit.Create(Self);

FrmAjandaKayit.BtnKaydet.Enabled :=False ;
FrmAjandaKayit.BtnGuncelle.Enabled := True;
FrmAjandaKayit.BtnSil.Enabled := True ;

TmpSql := 'Select * from Ajanda where id=:id';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('id').Value := AdvAjanda.Cells[11,AdvAjanda.Row] ;
Qry1.Prepared;
Qry1.Open;

FrmAjandaKayit.TxtKonu.Text      := Qry1.FieldByName('Konu').AsString;
FrmAjandaKayit.Txtilgili.Text    := Qry1.FieldByName('ilgili').AsString;
FrmAjandaKayit.Txtiletiþim.Text  := Qry1.FieldByName('iletisim').AsString;
FrmAjandaKayit.Txtilgilenen.Text := Qry1.FieldByName('ilgilenen').AsString;
FrmAjandaKayit.CurrTutar.Value   := Qry1.FieldByName('Tutar').AsCurrency;
FrmAjandaKayit.MemNot.Text       := Qry1.FieldByName('Notlar').AsString;
FrmAjandaKayit.TxtPnr.Text       := Qry1.FieldByName('Pnr').AsString;
FrmAjandaKayit.TxtKonu.Tag       := Qry1.FieldByName('id').AsInteger;






TmpSql := 'Select * from AjandaYolcuListesi where Ajandaid=:Ajandaid';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Ajandaid').Value := FrmAjandaKayit.TxtKonu.Tag ;
Qry1.Prepared;
Qry1.Open;

if qry1.RecordCount <> 0 Then  begin
FrmAjandaKayit.AdvYolcuListesi.RowCount := Qry1.RecordCount + 1 ;

for i:=1  to qry1.RecordCount do begin

FrmAjandaKayit.AdvYolcuListesi.Cells[0,i]:= Qry1.FieldByName('Tur').AsString;
FrmAjandaKayit.AdvYolcuListesi.Cells[1,i]:= Qry1.FieldByName('Adi').AsString;
FrmAjandaKayit.AdvYolcuListesi.Cells[2,i]:= Qry1.FieldByName('Soyadi').AsString;
FrmAjandaKayit.AdvYolcuListesi.Cells[3,i]:= Qry1.FieldByName('DogumTarihi').AsString;
FrmAjandaKayit.AdvYolcuListesi.Cells[4,i]:= Qry1.FieldByName('PassportNo').AsString;

Qry1.Next;
end;
end;




FrmAjandaKayit.ShowModal;
FrmAjandaKayit.Free;

end;

procedure TFrmAjandaListe.AdvAjandaGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
if ACol=9 then HAlign := taRightJustify;

end;

procedure TFrmAjandaListe.BitBtn4Click(Sender: TObject);
begin
if  assigned(FrmAjandaKayit) then begin
if (FrmAjandaKayit.WindowState = wsMinimized ) Then FrmAjandaKayit.WindowState := wsNormal  ;
FrmAjandaKayit.BringToFront;
exit;
end;


FrmAjandaKayit:=TFrmAjandaKayit.Create(Self);

FrmAjandaKayit.BtnKaydet.Enabled   := True  ;
FrmAjandaKayit.BtnGuncelle.Enabled := False ;
FrmAjandaKayit.BtnSil.Enabled      := False ;

FrmAjandaKayit.Show;
end;

procedure TFrmAjandaListe.Button10Click(Sender: TObject);
begin
AdvExcel.AdvStringGrid := AdvAjanda ;
SaveDialog1.Execute;
if SaveDialog1.FileName='' Then Exit;
AdvExcel.XLSExport(SaveDialog1.FileName+'AjandaRaporu.xls');
end;

procedure TFrmAjandaListe.Button16Click(Sender: TObject);
begin
AdvAjanda.PrintSettings.TitleLines.Clear;
AdvAjanda.PrintSettings.TitleLines.Add('AJANDA RAPORU');
AdvAjanda.PrintSettings.TitleLines.Add('');

AdvPreview.Grid := AdvAjanda ;
AdvPreview.Execute ;
end;

procedure TFrmAjandaListe.Button7Click(Sender: TObject);
var TmpSql:string;
i:integer;
begin

AdvAjanda.ClearRows(1,AdvAjanda.RowCount-1);
AdvAjanda.RowCount := 2 ;

TmpSql := 'Select * from Ajanda where id<>0 ' ;


if CmbKriter.Text = 'Ýlgili'    then TmpSql := TmpSql + ' and ilgili like :kriter ' ;
if CmbKriter.Text = 'Ýlgilenen' then TmpSql := TmpSql + ' and ilgilenen like :kriter ' ;
if CmbKriter.Text = 'Konu'      then TmpSql := TmpSql + ' and konu like :kriter ' ;

if ChkTeklif.Checked = True then
TmpSql := TmpSql + ' and Teklif=''Y'' ' ;

if ChkOnay.Checked = True then
TmpSql := TmpSql + ' and Onay=''Y'' ' ;

if ChkRed.Checked = True then
TmpSql := TmpSql + ' and Red=''Y'' ' ;

TmpSql := TmpSql + ' order by Tarih desc';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('kriter').Value := TxtKriter.Text+'%' ;
Qry1.Prepared;
Qry1.Open;

if Qry1.RecordCount = 0 then exit;

AdvAjanda.RowCount := Qry1.RecordCount + 1 ;

for i:=1 to Qry1.RecordCount do begin

AdvAjanda.AddCheckBox(1,i,False,True);
AdvAjanda.Cells[1,i]  := Qry1.FieldByName('Teklif').AsString;
AdvAjanda.AddCheckBox(2,i,False,True);
AdvAjanda.Cells[2,i]  := Qry1.FieldByName('Onay').AsString;
AdvAjanda.AddCheckBox(3,i,False,True);
AdvAjanda.Cells[3,i]  := Qry1.FieldByName('Red').AsString;

AdvAjanda.Cells[4,i]  := Qry1.FieldByName('Tarih').AsString;
AdvAjanda.Cells[5,i]  := Qry1.FieldByName('Konu').AsString;
AdvAjanda.Cells[6,i]  := Qry1.FieldByName('ilgili').AsString;
AdvAjanda.Cells[7,i]  := Qry1.FieldByName('iletisim').AsString;
AdvAjanda.Cells[8,i]  := Qry1.FieldByName('ilgilenen').AsString;
AdvAjanda.Cells[9,i]  := FormatFloat('#,##0.00',Qry1.FieldByName('Tutar').AsCurrency) ;
AdvAjanda.Cells[10,i] := Qry1.FieldByName('Notlar').AsString;
AdvAjanda.Cells[11,i] := Qry1.FieldByName('id').AsString;

Qry1.Next;
end;

AdvAjanda.AutoNumberCol(0);

end;



procedure TFrmAjandaListe.CreateParams(var Params: TCreateParams);
begin
 inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;

procedure TFrmAjandaListe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FrmAjandaListe:= nil;
end;

end.
