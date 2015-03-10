program conciliacion;

uses
  Forms,
  Uglobal in 'Uglobal.pas',
  dtmodulo in 'dtmodulo.pas' {DataModule1: TDataModule},
  Uprincipal in 'Uprincipal.pas' {frmprincipal},
  Uacerca in 'Uacerca.pas' {AboutBox},
  UBANCOS in 'Ubancos.pas' {frmbancos},
  Uarchivos in 'Uarchivos.pas' {frmarchivos},
  UconsultaResagos in 'UconsultaResagos.pas' {frmConsulta},
  udigitacionextracto in 'udigitacionextracto.pas' {frmdigitacionextractos},
  UFORMATO in 'UFORMATO.pas' {frmformatos},
  LoginFrm in 'LoginFrm.pas' {frminicio},
  usucursales in 'usucursales.pas' {frmsucursales},
  Urecepcion in 'Urecepcion.pas' {frmrecepcion},
  Uexcel in 'Uexcel.pas',
  ucamposformato in 'ucamposformato.pas' {frmcampos},
  Usplansh in 'Usplansh.pas' {SplashForm},
  cambioclave in 'cambioclave.pas' {frmcambioclave};

{$R *.res}
begin
  Application.Initialize;
   FRMinicio := tfrminicio.create(application);
  try
  frminicio.showmodal;
  except
    frminicio.Free;
  end;
  Application.Terminate;

end.
