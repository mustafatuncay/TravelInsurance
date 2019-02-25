unit UntMusteriKayitListe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DB, ADODB,DateUtils, Grids, AdvObj,
  BaseGrid, AdvGrid, tmsAdvGridExcel, asgprev, Buttons;

type
  TFrmMusteriKayitListe = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Qry1: TADOQuery;
    Panel15: TPanel;
    Button7: TButton;
    Button10: TButton;
    Button16: TButton;
    AdvPreview: TAdvPreviewDialog;
    AdvExcel: TAdvGridExcelIO;
    SaveDialog1: TSaveDialog;
    Label3: TLabel;
    Label4: TLabel;
    TxtAdi: TEdit;
    TxtSoyadi: TEdit;
    AdvMusteri: TAdvStringGrid;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button7Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure AdvMusteriDblClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CreateParams(var Params: TCreateParams); override;
    { Public declarations }
  end;

var
  FrmMusteriKayitListe: TFrmMusteriKayitListe;

implementation

uses UntDm, UntGlobal, UntMusteriKayit;

{$R *.dfm}



procedure TFrmMusteriKayitListe.AdvMusteriDblClick(Sender: TObject);
var TmpSql:String;
begin
FrmMusteriKayit:=TFrmMusteriKayit.Create(Self);

FrmMusteriKayit.BtnKaydet.Enabled :=False ;
FrmMusteriKayit.BtnGuncelle.Enabled := True;
FrmMusteriKayit.BtnSil.Enabled := True ;
FrmMusteriKayit.DtDogumTarihi.Date:=Date;

TmpSql := 'Select * from musteri where id=:id';
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('id').Value := AdvMusteri.Cells[12,AdvMusteri.Row] ;
Qry1.Prepared;
Qry1.Open;

FrmMusteriKayit.TxtAdi.Text           := Qry1.FieldByName('Adi').AsString;
FrmMusteriKayit.TxtSoyadi.Text        := Qry1.FieldByName('Soyadi').AsString;

FrmMusteriKayit.TxtAdi2.Text           := Qry1.FieldByName('Adi').AsString;
FrmMusteriKayit.TxtSoyadi2.Text        := Qry1.FieldByName('Soyadi').AsString;

FrmMusteriKayit.DtDogumTarihi.Date    := Qry1.FieldByName('DogumTarihi').AsDateTime;
FrmMusteriKayit.CmbYolcuTipi.ItemIndex:= FrmMusteriKayit.CmbYolcuTipi.Items.IndexOf(Qry1.FieldByName('YolcuTipi').AsString) ;
FrmMusteriKayit.CmbUyruk.ItemIndex    := FrmMusteriKayit.CmbUyruk.Items.IndexOf(Qry1.FieldByName('Uyrugu').AsString);
FrmMusteriKayit.TxtCepTel1.Text       := Qry1.FieldByName('CepTel1').AsString;
FrmMusteriKayit.TxtCepTel2.Text       := Qry1.FieldByName('CepTel2').AsString;
FrmMusteriKayit.TxtisTel.Text         := Qry1.FieldByName('isTel').AsString;
FrmMusteriKayit.TxtEvTel.Text         := Qry1.FieldByName('EvTel').AsString;
FrmMusteriKayit.TxtAdres.Text         := Qry1.FieldByName('Adres').AsString;
FrmMusteriKayit.TxtEmail.Text         := Qry1.FieldByName('Email').AsString;
FrmMusteriKayit.MemNotlar.Text        := Qry1.FieldByName('Notlar').AsString;
FrmMusteriKayit.TxtFax.Text           := Qry1.FieldByName('Fax').AsString;
FrmMusteriKayit.TxtAdi.Tag            := Qry1.FieldByName('id').AsInteger;
Qry1.Next;

FrmMusteriKayit.ShowModal;
FrmMusteriKayit.Free;
end;


procedure TFrmMusteriKayitListe.BitBtn4Click(Sender: TObject);
begin
if  assigned(FrmMusteriKayit) then begin
if (FrmMusteriKayit.WindowState = wsMinimized ) Then FrmMusteriKayit.WindowState := wsNormal  ;
FrmMusteriKayit.BringToFront;
exit;
end;


FrmMusteriKayit:=TFrmMusteriKayit.Create(Self);

FrmMusteriKayit.BtnKaydet.Enabled :=True ;
FrmMusteriKayit.BtnGuncelle.Enabled := False;
FrmMusteriKayit.BtnSil.Enabled := False ;
FrmMusteriKayit.DtDogumTarihi.Date:=Date;




FrmMusteriKayit.Show;
end;

procedure TFrmMusteriKayitListe.Button10Click(Sender: TObject);
begin
AdvExcel.AdvStringGrid := AdvMusteri ;
SaveDialog1.Execute;
if SaveDialog1.FileName='' Then Exit;
AdvExcel.XLSExport(SaveDialog1.FileName+'MusteriRaporu.xls');
end;

procedure TFrmMusteriKayitListe.Button16Click(Sender: TObject);
begin
AdvMusteri.PrintSettings.TitleLines.Clear;
AdvMusteri.PrintSettings.TitleLines.Add('MÜÞTERÝ RAPORU');
AdvMusteri.PrintSettings.TitleLines.Add('');

AdvPreview.Grid := AdvMusteri ;
AdvPreview.Execute ;
end;

procedure TFrmMusteriKayitListe.Button7Click(Sender: TObject);
var TmpSql:string;
i:integer;
begin

AdvMusteri.ClearRows(1,AdvMusteri.RowCount-1);
AdvMusteri.RowCount := 2 ;

TmpSql := 'Select * from musteri where id<>0 ' ;

TmpSql := TmpSql + ' and adi like :adi and soyadi like :Soyadi ' ;

TmpSql := TmpSql + ' order by adi,soyadi';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Adi').Value := TxtAdi.Text+'%' ;
Qry1.Parameters.ParamByName('SoyAdi').Value := TxtSoyAdi.Text+'%' ;
Qry1.Prepared;
Qry1.Open;

if Qry1.RecordCount = 0 then exit;

AdvMusteri.RowCount := Qry1.RecordCount + 1 ;

for i:=1 to Qry1.RecordCount do begin
AdvMusteri.Cells[1,i]  := Qry1.FieldByName('Adi').AsString;
AdvMusteri.Cells[2,i]  := Qry1.FieldByName('Soyadi').AsString;
AdvMusteri.Cells[3,i]  := Qry1.FieldByName('DogumTarihi').AsString;
AdvMusteri.Cells[4,i]  := Qry1.FieldByName('YolcuTipi').AsString;
AdvMusteri.Cells[5,i]  := Qry1.FieldByName('Uyrugu').AsString;
AdvMusteri.Cells[6,i]  := Qry1.FieldByName('CepTel1').AsString;
AdvMusteri.Cells[7,i]  := Qry1.FieldByName('CepTel2').AsString;
AdvMusteri.Cells[8,i]  := Qry1.FieldByName('isTel').AsString;
AdvMusteri.Cells[9,i]  := Qry1.FieldByName('EvTel').AsString;
AdvMusteri.Cells[10,i] := Qry1.FieldByName('Adres').AsString;
AdvMusteri.Cells[11,i] := Qry1.FieldByName('Email').AsString;
AdvMusteri.Cells[12,i] := Qry1.FieldByName('id').AsString;
Qry1.Next;
end;

AdvMusteri.AutoNumberCol(0);

end;




procedure TFrmMusteriKayitListe.CreateParams(var Params: TCreateParams);
begin
 inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;

end;

procedure TFrmMusteriKayitListe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FrmMusteriKayitListe:= nil;
end;

end.
