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
  Uproceso in 'Uproceso.pas' {frmproceso},
  Uconpagos in 'Uconpagos.pas' {frmpagosafiliados},
  Uconpagose in 'Uconpagose.pas' {frmpagosempresa},
  Uafiliaempresa in 'Uafiliaempresa.pas' {frmafiliempresa},
  Uincafiliado in 'Uincafiliado.pas' {frmincaporusuario},
  Uplanillacorreciones in 'Uplanillacorreciones.pas' {frmcorreciones},
  upagonotasautoliquidacion in 'upagonotasautoliquidacion.pas' {frmpagonotasautoliquidacion},
  upagoincaptesoreria in 'upagoincaptesoreria.pas' {frmdesincaptesoreria},
  Umodficacionnrs in 'Umodficacionnrs.pas' {frmnoregistrados},
  Ucerincapa in 'Ucerincapa.pas' {frmcertincapacidades},
  UConsultaUPC1 in 'UConsultaUPC1.pas' {frmconsultaafiliadosben1},
  UinformacionAfiliado in 'UinformacionAfiliado.pas' {frmInformacionAfiliados},
  UListadodigitacionlotes in 'UListadodigitacionlotes.pas' {frmlistadolotes},
  URetiroAfiliados in 'URetiroAfiliados.pas' {frmRetiroAfiliados},
  Uconsultaretirospendientes in 'Uconsultaretirospendientes.pas' {frmConsultaplanlla1},
  UValidarEstadoPlanillas in 'UValidarEstadoPlanillas.pas' {frmValidarEstados},
  Upagoupcadicional in 'Upagoupcadicional.pas' {frmpagoupc},
  Uexcel in 'Uexcel.pas',
  UAfiliadoscopagosinc in 'UAfiliadoscopagosinc.pas' {frmpagosinconsitentes},
  UAfiliadossinpagos in 'UAfiliadossinpagos.pas' {frmAfilidosSinpagos},
  UConsultadePlanillas in 'UConsultadePlanillas.pas' {frmConsultaplanlla},
  UConsultaUPC in 'UConsultaUPC.pas' {frmconsultaafiliadosben},
  Usplansh in 'Usplansh.pas' {SplashForm},
  cambioclave in 'cambioclave.pas' {frmcambioclave},
  Uincappat in 'Uincappat.pas' {FRMINCAPACIDADES_PATERNIDAD},
  Umedio_notificacion in 'Umedio_notificacion.pas' {frmmedio_notificacion},
  Ucertificado_inca in 'Ucertificado_inca.pas' {frmcertificado_incapa},
  Ucartaincapacidad in 'Ucartaincapacidad.pas' {frmcartaincapacidad},
  UincapacidadesTUTELA in 'UincapacidadesTUTELA.pas' {FRMINCAPACIDADESTUTELA},
  Uaprobacion in 'Uaprobacion.pas' {frmaprobacion},
  Ureporte_inconsistencias in 'Ureporte_inconsistencias.pas' {frmreporte_inconsistencias},
  Uimprimir_glosas in 'Uimprimir_glosas.pas' {frmimprimir_glosas},
  Uplanillas_sinanexos in 'Uplanillas_sinanexos.pas' {Frmplanillas_sinanexos},
  UConsultasnotas in 'UConsultasnotas.pas' {FRMCONSULTAS_NOTAS},
  Uincaaportante in 'Uincaaportante.pas' {FRMINCAPOREMPRESA},
  Uincaapornumero in 'Uincaapornumero.pas' {FRMINCAPORNUMERO};

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
