unit Uafiliaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, Menus, ActnList, StdActns, StdCtrls, DB,
  DBTables, Grids, DBGrids, ExtCtrls, DBCtrls, ImgList;

type
  Tfrmafiliaciones = class(TForm)
    MainMenu1: TMainMenu;
    stafiliaciones: TStatusBar;
    Archivo1: TMenuItem;
    Procesos1: TMenuItem;
    Carnetizacion1: TMenuItem;
    Ayuda1: TMenuItem;
    PrintSetup1: TMenuItem;
    Exit1: TMenuItem;
    Contents1: TMenuItem;
    Afiliacion1: TMenuItem;
    Novedades1: TMenuItem;
    Carnetizacin1: TMenuItem;
    Usuarios1: TMenuItem;
    Empresas1: TMenuItem;
    CambiodeIdentificacin1: TMenuItem;
    Ingresos1: TMenuItem;
    Egresos1: TMenuItem;
    Certificados1: TMenuItem;
    N1: TMenuItem;
    ActualizacindeDatos1: TMenuItem;
    AfiliadosRelacionados1: TMenuItem;
    Empresas2: TMenuItem;
    Afiliados1: TMenuItem;
    Empresas3: TMenuItem;
    Identificacin1: TMenuItem;
    Apellidos1: TMenuItem;
    Historia1: TMenuItem;
    Ventana1: TMenuItem;
    Cascada1: TMenuItem;
    Horizontal1: TMenuItem;
    Vertical1: TMenuItem;
    Minimizar1: TMenuItem;
    Organizar1: TMenuItem;
    Cerrar1: TMenuItem;
    Identificacin2: TMenuItem;
    porEmpresa1: TMenuItem;
    N2: TMenuItem;
    ActualizaciondeCertificados1: TMenuItem;
    Suspencion1: TMenuItem;
    ComprobaciondeDerechos1: TMenuItem;
    Nombre1: TMenuItem;
    Reintegros1: TMenuItem;
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    N3: TMenuItem;
    ActionList1: TActionList;
    FilePrintSetup1: TFilePrintSetup;
    FileExit1: TFileExit;
    HelpContents1: THelpContents;
    AfiliacionUsuarios: TAction;
    AfiliacionEmpresas: TAction;
    NovedadesCambiodeIdentificacion: TAction;
    NovedadesIngresos: TAction;
    Novedades_VSP: TAction;
    NovedadesEgresos: TAction;
    NovedadesCertificados: TAction;
    WindowClose1: TWindowClose;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrange1: TWindowArrange;
    NovedadesActualizaciondedatos: TAction;
    carnetizaciongrupofamiliar: TAction;
    carnetizacionempresas: TAction;
    Novedades_VST: TAction;
    Novedades_SLN: TAction;
    Novedades_IGE: TAction;
    Novedades_LMA: TAction;
    Novedades_VAC: TAction;
    ActualizaciondeCertificados: TAction;
    NovedadesSuspencion: TAction;
    Consultasafiliadosidentificacion: TAction;
    Consultasafilidosnombres: TAction;
    Consultaafiliadosempresa: TAction;
    Consultafiliadohistoria: TAction;
    Consultaempresasidentificacion: TAction;
    Comprobaciondederechos: TAction;
    ConsultaEmpresasNombre: TAction;
    NovedadesReintegro: TAction;
    ToolButton22: TToolButton;
    qrygetdate: TQuery;
    qrygetdateSYSDATE: TDateTimeField;
    NovedadCambiodeEmpresa: TAction;
    ReintegrosCotizantes: TAction;
    ReintegrosBeneficiarios: TAction;
    Reintegros2: TMenuItem;
    Cotizantes1: TMenuItem;
    Beneficiarios1: TMenuItem;
    CambiodeEmpresa1: TMenuItem;
    ToolButton20: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    qrynovedades_afiliados: TQuery;
    qryafiliados_empresas: TQuery;
    qryafiliados_empresasnom_tipo_sal: TStringField;
    qryafiliados_empresasnom_zona: TStringField;
    qryafiliados_empresasnom_depto: TStringField;
    qryafiliados_empresasnom_ciudad: TStringField;
    qryafiliados_empresascod_ocupacion: TStringField;
    qryafiliados_empresastip_documento_afi: TStringField;
    qryafiliados_empresasnum_documento_afi: TStringField;
    qryafiliados_empresastip_documento_emp: TStringField;
    qryafiliados_empresasnum_documento_emp: TStringField;
    qryafiliados_empresascod_sucursal: TStringField;
    qryafiliados_empresascod_estado: TStringField;
    qryafiliados_empresasval_sueldo_afil: TFloatField;
    qryafiliados_empresasfec_ingreso_uni: TDateTimeField;
    qryafiliados_empresasfec_egreso_uni: TDateTimeField;
    qryafiliados_empresascod_departamento_lab: TStringField;
    qryafiliados_empresascod_ciudad_lab: TStringField;
    qryafiliados_empresasdir_afiliado_lab: TStringField;
    qryafiliados_empresastel_afiliado_lab: TStringField;
    qryafiliados_empresastel_afiliado_lab2: TStringField;
    qryafiliados_empresascod_tipo_sal: TStringField;
    qryafiliados_empresascod_zona: TStringField;
    qryafiliados_empresasnom_ocupacion: TStringField;
    PrinterSetupDialog1: TPrinterSetupDialog;
    ToolButton16: TToolButton;
    ToolButton28: TToolButton;
    ToolButton29: TToolButton;
    ToolButton30: TToolButton;
    ToolButton21: TToolButton;
    afiliados_dependientes: TAction;
    ToolButton27: TToolButton;
    AfiliadosDependientes1: TMenuItem;
    ToolButton31: TToolButton;
    N4: TMenuItem;
    ConsultaFormulario: TAction;
    ConsultaporFormulario1: TMenuItem;
    ToolButton32: TToolButton;
    carnetizacionafiliado: TAction;
    Afiliado1: TMenuItem;
    FormulariosRadicacionPorFecha1: TMenuItem;
    procedure AfiliacionUsuariosExecute(Sender: TObject);
    procedure AfiliacionEmpresasExecute(Sender: TObject);
    procedure NovedadesActualizaciondedatosExecute(Sender: TObject);
    procedure NovedadesIngresosExecute(Sender: TObject);
    procedure NovedadesEgresosExecute(Sender: TObject);
    procedure NovedadesCertificadosExecute(Sender: TObject);
    procedure carnetizacionempresasExecute(Sender: TObject);
    procedure carnetizaciongrupofamiliarExecute(Sender: TObject);
    procedure NovedadesCambiodeIdentificacionExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function  fecha_actual():Tdatetime;
    function fecha_hoy():tdate;
    procedure NovedadesModalidadtrabajoExecute(Sender: TObject);
    procedure ActualizaciondeCertificadosExecute(Sender: TObject);
    procedure NovedadesSuspencionExecute(Sender: TObject);
    procedure ConsultasafiliadosidentificacionExecute(Sender: TObject);
    procedure ConsultasafilidosnombresExecute(Sender: TObject);
    procedure ConsultaafiliadosempresaExecute(Sender: TObject);
    procedure ConsultafiliadohistoriaExecute(Sender: TObject);
    procedure ConsultaempresasidentificacionExecute(Sender: TObject);
    procedure ComprobaciondederechosExecute(Sender: TObject);
    procedure CarnetizacionciudadresidenciaExecute(Sender: TObject);
    procedure ConsultaEmpresasNombreExecute(Sender: TObject);
    procedure NovedadesReintegroExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NovedadCambiodeEmpresaExecute(Sender: TObject);
    procedure ReintegrosCotizantesExecute(Sender: TObject);
    procedure ReintegrosBeneficiariosExecute(Sender: TObject);
    procedure letrasKeypress(Sender: TObject; var Key: Char);
    procedure numerosKeypress(Sender: TObject; var Key: Char);
    function  mayor_hoy(Sender: TField):boolean;
    procedure Exit1Click(Sender: TObject);
    procedure afiliados_dependientesExecute(Sender: TObject);
    procedure ConsultaFormularioExecute(Sender: TObject);
    procedure carnetizacionafiliadoExecute(Sender: TObject);
    procedure FormulariosRadicacionPorFecha1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmafiliaciones: Tfrmafiliaciones;
  gb_tip_doc_usu:string;
  gb_num_doc_usu:string;
  gb_nom_usu    :string;
  gb_oficina    :string;
  gb_regional   :string;
  gb_fec_hoy    :Tdate;
  gb_fec_eps    :Tdate;
  



implementation

uses Uafiliaciones_usuarios, Uafiliaciones_empresas, Udmafiliaciones,
  Ugrupofamiliar, Ucar_empresas, Ucambio_Identificacion, Uact_certificados,
  Uconsulta_nombre, Uhistoria_afiliado, UCompoder, UEmpresas,
  Ureitegrosuspendidos, Ureintegros, Ucambio_empresas,
  Uafiliaciones_independientes, Uconsulta_formulario, urepradicacion;

{$R *.dfm}

procedure AfiliacionEmpresasExecute(Sender: TObject);
begin
end;

procedure Tfrmafiliaciones.AfiliacionUsuariosExecute(Sender: TObject);
begin
                frmafiliacion_usuarios:=Tfrmafiliacion_usuarios.create(Application);
           try
                frmafiliacion_usuarios.tblafiliados.Close;
                frmafiliacion_usuarios.tblafiliados.open;
                frmafiliacion_usuarios.DBNavigator.VisibleButtons:=[nbPost];
                frmafiliacion_usuarios.tblafiliados.Insert;
                frmafiliacion_usuarios.tblafiliadoscod_tipo_afil.text:='C';
                frmafiliacion_usuarios.tblafiliadoscod_estado.text:='A';
                frmafiliacion_usuarios.tblafiliadoscod_oficina.text:=gb_oficina;
                frmafiliacion_usuarios.tblafiliadoscod_regional.text:=gb_regional;
                frmafiliacion_usuarios.DateTimePicker1.Date:=date();
                frmafiliacion_usuarios.DateTimePicker2.Date:=date();
                frmafiliacion_usuarios.DateTimePicker3.Date:=date();
//                frmafiliacion_usuarios.DateTimePicker4.Date:=date();
                frmafiliacion_usuarios.tblafiliadosfec_radicacion.Value:=frmafiliacion_usuarios.DateTimePicker1.Date;
                frmafiliacion_usuarios.tblafiliadosfec_nacimiento.Value:=frmafiliacion_usuarios.DateTimePicker2.Date;
                frmafiliacion_usuarios.tblafiliadosfec_afiliacion_sis.Value:=frmafiliacion_usuarios.DateTimePicker3.Date;
                frmafiliacion_usuarios.tblafiliadosfec_afiliacion_uni.Value:=date();
                frmafiliacion_usuarios.PageControl3.ActivePage := frmafiliacion_usuarios.TabSheet1;
                //frmafiliacion_usuarios.TabSheet3.TabVisible := false;
                //frmafiliacion_usuarios.TabSheet5.TabVisible := false;
                frmafiliacion_usuarios.Caption := 'INGRESO DE AFILIADOS DEPENDIENTES';
                frmafiliacion_usuarios.qrymodalidadtrabajo.Open;
                frmafiliacion_usuarios.Label26.Caption := frmafiliacion_usuarios.Caption;
                frmafiliacion_usuarios.edttipoactualizacion.text :='C';
                frmafiliacion_usuarios.show;
  //              frmafiliacion_usuarios.PageControl1.ActivePage:=frmafiliacion_usuarios.TabSheet1;
                frmafiliacion_usuarios.DateTimePicker1.setfocus();
           except
             frmafiliacion_usuarios.free;
        end;
end;

procedure Tfrmafiliaciones.AfiliacionEmpresasExecute(Sender: TObject);
begin
        frmafiliacion_empresas:=Tfrmafiliacion_empresas.create(Application);
        try
                frmafiliacion_empresas.DBNavigator1.VisibleButtons:=[nbPost];
                frmafiliacion_empresas.msfecafiliacion.Text:=datetostr(frmafiliaciones.fecha_hoy());
                frmafiliacion_empresas.show;
                frmafiliacion_empresas.tblempresas.Insert;
//                frmafiliacion_empresas.tblempresas.Edit;
                frmafiliacion_empresas.tblempresascod_regional.Text:=gb_regional;
                frmafiliacion_empresas.tblempresascod_oficina.Text:=gb_oficina;
                frmafiliacion_empresas.tblempresascod_sucursal.Text:='0';
                frmafiliacion_empresas.tblempresascod_estado.Text:='A';
                frmafiliacion_empresas.DBLookupComboBox3.Enabled := false;
                frmafiliacion_empresas.DBLookupComboBox2.SetFocus;

        except
               frmafiliacion_empresas.free;
        end;
end;

procedure Tfrmafiliaciones.NovedadesActualizaciondedatosExecute(
  Sender: TObject);
begin
        frmgrupofamiliar:=Tfrmgrupofamiliar.create(Application);
        try
                frmgrupofamiliar.btningresos.visible:=false;
                frmgrupofamiliar.btnegresos.visible:=false;
                frmgrupofamiliar.btncertificados.visible:=false;
                frmgrupofamiliar.btncarnetizar.visible:=false;
                frmgrupofamiliar.btnsuspencion.visible:=false;
                frmgrupofamiliar.cbgrupofamiliar.visible:=false;
                 frmgrupofamiliar.Panel2.visible:=false;
                frmgrupofamiliar.caption:='ACTUALIZACION DE DATOS DE LOS AFILIADOS';
                frmgrupofamiliar.Label26.caption:=frmgrupofamiliar.Caption;
                frmgrupofamiliar.show;
        except
                frmgrupofamiliar.free;
        end;
end;

procedure Tfrmafiliaciones.NovedadesIngresosExecute(Sender: TObject);
begin
        frmgrupofamiliar:=Tfrmgrupofamiliar.create(Application);
        try
                frmgrupofamiliar.btnegresos.visible:=false;
                frmgrupofamiliar.btncertificados.visible:=false;
                frmgrupofamiliar.btncarnetizar.visible:=false;
                frmgrupofamiliar.btnsuspencion.visible:=false;
                frmgrupofamiliar.cbgrupofamiliar.visible:=false;
                frmgrupofamiliar.Panel2.visible:=false;

                frmgrupofamiliar.caption:='INGRESOS DE AFILIADOS BENEFICIARIOS';
                frmgrupofamiliar.Label26.caption:=frmgrupofamiliar.Caption;
                frmgrupofamiliar.show;
        except
                frmgrupofamiliar.free;
        end;
end;

procedure Tfrmafiliaciones.NovedadesEgresosExecute(Sender: TObject);
begin
     frmgrupofamiliar:=Tfrmgrupofamiliar.create(Application);
        try
                frmgrupofamiliar.btningresos.visible:=false;
                frmgrupofamiliar.btncertificados.visible:=false;
                frmgrupofamiliar.btncarnetizar.visible:=false;
                frmgrupofamiliar.btnsuspencion.visible:=false;
                frmgrupofamiliar.dbgnovedades.visible:=true;
                frmgrupofamiliar.mefecha_evento.Visible:=true;
                frmgrupofamiliar.label13.Visible:=true;
                frmgrupofamiliar.label14.Visible:=true;
                frmgrupofamiliar.cbgrupofamiliar.Visible :=false;
                frmgrupofamiliar.qrynovedades.close;
                frmgrupofamiliar.qrynovedades.Params[0].AsString := '20';
                frmgrupofamiliar.qrynovedades.Params[1].AsString := '1';
                frmgrupofamiliar.qrynovedades.ExecSql;
                frmgrupofamiliar.qrynovedades.open;
                frmgrupofamiliar.caption:='EGRESOS DE AFILIADOS';
                frmgrupofamiliar.Label26.caption:=frmgrupofamiliar.Caption;
                frmgrupofamiliar.show;
        except
                frmgrupofamiliar.free;
        end;
end;

procedure Tfrmafiliaciones.NovedadesCertificadosExecute(Sender: TObject);
begin
        frmgrupofamiliar:=Tfrmgrupofamiliar.create(Application);
        try
                frmgrupofamiliar.btningresos.visible:=false;
                frmgrupofamiliar.btnegresos.visible:=false;
                frmgrupofamiliar.btncarnetizar.visible:=false;
                frmgrupofamiliar.btnsuspencion.visible:=false;
                frmgrupofamiliar.dbgnovedades.visible:=true;
                frmgrupofamiliar.cbgrupofamiliar.Visible:=false;

                frmgrupofamiliar.qrynovedades.close;
                frmgrupofamiliar.qrynovedades.Params[0].AsString := '30';
                frmgrupofamiliar.qrynovedades.Params[1].AsString := '1';
                frmgrupofamiliar.qrynovedades.ExecSql;
                frmgrupofamiliar.qrynovedades.open;
                frmgrupofamiliar.dbgnovedades.KeyValue:= '30';
                frmgrupofamiliar.caption:='CERTIFICADOS PARA LOS AFILIADOS';
                frmgrupofamiliar.Label26.caption:=frmgrupofamiliar.Caption;
                frmgrupofamiliar.show;
        except
                frmgrupofamiliar.free;
        end;
end;

procedure Tfrmafiliaciones.carnetizacionempresasExecute(Sender: TObject);
begin
      frmcar_empresas:=Tfrmcar_empresas.create(Application);
        try
                frmcar_empresas.caption:='CARNETIZACION DE AFILIADOS POR EMPRESAS';
                frmcar_empresas.btncarnetizar.Visible:=true;
                frmcar_empresas.show;
        except
                frmcar_empresas.free;
        end;
end;

procedure Tfrmafiliaciones.carnetizaciongrupofamiliarExecute(
  Sender: TObject);
begin
        frmgrupofamiliar:=Tfrmgrupofamiliar.create(Application);
        try
                frmgrupofamiliar.btningresos.visible:=false;
                frmgrupofamiliar.btnegresos.visible:=false;
                frmgrupofamiliar.btncertificados.visible:=false;
                frmgrupofamiliar.btnsuspencion.visible:=false;
                frmgrupofamiliar.Caption:='CARNETIZACION DE AFILIADOS POR GRUPO FAMILIAR';
                frmgrupofamiliar.Label26.caption:=frmgrupofamiliar.Caption;
                frmgrupofamiliar.panel2.Visible:=false;
                frmgrupofamiliar.show;
        except
                frmgrupofamiliar.close;
        end;
end;

procedure Tfrmafiliaciones.NovedadesCambiodeIdentificacionExecute(
  Sender: TObject);
begin
        frmacambio_identificacion:=Tfrmacambio_identificacion.create(Application);
        try
                frmacambio_identificacion.show;
        except
                frmacambio_identificacion.free;
        end;
end;

procedure Tfrmafiliaciones.FormShow(Sender: TObject);
begin
        stafiliaciones.Panels[0].Text:='USUARIO: '+gb_nom_usu;
        gb_fec_hoy:= fecha_hoy();
        stafiliaciones.Panels[1].Text:='FECHA ACTUAL: '+datetostr(gb_fec_hoy);
end;

function Tfrmafiliaciones.fecha_actual():Tdatetime;
begin
     //   qrygetdate.Close;
//        qrygetdate.ExecSQL;
  //      qrygetdate.open;
        fecha_actual:= date();
        //strtodatetime(qrygetdateSYSDATE.text);
  //      qrygetdate.Close;
end;

procedure Tfrmafiliaciones.NovedadesModalidadtrabajoExecute(
  Sender: TObject);
begin
        frmgrupofamiliar:=Tfrmgrupofamiliar.create(Application);
        try
                frmgrupofamiliar.btningresos.visible:=false;
                frmgrupofamiliar.btnegresos.visible:=false;
                frmgrupofamiliar.btncertificados.visible:=false;
                frmgrupofamiliar.btncarnetizar.visible:=false;
                frmgrupofamiliar.cbgrupofamiliar.visible:=false;
                frmgrupofamiliar.show;
        except
                frmgrupofamiliar.free;
        end;
end;

procedure Tfrmafiliaciones.ActualizaciondeCertificadosExecute(
  Sender: TObject);
begin
        frmact_certificados:=Tfrmact_certificados.create(Application);
        try
                frmact_certificados.qrynovedades.close;
                frmact_certificados.qrynovedades.Params[0].AsString := '60';
                frmact_certificados.qrynovedades.Params[1].AsString := '1';
                frmact_certificados.qrynovedades.ExecSql;
                frmact_certificados.qrynovedades.open;
                frmact_certificados.caption:='ACTULIZACION DE CERTIFICADOS';
                frmact_certificados.show;
        except
                frmact_certificados.free;
        end;
end;

procedure Tfrmafiliaciones.NovedadesSuspencionExecute(Sender: TObject);
begin
        frmgrupofamiliar:=Tfrmgrupofamiliar.create(Application);
        try
                frmgrupofamiliar.btningresos.visible:=false;
                frmgrupofamiliar.btnegresos.visible:=false;
                frmgrupofamiliar.btncertificados.visible:=false;
                frmgrupofamiliar.btncarnetizar.visible:=false;
                frmgrupofamiliar.mefecha_evento.Visible:=true;
                frmgrupofamiliar.label13.Visible:=true;
                frmgrupofamiliar.label14.Visible:=true;
                 frmgrupofamiliar.dbgnovedades.visible:=false;
                frmgrupofamiliar.cbgrupofamiliar.visible:=false;
                frmgrupofamiliar.caption:='SUSPENSION DE AFILIADOS POR SALIDA DEL PAIS';
                frmgrupofamiliar.Label26.caption:=frmgrupofamiliar.Caption;
                frmgrupofamiliar.Label2.visible:=false;
                frmgrupofamiliar.show;
        except
                frmgrupofamiliar.free;
        end;
end;

procedure Tfrmafiliaciones.ConsultasafiliadosidentificacionExecute(
  Sender: TObject);
begin
        frmgrupofamiliar:=Tfrmgrupofamiliar.create(Application);
        try
                frmgrupofamiliar.btningresos.visible:=false;
                frmgrupofamiliar.btnegresos.visible:=false;
                frmgrupofamiliar.btncertificados.visible:=false;
                frmgrupofamiliar.btncarnetizar.visible:=false;
                frmgrupofamiliar.btnsuspencion.visible:=false;
                frmgrupofamiliar.cbgrupofamiliar.visible:=false;
                frmgrupofamiliar.caption:='CONSULTA DE AFILADOS POR IDENTIFICACION';
                frmgrupofamiliar.Label26.caption:=frmgrupofamiliar.Caption;
                frmgrupofamiliar.show;
        except
                frmgrupofamiliar.free;
        end;

end;

procedure Tfrmafiliaciones.ConsultasafilidosnombresExecute(
  Sender: TObject);
begin
        frmconsulta_nombre:=Tfrmconsulta_nombre.create(Application);
        try
                frmconsulta_nombre.caption:='CONSULTA DE AFILIADOS POR NOMBRES';
                frmconsulta_nombre.Label26.caption:=frmconsulta_nombre.Caption;
                frmconsulta_nombre.show;
        except
                frmconsulta_nombre.free;
        end;
end;

procedure Tfrmafiliaciones.ConsultaafiliadosempresaExecute(Sender: TObject);
begin
        frmcar_empresas:=Tfrmcar_empresas.create(Application);
        try
                frmcar_empresas.Caption:='CONSULTA DE AFILIADOS POR EMPRESA';
                frmcar_empresas.Label26.caption:=frmcar_empresas.Caption;
                frmcar_empresas.show;
        except
                frmcar_empresas.free;
        end;
end;

procedure Tfrmafiliaciones.ConsultafiliadohistoriaExecute(Sender: TObject);
begin
        frmhistoria_afiliado:=Tfrmhistoria_afiliado.create(Application);
        try
                frmhistoria_afiliado.Caption:='HISTORIA DE AFILIADOS';
                frmhistoria_afiliado.Label26.caption:=frmhistoria_afiliado.Caption;
                frmhistoria_afiliado.show;
        except
                frmhistoria_afiliado.free;
        end;
end;

procedure Tfrmafiliaciones.ConsultaempresasidentificacionExecute(
  Sender: TObject);
begin
        frmcar_empresas:=Tfrmcar_empresas.create(Application);
        try
//                frmcar_empresas.panel3.Visible:=false;
                frmcar_empresas.Caption:='CONSULTA DE EMPRESAS POR IDENTIFICACION';
                frmcar_empresas.Label26.caption:=frmcar_empresas.Caption;
                frmcar_empresas.show;
        except
                frmcar_empresas.free;
        end;
end;

procedure Tfrmafiliaciones.ComprobaciondederechosExecute(Sender: TObject);
begin
        frmcompoder:=Tfrmcompoder.create(Application);
        try
                frmcompoder.Caption:='COMPROBADOR DE DERECHOS';
                frmcompoder.Label26.caption:=frmcompoder.Caption;
                frmcompoder.show;
        except
                frmcompoder.free;
        end;
end;

function suspension(Tfrmafiliaciones: TObject):string;
begin
     Result := '1';
end;


procedure Tfrmafiliaciones.CarnetizacionciudadresidenciaExecute(
  Sender: TObject);
begin
     showmessage('Esta opcion no esta disponible en estos momentos');
end;

procedure Tfrmafiliaciones.ConsultaEmpresasNombreExecute(Sender: TObject);
begin
        frmempresas:=Tfrmempresas.create(Application);
              try
                      frmempresas.caption:='CONSULTA DE EMPRESAS POR NOMBRE';
                      frmempresas.show;
                      frmempresas.FormStyle:=fsMDIChild;
                      frmempresas.windowstate:=wsMaximized;
              except
                      frmempresas.free;
              end;
end;

procedure Tfrmafiliaciones.NovedadesReintegroExecute(Sender: TObject);
begin
         frmreintegrossuspendidos:=Tfrmreintegrossuspendidos.create(Application);
        try
                frmreintegrossuspendidos.caption:='REINTEGRO DE AFILIADOS POR SALIDA DEL PAIS';
                frmreintegrossuspendidos.LABEL26.caption:=frmreintegrossuspendidos.caption;
                frmreintegrossuspendidos.show;
        except
                frmreintegrossuspendidos.free;
        end;
end;

procedure Tfrmafiliaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
{          try
                TRY
                frmafiliacion_usuarios.FormClose(frmafiliacion_usuarios,Action);
                EXCEPT
                      application.Terminate;
                END;
          except
                frmafiliacion_usuarios.close;
                abort;
          end;
          if MessageDlg('Realmente desea abandonar el aplicativo?',
              mtConfirmation, [mbYes, mbNo], 0) = mrNo then
              begin
                   abort;
              end
              else
              begin
                   try
                         frmafiliacion_usuarios.close;
                   except
                         application.terminate;
                   end;


              end;}
    application.terminate;

end;

procedure Tfrmafiliaciones.NovedadCambiodeEmpresaExecute(Sender: TObject);
begin
        frmcambio_empresas:=Tfrmcambio_empresas.create(Application);
        try
                frmcambio_empresas.caption:='CAMBIO DE EMPRESAS';
                frmcambio_empresas.Label26.caption:=frmcambio_empresas.Caption;
                frmcambio_empresas.show;
        except
                frmcambio_empresas.free;
        end;
end;

procedure Tfrmafiliaciones.ReintegrosCotizantesExecute(Sender: TObject);
begin
        frmreintegros:=Tfrmreintegros.create(Application);
        try
                frmreintegros.btnreingreso_cot.visible:=true;
                frmreintegros.btnreintegros_ben.visible:=false;
                frmreintegros.caption:='REINTEGRO DEL COTIZANTE Y EL GRUPO FAMILIAR';
                frmreintegros.show;
        except
                frmreintegros.free;
        end;
end;

procedure Tfrmafiliaciones.ReintegrosBeneficiariosExecute(Sender: TObject);
begin
        frmreintegros:=Tfrmreintegros.create(Application);
        try
                frmreintegros.btnreingreso_cot.visible:=false;
                frmreintegros.btnreintegros_ben.visible:=true;
                frmreintegros.TabSheet2.Tabvisible:=false;
                frmreintegros.caption:='REINTEGRO DE BENEFICIARIOS';
                frmreintegros.show;
        except
                frmreintegros.free;
        end;
end;


procedure Tfrmafiliaciones.letrasKeypress(Sender: TObject; var Key: Char);
begin
      if not (Key in ['0'..'z',' ',#8])then
     begin
           Key := #0;
           ShowMessage('Solo se aceptan letras  y Numeros ');
     end;
end;

procedure Tfrmafiliaciones.numerosKeypress(Sender: TObject; var Key: Char);
begin
     if not (Key in ['0'..'9',#8])then
     begin
           Key := #0;
           ShowMessage('Solo se aceptan Números');
     end;
end;

function Tfrmafiliaciones.mayor_hoy(Sender: TField):boolean;
begin
      if Sender.value > date() then
//      if Sender.value > gb_fec_hoy then
     begin
         showmessage('La fecha digitada es mayor a la fecha de hoy');
         mayor_hoy:=true;
     end
     else
     mayor_hoy:=false;
end;

procedure Tfrmafiliaciones.Exit1Click(Sender: TObject);
begin
if MessageDlg('Desea Salir de la Aplicacion?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
 begin
  ToolButton29.Action := WindowClose1;
  CLOSE;
 end;
end;

function Tfrmafiliaciones.fecha_hoy: tdate;

begin
  //      qrygetdate.Close;
    //    qrygetdate.ExecSQL;
//        qrygetdate.open;
  //      fecha_hoy:= strtodate(copy(qrygetdateSYSDATE.text,1,10));
    //    qrygetdate.Close;
end;

procedure Tfrmafiliaciones.afiliados_dependientesExecute(Sender: TObject);
begin
         frmafiliacion_independientes:=Tfrmafiliacion_independientes.create(Application);
           try
                frmafiliacion_independientes.tblafiliados.Close;
                frmafiliacion_independientes.tblafiliados.open;
                frmafiliacion_independientes.DBNavigator.VisibleButtons:=[nbPost];
                frmafiliacion_independientes.tblafiliados.Insert;
                frmafiliacion_independientes.tblafiliadoscod_tipo_afil.text:='C';
                frmafiliacion_independientes.tblafiliadoscod_estado.text:='A';
                frmafiliacion_independientes.tblafiliadoscod_oficina.text:=gb_oficina;
                frmafiliacion_independientes.tblafiliadoscod_regional.text:=gb_regional;
                frmafiliacion_independientes.DateTimePicker1.Date:=date();
                frmafiliacion_independientes.DateTimePicker2.Date:=date();
                frmafiliacion_independientes.DateTimePicker3.Date:=date();
              //  frmafiliacion_independientes.DateTimePicker4.Date:=frmafiliaciones.fecha_hoy();
                frmafiliacion_independientes.tblafiliadosfec_radicacion.Value:=frmafiliacion_independientes.DateTimePicker1.Date;
                frmafiliacion_independientes.tblafiliadosfec_nacimiento.Value:=frmafiliacion_independientes.DateTimePicker2.Date;
                frmafiliacion_independientes.tblafiliadosfec_afiliacion_sis.Value:=frmafiliacion_independientes.DateTimePicker3.Date;
                frmafiliacion_independientes.PageControl3.ActivePage := frmafiliacion_independientes.TabSheet1;
                frmafiliacion_independientes.Caption := 'INGRESO DE AFILIADOS INDEPENDIENTES PENSIONADOS';
                frmafiliacion_independientes.Label26.Caption := frmafiliacion_independientes.Caption;
                frmafiliacion_independientes.qrymodalidadtrabajo.Open;
                frmafiliacion_independientes.DateTimePicker1.SetFocus;
                frmafiliacion_independientes.edttipoactualizacion.text :='C';
                frmafiliacion_independientes.show;
         //       frmafiliacion_independientes.PageControl1.ActivePage:=frmafiliacion_independientes.TabSheet2;
//                frmafiliacion_independientes.DateTimePicker9.setfocus();
           except
             frmafiliacion_independientes.free;
        end;
end;

procedure Tfrmafiliaciones.ConsultaFormularioExecute(Sender: TObject);
begin
        frmconsulta_formulario:=Tfrmconsulta_formulario.create(Application);
        try
                frmconsulta_formulario.caption:='CONSULTA DE AFILIADOS POR FORMULARIO';
                frmconsulta_formulario.Label26.caption:=frmconsulta_formulario.Caption;
                frmconsulta_formulario.show;
        except
                frmconsulta_formulario.free;
        end;
end;

procedure Tfrmafiliaciones.carnetizacionafiliadoExecute(Sender: TObject);
begin
        frmgrupofamiliar:=Tfrmgrupofamiliar.create(Application);
        try
                frmgrupofamiliar.btningresos.visible:=false;
                frmgrupofamiliar.btnegresos.visible:=false;
                frmgrupofamiliar.btncertificados.visible:=false;
                frmgrupofamiliar.btnsuspencion.visible:=false;
                frmgrupofamiliar.Caption:='CARNETIZACION DE AFILIADO';
                frmgrupofamiliar.Label26.caption:=frmgrupofamiliar.Caption;
                frmgrupofamiliar.Label1.Caption:='Información del Afiliado';
                frmgrupofamiliar.panel2.Visible:=false;
                frmgrupofamiliar.show;
        except
                frmgrupofamiliar.free;
        end;
end;

procedure Tfrmafiliaciones.FormulariosRadicacionPorFecha1Click(
  Sender: TObject);
begin
   try
     frmrepradicado:=Tfrmrepradicado.create(Application);
     frmrepradicado.Show;
   except
      frmrepradicado.free;
   end;

end;

end.


