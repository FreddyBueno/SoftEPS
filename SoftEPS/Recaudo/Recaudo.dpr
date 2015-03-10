program Recaudo;


uses
  Forms,
  Uprincipal in 'Uprincipal.pas' {frmprincipal},
  Uacerca in 'Uacerca.pas' {AboutBox},
  dtmodulo in 'dtmodulo.pas' {DataModule1: TDataModule},
  Uplanillas in 'Uplanillas.pas' {frmplanillas},
  Uincapacidades in 'Uincapacidades.pas' {frmincapacidades},
  LoginFrm in 'LoginFrm.pas' {frminicio},
  Udiagnosticos in 'Udiagnosticos.pas' {frmdiagnosticos},
  Uglobal in 'Uglobal.pas',
  Uprestadores in 'Uprestadores.pas' {frmprestadores},
  Uempresas in 'Uempresas.pas' {frmempresas},
  Uautomagnetico in 'Uautomagnetico.pas' {frmautoliquidacionmagnetica},
  Uafiliados in 'Uafiliados.pas' {frmafiliados},
  Upagoupcadicional in 'Upagoupcadicional.pas' {frmpagoupc},
  Uproceso in 'Uproceso.pas' {frmproceso},
  Uconpagos in 'Uconpagos.pas' {frmpagosafiliados},
  Uconpagose in 'Uconpagose.pas' {frmpagosempresa},
  Uafiliaempresa in 'Uafiliaempresa.pas' {frmafiliempresa},
  Uincafiliado in 'Uincafiliado.pas' {frmincaporusuario},
  Uplanillacorreciones in 'Uplanillacorreciones.pas' {frmcorreciones},
  upagonotasautoliquidacion in 'upagonotasautoliquidacion.pas' {frmpagonotasautoliquidacion},
  upagoincaptesoreria in 'upagoincaptesoreria.pas' {frmdesincaptesoreria},
  Umodficacionnrs in 'Umodficacionnrs.pas' {frmnoregistrados},
  Ucerincapa in 'Ucerincapa.pas' {frmcertincapacidades};

{$R *.res}


begin
  Application.Title := 'Recaudo Pago Aportes';
  frminicio := Tfrminicio.Create(application);
  frminicio.ShowModal;
  frminicio.Hide;
  frminicio.Free;


end.
