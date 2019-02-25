unit RepVoucher;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt,  qrpctrls, jpeg, QRCtrls;

type
  TQRepVoucher = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRImage1: TQRImage;
    QRLabel15: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QrlAdiSoyadi: TQRLabel;
    QrlTelNo: TQRLabel;
    QrlTarih: TQRLabel;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private

  public

  end;

var
  QRepVoucher: TQRepVoucher;

implementation

uses UntGelir;







{$R *.DFM}

procedure TQRepVoucher.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//PrintBand:=FrmGelir.TmpBool2;
end;

procedure TQRepVoucher.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
PrintBand:=FrmGelir.TmpBool1;
end;

end.
