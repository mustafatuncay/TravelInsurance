program Kontrol;

uses
  Forms,
  UntKontrol in 'UntKontrol.pas' {FrmKontrol};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmKontrol, FrmKontrol);
  Application.Run;
end.
