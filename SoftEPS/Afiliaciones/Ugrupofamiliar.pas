unit Ugrupofamiliar;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBGrids, DBTables, Grids, Mask, ExtCtrls, Buttons,
  ComCtrls,variants;

type
  Tfrmgrupofamiliar = class(TForm)
    qryrelacion_afiliadostip_documento_ben: TStringField;
    qryrelacion_afiliadosnum_documento_ben: TStringField;
    qryrelacion_afiliadoscod_parentesco: TStringField;
    DBGrid1: TDBGrid;
    DBNavigator: TDBNavigator;
    Panel1: TPanel;
    dsafiliados: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    qryafiliados: TQuery;
    qryrelacion_afiliados: TQuery;
    dsrelacion_afiliados: TDataSource;
    qryrelacion_afiliadospri_apellido: TStringField;
    qryrelacion_afiliadosseg_apellido: TStringField;
    qryrelacion_afiliadospri_nombre: TStringField;
    qryrelacion_afiliadosseg_nombre: TStringField;
    qryrelacion_afiliadoscod_sexo: TStringField;
    qryrelacion_afiliadosfec_nacimiento: TDateTimeField;
    qryrelacion_afiliadoscod_tipo_afil: TStringField;
    btningresos: TButton;
    btnegresos: TButton;
    btncertificados: TButton;
    btncarnetizar: TButton;
    qryupdateafiliados: TQuery;
    qryupdaterelacion_afiliados: TQuery;
    qryafiliados_empresas: TQuery;
    qrynovedades_afiliados: TQuery;
    qrynovedades: TQuery;
    qrynovedadesnov_codigo: TStringField;
    qrynovedadesnov_nombre: TStringField;
    dsnovedades: TDataSource;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    dstipos_documentos: TDataSource;
    dssexo: TDataSource;
    dsestratos: TDataSource;
    dsdiscapacidades: TDataSource;
    dsestadosciviles: TDataSource;
    Panel4: TPanel;
    GroupBox4: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label33: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label36: TLabel;
    Label39: TLabel;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    dblsexo: TDBLookupComboBox;
    dblestrato: TDBLookupComboBox;
    dbldiscapacidad: TDBLookupComboBox;
    dblestadocivil: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    Label17: TLabel;
    ednumero_planilla: TEdit;
    Label13: TLabel;
    mefecha_evento: TMaskEdit;
    Label14: TLabel;
    dbltipos: TDBLookupComboBox;
    qrypermanencia_eps: TQuery;
    qrypermanencia_epsnov_codigo: TStringField;
    qrypermanencia_epspermanencia_EPS: TFloatField;
    qrypermanecias: TQuery;
    qrypermaneciasfec_periodo: TDateTimeField;
    qrypermaneciasper_permanencia: TFloatField;
    qrypermaneciasper_suspension: TFloatField;
    qrypermaneciasper_inactividad: TFloatField;
    qrynovedadesingresoegresos: TQuery;
    qrynovedadesingresoegresosnov_codigo: TStringField;
    qrynovedadesingresoegresosnov_nombre: TStringField;
    qrynovedadesingresoegresostip_documento: TStringField;
    qrynovedadesingresoegresosnum_documento: TStringField;
    qrynovedadesingresoegresosfec_novedad_afil: TDateTimeField;
    qrynovedadesingresoegresosfec_evento: TDateTimeField;
    qrynovedadesingresoegresosnom_empresa: TStringField;
    Qrytemporal: TQuery;
    Qrytemporalnom_afiliado: TStringField;
    Qrytemporalnom_parentesco: TStringField;
    Qrytemporalnom_sexo: TStringField;
    Qrytemporalnom_tipo: TStringField;
    Qrytemporalnom_estado: TStringField;
    Qrytemporaltip_documento: TStringField;
    Qrytemporalnum_documento: TStringField;
    Qrytemporalpri_nombre: TStringField;
    Qrytemporalseg_nombre: TStringField;
    Qrytemporalpri_apellido: TStringField;
    Qrytemporalseg_apellido: TStringField;
    Qrytemporalcod_sexo: TStringField;
    Qrytemporalfec_nacimiento: TDateTimeField;
    Qrytemporalcod_parentesco: TStringField;
    Qrytemporalcod_tipo_afil: TStringField;
    Qrytemporalnum_semanas: TFloatField;
    Qrytemporalcod_estado: TStringField;
    StoredProc1: TStoredProc;
    qryrelacion_afiliadosnom_afiliado: TStringField;
    qryrelacion_afiliadosfec_afiliacion_uni: TDateTimeField;
    qryrelacion_afiliadoscod_departamento_res: TStringField;
    qryrelacion_afiliadoscod_ciudad_res: TStringField;
    qryrelacion_afiliadosnom_depto: TStringField;
    qryrelacion_afiliadosnom_ciudad: TStringField;
    qryrelacion_afiliadostip_documento_cot: TStringField;
    qryrelacion_afiliadosnum_documento_cot: TStringField;
    qryrelacion_afiliadosnom_deptociudad: TStringField;
    qryrelacion_afiliadoscod_discapacidad: TStringField;
    qryrelacion_afiliadoscod_estrato: TStringField;
    qryrelacion_afiliadosdoc_ben: TStringField;
    qryrelacion_afiliadosdoc_cot: TStringField;
    qryestratos_afiliados: TQuery;
    qryvalor_total_cot: TQuery;
    qrysalariominimo: TQuery;
    qrysalariominimosal_minimo: TFloatField;
    qryestratos_afiliadoscod_estrato_afiliado: TStringField;
    qrycartera: TQuery;
    qrycarteratip_documento: TStringField;
    qrycarteranum_documento: TStringField;
    qrycarteratip_documento_emp: TStringField;
    qrycarteranum_documento_emp: TStringField;
    qrycarteracod_sucursal_emp: TStringField;
    qrycarteraper_compensacion: TStringField;
    qrycarteratipo_mora: TStringField;
    qrycarteravalor_mora: TFloatField;
    qrycarteravalor_upc: TFloatField;
    qrycarteracod_tipo_afil: TStringField;
    qrycarteranom_empresa: TStringField;
    qrycarteratip_documento_cot: TStringField;
    qrycarteranum_documento_cot: TStringField;
    btnsuspencion: TBitBtn;
    qryrelacion_afiliadosnom_parentesco: TStringField;
    qryrelacion_afiliadosnom_sexo: TStringField;
    qryrelacion_afiliadosnom_tipo: TStringField;
    qryrelacion_afiliadosnom_estado: TStringField;
    qryrelacion_afiliadoscod_estado: TStringField;
    qrycotiza: TQuery;
    dscotiza: TDataSource;
    qrycotizaTIP_DOCUMENTO_COT: TStringField;
    qrycotizaNUM_DOCUMENTO_COT: TStringField;
    qryvalor_total_cotSUMVAL_SUELDO_AFIL: TFloatField;
    Label26: TLabel;
    Qrymaxfecha: TQuery;
    QrymaxfechaFEC_NOVEDAD: TDateTimeField;
    Label48: TLabel;
    Label1: TLabel;
    dbgnovedades: TDBLookupComboBox;
    Label2: TLabel;
    qryafiliadosTIP_DOCUMENTO: TStringField;
    qryafiliadosNUM_DOCUMENTO: TStringField;
    qryafiliadosCOD_SEXO: TStringField;
    qryafiliadosCOD_TIPO_AFIL: TStringField;
    qryafiliadosCOD_MODALIDAD_TRA: TStringField;
    qryafiliadosCOD_ESTADO_CIV: TStringField;
    qryafiliadosCOD_ESTRATO: TStringField;
    qryafiliadosCOD_ESCOLARIDAD: TStringField;
    qryafiliadosCOD_PROFESION: TStringField;
    qryafiliadosCOD_ESTADO: TStringField;
    qryafiliadosCOD_OFICINA: TStringField;
    qryafiliadosCOD_REGIONAL: TStringField;
    qryafiliadosPRI_NOMBRE: TStringField;
    qryafiliadosSEG_NOMBRE: TStringField;
    qryafiliadosPRI_APELLIDO: TStringField;
    qryafiliadosSEG_APELLIDO: TStringField;
    qryafiliadosFEC_NACIMIENTO: TDateTimeField;
    qryafiliadosFEC_AFILIACION_SIS: TDateTimeField;
    qryafiliadosFEC_AFILIACION_UNI: TDateTimeField;
    qryafiliadosEPS_TIP_DOC: TStringField;
    qryafiliadosEPS_NUM_DOC: TStringField;
    qryafiliadosCOD_DEPARTAMENTO_RES: TStringField;
    qryafiliadosCOD_CIUDAD_RES: TStringField;
    qryafiliadosCOD_BARRIO_RES: TStringField;
    qryafiliadosCOD_ZONA: TStringField;
    qryafiliadosACE_TIP_DOC: TStringField;
    qryafiliadosACE_NUMERO_DOC: TStringField;
    qryafiliadosCOD_DISCAPACIDAD: TStringField;
    qryafiliadosNUM_SEMANA_COTIZA: TFloatField;
    qryafiliadosFEC_RADICACION: TDateTimeField;
    qryafiliadosNUM_FORMATO_AFIL: TStringField;
    qryafiliadosDIR_AFILIADO_RES: TStringField;
    qryafiliadosTEL_AFILIADO_RES: TStringField;
    qryafiliadosTEL_AFILIADO_RES2: TStringField;
    qryafiliadosCEL_AFILIADO: TStringField;
    qryafiliadosEML_AFILIADO: TStringField;
    qryafiliadosFEC_ULTIMA_NOV: TDateTimeField;
    qryafiliadosTIP_DOCUMENTO_IPS: TStringField;
    qryafiliadosNUM_DOCUMENTO_IPS: TStringField;
    qryafiliadosTIP_DOCUMENTO_MED: TStringField;
    qryafiliadosNUM_DOCUMENTO_MED: TStringField;
    qryafiliadosTIP_DOCUMENTO_ODO: TStringField;
    qryafiliadosNUM_DOCUMENTO_ODO: TStringField;
    qryafiliadosSEM_COTIZACION: TFloatField;
    DBLookupComboBox1: TDBLookupComboBox;
    dtsmodalidadtra: TDataSource;
    Label3: TLabel;
    qryrelacion_afiliadosMON_PRESTADOR: TStringField;
    cbgrupofamiliar: TCheckBox;
    Button1: TButton;
    qrycotizaTIP_DOCUMENTO_BEN: TStringField;
    qrycotizaNUM_DOCUMENTO_BEN: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btningresosClick(Sender: TObject);
    procedure btnegresosClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnsuspencionClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btncertificadosClick(Sender: TObject);
    procedure qrytemporalCalcFields(DataSet: TDataSet);
    procedure qryafiliadosCalcFields(DataSet: TDataSet);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure qryrelacion_afiliadosCalcFields(DataSet: TDataSet);
    procedure btncarnetizarClick(Sender: TObject);
    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure dbltiposExit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure dbgnovedadesExit(Sender: TObject);
    procedure mefecha_eventoExit(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmgrupofamiliar: Tfrmgrupofamiliar;
  ii_tip_doc_emp:string;
  ii_num_doc_emp:string;
  ii_cod_empresa:string;
  ii_fecha_ingreso:tdatetime;
  arreglo: array[1..3,1..100] of string;
  totalrelacion,i:integer;
implementation

uses Uafiliaciones_usuarios, Udmafiliaciones, Uafiliados_empresas,
  Uafiliaciones, ureporte, Ucarnets_grupo_familiar,
  Uafiliaciones_independientes, Ucar_empresas;

{$R *.DFM}

procedure Tfrmgrupofamiliar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     action:=cafree;
end;

procedure Tfrmgrupofamiliar.DBGrid1DblClick(Sender: TObject);
begin

if qryafiliadosCOD_MODALIDAD_TRA.Value <> 'I'  then
begin

        if (btningresos.visible=false) and
           (btnegresos.visible=false) and
           (btncertificados.visible=false) and
           (btncarnetizar.visible=false) and
           (btnsuspencion.visible=false) AND
           (frmgrupofamiliar.caption ='ACTUALIZACION DE DATOS DE LOS AFILIADOS') then
        begin
              frmafiliacion_usuarios:=Tfrmafiliacion_usuarios.create(Application);
              try

                      frmafiliacion_usuarios.formStyle:=fsMDIChild;
                      frmafiliacion_usuarios.WindowState:=wsMaximized;
                      frmafiliacion_usuarios.DBNavigator.VisibleButtons:=[nbEdit,nbPost,nbCancel,nbRefresh];
                      frmafiliacion_usuarios.DBNavigator2.VisibleButtons:=[nbEdit,nbPost,nbCancel];
                     // frmafiliacion_usuarios.DBGrid2.Enabled:=false;
                      frmafiliacion_usuarios.DBGrid2.Columns[0].visible:=false;
                      frmafiliacion_usuarios.DBGrid2.Columns[1].ReadOnly:=true;
                      frmafiliacion_usuarios.DBGrid2.Columns[2].ReadOnly:=true;
                      frmafiliacion_usuarios.DBGrid2.Columns[3].ReadOnly:=true;
//                      frmafiliacion_usuarios.tblafiliados.Findkey([qryrelacion_afiliadostip_documento_ben.text,qryrelacion_afiliadosnum_documento_ben.Text]);
                      with frmafiliacion_usuarios.tblafiliados do
                      Locate('tip_documento;num_documento',VarArrayOf([qryrelacion_afiliadostip_documento_ben.Text,qryrelacion_afiliadosnum_documento_ben.text]), [loPartialKey]);
                      frmafiliacion_usuarios.TabSheet5.enabled:=false;
                      frmafiliacion_usuarios.PageControl1.ActivePage:=frmafiliacion_usuarios.TabSheet1;
                      frmafiliacion_usuarios.dbedit22.enabled:=false;
                      frmafiliacion_usuarios.dbedit23.enabled:=false;
                      frmafiliacion_usuarios.DateTimePicker1.Date:=frmafiliacion_usuarios.tblafiliadosfec_radicacion.Value;
                      frmafiliacion_usuarios.DateTimePicker2.Date:=frmafiliacion_usuarios.tblafiliadosfec_nacimiento.Value;
                      frmafiliacion_usuarios.DateTimePicker3.Date:=frmafiliacion_usuarios.tblafiliadosfec_afiliacion_sis.Value;
                      frmafiliacion_usuarios.DateTimePicker4.Text:=datetostr(frmafiliacion_usuarios.tblafiliadosfec_afiliacion_uni.Value);
                      frmafiliacion_usuarios.DateTimePicker7.Date:=frmafiliacion_usuarios.tblafiliadosfec_afiliacion_sis.Value;
                      frmafiliacion_usuarios.DateTimePicker6.date:=(frmafiliacion_usuarios.tblafiliadosfec_afiliacion_uni.Value);
                      frmafiliacion_usuarios.DBLookupComboBox2.enabled:=false;
                      frmafiliacion_usuarios.Button9.Visible := true;
                      frmafiliacion_usuarios.qrymodalidadtrabajo.Open;
                      frmafiliacion_usuarios.dblmodalidadtrabajo.Enabled := true;
                      frmafiliacion_usuarios.dblmodalidadtrabajo.KeyValue := frmafiliacion_usuarios.tblafiliadoscod_modalidad_tra.Value;
                      dmafiliaciones.tblmodalidadtrabajo.Open;
                      dmafiliaciones.Qryciudades.Active:=false;
                      dmafiliaciones.Qryciudades.Params[0].AsString := frmafiliacion_usuarios.tblafiliadoscod_departamento_res.text;
                      dmafiliaciones.Qryciudades.ExecSQL;
                      dmafiliaciones.Qryciudades.Active:=true;
                      dmafiliaciones.qrybarrios.Active:=false;

                      dmafiliaciones.qrybarrios.Params[0].AsString := frmafiliacion_usuarios.tblafiliadoscod_departamento_res.text;
                      dmafiliaciones.qrybarrios.Params[1].AsString := frmafiliacion_usuarios.tblafiliadoscod_ciudad_res.text;
                      dmafiliaciones.qrybarrios.ExecSQL;
                      dmafiliaciones.qrybarrios.Active:=true;
                       // saber  si es  translado de  empresa

                      if frmafiliacion_usuarios.tblafiliadosfec_afiliacion_sis.Value = frmafiliacion_usuarios.tblafiliadosfec_afiliacion_sis.Value then
                           begin
                           frmafiliacion_usuarios.RadioGroup1.ItemIndex := 0;
                           end
                           else
                           frmafiliacion_usuarios.RadioGroup1.ItemIndex := 1;

                                    if qryrelacion_afiliadoscod_tipo_afil.text='C' then
                                    begin
                                    frmafiliacion_usuarios.TabSheet1.Tabvisible:=true;
                                    frmafiliacion_usuarios.caption:='ACTUALIZACION DE DATOS DE  COTIZANTES';
                                    frmafiliacion_usuarios.TabSheet3.Tabvisible:=true;
                                    frmafiliacion_usuarios.TabSheet5.Tabvisible:=false;
                                    frmafiliacion_usuarios.PageControl3.ActivePage := frmafiliacion_usuarios.TabSheet1;
                                    frmafiliacion_usuarios.edttipoactualizacion.Text := 'C';
                                    end
                                    else
                                    if qryrelacion_afiliadoscod_tipo_afil.text <> 'C' then
                                    begin
                                    frmafiliacion_usuarios.TabSheet1.Tabvisible:=true;
                                    frmafiliacion_usuarios.TabSheet1.caption := 'Beneficiario';
                                    frmafiliacion_usuarios.TabSheet3.Tabvisible:=false;
                                    frmafiliacion_usuarios.TabSheet5.Tabvisible:=false;
                                    frmafiliacion_usuarios.caption:='ACTUALIZACION DE DATOS DE BENEFICIARIO';
                                    frmafiliacion_usuarios.Label26.Caption:=frmafiliacion_usuarios.Caption;
                                    frmafiliacion_usuarios.PageControl3.ActivePage := frmafiliacion_usuarios.TabSheet1;
                                    frmafiliacion_usuarios.edttipoactualizacion.Text := 'B';
                                    frmafiliacion_usuarios.DBNavigator3.Visible := true;
                                    frmafiliacion_usuarios.Button9.Visible := false;
                                    end;
                          frmafiliacion_usuarios.WindowState :=  wsMaximized;
                          frmafiliacion_usuarios.show;
              except
                      frmafiliacion_usuarios.close;
              end;
        end;
        end
 else
        // cuando  son independientes

 if qryafiliadosCOD_MODALIDAD_TRA.Value = 'I' then
 begin



        if (btningresos.visible=false) and
           (btnegresos.visible=false) and
           (btncertificados.visible=false) and
           (btncarnetizar.visible=false) and
           (btnsuspencion.visible=false) AND
           (frmgrupofamiliar.caption ='ACTUALIZACION DE DATOS DE LOS AFILIADOS') then
        begin

              frmafiliacion_independientes:=Tfrmafiliacion_independientes.create(Application);
                     try
                      frmafiliacion_independientes.formStyle:=fsMDIChild;
                      frmafiliacion_independientes.WindowState:=wsMaximized;
                      frmafiliacion_independientes.DBNavigator.VisibleButtons:=[nbEdit,nbPost,nbCancel,nbRefresh];
                      frmafiliacion_independientes.DBNavigator2.VisibleButtons:=[nbEdit,nbPost,nbCancel];
                      frmafiliacion_independientes.qrymodalidadtrabajo.Open;
                     // frmafiliacion_independientes.DBGrid2.Enabled:=false;
                      frmafiliacion_independientes.DBGrid2.Columns[0].visible:=false;
                      frmafiliacion_independientes.DBGrid2.Columns[1].ReadOnly:=true;
                      frmafiliacion_independientes.DBGrid2.Columns[2].ReadOnly:=true;
                      frmafiliacion_independientes.DBGrid2.Columns[3].ReadOnly:=true;
//                      frmafiliacion_independientes.tblafiliados.Findkey([qryrelacion_afiliadostip_documento_ben.text,qryrelacion_afiliadosnum_documento_ben.Text]);
                      with frmafiliacion_independientes.tblafiliados do
                      Locate('tip_documento;num_documento',VarArrayOf([qryrelacion_afiliadostip_documento_ben.Text,qryrelacion_afiliadosnum_documento_ben.text]), [loPartialKey]);
                      frmafiliacion_independientes.TabSheet5.enabled:=false;
                      frmafiliacion_independientes.PageControl1.ActivePage:=frmafiliacion_independientes.TabSheet1;
                      frmafiliacion_independientes.dbedit22.enabled:=false;
                      frmafiliacion_independientes.dbedit23.enabled:=false;
                      frmafiliacion_independientes.DateTimePicker1.Date:=frmafiliacion_independientes.tblafiliadosfec_radicacion.Value;
                      frmafiliacion_independientes.DateTimePicker2.Date:=frmafiliacion_independientes.tblafiliadosfec_nacimiento.Value;
                      frmafiliacion_independientes.DateTimePicker3.Date:=frmafiliacion_independientes.tblafiliadosfec_afiliacion_sis.Value;
                      frmafiliacion_independientes.DateTimePicker4.Text:=datetostr(frmafiliacion_independientes.tblafiliadosfec_afiliacion_uni.Value);
                      frmafiliacion_independientes.DateTimePicker7.Date:=frmafiliacion_independientes.tblafiliadosfec_afiliacion_sis.Value;
                      frmafiliacion_independientes.DateTimePicker6.date:=(frmafiliacion_independientes.tblafiliadosfec_afiliacion_uni.Value);
                      frmafiliacion_independientes.DBLookupComboBox2.enabled:=false;
                      frmafiliacion_independientes.Button9.Visible := true;
                      dmafiliaciones.Qryciudades.Active:=false;
                      dmafiliaciones.Qryciudades.Params[0].AsString := frmafiliacion_independientes.tblafiliadoscod_departamento_res.text;
                      dmafiliaciones.Qryciudades.ExecSQL;
                      dmafiliaciones.Qryciudades.Active:=true;
                      dmafiliaciones.qrybarrios.Active:=false;
                      dmafiliaciones.qrybarrios.Params[0].AsString := frmafiliacion_independientes.tblafiliadoscod_departamento_res.text;
                      dmafiliaciones.qrybarrios.Params[1].AsString := frmafiliacion_independientes.tblafiliadoscod_ciudad_res.text;
                      dmafiliaciones.qrybarrios.ExecSQL;
                      dmafiliaciones.qrybarrios.Active:=true;
                       // saber  si es  translado de  empresa

                      if frmafiliacion_independientes.tblafiliadosfec_afiliacion_sis.Value = frmafiliacion_independientes.tblafiliadosfec_afiliacion_sis.Value then
                           begin
                           frmafiliacion_independientes.RadioGroup1.ItemIndex := 0;
                           end
                           else
                           frmafiliacion_independientes.RadioGroup1.ItemIndex := 1;

                                    if qryrelacion_afiliadoscod_tipo_afil.text='C' then
                                    begin
                                    frmafiliacion_independientes.TabSheet1.Tabvisible:=true;
                                    frmafiliacion_independientes.caption:='ACTUALIZACION DE DATOS DE  COTIZANTES INDEPENDIENTES';
                                    frmafiliacion_independientes.TabSheet3.Tabvisible:=true;
                                    frmafiliacion_independientes.TabSheet5.Tabvisible:=false;
                                    frmafiliacion_independientes.PageControl3.ActivePage := frmafiliacion_independientes.TabSheet1;
                                    frmafiliacion_independientes.edttipoactualizacion.Text := 'C';

                                    end
                                    else
                                    if qryrelacion_afiliadoscod_tipo_afil.text <> 'C' then
                                    begin
                                    frmafiliacion_independientes.TabSheet1.Tabvisible:=true;
                                    frmafiliacion_independientes.TabSheet3.Tabvisible:=false;
                                    frmafiliacion_independientes.TabSheet5.Tabvisible:=false;
                                    frmafiliacion_independientes.caption:='ACTUALIZACION DE DATOS DE  BENEFICIARIO INDEPENDIENTES';
                                    frmafiliacion_independientes.Label26.Caption:=frmafiliacion_independientes.Caption;
                                    frmafiliacion_independientes.PageControl3.ActivePage := frmafiliacion_independientes.TabSheet1;
                                    frmafiliacion_independientes.edttipoactualizacion.Text := 'B';
                                    frmafiliacion_independientes.DBNavigator3.Visible := true;
                                    frmafiliacion_independientes.Button9.Visible := false;
                                    end;
                          frmafiliacion_independientes.WindowState :=  wsMaximized;
                          frmafiliacion_independientes.show;
              except
                      frmafiliacion_independientes.close;
              end;
        end;
        end;



end;

procedure Tfrmgrupofamiliar.btningresosClick(Sender: TObject);
begin
    //    qryrelacion_afiliados.First;
        if (qryafiliadostip_documento.text<>'') and (qryafiliadosnum_documento.text <>'') and (qryrelacion_afiliadoscod_tipo_afil.text='C')  then
        begin
                frmafiliacion_usuarios:=Tfrmafiliacion_usuarios.create(Application);
                try
                        frmafiliacion_usuarios.formStyle:=fsMDIChild;
                        frmafiliacion_usuarios.WindowState:=wsMaximized;
                        frmafiliacion_usuarios.DBNavigator.VisibleButtons:=[];
                        frmafiliacion_usuarios.DateTimePicker4.Text := datetostr(frmafiliacion_usuarios.tblafiliadosfec_afiliacion_uni.Value);
                        frmafiliacion_usuarios.DateTimePicker3.date := (frmafiliacion_usuarios.tblafiliadosfec_afiliacion_sis.Value);
                        frmafiliacion_usuarios.DateTimePicker6.date := (frmafiliacion_usuarios.tblafiliadosfec_afiliacion_uni.Value);
                        frmafiliacion_usuarios.DateTimePicker7.date := (frmafiliacion_usuarios.tblafiliadosfec_afiliacion_sis.Value);

                        frmafiliacion_usuarios.DBNavigator2.Visible:=false;
                        frmafiliacion_usuarios.DBGrid2.Enabled:=false;
//                        frmafiliacion_usuarios.tblafiliados.Findkey([qryrelacion_afiliadostip_documento_ben.text,qryrelacion_afiliadosnum_documento_ben.Text]);
                        with frmafiliacion_usuarios.tblafiliados do
                        Locate('tip_documento;num_documento',VarArrayOf([qryrelacion_afiliadostip_documento_ben.Text,qryrelacion_afiliadosnum_documento_ben.text]), [loPartialKey]);
                       // frmafiliacion_usuarios.PageControl3.ActivePage:=frmafiliacion_usuarios.TabSheet5;
                        frmafiliacion_usuarios.TabSheet1.Tabvisible:=false;
 //                       frmafiliacion_usuarios.TabSheet2.Tabvisible:=false;
                        frmafiliacion_usuarios.TabSheet3.Tabvisible:=false;
                        frmafiliacion_usuarios.TabSheet5.Tabvisible:=TRUE;
                        frmafiliacion_usuarios.Caption:='INGRESOS DE NUEVOS AFILIADOS BENEFICIARIOS';
                        frmafiliacion_usuarios.Label26.Caption:=frmafiliacion_usuarios.Caption;
                        frmafiliacion_usuarios.btnnuevo.Visible := false;
                        frmafiliacion_usuarios.btnnuevo.Click;
                        frmafiliacion_usuarios.show
        //        except
                        //frmafiliacion_usuarios.free;
                finally
                        frmafiliacion_usuarios.qryrelacion_afiliados.Active:=false;
                        frmafiliacion_usuarios.qryrelacion_afiliados.ExecSQL;
                        frmafiliacion_usuarios.qryrelacion_afiliados.Active:=true;
                        frmafiliacion_usuarios.qryrelacion_afiliados.Insert;
                        frmafiliacion_usuarios.DBLookupComboBox4.SetFocus();
                end;
        end
        else
        begin
                showmessage('No es posible abrir ingresos debido a que no existe el afiliado cotizante')
        end;
end;

procedure Tfrmgrupofamiliar.btnegresosClick(Sender: TObject);
var
fecha_evento:Tdatetime;
begin
        if MessageDlg('Realmente desea excluir este(os) afiliado(s)?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          try
             fecha_evento:=strtodate(mefecha_evento.Text);
          except
                showmessage('La fecha de evento no fue digitada o es  erronea');
                if MessageDlg('Desea Remplazar la fecha de evento por la del fecha del sistema',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                begin
                fecha_evento := gb_fec_hoy;
                end
                else
                exit;
          end;

                  Qrymaxfecha.close;
                  Qrymaxfecha.Params[0].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                  Qrymaxfecha.Params[1].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                  Qrymaxfecha.OPEN;
                      if fecha_evento < QrymaxfechaFEC_NOVEDAD.Value then
                      begin
                      showmessage('La fecha de evento es menor que la fecha del ultimo ingreso');
                      mefecha_evento.SetFocus();
                      exit;
                      end;
                  if fecha_evento > frmafiliaciones.fecha_hoy() then
                  begin
                       showmessage('La fecha de evento es mayor a la fecha de hoy');
                       mefecha_evento.SetFocus();
                       exit;
                  end;
                  qrypermanecias.Close;
                  qrypermanencia_eps.ExecSql;
                  qrypermanencia_eps.open;
           // Retiro del grupo Familiar del cotizante
                        if (cbgrupofamiliar.Checked = true) or (qryrelacion_afiliadoscod_tipo_afil.text = 'C')  then
                        begin
                             qryrelacion_afiliados.first;
                             while not qryrelacion_afiliados.eof do
                                begin
                                    //execute updatenovedades
                                    qrypermanencia_eps.close;
                                    qrypermanencia_eps.Params[0].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                    qrypermanencia_eps.Params[1].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                    qrypermanencia_eps.ExecSql;
                                    if qrypermanencia_epspermanencia_EPS.value < qrypermaneciasper_permanencia.value then
                                        begin
                                         showmessage('El tiempo de permanencia en la eps es menor de '+qrypermaneciasper_permanencia.text+' '+qryrelacion_afiliadostip_documento_ben.Text+' '+qryrelacion_afiliadosnum_documento_ben.Text+', no es posible realizar el egreso ');
                                         exit;
                                        end;
                                    qryrelacion_afiliados.next;
                                end;
                              qryrelacion_afiliados.first;
                        end
                  else
                        begin
                                //execute updatenovedades
                                qrypermanencia_eps.close;
                                qrypermanencia_eps.Params[0].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                qrypermanencia_eps.Params[1].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                qrypermanencia_eps.ExecSql;
                                if qrypermanencia_epspermanencia_EPS.value < qrypermaneciasper_permanencia.value then
                                  begin
                                       showmessage('El tiempo de permanencia en la eps es menor de '+qrypermaneciasper_permanencia.text+' '+qryrelacion_afiliadostip_documento_ben.Text+' '+qryrelacion_afiliadosnum_documento_ben.Text+', no es posible realizar el egreso ');
                                       exit;
                                  end;

                  end;
//                  exit;
                  dmafiliaciones.softeps.StartTransaction;
//                  try
                  if cbgrupofamiliar.Checked = true then
                      begin
                           qryrelacion_afiliados.first;
// definir  el retiro del afiliado otizante

                          if qryrelacion_afiliadoscod_tipo_afil.text = 'C' then
                          begin
                          frmafiliados_empresas:=Tfrmafiliados_empresas.create(Application);
                                try
                                  ii_tip_doc_emp:='';
                                  ii_num_doc_emp:='';
                                  ii_cod_empresa:='';

                                  frmafiliados_empresas.qryafiliados_empresas.close;
                                  frmafiliados_empresas.qryafiliados_empresas.Params[0].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                  frmafiliados_empresas.qryafiliados_empresas.Params[1].AsString := qryrelacion_afiliadosnum_documento_ben.text;
                                  frmafiliados_empresas.qryafiliados_empresas.ExecSql;
                                  frmafiliados_empresas.qryafiliados_empresas.open;
                                  frmafiliados_empresas.showmodal;
                                  if (frmafiliados_empresas.qryafiliados_empresas.RecordCount <= 1) and
                                     (ii_tip_doc_emp <>'') and (ii_num_doc_emp<>'') and (ii_cod_empresa<>'') and (ii_fecha_ingreso <> null) then
                                   begin
                                   frmafiliados_empresas.close;
                                         while not qryrelacion_afiliados.eof do
                                         begin
                                                        //execute updateafiliados
                                            qryupdateafiliados.close;
                                            qryupdateafiliados.Params[0].AsString := 'I';
                                            qryupdateafiliados.Params[1].AsDatetime := frmafiliaciones.fecha_actual();
                                            qryupdateafiliados.Params[2].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                            qryupdateafiliados.Params[3].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                            qryupdateafiliados.ExecSql;

                                            //execute updatenovedades
                                            qryupdaterelacion_afiliados.close;
                                            qryupdaterelacion_afiliados.Params[0].AsString := 'I';
                                            qryupdaterelacion_afiliados.Params[1].AsDatetime := frmafiliaciones.fecha_hoy();
                                            qryupdaterelacion_afiliados.Params[2].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                            qryupdaterelacion_afiliados.Params[3].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                            qryupdaterelacion_afiliados.ExecSql;

                                            //execute qrynovedades_afiliados
                                            qrynovedades_afiliados.Close;
                                            qrynovedades_afiliados.Params[0].AsString := dbgnovedades.KeyValue;
                                            qrynovedades_afiliados.Params[1].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                            qrynovedades_afiliados.Params[2].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                            qrynovedades_afiliados.Params[3].AsString := gb_oficina;
                                            qrynovedades_afiliados.Params[4].AsString := gb_regional;
                                            qrynovedades_afiliados.Params[5].AsString := gb_tip_doc_usu;
                                            qrynovedades_afiliados.Params[6].AsString := gb_num_doc_usu;
                                            qrynovedades_afiliados.Params[7].AsDatetime := frmafiliaciones.fecha_actual();
                                            qrynovedades_afiliados.Params[8].AsDatetime := fecha_evento;
                                            qrynovedades_afiliados.Params[9].AsDatetime := frmafiliaciones.fecha_actual();
//                                                                        qrynovedades_afiliados.Params[10].AsString := null;
//                                                                        qrynovedades_afiliados.Params[11].AsString := null;
//                                                                        qrynovedades_afiliados.Params[12].AsString := null;

                                            if ednumero_planilla.text <> '' then
                                            qrynovedades_afiliados.Params[13].AsString := ednumero_planilla.text;

                                            qrynovedades_afiliados.ExecSql;
                                            if qryrelacion_afiliadoscod_tipo_afil.text = 'C' then
                                                    begin
                                                            //execute qryafiliados_empresas
                                                            qryafiliados_empresas.close;
                                                            qryafiliados_empresas.Params[0].AsString := 'I';
                                                            qryafiliados_empresas.Params[1].AsDatetime := frmafiliaciones.fecha_hoy();
                                                            qryafiliados_empresas.Params[2].AsString := ii_tip_doc_emp;
                                                            qryafiliados_empresas.Params[3].AsString := ii_num_doc_emp;
                                                            qryafiliados_empresas.Params[4].AsString := ii_cod_empresa;
                                                            qryafiliados_empresas.Params[7].AsDatetime := ii_fecha_ingreso;
                                                            qryafiliados_empresas.ExecSql;
                                                            //execute qrynovedades_afiliados
                                                            qrynovedades_afiliados.Close;
                                                            qrynovedades_afiliados.Params[0].AsString := '11';
                                                            qrynovedades_afiliados.Params[1].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                                            qrynovedades_afiliados.Params[2].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                                            qrynovedades_afiliados.Params[3].AsString := gb_oficina;
                                                            qrynovedades_afiliados.Params[4].AsString := gb_regional;
                                                            qrynovedades_afiliados.Params[5].AsString := gb_tip_doc_usu;
                                                            qrynovedades_afiliados.Params[6].AsString := gb_num_doc_usu;
                                                            qrynovedades_afiliados.Params[7].AsDatetime := frmafiliaciones.fecha_hoy();
                                                            qrynovedades_afiliados.Params[8].AsDatetime := fecha_evento;
                                                            qrynovedades_afiliados.Params[9].AsDatetime := frmafiliaciones.fecha_hoy();
                                                            qrynovedades_afiliados.Params[10].AsString := ii_tip_doc_emp;
                                                            qrynovedades_afiliados.Params[11].AsString := ii_num_doc_emp;
                                                            qrynovedades_afiliados.Params[12].AsString := ii_cod_empresa;
                                                            if ednumero_planilla.text <> '' then
                                                                    qrynovedades_afiliados.Params[13].AsString := ednumero_planilla.text;
                                                            qrynovedades_afiliados.ExecSql;
                                                    end;
                                            qryrelacion_afiliados.next;
                                         end;


                                                    dmafiliaciones.softeps.Commit; {on success, commit the changes};
                                                    showMessage('Proceso Finalizado con Exito,Grupo Familiar Egresado');
                                            end
                                                          else
                                                        begin
                                                             if (ii_tip_doc_emp <>'') and (ii_num_doc_emp<>'') and (ii_cod_empresa<>'') and (ii_fecha_ingreso<>null) then
                                                                begin
                                                                        qryafiliados_empresas.close;
                                                                        qryafiliados_empresas.Params[0].AsString := 'I';
                                                                        qryafiliados_empresas.Params[1].AsDatetime := frmafiliaciones.fecha_hoy();
                                                                        qryafiliados_empresas.Params[2].AsString := ii_tip_doc_emp;
                                                                        qryafiliados_empresas.Params[3].AsString := ii_num_doc_emp;
                                                                        qryafiliados_empresas.Params[4].AsString := ii_cod_empresa;
                                                                        qryafiliados_empresas.Params[7].AsDatetime := ii_fecha_ingreso;
                                                                        qryafiliados_empresas.ExecSql;

                                                                        //execute qrynovedades_afiliados
                                                                        qrynovedades_afiliados.Close;
                                                                        qrynovedades_afiliados.Params[0].AsString := '11';
                                                                        qrynovedades_afiliados.Params[1].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                                                        qrynovedades_afiliados.Params[2].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                                                        qrynovedades_afiliados.Params[3].AsString := gb_oficina;
                                                                        qrynovedades_afiliados.Params[4].AsString := gb_regional;
                                                                        qrynovedades_afiliados.Params[5].AsString := gb_tip_doc_usu;
                                                                        qrynovedades_afiliados.Params[6].AsString := gb_num_doc_usu;
                                                                        qrynovedades_afiliados.Params[7].AsDatetime := frmafiliaciones.fecha_actual();
                                                                        qrynovedades_afiliados.Params[8].AsDatetime := fecha_evento;
                                                                        qrynovedades_afiliados.Params[9].AsDatetime := frmafiliaciones.fecha_actual();
                                                                        qrynovedades_afiliados.Params[10].AsString := ii_tip_doc_emp;
                                                                        qrynovedades_afiliados.Params[11].AsString := ii_num_doc_emp;
                                                                        qrynovedades_afiliados.Params[12].AsString := ii_cod_empresa;
                                                                        if ednumero_planilla.text <> '' then
                                                                                qrynovedades_afiliados.Params[13].AsString := ednumero_planilla.text;
                                                                        qrynovedades_afiliados.ExecSql;

                                                                        dmafiliaciones.softeps.Commit; {on success, commit the changes};
                                                                        showMessage('Proceso Finalizado con Exito,Cotizante egresado de la Empresa Seleccionada y Grupo Familiar Activo');
                                                                end
                                                             else
                                                                begin
                                                                     dmafiliaciones.softeps.Rollback; {on failure, undo the changes};
                                                                     showMessage('Error en el la Seleccion de la Empresa');
                                                                end;
                                                        end;
                                      except
//                                              frmafiliados_empresas.free;
                                                dmafiliaciones.softeps.Rollback; {on failure, undo the changes};
                                                raise;
                                                showMessage('Error en el egreso del Grupo Familiar');
                                      end;
                                end
                          else
                               (* begin
                                        try
                                      frmafiliados_empresas.free;
                                      qryupdateafiliados.close;
                                      qryupdateafiliados.Params[0].AsString := 'I';
                                      qryupdateafiliados.Params[1].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                      qryupdateafiliados.Params[2].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                      qryupdateafiliados.ExecSql;

                                      //execute updatenovedades
                                      qryupdaterelacion_afiliados.close;
                                      qryupdaterelacion_afiliados.Params[0].AsString := 'I';
                                      qryupdaterelacion_afiliados.Params[1].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                      qryupdaterelacion_afiliados.Params[2].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                      qryupdaterelacion_afiliados.ExecSql;

                                      //execute qrynovedades_afiliados
                                      qrynovedades_afiliados.Close;
                                      qrynovedades_afiliados.Params[0].AsString := qrynovedadesnov_codigo.text;
                                      qrynovedades_afiliados.Params[1].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                      qrynovedades_afiliados.Params[2].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                      qrynovedades_afiliados.Params[3].AsString := gb_oficina;
                                      qrynovedades_afiliados.Params[4].AsString := gb_regional;
                                      qrynovedades_afiliados.Params[5].AsString := gb_tip_doc_usu;
                                      qrynovedades_afiliados.Params[6].AsString := gb_num_doc_usu;
                                      qrynovedades_afiliados.Params[7].AsDatetime := frmafiliaciones.fecha_actual();
                                      qrynovedades_afiliados.Params[8].AsDatetime := frmafiliaciones.fecha_actual();
                                      qrynovedades_afiliados.Params[9].AsDatetime := frmafiliaciones.fecha_actual();
                                      qrynovedades_afiliados.ExecSql;
                                      dmafiliaciones.datamec.Commit; {on success, commit the changes};
                                      showMessage('Proceso Finalizado con Exito,Beneficiario Egresado');
                                      frmgrupofamiliar.Free;
                                      except
                                                dmafiliaciones.datamec.Rollback; {on failure, undo the changes};
                                                raise;
                                                showMessage('Error en el egreso del Beneficiario');
                                      end;
                                end;*)

                      end
                  else
                      begin
                          if qryrelacion_afiliadoscod_tipo_afil.text = 'C' then
                                begin
                                     frmafiliados_empresas:=Tfrmafiliados_empresas.create(Application);
                                      try
                                              ii_tip_doc_emp:='';
                                              ii_num_doc_emp:='';
                                              ii_cod_empresa:='';

                                              frmafiliados_empresas.qryafiliados_empresas.close;
                                              frmafiliados_empresas.qryafiliados_empresas.Params[0].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                              frmafiliados_empresas.qryafiliados_empresas.Params[1].AsString := qryrelacion_afiliadosnum_documento_ben.text;
                                              frmafiliados_empresas.qryafiliados_empresas.ExecSql;
                                              frmafiliados_empresas.qryafiliados_empresas.open;
                                              frmafiliados_empresas.showmodal;
                                              if (frmafiliados_empresas.qryafiliados_empresas.RecordCount <= 1) and
                                                 (ii_tip_doc_emp <>'') and (ii_num_doc_emp<>'') and (ii_cod_empresa<>'') and (ii_fecha_ingreso<>null) then
                                                begin
                                                        frmafiliados_empresas.close;
                                                        qryrelacion_afiliados.first;
                                                        while not qryrelacion_afiliados.eof do
                                                                begin
                                                                      //execute updateafiliados
                                                                        qryupdateafiliados.close;
                                                                        qryupdateafiliados.Params[0].AsString := 'I';
                                                                        qryupdateafiliados.Params[1].AsDatetime := frmafiliaciones.fecha_hoy();
                                                                        qryupdateafiliados.Params[2].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                                                        qryupdateafiliados.Params[3].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                                                        qryupdateafiliados.ExecSql;

                                                                        //execute updatenovedades
                                                                        qryupdaterelacion_afiliados.close;
                                                                        qryupdaterelacion_afiliados.Params[0].AsString := 'I';
                                                                        qryupdaterelacion_afiliados.Params[1].AsDatetime := frmafiliaciones.fecha_hoy();
                                                                        qryupdaterelacion_afiliados.Params[2].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                                                        qryupdaterelacion_afiliados.Params[3].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                                                        qryupdaterelacion_afiliados.ExecSql;

                                                                        //execute qrynovedades_afiliados
                                                                        qrynovedades_afiliados.Close;
                                                                        qrynovedades_afiliados.Params[0].AsString := qrynovedadesnov_codigo.text;
                                                                        qrynovedades_afiliados.Params[1].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                                                        qrynovedades_afiliados.Params[2].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                                                        qrynovedades_afiliados.Params[3].AsString := gb_oficina;
                                                                        qrynovedades_afiliados.Params[4].AsString := gb_regional;
                                                                        qrynovedades_afiliados.Params[5].AsString := gb_tip_doc_usu;
                                                                        qrynovedades_afiliados.Params[6].AsString := gb_num_doc_usu;
                                                                        qrynovedades_afiliados.Params[7].AsDatetime := frmafiliaciones.fecha_actual();
                                                                        qrynovedades_afiliados.Params[8].AsDatetime := fecha_evento;
                                                                        qrynovedades_afiliados.Params[9].AsDatetime := frmafiliaciones.fecha_actual();
//                                                                        qrynovedades_afiliados.Params[10].AsString := null;
//                                                                        qrynovedades_afiliados.Params[11].AsString := null;
//                                                                        qrynovedades_afiliados.Params[12].AsString := null;
                                                                        if ednumero_planilla.text <> '' then
                                                                                qrynovedades_afiliados.Params[13].AsString := ednumero_planilla.text;
                                                                        qrynovedades_afiliados.ExecSql;
                                                                        if qryrelacion_afiliadoscod_tipo_afil.text = 'C' then
                                                                                begin
                                                                                        //execute qryafiliados_empresas
                                                                                        qryafiliados_empresas.close;
                                                                                        qryafiliados_empresas.Params[0].AsString := 'I';
                                                                                        qryafiliados_empresas.Params[1].AsDatetime := frmafiliaciones.fecha_hoy();
                                                                                        qryafiliados_empresas.Params[2].AsString := ii_tip_doc_emp;
                                                                                        qryafiliados_empresas.Params[3].AsString := ii_num_doc_emp;
                                                                                        qryafiliados_empresas.Params[4].AsString := ii_cod_empresa;
                                                                                        qryafiliados_empresas.Params[7].AsDatetime := ii_fecha_ingreso;
                                                                                        qryafiliados_empresas.ExecSql;

                                                                                        //execute qrynovedades_afiliados
                                                                                        qrynovedades_afiliados.Close;
                                                                                        qrynovedades_afiliados.Params[0].AsString := '11';
                                                                                        qrynovedades_afiliados.Params[1].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                                                                        qrynovedades_afiliados.Params[2].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                                                                        qrynovedades_afiliados.Params[3].AsString := gb_oficina;
                                                                                        qrynovedades_afiliados.Params[4].AsString := gb_regional;
                                                                                        qrynovedades_afiliados.Params[5].AsString := gb_tip_doc_usu;
                                                                                        qrynovedades_afiliados.Params[6].AsString := gb_num_doc_usu;
                                                                                        qrynovedades_afiliados.Params[7].AsDatetime := frmafiliaciones.fecha_actual();
                                                                                        qrynovedades_afiliados.Params[8].AsDatetime := fecha_evento;
                                                                                        qrynovedades_afiliados.Params[9].AsDatetime := frmafiliaciones.fecha_actual();
                                                                                        qrynovedades_afiliados.Params[10].AsString := ii_tip_doc_emp;
                                                                                        qrynovedades_afiliados.Params[11].AsString := ii_num_doc_emp;
                                                                                        qrynovedades_afiliados.Params[12].AsString := ii_cod_empresa;
                                                                                        if ednumero_planilla.text <> '' then
                                                                                                qrynovedades_afiliados.Params[13].AsString := ednumero_planilla.text;
                                                                                        qrynovedades_afiliados.ExecSql;
                                                                                end;
                                                                        qryrelacion_afiliados.next;
                                                                     end;


                                                        dmafiliaciones.softeps.Commit; {on success, commit the changes};
                                                        showMessage('Proceso Finalizado con Exito,Cotizante Egresado');

                                                end
                                                else
                                                        begin
                                                             if (ii_tip_doc_emp <>'') and (ii_num_doc_emp<>'') and (ii_cod_empresa<>'') and (ii_fecha_ingreso<>null) then
                                                                begin
                                                                        qryafiliados_empresas.close;
                                                                        qryafiliados_empresas.Params[0].AsString := 'I';
                                                                        qryafiliados_empresas.Params[1].AsDatetime := frmafiliaciones.fecha_hoy();
                                                                        qryafiliados_empresas.Params[2].AsString := ii_tip_doc_emp;
                                                                        qryafiliados_empresas.Params[3].AsString := ii_num_doc_emp;
                                                                        qryafiliados_empresas.Params[4].AsString := ii_cod_empresa;
                                                                        qryafiliados_empresas.Params[7].AsDatetime := ii_fecha_ingreso;
                                                                        qryafiliados_empresas.ExecSql;

                                                                        qrynovedades_afiliados.Params[0].AsString := '11';
                                                                        qrynovedades_afiliados.Params[1].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                                                        qrynovedades_afiliados.Params[2].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                                                        qrynovedades_afiliados.Params[3].AsString := gb_oficina;
                                                                        qrynovedades_afiliados.Params[4].AsString := gb_regional;
                                                                        qrynovedades_afiliados.Params[5].AsString := gb_tip_doc_usu;
                                                                        qrynovedades_afiliados.Params[6].AsString := gb_num_doc_usu;
                                                                        qrynovedades_afiliados.Params[7].AsDatetime := frmafiliaciones.fecha_actual();
                                                                        qrynovedades_afiliados.Params[8].AsDatetime := fecha_evento;
                                                                        qrynovedades_afiliados.Params[9].AsDatetime := frmafiliaciones.fecha_actual();
                                                                        qrynovedades_afiliados.Params[10].AsString := ii_tip_doc_emp;
                                                                        qrynovedades_afiliados.Params[11].AsString := ii_num_doc_emp;
                                                                        qrynovedades_afiliados.Params[12].AsString := ii_cod_empresa;
                                                                        if ednumero_planilla.text <> '' then
                                                                                qrynovedades_afiliados.Params[13].AsString := ednumero_planilla.text;
                                                                        qrynovedades_afiliados.ExecSql;

                                                                        dmafiliaciones.softeps.Commit; {on success, commit the changes};
                                                                        showMessage('Proceso Finalizado con Exito,Cotizante Egresado de la Empresa Seleccionada');
                                                                        frmgrupofamiliar.close;

                                                                end
                                                             else
                                                                begin
                                                                     dmafiliaciones.softeps.Rollback; {on failure, undo the changes};
                                                                     showMessage('Error en la seleccion de la Empresa');
                                                                end;
                                                        end;
                                      except
//                                              frmafiliados_empresas.free;
                                                dmafiliaciones.softeps.Rollback; {on failure, undo the changes};
                                                raise;
                                                showMessage('Error en el egreso del Cotizante');
                                      end;
                                end
                          else
                                begin
                                        try
                                      qryupdateafiliados.close;
                                      qryupdateafiliados.Params[0].AsString := 'I';
                                      qryupdateafiliados.Params[1].AsDatetime := frmafiliaciones.fecha_hoy();
                                      qryupdateafiliados.Params[2].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                      qryupdateafiliados.Params[3].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                      qryupdateafiliados.ExecSql;

                                      //execute updatenovedades
                                      qryupdaterelacion_afiliados.close;
                                      qryupdaterelacion_afiliados.Params[0].AsString := 'I';
                                      qryupdaterelacion_afiliados.Params[1].AsDatetime := frmafiliaciones.fecha_hoy();
                                      qryupdaterelacion_afiliados.Params[2].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                      qryupdaterelacion_afiliados.Params[3].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                      qryupdaterelacion_afiliados.ExecSql;

                                      //execute qrynovedades_afiliados
                                      qrynovedades_afiliados.Close;
                                      qrynovedades_afiliados.Params[0].AsString := qrynovedadesnov_codigo.text;
                                      qrynovedades_afiliados.Params[1].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                      qrynovedades_afiliados.Params[2].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                      qrynovedades_afiliados.Params[3].AsString := gb_oficina;
                                      qrynovedades_afiliados.Params[4].AsString := gb_regional;
                                      qrynovedades_afiliados.Params[5].AsString := gb_tip_doc_usu;
                                      qrynovedades_afiliados.Params[6].AsString := gb_num_doc_usu;
                                      qrynovedades_afiliados.Params[7].AsDatetime := frmafiliaciones.fecha_hoy();
                                      qrynovedades_afiliados.Params[8].AsDatetime := fecha_evento;
                                      qrynovedades_afiliados.Params[9].AsDatetime := frmafiliaciones.fecha_hoy();
//                                      qrynovedades_afiliados.Params[10].AsString := null;
//                                      qrynovedades_afiliados.Params[11].AsString := null;
//                                      grynovedades_afiliados.Params[12].AsString := null;
                                      if ednumero_planilla.text <> '' then
                                                qrynovedades_afiliados.Params[13].AsString := ednumero_planilla.text;
                                      qrynovedades_afiliados.ExecSql;
                                      dmafiliaciones.softeps.Commit; {on success, commit the changes};
                                      showMessage('Proceso Finalizado con Exito, Beneficiario Egresado');
//                                      frmgrupofamiliar.Free;
                                      except
                                                dmafiliaciones.softeps.Rollback; {on failure, undo the changes};
                                                raise;
                                                showMessage('Error en el Egreso del Beneficiario');
                                      end;
                                end;

                      end;

            end
            else
             showMessage('Proceso Cancelado por el Usuario');

end;

procedure Tfrmgrupofamiliar.BitBtn1Click(Sender: TObject);
begin
       if  (dbltipos.Text <>'') and (edit2.Text <>'') then
        begin
        ////
                if (btningresos.visible=false) and
                   (btnegresos.visible=false) and
                   ((btncertificados.visible=true) or (btncertificados.visible=false)) and
                   (btncarnetizar.visible=false) and
                   (btnsuspencion.visible=false) then
                begin
                     qryafiliados.close;
                     qryafiliados.sql.clear;
                     qryafiliados.sql.add('Select * ');
                      qryafiliados.sql.add('From afiliados ');
                      qryafiliados.sql.add('Where '+
                        'afiliados.tip_documento =:"tip_doc" and '+
                        'afiliados.num_documento =:"num_doc" ');
                end;
        ////
            qryafiliados.close;
            qryafiliados.Params[0].AsString := dbltipos.Text;
            qryafiliados.Params[1].AsString := edit2.Text;
            qryafiliados.ExecSql;
            qryafiliados.Open;
            if qryafiliados.eof then
              begin
                   showmessage('Este afiliado esta excluido o no existe en la BD, Por favor consulte el Comprobador de Derechos');
                   edit2.text:='';
                   qryafiliados.close;
                   dbltipos.Refresh;
                   dbltipos.SetFocus;
              end
            else
                if (btningresos.visible=false) and
                   (btnegresos.visible=false) and
                   ((btncertificados.visible=true) or (btncertificados.visible=false)) and
                   (btncarnetizar.visible=false) and
                   (btnsuspencion.visible=false) then
                begin
                     qrycotiza.Close;
                     qrycotiza.sql.clear;
                     qrycotiza.SQL.Add('SELECT distinct tip_documento_cot,'+
                     'num_documento_cot,'+
                     'tip_documento_ben,'+
                     'num_documento_ben '+
                     'FROM relacion_afiliados  '+
                     'WHERE  relacion_afiliados.tip_documento_ben = :"tip_documento"  and '+
                     'relacion_afiliados.num_documento_ben = :"num_documento" ');
                     qrycotiza.Open;
                     qryrelacion_afiliados.close;
                     qryrelacion_afiliados.sql.clear;
                     qryrelacion_afiliados.sql.add('Select distinct '+
                      'dbo.relacion_afiliados.tip_documento_ben,'+
                      'dbo.relacion_afiliados.num_documento_ben,'+
                      'dbo.relacion_afiliados.tip_documento_cot,'+
                      'dbo.relacion_afiliados.num_documento_cot,'+
                      'dbo.afiliados.pri_apellido,'+
                      'dbo.afiliados.seg_apellido,'+
                      'dbo.afiliados.pri_nombre,'+
                      'dbo.afiliados.seg_nombre,'+
                      'dbo.afiliados.cod_sexo,'+
                      'dbo.afiliados.fec_nacimiento,'+
                      'dbo.relacion_afiliados.cod_parentesco,'+
                      'dbo.afiliados.cod_tipo_afil,'+
                      'dbo.afiliados.cod_estado,'+
                      'dbo.afiliados.fec_afiliacion_uni,'+
                      'dbo.afiliados.cod_departamento_res,'+
                      'dbo.afiliados.cod_ciudad_res,'+
                      'SYSDATE,'+
                      'dbo.afiliados.cod_discapacidad,'+
                      'dbo.afiliados.cod_estado,'+
                      'PRESTADORES.MON_PRESTADOR ');
                      qryrelacion_afiliados.sql.add('From dbo.relacion_afiliados,dbo.afiliados,PRESTADORES');
                      qryrelacion_afiliados.sql.add('Where '+
                        'afiliados.tip_documento=relacion_afiliados.tip_documento_ben AND '+
                        'afiliados.num_documento=relacion_afiliados.num_documento_ben and '+
                        'relacion_afiliados.tip_documento_cot=:"tip_documento_cot" and '+
                        'relacion_afiliados.num_documento_cot=:"num_documento_cot" and '+
                        'afiliados.tip_documento_ips = PRESTADORES.TIP_IDENTIFICACION (+) and '+
                        'afiliados.num_documento_ips  = PRESTADORES.NUM_IDENTIFICACION (+)');
                      qryrelacion_afiliados.sql.add('Order By dbo.afiliados.cod_tipo_afil desc');
                      qryrelacion_afiliados.open;
                      qrynovedadesingresoegresos.open;
                      qrycartera.open;
                end
                else
                begin
                     if frmgrupofamiliar.Caption = 'CARNETIZACION DE AFILIADO' then
                     begin
                          qrycotiza.Open;
                     qryrelacion_afiliados.close;
                     qryrelacion_afiliados.sql.clear;
                     qryrelacion_afiliados.sql.add('Select distinct '+
                      'dbo.relacion_afiliados.tip_documento_ben,'+
                      'dbo.relacion_afiliados.num_documento_ben,'+
                      'dbo.relacion_afiliados.tip_documento_cot,'+
                      'dbo.relacion_afiliados.num_documento_cot,'+
                      'dbo.afiliados.pri_apellido,'+
                      'dbo.afiliados.seg_apellido,'+
                      'dbo.afiliados.pri_nombre,'+
                      'dbo.afiliados.seg_nombre,'+
                      'dbo.afiliados.cod_sexo,'+
                      'dbo.afiliados.fec_nacimiento,'+
                      'dbo.relacion_afiliados.cod_parentesco,'+
                      'dbo.afiliados.cod_tipo_afil,'+
                      'dbo.afiliados.cod_estado,'+
                      'dbo.afiliados.fec_afiliacion_uni,'+
                      'dbo.afiliados.cod_departamento_res,'+
                      'dbo.afiliados.cod_ciudad_res,'+
                      'SYSDATE,'+
                      'dbo.afiliados.cod_discapacidad,'+
                      'dbo.afiliados.cod_estado,'+
                      'PRESTADORES.MON_PRESTADOR ');
                      qryrelacion_afiliados.sql.add('From dbo.relacion_afiliados,dbo.afiliados,PRESTADORES');
                      qryrelacion_afiliados.sql.add('Where '+
                        'afiliados.tip_documento=relacion_afiliados.tip_documento_ben AND '+
                        'afiliados.num_documento=relacion_afiliados.num_documento_ben and '+
                        'relacion_afiliados.tip_documento_ben=:"tip_documento_ben" and '+
                        'relacion_afiliados.num_documento_ben=:"num_documento_ben" and '+
                        'relacion_afiliados.cod_estado = '+ chr(39) +'A'+ chr(39)+' and '+
                        'afiliados.tip_documento_ips = PRESTADORES.TIP_IDENTIFICACION (+) and '+
                        'afiliados.num_documento_ips  = PRESTADORES.NUM_IDENTIFICACION (+)');
                      qryrelacion_afiliados.sql.add('Order By dbo.afiliados.cod_tipo_afil desc');
                      qryrelacion_afiliados.open;
                      qrynovedadesingresoegresos.open;
                      qrycartera.open;
                     end
                     else
                     begin
                           qrycotiza.Open;
                           qryrelacion_afiliados.open;
                           mefecha_evento.Text := datetostr(gb_fec_hoy);
                           btnegresos.Enabled := false;
                           if btnegresos.Visible = true then
                           begin
                              dbgnovedades.SetFocus;
                           end;
                     end;
                end;
              qrycotiza.Open;
              qryrelacion_afiliados.open;
        end;

end;

procedure Tfrmgrupofamiliar.btnsuspencionClick(Sender: TObject);
var
fecha_evento:Tdatetime;
begin
        if MessageDlg('Realmente desea suspender este(os) afiliado(s)?',
           mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
                  try
                     fecha_evento:=strtodate(mefecha_evento.Text);
                  except
                     showmessage('La fecha de evento es erronea');
                     if MessageDlg('Desea Remplazar la fecha de evento por la del fecha del sistema',
                        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                        fecha_evento:=frmafiliaciones.fecha_hoy()
                     else
                        exit;

                  end;
                  qryrelacion_afiliados.First;
                  dmafiliaciones.softeps.StartTransaction;
                  if (qryrelacion_afiliadoscod_tipo_afil.text = 'C') { and (qryrelacion_afiliados.RecordCount = 1)} then
                                begin
                                      try

                                         while not qryrelacion_afiliados.eof do
                                                begin
                                                      //execute updateafiliados
                                                      qryupdateafiliados.close;
                                                      qryupdateafiliados.Params[0].AsString := 'S';
                                                      qryupdateafiliados.Params[1].AsDatetime := frmafiliaciones.fecha_hoy();
                                                      qryupdateafiliados.Params[2].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                                      qryupdateafiliados.Params[3].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                                      qryupdateafiliados.ExecSql;

                                                      //execute updatenovedades
                                                      qryupdaterelacion_afiliados.close;
                                                      qryupdaterelacion_afiliados.Params[0].AsString := 'S';
                                                      qryupdaterelacion_afiliados.Params[1].AsDatetime := frmafiliaciones.fecha_hoy();
                                                      qryupdaterelacion_afiliados.Params[2].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                                      qryupdaterelacion_afiliados.Params[3].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                                      qryupdaterelacion_afiliados.ExecSql;

                                                      //execute qrynovedades_afiliados
                                                      qrynovedades_afiliados.Close;
                                                      qrynovedades_afiliados.Params[0].AsString := '66';
                                                      qrynovedades_afiliados.Params[1].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                                      qrynovedades_afiliados.Params[2].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                                      qrynovedades_afiliados.Params[3].AsString := gb_oficina;
                                                      qrynovedades_afiliados.Params[4].AsString := gb_regional;
                                                      qrynovedades_afiliados.Params[5].AsString := gb_tip_doc_usu;
                                                      qrynovedades_afiliados.Params[6].AsString := gb_num_doc_usu;
                                                      qrynovedades_afiliados.Params[7].AsDatetime := frmafiliaciones.fecha_actual();
                                                      qrynovedades_afiliados.Params[8].AsDatetime := fecha_evento;
                                                      qrynovedades_afiliados.Params[9].AsDatetime := frmafiliaciones.fecha_actual();
//                                                                        qrynovedades_afiliados.Params[10].AsString := null;
//                                                                        qrynovedades_afiliados.Params[11].AsString := null;
//                                                                        qrynovedades_afiliados.Params[12].AsString := null;
                                                      if ednumero_planilla.text <> '' then
                                                                qrynovedades_afiliados.Params[13].AsString := ednumero_planilla.text;
                                                      qrynovedades_afiliados.ExecSql;
                                                      qryrelacion_afiliados.next;
                                                end;
                                                dmafiliaciones.softeps.Commit; {on success, commit the changes};
                                                showMessage('Proceso Finalizado con Exito,Afiliado Suspendido por Interrupcion de la Afiliacion por Salida del Pais');
                                      except
                                                dmafiliaciones.softeps.Rollback; {on failure, undo the changes};
                                                raise;
                                                showMessage('Error en el la suspeción del Afiliado');
                                      end;
                                end
                                else
                                    showMessage('No es posible Suspender el Afiliado debido a que no tiene cotizante');
            end;
end;

procedure Tfrmgrupofamiliar.FormCreate(Sender: TObject);
begin
        Application.OnMessage := AppMessage;
        dmafiliaciones.tbltipos_documentos.Open;
        dmafiliaciones.tblsexo.Open;
        dmafiliaciones.tblestratos.Open;
        dmafiliaciones.tbldiscapacidades.Open;
        dmafiliaciones.tblestadosciviles.Open;
        dmafiliaciones.tblmodalidadtrabajo.Open;

end;

procedure Tfrmgrupofamiliar.btncertificadosClick(Sender: TObject);
begin
(*                      StoredProc1.close;
                      StoredProc1.Parambyname('@tip_documento').value:=qryafiliadostip_documento.text;
                      StoredProc1.Parambyname('@num_documento').value:=qryafiliadosnum_documento.text;
                      StoredProc1.ExecProc;
                      StoredProc1.UnPrepare;
                      qrytemporal.Open;*)
//                      qrynovedadesingresoegresos.open;
//                      qrycartera.Open;
                      frmreporte:=Tfrmreporte.create(Application);
                      try
                              frmreporte.QuickRep1.Preview;
                              frmreporte.close;
                              frmgrupofamiliar.close;
                      except
                              frmreporte.close;
                      end;
end;

procedure Tfrmgrupofamiliar.qrytemporalCalcFields(DataSet: TDataSet);
begin
     qrytemporalnom_afiliado.text:=qrytemporalpri_apellido.text+' '+qrytemporalseg_apellido.text+' '+qrytemporalpri_nombre.text+' '+qrytemporalseg_nombre.text;
end;



procedure Tfrmgrupofamiliar.qryafiliadosCalcFields(DataSet: TDataSet);
begin
//        qryafiliadosnom_afiliado.text := qryafiliadospri_apellido.text+' '+qryafiliadosseg_apellido.text+' '+qryafiliadospri_nombre.text+' '+qryafiliadosseg_nombre.text;
end;

procedure Tfrmgrupofamiliar.Query1CalcFields(DataSet: TDataSet);
begin
       qrytemporalnom_afiliado.text:=qrytemporalpri_apellido.text+' '+qrytemporalseg_apellido.text+' '+qrytemporalpri_nombre.text+' '+qrytemporalseg_nombre.text;
end;

procedure Tfrmgrupofamiliar.qryrelacion_afiliadosCalcFields(
  DataSet: TDataSet);
var
fecha:tdatetime;
salario : real;
begin
     if length(qryrelacion_afiliadospri_apellido.text+' '+qryrelacion_afiliadosseg_apellido.text+' '+qryrelacion_afiliadospri_nombre.text+' '+qryrelacion_afiliadosseg_nombre.text) < 25 then
        qryrelacion_afiliadosnom_afiliado.text:=qryrelacion_afiliadospri_apellido.text+' '+qryrelacion_afiliadosseg_apellido.text+' '+qryrelacion_afiliadospri_nombre.text+' '+qryrelacion_afiliadosseg_nombre.text
      else
        if length(qryrelacion_afiliadospri_apellido.text+' '+qryrelacion_afiliadosseg_apellido.text+' '+qryrelacion_afiliadospri_nombre.text) < 25 then
           qryrelacion_afiliadosnom_afiliado.text:=qryrelacion_afiliadospri_apellido.text+' '+qryrelacion_afiliadosseg_apellido.text+' '+qryrelacion_afiliadospri_nombre.text
         else
           qryrelacion_afiliadosnom_afiliado.text:=qryrelacion_afiliadospri_apellido.text+' '+qryrelacion_afiliadospri_nombre.text;
     qryrelacion_afiliadosnom_deptociudad.text:=qryrelacion_afiliadosnom_ciudad.text+' / '+qryrelacion_afiliadosnom_depto.text;
     qryrelacion_afiliadosdoc_ben.text:=qryrelacion_afiliadostip_documento_ben.text+' '+qryrelacion_afiliadosnum_documento_ben.text;
     qryrelacion_afiliadosdoc_cot.text:=qryrelacion_afiliadostip_documento_cot.text+' '+qryrelacion_afiliadosnum_documento_cot.text;
     qryvalor_total_cot.close;
     qryvalor_total_cot.Params[0].text:=qryrelacion_afiliadostip_documento_ben.text;
     qryvalor_total_cot.Params[1].text:=qryrelacion_afiliadosnum_documento_ben.text;
     qryvalor_total_cot.open;
     fecha:=strtodatetime('01/01/'+ formatdatetime('yyyy',gb_fec_hoy));
     qrysalariominimo.Params[0].Value:=fecha;
     qrysalariominimo.Open;
     qryestratos_afiliados.close;
     salario := qryvalor_total_cotSUMVAL_SUELDO_AFIL.value/qrysalariominimosal_minimo.Value;
     ///qrysalariominimosal_minimo.Value;
     qryestratos_afiliados.Params[0].asfloat:=salario;
     qryestratos_afiliados.Params[1].asfloat:=salario;
     qryestratos_afiliados.open;
     qryestratos_afiliados.first;
     qryrelacion_afiliadoscod_estrato.text:=qryestratos_afiliadoscod_estrato_afiliado.text;
end;

procedure Tfrmgrupofamiliar.btncarnetizarClick(Sender: TObject);
begin
         frmcarnets_grupofamiliar:=Tfrmcarnets_grupofamiliar.create(Application);
          try
                  frmcarnets_grupofamiliar.QuickRep1.Preview;
                  frmcarnets_grupofamiliar.close;
          except
                  frmcarnets_grupofamiliar.close;
          end;
end;

procedure Tfrmgrupofamiliar.AppMessage(var Msg: TMsg;
  var Handled: Boolean);
begin
       if Msg.wParam = VK_RETURN then
       begin
        if ((Screen.ActiveControl) is TComboBox) then
             Msg.wParam := VK_TAB;
        if (((Screen.ActiveControl) is TEdit)) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TDBEdit) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TDateTimePicker) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TMaskEdit) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TDateTimePicker) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TDBLookupComboBox) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TGroupBox) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TTabSheet) then
             Msg.wParam := VK_TAB;
       end;  
end;

procedure Tfrmgrupofamiliar.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
        frmafiliaciones.numerosKeypress(edit2,Key);
end;

procedure Tfrmgrupofamiliar.dbltiposExit(Sender: TObject);
begin
if  dbltipos.Text = '' then
   begin
   ShowMessage('Selecion el tipo de  documento');
   dbltipos.SetFocus;
   end;

end;

procedure Tfrmgrupofamiliar.Edit2Exit(Sender: TObject);
begin
if  Edit2.Text = '' then
   begin
   ShowMessage('Digite el numero  de  documento del cotizante ');
   Edit2.SetFocus;
   end
   else
   BitBtn1.Click;
end;

procedure Tfrmgrupofamiliar.dbgnovedadesExit(Sender: TObject);
begin
 if dbgnovedades.KeyValue = '' then
 begin
 ShowMessage('Selecione  el motivo del Retiro del Afiliado');
 end
 else
 begin
 if btnegresos.Visible = true then
 begin
 btnegresos.Enabled := true;
 mefecha_evento.SetFocus;
 end;
 end;
end;

procedure Tfrmgrupofamiliar.mefecha_eventoExit(Sender: TObject);
begin
btnegresos.SetFocus;
end;

end.
