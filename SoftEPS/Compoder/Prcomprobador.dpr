program Prcomprobador;

uses
  Forms,
  pcomprobador in 'pcomprobador.pas' {Form1},
  Ucomprobador in 'Ucomprobador.pas' {frmcompoder};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrmcompoder, frmcompoder);
  Application.Run;
end.
