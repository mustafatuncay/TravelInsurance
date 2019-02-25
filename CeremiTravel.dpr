program CeremiTravel;

uses
  Forms,
  UntMenu in 'UntMenu.pas' {FrmMenu},
  UntMusteriKayitListe in 'UntMusteriKayitListe.pas' {FrmMusteriKayitListe},
  UntDm in 'UntDm.pas' {Dm: TDataModule},
  UntGlobal in 'genel\UntGlobal.pas',
  UntGelir in 'UntGelir.pas' {FrmGelir},
  UntOnay in 'DlgForms\UntOnay.pas' {FrmOnay},
  UntSabitDegerler in 'UntSabitDegerler.pas' {FrmSabitDegerler},
  UntUyari in 'DlgForms\UntUyari.pas' {FrmUyari},
  UntRapor in 'UntRapor.pas' {FrmRapor},
  UntRepRapor in 'Rapor\UntRepRapor.pas' {RepRapor: TQuickRep},
  UntProjectGlobal in 'genel\UntProjectGlobal.pas',
  UntKrediKarti in 'UntKrediKarti.pas' {FrmKrediKarti},
  UntGiris in 'UntGiris.pas' {FrmGiris},
  UntMesaj in 'UntMesaj.pas' {FrmMesaj},
  RepAgenteSatis in 'Rapor\RepAgenteSatis.pas' {QRepAgenteSatis: TQuickRep},
  UntObsiyonlar in 'UntObsiyonlar.pas' {FrmObsiyonlar},
  UntKrediKartDetay in 'UntKrediKartDetay.pas' {FrmKrediKartDetay},
  UntSigortalar in 'UntSigortalar.pas' {FrmSigortalar},
  UntSigortaislemleri in 'UntSigortaislemleri.pas' {FrmSigortaislemleri},
  UntGelirGiderRapor in 'UntGelirGiderRapor.pas' {FrmGelirGiderRapor},
  UntSigortaSuresi in 'UntSigortaSuresi.pas' {FrmSigortaSuresi},
  UntGelirGiderKayit in 'UntGelirGiderKayit.pas' {FrmGelirGiderKayit},
  UntSigortaHesapRapor in 'UntSigortaHesapRapor.pas' {FrmSigortaHesapRapor},
  UntMusteriKayit in 'UntMusteriKayit.pas' {FrmMusteriKayit},
  RepFatura in 'Rapor\RepFatura.pas' {QRepFatura: TQuickRep},
  RepBilet in 'Rapor\RepBilet.pas' {QRepBilet: TQuickRep},
  UntSirketGelirGiderKayit in 'UntSirketGelirGiderKayit.pas' {FrmSirketGelirGiderKayit},
  UntTurFirma in 'UntTurFirma.pas' {FrmTurFirma},
  UntSirketGelirGiderListe in 'UntSirketGelirGiderListe.pas' {FrmSirketGelirGiderListe},
  UntTurFirmaListe in 'UntTurFirmaListe.pas' {FrmTurFirmaListe},
  UntOtelKayitListe in 'UntOtelKayitListe.pas' {FrmOtelKayitListe},
  UntHesap in 'UntHesap.pas' {FrmHesap},
  UntAjandaListe in 'UntAjandaListe.pas' {FrmAjandaListe},
  UntAjandaKayit in 'UntAjandaKayit.pas' {FrmAjandaKayit},
  UntTransferFirmaListe in 'UntTransferFirmaListe.pas' {FrmTransferFirmaListe},
  UntTransferFirma in 'UntTransferFirma.pas' {FrmTransferFirma},
  RepGelirGiderMusteri in 'Rapor\RepGelirGiderMusteri.pas' {QRepGelirGiderMusteri: TQuickRep},
  UntOtelKayit in 'UntOtelKayit.pas' {FrmOtelKayit},
  UntYonetim in 'UntYonetim.pas' {FrmYonetim},
  RepOtel in 'Rapor\RepOtel.pas' {QRepOtel: TQuickRep},
  RepVoucher in 'Rapor\RepVoucher.pas' {QRepVoucher: TQuickRep},
  RepTransfer in 'Rapor\RepTransfer.pas' {QRepTransfer: TQuickRep},
  RepTur in 'Rapor\RepTur.pas' {QRepTur: TQuickRep};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TFrmGiris, FrmGiris);
  Application.Run;
end.
