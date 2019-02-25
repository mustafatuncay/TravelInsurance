unit Untislemler;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, pngimage,
  StdCtrls, jpeg, ExtCtrls, Grids, AdvObj, BaseGrid, AdvGrid, Buttons,DateUtils,
  ComCtrls, MoneyEdit, asgprev, asgprint, Menus,StrUtils, DBGrids, ADODB;

type
  TFrmislemler = class(TForm)
    Image1: TImage;
    LblCaption: TLabel;
    Image5: TImage;
    Image3: TImage;
    Panel1: TPanel;
    Advislem: TAdvStringGrid;
    AdvOdeme: TAdvStringGrid;
    Panel2: TPanel;
    Bevel1: TBevel;
    Image4: TImage;
    Image6: TImage;
    Bevel2: TBevel;
    Label9: TLabel;
    Label11: TLabel;
    Label19: TLabel;
    Label25: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    TxtEvTel: TEdit;
    TxtAdres: TEdit;
    TxtCepTel: TEdit;
    TxtAdi: TEdit;
    TxtSoyadi: TEdit;
    TxtisTel: TEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel3: TPanel;
    DtTarih: TDateTimePicker;
    Cmbislemturu: TComboBox;
    txtmalzeme: TEdit;
    currfiyati: TMoneyEdit;
    currodenenmiktar: TMoneyEdit;
    currkalanmiktar: TMoneyEdit;
    chkodendi: TCheckBox;
    btnok: TButton;
    Image2: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Panel4: TPanel;
    Image7: TImage;
    DtOdemeTarih: TDateTimePicker;
    Label13: TLabel;
    CmbOdemeTur: TComboBox;
    Label14: TLabel;
    CurrOdemeMiktar: TMoneyEdit;
    Label15: TLabel;
    Button1: TButton;
    AdvListe: TAdvStringGrid;
    Button2: TButton;
    AdvPreview: TAdvPreviewDialog;
    PopupMenu1: TPopupMenu;
    eslimFii1: TMenuItem;
    Qry1: TADOQuery;
    Qry2: TADOQuery;
    procedure Image3Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure AdvislemCellsChanged(Sender: TObject; R: TRect);
    procedure AdvislemGetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure AdvislemCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure btnokClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AdvislemClick(Sender: TObject);
    procedure AdvOdemeClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure currfiyatiChange(Sender: TObject);
    procedure currodenenmiktarChange(Sender: TObject);
    procedure chkodendiClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvislemGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure AdvOdemeGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Button2Click(Sender: TObject);
    procedure AdvListeGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure eslimFii1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure islemgetir;
    procedure odemegetir;
    procedure islemodemekaydet;

    { Public declarations }
  end;

var
  Frmislemler: TFrmislemler;

implementation

uses UntProjectGlobal, UntGlobal, RepSatis;

{$R *.dfm}

procedure TFrmislemler.AdvislemCanEditCell(Sender: TObject; ARow, ACol: Integer;
  var CanEdit: Boolean);
begin
//CanEdit := True;
end;

procedure TFrmislemler.AdvislemCellsChanged(Sender: TObject; R: TRect);
var TmpSql:String;
Adet,BirimFiyati,ToplamTutar,OdenenMiktar,Kalan:Currency;

begin

if TxtAdi.Tag=0 Then exit;

if Trim(Advislem.Cells[2,Advislem.Row])='' then exit;
if Trim(Advislem.Cells[3,Advislem.Row])='' then exit;

//if Trim(Advislem.Cells[4,Advislem.Row])='' Then  Adet :=0
//else Adet := StrToCurr(AdvSatislar.Cells[3,AdvSatislar.Row]) ;

//AdvSatislar.Cells[5,AdvSatislar.Row] := CurrToStr(Adet * BirimFiyati);
//AdvSatislar.Cells[7,AdvSatislar.Row] :=  CurrToStr(ToplamTutar - OdenenMiktar);

if Advislem.Cells[8,Advislem.Row]='' then begin

TmpSql := 'insert into islemler (Adi,Soyadi,Malzeme,Fiyati,OdenenMiktar,KalanMiktar,Odendi,Tarih) ' +
' Values ' +
'(:Adi,:Soyadi,:Malzeme,:Fiyati,:OdenenMiktar,:KalanMiktar,:Odendi,:Tarih) ' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('Adi').Value          := TxtAdi.Text   ;
Qry1.Parameters.ParamByName('Soyadi').Value       := TxtSoyadi.Text;
Qry1.Parameters.ParamByName('Malzeme').Value      := Advislem.Cells[3,Advislem.Row];
Qry1.Parameters.ParamByName('Fiyati').Value       := Advislem.Cells[4,Advislem.Row];
Qry1.Parameters.ParamByName('OdenenMiktar').Value := Advislem.Cells[5,Advislem.Row];
Qry1.Parameters.ParamByName('KalanMiktar').Value  := Advislem.Cells[6,Advislem.Row];
Qry1.Parameters.ParamByName('Odendi').Value       := Advislem.Cells[7,Advislem.Row];

Qry1.Parameters.ParamByName('Tarih').Value := IntToStr(YearOf(StrToDate(Advislem.Cells[1,Advislem.Row])))+'-'+
                                          IntToStr(MonthOf(StrToDate(Advislem.Cells[1,Advislem.Row])))+'-'+
                                          IntToStr(DayOf(StrToDate(Advislem.Cells[1,Advislem.Row])));
Qry1.Prepared:=True;
Qry1.ExecSQL;

end
Else Begin

TmpSql := 'update islemler set ' +

'Adi=:Adi,'+
'Soyadi=:Soyadi,'+
'Malzeme=:Malzeme, '+
'Fiyati=:Fiyati, '+
'OdenenMiktar=:OdenenMiktar, '+
'KalanMiktar=:KalanMiktar, '+
'Odendi=:Odendi, '+
'Tarih=:Tarih, '+
'Kalan=:Kalan '+

' where id=:id ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('Adi').Value          := TxtAdi.Text   ;
Qry1.Parameters.ParamByName('Soyadi').Value       := TxtSoyadi.Text;
Qry1.Parameters.ParamByName('Malzeme').Value      := Advislem.Cells[3,Advislem.Row];
Qry1.Parameters.ParamByName('Fiyati').Value       := Advislem.Cells[4,Advislem.Row];
Qry1.Parameters.ParamByName('OdenenMiktar').Value := Advislem.Cells[5,Advislem.Row];
Qry1.Parameters.ParamByName('KalanMiktar').Value  := Advislem.Cells[6,Advislem.Row];
Qry1.Parameters.ParamByName('Odendi').Value       := Advislem.Cells[7,Advislem.Row];

Qry1.Parameters.ParamByName('Tarih').Value := IntToStr(YearOf(StrToDate(Advislem.Cells[1,Advislem.Row])))+'-'+
                                          IntToStr(MonthOf(StrToDate(Advislem.Cells[1,Advislem.Row])))+'-'+
                                          IntToStr(DayOf(StrToDate(Advislem.Cells[1,Advislem.Row])));


Qry1.Parameters.ParamByName('id').Value       := Advislem.Cells[8,Advislem.Row];
Qry1.Prepared:=True;
Qry1.ExecSQL;



End;




end;

procedure TFrmislemler.AdvislemClick(Sender: TObject);
begin
Panel3.Hide;
odemegetir;
end;

procedure TFrmislemler.AdvislemGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
if ACol in [4,5,6] then HAlign := taRightJustify;
end;

procedure TFrmislemler.AdvislemGetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin
{
if acol=1 Then AEditor := edDateEdit;

if acol=2 Then begin
Advislem.ClearComboString;
AEditor := edComboList;
Advislem.AddComboString('Satýþ');
Advislem.AddComboString('Tamir');
end;

if acol in [4,5,6] Then AEditor := edFloat;


 }
end;

procedure TFrmislemler.AdvListeGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
if ACol in [3,4,5,6] then HAlign := taRightJustify;

end;

procedure TFrmislemler.AdvOdemeClick(Sender: TObject);
begin
Panel4.Hide;
end;

procedure TFrmislemler.AdvOdemeGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
if ACol = 3 then HAlign := taRightJustify;
end;

procedure TFrmislemler.BitBtn1Click(Sender: TObject);
var TmpSql:String;

begin
if MsgOnay('Kaydý silmek istiyormusunuz ?..')=False Then Exit;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Delete from odeme where id=:id ');
Qry1.Parameters.ParamByName('id').Value := AdvOdeme.Cells[4,AdvOdeme.Row] ;
Qry1.Prepared:=True;
Qry1.ExecSQL;

////////////////////////////////////////////////////7
TmpSql := 'Update islemler Set '+
'odenenmiktar=odenenmiktar-:odenenmiktar,'+
'kalanmiktar=kalanmiktar+:odenenmiktar'+

' where id=:id ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('odenenmiktar').Value:= AdvOdeme.Cells[3,AdvOdeme.Row] ;
Qry1.Parameters.ParamByName('id').Value   := AdvOdeme.Cells[5,AdvOdeme.Row] ;
Qry1.Prepared:=True;
Qry1.ExecSQL;
////////////////////////////////////////////////////////////////////////



Advislem.Cells[5,Advislem.Row] := CurrToStr(StrToCurr(Advislem.Cells[5,Advislem.Row])-StrToCurr(AdvOdeme.Cells[3,AdvOdeme.Row]) ) ;
Advislem.Cells[6,Advislem.Row] := CurrToStr(StrToCurr(Advislem.Cells[6,Advislem.Row])+StrToCurr(AdvOdeme.Cells[3,AdvOdeme.Row]) ) ;
//if (StrToCurr(AdvOdeme.Cells[4,AdvOdeme.Row])>0) and ((qry1.FieldByName('Tarih').AsDateTime) <= (Date-90)) then
//Advislem.RowColor[Advislem.Row]:=clRed;

odemegetir;
//islemgetir;

//Advislem.FocusCell (Advislem.ColCount-1,4) ;
//ShowMessage(inttostr(Advislem.Row))
end;

procedure TFrmislemler.BitBtn2Click(Sender: TObject);
begin

Panel4.Show;

end;

procedure TFrmislemler.BitBtn3Click(Sender: TObject);
begin
if MsgOnay('Kaydý silmek istiyormusunuz ?..')=False Then Exit;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Delete from islemler where id=:id ');
Qry1.Parameters.ParamByName('id').Value := Advislem.Cells[8,Advislem.Row] ;
Qry1.Prepared:=True;
Qry1.ExecSQL;


Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Delete from odeme where islemid=:islemid ');
Qry1.Parameters.ParamByName('islemid').Value := Advislem.Cells[8,Advislem.Row] ;
Qry1.Prepared:=True;
Qry1.ExecSQL;

islemgetir;
//odemegetir;

end;

procedure TFrmislemler.BitBtn4Click(Sender: TObject);
begin
Panel3.Show;



end;

procedure TFrmislemler.btnokClick(Sender: TObject);
var TmpSql:String;
begin
if Cmbislemturu.Text = '' then begin
MsgUyari('Lütfen iþlem türünü seçiniz !!!  ..');
exit;
end;

if Trim(txtmalzeme.Text) = '' then begin
MsgUyari('Lütfen malzeme ismini yazýnýz  !!!  ..');
exit;
end;

TmpSql := 'insert into islemler (adi,soyadi,malzeme,fiyati,odenenmiktar,kalanmiktar,odendi,tarih,islemturu)'+
' Values' +
' (:adi,:soyadi,:malzeme,:fiyati,:odenenmiktar,:kalanmiktar,:odendi,:tarih,:islemturu)' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('Adi').Value         := TxtAdi.Text ;
Qry1.Parameters.ParamByName('Soyadi').Value      := TxtSoyadi.Text ;
Qry1.Parameters.ParamByName('malzeme').Value     := txtmalzeme.Text ;
Qry1.Parameters.ParamByName('fiyati').Value      := currfiyati.Value ;
Qry1.Parameters.ParamByName('odenenmiktar').Value:= currodenenmiktar.Value ;
Qry1.Parameters.ParamByName('kalanmiktar').Value := currkalanmiktar.Value ;

if chkodendi.Checked = True then
Qry1.Parameters.ParamByName('odendi').Value      := 'Ödendi'
Else
Qry1.Parameters.ParamByName('odendi').Value      := 'Ödenmedi';

Qry1.Parameters.ParamByName('Tarih').Value := IntToStr(YearOf(DtTarih.Date))+'-'+
                                          IntToStr(MonthOf(DtTarih.Date))+'-'+
                                          IntToStr(DayOf(DtTarih.Date));

Qry1.Parameters.ParamByName('islemturu').Value   := Cmbislemturu.Text ;


Qry1.Prepared:=True;
Qry1.ExecSQL;





islemgetir;

txtmalzeme.Clear;
currfiyati.Value      := 0;
currodenenmiktar.Value:= 0;
currkalanmiktar.Value := 0;
DtTarih.Date := Date ;
chkodendi.Checked := False;

Panel3.Hide;
end;

procedure TFrmislemler.Button1Click(Sender: TObject);
var TmpSql:String;
begin
if CmbOdemeTur.Text = '' then begin
MsgUyari('Lütfen ödeme türünü seçiniz !!!  ..');
exit;
end;

TmpSql := 'insert into odeme (Tarih,Tur,Miktar,Musteriid,islemid)'+
' Values' +
' (:Tarih,:Tur,:Miktar,:Musteriid,:islemid)' ;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);

Qry1.Parameters.ParamByName('Tarih').Value := IntToStr(YearOf(DtOdemeTarih.Date))+'-'+
                                          IntToStr(MonthOf(DtOdemeTarih.Date))+'-'+
                                          IntToStr(DayOf(DtOdemeTarih.Date));
Qry1.Parameters.ParamByName('Tur').Value       := CmbOdemeTur.Text ;
Qry1.Parameters.ParamByName('Miktar').Value    := CurrOdemeMiktar.Value ;
Qry1.Parameters.ParamByName('Musteriid').Value := TxtAdi.Tag  ;
Qry1.Parameters.ParamByName('islemid').Value   := Advislem.Cells[8,Advislem.Row] ;
Qry1.Prepared:=True;
Qry1.ExecSQL;

////////////////////////////////////////////////////7
TmpSql := 'Update islemler Set '+
'odenenmiktar=odenenmiktar+:odenenmiktar,'+
'kalanmiktar=kalanmiktar-:odenenmiktar'+

' where id=:id ';

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add(TmpSql);
Qry1.Parameters.ParamByName('odenenmiktar').Value:= CurrOdemeMiktar.Value ;
Qry1.Parameters.ParamByName('id').Value   := Advislem.Cells[8,Advislem.Row] ;
Qry1.Prepared:=True;
Qry1.ExecSQL;
////////////////////////////////////////////////////////////////////////


Advislem.Cells[5,Advislem.Row] := CurrToStr(StrToCurr(Advislem.Cells[5,Advislem.Row])+CurrOdemeMiktar.Value) ;
Advislem.Cells[6,Advislem.Row] := CurrToStr(StrToCurr(Advislem.Cells[6,Advislem.Row])-CurrOdemeMiktar.Value) ;
odemegetir;
//islemgetir;

CurrOdemeMiktar.Value  := 0;
DtOdemeTarih.Date := Date ;
CmbOdemeTur.ItemIndex  := 0;

Panel4.Hide;
end;

procedure TFrmislemler.Button2Click(Sender: TObject);
var i,x,rr:integer;
TmpSql:String;
begin

AdvListe.ClearRows(1,AdvListe.RowCount);
AdvListe.RowCount := 6;
AdvListe.ColCount := 7;

for i:=0 to 5 do
  AdvListe.RowHeights[i]:=30;

for i:=0 to 2 do
  AdvListe.ColWidths[i]:=70;

for i:=3 to 6 do
  AdvListe.ColWidths[i]:=120;


AdvListe.Cells[0,0] := 'Adý: '    ;
AdvListe.Cells[0,1] := 'Soyadý: ' ;
AdvListe.Cells[0,2] := 'Ýþ Tel: ' ;
AdvListe.Cells[0,3] := 'Cep Tel: ';
AdvListe.Cells[0,4] := 'Ev Tel: ' ;
AdvListe.Cells[0,5] := 'Adres: '  ;


AdvListe.MergeCells(1,0,2,1);
AdvListe.Cells[1,0] := TxtAdi.Text;
AdvListe.MergeCells(1,1,2,1);
AdvListe.Cells[1,1] := TxtSoyadi.Text;
AdvListe.MergeCells(1,2,2,1);
AdvListe.Cells[1,2] := TxtisTel.Text;
AdvListe.MergeCells(1,3,2,1);
AdvListe.Cells[1,3] := TxtCepTel.Text;
AdvListe.MergeCells(1,4,2,1);
AdvListe.Cells[1,4] := TxtEvTel.Text;
AdvListe.MergeCells(1,5,2,1);
AdvListe.Cells[1,5] := TxtAdres.Text;


AdvListe.MergeCells(3,0,2,6);
AdvListe.AddPicture(3, 0,image6.Picture, False,StretchWithAspectRatio, 20, haCenter, vaCenter) ;
AdvListe.MergeCells(5,0,2,6);
AdvListe.AddPicture(5, 0,image4.Picture, False,StretchWithAspectRatio, 20, haCenter, vaCenter) ;
      // (noStretch,Stretch,StretchWithAspectRatio,Shrink,ShrinkWithAspectRatio);


rr:=5;
rr:=rr+1; AdvListe.AddRow;
AdvListe.RowColor[rr]:=ClRed;
AdvListe.RowHeights[rr]:=5;
AdvListe.MergeCells(0,rr,6,1);

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Select * from islemler where adi=:adi and soyadi=:soyadi order by tarih desc ');
Qry1.Parameters.ParamByName('Adi').Value          := TxtAdi.Text   ;
Qry1.Parameters.ParamByName('Soyadi').Value       := TxtSoyadi.Text;
Qry1.Prepared:=True;
Qry1.Open;;

for i:=1 to qry1.RecordCount do begin
rr:=rr+1; AdvListe.AddRow;
AdvListe.Cells[0,rr]:='ÝÞLEM :';
AdvListe.Cells[1,rr]:='TARÝH';
AdvListe.Cells[2,rr]:='ÝÞLEMTÜRÜ';
AdvListe.Cells[3,rr]:='MALZEME';
AdvListe.Cells[4,rr]:='FÝYATI';
AdvListe.Cells[5,rr]:='ÖDENENMÝKTAR';
AdvListe.Cells[6,rr]:='KALANMÝKTAR';
rr:=rr+1; AdvListe.AddRow;
AdvListe.Cells[1,rr] := qry1.FieldByName('Tarih').AsString ;
AdvListe.Cells[2,rr] := qry1.FieldByName('islemturu').AsString ;
AdvListe.Cells[3,rr] := qry1.FieldByName('malzeme').AsString ;
AdvListe.Cells[4,rr] := qry1.FieldByName('fiyati').AsString ;
AdvListe.Cells[5,rr] := qry1.FieldByName('odenenmiktar').AsString ;
AdvListe.Cells[6,rr] := qry1.FieldByName('kalanmiktar').AsString ;

Qry2.Close;
Qry2.SQL.Clear;
Qry2.SQL.Add('Select * from odeme where islemid=:islemid order by tarih ');
Qry2.Parameters.ParamByName('islemid').Value := qry1.FieldByName('id').AsString ;
Qry2.Prepared:=True;
Qry2.Open;
for x:=1 to qry2.RecordCount do begin
if x=1 Then begin
rr:=rr+1; AdvListe.AddRow;
AdvListe.Cells[0,rr]:='ÖDEMELER :';
AdvListe.Cells[1,rr]:='TARÝH';
AdvListe.Cells[2,rr]:='TÜR';
AdvListe.Cells[3,rr]:='MÝKTAR';
end;
rr:=rr+1; AdvListe.AddRow;
AdvListe.Cells[1,rr] := qry2.FieldByName('Tarih').AsString ;
AdvListe.Cells[2,rr] := qry2.FieldByName('Tur').AsString ;
AdvListe.Cells[3,rr] := qry2.FieldByName('Miktar').AsString ;
qry2.Next;
end;


rr:=rr+1; AdvListe.AddRow;
AdvListe.RowColor[rr]:=ClRed;
AdvListe.RowHeights[rr]:=5;
AdvListe.MergeCells(0,rr,6,1);

qry1.Next;
end;

//AdvListe.pri
AdvListe.PrintSettings.TitleLines.Clear;
AdvListe.PrintSettings.TitleLines.Add('MÜÞTERÝ TAKÝP LÝSTESÝ');
//AdvListe.Print;
AdvPreview.Grid := AdvListe ;
AdvPreview.Execute ;

end;

procedure TFrmislemler.chkodendiClick(Sender: TObject);
begin
if chkodendi.Checked = True then begin
currkalanmiktar.Value := 0 ;
currodenenmiktar.Value := currfiyati.Value  ;
end
Else begin
currkalanmiktar.Value := currfiyati.Value ;
currodenenmiktar.Value := 0  ;
end;

end;

procedure TFrmislemler.currfiyatiChange(Sender: TObject);
begin

currkalanmiktar.Value := currfiyati.Value-currodenenmiktar.Value ;
if currkalanmiktar.Value = 0 then chkodendi.Checked := True
Else chkodendi.Checked := False;

end;

procedure TFrmislemler.currodenenmiktarChange(Sender: TObject);
begin
currkalanmiktar.Value := currfiyati.Value-currodenenmiktar.Value ;
if currkalanmiktar.Value = 0 then chkodendi.Checked := True
Else chkodendi.Checked := False;

end;

procedure TFrmislemler.eslimFii1Click(Sender: TObject);
var i:integer;
TmpKriter:String;
begin



qry1.Close;
qry1.SQL.Clear;
qry1.SQL.Add('Select id,malzeme,fiyati,odenenmiktar,kalanmiktar from islemler where adi=:adi and soyadi=:soyadi');
qry1.Parameters.ParamByName('adi').Value := TxtAdi.Text;
qry1.Parameters.ParamByName('soyadi').Value := TxtSoyadi.Text;
qry1.Prepared := True;
qry1.Open;


qry1.Filtered := False;

for i:= 1 to Advislem.RowCount-1 do begin
if Advislem.IsSelected(1,i)=True then
TmpKriter := TmpKriter + ' id = ' + Advislem.Cells[8,i]+' or ' ;
end;

Qry1.Filter := LeftStr(TmpKriter,length(TmpKriter)-3) ;
Qry1.Filtered := TRUE;



QRepSatis:=TQRepSatis.Create(Self);
QRepSatis.QRLSaatTarih.Caption := DateTimeToStr(Now);
QRepSatis.QRLMusteri.Caption := TxtAdi.Text +' '+ TxtSoyadi.Text ;
QRepSatis.PreviewModal ;
QRepSatis.Free;
end;




procedure TFrmislemler.FormShow(Sender: TObject);
begin
DtTarih.Date := Date;
DtOdemeTarih.Date := Date ;
end;

procedure TFrmislemler.Image3Click(Sender: TObject);
begin
close;
end;

procedure TFrmislemler.Image5Click(Sender: TObject);
begin
Self.WindowState := wsMinimized ;
end;

procedure TFrmislemler.islemgetir;
var i:integer;
TmpSql:String;
begin

AdvOdeme.ClearRows(1,AdvOdeme.RowCount);
AdvOdeme.RowCount := 2;

Advislem.ClearRows(1,Advislem.RowCount);
Advislem.RowCount := 2;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Select * from islemler where adi=:adi and soyadi=:soyadi order by tarih desc ');
Qry1.Parameters.ParamByName('Adi').Value          := TxtAdi.Text   ;
Qry1.Parameters.ParamByName('Soyadi').Value       := TxtSoyadi.Text;
Qry1.Prepared:=True;
Qry1.Open;

if qry1.RecordCount<>0 Then Advislem.RowCount := qry1.RecordCount + 1 ;

for i:=1 to qry1.RecordCount do begin
if (qry1.FieldByName('kalanmiktar').AsCurrency>0) and ((qry1.FieldByName('Tarih').AsDateTime) <= (Date-90)) then begin
if qry1.FieldByName('odenenmiktar').AsCurrency = 0 then Advislem.RowColor[i]:=clRed
Else begin
TmpSql:= 'Select id FROM odeme where islemid=:islemid and Tarih>ADDDATE(CurDate(),-90) ';
Qry2.Close;
Qry2.SQL.Clear;
Qry2.SQL.Add(TmpSql);
Qry2.Parameters.ParamByName('islemid').Value    := qry1.FieldByName('id').AsString    ;
Qry2.Prepared:=True;
Qry2.Open;
if qry2.RecordCount=0 then Advislem.RowColor[i]:=clRed;
end;
end;


Advislem.Cells[1,i] := qry1.FieldByName('Tarih').AsString ;
Advislem.Cells[2,i] := qry1.FieldByName('islemturu').AsString ;
Advislem.Cells[3,i] := qry1.FieldByName('malzeme').AsString ;
Advislem.Cells[4,i] := qry1.FieldByName('fiyati').AsString ;
Advislem.Cells[5,i] := qry1.FieldByName('odenenmiktar').AsString ;
Advislem.Cells[6,i] := qry1.FieldByName('kalanmiktar').AsString ;
Advislem.Cells[7,i] := qry1.FieldByName('Odendi').AsString ;
Advislem.Cells[8,i] := qry1.FieldByName('id').AsString ;
qry1.Next;
end;

Advislem.AutoNumberCol(0);
Advislem.ColWidths[7]:=1;
end;

procedure TFrmislemler.islemodemekaydet;
begin
//wdewdfew
end;

procedure TFrmislemler.odemegetir;
var i:integer;
begin

AdvOdeme.ClearRows(1,AdvOdeme.RowCount);
AdvOdeme.RowCount := 2;

Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Select * from odeme where islemid=:islemid order by tarih ');
Qry1.Parameters.ParamByName('islemid').Value          :=  Advislem.Cells[8,Advislem.Row]  ;
Qry1.Prepared:=True;
Qry1.Open;

if qry1.RecordCount<>0 Then AdvOdeme.RowCount := qry1.RecordCount + 1 ;

for i:=1 to qry1.RecordCount do begin
AdvOdeme.Cells[1,i] := qry1.FieldByName('Tarih').AsString ;
AdvOdeme.Cells[2,i] := qry1.FieldByName('Tur').AsString ;
AdvOdeme.Cells[3,i] := qry1.FieldByName('Miktar').AsString ;
AdvOdeme.Cells[4,i] := qry1.FieldByName('id').AsString ;
AdvOdeme.Cells[5,i] := qry1.FieldByName('islemid').AsString ;
qry1.Next;
end;

AdvOdeme.AutoNumberCol(0);


end;



end.
