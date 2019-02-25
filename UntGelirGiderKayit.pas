unit UntGelirGiderKayit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, MoneyEdit, ComCtrls,DateUtils, Buttons;

type
  TFrmGelirGiderKayit = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    BtnKaydet: TButton;
    Qry1: TADOQuery;
    DtTarih: TDateTimePicker;
    MemAciklama: TMemo;
    CurrBorc: TMoneyEdit;
    Label10: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    Label5: TLabel;
    BitBtn2: TBitBtn;
    CmbAdi: TComboBox;
    CmbSoyadi: TComboBox;
    CmbKimlikNo: TComboBox;
    CmbTelNo: TComboBox;
    ChkSec: TCheckBox;
    Label6: TLabel;
    CmbislemTuru: TComboBox;
    Label2: TLabel;
    CurrAlacak: TMoneyEdit;
    Label23: TLabel;
    CmbParaBirimi: TComboBox;
    CmbKullanilanKart: TComboBox;
    Label13: TLabel;
    Label7: TLabel;
    CmbOdemeSekli: TComboBox;
    procedure BtnKaydetClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CmbAdiChange(Sender: TObject);
    procedure CmbSoyadiChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CurrBorcChange(Sender: TObject);
    procedure CurrAlacakChange(Sender: TObject);
  private
    { Private declarations }
  public
   procedure CreateParams(var Params: TCreateParams); override;
   procedure MusteriGetir;
   procedure MusteriGetir2;
   procedure SabitDegerGetir;
    { Public declarations }
  end;

var
  FrmGelirGiderKayit: TFrmGelirGiderKayit;

implementation

uses UntGlobal, UntMusteriKayit;

{$R *.dfm}

procedure TFrmGelirGiderKayit.BitBtn2Click(Sender: TObject);
begin
FrmMusteriKayit:=TFrmMusteriKayit.Create(Self);

FrmMusteriKayit.BtnKaydet.Enabled   := True;
FrmMusteriKayit.BtnGuncelle.Enabled := False;
FrmMusteriKayit.BtnSil.Enabled      := False;


MusteriGetir2;
FrmMusteriKayit.ShowModal;
MusteriGetir;
FrmMusteriKayit.Free;
end;

procedure TFrmGelirGiderKayit.BtnKaydetClick(Sender: TObject);
var TmpSql:string;
begin
if CmbAdi.ItemIndex = -1  then begin
MsgUyari('Lürfen Müþteri / Þirket giriniz ...');
exit;
end;

if (CurrAlacak.Value = 0) and (CurrBorc.Value = 0) then begin
MsgUyari('Lürfen miktarý giriniz ...');
exit;
end;

TmpSql:= 'insert into gelirgider (Adi,Soyadi,KimlikNo,TelNo,Tarih,islemTuru,Borc,Alacak,ParaBirimi,idNo,Aciklama,KullanilanKart,OdemeSekli) '+
'Values(:Adi,:Soyadi,:KimlikNo,:TelNo,:Tarih,:islemTuru,:Borc,:Alacak,:ParaBirimi,:idNo,:Aciklama,:KullanilanKart,:OdemeSekli)' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('Adi').Value      := CmbAdi.Text ;
Qry1.Parameters.ParamByName('Soyadi').Value   := CmbSoyadi.Text ;
Qry1.Parameters.ParamByName('KimlikNo').Value := CmbKimlikNo.Text ;
Qry1.Parameters.ParamByName('TelNo').Value    := CmbTelNo.Text ;

Qry1.Parameters.ParamByName('Tarih').Value    := IntToStr(YearOf(DtTarih.Date))+'-'+
                                                 IntToStr(MonthOf(DtTarih.Date))+'-'+
                                                 IntToStr(DayOf(DtTarih.Date));

Qry1.Parameters.ParamByName('islemTuru').Value := CmbislemTuru.Text ;
Qry1.Parameters.ParamByName('Borc').Value      := CurrBorc.Value ;
Qry1.Parameters.ParamByName('Alacak').Value    := CurrAlacak.Value ;

Qry1.Parameters.ParamByName('ParaBirimi').Value:= CmbParaBirimi.Text ;
Qry1.Parameters.ParamByName('idNo').Value      := '0' ;
Qry1.Parameters.ParamByName('Aciklama').Value  := MemAciklama.Text ;

Qry1.Parameters.ParamByName('KullanilanKart').Value  := CmbKullanilanKart.Text;
Qry1.Parameters.ParamByName('OdemeSekli').Value      := CmbOdemeSekli.Text;

Qry1.Prepared;
Qry1.ExecSQL;

MsgUyari('Kaydedildi ...') ;
close;
end;

procedure TFrmGelirGiderKayit.CmbAdiChange(Sender: TObject);
begin

CmbSoyadi.ItemIndex   := CmbAdi.ItemIndex;
CmbKimlikNo.ItemIndex := CmbAdi.ItemIndex;
CmbTelNo.ItemIndex    := CmbAdi.ItemIndex;

end;

procedure TFrmGelirGiderKayit.CmbSoyadiChange(Sender: TObject);
begin
CmbAdi.ItemIndex      := CmbSoyadi.ItemIndex;
CmbKimlikNo.ItemIndex := CmbSoyadi.ItemIndex;
CmbTelNo.ItemIndex    := CmbSoyadi.ItemIndex;
end;

procedure TFrmGelirGiderKayit.CreateParams(var Params: TCreateParams);
begin
 inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;

procedure TFrmGelirGiderKayit.CurrAlacakChange(Sender: TObject);
begin
CurrBorc.Value := 0;
end;

procedure TFrmGelirGiderKayit.CurrBorcChange(Sender: TObject);
begin
CurrAlacak.Value := 0;

end;

procedure TFrmGelirGiderKayit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FrmGelirGiderKayit:= nil;

end;

procedure TFrmGelirGiderKayit.FormCreate(Sender: TObject);
var TmpSql:String;
i:integer;
begin

MusteriGetir;
DtTarih.Date := Date;

end;

procedure TFrmGelirGiderKayit.MusteriGetir;
var i:integer;
TmpSql:String;
begin

CmbAdi.Clear;
CmbSoyadi.Clear;
CmbTelNo.Clear;
CmbKimlikNo.Clear;

TmpSql:= 'Select Adi,Soyadi,CepTel1,Adres from musteri order by adi,soyadi' ;
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Open;

for i:=0 to Qry1.RecordCount-1 do begin
CmbAdi.Items.Add(Qry1.FieldByName('Adi').AsString);
CmbSoyadi.Items.Add(Qry1.FieldByName('Soyadi').AsString);
CmbTelNo.Items.Add(Qry1.FieldByName('CepTel1').AsString);
CmbKimlikNo.Items.Add(Qry1.FieldByName('Adres').AsString);
Qry1.Next;
end;


end;

procedure TFrmGelirGiderKayit.MusteriGetir2;
var TmpSql:String;
begin
TmpSql:= 'Select * from musteri where adi=:adi and soyadi=:soyadi';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Adi').Value := CmbAdi.Text;
Qry1.Parameters.ParamByName('Soyadi').Value := CmbSoyadi.Text;
Qry1.Prepared;
Qry1.Open;


if qry1.RecordCount = 0 then exit;

FrmMusteriKayit.TxtAdi.Text        := Qry1.FieldByName('Adi').AsString;
FrmMusteriKayit.TxtSoyadi.Text     := Qry1.FieldByName('Soyadi').AsString;
FrmMusteriKayit.TxtKimlikNo.Text   := Qry1.FieldByName('KimlikNo').AsString;

FrmMusteriKayit.DtDogumTarihi.Date := Qry1.FieldByName('DogumTarihi').AsDateTime;
FrmMusteriKayit.CmbYolcuTipi.Text  := Qry1.FieldByName('YolcuTipi').AsString;
FrmMusteriKayit.CmbUyruk.Text      := Qry1.FieldByName('Uyrugu').AsString;
FrmMusteriKayit.TxtCepTel1.Text    := Qry1.FieldByName('CepTel1').AsString;
FrmMusteriKayit.TxtCepTel2.Text    := Qry1.FieldByName('CepTel2').AsString;
FrmMusteriKayit.TxtEvTel.Text      := Qry1.FieldByName('EvTel').AsString;
FrmMusteriKayit.TxtisTel.Text      := Qry1.FieldByName('isTel').AsString;
FrmMusteriKayit.TxtAdres.Text      := Qry1.FieldByName('Adres').AsString;
FrmMusteriKayit.TxtEmail.Text      := Qry1.FieldByName('Email').AsString;

FrmMusteriKayit.TxtAdi.Tag      := Qry1.FieldByName('id').AsInteger;


BtnKaydet.Enabled := False;


end;

procedure TFrmGelirGiderKayit.SabitDegerGetir;
Var TmpSql:string;
i:integer;
begin
CmbKullanilanKart.clear;
CmbKullanilanKart.Items.Add(' ');

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

//////////////////////////////////////////////////////////////////////////////
CmbislemTuru.Clear;

TmpSql:= 'Select aciklama from sabitdegerler where kriterno=:kriterno order by aciklama';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('kriterno').Value := '6' ;
Qry1.Prepared;
Qry1.Open;

for i:=0 to Qry1.RecordCount-1  do begin
CmbislemTuru.Items.Add(Qry1.FieldByName('aciklama').AsString);
Qry1.Next;
end;

//////////////////////////////////////////////////////////////////////////////
CmbOdemeSekli.Clear;

TmpSql:= 'Select aciklama from sabitdegerler where kriterno=:kriterno order by aciklama';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('kriterno').Value := '7' ;
Qry1.Prepared;
Qry1.Open;

for i:=0 to Qry1.RecordCount-1  do begin
CmbOdemeSekli.Items.Add(Qry1.FieldByName('aciklama').AsString);
Qry1.Next;
end;

end;

end.
