unit UntSabitDegerler;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, AdvObj, BaseGrid, AdvGrid, DB, ADODB,
  MoneyEdit, ComCtrls;

type
  TFrmSabitDegerler = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Qry1: TADOQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Button1: TButton;
    Button4: TButton;
    AdvListe: TAdvStringGrid;
    TxtKriter: TEdit;
    CmbKriter: TComboBox;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    BtnKaydet: TButton;
    BtnSil: TButton;
    Label8: TLabel;
    CurrLimit: TMoneyEdit;
    Label13: TLabel;
    CmbKullanilanKart: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure CmbKriterChange(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CmbKullanilanKartDropDown(Sender: TObject);
    procedure BtnKaydetClick(Sender: TObject);
    procedure CmbKullanilanKartChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure KayitGetir;
    procedure CreateParams(var Params: TCreateParams); override;
    { Public declarations }
  end;

var
  FrmSabitDegerler: TFrmSabitDegerler;

implementation

uses UntGlobal;

{$R *.dfm}

procedure TFrmSabitDegerler.BtnKaydetClick(Sender: TObject);
begin

if CmbKullanilanKart.Tag=0 then begin
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('insert into kredikartilimit (kartadi,kartlimiti) values (:kartadi,:kartlimiti)');
Qry1.Parameters.ParamByName('kartadi').Value    := CmbKullanilanKart.Text ;
Qry1.Parameters.ParamByName('kartlimiti').Value := CurrLimit.Value ;
Qry1.Prepared;
Qry1.ExecSQL;
end
Else begin
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('update kredikartilimit set kartadi=:kartadi,kartlimiti=:kartlimiti where id=:id');
Qry1.Parameters.ParamByName('kartadi').Value    := CmbKullanilanKart.Text ;
Qry1.Parameters.ParamByName('kartlimiti').Value := CurrLimit.Value ;
Qry1.Parameters.ParamByName('id').Value := CmbKullanilanKart.Tag ;
Qry1.Prepared;
Qry1.ExecSQL;
end;

MsgUyari('Kaydedildi...');
end;

procedure TFrmSabitDegerler.Button1Click(Sender: TObject);
var TmpSql:string;
begin

TmpSql := 'insert into sabitdegerler (kriterno,kriter,aciklama) Values(:kriterno,:kriter,:aciklama) ' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('kriterno').Value := CmbKriter.ItemIndex;
Qry1.Parameters.ParamByName('kriter').Value := CmbKriter.Text;
Qry1.Parameters.ParamByName('aciklama').Value := Trim(TxtKriter.Text);
Qry1.Prepared;
Qry1.ExecSQL;

KayitGetir;


end;

procedure TFrmSabitDegerler.Button4Click(Sender: TObject);
var TmpSql:string;
begin

TmpSql := 'Delete from sabitdegerler where id=:id' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('id').Value := AdvListe.Cells[2,AdvListe.Row];
Qry1.Prepared;
Qry1.ExecSQL;

KayitGetir;
end;

procedure TFrmSabitDegerler.CmbKriterChange(Sender: TObject);
begin
KayitGetir;
end;

procedure TFrmSabitDegerler.CmbKullanilanKartChange(Sender: TObject);
begin
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('select kartlimiti,id from  kredikartilimit where kartadi=:kartadi');
Qry1.Parameters.ParamByName('kartadi').Value := CmbKullanilanKart.Text;
Qry1.Prepared;
Qry1.Open ;

CurrLimit.Value :=  Qry1.FieldByName('kartlimiti').AsCurrency ;
CmbKullanilanKart.Tag :=  Qry1.FieldByName('id').AsInteger ;

end;

procedure TFrmSabitDegerler.CmbKullanilanKartDropDown(Sender: TObject);
var TmpSql:string;
i:integer;
begin

CmbKullanilanKart.Clear;

TmpSql:= 'Select aciklama from sabitdegerler where kriterno=:kriterno order by aciklama';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('kriterno').Value := '2' ;
Qry1.Prepared;
Qry1.Open;

for i:=0 to Qry1.RecordCount-1  do begin
CmbKullanilanKart.Items.Add(Qry1.FieldByName('aciklama').AsString);
Qry1.Next;
end;

end;

procedure TFrmSabitDegerler.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;

procedure TFrmSabitDegerler.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FrmSabitDegerler:= nil;
end;

procedure TFrmSabitDegerler.KayitGetir;
var TmpSql:string;
i:integer;
begin

AdvListe.ClearRows(1,AdvListe.RowCount-1);
AdvListe.RowCount := 2 ;

TmpSql := 'select * from sabitdegerler where kriterno=:kriterno order by aciklama ' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('kriterno').Value := CmbKriter.ItemIndex ;
Qry1.Prepared;
Qry1.Open;

if Qry1.RecordCount=0 then exit;

AdvListe.RowCount := Qry1.RecordCount + 1 ;

for i:=1 to Qry1.RecordCount do begin
AdvListe.Cells[1,i]:= Qry1.FieldByName('aciklama').AsString;
AdvListe.Cells[2,i]:= Qry1.FieldByName('id').AsString;
Qry1.Next;
end;

AdvListe.AutoNumberCol(0);

end;

end.
