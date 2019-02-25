unit RepTransfer;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt,  qrpctrls, jpeg, QRCtrls;

type
  TQRepTransfer = class(TQuickRep)
    QRBand5: TQRBand;
    QRLabel32: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel24: TQRLabel;
    QrlTransferAdi: TQRLabel;
    QrlTransferSoyadi: TQRLabel;
    QrlTransferCepNo: TQRLabel;
    QrlTransferAciklama: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel52: TQRLabel;
    Transfer: TQRLabel;
    QRLabel51: TQRLabel;
    QrlTransferYolcuListesi: TQRLabel;
    QrlTransferFirma: TQRLabel;
    QrlTransferArac: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QrlTransfer1: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QrlTransfer2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel5: TQRLabel;
    QRLKalkisVaris1: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRLKalkisVaris2: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLOtelAdresi: TQRLabel;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private

  public

  end;

var
  QRepTransfer: TQRepTransfer;

implementation

uses UntGelir;







{$R *.DFM}

procedure TQRepTransfer.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
PrintBand:=FrmGelir.TmpBool3;
end;

procedure TQRepTransfer.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
PrintBand:=FrmGelir.TmpBool2;
end;

procedure TQRepTransfer.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
PrintBand:=FrmGelir.TmpBool1;
end;

end.
