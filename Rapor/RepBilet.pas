unit RepBilet;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt,  qrpctrls, jpeg, QRCtrls;

type
  TQRepBilet = class(TQuickRep)
    QRBand3: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel26: TQRLabel;
    QrlUcusNo1: TQRLabel;
    QrlKalkisTarihSaat1: TQRLabel;
    QrlVarisSaat1: TQRLabel;
    QrlPnr1: TQRLabel;
    QrlUcakFirmasi1: TQRLabel;
    QrlUcakFirmasi2: TQRLabel;
    QrlUcusNo2: TQRLabel;
    QrlKalkisTarihSaat2: TQRLabel;
    QrlVarisSaat2: TQRLabel;
    QrlPnr2: TQRLabel;
    QrlBiletYolcuListesi: TQRLabel;
    QRLabel52: TQRLabel;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private

  public

  end;

var
  QRepBilet: TQRepBilet;

implementation

uses UntGelir;







{$R *.DFM}

procedure TQRepBilet.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
PrintBand:=FrmGelir.TmpBool3;
end;

procedure TQRepBilet.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
PrintBand:=FrmGelir.TmpBool2;
end;

procedure TQRepBilet.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
PrintBand:=FrmGelir.TmpBool1;
end;

end.
