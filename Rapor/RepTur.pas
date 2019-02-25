unit RepTur;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt,  qrpctrls, jpeg, QRCtrls;

type
  TQRepTur = class(TQuickRep)
    QRBand5: TQRBand;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QrlTurAdi: TQRLabel;
    QrlTurFirmasi: TQRLabel;
    QrlTurBaslangic: TQRLabel;
    QrlTurBitis: TQRLabel;
    QrlTurBasNokta: TQRLabel;
    QrlTurBitNokta: TQRLabel;
    QrlTurRehberBilgisi: TQRLabel;
    QrlTurAciklama: TQRLabel;
    QrlTurKonaklamaSekli: TQRLabel;
    QrlTurKonaklamaBilgisi: TQRLabel;
    QrlTurUlasimBilgisi: TQRLabel;
    QrlTurYetiskinCocukBebek: TQRLabel;
    QrlTurYolcuListesi: TQRLabel;
    QRLabel46: TQRLabel;
    QRExpr1: TQRExpr;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private

  public

  end;

var
  QRepTur: TQRepTur;

implementation

uses UntGelir;







{$R *.DFM}

procedure TQRepTur.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
PrintBand:=FrmGelir.TmpBool3;
end;

procedure TQRepTur.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
PrintBand:=FrmGelir.TmpBool2;
end;

procedure TQRepTur.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
PrintBand:=FrmGelir.TmpBool1;
end;

end.
