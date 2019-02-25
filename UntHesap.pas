unit UntHesap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DB, ADODB,DateUtils,ShellApi, AdvEdit,
  AdvMoneyEdit, Buttons, Grids, AdvObj, BaseGrid, AdvGrid,StrUtils;

type
  TFrmHesap = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Qry1: TADOQuery;
    Currislem1: TAdvMoneyEdit;
    CmbKur: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BtnEsittir: TBitBtn;
    Memislem: TMemo;
    BitBtn8: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CmbKurChange(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BtnEsittirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CreateParams(var Params: TCreateParams); override;
    { Public declarations }
  end;

var
  FrmHesap: TFrmHesap;

implementation

uses UntDm, UntGlobal, UntProjectGlobal;

{$R *.dfm}

procedure TFrmHesap.BitBtn1Click(Sender: TObject);
begin
Memislem.Text := Memislem.Text + Currislem1.Text + '*';
Currislem1.SetFocus;
end;

procedure TFrmHesap.BitBtn2Click(Sender: TObject);
begin
Memislem.Text := Memislem.Text + Currislem1.Text + '+';
Currislem1.SetFocus;
end;

procedure TFrmHesap.BitBtn3Click(Sender: TObject);
begin
Memislem.Text := Memislem.Text + Currislem1.Text + '-';
Currislem1.SetFocus;
end;

procedure TFrmHesap.BitBtn5Click(Sender: TObject);
var Tmpislem:String;
begin

Tmpislem:='select ('+LeftStr(Memislem.Text,Length(Memislem.Text)-1)+') as islem  ';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(Tmpislem);
Qry1.Open;

//Tmpislem := 'select ('+Qry1.FieldByName('islem').AsString+RightStr(Memislem.Text,1)+(Currislem1.Text/100)+') as islem  ';
//Currislem1.Value :=  Qry1.FieldByName('islem').AsCurrency ;
//Currislem1.SetFocus;
//Memislem.Text := Memislem.Text + CurrToStr (Qry1.FieldByName('islem').AsCurrency*(Currislem1.Value/100));

Currislem1.Value := Qry1.FieldByName('islem').AsCurrency*(Currislem1.Value/100);
Currislem1.SetFocus;

end;

procedure TFrmHesap.BitBtn6Click(Sender: TObject);
begin
Memislem.Clear;
Currislem1.Value := 0 ;
end;

procedure TFrmHesap.BtnEsittirClick(Sender: TObject);
var i:integer;
Tmpislem:String;
begin

Memislem.Text := Memislem.Text + Currislem1.Text ;

Tmpislem:='select ('+Memislem.Text+') as islem  ';

//ShowMessage(Tmpislem);

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(Tmpislem);
Qry1.Open;

Currislem1.Value :=  Qry1.FieldByName('islem').AsCurrency ;
Currislem1.SetFocus;
Memislem.Clear;




end;

procedure TFrmHesap.BitBtn8Click(Sender: TObject);
begin
Memislem.Text := Memislem.Text + Currislem1.Text + '/';
Currislem1.SetFocus;
end;

procedure TFrmHesap.CmbKurChange(Sender: TObject);
begin
if CmbKur.Text = 'AMERÝKAN DOLARI'  then Currislem1.Value := AlisDolar ;
if CmbKur.Text = 'EURO'             then Currislem1.Value := AlisEuro ;
if CmbKur.Text = 'ÝNGÝLÝZ STERLÝNÝ' then Currislem1.Value := AlisSterlin ;
end;

procedure TFrmHesap.CreateParams(var Params: TCreateParams);
begin
 inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;

procedure TFrmHesap.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FrmHesap:= nil;
end;

procedure TFrmHesap.FormShow(Sender: TObject);
begin

if CmbKur.Text = 'AMERÝKAN DOLARI'  then Currislem1.Value := AlisDolar ;
if CmbKur.Text = 'EURO'             then Currislem1.Value := AlisEuro ;
if CmbKur.Text = 'ÝNGÝLÝZ STERLÝNÝ' then Currislem1.Value := AlisSterlin ;


end;

end.
