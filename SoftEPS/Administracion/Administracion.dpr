program Administracion;

uses
  Forms,
  dtmodulo in 'dtmodulo.pas' {DataModule1: TDataModule},
  LOGINFRM in 'LoginFrm.pas' {frminicio},
  Uacerca in 'Uacerca.pas' {AboutBox},
  UGLOBAL in 'Uglobal.pas',
  Uprincipal in 'Uprincipal.pas' {frmprincipal},
  Uborrar in 'Uborrar.pas' {frmborrado},
  uheredar in 'uheredar.pas' {Form1},
  ucompania in 'ucompania.pas' {frmcompania},
  Uoficinas in 'Uoficinas.pas' {frmoficinas},
  ucargos in 'ucargos.pas' {frmcargos},
  Uusuarios in 'Uusuarios.pas' {frmusuarios},
  uusuarioslogin in 'uusuarioslogin.pas' {frmusuarioslogin},
  Uips in 'Uips.pas' {frmips},
  utablasbasicas in 'utablasbasicas.pas' {frmtablasbasicas};

{$R *.res}

begin
   frminicio := Tfrminicio.Create(application);
  frminicio.ShowModal;
  frminicio.Hide;
  frminicio.Free;

end.
