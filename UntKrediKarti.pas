unit UntKrediKarti;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, MoneyEdit, Grids, AdvObj, BaseGrid,
  AdvGrid, ComCtrls,DateUtils;

type
  TFrmKrediKarti = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Qry1: TADOQuery;
    Panel2: TPanel;
    Panel3: TPanel;
    AdvListe: TAdvStringGrid;
    BtnKaydet: TButton;
    BtnSil: TButton;
    Label13: TLabel;
    CmbKullanilanKart: TComboBox;
    CurrLimit: TMoneyEdit;
    Label8: TLabel;
    Label21: TLabel;
    DtTarih: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure BtnKaydetClick(Sender: TObject);
    procedure CmbKullanilanKartChange(Sender: TObject);
    procedure BtnSilClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure KayitGetir; { Public declarations }
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  FrmKrediKarti: TFrmKrediKarti;

implementation

{$R *.dfm}

procedure TFrmKrediKarti.BtnKaydetClick(Sender: TObject);
begin
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('insert into kredikartiyatirim (kartadi,miktar,tarih) values (:kartadi,:miktar,:tarih)');
Qry1.Parameters.ParamByName('kartadi').Value := CmbKullanilanKart.Text ;
Qry1.Parameters.ParamByName('miktar').Value  := CurrLimit.Value ;
Qry1.Parameters.ParamByName('tarih').Value := IntToStr(YearOf(DtTarih.Date))+'-'+
                                              IntToStr(MonthOf(DtTarih.Date))+'-'+
                                              IntToStr(DayOf(DtTarih.Date));
Qry1.Prepared;
Qry1.ExecSQL;

KayitGetir;
end;

procedure TFrmKrediKarti.BtnSilClick(Sender: TObject);
begin
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('delete from kredikartiyatirim where id=:id ');
Qry1.Parameters.ParamByName('id').Value   := AdvListe.Cells[3,AdvListe.Row];
Qry1.Prepared;
Qry1.ExecSQL;

KayitGetir;
end;

procedure TFrmKrediKarti.CmbKullanilanKartChange(Sender: TObject);
begin
KayitGetir;
end;

procedure TFrmKrediKarti.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;

procedure TFrmKrediKarti.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FrmKrediKarti:= nil;

end;

procedure TFrmKrediKarti.FormShow(Sender: TObject);
var TmpSql:string;
i:integer;
begin
DtTarih.Date := Date ;
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


procedure TFrmKrediKarti.KayitGetir;
var TmpSql:string;
i:integer;
begin

AdvListe.ClearRows(1,AdvListe.RowCount-1);
AdvListe.RowCount := 2 ;

TmpSql := 'select * from kredikartiyatirim where kartadi=:kartadi order by tarih ' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('kartadi').Value := CmbKullanilanKart.Text ;
Qry1.Prepared;
Qry1.Open;

if Qry1.RecordCount=0 then exit;

AdvListe.RowCount := Qry1.RecordCount + 1 ;

for i:=1 to Qry1.RecordCount do begin
AdvListe.Cells[1,i]:= Qry1.FieldByName('tarih').AsString ;
AdvListe.Cells[2,i]:= FormatFloat('#,##0.00',Qry1.FieldByName('miktar').AsCurrency);
AdvListe.Cells[3,i]:= Qry1.FieldByName('id').AsString ;
Qry1.Next;
end;

AdvListe.AutoNumberCol(0);

end;

end.
