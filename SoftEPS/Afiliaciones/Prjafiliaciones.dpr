program Prjafiliaciones;

uses
  Forms,
  Uafiliaciones in 'Uafiliaciones.pas' {frmafiliaciones},
  Udmafiliaciones in 'Udmafiliaciones.pas' {dmafiliaciones: TDataModule},
  Uafiliaciones_independientes in 'Uafiliaciones_independientes.pas' {frmafiliacion_independientes},
  Uafiliaciones_empresas in 'Uafiliaciones_empresas.pas' {frmafiliacion_empresas},
  UEmpresas in 'UEmpresas.pas' {frmempresas},
  Ugrupofamiliar in 'Ugrupofamiliar.pas' {frmgrupofamiliar},
  Ucar_empresas in 'Ucar_empresas.pas' {frmcar_empresas},
  Ucambio_Identificacion in 'Ucambio_Identificacion.pas' {frmacambio_identificacion},
  ULogin in 'ULogin.pas' {frmlogin},
  Uafiliados_empresas in 'Uafiliados_empresas.pas' {frmafiliados_empresas},
  Uact_certificados in 'Uact_certificados.pas' {frmact_certificados},
  Uhistoria_afiliado in 'Uhistoria_afiliado.pas' {frmhistoria_afiliado},
  UCompoder in 'UCompoder.pas' {frmcompoder},
  Uasesores in 'Uasesores.pas' {frmasesores},
  Ueps in 'Ueps.pas' {frmeps},
  Uarp in 'Uarp.pas' {frmarp},
  Upensiones in 'Upensiones.pas' {frmpensiones},
  Uips in 'Uips.pas' {frmips},
  Ucartera in 'Ucartera.pas' {frmcartera},
  Ucarnets_grupo_familiar in 'Ucarnets_grupo_familiar.pas' {frmcarnets_grupofamiliar},
  ureporte in 'ureporte.pas' {frmreporte},
  Ureitegrosuspendidos in 'Ureitegrosuspendidos.pas' {frmreintegrossuspendidos},
  Ureintegros in 'Ureintegros.pas' {frmreintegros},
  Ucambio_empresas in 'Ucambio_empresas.pas' {frmcambio_empresas},
  Uing_afiliado_empresa in 'Uing_afiliado_empresa.pas' {frming_afiliado_empresa},
  Uafiliaciones_usuarios in 'Uafiliaciones_usuarios.pas' {frmafiliacion_usuarios},
  Uconsulta_formulario in 'Uconsulta_formulario.pas' {frmconsulta_formulario},
  urepradicacion in 'urepradicacion.pas' {frmrepradicado},
  ureporterad in 'ureporterad.pas' {repradicado};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'APLICATIVO DE AFILIACIONES PARA E.P.S';
  Application.CreateForm(Tfrmafiliaciones, frmafiliaciones);
  Application.CreateForm(Tdmafiliaciones, dmafiliaciones);
  Application.CreateForm(Tfrmrepradicado, frmrepradicado);
  Application.CreateForm(Trepradicado, repradicado);
  frmlogin:=Tfrmlogin.create(Application);
        try
                frmlogin.showmodal;
        except
                frmlogin.free;
        end;
  Application.Run;
end.
