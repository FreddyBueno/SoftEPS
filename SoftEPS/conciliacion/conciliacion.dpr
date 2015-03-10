program conciliacion;

uses
  Forms,
  Uglobal in 'Uglobal.pas',
  dtmodulo in 'dtmodulo.pas' {DataModule1: TDataModule},
  Uprincipal in 'Uprincipal.pas' {frmprincipal},
  Uacerca in 'Uacerca.pas' {AboutBox},
  UBANCOS in 'Ubancos.pas' {frmbancos},
  Uarchivos in 'Uarchivos.pas' {frmarchivos},
  Umodestrato in 'Umodestrato.pas' {frmmodificarestrato},
  udigitacionextracto in 'udigitacionextracto.pas' {frmdigitacionextractos},
  UFORMATO in 'UFORMATO.pas' {frmformatos},
  LoginFrm in 'LoginFrm.pas' {frminicio},
  usucursales in 'usucursales.pas' {frmsucursales};

{$R *.RES}

begin
  Application.Title := 'Conciliacion Bancaria';
  frminicio := Tfrminicio.Create(application);
  frminicio.ShowModal;
  frminicio.Hide;
  frminicio.Free;


end.
