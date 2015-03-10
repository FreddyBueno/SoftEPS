unit Uafiliaciones_independientes;

interface

uses
  Windows, Messages,DateUtils, Variants,Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, Grids, DBGrids, Mask,Math, ComCtrls, DBTables, ExtCtrls,
  Buttons;

type
  Tfrmafiliacion_independientes = class(TForm)
    Panel1: TPanel;
    dsafiliados: TDataSource;
    qryrelacion_afiliados: TQuery;
    dsrelacion_afiliados: TDataSource;
    dsbeneficiarios: TDataSource;
    qrybeneficiarios: TQuery;
    dsafiliados_empresas: TDataSource;
    dstipos_documentos: TDataSource;
    dsocupaciones: TDataSource;
    Query1: TQuery;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    dssexo: TDataSource;
    dsestratos: TDataSource;
    dsdiscapacidades: TDataSource;
    dsestadosciviles: TDataSource;
    dsprofesiones: TDataSource;
    dsescolaridades: TDataSource;
    dsdepartamentos: TDataSource;
    dsciudades: TDataSource;
    dsbarrios: TDataSource;
    dszonas: TDataSource;
    dstiposafiliados: TDataSource;
    dsmodalidadtrabajo: TDataSource;
    btnmodo_insertar: TButton;
    qrynovedades_afiliados: TQuery;
    qryafiliados_empresas: TQuery;
    Label59: TLabel;
    qry: TQuery;
    qrytip_documento: TStringField;
    qrynum_documento: TStringField;
    qrypri_apellido: TStringField;
    qryseg_apellido: TStringField;
    qrypri_nombre: TStringField;
    qryseg_nombre: TStringField;
    qryeps: TQuery;
    qryips: TQuery;
    qrycod_prestador: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    qrymon_prestador: TStringField;
    qrynum_acreditacion: TStringField;
    qrydir_prestador: TStringField;
    qrytel_prestador: TStringField;
    qryniv_aten_prestador: TStringField;
    qrytip_prestador: TStringField;
    qrycla_prestador: TStringField;
    qrycod_reginal: TStringField;
    qrycod_oficina: TStringField;
    qryest_contrato: TStringField;
    qryinicio_contrato: TDateTimeField;
    qrytermi_contrato: TDateTimeField;
    Label26: TLabel;
    dsparententescos: TDataSource;
    dsrelacion_adicional: TDataSource;
    qrytiposalario: TQuery;
    dtstiposalarios: TDataSource;
    qryempresas: TQuery;
    qryempresasTIP_DOCUMENTO: TStringField;
    qryempresasNUM_DOCUMENTO: TStringField;
    qryempresasCOD_SUCURSAL: TStringField;
    qryempresasNOM_EMPRESA: TStringField;
    qryempresasCOD_ACTIVIDAD_ECO: TStringField;
    qryempresasCOD_DEPARTAMENTO: TStringField;
    qryempresasCOD_CIUDAD: TStringField;
    qryempresasTIP_APORTANTE: TStringField;
    qryempresasDIR_EMPRESA: TStringField;
    qryempresasTEL_EMPRESA: TStringField;
    qryempresasTEL_EMPRESA2: TStringField;
    qryvalrealcionafiliados: TQuery;
    qryvalrealcionafiliadosTIP_DOCUMENTO_COT: TStringField;
    qryvalrealcionafiliadosNUM_DOCUMENTO_COT: TStringField;
    qryvalrealcionafiliadosTIP_DOCUMENTO_BEN: TStringField;
    qryvalrealcionafiliadosNUM_DOCUMENTO_BEN: TStringField;
    qryvalrealcionafiliadosFEC_INCLUSION_NOV: TDateTimeField;
    qryvalrealcionafiliadosCOD_PARENTESCO: TStringField;
    qryvalrealcionafiliadosFEC_EXCLUSION_NOV: TDateTimeField;
    qryvalrealcionafiliadosCOD_ESTADO: TStringField;
    qryvalrealcionafiliadosCOD_RELACION_ADI: TStringField;
    qryrelacion_afiliadosTIP_DOCUMENTO_COT: TStringField;
    qryrelacion_afiliadosNUM_DOCUMENTO_COT: TStringField;
    qryrelacion_afiliadosTIP_DOCUMENTO_BEN: TStringField;
    qryrelacion_afiliadosNUM_DOCUMENTO_BEN: TStringField;
    qryrelacion_afiliadosFEC_INCLUSION_NOV: TDateTimeField;
    qryrelacion_afiliadosCOD_PARENTESCO: TStringField;
    qryrelacion_afiliadosFEC_EXCLUSION_NOV: TDateTimeField;
    qryrelacion_afiliadosCOD_ESTADO: TStringField;
    qryrelacion_afiliadosCOD_RELACION_ADI: TStringField;
    PageControl1: TPageControl;
    PageControl3: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox4: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label33: TLabel;
    Label24: TLabel;
    DBEdit23: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    dblsexo: TDBLookupComboBox;
    DBEdit22: TDBEdit;
    DBEdit25: TDBEdit;
    TabSheet3: TTabSheet;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    Panel6: TPanel;
    GroupBox14: TGroupBox;
    Label51: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Button7: TButton;
    Edit5: TEdit;
    DBLookupComboBox25: TDBLookupComboBox;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    GroupBox15: TGroupBox;
    DBNavigator2: TDBNavigator;
    btngempresa: TBitBtn;
    btnnempresa: TBitBtn;
    btncempresa: TBitBtn;
    DataSource1: TDataSource;
    DBEdit30: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    Label7: TLabel;
    dbldepartamentos: TDBLookupComboBox;
    Label8: TLabel;
    dblciudades: TDBLookupComboBox;
    Label9: TLabel;
    dblbarrios: TDBLookupComboBox;
    Label10: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    DBNavigator: TDBNavigator;
    GroupBox10: TGroupBox;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    GroupBox7: TGroupBox;
    Label17: TLabel;
    Label85: TLabel;
    DateTimePicker4: TMaskEdit;
    RadioGroup1: TComboBox;
    GroupBox8: TGroupBox;
    Label63: TLabel;
    Label64: TLabel;
    Label20: TLabel;
    Label16: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    DBEdit20: TDBEdit;
    Button2: TButton;
    DateTimePicker3: TDateTimePicker;
    Label25: TLabel;
    dblestadocivil: TDBLookupComboBox;
    Edit6: TEdit;
    Label32: TLabel;
    dblestrato: TDBLookupComboBox;
    Label36: TLabel;
    GroupBox5: TGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    dblescolaridad: TDBLookupComboBox;
    dblprofesion: TDBLookupComboBox;
    Button9: TButton;
    DBEdit59: TDBEdit;
    Label102: TLabel;
    Label104: TLabel;
    DBEdit60: TDBEdit;
    Label105: TLabel;
    DBEdit61: TDBEdit;
    Label81: TLabel;
    DBLookupComboBox19: TDBLookupComboBox;
    Label99: TLabel;
    DBEdit58: TDBEdit;
    Label100: TLabel;
    DBLookupComboBox22: TDBLookupComboBox;
    Label101: TLabel;
    DBLookupComboBox23: TDBLookupComboBox;
    Label103: TLabel;
    DBLookupComboBox24: TDBLookupComboBox;
    Label23: TLabel;
    Label29: TLabel;
    Label38: TLabel;
    dbctividadeconomica: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit37: TDBEdit;
    DBMemo1: TDBMemo;
    qryepsTIP_DOCUMENTO: TStringField;
    qryepsNUM_DOCUMENTO: TStringField;
    qryepsNOM_EPS: TStringField;
    qryepsCOD_EPS: TStringField;
    qryepsDIR_EPS: TStringField;
    qryepsTEL_EPS: TStringField;
    qryepsFAX_EPS: TStringField;
    qryepsEML_EPS: TStringField;
    qryepsFEC_INCLUSION: TDateTimeField;
    qryafiliados_empresasCOD_OCUPACION: TStringField;
    qryafiliados_empresasTIP_DOCUMENTO_AFI: TStringField;
    qryafiliados_empresasNUM_DOCUMENTO_AFI: TStringField;
    qryafiliados_empresasTIP_DOCUMENTO_EMP: TStringField;
    qryafiliados_empresasNUM_DOCUMENTO_EMP: TStringField;
    qryafiliados_empresasCOD_SUCURSAL: TStringField;
    qryafiliados_empresasCOD_ESTADO: TStringField;
    qryafiliados_empresasVAL_SUELDO_AFIL: TFloatField;
    qryafiliados_empresasFEC_INGRESO_UNI: TDateTimeField;
    qryafiliados_empresasFEC_EGRESO_UNI: TDateTimeField;
    qryafiliados_empresasCOD_DEPARTAMENTO_LAB: TStringField;
    qryafiliados_empresasCOD_CIUDAD_LAB: TStringField;
    qryafiliados_empresasDIR_AFILIADO_LAB: TStringField;
    qryafiliados_empresasTEL_AFILIADO_LAB: TStringField;
    qryafiliados_empresasTEL_AFILIADO_LAB2: TStringField;
    qryafiliados_empresasCOD_TIPO_SAL: TStringField;
    qryafiliados_empresasCOD_ZONA: TStringField;
    qryafiliados_empresasFEC_ING_EMPRESA: TDateTimeField;
    qryarp: TQuery;
    qryarpTIP_DOCUMENTO: TStringField;
    qryarpNUM_DOCUMENTO: TStringField;
    qryarpNOM_ARPS: TStringField;
    qryarpFEC_INCLUSION: TDateTimeField;
    Edit7: TEdit;
    dtsactividadeconomica: TDataSource;
    qryempresasCOD_ESTADO: TStringField;
    qryempresasCOD_OFICINA: TStringField;
    qryempresasCOD_REGIONAL: TStringField;
    qryempresasTIP_DOCUMENTO_ARP: TStringField;
    qryempresasNUM_DOCUMENTO_ARP: TStringField;
    qryempresasFEC_AFILIACION: TDateTimeField;
    qryempresasURL_EMPRESA: TStringField;
    qryempresasEML_EMPRESA: TStringField;
    qryempresasTOT_EMPLEADOS: TStringField;
    qryempresasCOD_TIPO_PER: TStringField;
    qryempresasCOD_ZONA: TStringField;
    qryempresasCOD_DEPARTAMENTO_PAG: TStringField;
    qryempresasCOD_CIUDAD_PAG: TStringField;
    qryempresasCOD_PRESENTACION_COM: TStringField;
    qryempresasCOD_TIP_EMPRESA: TStringField;
    qryempresasTIP_DOCUMENTO_PEN: TStringField;
    qryempresasNUM_DOCUMENTO_PEN: TStringField;
    dtsdocips: TDataSource;
    qrymodalidadtrabajo: TQuery;
    dtsmodalidadtra: TDataSource;
    dtsdepartamentos1: TDataSource;
    dtsciudades1: TDataSource;
    TabSheet5: TTabSheet;
    Panel3: TPanel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    PageControl2: TPageControl;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    GroupBox9: TGroupBox;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label58: TLabel;
    Label77: TLabel;
    Label18: TLabel;
    Label78: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    Label42: TLabel;
    Label44: TLabel;
    Label61: TLabel;
    Label19: TLabel;
    Label39: TLabel;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DateTimePicker5: TDateTimePicker;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox17: TDBLookupComboBox;
    DBLookupComboBox18: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    DBLookupComboBox9: TDBLookupComboBox;
    DBLookupComboBox10: TDBLookupComboBox;
    DBLookupComboBox11: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    dlbtipoafiliado: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Label69: TLabel;
    Label84: TLabel;
    DateTimePicker7: TDateTimePicker;
    RadioGroup2: TComboBox;
    GroupBox11: TGroupBox;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label60: TLabel;
    DBLookupComboBox15: TDBLookupComboBox;
    DBEdit24: TDBEdit;
    DBEdit27: TDBEdit;
    Button6: TButton;
    DateTimePicker6: TDateTimePicker;
    DBNavigator1: TDBNavigator;
    Button8: TBitBtn;
    btngrabar: TBitBtn;
    btnnuevo: TBitBtn;
    GroupBox19: TGroupBox;
    Label46: TLabel;
    Label52: TLabel;
    Label62: TLabel;
    DBLookupComboBox12: TDBLookupComboBox;
    DBEdit18: TDBEdit;
    Button4: TButton;
    dblmodalidadtrabajo: TDBLookupComboBox;
    Label37: TLabel;
    GroupBox3: TGroupBox;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    DBLookupComboBox13: TDBLookupComboBox;
    DBEdit19: TDBEdit;
    qrybeneficiariosTIP_DOCUMENTO: TStringField;
    qrybeneficiariosNUM_DOCUMENTO: TStringField;
    qrybeneficiariosCOD_SEXO: TStringField;
    qrybeneficiariosCOD_TIPO_AFIL: TStringField;
    qrybeneficiariosCOD_MODALIDAD_TRA: TStringField;
    qrybeneficiariosCOD_ESTADO_CIV: TStringField;
    qrybeneficiariosCOD_ESTRATO: TStringField;
    qrybeneficiariosCOD_ESCOLARIDAD: TStringField;
    qrybeneficiariosCOD_PROFESION: TStringField;
    qrybeneficiariosCOD_ESTADO: TStringField;
    qrybeneficiariosCOD_OFICINA: TStringField;
    qrybeneficiariosCOD_REGIONAL: TStringField;
    qrybeneficiariosPRI_NOMBRE: TStringField;
    qrybeneficiariosSEG_NOMBRE: TStringField;
    qrybeneficiariosPRI_APELLIDO: TStringField;
    qrybeneficiariosSEG_APELLIDO: TStringField;
    qrybeneficiariosFEC_NACIMIENTO: TDateTimeField;
    qrybeneficiariosFEC_AFILIACION_SIS: TDateTimeField;
    qrybeneficiariosFEC_AFILIACION_UNI: TDateTimeField;
    qrybeneficiariosEPS_TIP_DOC: TStringField;
    qrybeneficiariosEPS_NUM_DOC: TStringField;
    qrybeneficiariosCOD_DEPARTAMENTO_RES: TStringField;
    qrybeneficiariosCOD_CIUDAD_RES: TStringField;
    qrybeneficiariosCOD_BARRIO_RES: TStringField;
    qrybeneficiariosCOD_ZONA: TStringField;
    qrybeneficiariosACE_TIP_DOC: TStringField;
    qrybeneficiariosACE_NUMERO_DOC: TStringField;
    qrybeneficiariosCOD_DISCAPACIDAD: TStringField;
    qrybeneficiariosNUM_SEMANA_COTIZA: TFloatField;
    qrybeneficiariosFEC_RADICACION: TDateTimeField;
    qrybeneficiariosNUM_FORMATO_AFIL: TStringField;
    qrybeneficiariosDIR_AFILIADO_RES: TStringField;
    qrybeneficiariosTEL_AFILIADO_RES: TStringField;
    qrybeneficiariosTEL_AFILIADO_RES2: TStringField;
    qrybeneficiariosCEL_AFILIADO: TStringField;
    qrybeneficiariosEML_AFILIADO: TStringField;
    qrybeneficiariosFEC_ULTIMA_NOV: TDateTimeField;
    qrybeneficiariosTIP_DOCUMENTO_IPS: TStringField;
    qrybeneficiariosNUM_DOCUMENTO_IPS: TStringField;
    qrybeneficiariosTIP_DOCUMENTO_MED: TStringField;
    qrybeneficiariosNUM_DOCUMENTO_MED: TStringField;
    qrybeneficiariosTIP_DOCUMENTO_ODO: TStringField;
    qrybeneficiariosNUM_DOCUMENTO_ODO: TStringField;
    qrybeneficiariosSEM_COTIZACION: TFloatField;
    Edit1: TEdit;
    edttipoactualizacion: TEdit;
    edips: TEdit;
    edipsben: TEdit;
    tblafiliados: TQuery;
    tblafiliadosTIP_DOCUMENTO: TStringField;
    tblafiliadosNUM_DOCUMENTO: TStringField;
    tblafiliadosCOD_SEXO: TStringField;
    tblafiliadosCOD_TIPO_AFIL: TStringField;
    tblafiliadosCOD_MODALIDAD_TRA: TStringField;
    tblafiliadosCOD_ESTADO_CIV: TStringField;
    tblafiliadosCOD_ESTRATO: TStringField;
    tblafiliadosCOD_ESCOLARIDAD: TStringField;
    tblafiliadosCOD_PROFESION: TStringField;
    tblafiliadosCOD_ESTADO: TStringField;
    tblafiliadosCOD_OFICINA: TStringField;
    tblafiliadosCOD_REGIONAL: TStringField;
    tblafiliadosPRI_NOMBRE: TStringField;
    tblafiliadosSEG_NOMBRE: TStringField;
    tblafiliadosPRI_APELLIDO: TStringField;
    tblafiliadosSEG_APELLIDO: TStringField;
    tblafiliadosFEC_NACIMIENTO: TDateTimeField;
    tblafiliadosFEC_AFILIACION_SIS: TDateTimeField;
    tblafiliadosFEC_AFILIACION_UNI: TDateTimeField;
    tblafiliadosEPS_TIP_DOC: TStringField;
    tblafiliadosEPS_NUM_DOC: TStringField;
    tblafiliadosCOD_DEPARTAMENTO_RES: TStringField;
    tblafiliadosCOD_CIUDAD_RES: TStringField;
    tblafiliadosCOD_BARRIO_RES: TStringField;
    tblafiliadosCOD_ZONA: TStringField;
    tblafiliadosACE_TIP_DOC: TStringField;
    tblafiliadosACE_NUMERO_DOC: TStringField;
    tblafiliadosCOD_DISCAPACIDAD: TStringField;
    tblafiliadosNUM_SEMANA_COTIZA: TFloatField;
    tblafiliadosFEC_RADICACION: TDateTimeField;
    tblafiliadosNUM_FORMATO_AFIL: TStringField;
    tblafiliadosDIR_AFILIADO_RES: TStringField;
    tblafiliadosTEL_AFILIADO_RES: TStringField;
    tblafiliadosTEL_AFILIADO_RES2: TStringField;
    tblafiliadosCEL_AFILIADO: TStringField;
    tblafiliadosEML_AFILIADO: TStringField;
    tblafiliadosFEC_ULTIMA_NOV: TDateTimeField;
    tblafiliadosTIP_DOCUMENTO_IPS: TStringField;
    tblafiliadosNUM_DOCUMENTO_IPS: TStringField;
    tblafiliadosTIP_DOCUMENTO_MED: TStringField;
    tblafiliadosNUM_DOCUMENTO_MED: TStringField;
    tblafiliadosTIP_DOCUMENTO_ODO: TStringField;
    tblafiliadosNUM_DOCUMENTO_ODO: TStringField;
    tblafiliadosSEM_COTIZACION: TFloatField;
    GroupBox18: TGroupBox;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Button1: TButton;
    Edit4: TEdit;
    Label40: TLabel;
    DateTimePicker2: TDateTimePicker;
    Button3: TButton;
    DBNavigator3: TDBNavigator;
    procedure dsrelacion_afiliadosDataChange(Sender: TObject;
      Field: TField);
    procedure qryrelacion_afiliadosAfterInsert(DataSet: TDataSet);
    procedure qryrelacion_afiliadosBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnempresasClick(Sender: TObject);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure qryafiliados_empresascodocupacionChange(Sender: TField);
    procedure qryafiliados_empresastipodocumentoempChange(Sender: TField);
    procedure tblafiliados1AfterPost(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure tblafiliados1BeforePost(DataSet: TDataSet);
    procedure qryafiliados_empresasUpdateError(DataSet: TDataSet;
      E: EDatabaseError; UpdateKind: TUpdateKind;
      var UpdateAction: TUpdateAction);
    procedure qryafiliados_empresasAfterInsert(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryafiliadosAfterPost(DataSet: TDataSet);
    procedure qryafiliadosBeforePost(DataSet: TDataSet);
    procedure btngrabarClick(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure dbldepartamentosClick(Sender: TObject);
    procedure dblciudadesClick(Sender: TObject);
    procedure DateTimePicker5Change(Sender: TObject);
    procedure qryafiliados_empresasBeforeInsert(DataSet: TDataSet);
    procedure qryafiliados_empresasBeforeCancel(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure btnmodo_insertarClick(Sender: TObject);
    procedure qryrelacion_afiliadosPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure Button20Click(Sender: TObject);
    procedure DateTimePicker6Change(Sender: TObject);
    procedure DateTimePicker7Change(Sender: TObject);
    procedure DBLookupComboBox9Click(Sender: TObject);
    procedure DBLookupComboBox10Click(Sender: TObject);
    procedure DBEdit23KeyPress(Sender: TObject; var Key: Char);
    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
    procedure DBEdit31KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit32KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit28KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit29KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit26KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit33KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit34KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit27KeyPress(Sender: TObject; var Key: Char);
    procedure Button6Click(Sender: TObject);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure tblafiliados1AfterInsert(DataSet: TDataSet);
    procedure DateTimePicker2Exit(Sender: TObject);
    procedure DateTimePicker1Exit(Sender: TObject);
    procedure DateTimePicker3Exit(Sender: TObject);
    procedure DateTimePicker5Exit(Sender: TObject);
    procedure DateTimePicker6Exit(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure PageControl3Change(Sender: TObject);
    procedure DBEdit31Exit(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure dblsexoExit(Sender: TObject);
    procedure DBEdit28Exit(Sender: TObject);
    procedure dblestratoExit(Sender: TObject);
    procedure dblestadocivilExit(Sender: TObject);
    procedure dblmodalidadtrabajoExit(Sender: TObject);
    procedure dbldepartamentosExit(Sender: TObject);
    procedure dblciudadesExit(Sender: TObject);
    procedure dblbarriosExit(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure dblescolaridadExit(Sender: TObject);
    procedure dblprofesionExit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox5Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit20Exit(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
    procedure DBLookupComboBox6Exit(Sender: TObject);
    procedure DBLookupComboBox8Exit(Sender: TObject);
    procedure dlbtipoafiliadoExit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBLookupComboBox17Exit(Sender: TObject);
    procedure DBLookupComboBox18Exit(Sender: TObject);
    procedure qryrelacion_afiliadosBeforeCancel(DataSet: TDataSet);
    procedure Button8Click(Sender: TObject);
    procedure DBLookupComboBox10Exit(Sender: TObject);
    procedure DBLookupComboBox9Exit(Sender: TObject);
    procedure DBLookupComboBox11Exit(Sender: TObject);
    procedure DBLookupComboBox7Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit36Exit(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure grabar_afiliados_cotizantes;
    procedure DBLookupComboBox18Enter(Sender: TObject);
    procedure DBLookupComboBox22Click(Sender: TObject);
    procedure DBEdit59Exit(Sender: TObject);
    procedure DBEdit60Exit(Sender: TObject);
    procedure DBEdit36KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit35KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit58Exit(Sender: TObject);
    procedure DBLookupComboBox22Exit(Sender: TObject);
    procedure DBLookupComboBox23Exit(Sender: TObject);
    procedure DBLookupComboBox24Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnnuevoClick(Sender: TObject);
    procedure DBLookupComboBox15Exit(Sender: TObject);
    procedure DBEdit24Exit(Sender: TObject);
    procedure DBEdit27Exit(Sender: TObject);
    procedure btncempresaClick(Sender: TObject);
    procedure btnnempresaClick(Sender: TObject);
    procedure btngempresaClick(Sender: TObject);
    procedure validar_grupos;
    procedure RadioGroup1Exit(Sender: TObject);
    procedure Primeravezeps;
    procedure RadioGroup1Click(Sender: TObject);
    PROCEDURE TRANSLADOEPS;
    PROCEDURE SEMANAS_COTIZADAS;
    procedure RadioGroup2Exit(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    function validar_datos_cotizante : Boolean;
    function validar_datos_empresa :Boolean;
    procedure pasar_cotizante_Inactivo_Activo;
    procedure ingresar_multiempresa;
    procedure pasar_beneficiario_cotizante_inactivo;
    procedure DBEdit35Exit(Sender: TObject);
    procedure DateTimePicker7Exit(Sender: TObject);
    procedure ingreso_adicional;
    procedure DBLookupComboBox19Exit(Sender: TObject);
    procedure DBLookupComboBox25Exit(Sender: TObject);
    procedure DBLookupComboBox17Enter(Sender: TObject);
    procedure DBLookupComboBox8Enter(Sender: TObject);
    procedure dlbtipoafiliadoEnter(Sender: TObject);
    procedure DBLookupComboBox6Enter(Sender: TObject);
    procedure DBLookupComboBox14CloseUp(Sender: TObject);
    procedure DBLookupComboBox16CloseUp(Sender: TObject);
    procedure DBLookupComboBox29Exit(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DBLookupComboBox32Click(Sender: TObject);
    procedure DBLookupComboBox33Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure crear_empresa;
    procedure adicionar_afiliados_empresa;
    function validar_salario : Boolean;
    procedure DBLookupComboBox13Exit(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBLookupComboBox12Exit(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure DateTimePicker8Exit(Sender: TObject);
    procedure DateTimePicker8Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    



  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmafiliacion_independientes: Tfrmafiliacion_independientes;
  usuario_emcontrado:boolean;
  beneficiario_encontrado:boolean;
  afiliados_empresas_insert:boolean;
  afiliados_insert:boolean;
  relacion_afiliados_insert:boolean;
  sueldo : real;


implementation

uses Uafiliaciones_empresas, UEmpresas, Udmafiliaciones, Uafiliaciones,
  Uasesores, Ueps, Uips, Uafiliaciones_usuarios;

{$R *.DFM}

procedure Tfrmafiliacion_independientes.dsrelacion_afiliadosDataChange(
  Sender: TObject; Field: TField);
begin
       if (qryrelacion_afiliadostip_documento_ben.Text <> '') and
          (qryrelacion_afiliadosnum_documento_ben.Text <> '') then
       begin
       if relacion_afiliados_insert=true then
       begin
       //VERIFICACION DE LOS AFILIADOS QUE NO ESTEN ACTIVOS MAS DE UN NUMERO DE DOCUMENTO
                Query1.Close;
                Query1.SQL.Clear;
                Query1.SQL.Add('Select * '+
                'From relacion_afiliados '+
                'Where relacion_afiliados.tip_documento_ben = :"tip_documento" AND '+
                'relacion_afiliados.num_documento_ben = :"num_documento" AND '+
                '((relacion_afiliados.cod_estado = :"cod_estado" ) OR '+
                '(relacion_afiliados.fec_exclusion_nov is null ))' );
                Query1.Params[0].AsString := qryrelacion_afiliadostip_documento_ben.text;
                Query1.Params[1].AsString := qryrelacion_afiliadosnum_documento_ben.text;
                Query1.Params[2].AsString := 'A';
                Query1.Open;
                if query1.RecordCount >= 1 then
                  begin
                       qryrelacion_afiliados.cancel;
                       qryrelacion_afiliados.insert;
                       DBLookupComboBox4.SetFocus;
                       qrybeneficiarios.cancel;
                       showmessage('No es posible incluirlo como beneficiario por que esta activo');
                       Query1.close;
                       abort;
                       exit;
                  end;
           //////////////////////////////////
       end;

        qrybeneficiarios.Active:=false;
        Qrybeneficiarios.Params[0].AsString := qryrelacion_afiliadostip_documento_ben.Text;
        Qrybeneficiarios.Params[1].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
        qrybeneficiarios.ExecSQL;
        qrybeneficiarios.Active:=true;
        qrybeneficiarios.open;

        if qrybeneficiarios.RecordCount = 1 then
            beneficiario_encontrado:=true
        else
            beneficiario_encontrado:=false;

        //buscar la ciudad la ciudad
        dmafiliaciones.Qryciudades.Active:=false;
        dmafiliaciones.Qryciudades.Params[0].AsString := qrybeneficiarioscod_departamento_res.text;
        dmafiliaciones.Qryciudades.ExecSQL;
        dmafiliaciones.Qryciudades.Active:=true;

        dmafiliaciones.qrybarrios.Active:=false;
        dmafiliaciones.qrybarrios.Params[0].AsString := qrybeneficiarioscod_departamento_res.text;
        dmafiliaciones.qrybarrios.Params[1].AsString := qrybeneficiarioscod_ciudad_res.text;
        dmafiliaciones.qrybarrios.ExecSQL;
        dmafiliaciones.qrybarrios.active:=true;
        if  qrybeneficiarios.Eof then
            begin
                  qrybeneficiarios.edit;
                  DateTimePicker5.date:=frmafiliaciones.fecha_actual();
                  qrybeneficiariostip_documento.Text :=qryrelacion_afiliadostip_documento_ben.Text;
                  qrybeneficiariosnum_documento.Text :=qryrelacion_afiliadosnum_documento_ben.Text;
                  qrybeneficiarioscod_estrato.text := tblafiliadoscod_estrato.text;
                  qrybeneficiarioscod_estado.text := tblafiliadoscod_estado.text;
                  qrybeneficiarioscod_oficina.text := tblafiliadoscod_oficina.text;
                  qrybeneficiarioscod_regional.text := tblafiliadoscod_regional.text;
                  qrybeneficiariosfec_nacimiento.Value:=DateTimePicker5.date;
                  qrybeneficiariosfec_afiliacion_sis.text := tblafiliadosfec_afiliacion_sis.text;
                  qrybeneficiariosfec_afiliacion_uni.text :=  tblafiliadosfec_afiliacion_uni.text;
                  qrybeneficiarioscod_departamento_res.text := tblafiliadoscod_departamento_res.text;
                  qrybeneficiarioscod_ciudad_res.text := tblafiliadoscod_ciudad_res.text;
                  qrybeneficiarioscod_barrio_res.text := tblafiliadoscod_barrio_res.text;
                  qrybeneficiarioscod_zona.text := tblafiliadoscod_zona.text;
                  qrybeneficiariosace_tip_doc.Text := tblafiliadosace_tip_doc.text;
                  qrybeneficiariosace_numero_doc.Text := tblafiliadosace_numero_doc.text;
                  qrybeneficiariosfec_radicacion.Text := tblafiliadosfec_radicacion.text;
                  qrybeneficiariosnum_formato_afil.Text := tblafiliadosnum_formato_afil.text;
                  qrybeneficiariosdir_afiliado_res.Text := tblafiliadosdir_afiliado_res.Text;
                  qrybeneficiariostel_afiliado_res.Text := tblafiliadostel_afiliado_res.Text;
                  qrybeneficiariostel_afiliado_res2.Text := tblafiliadostel_afiliado_res2.Text;
                  qrybeneficiarioscel_afiliado.Text := tblafiliadoscel_afiliado.Text;
                  qrybeneficiarioseml_afiliado.Text := tblafiliadoseml_afiliado.Text;
                  qrybeneficiariosfec_ultima_nov.value:=frmafiliaciones.fecha_actual();
                  dmafiliaciones.Qryciudades.Active:=false;
                  dmafiliaciones.Qryciudades.Params[0].AsString := tblafiliadoscod_departamento_res.text;
                  dmafiliaciones.Qryciudades.ExecSQL;
                  dmafiliaciones.Qryciudades.Active:=true;

                  dmafiliaciones.qrybarrios.Active:=false;
                  dmafiliaciones.qrybarrios.Params[0].AsString := tblafiliadoscod_departamento_res.text;
                  dmafiliaciones.qrybarrios.Params[1].AsString := tblafiliadoscod_ciudad_res.text;
                  dmafiliaciones.qrybarrios.ExecSQL;
                  dmafiliaciones.qrybarrios.active:=true;
            end
            else
            begin
                  if qrybeneficiarioscod_estado.Text <> 'I' then
                     begin
                     end
                     else
                DateTimePicker5.date:=qrybeneficiariosfec_nacimiento.Value;
                DateTimePicker6.date:=qrybeneficiariosfec_afiliacion_sis.value;
                DateTimePicker7.Date:=qrybeneficiariosfec_afiliacion_uni.value;
            end;
       end;
end;

procedure Tfrmafiliacion_independientes.qryrelacion_afiliadosAfterInsert(
  DataSet: TDataSet);
begin

      qryrelacion_afiliados.Edit;
      qryrelacion_afiliadostip_documento_cot.Text:=tblafiliadostip_documento.text;
      qryrelacion_afiliadosnum_documento_cot.Text:=tblafiliadosnum_documento.text;
     // qryrelacion_afiliadosfec_inclusion_nov.Value:=frmafiliaciones.fecha_hoy();
      if TabSheet1.TabVisible = true then
      begin
      qryrelacion_afiliadosFEC_INCLUSION_NOV.Value := strtodate(DBEdit30.text);
      end
      else
      qryrelacion_afiliadosFEC_INCLUSION_NOV.Value := gb_fec_hoy;
      qryrelacion_afiliadoscod_estado.Text:='A';
      qrybeneficiarios.close;
//      relacion_afiliados_insert:=true;

     // PageControl2.ActivePage := TabSheet7;
     // DBLookupComboBox4.SetFocus;


    end;

procedure Tfrmafiliacion_independientes.qryrelacion_afiliadosBeforePost(
  DataSet: TDataSet);
var
cod_novedad:string;
begin
        try
           dmafiliaciones.softeps.StartTransaction;
           //VERIFICACION DE LÑOS AFILIADOS QUE NO ESTEN ACTIVOS MAS DE UN NUMERO DE DOCUMENTO
                Query1.Close;
                Query1.SQL.Clear;
                Query1.SQL.Add('Select * '+
                'From relacion_afiliados '+
                'Where relacion_afiliados.tip_documento_ben = :"tip_documento" AND '+
                'relacion_afiliados.num_documento_ben = :"num_documento" AND '+
                '((relacion_afiliados.cod_estado = :"cod_estado" ) OR '+
                '(relacion_afiliados.fec_exclusion_nov is null ))' );
                Query1.Params[0].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                Query1.Params[1].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                Query1.Params[2].AsString := 'A';
                Query1.Open;
                if query1.RecordCount >= 1 then
                  begin
                       dmafiliaciones.softeps.Rollback;
                       qryrelacion_afiliados.cancel;
                       qrybeneficiarios.cancel;
                       showmessage('No es posible incluirlo como beneficiario por que esta activo');
                       DBLookupComboBox4.SetFocus;
                       abort;
                       exit;
                  end;
           //////////////////////////////////
        if qrybeneficiarioscod_tipo_afil.Text = 'C' then
            begin
                  dmafiliaciones.softeps.Rollback;
                  qryrelacion_afiliados.cancel;
                  qrybeneficiarios.cancel;
                  showmessage('No es posible incluirlo como beneficiario por que es cotizante');
                  DBLookupComboBox4.SetFocus;
                  exit;
            end
        else
            begin
                qrybeneficiarios.Open;
                qrybeneficiarios.edit;
                qrybeneficiarioscod_estado.Text:='A';
                qrybeneficiariosfec_nacimiento.Value:=DateTimePicker5.date;
                qrybeneficiariosfec_afiliacion_sis.value:=DateTimePicker6.date;
                qrybeneficiariosfec_afiliacion_uni.value:=DateTimePicker7.Date;
                qrybeneficiarios.Post;

                qrybeneficiarios.Active:=false;
                Qrybeneficiarios.Params[0].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                Qrybeneficiarios.Params[1].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                qrybeneficiarios.ExecSQL;
                qrybeneficiarios.Active:=true;

                if qrybeneficiarioscod_tipo_afil.Text='B' then
                cod_novedad :='02';
                if qrybeneficiarioscod_tipo_afil.Text='A' then
                cod_novedad :='03';
                 if relacion_afiliados_insert = true then
                 begin
                    //graba los cambios en qrybeneficiarios
//                    qrybeneficiarios.edit;
//                    qrybeneficiariosfec_nacimiento.Value:=DateTimePicker5.date;
//                    qrybeneficiariosfec_afiliacion_sis.value:=DateTimePicker6.date;
//                    qrybeneficiariosfec_afiliacion_uni.value:=DateTimePicker7.Date;
//                    qrybeneficiarios.Post;
                    //execute qrynovedades_afiliados
                    qrynovedades_afiliados.Close;
                    qrynovedades_afiliados.Params[0].AsString := cod_novedad;
                    qrynovedades_afiliados.Params[1].AsString := qrybeneficiariostip_documento.text;
                    qrynovedades_afiliados.Params[2].AsString := qrybeneficiariosnum_documento.text;
                    qrynovedades_afiliados.Params[3].AsString := gb_oficina;
                    qrynovedades_afiliados.Params[4].AsString := gb_regional;
                    qrynovedades_afiliados.Params[5].AsString := gb_tip_doc_usu;
                    qrynovedades_afiliados.Params[6].AsString := gb_num_doc_usu;
                    qrynovedades_afiliados.Params[7].AsDatetime := frmafiliaciones.fecha_actual();
                    qrynovedades_afiliados.Params[8].AsDatetime := frmafiliaciones.fecha_actual();
                    qrynovedades_afiliados.Params[9].AsDatetime := frmafiliaciones.fecha_actual();
    //              qrynovedades_afiliados.Params[10].AsString := null;
    //              qrynovedades_afiliados.Params[11].AsString := null;
    //              grynovedades_afiliados.Params[12].AsString := null;
                    qrynovedades_afiliados.ExecSql;
                end;
                dmafiliaciones.softeps.Commit; {on success, commit the changes};
             //   showMessage('Proceso Finalizado con Exito, Novedad de ingreso Aplicada');
        end;

        except
              dmafiliaciones.softeps.Rollback; {on failure, undo the changes};
              raise;
              showMessage('Error en el ingreso de la novedad como Beneficiario o Adicional');
        end;

    relacion_afiliados_insert:=false;
end;

procedure Tfrmafiliacion_independientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if (TabSheet3.TabVisible = true) and (TabSheet1.TabVisible = true)  then
 begin
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('Select * '+
      'From dbo.afiliados_empresas '+
      'Where afiliados_empresas.tip_documento_afi = :"tip_documento" AND '+
      'afiliados_empresas.num_documento_afi = :"num_documento" AND '+
      'afiliados_empresas.cod_estado = '+#39+'A'+#39 );
      Query1.Params[0].AsString := tblafiliadostip_documento.text;
      Query1.Params[1].AsString := tblafiliadosnum_documento.text;
      Query1.Open;

      qrybeneficiarios.Active:=false;
      qrybeneficiarios.Params[0].AsString := tblafiliadostip_documento.text;
      qrybeneficiarios.Params[1].AsString := tblafiliadosnum_documento.text;
      qrybeneficiarios.open;

      if (query1.RecordCount = 0) and (qrybeneficiarios.recordcount = 1) and (qrybeneficiarioscod_tipo_afil.Text='C') then
      begin
            if MessageDlg('El afiliado no tiene la empresa activa, Realmente desea abandonar la afiliacion?',
               mtConfirmation, [mbYes, mbNo], 0) = mrNo then
               begin
                    abort;
               end
               else
               begin
                    Query1.SQL.Clear;
                    Query1.SQL.Add('Update afiliados Set cod_estado = '+#39+'I'+#39 );
                    Query1.SQL.Add('Where afiliados.tip_documento = :"tip_documento" AND '+
                                   'afiliados.num_documento = :"num_documento"');
                    Query1.Params[0].AsString := tblafiliadostip_documento.text;
                    Query1.Params[1].AsString := tblafiliadosnum_documento.text;
                    Query1.ExecSQL;
                    showmessage('El afiliado esta en estado inactivo');
              end;
      end
      else
      Query1.close;
      tblafiliados.Cancel;
      tblafiliados.Destroy;
      qryrelacion_afiliados.close;
      qryrelacion_afiliados.free;
      qryafiliados_empresas.Cancel;
      qryafiliados_empresas.free;
      qrybeneficiarios.Cancel;
      qrybeneficiarios.free;
      qrynovedades_afiliados.Cancel;
      qrynovedades_afiliados.free;
  end;
      action:=cafree;
end;

procedure Tfrmafiliacion_independientes.btnempresasClick(Sender: TObject);
begin
        frmempresas:=Tfrmempresas.create(Application);
        try
                frmempresas.show;
        except
                frmempresas.free;
        end;
end;

procedure Tfrmafiliacion_independientes.DBGrid2EditButtonClick(Sender: TObject);
begin
//        if afiliados_empresas_insert=true then
//        begin
              frmempresas:=Tfrmempresas.create(Application);
              try
                      frmempresas.show;

              except
                      frmempresas.free;
              end;
//        end;
end;

procedure Tfrmafiliacion_independientes.qryafiliados_empresascodocupacionChange(
  Sender: TField);
begin
        dmafiliaciones.tblocupaciones.refresh;
end;

procedure Tfrmafiliacion_independientes.qryafiliados_empresastipodocumentoempChange(
  Sender: TField);
begin
        dmafiliaciones.tbltipos_documentos.Refresh;
end;

procedure Tfrmafiliacion_independientes.tblafiliados1AfterPost(DataSet: TDataSet);
begin
        if (usuario_emcontrado = true) or (afiliados_insert = true) then
           begin
                Query1.Close;
                Query1.SQL.Clear;
                Query1.SQL.Add('Select dbo.relacion_afiliados.tip_documento_cot,'+
                'dbo.relacion_afiliados.num_documento_cot,'+
                'dbo.relacion_afiliados.tip_documento_ben,'+
                'dbo.relacion_afiliados.num_documento_ben,'+
                'dbo.relacion_afiliados.fec_inclusion_nov,'+
                'dbo.relacion_afiliados.cod_parentesco,'+
                'dbo.relacion_afiliados.fec_exclusion_nov '+
                'From dbo.relacion_afiliados '+
                'Where relacion_afiliados.tip_documento_cot = :"tip_documento" AND '+
                'relacion_afiliados.num_documento_cot = :"num_documento" AND '+
                'relacion_afiliados.tip_documento_ben = :"tip_documento" AND '+
                'relacion_afiliados.num_documento_ben = :"num_documento" AND '+
                'relacion_afiliados.fec_inclusion_nov = :"fec_ingreso" ' );
                Query1.Params[0].AsString := tblafiliadostip_documento.text;
                Query1.Params[1].AsString := tblafiliadosnum_documento.text;
                Query1.Params[2].AsString := tblafiliadostip_documento.text;
                Query1.Params[3].AsString := tblafiliadosnum_documento.text;
                Query1.Params[4].AsDateTime := strtodate(DBEdit30.text);
        //        Query1.ExecSQL;
                Query1.Open;

                if query1.RecordCount = 0 then
                begin
                    Query1.SQL.Clear;
                    Query1.SQL.Add('INSERT INTO relacion_afiliados (tip_documento_cot, num_documento_cot, tip_documento_ben, num_documento_ben,fec_inclusion_nov,cod_parentesco,cod_estado,cod_relacion_adi)');
                    Query1.SQL.Add('VALUES (:tpc, :nrc, :tpb, :nrb, :fec_incl,:cp,:ce,:ra)');

                    Query1.Params[0].AsString := tblafiliadostip_documento.text;
                    Query1.Params[1].AsString := tblafiliadosnum_documento.text;
                    Query1.Params[2].AsString := tblafiliadostip_documento.text;
                    Query1.Params[3].AsString := tblafiliadosnum_documento.text;
                    Query1.Params[4].AsDateTime := strtodate(DBEdit30.text);
                    Query1.Params[5].AsString := 'T';
                    Query1.Params[6].AsString := 'A';
                    Query1.Params[7].AsString := '1';
                    Query1.ExecSQL;
                end
                else
                    Query1.close;
        end;
        afiliados_insert:=false;
end;

procedure Tfrmafiliacion_independientes.PageControl1Change(Sender: TObject);
begin
{if PageControl1.Activepage = TabSheet5 then
begin
if DBEdit34.Text <> '' then
  begin
   Label26.caption:=frmafiliacion_independientes.Caption;
   end
   else
   if DBEdit23.Text = '' then
   begin
    ShowMessage(' Los Datos del cotizante esta  incompletos  debe  digitarlos  totalmente');
  //  PageControl1.Activepage := TabSheet2;
    DBEdit34.SetFocus;
   end;
end;}



end;

procedure Tfrmafiliacion_independientes.tblafiliados1BeforePost(
  DataSet: TDataSet);
begin
        tblafiliadosfec_ultima_nov.value:=frmafiliaciones.fecha_actual();
        tblafiliadoscod_discapacidad.Value :='N';
       


end;

procedure Tfrmafiliacion_independientes.qryafiliados_empresasUpdateError(
  DataSet: TDataSet; E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
        ShowMessage('Error Update');


end;

procedure Tfrmafiliacion_independientes.qryafiliados_empresasAfterInsert(
  DataSet: TDataSet);
begin
        qryafiliados_empresas.Edit;
        qryafiliados_empresastip_documento_afi.text:=tblafiliadostip_documento.text;
        qryafiliados_empresasnum_documento_afi.text:=tblafiliadosnum_documento.text;
        qryafiliados_empresascod_estado.text:='A';
        qryafiliados_empresasfec_ingreso_uni.Value:=frmafiliaciones.fecha_hoy();
end;

procedure Tfrmafiliacion_independientes.Button1Click(Sender: TObject);
begin
        frmasesores:=Tfrmasesores.create(Application);
              try
              frmasesores.Caption:='Selecion Asesores  para independientes';
                      frmasesores.show;

              except
                      frmasesores.free;
              end;

end;

procedure Tfrmafiliacion_independientes.Button2Click(Sender: TObject);
begin
        frmeps:=Tfrmeps.create(Application);
              try
                      frmeps.Caption:='Seleccion de la eps para independientes';
                      frmeps.show;

              except
                      frmeps.free;
              end;
end;

procedure Tfrmafiliacion_independientes.FormCreate(Sender: TObject);
begin
        Application.OnMessage := AppMessage;
        tblafiliados.Open;
        qrytiposalario.Open;
        dmafiliaciones.tbltipos_documentos.Open;
        dmafiliaciones.tblsexo.Open;
        dmafiliaciones.tblestratos.Open;
        dmafiliaciones.tbldiscapacidades.Open;
        dmafiliaciones.tblestadosciviles.Open;
        dmafiliaciones.tblescolaridad.Open;
        dmafiliaciones.tblprofesion.Open;
        dmafiliaciones.tbldepartamentos.Open;
        dmafiliaciones.tblzonas.Open;
        dmafiliaciones.tbltiposafiliados.Open;
        dmafiliaciones.tblmodalidadtrabajo.Open;
        dmafiliaciones.tblparentescos.Open;
        dmafiliaciones.tblrelacion_adicional.Open;
        afiliados_insert:=false;
        relacion_afiliados_insert:=false;

end;

procedure Tfrmafiliacion_independientes.qryafiliadosAfterPost(DataSet: TDataSet);
begin
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('Select dbo.relacion_afiliados.tip_documento_cot,'+
        'dbo.relacion_afiliados.num_documento_cot,'+
        'dbo.relacion_afiliados.tip_documento_ben,'+
        'dbo.relacion_afiliados.num_documento_ben,'+
        'dbo.relacion_afiliados.fec_inclusion_nov,'+
        'dbo.relacion_afiliados.cod_parentesco,'+
        'dbo.relacion_afiliados.fec_exclusion_nov '+
        'From dbo.relacion_afiliados '+
        'Where relacion_afiliados.tip_documento_cot = :"tip_documento" AND '+
        'relacion_afiliados.num_documento_cot = :"num_documento" AND '+
        'relacion_afiliados.tip_documento_ben = :"tip_documento" AND '+
        'relacion_afiliados.num_documento_ben = :"num_documento" ');
        Query1.Params[0].AsString := tblafiliadostip_documento.text;
        Query1.Params[1].AsString := tblafiliadosnum_documento.text;
        Query1.Params[2].AsString := tblafiliadostip_documento.text;
        Query1.Params[3].AsString := tblafiliadosnum_documento.text;
        Query1.ExecSQL;
        Query1.Open;

        if query1.RecordCount = 0 then
        begin
            Query1.SQL.Clear;
            Query1.SQL.Add('INSERT INTO relacion_afiliados (tip_documento_cot, num_documento_cot, tip_documento_ben, num_documento_ben,fec_inclusion_nov,cod_parentesco,cod_estado)');
            Query1.SQL.Add('VALUES (:tpc, :nrc, :tpb, :nrb, :fec_incl,:cp,:ce)');

            Query1.Params[0].AsString := tblafiliadostip_documento.text;
            Query1.Params[1].AsString := tblafiliadosnum_documento.text;
            Query1.Params[2].AsString := tblafiliadostip_documento.text;
            Query1.Params[3].AsString := tblafiliadosnum_documento.text;
            Query1.Params[4].AsDate := frmafiliaciones.fecha_actual();
            Query1.Params[5].AsString := 'T';
            Query1.Params[6].AsString := 'A';
            Query1.ExecSQL;
        end
        else
            Query1.close;
end;

procedure Tfrmafiliacion_independientes.qryafiliadosBeforePost(DataSet: TDataSet);
begin
        tblafiliadosfec_ultima_nov.value:=frmafiliaciones.fecha_actual();
        tblafiliadoscod_tipo_afil.value:='C';
        tblafiliadoscod_estado.value:='A';
end;

procedure Tfrmafiliacion_independientes.btngrabarClick(Sender: TObject);
begin
        qryrelacion_afiliados.Insert;
   //     DBNavigator1.BtnClick(nbPost);
        btnnuevo.Visible := true;
        btngrabar.Visible := false;
 if MessageDlg('El beneficiario se Ingreso correctamente ! Desea Continuar Digitando Otro Beneficiario ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
 begin
   btnnuevo.Click;
   DBLookupComboBox4.SetFocus;
 end
 else
 begin
    frmafiliacion_independientes.Close;
 end;
end;

procedure Tfrmafiliacion_independientes.DBEdit22Exit(Sender: TObject);
var
tipo_doc,num_doc,tipo_afiliado,estado_afiliado:string;

begin
 if dbedit23.Text = '' then
 begin
 ShowMessage('Debe digitar el numero de  documento del afiliado');
 dbedit23.SetFocus;
 exit;
 end
 else
      if (dbedit22.enabled=true) and (dbedit23.enabled=true) and (dbedit22.Text <>'') and (dbedit23.Text <>'') then
      begin
      tipo_doc:=dbedit22.Text;
      num_doc:=dbedit23.Text;
      qrybeneficiarios.Close;
      qrybeneficiarios.Active:=false;
      qrybeneficiarios.Params[0].AsString := dbedit22.text;
      qrybeneficiarios.Params[1].AsString := dbedit23.text;
      qrybeneficiarios.ExecSQL;
      qrybeneficiarios.open;
      //buscar la ciudad la ciudad
      dmafiliaciones.Qryciudades.Active:=false;
      dmafiliaciones.Qryciudades.Params[0].AsString := qrybeneficiarioscod_departamento_res.text;
      dmafiliaciones.Qryciudades.ExecSQL;
      dmafiliaciones.Qryciudades.Active:=true;

      dmafiliaciones.qrybarrios.Active:=false;
      dmafiliaciones.qrybarrios.Params[0].AsString := dmafiliaciones.qryciudadescod_departamento.text;
      dmafiliaciones.qrybarrios.Params[1].AsString := dmafiliaciones.qryciudadescod_ciudad.text;
      dmafiliaciones.qrybarrios.ExecSQL;
      tipo_afiliado:=qrybeneficiarioscod_tipo_afil.Text;
      estado_afiliado:=qrybeneficiarioscod_estado.text;
      // Berifica  si  esta  el afiliado
          if not qrybeneficiarios.eof  then
          begin
          qrybeneficiarios.Active:=false;
          tblafiliados.cancel;
//          tblafiliados.Findkey([tipo_doc,num_doc]);
          with tblafiliados do
          Locate('tip_documento;num_documento',VarArrayOf([tipo_doc,num_doc]), [loPartialKey]);

          //buscar la ciudad la ciudad
          dmafiliaciones.Qryciudades.Active:=false;
          dmafiliaciones.Qryciudades.Params[0].AsString := tblafiliadoscod_departamento_res.text;
          dmafiliaciones.Qryciudades.ExecSQL;
          dmafiliaciones.Qryciudades.Active:=true;

          dmafiliaciones.qrybarrios.Active:=false;
          dmafiliaciones.qrybarrios.Params[0].AsString := dmafiliaciones.qryciudadescod_departamento.text;
          dmafiliaciones.qrybarrios.Params[1].AsString := dmafiliaciones.qryciudadescod_ciudad.text;
          dmafiliaciones.qrybarrios.ExecSQL;
          dmafiliaciones.qrybarrios.Active:=true;
          DateTimePicker1.Date:=tblafiliadosfec_radicacion.Value;
          DateTimePicker2.Date:=tblafiliadosfec_nacimiento.Value;
          DateTimePicker3.Date:=tblafiliadosfec_afiliacion_sis.Value;
          DateTimePicker4.text:=datetostr(tblafiliadosfec_afiliacion_uni.Value);
          if (tipo_afiliado = 'C') then
          begin
              if estado_afiliado ='A' then
              begin
                       if MessageDlg('El Afiliado Cotizante ya existe y esta activo, desea adicionar el afiliado en otra empresa?',
                       mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                       begin
                         ingresar_multiempresa;
                         qryafiliados_empresas.Close;
                         qryafiliados_empresas.ExecSQL;
                         qryafiliados_empresas.Open;
                         DBNavigator2.BtnClick(nbInsert);
                         btnnempresa.Visible := false;
                         btngempresa.Visible := true;


                       end
                       else
                       frmafiliacion_independientes.Close;
              end
              else
              //   btnmodo_insertarClick(frmafiliacion_independientes);
              // cuando  el afiliado es  cotizante y  esta inactivo
              if estado_afiliado ='I' then
              begin
                       if MessageDlg('El Afiliado Cotizante ya existe y esta inactivo, desea reintegrarlo?',
                       mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                       begin
                       pasar_cotizante_Inactivo_Activo;
                        qrybeneficiarios.Close;
                        qrybeneficiarios.Active:=false;
                        qrybeneficiarios.Params[0].AsString := dbedit22.text;
                        qrybeneficiarios.Params[1].AsString := dbedit23.text;
                        qrybeneficiarios.ExecSQL;
                        qrybeneficiarios.open;
                        qrybeneficiarios.Edit;


                       end
                       else
                       frmafiliacion_independientes.Close;
              end
              else
                    //   btnmodo_insertarClick(frmafiliacion_independientes);
              if estado_afiliado ='S' then
              begin
                       if MessageDlg('EL afiliado es cotizante y esta suspendido, Desea Activarlo Nuevamente',
                       mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                       begin
                       btnmodo_insertarClick(frmafiliacion_independientes);
                       qrybeneficiarios.Close;
                        qrybeneficiarios.Active:=false;
                        qrybeneficiarios.Params[0].AsString := dbedit22.text;
                        qrybeneficiarios.Params[1].AsString := dbedit23.text;
                        qrybeneficiarios.ExecSQL;
                        qrybeneficiarios.open;
                        qrybeneficiarios.Edit;
                       end
                       else
                       frmafiliacion_independientes.close;
              end;
          end
          else
      // afiliados beneficiarios
          begin
              // si el afiliado esta inactivo y es un  beneficiario que pasa a  cotizante
              if estado_afiliado ='I' then
              begin
                       if MessageDlg('Realmente desea reingresar este Afiliados beneficiario por Cotizante',
                        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                        begin
                        pasar_beneficiario_cotizante_inactivo;
                        qrybeneficiarios.Close;
                        qrybeneficiarios.Active:=false;
                        qrybeneficiarios.Params[0].AsString := dbedit22.text;
                        qrybeneficiarios.Params[1].AsString := dbedit23.text;
                        qrybeneficiarios.ExecSQL;
                        qrybeneficiarios.open;
                        qrybeneficiarios.Edit;
                        end
                        else
                        frmafiliacion_independientes.close;
              end
              else
              //  btnmodo_insertarClick(frmafiliacion_independientes);
// if el afiliado es beneficiario y esta en estado activo y pasa a cotizante
              if estado_afiliado <>'I' then
              begin
                     if MessageDlg('EL afiliado es beneficiario, no es posible afiliarlo debido a que no esta inactivo ¿ Desea Realizar el retiro para Ingresarlo como cotizante',
                     mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                     begin
                        btnmodo_insertarClick(frmafiliacion_independientes);
                        qrybeneficiarios.Close;
                        qrybeneficiarios.Active:=false;
                        qrybeneficiarios.Params[0].AsString := dbedit22.text;
                        qrybeneficiarios.Params[1].AsString := dbedit23.text;
                        qrybeneficiarios.ExecSQL;
                        qrybeneficiarios.open;
                        qrybeneficiarios.Edit;
                     end
                     else
                     frmafiliacion_independientes.Close;
              end
              else
              if estado_afiliado <>'I' then
              begin
                     if MessageDlg('EL afiliado es beneficiario, no es posible afiliarlo debido a que esta suspendido ¿ Desea Realizar el retiro para Ingresarlo como cotizante',
                     mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                     begin
                         btnmodo_insertarClick(frmafiliacion_independientes);
                         qrybeneficiarios.Close;
                        qrybeneficiarios.Active:=false;
                        qrybeneficiarios.Params[0].AsString := dbedit22.text;
                        qrybeneficiarios.Params[1].AsString := dbedit23.text;
                        qrybeneficiarios.ExecSQL;
                        qrybeneficiarios.open;
                        qrybeneficiarios.Edit;
                     end
                     else
                     frmafiliacion_independientes.Close;
               end;

             end;
      end

     else
     begin
      // sin existe  verificar  que  no se a  empleador
   qryempresas.close;
   qryempresas.sql.clear;
   qryempresas.sql.add('select * from empresas where tip_documento = :"tipo" and num_documento = :"numero"');
   qryempresas.PARAMS[0].ASSTRING := DBLookupComboBox2.KeyValue;
   qryempresas.PARAMS[1].ASSTRING := DBEdit23.Text;
     qryempresas.open;
       if qryempresas.RecordCount = 1 then
       begin
       if MessageDlg('Afiliado es Empleador  No se podra Ingresar a esta  empresa Desea Continuar?',
       mtConfirmation, [mbYes, mbNo], 0) = mrno then
       begin
       frmafiliacion_independientes.Close;
       end;
      end;
     end
   end;
end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox1CloseUp(
  Sender: TObject);
begin
        dmafiliaciones.tbltipos_documentos.Refresh;
end;

procedure Tfrmafiliacion_independientes.DateTimePicker1Change(Sender: TObject);
begin
        tblafiliados.edit;
        tblafiliadosfec_radicacion.Value:=DateTimePicker1.date;
end;

procedure Tfrmafiliacion_independientes.DateTimePicker2Change(Sender: TObject);
begin
        tblafiliados.edit;
        tblafiliadosfec_nacimiento.Value:=DateTimePicker2.date;
end;

procedure Tfrmafiliacion_independientes.dbldepartamentosClick(Sender: TObject);
begin
        dmafiliaciones.Qryciudades.Active:=false;
        dmafiliaciones.Qryciudades.Params[0].AsString := tblafiliadoscod_departamento_res.text;
        dmafiliaciones.Qryciudades.ExecSQL;
        dmafiliaciones.Qryciudades.Active:=true;
end;

procedure Tfrmafiliacion_independientes.dblciudadesClick(Sender: TObject);
begin
        dmafiliaciones.qrybarrios.Active:=false;
        dmafiliaciones.qrybarrios.Params[0].AsString := tblafiliadoscod_departamento_res.text;
        dmafiliaciones.qrybarrios.Params[1].AsString := tblafiliadoscod_ciudad_res.text;
        dmafiliaciones.qrybarrios.ExecSQL;
        dmafiliaciones.qrybarrios.Active:=true;
end;

procedure Tfrmafiliacion_independientes.DateTimePicker5Change(Sender: TObject);
begin
        qrybeneficiarios.edit;
        qrybeneficiariosfec_nacimiento.Value:=DateTimePicker5.date;
end;

procedure Tfrmafiliacion_independientes.qryafiliados_empresasBeforeInsert(
  DataSet: TDataSet);
begin
        afiliados_empresas_insert:=true;
end;

procedure Tfrmafiliacion_independientes.qryafiliados_empresasBeforeCancel(
  DataSet: TDataSet);
begin
        afiliados_empresas_insert:=false;

end;

procedure Tfrmafiliacion_independientes.Button3Click(Sender: TObject);
begin
        frmips:=Tfrmips.create(Application);
              try
                      if tblafiliadosCOD_TIPO_AFIL.Text = 'C' then
                        frmips.caption:='[IPS]- COTIZANTE IND'
                      else
                        frmips.caption:='[IPS]- BENEF. IND';

                      frmips.eddepto.text:=tblafiliadoscod_departamento_res.Text;
                      frmips.edmun.text:=tblafiliadoscod_ciudad_res.Text;
                      frmips.show;
              except
                      frmips.free;
              end;
end;


procedure Tfrmafiliacion_independientes.btnmodo_insertarClick(Sender: TObject);
begin
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('Select * '+
      'From dbo.afiliados_empresas '+
      'Where afiliados_empresas.tip_documento_afi = :"tip_documento" AND '+
      'afiliados_empresas.num_documento_afi = :"num_documento" AND '+
      'afiliados_empresas.cod_estado = '+#39+'A'+#39 );
      Query1.Params[0].AsString := tblafiliadostip_documento.text;
      Query1.Params[1].AsString := tblafiliadosnum_documento.text;
      Query1.Open;

      qrybeneficiarios.Active:=false;
      qrybeneficiarios.Params[0].AsString := tblafiliadostip_documento.text;
      qrybeneficiarios.Params[1].AsString := tblafiliadosnum_documento.text;
      qrybeneficiarios.open;

      if (query1.RecordCount = 0) and (qrybeneficiarios.recordcount = 1) then
      begin
               begin
                    Query1.SQL.Clear;
                    Query1.SQL.Add('Update afiliados Set cod_estado = '+#39+'I'+#39 );
                    Query1.SQL.Add('Where afiliados.tip_documento = :"tip_documento" AND '+
                                   'afiliados.num_documento = :"num_documento"');
                    Query1.Params[0].AsString := tblafiliadostip_documento.text;
                    Query1.Params[1].AsString := tblafiliadosnum_documento.text;
                    Query1.ExecSQL;
                    showmessage('El afiliado esta en estado inactivo');
              end;
      end
      else
          Query1.close;
        tblafiliados.Insert;
        frmafiliacion_independientes.tblafiliadoscod_tipo_afil.text:='C';
        frmafiliacion_independientes.tblafiliadoscod_estado.text:='A';
        frmafiliacion_independientes.tblafiliadoscod_oficina.text:=gb_oficina;
        frmafiliacion_independientes.tblafiliadoscod_regional.text:=gb_regional;
        DateTimePicker1.Date:=frmafiliaciones.fecha_hoy();
        DateTimePicker2.Date:=frmafiliaciones.fecha_hoy();
        DateTimePicker3.Date:=frmafiliaciones.fecha_hoy();
       // DateTimePicker4.text:=frmafiliaciones.fecha_actual();
        DBLookupComboBox2.SetFocus();
end;

procedure Tfrmafiliacion_independientes.qryrelacion_afiliadosPostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
        if pos('Key violation',e .message)>0 then
                raise exception.Create('El registro ya existe');
end;

procedure Tfrmafiliacion_independientes.Button20Click(Sender: TObject);
begin
      DBNavigator.VisibleButtons:=[nbPost];
      tblafiliados.Insert;
      tblafiliadoscod_tipo_afil.text:='C';
      tblafiliadoscod_estado.text:='A';
      tblafiliadoscod_oficina.text:=gb_oficina;
      tblafiliadoscod_regional.text:=gb_regional;
      DateTimePicker1.Date:=frmafiliaciones.fecha_hoy();
      DateTimePicker2.Date:=frmafiliaciones.fecha_hoy();
      DateTimePicker3.Date:=frmafiliaciones.fecha_hoy();
      //DateTimePicker4.Date:=frmafiliaciones.fecha_actual();
      tblafiliadosfec_radicacion.Value:=frmafiliacion_independientes.DateTimePicker1.Date;
      tblafiliadosfec_nacimiento.Value:=frmafiliacion_independientes.DateTimePicker2.Date;
      tblafiliadosfec_afiliacion_sis.Value:=frmafiliacion_independientes.DateTimePicker3.Date;
      tblafiliadosfec_afiliacion_uni.Value:=strtodate(frmafiliacion_independientes.DateTimePicker4.text);
     // PageControl1.ActivePage:=frmafiliacion_independientes.TabSheet2;
end;

procedure Tfrmafiliacion_independientes.DateTimePicker6Change(Sender: TObject);
begin
qrybeneficiarios.edit;
qrybeneficiariosfec_afiliacion_sis.Value:=DateTimePicker6.date;
end;

procedure Tfrmafiliacion_independientes.DateTimePicker7Change(Sender: TObject);
begin
     qrybeneficiarios.edit;
     qrybeneficiariosfec_afiliacion_uni.Value:=DateTimePicker7.date;
    
    end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox9Click(Sender: TObject);
begin
        dmafiliaciones.Qryciudades.Active:=false;
        dmafiliaciones.Qryciudades.Params[0].AsString := qrybeneficiarioscod_departamento_res.text;
        dmafiliaciones.Qryciudades.ExecSQL;
        dmafiliaciones.Qryciudades.Active:=true;
end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox10Click(Sender: TObject);
begin
        dmafiliaciones.qrybarrios.Active:=false;
        dmafiliaciones.qrybarrios.Params[0].AsString := qrybeneficiarioscod_departamento_res.text;
        dmafiliaciones.qrybarrios.Params[1].AsString := qrybeneficiarioscod_ciudad_res.text;
        dmafiliaciones.qrybarrios.ExecSQL;
        dmafiliaciones.qrybarrios.Active:=true;
end;

procedure Tfrmafiliacion_independientes.DBEdit23KeyPress(Sender: TObject;
  var Key: Char);
begin
     frmafiliaciones.numerosKeypress(dbedit23,Key);
end;

procedure Tfrmafiliacion_independientes.AppMessage(var Msg: TMsg;
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
        if ((Screen.ActiveControl) is TComboBox) then
             Msg.wParam := VK_TAB;
        end;

end;

procedure Tfrmafiliacion_independientes.DBEdit31KeyPress(Sender: TObject;
  var Key: Char);
begin
     frmafiliaciones.letrasKeypress(dbedit31,Key);
end;

procedure Tfrmafiliacion_independientes.DBEdit32KeyPress(Sender: TObject;
  var Key: Char);
begin
     frmafiliaciones.letrasKeypress(dbedit32,Key);
end;

procedure Tfrmafiliacion_independientes.DBEdit28KeyPress(Sender: TObject;
  var Key: Char);
begin
     frmafiliaciones.letrasKeypress(dbedit28,Key);   
end;

procedure Tfrmafiliacion_independientes.DBEdit29KeyPress(Sender: TObject;
  var Key: Char);
begin
     frmafiliaciones.letrasKeypress(dbedit29,Key);   
end;

procedure Tfrmafiliacion_independientes.DBEdit6KeyPress(Sender: TObject;
  var Key: Char);
begin
//     frmafiliaciones.numerosKeypress(dbedit6,Key);
end;

procedure Tfrmafiliacion_independientes.DBEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.numerosKeypress(dbedit4,Key);
end;

procedure Tfrmafiliacion_independientes.DBEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
      frmafiliaciones.numerosKeypress(dbedit3,Key);
end;

procedure Tfrmafiliacion_independientes.DBEdit20KeyPress(Sender: TObject;
  var Key: Char);
begin
     frmafiliaciones.numerosKeypress(dbedit20,Key);
end;

procedure Tfrmafiliacion_independientes.DBEdit12KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.numerosKeypress(dbedit12,Key);
end;

procedure Tfrmafiliacion_independientes.DBEdit13KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.numerosKeypress(dbedit13,Key);
end;

procedure Tfrmafiliacion_independientes.DBEdit14KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.numerosKeypress(dbedit14,Key);
end;

procedure Tfrmafiliacion_independientes.DBEdit26KeyPress(Sender: TObject;
  var Key: Char);
begin
         frmafiliaciones.numerosKeypress(dbedit6,Key);
end;

procedure Tfrmafiliacion_independientes.DBEdit33KeyPress(Sender: TObject;
  var Key: Char);
begin
      //  frmafiliaciones.numerosKeypress(dbedit33,Key);
end;

procedure Tfrmafiliacion_independientes.DBEdit34KeyPress(Sender: TObject;
  var Key: Char);
begin
       //frmafiliaciones.numerosKeypress(dbedit34Key);
end;

procedure Tfrmafiliacion_independientes.DBEdit5KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.numerosKeypress(dbedit5,Key);
end;

procedure Tfrmafiliacion_independientes.DBEdit7KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.letrasKeypress(dbedit7,Key);
end;

procedure Tfrmafiliacion_independientes.DBEdit8KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.letrasKeypress(dbedit8,Key);
end;

procedure Tfrmafiliacion_independientes.DBEdit9KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.letrasKeypress(dbedit9,Key);
end;

procedure Tfrmafiliacion_independientes.DBEdit10KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.letrasKeypress(dbedit10,Key);
end;

procedure Tfrmafiliacion_independientes.DBEdit17KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.numerosKeypress(dbedit17,Key);
end;

procedure Tfrmafiliacion_independientes.DBEdit18KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.numerosKeypress(dbedit18,Key);
end;

procedure Tfrmafiliacion_independientes.DBEdit27KeyPress(Sender: TObject;
  var Key: Char);
begin
     frmafiliaciones.numerosKeypress(dbedit27,Key);
end;

procedure Tfrmafiliacion_independientes.Button6Click(Sender: TObject);
begin
     frmeps:=Tfrmeps.create(Application);
              try
                      frmeps.Caption:='Seleccion de la eps para el Beneficiario independiente';
                      frmeps.show;

              except
                      frmeps.free;
              end;
end;

procedure Tfrmafiliacion_independientes.DBEdit24KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.numerosKeypress(dbedit24,Key);
end;

procedure Tfrmafiliacion_independientes.tblafiliados1AfterInsert(
  DataSet: TDataSet);
begin
     afiliados_insert:=true;
end;

procedure Tfrmafiliacion_independientes.DateTimePicker2Exit(Sender: TObject);
begin
    if frmafiliaciones.mayor_hoy(tblafiliadosfec_nacimiento)=true then
     begin
          DateTimePicker2.SetFocus;
     end
     else
      if  (round(YearSpan(gb_fec_hoy,DateTimePicker2.Date))) > 110 then
      begin
      ShowMessage('Cotizante No puede Tener Mas de 110 años  de edad');
      DateTimePicker2.SetFocus;
      end
      else
      if (DBLookupComboBox2.KeyValue = 'NIT') then
        begin
        ShowMessage('Cotizante No puede Tener Identificacion Tributaria');
        DBLookupComboBox2.SetFocus;
        end
        else
             if  (round(YearSpan(gb_fec_hoy,DateTimePicker2.Date))) <= 18 then
             begin
                if (DBLookupComboBox2.KeyValue = 'CC') or (DBLookupComboBox2.KeyValue = 'CE') then
                begin
                ShowMessage('Cotizante Menor de Edad y con Cedula de Ciudadania');
                DBLookupComboBox2.SetFocus;
                end;
             end
             else
             if  (round(YearSpan(gb_fec_hoy,DateTimePicker2.Date))) > 18 then
             begin
                if (DBLookupComboBox2.KeyValue = 'RC') or (DBLookupComboBox2.KeyValue = 'TI') then
                begin
                ShowMessage('Cotizante Mayor de  de Edad debe Poseer Cedula de Ciudadania');
                DBLookupComboBox2.SetFocus;
                end;
             end;

end;

procedure Tfrmafiliacion_independientes.DateTimePicker1Exit(Sender: TObject);
begin
     if frmafiliaciones.mayor_hoy(tblafiliadosfec_radicacion)=true then
     begin
          DateTimePicker1.SetFocus;
     end
     else
     if gb_fec_eps > DateTimePicker1.DateTime then
        begin
        ShowMessage('La fecha  de Radicacion  debe ser mayor a a fecha de autorizacion de  la EPS');
        DateTimePicker1.SetFocus;
        end
end;

procedure Tfrmafiliacion_independientes.DateTimePicker3Exit(Sender: TObject);
begin
        if frmafiliaciones.mayor_hoy(tblafiliadosfec_afiliacion_sis)=true then
     begin
          DateTimePicker3.SetFocus;
     end
     else
     if DateTimePicker2.Date > DateTimePicker3.Date then
      begin
      ShowMessage('La fecha de Afiliacion al sistema general de seguridad social debe ser mayor a la fecha  de nacimiento');
      DateTimePicker3.SetFocus;
      end
      else
       SEMANAS_COTIZADAS;


end;

procedure Tfrmafiliacion_independientes.DateTimePicker5Exit(Sender: TObject);
begin
     if frmafiliaciones.mayor_hoy(qrybeneficiariosfec_nacimiento)=true then
     begin
          DateTimePicker5.SetFocus;
     end
     else
     if  (round(YearSpan(gb_fec_hoy,DateTimePicker5.Date))) > 110 then
      begin
      ShowMessage('Beneficiario  No puede Tener Mas de 110 años  de edad');
      DateTimePicker5.SetFocus;
      end
      else
     // cuando el usuario es  conyuge o companero permante
     if DBLookupComboBox17.KeyValue = 'C' then
       begin
       if (DateTimePicker5.DateTime) >= (gb_fec_hoy - 4745) then
           begin
            ShowMessage('EL CONYUGUE O COMPAÑERO(A) PERMANENTE NO PUEDE SER MENOR DE 13 AÑOS DE EDAD');
            DateTimePicker5.SetFocus;
           end
           else
           // Verifica Menor de edad con  Cedula
           if  (round(YearSpan(gb_fec_hoy,DateTimePicker5.Date))) < 18 then
             begin
                if (DBLookupComboBox4.KeyValue = 'CC') or (DBLookupComboBox4.KeyValue = 'CE') then
                begin
                ShowMessage('Beneficiario Menor de Edad y con Cedula de Ciudadania');
                DBLookupComboBox4.SetFocus;
                end;
             end
             else
              if  (round(YearSpan(gb_fec_hoy,DateTimePicker5.Date))) > 18 then
             begin
                if (DBLookupComboBox4.KeyValue = 'RC') or (DBLookupComboBox4.KeyValue = 'TI') then
                begin
                ShowMessage('Beneficiario Mayor de Edad debe Poseer Cedula de Ciudadania');
                DBLookupComboBox4.SetFocus;
                end;
             end;

           end
         ELSE
       if DBLookupComboBox17.KeyValue = 'H' then
       begin
       if (DateTimePicker5.Date) < strtodate(DBEdit39.text) then
           begin
            ShowMessage('La Fecha  de Nacimiento de los Hijos debe ser menor  a la fecha de Nacimiento del Cotizante  ' + datetimetostr(DateTimePicker2.DateTime));
            DateTimePicker5.SetFocus;
           end
           else
           if  (round(YearSpan(gb_fec_hoy,DateTimePicker5.Date))) < 18 then
             begin
                if (DBLookupComboBox4.KeyValue = 'CC') or (DBLookupComboBox4.KeyValue = 'CE') then
                begin
                ShowMessage('Beneficiario Menor de Edad No debe Poseer Cedula de Ciudadania');
                DBLookupComboBox4.SetFocus;
                end;
             end
             else
              if  (round(YearSpan(gb_fec_hoy,DateTimePicker5.Date))) > 18 then
             begin
                if (DBLookupComboBox4.KeyValue = 'RC') or (DBLookupComboBox4.KeyValue = 'TI') then
                begin
                ShowMessage('Beneficiario Mayor de Edad debe Poseer Cedula de Ciudadania');
                DBLookupComboBox4.SetFocus;
                end;
             end;



       end
       else
       if DBLookupComboBox17.KeyValue = 'P' then
       begin
       if (DateTimePicker5.DateTime) > (DateTimePicker2.DateTime) then
           begin
            ShowMessage('La Fecha  de Nacimiento de los Padres  debe ser Mayor  a la del Cotizante');
            DateTimePicker5.SetFocus;
           end;
       end
       else
           if  (round(YearSpan(gb_fec_hoy,DateTimePicker5.Date))) <= 18 then
             begin
                if (DBLookupComboBox4.KeyValue = 'CC') or (DBLookupComboBox4.KeyValue = 'CE') then
                begin
                ShowMessage('Beneficiario Menor de Edad y con Cedula de Ciudadania');
                DBLookupComboBox4.SetFocus;
                end;
             end
             else
              if  (round(YearSpan(gb_fec_hoy,DateTimePicker5.Date))) > 18 then
             begin
                if (DBLookupComboBox4.KeyValue = 'RC') or (DBLookupComboBox4.KeyValue = 'TI') then
                begin
                ShowMessage('Beneficiario Mayor de  de Edad debe Poseer Cedula de Ciudadania');
                DBLookupComboBox4.SetFocus;
                end;
             end;

// fecha  de  ingreso de  beneficiario
    if DateTimePicker5.Date > DateTimePicker6.Date then
    begin
    DateTimePicker6.Date := DateTimePicker5.Date;
    end;
    if DateTimePicker5.Date > DateTimePicker7.Date then
    begin
    DateTimePicker7.Date := DateTimePicker5.Date;
    end;


end;

procedure Tfrmafiliacion_independientes.DateTimePicker6Exit(Sender: TObject);
begin
    if  DateTimePicker6.Date > gb_fec_hoy then
    begin
        DateTimePicker6.SetFocus;
     end
     else
     if DateTimePicker7.Date < DateTimePicker6.Date then
      begin
      ShowMessage('La fecha de Afiliacion al sistema general de seguridad social debe ser mayor a la fecha  de nacimiento');
      DateTimePicker6.SetFocus;
      end
      ELSE
      begin
       DBEdit27.text  := floattostr(roundto(WeekSpan(DateTimePicker7.date, DateTimePicker6.Date ),0));
       DBEdit27.SetFocus;
       qrybeneficiarios.edit;
       qrybeneficiariosNUM_SEMANA_COTIZA.Value:= strtoint(DBEdit27.text);
      end;

end;

procedure Tfrmafiliacion_independientes.DBGrid1ColExit(Sender: TObject);
begin
        if DBGrid1.SelectedField.FieldName='nom_adicional' then
        begin
             dbedit7.setfocus;
        end;
end;

procedure Tfrmafiliacion_independientes.DBEdit6Exit(Sender: TObject);
begin
  if trim(DBEdit6.Text) = '' then
  begin
  ShowMessage('Digite el numero del Formato de Afiliacion');
  DBEdit6.SetFocus;
  exit;
  end;
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('Select * '+
      'From afiliados '+
      'Where afiliados.num_formato_afil = '+#39+trim(DBEdit6.Text)+#39+' and cod_modalidad_tra <>'+#39+'D'+#39);
      Query1.Open;

      if query1.RecordCount >= 1 then
      begin
           showmessage('Este número de Afiliacion ya existe ');
           dbedit6.setfocus;
      end;
end;

procedure Tfrmafiliacion_independientes.PageControl3Change(Sender: TObject);
begin

     if (PageControl3.Activepage = TabSheet1) then
        begin
                  dmafiliaciones.Qryciudades.Active:=false;
                  dmafiliaciones.Qryciudades.Params[0].AsString := tblafiliadoscod_departamento_res.text;
                  dmafiliaciones.Qryciudades.Active:=true;
                  dmafiliaciones.qrybarrios.Active:=false;
                  dmafiliaciones.qrybarrios.Params[0].AsString := tblafiliadoscod_departamento_res.text;
                  dmafiliaciones.qrybarrios.Params[1].AsString := tblafiliadoscod_ciudad_res.text;
                  dmafiliaciones.Qrybarrios.Active:=true;
        end;
end;

procedure Tfrmafiliacion_independientes.DBEdit31Exit(Sender: TObject);
begin
     IF trim(DBEdit31.text)='' then
     begin
           showmessage('Este campo debe ser diligenciado');
           DBEdit31.setfocus;
     end;

end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox2Exit(Sender: TObject);
begin
if DBLookupComboBox2.Text = '' then
  begin
  ShowMessage('Selecione  el  tipo de  Documento del Afiliado Cotizante');
  DBLookupComboBox2.SetFocus;
  end;

end;

procedure Tfrmafiliacion_independientes.dblsexoExit(Sender: TObject);
begin
if dblsexo.Text = '' then
  begin
  ShowMessage('Selecione  el  tipo de Sexo');
  dblsexo.SetFocus;
  end
  else
  tblafiliados.Edit;
  tblafiliadoscod_discapacidad.Value:= 'N';

end;

procedure Tfrmafiliacion_independientes.DBEdit28Exit(Sender: TObject);
begin
if trim(DBEdit28.Text) = '' then
  begin
  ShowMessage('Debe  Digitar  el  primer nombre del afiliado');
  DBEdit28.SetFocus;
  end;

end;

procedure Tfrmafiliacion_independientes.dblestratoExit(Sender: TObject);
begin
if trim(dblestrato.Text) = '' then
  begin
  ShowMessage('Selecione el estracto  socioeconomico del afiliado');
  dblestrato.SetFocus;
  end;

end;

procedure Tfrmafiliacion_independientes.dblestadocivilExit(Sender: TObject);
begin
if trim(dblestadocivil.Text) = '' then
  begin
  ShowMessage('Selecione el estado Civil del Afiliado');
  dblestadocivil.SetFocus;
  end;

end;

procedure Tfrmafiliacion_independientes.dblmodalidadtrabajoExit(Sender: TObject);
begin
if trim(dblmodalidadtrabajo.Text) = '' then
  begin
  ShowMessage('Selecione la Modalidad de Trabajo');
  dblmodalidadtrabajo.SetFocus;
  exit;
 end
 else
 begin
 TabSheet3.Caption := LowerCase(dblmodalidadtrabajo.text);
 label26.Caption :=  'INGRESO DE ' + dblmodalidadtrabajo.text
 end;
 end;

procedure Tfrmafiliacion_independientes.dbldepartamentosExit(Sender: TObject);
begin
if  dbldepartamentos.Text = '' then
   begin
   ShowMessage('Selecione el departamento donde  Reside el Afiliado');
   dbldepartamentos.SetFocus;
   end;

end;

procedure Tfrmafiliacion_independientes.dblciudadesExit(Sender: TObject);
begin
if  dblciudades.Text = '' then
   begin
   ShowMessage('Selecione el Municipio donde  Reside el afiliado cotizante');
   dbldepartamentos.SetFocus;
   end;

end;

procedure Tfrmafiliacion_independientes.dblbarriosExit(Sender: TObject);
begin
if  dblbarrios.Text = '' then
   begin
   ShowMessage('Selecione El  barrio o sector  donde  reside  el afiliado');
   dbldepartamentos.SetFocus;
   end;


end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox3Exit(Sender: TObject);
begin
if  DBLookupComboBox3.Text = '' then
   begin
   ShowMessage('Selecione La zona donde  reside  el afiliado');
   DBLookupComboBox3.SetFocus;
   end;

end;

procedure Tfrmafiliacion_independientes.DBEdit11Exit(Sender: TObject);
begin
if  DBEdit11.Text = '' then
   begin
   ShowMessage('Digite  la  direccion donde Reside el Afiliado');
   DBEdit11.SetFocus;
   end;


end;

procedure Tfrmafiliacion_independientes.DBEdit15Exit(Sender: TObject);
var log,i : integer;
arroba : string;
encontro : Boolean;
begin
log := 0;
i := 0;
encontro := false;
if  DBEdit15.Text <> '' then
   begin
   log := Length(DBEdit15.Text);
     for i := 1 to log do
     begin

       arroba := copy(DBEdit15.Text,i,1);
        if copy(DBEdit15.Text,i,1) = '@' then
        begin
        encontro := true;
        end;
     end;
     if  encontro = false then
     begin
     ShowMessage('Esta  no es una  direccion de  correo Electronico ej : softeps@hotmail.com ');
     DBEdit15.SetFocus;
     end;
   end;
 end;
procedure Tfrmafiliacion_independientes.DBEdit12Exit(Sender: TObject);
begin
if  DBEdit12.Text = '' then
   begin
   ShowMessage('Digite  el Numero Telefonico  del Afiliado ');
   DBEdit12.SetFocus;
   end
   else
   if Length(DBEdit12.Text) <= 6 then
   begin
   ShowMessage('El numero Telefonico debe ser minimo de 6 digitos ¡Digitelo Nuevamente!');
    DBEdit12.SetFocus;
   end;

end;

procedure Tfrmafiliacion_independientes.dblescolaridadExit(Sender: TObject);
begin
if  dblescolaridad.Text = '' then
   begin
   ShowMessage('Selecione  el tipo de escolaridad que  tiene el afiliado');
   dblescolaridad.SetFocus;
   end;

end;

procedure Tfrmafiliacion_independientes.dblprofesionExit(Sender: TObject);
begin
if  dblprofesion.Text = '' then
   begin
   ShowMessage('Selecione  el tipo de Profesion que  tiene el afiliado');
   dblprofesion.SetFocus;
   end
   else

    if frmafiliacion_independientes.DBNavigator3.Visible = false then
        Button9.Click;
end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox1Exit(Sender: TObject);
begin
if  DBLookupComboBox1.Text = '' then
   begin
   ShowMessage('Selecione  el Tipo de documento del Asesor Comercial que realizo la afiliacion');
   DBLookupComboBox1.SetFocus;
   end;
end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox5Exit(Sender: TObject);
begin
if  DBLookupComboBox5.Text = '' then
   begin
   ShowMessage('Selecione  el tipo de documento de la EPS Anterior');
   DBLookupComboBox5.SetFocus;
   end;

end;

procedure Tfrmafiliacion_independientes.DBEdit3Exit(Sender: TObject);
begin
if  DBEdit3.Text = '' then
   begin
   ShowMessage('Digite el numero de Documento de la EPS Anterior');
   DBEdit3.SetFocus;
   end
   else
   qryeps.close;
   qryeps.sql.clear;
   qryeps.sql.add('select * from dbo.eps where tip_documento = :"tipo" and num_documento = :"numero"');
   qryeps.PARAMS[0].ASSTRING := DBLookupComboBox5.KeyValue;
   qryeps.PARAMS[1].ASSTRING := DBEdit3.Text;

   qryeps.open;
   if qryeps.RecordCount = 1 then
   begin
   Button2.Enabled := false;
   Edit6.Text := qryepsNOM_EPS.Value;
   end
   else
   if qryeps.RecordCount = 0 then
   begin
   ShowMessage('Seleccion de la eps para el Cotizante');
   Button2.Enabled := false;
                    frmeps:=Tfrmeps.create(Application);
              try
                      frmeps.Caption:='Seleccion de la eps para independientes';
                      frmeps.show;

              except
                      frmeps.free;
              end;

   end;




end;

procedure Tfrmafiliacion_independientes.DBEdit20Exit(Sender: TObject);
begin
if  DBEdit20.Text = '' then
   begin
   ShowMessage('Digite El total de semanas cotizadas  en la Anterior EPS');
   DBEdit20.SetFocus;
   end
   else
    if  DBEdit20.Text < '104' then
    begin
    ShowMessage('Las Semanas Cotizadas del Cotizante Beben Superar las 104 semanas  en la Anterior EPS');
    RadioGroup1.SetFocus;
    end



end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox4Exit(Sender: TObject);
begin
if  DBLookupComboBox4.Text = '' then
   begin
   ShowMessage('Selecione el tipo de Documento');
   DBLookupComboBox4.SetFocus;
   end
   else
   if (DBLookupComboBox4.KeyValue = 'NIT') then
        begin
        ShowMessage('Beneficiario  No puede Tener Identificacion Tributaria');
        DBLookupComboBox4.SetFocus;
        end
    else DBEdit5.SetFocus;

end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox6Exit(Sender: TObject);
begin
if  DBLookupComboBox6.Text = '' then
   begin
   ShowMessage('Selecion el Sexo');
   DBLookupComboBox6.SetFocus;
   end
   else
   dlbtipoafiliado.Enabled := true;
   if  DBLookupComboBox17.KeyValue = 'C' then
   begin
           if dblsexo.KeyValue = 'F' then
       begin
            if DBLookupComboBox6.KeyValue = 'F' then
            begin
                if MessageDlg('El cotizante y La  compañera Permanente Tiene el mismo Sexo Femenino  ¿ Desea Ingresarlo ?', mtInformation, [mbYes, mbNo], 1) = mryes then
                begin
                end
                else
                DBLookupComboBox6.SetFocus;
                end;
       end
       else
       if dblsexo.KeyValue = 'M' then
       begin
            if DBLookupComboBox6.KeyValue = 'M' then
            begin
             if MessageDlg('El cotizante y La  compañero Permanente Tiene el mismo Sexo Masculino  ¿ Desea Ingresarlo ?', mtInformation, [mbYes, mbNo], 1) = mryes then
                begin

                end
                else
                DBLookupComboBox6.SetFocus;
            end;
       end;



      end;





end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox8Exit(Sender: TObject);
begin
if  DBLookupComboBox8.Text = '' then
   begin
   ShowMessage('Selecione el tipo de Discapacidad');
   DBLookupComboBox8.SetFocus;
   end;

end;



procedure Tfrmafiliacion_independientes.dlbtipoafiliadoExit(Sender: TObject);
begin
if  (dlbtipoafiliado.Text = '')  then
   begin
   ShowMessage('Selecione el tipo de Afiliado');
   dlbtipoafiliado.SetFocus;
   end
   else
   if dlbtipoafiliado.KeyValue = 'B' then
   begin
     if (DBLookupComboBox17.KeyValue = 'C') then
     begin
            if (dlbtipoafiliado.KeyValue = 'C') or (dlbtipoafiliado.KeyValue = 'A') then
            begin
            ShowMessage(LowerCase(DBLookupComboBox17.Text +'  No pude Ser Cotizante  O Adiconal'));
            dlbtipoafiliado.SetFocus;
            end
            else
            validar_grupos;
        end
        else
        if (DBLookupComboBox17.KeyValue = 'H') then
        begin
            if (dlbtipoafiliado.KeyValue = 'C') or (dlbtipoafiliado.KeyValue = 'A') then
            begin
            ShowMessage(LowerCase(DBLookupComboBox17.Text +'  No pude Ser Cotizante  O Adiconal'));
            dlbtipoafiliado.SetFocus;
            end
            else
            validar_grupos;

        end
        else
        if (DBLookupComboBox17.KeyValue = 'P') then
        begin
            if (dlbtipoafiliado.KeyValue = 'C')  then
            begin
            ShowMessage(LowerCase(DBLookupComboBox17.Text +'  No pude Ser Cotizante  O Adiconal'));
            dlbtipoafiliado.SetFocus;
            end
            else
            validar_grupos;
        end;
   end
   else
   if dlbtipoafiliado.KeyValue = 'A' then
   begin
   ingreso_adicional;
   end;
end;

procedure Tfrmafiliacion_independientes.DBEdit7Exit(Sender: TObject);
begin
if  trim(DBEdit7.text)= '' then
   begin
   ShowMessage('Digite El Primer Apellido del Afiliado');
   DBEdit7.SetFocus;
   end;


end;

procedure Tfrmafiliacion_independientes.DBEdit9Exit(Sender: TObject);
begin
if  trim(DBEdit9.text)= '' then
   begin
   ShowMessage('Digite El Segundo Apellido del Afiliado');
   DBEdit9.SetFocus;
   end;

end;

procedure Tfrmafiliacion_independientes.Button7Click(Sender: TObject);
begin
     frmempresas:=Tfrmempresas.create(Application);
              try
                frmempresas.caption := 'Empresas Activas Independientes';
                      frmempresas.show;
                      except
                      frmempresas.free;
              end;
end;

procedure Tfrmafiliacion_independientes.DBEdit5Exit(Sender: TObject);
begin
      if  DBEdit5.Text = '' then
         begin
         ShowMessage('Selecione el Numero de Documento del Afiliado Beneficiario');
         DBEdit5.SetFocus;
         end;
end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox17Exit(Sender: TObject);
begin
        if  DBLookupComboBox17.KeyValue = '' then
         begin
         ShowMessage('Selecione el Parentesco');
         DBLookupComboBox17.SetFocus;
         exit;
         end;

         if  DBLookupComboBox17.KeyValue <> '' then
         begin
         if DBLookupComboBox17.KeyValue = 'P' then
          begin
           if (DBLookupComboBox4.KeyValue = 'RC') or (DBLookupComboBox4.KeyValue = 'TI') then
                begin
                ShowMessage('Padres del Beneficiario No pueden Tener Registros Civil o Targeta de Identidad');
                DBLookupComboBox4.SetFocus;
              end;
           end
           else

         DBLookupComboBox18.Enabled := true;
         //if DBLookupComboBox17.KeyValue <> 'O' then
         //begin
         qryrelacion_afiliados.Edit;
         qryrelacion_afiliadoscod_relacion_adi.Value:='1';
        // DBLookupComboBox18.Enabled := false;
        // DateTimePicker5.SetFocus;
        // end;
         end;

end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox18Exit(Sender: TObject);
begin
        if  DBLookupComboBox18.Text = '' then
         begin
         ShowMessage('Selecione la relacion Adicional');
         DBLookupComboBox18.SetFocus;
         end;
end;

procedure Tfrmafiliacion_independientes.qryrelacion_afiliadosBeforeCancel(
  DataSet: TDataSet);
begin
        qrybeneficiarios.cancel;
        DBLookupComboBox4.setfocus;
end;

procedure Tfrmafiliacion_independientes.Button8Click(Sender: TObject);
begin

        qrybeneficiarios.close;
        relacion_afiliados_insert:=false;
        qryrelacion_afiliados.Cancel;
        btngrabar.Visible := false;
        btnnuevo.Visible := true;
end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox10Exit(Sender: TObject);
begin
if  DBLookupComboBox10.Text = '' then
   begin
   ShowMessage('Selecione La Ciudad donde  Reside el Afiliado Beneficiario');
   DBLookupComboBox10.SetFocus;
   end;
end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox9Exit(Sender: TObject);
begin
if  DBLookupComboBox9.Text = '' then
   begin
   ShowMessage('Selecione el departamento donde  Reside el Afiliado Beneficiario');
   DBLookupComboBox9.SetFocus;
   end;

end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox11Exit(Sender: TObject);
begin
if  DBLookupComboBox11.Text = '' then
   begin
   ShowMessage('Selecione El Barrio donde  Reside el Afiliado Beneficiario');
   DBLookupComboBox11.SetFocus;
   end;


end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox7Exit(Sender: TObject);
begin
if  DBLookupComboBox7.Text = '' then
   begin
   ShowMessage('Selecione la Zona donde  Reside el Afiliado Beneficiario');
   DBLookupComboBox7.SetFocus;
   end;

end;

procedure Tfrmafiliacion_independientes.DBEdit16Exit(Sender: TObject);
begin
if  DBEdit16.Text = '' then
   begin
   ShowMessage('Digite La direccion donde  Reside el Afiliado Beneficiario');
   DBEdit16.SetFocus;
   end;


end;

procedure Tfrmafiliacion_independientes.DBEdit17Exit(Sender: TObject);
begin
if  DBEdit17.Text = '' then
   begin
   ShowMessage('Digite El numero Telefonico ');
   DBEdit17.SetFocus;
   end
    else
   if Length(DBEdit17.Text) <= 6 then
   begin
   ShowMessage('El numero Telefonico debe ser minimo de 6 digitos ¡Digitelo Nuevamente!');
    DBEdit17.SetFocus;
   end;



end;

procedure Tfrmafiliacion_independientes.DBEdit36Exit(Sender: TObject);
begin
if  DBEdit36.Text = '' then
   begin
   ShowMessage('Digite La Sucursal de la  Empresa');
   DBEdit36.SetFocus;
   end
   else
   DBEdit35Exit(DBEdit35);

end;

procedure Tfrmafiliacion_independientes.DBGrid2Enter(Sender: TObject);
begin
if  qryafiliados_empresasfec_ingreso_uni.Value <> null   then
  begin
//  DateTimePicker8.Date :=  qryafiliados_empresasfec_ingreso_uni.Value;
  end;
end;
procedure Tfrmafiliacion_independientes.grabar_afiliados_cotizantes;
begin

             try
                   tblafiliados.edit;
                   tblafiliadosfec_radicacion.Value:=DateTimePicker1.date;
                   tblafiliadosfec_afiliacion_sis.Value:=DateTimePicker3.date;
                   tblafiliadosfec_nacimiento.Value:=DateTimePicker2.date;
                   tblafiliadosfec_afiliacion_uni.Value:=strtodate(DateTimePicker4.text);
                   tblafiliados.Post;
                   if usuario_emcontrado = true then
                   qrybeneficiarios.post;
                   qryrelacion_afiliados.Active:=false;

                    qryrelacion_afiliados.ExecSQL;
                    qryrelacion_afiliados.Active:=true;
                    qryrelacion_afiliados.insert;
                    //DBLookupComboBox4.SetFocus();
                    qrybeneficiarios.Active:=false;
                    Qrybeneficiarios.Params[0].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                    Qrybeneficiarios.Params[1].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                    qrybeneficiarios.ExecSQL;
                    qrybeneficiarios.Active:=true;
                    //buscar la ciudad la ciudad
                    dmafiliaciones.Qryciudades.Active:=false;
                    dmafiliaciones.Qryciudades.Params[0].AsString := qrybeneficiarioscod_departamento_res.text;
                    dmafiliaciones.Qryciudades.ExecSQL;
                    dmafiliaciones.Qryciudades.Active:=true;

                    dmafiliaciones.qrybarrios.Active:=false;
                    dmafiliaciones.qrybarrios.Params[0].AsString := dmafiliaciones.qryciudadescod_departamento.text;
                    dmafiliaciones.qrybarrios.Params[1].AsString := dmafiliaciones.qryciudadescod_ciudad.text;
                    dmafiliaciones.qrybarrios.ExecSQL;

                except
                    showmessage('Existe Un Error en la ingreso o Actualizacion Datos');

                end;

end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox18Enter(Sender: TObject);
begin
  if  DBLookupComboBox17.KeyValue = 'C' then
   begin
   qryrelacion_afiliados.Edit;
     qryrelacion_afiliadosCOD_RELACION_ADI.Value:='1';
   end
   else
   if  DBLookupComboBox17.KeyValue = 'T' then
   begin
   qryrelacion_afiliados.Edit;
     qryrelacion_afiliadosCOD_RELACION_ADI.Value:='1';
   end
   else
   if  DBLookupComboBox17.KeyValue = 'H'then
   begin
  qryrelacion_afiliados.Edit;
     qryrelacion_afiliadosCOD_RELACION_ADI.Value:='1';
   end
   else
   if  DBLookupComboBox17.KeyValue = 'P' then
   begin
   qryrelacion_afiliados.Edit;
     qryrelacion_afiliadosCOD_RELACION_ADI.Value:='1';
   end;
end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox22Click(Sender: TObject);
begin
        dmafiliaciones.Qryciudades2.Active:=false;
        dmafiliaciones.qryciudades2.Params[0].AsString := qryafiliados_empresascod_departamento_lab.Value;
        dmafiliaciones.Qryciudades2.ExecSQL;
        dmafiliaciones.Qryciudades2.Active:=true;
end;

procedure Tfrmafiliacion_independientes.DBEdit59Exit(Sender: TObject);
begin
if  DBEdit59.Text = '' then
   begin
   ShowMessage('Digite la Direccion de  la Empresa');
   DBEdit59.SetFocus;
   end;


end;

procedure Tfrmafiliacion_independientes.DBEdit60Exit(Sender: TObject);
begin
if  DBEdit60.Text = '' then
   begin
   ShowMessage('Digite El telefono de la Empresa');
   DBEdit60.SetFocus;
   end
    else
   if Length(DBEdit60.Text) <= 6 then
   begin
   ShowMessage('El numero Telefonico debe ser minimo de 6 digitos ¡Digitelo Nuevamente!');
    DBEdit60.SetFocus;
   end;


end;

procedure Tfrmafiliacion_independientes.DBEdit36KeyPress(Sender: TObject;
  var Key: Char);
begin
 frmafiliaciones.numerosKeypress(dbedit36,Key);
end;

procedure Tfrmafiliacion_independientes.DBEdit35KeyPress(Sender: TObject;
  var Key: Char);
begin
 frmafiliaciones.numerosKeypress(dbedit35,Key);
end;

procedure Tfrmafiliacion_independientes.DBEdit58Exit(Sender: TObject);
begin
if validar_datos_empresa = false then
begin
sueldo := 0;
if  DBEdit58.Text = ''  then
   begin
   ShowMessage('Digite el Salario ');
   DBEdit58.SetFocus;
   end
  else
   if  DBEdit58.Text <> ''  then
   begin


   qryafiliados_empresasval_sueldo_afil.currency := false;
   sueldo := strtofloat(DBEdit58.Text);
   qryafiliados_empresasval_sueldo_afil.currency := true;
     if  validar_salario = false then
      begin
       btngempresa.Click;
      end
     else
       DBEdit58.SetFocus;
     end;
   end;

end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox22Exit(Sender: TObject);
begin
if  DBLookupComboBox22.Text = '' then
   begin
   ShowMessage('Selecione el departamento donde esta  localizda  la  Empresa ');
   DBLookupComboBox22.SetFocus;
   end;

end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox23Exit(Sender: TObject);
begin
if  DBLookupComboBox23.Text = '' then
   begin
   ShowMessage('Selecione el Municipio donde esta  localizda  la  Empresa ');
   DBLookupComboBox22.SetFocus;
   end;

end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox24Exit(Sender: TObject);
begin
if  DBLookupComboBox24.Text = '' then
   begin
   ShowMessage('Selecione La zona donde esta  localizda  la  Empresa ');
   DBLookupComboBox24.SetFocus;
   end;

end;

procedure Tfrmafiliacion_independientes.FormActivate(Sender: TObject);
begin
Button9.Enabled := true;
end;

procedure Tfrmafiliacion_independientes.btnnuevoClick(Sender: TObject);
begin
//DBNavigator1.BtnClick(nbInsert);
btnnuevo.Visible := false;
btngrabar.Visible := true;
end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox15Exit(Sender: TObject);
begin
if  DBLookupComboBox15.Text = '' then
   begin
   ShowMessage('Selecione  el tipo de documento de la EPS Anterior');
   DBLookupComboBox15.SetFocus;
   end;

end;

procedure Tfrmafiliacion_independientes.DBEdit24Exit(Sender: TObject);
begin
if  DBEdit24.Text = '' then
   begin
   ShowMessage('Digite el numero de Documento de la EPS Anterior');
   DBEdit24.SetFocus;
   end
   else
   qryeps.close;
   qryeps.sql.clear;
   qryeps.sql.add('select * from dbo.eps where tip_documento = :"tipo" and num_documento = :"numero"');
   qryeps.PARAMS[0].ASSTRING := DBLookupComboBox15.KeyValue;
   qryeps.PARAMS[1].ASSTRING := DBEdit24.Text;

   qryeps.open;
   if qryeps.RecordCount = 1 then
   begin
   Button6.Enabled := false;
   DateTimePicker6.Date := DateTimePicker7.Date - 360;
   Edit1.Text := qryepsNOM_EPS.Text;
   end
   else
   if qryeps.RecordCount = 0 then
   begin
   ShowMessage('Seleccion de la eps para el Cotizante');
   Button6.Enabled := true;
                    frmeps:=Tfrmeps.create(Application);
              try
                      frmeps.Caption:='Seleccion de la eps para el Beneficiario independiente';
                      frmeps.show;

              except
                      frmeps.free;
              end;

   end;

end;

procedure Tfrmafiliacion_independientes.DBEdit27Exit(Sender: TObject);
begin
if  DBEdit27.Text = '' then
   begin
   ShowMessage('Digite  el numero de Semanas Cotizadas  en la Anterior EPS');
   DBEdit27.SetFocus;
   end
   else
     if MessageDlg('Desar Grabar el Beneficiario  ?', mtInformation, [mbYes, mbNo], 1) = mryes then
     begin
     btngrabar.Click;
     end
     else
     DBLookupComboBox4.SetFocus;
end;

procedure Tfrmafiliacion_independientes.btncempresaClick(Sender: TObject);
begin

       // qrybeneficiarios.close;
      //  relacion_afiliados_insert:=false;
        qryafiliados_empresas.Cancel;
        btngrabar.Visible := false;
        btncempresa.Visible := true;
      if TabSheet5.TabVisible = false then
      begin
      frmafiliacion_independientes.Close;
      end;

end;

procedure Tfrmafiliacion_independientes.btnnempresaClick(Sender: TObject);
begin
DBNavigator2.BtnClick(nbInsert);
btnnempresa.Visible := false;
btngempresa.Visible := true;

end;

procedure Tfrmafiliacion_independientes.btngempresaClick(Sender: TObject);
begin
if validar_datos_empresa = false then
begin
        if TabSheet5.TabVisible = true then
        begin
        DBNavigator2.BtnClick(nbPost);
        btnnempresa.Visible := true;
        btngempresa.Visible := false;
        TabSheet5.TabVisible := true;
        PageControl3.ActivePage := TabSheet5;
        DBLookupComboBox4.SetFocus;
        end
        else
        begin
      qryrelacion_afiliados.close;
      qryrelacion_afiliados.free;
      qryafiliados_empresas.Cancel;
      qryafiliados_empresas.free;
      qrybeneficiarios.Cancel;
      qrybeneficiarios.free;
      qrynovedades_afiliados.Cancel;
      qrynovedades_afiliados.free;
      tblafiliados.Cancel;
      tblafiliados.Destroy;
      if frmafiliacion_independientes = nil then
      begin
      frmafiliacion_independientes.Free;
      end
      else
      frmafiliacion_independientes.close;


          end;



end;

end;

procedure Tfrmafiliacion_independientes.validar_grupos;
begin
    if dlbtipoafiliado.KeyValue = 'B' then
    begin
             if (DBLookupComboBox17.KeyValue = 'P') then
             begin
             qryvalrealcionafiliados.CLOSE;
             qryvalrealcionafiliados.PREPARE;
             qryvalrealcionafiliados.SQL.CLEAR;
             qryvalrealcionafiliados.SQL.ADD('select relacion_afiliados.* from relacion_afiliados,afiliados');
              qryvalrealcionafiliados.SQL.ADD('where relacion_afiliados.tip_documento_cot = '+#39 + DBEdit67.text +#39 );
              qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.num_documento_cot = ' +#39 + DBEdit68.text +#39);
              qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.tip_documento_ben = afiliados.tip_documento');
              qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.num_documento_ben = afiliados.num_documento');
              qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.cod_parentesco =' +#39+ 'H' +#39);
              qryvalrealcionafiliados.SQL.ADD('and afiliados.cod_tipo_afil = ' +#39+ 'B' +#39);
              qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.fec_exclusion_nov is null');
              qryvalrealcionafiliados.OPEN;

                    if qryvalrealcionafiliados.RecordCount > 0 then
                    begin
                    ShowMessage('El Afiliado cotizante no puede Afiliar a los Padres como Beneficiarios porque Tiene  ' + inttostr(qryvalrealcionafiliados.RecordCount) + ' Hijos Afiliados ');
                    DBLookupComboBox4.SetFocus;
                    end
                    else
                    if qryvalrealcionafiliados.RecordCount = 0 then
                    begin
                            qryvalrealcionafiliados.CLOSE;
                            qryvalrealcionafiliados.PREPARE;
                            qryvalrealcionafiliados.SQL.CLEAR;
                            qryvalrealcionafiliados.SQL.ADD('select relacion_afiliados.* from relacion_afiliados,afiliados');
                            qryvalrealcionafiliados.SQL.ADD('where relacion_afiliados.tip_documento_cot = '+#39 + DBEdit67.text +#39 );
                            qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.num_documento_cot = ' +#39 + DBEdit68.text +#39);
                            qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.tip_documento_ben = afiliados.tip_documento');
                            qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.num_documento_ben = afiliados.num_documento');
                            qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.cod_parentesco =' +#39+ 'C' +#39);
                            qryvalrealcionafiliados.SQL.ADD('and afiliados.cod_tipo_afil = ' +#39+ 'B' +#39);
                            qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.fec_exclusion_nov is null');
                            qryvalrealcionafiliados.OPEN;

                                  if qryvalrealcionafiliados.RecordCount > 0 then
                                  begin
                                  ShowMessage('El Afiliado cotizante no puede Afiliar a los Padres como Beneficiarios porque Tiene  ' + inttostr(qryvalrealcionafiliados.RecordCount) + ' Compañeras Afiliados ');
                                  DBLookupComboBox4.SetFocus;
                                  end
                                  ELSE
                                  DBLookupComboBox12.SetFocus;


                      end;
             end
             else
             if (DBLookupComboBox17.KeyValue = 'H') then
             begin
             qryvalrealcionafiliados.CLOSE;
             qryvalrealcionafiliados.SQL.CLEAR;
              qryvalrealcionafiliados.SQL.ADD('select relacion_afiliados.* from relacion_afiliados,afiliados');
              qryvalrealcionafiliados.SQL.ADD('where relacion_afiliados.tip_documento_cot = '+#39 + DBEdit67.text +#39 );
              qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.num_documento_cot = ' +#39 + DBEdit68.text +#39);
              qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.tip_documento_ben = afiliados.tip_documento');
              qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.num_documento_ben = afiliados.num_documento');
              qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.cod_parentesco =' +#39+ 'P' +#39);
              qryvalrealcionafiliados.SQL.ADD('and afiliados.cod_tipo_afil = ' +#39+ 'B' +#39);
              qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.fec_exclusion_nov is null');
              qryvalrealcionafiliados.OPEN;
                  if qryvalrealcionafiliados.RecordCount > 0 then
                  begin
                  ShowMessage('Afiliado Tiene ' + inttostr(qryvalrealcionafiliados.RecordCount ) + ' Padres  Afiliados Debe Pasar los Padres a Aficiados Adicionales ');
                  DBLookupComboBox4.SetFocus;
                  end
                  else
                  DBLookupComboBox12.SetFocus;


             if (DBLookupComboBox17.KeyValue = 'C') then
             begin
                     if qryvalrealcionafiliados.RecordCount = 0 then
                     begin
                        qryvalrealcionafiliados.CLOSE;
                        qryvalrealcionafiliados.PREPARE;
                        qryvalrealcionafiliados.SQL.CLEAR;
                        qryvalrealcionafiliados.SQL.ADD('select relacion_afiliados.* from relacion_afiliados,afiliados');
                        qryvalrealcionafiliados.SQL.ADD('where relacion_afiliados.tip_documento_cot = '+#39 + DBEdit67.text +#39 );
                        qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.num_documento_cot = ' +#39 + DBEdit68.text +#39);
                        qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.tip_documento_ben = afiliados.tip_documento');
                        qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.num_documento_ben = afiliados.num_documento');
                        qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.cod_parentesco =' +#39+ 'P' +#39);
                        qryvalrealcionafiliados.SQL.ADD('and afiliados.cod_tipo_afil = ' +#39+ 'B' +#39);
                        qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.fec_exclusion_nov is null');
                        qryvalrealcionafiliados.OPEN;
                        if qryvalrealcionafiliados.RecordCount > 0 then
                            begin
                            ShowMessage('Afiliado Tiene ' + inttostr(qryvalrealcionafiliados.RecordCount ) + ' Padres  Afiliados ');
                            DBLookupComboBox4.SetFocus;
                            end
                            else
                            DBLookupComboBox12.SetFocus;
                       end;
                  end;
             end;
    end;




  end;
procedure Tfrmafiliacion_independientes.RadioGroup1Exit(Sender: TObject);
begin
// si no escoje  el tipo de afiliacion
       if  RadioGroup1.ItemIndex = -1 then
       begin
       ShowMessage('Selecione el tipo de Afiliacion del cotizante Si es translado  de Otra EPS');
       RadioGroup1.SetFocus;
       end
       else
           if  RadioGroup1.ItemIndex = 0 then
           begin
               if MessageDlg('La Afiliacion Es Nuevo en la EPS ¿Desea Continuar ?', mtInformation, [mbYes, mbNo], 1) = mrno then
               begin
               RadioGroup1.SetFocus;
               end
               else
              // DBLookupComboBox12.SetFocus
           end
           else
               if  RadioGroup1.ItemIndex = 1 then
               begin
                   if MessageDlg('La Afiliacion es Un translado de otra EPS  ¿Desea Continuar ?', mtInformation, [mbYes, mbNo], 1) = mrno then
                   begin
                   RadioGroup1.SetFocus;
                   end
                   else
                   DBLookupComboBox5.SetFocus
               end;




end;

procedure Tfrmafiliacion_independientes.Primeravezeps;
begin
  DateTimePicker4.Text := datetostr(datetimepicker1.date);

  //    if  (FORMATDATETIME('MM',(DateTimePicker1.DATE)) = '12') then
//      begin
//      DateTimePicker4.Text := ('01/01/' + inttostr(strtoint(FORMATDATETIME('YYYY',(DateTimePicker1.DATE)))+1));
 //     end
 //     else
  //        if  (FORMATDATETIME('MM',(DateTimePicker1.DATE)) = '01') then
     //     begin
      //    DateTimePicker4.Text := ('01/02/' + inttostr(strtoint(FORMATDATETIME('YYYY',(DateTimePicker1.DATE)))));
//          end
  //       else
   //           if  (FORMATDATETIME('MM',(DateTimePicker1.DATE)) = '02') then
     //         begin
       //       DateTimePicker4.Text := ('01/03/' + inttostr(strtoint(FORMATDATETIME('YYYY',(DateTimePicker1.DATE)))));
           //   end
         //     else
             //       if  (FORMATDATETIME('MM',(DateTimePicker1.DATE)) = '03') then
               //     begin
                 //   DateTimePicker4.Text := ('01/04/' + inttostr(strtoint(FORMATDATETIME('YYYY',(DateTimePicker1.DATE)))));
//                    end
  //                  else
    //                    if  (FORMATDATETIME('MM',(DateTimePicker1.DATE)) = '04') then
      //                  begin
        //                DateTimePicker4.Text := ('01/05/' + inttostr(strtoint(FORMATDATETIME('YYYY',(DateTimePicker1.DATE)))));
            //            end
          //              else
              //              if  (FORMATDATETIME('MM',(DateTimePicker1.DATE)) = '05') then
                //            begin
                  //          DateTimePicker4.Text := ('01/06/' + inttostr(strtoint(FORMATDATETIME('YYYY',(DateTimePicker1.DATE)))));
                    //        end
                        //    else
                      //              if  (FORMATDATETIME('MM',(DateTimePicker1.DATE)) = '06') then
                                    begin
//                                    DateTimePicker4.Text := ('01/07/' + inttostr(strtoint(FORMATDATETIME('YYYY',(DateTimePicker1.DATE)))));
  //                                  end
    //                                else
      //                                  if  (FORMATDATETIME('MM',(DateTimePicker1.DATE)) = '07') then
        //                                begin
          //                              DateTimePicker4.Text := ('01/08/' + inttostr(strtoint(FORMATDATETIME('YYYY',(DateTimePicker1.DATE)))));
            //                            end
              //                          else
                //                            if  (FORMATDATETIME('MM',(DateTimePicker1.DATE)) = '08') then
                  //                          begin
                   //                         DateTimePicker4.Text := ('01/09/' + inttostr(strtoint(FORMATDATETIME('YYYY',(DateTimePicker1.DATE)))));
                    //                        end
                      //                      else
                        //                          if  (FORMATDATETIME('MM',(DateTimePicker1.DATE)) = '09') then
                          //                        begin
                            //                      DateTimePicker4.Text := ('01/10/' + inttostr(strtoint(FORMATDATETIME('YYYY',(DateTimePicker1.DATE)))));
                              //                    end
                                //                  else
                                  //                    if  (FORMATDATETIME('MM',(DateTimePicker1.DATE)) = '10') then
                                   //                   begin
                                    //                  DateTimePicker4.Text := ('01/11/' + inttostr(strtoint(FORMATDATETIME('YYYY',(DateTimePicker1.DATE)))));
                                      //                end;
end;
end;

procedure Tfrmafiliacion_independientes.RadioGroup1Click(Sender: TObject);
begin
 // si no viene  de  translado
       if RadioGroup1.ItemIndex = 0 then
       begin
       Primeravezeps;
       tblafiliados.edit;
       DateTimePicker3.Date := strtodate(DateTimePicker4.text);
       DBLookupComboBox5.Enabled := false;
       Button2.Enabled := false;
       DBEdit3.Enabled := false;
       DBEdit20.Enabled := false;
       DateTimePicker3.Enabled := false;
       //DBLookupComboBox12.SetFocus;
       end;
       // si viene de translado con vinculacion
       if  RadioGroup1.ItemIndex = 1 then
       begin
          TRANSLADOEPS;
           DBLookupComboBox5.Enabled := true;
           DBEdit3.Enabled := true;
           Button2.Enabled := true;
           DBEdit20.Enabled := true;
           DateTimePicker3.Date := (DateTimePicker1.date-720);
           DateTimePicker3.Enabled := true;
           //DBLookupComboBox5.SetFocus;
       end;
       (*// si viene de translado sin vinculacion
       if  RadioGroup1.ItemIndex = 2 then
       begin
           TRANSLADOEPS;
           DBLookupComboBox5.Enabled := true;
           DBEdit3.Enabled := true;
           Button2.Enabled := true;
           DBEdit20.Enabled := true;
           DateTimePicker3.Date := (DateTimePicker1.date-720);
           DateTimePicker3.Enabled := true;
           //DBLookupComboBox5.SetFocus;
       end;*)

end;

procedure Tfrmafiliacion_independientes.TRANSLADOEPS;
begin
 DateTimePicker4.Text := datetostr(datetimepicker1.date);
// if  (FORMATDATETIME('MM',(DateTimePicker1.DATE)) = '12') then
//      begin
 //     DateTimePicker4.Text := ('01/02/' + inttostr(strtoint(FORMATDATETIME('YYYY',(DateTimePicker1.DATE)))+1));
  //    end
   //   else
    //      if  (FORMATDATETIME('MM',(DateTimePicker1.DATE)) = '01') then
     //     begin
//          DateTimePicker4.Text := ('01/03/' + inttostr(strtoint(FORMATDATETIME('YYYY',(DateTimePicker1.DATE)))));
 //         end
  //        else
   //           if  (FORMATDATETIME('MM',(DateTimePicker1.DATE)) = '02') then
    //          begin
     //         DateTimePicker4.Text := ('01/04/' + inttostr(strtoint(FORMATDATETIME('YYYY',(DateTimePicker1.DATE)))));
      //        end
//              else
 //                   if  (FORMATDATETIME('MM',(DateTimePicker1.DATE)) = '03') then
  //                  begin
   //                 DateTimePicker4.Text := ('01/05/' + inttostr(strtoint(FORMATDATETIME('YYYY',(DateTimePicker1.DATE)))));
    //                end
     //               else
      //                  if  (FORMATDATETIME('MM',(DateTimePicker1.DATE)) = '04') then
       //                 begin
        //                DateTimePicker4.Text := ('01/06/' + inttostr(strtoint(FORMATDATETIME('YYYY',(DateTimePicker1.DATE)))));
//                        end
 //                       else
  //                          if  (FORMATDATETIME('MM',(DateTimePicker1.DATE)) = '05') then
   //                         begin
    //                        DateTimePicker4.Text := ('01/07/' + inttostr(strtoint(FORMATDATETIME('YYYY',(DateTimePicker1.DATE)))));
     //                       end
      //                      else
       //                         if  (FORMATDATETIME('MM',(DateTimePicker1.DATE)) = '06') then
        //                        begin
         //                       DateTimePicker4.Text := ('01/08/' + inttostr(strtoint(FORMATDATETIME('YYYY',(DateTimePicker1.DATE)))));
          //                      end
           //                     else
            //                        if  (FORMATDATETIME('MM',(DateTimePicker1.DATE)) = '07') then
             //                       begin
              //                      DateTimePicker4.Text := ('01/09/' + inttostr(strtoint(FORMATDATETIME('YYYY',(DateTimePicker1.DATE)))));
               //                     end
                //                    else
                 //                         if  (FORMATDATETIME('MM',(DateTimePicker1.DATE)) = '08') then
                  //                        begin
                   //                       DateTimePicker4.Text := ('01/10/' + inttostr(strtoint(FORMATDATETIME('YYYY',(DateTimePicker1.DATE)))));
                    //                      end
                     //                     else
                      //                        if  (FORMATDATETIME('MM',(DateTimePicker1.DATE)) = '09') then
                       //                       begin
                        //                      DateTimePicker4.Text := ('01/11/' + inttostr(strtoint(FORMATDATETIME('YYYY',(DateTimePicker1.DATE)))));
                         //                     end
                          //                    else
                            //                      if  (FORMATDATETIME('MM',(DateTimePicker1.DATE)) = '10') then
//                                                  begin
 //                                                 DateTimePicker4.Text := ('01/12/' + inttostr(strtoint(FORMATDATETIME('YYYY',(DateTimePicker1.DATE)))));
  //                                                end
   //                                               else
    //                                                  if  (FORMATDATETIME('MM',(DateTimePicker1.DATE)) = '11') then
     //                                                 begin
      //                                                DateTimePicker4.Text := ('01/01/' + inttostr(strtoint(FORMATDATETIME('YYYY',(DateTimePicker1.DATE)))+1));
       //                                               end;


end;





procedure Tfrmafiliacion_independientes.SEMANAS_COTIZADAS;
VAR fecha :tdate;
    i : real;
begin

DBEdit20.text  := floattostr(roundto(WeekSpan(strtodate(DateTimePicker4.Text), DateTimePicker3.Date ),0));
//ShowMessage('Numero de Semanas Cotizadas '+  DBEdit20.text + ' Verifique'  );
 tblafiliados.edit;
 tblafiliadosnum_semana_cotiza.Value:=strtoint(DBEdit20.text);
 DBEdit20.SetFocus;

end;

procedure Tfrmafiliacion_independientes.RadioGroup2Exit(Sender: TObject);
begin
// si no escoje  el tipo de afiliacion
   if  RadioGroup2.ItemIndex = -1 then
       begin
       ShowMessage('Selecione el tipo de Afiliacion del cotizante Si es translado  de Otra EPS');
       RadioGroup2.SetFocus;
       end
       else
           if  RadioGroup2.ItemIndex = 0 then
           begin
               if MessageDlg('La Afiliacion Es Nuevo en la EPS ¿Desea Continuar ?', mtInformation, [mbYes, mbNo], 1) = mryes then
               begin
                if TabSheet1.TabVisible = false then
                begin
                DateTimePicker7.SetFocus;
                end
                else
                     if TabSheet1.TabVisible = true then
                     begin
                           if MessageDlg('Desar Grabar el Beneficiario  ?', mtInformation, [mbYes, mbNo], 1) = mryes then
                           begin
                           qrybeneficiarios.edit;
                           qrybeneficiarioseps_tip_doc.Value := '';
                           qrybeneficiarioseps_num_doc.Value := '';
                           qrybeneficiariosfec_afiliacion_uni.Value:=DateTimePicker7.date;
                           qrybeneficiariosfec_afiliacion_sis.Value:=DateTimePicker6.date;
                           qrybeneficiariosNUM_SEMANA_COTIZA.Value:=0;
                           qrybeneficiarioscod_sexo.Value:= dblookupcombobox6.KeyValue;
                           qrybeneficiarioscod_estado_civ.Value:='S';
                           btngrabar.Click;
                           END
                           else
                           DBLookupComboBox4.SetFocus;

                 end;
               end
               else
               RadioGroup2.SetFocus;
           end
           else
               if  RadioGroup2.ItemIndex = 1 then
               begin
                   if MessageDlg('La Afiliacion es Un translado de otra EPS  ¿Desea Continuar ?', mtInformation, [mbYes, mbNo], 1) = mryes then
                   begin
                       if TabSheet1.TabVisible = false then
                       begin
                       DateTimePicker7.SetFocus;
                       end
                       else
                       begin
                         groupbox11.SetFocus;
                       end;
               end
                   else
                   RadioGroup2.SetFocus;
               end;


end;

procedure Tfrmafiliacion_independientes.RadioGroup2Click(Sender: TObject);
begin
 // si no viene  de  translado
       if RadioGroup2.ItemIndex = 0 then
       begin
           if TabSheet1.TabVisible = true then
           begin
               if  strtodate(DBEdit30.Text) > DateTimePicker5.Date then
               begin
               DateTimePicker7.Date := strtodate(DBEdit30.Text);
               DateTimePicker6.Date := strtodate(DBEdit30.Text);
               DBLookupComboBox15.Enabled := false;
               DBEdit27.Enabled := false;
               DBEdit24.Enabled := false;
               DateTimePicker7.Enabled := false;
               end
               else
               if  strtodate(DBEdit30.Text) <= DateTimePicker5.Date then
               begin
               DateTimePicker7.Date := DateTimePicker5.Date;
               DateTimePicker6.Date := DateTimePicker5.Date;
               DBLookupComboBox15.Enabled := false;
               DBEdit27.Enabled := false;
               DBEdit24.Enabled := false;
               DateTimePicker7.Enabled := false;
               end
               else
               end
           else
               if TabSheet1.TabVisible = false then
               begin
                  if strtodate(DBEdit30.Text) > DateTimePicker5.Date then
                   begin
                   DateTimePicker7.date := gb_fec_hoy;
                   DateTimePicker6.date := gb_fec_hoy;
                   DateTimePicker7.Enabled := TRUE;
                   DBLookupComboBox15.Enabled := false;
                   DBEdit27.Enabled := false;
                   DBEdit24.Enabled := false;
                   DateTimePicker6.Enabled := false;
                   end
                   else
                       if strtodate(DBEdit30.Text)<= DateTimePicker5.Date then
                       begin
                       DateTimePicker7.Date := DateTimePicker5.Date;
                       DateTimePicker6.Date := DateTimePicker5.Date;
                       DBLookupComboBox15.Enabled := false;
                       DBEdit27.Enabled := false;
                       DBEdit24.Enabled := false;
                       DateTimePicker7.Enabled := false;
                       end;

                 end;

       end
       else
       // si viene de translado
       if  RadioGroup2.ItemIndex = 1 then
       begin
           DBLookupComboBox15.Enabled := true;
           DBEdit27.Enabled := true;
           DBEdit24.Enabled := true;
                if TabSheet1.TabVisible = true then
                begin

                     if qrybeneficiarioseps_tip_doc.Value <> '' then
                     begin
                     DBLookupComboBox15.KeyValue := DBLookupComboBox5.KeyValue;
                     DBEdit24.Text:= DBEdit3.Text;
                     end;

                             if strtodate(DBEdit30.Text)> DateTimePicker5.Date then
                             begin
                             DateTimePicker7.Date := strtodate(DBEdit30.Text);
                             DateTimePicker6.Date := (DateTimePicker5.Date);
                             DBLookupComboBox15.Enabled := true;
                             DBEdit27.Enabled := true;
                             DBEdit24.Enabled := true;
                             DateTimePicker6.Enabled := true;
                             end
                             else
                             if strtodate(DBEdit30.Text)<= DateTimePicker5.Date then
                             begin
                             DateTimePicker7.Date := DateTimePicker5.Date;
                             DateTimePicker6.Date := (DateTimePicker5.Date);
                             DateTimePicker6.Enabled := true;
                             DBLookupComboBox15.Enabled := true;
                             DBEdit27.Enabled := true;
                             DBEdit24.Enabled := true;
                             DateTimePicker7.Enabled := true;
                             end;

                  end
                  else
                  if TabSheet1.TabVisible = False then
                  begin

                             if qrybeneficiarioseps_tip_doc.Value <> '' then
                             begin
                             DBLookupComboBox15.KeyValue := DBLookupComboBox5.KeyValue;
                             DBEdit24.Text:= DBEdit3.Text;
                             end;

                             if strtodate(DBEdit30.Text) > DateTimePicker5.Date then
                             begin
                             DateTimePicker6.Date := strtodate(DBEdit30.Text);
                             DateTimePicker7.Date := (gb_fec_hoy);
                             DateTimePicker7.Enabled := true;
                            // DateTimePicker7.SetFocus;
                             DBLookupComboBox15.Enabled := false;
                             DBEdit27.Enabled := false;
                             DBEdit24.Enabled := false;
                             DateTimePicker7.Enabled := true;
                             end;
                end;

           // DBLookupComboBox15.SetFocus;
   end;

end;

function Tfrmafiliacion_independientes.validar_datos_cotizante: Boolean;
begin
validar_datos_cotizante := false;
          if dblsexo.text = '' then
          begin
              ShowMessage('Antes de Continuar debe Escojer el sexo del afiliado');
              validar_datos_cotizante := true;
              PageControl3.ActivePage := TabSheet1;
              dblsexo.SetFocus;
              exit;
          end;


          if DBEdit31.Text = '' then
          begin
              ShowMessage('Antes de Continuar digitar el primer Apellido del afiliado');
              validar_datos_cotizante := true;
               PageControl3.ActivePage := TabSheet1;
              DBEdit31.SetFocus;
              exit;
          end;

          if DBEdit28.Text = '' then
          begin
              ShowMessage('Antes de Continuar digitar el primer Nombre del afiliado');
              validar_datos_cotizante := true;
              PageControl3.ActivePage := TabSheet1;
              DBEdit28.SetFocus;
              exit;
          end;

        if dblestrato.text = '' then
          begin
              ShowMessage('Antes de Continuar debe Escojer el estracto socioeconomico del afiliado');
              validar_datos_cotizante := true;
              PageControl3.ActivePage := TabSheet1;
              dblestrato.SetFocus;
              exit;
          end;

        if dblestadocivil.text = '' then
          begin
              ShowMessage('Antes de Continuar debe Escojer el estado Civil del afiliado');
              validar_datos_cotizante := true;
              PageControl3.ActivePage := TabSheet1;
              dblestadocivil.SetFocus;
              exit;
          end;

        if dblmodalidadtrabajo.text = '' then
          begin
              ShowMessage('Antes de Continuar debe Selecionar la Modalidad de Trabajo  del afiliado');
              validar_datos_cotizante := true;
              PageControl3.ActivePage := TabSheet1;
              dblmodalidadtrabajo.SetFocus;
              exit;
          end;

          if dbldepartamentos.text = '' then
          begin
              ShowMessage('Antes de Continuar debe Selecionar El departamento donde Reside el afiliado');
              validar_datos_cotizante := true;
              PageControl3.ActivePage := TabSheet1;
              dbldepartamentos.SetFocus;
              exit;
          end;
          if dblciudades.text = '' then
          begin
              ShowMessage('Antes de Continuar debe Selecionar El Municipio donde Reside el afiliado');
              validar_datos_cotizante := true;
              PageControl3.ActivePage := TabSheet1;
              dblciudades.SetFocus;
              exit;
          end;

          if dblbarrios.text = '' then
          begin
              ShowMessage('Antes de Continuar debe Selecionar El Barrio donde Reside el afiliado ');
              validar_datos_cotizante := true;
              PageControl3.ActivePage := TabSheet1;
              dblbarrios.SetFocus;
              exit;
          end;
          if DBLookupComboBox3.text = '' then
          begin
              ShowMessage('Antes de Continuar debe Selecionar La Zona  donde Reside el afiliado  ');
              validar_datos_cotizante := true;
              PageControl3.ActivePage := TabSheet1;
              DBLookupComboBox3.SetFocus;
              exit;
          end;

          if DBEdit11.text = '' then
          begin
              ShowMessage('Antes de Continuar debe Digitar la Direccion donde Reside el Afiliado  ');
              validar_datos_cotizante := true;
              PageControl3.ActivePage := TabSheet1;
              DBEdit11.SetFocus;
              exit;
          end;
          if DBEdit12.text = '' then
          begin
              ShowMessage('Antes de Continuar debe Digitar el Numero Telefonico donde Reside el Afiliado ');
              validar_datos_cotizante := true;
              PageControl3.ActivePage := TabSheet1;
              DBEdit12.SetFocus;
              exit;
          end;

           if dblescolaridad.text = '' then
          begin
              ShowMessage('Antes de Continuar debe Selecionar La Escolaridad del afiliado');
              validar_datos_cotizante := true;
              PageControl3.ActivePage := TabSheet1;
              dblescolaridad.SetFocus;
              exit;
          end;
          if dblprofesion.text = '' then
          begin
              ShowMessage('Antes de Continuar debe Selecionar La Profesion  del afiliado');
              validar_datos_cotizante := true;
              PageControl3.ActivePage := TabSheet1;
              dblprofesion.SetFocus;
              exit;
          end;

          // validacion de la  segunda pantalla
          if DBEdit6.Text = '' then
          begin
              ShowMessage('Antes de Continuar debe Digitar el Numero del formato de la afiliacion');
              validar_datos_cotizante := true;
              DBEdit6.SetFocus;
              exit;
          end;

           if DBEdit4.Text = '' then
          begin
              ShowMessage('Antes de Continuar debe Digitar el Numero de documento del asesor  comercial');
              validar_datos_cotizante := true;
              DBEdit4.SetFocus;
              exit;
          end;

           if RadioGroup1.ItemIndex = -1 then
          begin
              ShowMessage('Antes de Continuar debe selecionar  el tipo de afiliacion a la EPS');
              validar_datos_cotizante := true;
              RadioGroup1.SetFocus;
              exit;
          end;

end;

function Tfrmafiliacion_independientes.validar_datos_empresa: Boolean;
begin
      validar_datos_empresa := false;
          if DBLookupComboBox25.text = '' then
          begin
              ShowMessage('Antes de Continuar debe selecionar  el tipo de Documento de la  empresa');
              validar_datos_empresa := true;
              DBLookupComboBox25.SetFocus;
              exit;
          end;

          if DBEdit35.Text = '' then
          begin
              ShowMessage('Antes de Continuar debe Digitar el numero de  documento del a Empresa ');
              validar_datos_empresa := true;
              DBEdit35.SetFocus;
              exit;
          end;
          if DBEdit35.Text = '' then
          begin
              ShowMessage('Antes de Continuar debe Digitar el numero de  documento del a Empresa ');
              validar_datos_empresa := true;
              DBEdit35.SetFocus;
              exit;
          end;
          if DBEdit36.Text = '' then
          begin
              ShowMessage('Antes de Continuar debe Digitar el numero de  la Sucursal  del a Empresa ');
              validar_datos_empresa := true;
              DBEdit36.SetFocus;
              exit;
          end;
          if DBLookupComboBox19.text = '' then
          begin
              ShowMessage('Antes  de Continuar debe selecionar  la Ocupacion del Afiliado en la Empresa');
              validar_datos_empresa := true;
              DBLookupComboBox19.SetFocus;
              exit;
          end;
          if DBEdit58.Text = '' then
          begin
              ShowMessage('Antes  de Continuar debe digitar el Salario del Afiliado en la Empresa');
              validar_datos_empresa := true;
              DBEdit58.SetFocus;
              exit;
          end;

          if DBLookupComboBox22.text = '' then
          begin
              ShowMessage('Antes  de Continuar debe selecionar  el Departamento donde Labora  el Afiliado en la Empresa');
              validar_datos_empresa := true;
              DBLookupComboBox22.SetFocus;
              exit;
          end;

          if DBLookupComboBox23.text = '' then
          begin
              ShowMessage('Antes  de Continuar debe selecionar  el Municipio donde Labora  el Afiliado en la Empresa');
              validar_datos_empresa := true;
              DBLookupComboBox23.SetFocus;
              exit;
          end;
          if DBLookupComboBox24.text = '' then
          begin
              ShowMessage('Antes  de Continuar debe selecionar  La Zona  donde Labora  el Afiliado en la Empresa');
              validar_datos_empresa := true;
              DBLookupComboBox24.SetFocus;
              exit;
          end;
          if DBEdit59.Text = '' then
          begin
              ShowMessage('Antes  de Continuar debe Digitar La Direccion donde Labora  el Afiliado en la Empresa');
              validar_datos_empresa := true;
              DBEdit59.SetFocus;
              exit;
          end;

          if DBEdit60.Text = '' then
          begin
              ShowMessage('Antes  de Continuar debe Digitar el Numero Telefonico donde Labora  el Afiliado en la Empresa');
              validar_datos_empresa := true;
              DBEdit60.SetFocus;
              exit;
          end;




end;

procedure Tfrmafiliacion_independientes.pasar_cotizante_Inactivo_Activo;
begin
  dmafiliaciones.softeps.StartTransaction;
  try
  tblafiliados.edit;
  tblafiliadoscod_estado.Text:='A';
   usuario_emcontrado:=true;
   //crear la novedad de ingreso
    //execute qrynovedades_afiliados
      qrynovedades_afiliados.Close;
      qrynovedades_afiliados.Params[0].AsString := '01';
      qrynovedades_afiliados.Params[1].AsString := dbedit22.text;
      qrynovedades_afiliados.Params[2].AsString := dbedit23.text;
      qrynovedades_afiliados.Params[3].AsString := gb_oficina;
      qrynovedades_afiliados.Params[4].AsString := gb_regional;
      qrynovedades_afiliados.Params[5].AsString := gb_tip_doc_usu;
      qrynovedades_afiliados.Params[6].AsString := gb_num_doc_usu;
      qrynovedades_afiliados.Params[7].AsDatetime := frmafiliaciones.fecha_actual();
      qrynovedades_afiliados.Params[8].AsDatetime := frmafiliaciones.fecha_actual();
      qrynovedades_afiliados.Params[9].AsDatetime := frmafiliaciones.fecha_actual();
//                                      qrynovedades_afiliados.Params[10].AsString := null;
//                                      qrynovedades_afiliados.Params[11].AsString := null;
//                                      grynovedades_afiliados.Params[12].AsString := null;

      qrynovedades_afiliados.ExecSql;
      tblafiliados.Post;
      ////////////generar el registro en Relacion_afiliados
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('Select dbo.relacion_afiliados.tip_documento_cot,'+
        'dbo.relacion_afiliados.num_documento_cot,'+
        'dbo.relacion_afiliados.tip_documento_ben,'+
        'dbo.relacion_afiliados.num_documento_ben,'+
        'dbo.relacion_afiliados.fec_inclusion_nov,'+
        'dbo.relacion_afiliados.cod_parentesco,'+
        'dbo.relacion_afiliados.fec_exclusion_nov '+
        'From dbo.relacion_afiliados '+
        'Where relacion_afiliados.tip_documento_cot = :"tip_documento" AND '+
        'relacion_afiliados.num_documento_cot = :"num_documento" AND '+
        'relacion_afiliados.tip_documento_ben = :"tip_documento" AND '+
        'relacion_afiliados.num_documento_ben = :"num_documento" ');
        Query1.Params[0].AsString := tblafiliadostip_documento.text;
        Query1.Params[1].AsString := tblafiliadosnum_documento.text;
        Query1.Params[2].AsString := tblafiliadostip_documento.text;
        Query1.Params[3].AsString := tblafiliadosnum_documento.text;
        Query1.ExecSQL;
        Query1.Open;

        if query1.RecordCount = 0 then
        begin
            Query1.SQL.Clear;
            Query1.SQL.Add('INSERT INTO relacion_afiliados (tip_documento_cot, num_documento_cot, tip_documento_ben, num_documento_ben,fec_inclusion_nov,cod_parentesco,cod_estado)');
            Query1.SQL.Add('VALUES (:tpc, :nrc, :tpb, :nrb, :fec_incl,:cp,:ce)');

            Query1.Params[0].AsString := tblafiliadostip_documento.text;
            Query1.Params[1].AsString := tblafiliadosnum_documento.text;
            Query1.Params[2].AsString := tblafiliadostip_documento.text;
            Query1.Params[3].AsString := tblafiliadosnum_documento.text;
            Query1.Params[4].AsDate := frmafiliaciones.fecha_actual();
            Query1.Params[5].AsString := 'T';
            Query1.Params[6].AsString := 'A';
            Query1.ExecSQL;
        end
        else
            Query1.close;

      dmafiliaciones.softeps.Commit; {on success, commit the changes};
      showMessage('Proceso Finalizado con Exito, Novedad de ingreso Aplicada');

      except
                dmafiliaciones.softeps.Rollback; {on failure, undo the changes};
                raise;
                showMessage('Error en el ingreso de la novedad como Cotizante');
      end;
end;

procedure Tfrmafiliacion_independientes.ingresar_multiempresa;
begin
  qryafiliados_empresas.Close;
  qryafiliados_empresas.open;
  dmafiliaciones.Qryciudades2.Active:=false;
  dmafiliaciones.qryciudades2.Params[0].AsString := qryafiliados_empresascod_departamento_lab.Value;
  dmafiliaciones.Qryciudades2.ExecSQL;
  dmafiliaciones.Qryciudades2.Active:=true;
  TabSheet1.Tabvisible:=false;
   TabSheet5.Tabvisible:=false;
   TabSheet3.TabVisible :=true;
   DBLookupComboBox25.SetFocus;
   btnnempresa.Visible := true;
   btncempresa.Visible := true;
   btngempresa.Visible := true;
end;

procedure Tfrmafiliacion_independientes.pasar_beneficiario_cotizante_inactivo;
begin

dmafiliaciones.softeps.StartTransaction;
try
tblafiliados.edit;
tblafiliadoscod_tipo_afil.Text:='C';
tblafiliadoscod_estado.Text:='A';
usuario_emcontrado:=true;
//crear la novedad de ingreso
      //execute qrynovedades_afiliados
      qrynovedades_afiliados.Close;
      qrynovedades_afiliados.Params[0].AsString := '01';
      qrynovedades_afiliados.Params[1].AsString := dbedit22.text;
      qrynovedades_afiliados.Params[2].AsString := dbedit23.text;
      qrynovedades_afiliados.Params[3].AsString := gb_oficina;
      qrynovedades_afiliados.Params[4].AsString := gb_regional;
      qrynovedades_afiliados.Params[5].AsString := gb_tip_doc_usu;
      qrynovedades_afiliados.Params[6].AsString := gb_num_doc_usu;
      qrynovedades_afiliados.Params[7].AsDatetime := frmafiliaciones.fecha_actual();
      qrynovedades_afiliados.Params[8].AsDatetime := frmafiliaciones.fecha_actual();
      qrynovedades_afiliados.Params[9].AsDatetime := frmafiliaciones.fecha_actual();
//         qrynovedades_afiliados.Params[10].AsString := null;
//         qrynovedades_afiliados.Params[11].AsString := null;
//         grynovedades_afiliados.Params[12].AsString := null;

      qrynovedades_afiliados.ExecSql;
      tblafiliados.Post;
      dmafiliaciones.softeps.Commit; {on success, commit the changes};
      showMessage('Proceso Finalizado con Exito, Novedad de ingreso Aplicada');
      except
                dmafiliaciones.softeps.Rollback; {on failure, undo the changes};
                raise;
                showMessage('Error en el ingreso de la novedad como Cotizante');
      end;
end;

procedure Tfrmafiliacion_independientes.DBEdit35Exit(Sender: TObject);
begin
if  DBEdit35.Text = '' then
   begin
   ShowMessage('Digite El numero de la   Empresa');
   DBEdit35.SetFocus;
   end
   else
   DBEdit36.Text := '0';
   qryempresas.close;
   qryempresas.sql.clear;
   qryempresas.sql.add('SELECT * FROM EMPRESAS WHERE TIP_DOCUMENTO = :"TIPO" AND NUM_DOCUMENTO = :"NUMERO"');
   qryempresas.PARAMS[0].ASSTRING := DBLookupComboBox25.KeyValue;
   qryempresas.PARAMS[1].ASSTRING := DBEdit35.Text;

   qryempresas.open;
       if qryempresas.RecordCount = 1 then
       begin
       Edit5.Text := qryempresasNOM_EMPRESA.Value;
       qryafiliados_empresas.edit;
       qryafiliados_empresascod_departamento_lab.Value:=qryempresasCOD_DEPARTAMENTO.Value;
       qryafiliados_empresascod_ciudad_lab.Value:=qryempresasCOD_CIUDAD.Value;
       qryafiliados_empresasdir_afiliado_lab.Value:=qryempresasDIR_EMPRESA.Value;
       qryafiliados_empresastel_afiliado_lab.Value:=qryempresasTEL_EMPRESA.Value;
       qryafiliados_empresastel_afiliado_lab2.Value:=qryempresasTEL_EMPRESA2.Value;
       qryafiliados_empresasFEC_ING_EMPRESA.Value:=strtodate(DBEdit30.Text);
       qryafiliados_empresascod_sucursal.Value:=qryempresasCOD_SUCURSAL.Value;
       DBLookupComboBox24.KeyValue := qryempresasCOD_ZONA.Value;
           if (DBLookupComboBox2.KeyValue = DBEdit67.Text) and (DBEdit35.Text = DBEdit68.Text) then

           begin
           ShowMessage('Afiliado No puede estar afiliado a la misma Empresa');
           DBLookupComboBox25.SetFocus;
           exit;
           end;
        dmafiliaciones.Qryciudades2.Active:=false;
        dmafiliaciones.qryciudades2.Params[0].AsString := qryafiliados_empresascod_departamento_lab.Value;
        dmafiliaciones.Qryciudades2.ExecSQL;
        dmafiliaciones.Qryciudades2.Active:=true;
        dmafiliaciones.tblactividadeconomica.Open;
        dmafiliaciones.tblocupaciones.Open;
        dbctividadeconomica.KeyValue := qryempresasCOD_ACTIVIDAD_ECO.Value;
            qryarp.Close;
            qryarp.PREPARE;
            qryarp.SQL.CLEAR;
            qryarp.SQL.ADD('SELECT *  FROM dbo.arps where tip_documento = :"Tipo" and  num_documento = :"Numero"');
            qryarp.PARAMS[0].ASSTRING := qryempresasTIP_DOCUMENTO_ARP.Value;
            qryarp.PARAMS[1].ASSTRING := qryempresasNUM_DOCUMENTO_ARP.Value;
            qryarp.OPEN;
                if qryarp.RecordCount = 1 then
                begin
                EDIT7.Text := qryarpNOM_ARPS.Value;
                end;
             if TabSheet1.TabVisible = true then
             begin
             Button7.Enabled := false;
             qryafiliados_empresas.edit;
             qryafiliados_empresasfec_ingreso_uni.Value:=STRTODATE(DBEdit30.TEXT);
             DBEdit59.SetFocus;
             end;

             // berificar  que no este activo por la  misma  empresa
       Query1.close;
       Query1.sql.clear;
       Query1.sql.add('SELECT * FROM AFILIADOS_EMPRESAS WHERE TIP_DOCUMENTO_AFI = :"TAFILIADO" AND NUM_DOCUMENTO_AFI = :"DAFILIADO" AND');
       Query1.sql.add('TIP_DOCUMENTO_EMP = :"TEMPRESA" AND NUM_DOCUMENTO_EMP = :"DEMPRESA"  AND FEC_EGRESO_UNI IS NULL');
       Query1.PARAMS[0].ASSTRING := DBEdit67.Text;
       Query1.PARAMS[1].ASSTRING := DBEdit68.Text;
       Query1.PARAMS[2].ASSTRING := DBLookupComboBox25.KeyValue;
       Query1.PARAMS[3].ASSTRING := DBEdit35.Text;
       Query1.OPEN;
       if query1.RecordCount = 1 then
       begin
       ShowMessage('Afiliado Esta Activo por esta  Empresa y No se puede Afiliar mas de Una vez a la misma Empresa');

       btncempresa.Click;
      end;
      end
   else
   if qryempresas.RecordCount = 0 then
   begin
   ShowMessage('La  Empresa  No esta Registrada Selecionela de la lista ');
    frmempresas:=Tfrmempresas.create(Application);
              try
                    frmempresas.caption := 'Empresas Activas Independientes';
                     frmempresas.show;
                      except
                      frmempresas.free;
              end;

   end;

end;

procedure Tfrmafiliacion_independientes.DateTimePicker7Exit(Sender: TObject);
begin
 if frmafiliaciones.mayor_hoy(qrybeneficiariosfec_afiliacion_uni)=true then
     begin
          DateTimePicker7.SetFocus;
     end
     else
     if  DateTimePicker7.date < strtodate(DBEdit39.Text) then
     begin
        DateTimePicker7.SetFocus;
     end
     else
     begin
          if TabSheet1.TabVisible = false then
          begin
               if RadioGroup2.ItemIndex = 0 then
               begin
                    if MessageDlg('Desar Grabar el Beneficiario  ?', mtInformation, [mbYes, mbNo], 1) = mryes then
                    begin
                    qrybeneficiarios.edit;
                    qrybeneficiarioseps_tip_doc.Value := '';
                    qrybeneficiarioseps_num_doc.Value := '';
                    qrybeneficiariosfec_afiliacion_uni.Value:=DateTimePicker7.date;
                    qrybeneficiariosfec_afiliacion_sis.Value:=DateTimePicker6.date;
                    qrybeneficiarioscod_sexo.Value:=dblsexo.DataField;
                    qrybeneficiarioscod_estado_civ.Value:='S';
                    qrybeneficiariosNUM_SEMANA_COTIZA.Value:=0;
                    btngrabar.Click;
                    end
                    else
                    DBLookupComboBox4.SetFocus;
               end
               else
               begin
               DBLookupComboBox15.Enabled := true;
               DBLookupComboBox15.SetFocus;
               DateTimePicker6.Enabled := true;
               DBEdit27.Enabled := true;
               DBEdit24.Enabled := true;
               DateTimePicker7.Enabled := true;
               end;
               end;
     end;
end;

procedure Tfrmafiliacion_independientes.ingreso_adicional;
begin
      qryvalrealcionafiliados.CLOSE;
      qryvalrealcionafiliados.PREPARE;
      qryvalrealcionafiliados.SQL.CLEAR;
      qryvalrealcionafiliados.SQL.ADD('select relacion_afiliados.* from relacion_afiliados,afiliados');
      qryvalrealcionafiliados.SQL.ADD('where relacion_afiliados.tip_documento_cot = '+#39 + DBEdit67.text +#39 );
      qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.num_documento_cot = ' +#39 + DBEdit68.text +#39);
      qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.tip_documento_ben = afiliados.tip_documento');
      qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.num_documento_ben = afiliados.num_documento');
      qryvalrealcionafiliados.SQL.ADD('and afiliados.cod_tipo_afil = ' +#39+ 'A' +#39);
      qryvalrealcionafiliados.SQL.ADD('and relacion_afiliados.fec_exclusion_nov is null');
      qryvalrealcionafiliados.OPEN;
      if qryvalrealcionafiliados.RecordCount > 0 then
          begin
                if MessageDlg('El afiliado Tiene ' + inttostr(qryvalrealcionafiliados.RecordCount ) + ' Beneficiario  Adicionales  Inscritos  ¿Desea Ingresar Otro ?', mtInformation, [mbYes, mbNo], 1) = mryes then
                begin
                DBLookupComboBox12.SetFocus;
                end
                else
                DBLookupComboBox4.SetFocus;
          end

end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox19Exit(Sender: TObject);
begin
if  DBLookupComboBox19.Text = '' then
   begin
   ShowMessage('Selecione El tipo de ocupacion de  la  Afiliado');
   DBLookupComboBox19.SetFocus;
   end
//   else
 //  begin
  //      dmafiliaciones.qrysalariominimo.Active:=false;
   //     dmafiliaciones.qrysalariominimo.Params[0].AsString := '01/01/'+ (FORMATDATETIME('YYYY',strtodate(DBEdit30.text)));
    //    dmafiliaciones.qrysalariominimo.ExecSQL;
     //   dmafiliaciones.qrysalariominimo.Active:=true;
//   end;

end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox25Exit(Sender: TObject);
begin
if  DBLookupComboBox2.Text = '' then
   begin
   ShowMessage('Selecione Tipo de Documento de la Empresa');
   DBLookupComboBox2.SetFocus;
   end;
end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox17Enter(Sender: TObject);
begin
     if DBLookupComboBox4.KeyValue = 'CC' then
     begin
     qryrelacion_afiliados.Edit;
     qryrelacion_afiliadosCOD_PARENTESCO.Value:='C';

     end
     else
         if DBLookupComboBox4.KeyValue = 'RC' then
         begin
         qryrelacion_afiliados.Edit;
         qryrelacion_afiliadosCOD_PARENTESCO.Value:='H';
         end;




end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox8Enter(Sender: TObject);
begin
qrybeneficiarios.Edit;
qrybeneficiarioscod_discapacidad.Value:='N';

end;

procedure Tfrmafiliacion_independientes.dlbtipoafiliadoEnter(Sender: TObject);
begin
qrybeneficiarios.Edit;
qrybeneficiarioscod_tipo_afil.Value:='B';

end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox6Enter(Sender: TObject);
begin
// if DBLookupComboBox6.KeyValue = 'M' then
//  begin
    qrybeneficiarios.Edit;
    qrybeneficiarioscod_sexo.Value:=dblookupcombobox6.DataField;
 // end
  //else
 // if DBLookupComboBox6.KeyValue = 'F' then
 // begin
 // qrybeneficiarios.Edit;
 // qrybeneficiarioscod_sexo.Value:='M';
 // end;


end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox14CloseUp(
  Sender: TObject);
begin
dmafiliaciones.tbltipos_documentos.Refresh;
end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox16CloseUp(
  Sender: TObject);
begin
dmafiliaciones.tbltipos_documentos.Refresh;
end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox29Exit(Sender: TObject);
begin
if  DBLookupComboBox3.Text = '' then
   begin
   end;
end;

procedure Tfrmafiliacion_independientes.Button5Click(Sender: TObject);
begin
frmeps:=Tfrmeps.create(Application);
              try
                      frmeps.Caption:='Seleccion de la eps para independientes';
                      frmeps.show;

              except
                      frmeps.free;
              end;
end;


procedure Tfrmafiliacion_independientes.DBLookupComboBox32Click(Sender: TObject);
begin
        dmafiliaciones.Qryciudades.Active:=false;
        dmafiliaciones.Qryciudades.Params[0].AsString := tblafiliadoscod_departamento_res.text;
        dmafiliaciones.Qryciudades.ExecSQL;
        dmafiliaciones.Qryciudades.Active:=true;

end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox33Click(Sender: TObject);
begin
        dmafiliaciones.qrybarrios.Active:=false;
        dmafiliaciones.qrybarrios.Params[0].AsString := tblafiliadoscod_departamento_res.text;
        dmafiliaciones.qrybarrios.Params[1].AsString := tblafiliadoscod_ciudad_res.text;
        dmafiliaciones.qrybarrios.ExecSQL;
        dmafiliaciones.qrybarrios.Active:=true;

end;

procedure Tfrmafiliacion_independientes.DBEdit4Exit(Sender: TObject);
begin
if  DBEdit4.Text = '' then
   begin
   ShowMessage('Digite el Numero de  docuemnto del Asesor Comercial que realizo la afiliacion');
   DBEdit4.SetFocus;
   end
   else
   qry.close;
   qry.sql.clear;
   qry.sql.add('select * from acesores where cod_estado = :"estado" and tip_documento = :"tipo" and num_documento = :"numero"');
   qry.PARAMS[0].ASSTRING := 'A';
   qry.PARAMS[1].ASSTRING := DBLookupComboBox1.KeyValue;
   qry.PARAMS[2].ASSTRING := DBEdit4.Text;

   qry.open;
   if qry.RecordCount = 1 then
   begin
   Edit4.Text := qrypri_apellido.Value +' '+ qryseg_apellido.Value +' '+ qrypri_nombre.Value +' '+ qryseg_nombre.Value;
   Button1.Enabled := false;
   DBLookupComboBox2.SetFocus;
   end
   else
   if qry.RecordCount = 0 then
   begin
   ShowMessage('Verifique  el docuemento del afiliado o  escojalo de  la lista');
   Button1.Enabled := false;
              frmasesores:=Tfrmasesores.create(Application);
              try
                   frmasesores.Caption:='Selecion Asesores  para independientes';
                   frmasesores.show;
              except
                      frmasesores.free;
             end;
   end;



end;

procedure Tfrmafiliacion_independientes.Button9Click(Sender: TObject);
begin
 if edttipoactualizacion.Text = 'C' then
 begin
    if validar_datos_cotizante = false then
    begin
        grabar_afiliados_cotizantes;
        // si es independiente la  afiliacion

        if dblmodalidadtrabajo.KeyValue = 'I' then
         begin
         crear_empresa;
         adicionar_afiliados_empresa;
                 if TabSheet3.TabVisible = true then
                 begin
                 PageControl3.ActivePage := TabSheet3;
                 qryafiliados_empresas.Close;
                 qryafiliados_empresas.Params[0].AsString := DBEdit67.Text;
                 qryafiliados_empresas.Params[1].AsString := DBEdit68.Text;
                 qryafiliados_empresas.Open;
                      if qryafiliados_empresas.RecordCount > 0 then
                      begin
                      dmafiliaciones.Qryciudades2.Active:=false;
                      dmafiliaciones.qryciudades2.Params[0].AsString := qryafiliados_empresascod_departamento_lab.Value;
                      dmafiliaciones.Qryciudades2.ExecSQL;
                      dmafiliaciones.Qryciudades2.Active:=true;
                      dmafiliaciones.tblactividadeconomica.Open;
                      dmafiliaciones.tblocupaciones.Open;
                      dmafiliaciones.tbldepartamentos.Open;
                      qryempresas.close;
                      qryempresas.sql.clear;
                      qryempresas.sql.add('SELECT * FROM EMPRESAS WHERE TIP_DOCUMENTO = :"TIPO" AND NUM_DOCUMENTO = :"NUMERO"');
                      qryempresas.PARAMS[0].ASSTRING := qryafiliados_empresasTIP_DOCUMENTO_EMP.Value;
                      qryempresas.PARAMS[1].ASSTRING := qryafiliados_empresasNUM_DOCUMENTO_EMP.Value;
                      qryempresas.open;
                      dbctividadeconomica.KeyValue := qryempresasCOD_ACTIVIDAD_ECO.Value;
                            qryarp.Close;
                            qryarp.PREPARE;
                            qryarp.SQL.CLEAR;
                            qryarp.SQL.ADD('SELECT *  FROM dbo.arps where tip_documento = :"Tipo" and  num_documento = :"Numero"');
                            qryarp.PARAMS[0].ASSTRING := qryempresasTIP_DOCUMENTO_ARP.Value;
                            qryarp.PARAMS[1].ASSTRING := qryempresasNUM_DOCUMENTO_ARP.Value;
                            qryarp.OPEN;
                                if qryarp.RecordCount = 1 then
                                begin
                                EDIT7.Text := qryarpNOM_ARPS.Value;
                                end;
                                     DBEdit36.Enabled := false;
                                     Button7.Enabled := false;
                                     DBEdit35.Enabled := false;
                                     btnnempresa.Visible := false;
                                     btngempresa.Visible := true;
                                     Edit5.Text := qryempresasNOM_EMPRESA.Value;
                                     DBLookupComboBox25.Enabled := false;
                                     DBNavigator2.BtnClick(nbEdit);
                                     DBEdit59.SetFocus;

                      end
                      else
                      begin
                      PageControl3.ActivePage := TabSheet3;
                      qryafiliados_empresas.Close;
                      qryafiliados_empresas.ExecSQL;
                      qryafiliados_empresas.Open;
                      DBNavigator2.BtnClick(nbInsert);
                      btnnempresa.Visible := false;
                      btngempresa.Visible := false;
                      DBLookupComboBox25.SetFocus;
                      end;
                 end
                 else
                       begin
                       tblafiliados.Destroy;
                       qryafiliados_empresas.free;
                       frmafiliacion_independientes.Free;
                       end;
         end
         else
      // si es  empleada  domestica

         if dblmodalidadtrabajo.KeyValue = 'E' then
         begin
                 GroupBox14.Caption := 'Informacion Exclusiva para Empleados(a) Domesticas';
                 if  TabSheet5.TabVisible = true then
                 begin
                 PageControl3.ActivePage := TabSheet3;
                 qryafiliados_empresas.Close;
                 qryafiliados_empresas.ExecSQL;
                 qryafiliados_empresas.Open;
                 DBNavigator2.BtnClick(nbInsert);
                 btnnempresa.Visible := false;
                 btngempresa.Visible := false;
                 DBLookupComboBox25.SetFocus;
                 end
                 else
                 if TabSheet5.TabVisible = false then
                 begin
                 PageControl3.ActivePage := TabSheet3;
                 qryafiliados_empresas.Close;
                 qryafiliados_empresas.Params[0].AsString := DBEdit67.Text;
                 qryafiliados_empresas.Params[1].AsString := DBEdit68.Text;
                 qryafiliados_empresas.Open;
                     if qryafiliados_empresas.RecordCount > 0 then
                     begin
                      dmafiliaciones.Qryciudades2.Active:=false;
                      dmafiliaciones.qryciudades2.Params[0].AsString := qryafiliados_empresascod_departamento_lab.Value;
                      dmafiliaciones.Qryciudades2.ExecSQL;
                      dmafiliaciones.Qryciudades2.Active:=true;
                      dmafiliaciones.tblactividadeconomica.Open;
                      dmafiliaciones.tblocupaciones.Open;
                      dmafiliaciones.tbldepartamentos.Open;

                     qryempresas.close;
                     qryempresas.sql.clear;
                     qryempresas.sql.add('SELECT * FROM EMPRESAS WHERE TIP_DOCUMENTO = :"TIPO" AND NUM_DOCUMENTO = :"NUMERO"');
                     qryempresas.PARAMS[0].ASSTRING := qryafiliados_empresasTIP_DOCUMENTO_EMP.Value;
                     qryempresas.PARAMS[1].ASSTRING := qryafiliados_empresasNUM_DOCUMENTO_EMP.Value;
                     qryempresas.open;
                           dbctividadeconomica.KeyValue := qryempresasCOD_ACTIVIDAD_ECO.Value;
                            qryarp.Close;
                            qryarp.PREPARE;
                            qryarp.SQL.CLEAR;
                            qryarp.SQL.ADD('SELECT *  FROM dbo.arps where tip_documento = :"Tipo" and  num_documento = :"Numero"');
                            qryarp.PARAMS[0].ASSTRING := qryempresasTIP_DOCUMENTO_ARP.Value;
                            qryarp.PARAMS[1].ASSTRING := qryempresasNUM_DOCUMENTO_ARP.Value;
                            qryarp.OPEN;
                                if qryarp.RecordCount = 1 then
                                begin
                                EDIT7.Text := qryarpNOM_ARPS.Value;
                                end;

                     DBEdit36.Enabled := false;
                     DBEdit25.Enabled := false;
                     Button7.Enabled := false;
                     //DateTimePicker8.Enabled := false;
                     //qryafiliados_empresas.ExecSQL;
                     btnnempresa.Visible := false;
                     btngempresa.Visible := true;
                     Edit5.Text := qryempresasNOM_EMPRESA.Value;
                     DBEdit35.Enabled := false;
                     DBLookupComboBox25.Enabled := false;
                     DBNavigator2.BtnClick(nbEdit);
                     DBEdit59.SetFocus;
                     end
                     else
                     begin
                     PageControl3.ActivePage := TabSheet3;
                     qryafiliados_empresas.Close;
                     qryafiliados_empresas.ExecSQL;
                     qryafiliados_empresas.Open;
                     DBNavigator2.BtnClick(nbInsert);
                     btnnempresa.Visible := false;
                     btngempresa.Visible := false;
                     DBLookupComboBox25.SetFocus;
                     end;

                 end
                 else
                 begin
                  Query1.close;
      tblafiliados.Cancel;
      tblafiliados.Destroy;
      qryrelacion_afiliados.close;
      qryrelacion_afiliados.free;
      qryafiliados_empresas.Cancel;
      qryafiliados_empresas.free;
      qrybeneficiarios.Cancel;
      qrybeneficiarios.free;
      qrynovedades_afiliados.Cancel;
      qrynovedades_afiliados.free;
      frmafiliacion_usuarios.Free;
                 end;

      end
      else
      if dblmodalidadtrabajo.KeyValue = 'P' then
      begin
      GroupBox14.Caption := 'Informacion Exclusiva para Pensionados';
                 if  TabSheet5.TabVisible = true then
                 begin
                 PageControl3.ActivePage := TabSheet3;
                 qryafiliados_empresas.Close;
                 qryafiliados_empresas.ExecSQL;
                 qryafiliados_empresas.Open;
                 DBNavigator2.BtnClick(nbInsert);
                 btnnempresa.Visible := false;
                 btngempresa.Visible := false;
                 DBLookupComboBox25.SetFocus;
                 end
                 else
                 if TabSheet5.TabVisible = false then
                 begin
                 PageControl3.ActivePage := TabSheet3;
                 qryafiliados_empresas.Close;
                 qryafiliados_empresas.Params[0].AsString := DBEdit67.Text;
                 qryafiliados_empresas.Params[1].AsString := DBEdit68.Text;
                 qryafiliados_empresas.Open;
                     if qryafiliados_empresas.RecordCount > 0 then
                     begin
                      dmafiliaciones.Qryciudades2.Active:=false;
                      dmafiliaciones.qryciudades2.Params[0].AsString := qryafiliados_empresascod_departamento_lab.Value;
                      dmafiliaciones.Qryciudades2.ExecSQL;
                      dmafiliaciones.Qryciudades2.Active:=true;
                      dmafiliaciones.tblactividadeconomica.Open;
                      dmafiliaciones.tblocupaciones.Open;
                      dmafiliaciones.tbldepartamentos.Open;

                     qryempresas.close;
                     qryempresas.sql.clear;
                     qryempresas.sql.add('SELECT * FROM EMPRESAS WHERE TIP_DOCUMENTO = :"TIPO" AND NUM_DOCUMENTO = :"NUMERO"');
                     qryempresas.PARAMS[0].ASSTRING := qryafiliados_empresasTIP_DOCUMENTO_EMP.Value;
                     qryempresas.PARAMS[1].ASSTRING := qryafiliados_empresasNUM_DOCUMENTO_EMP.Value;
                     qryempresas.open;
                           dbctividadeconomica.KeyValue := qryempresasCOD_ACTIVIDAD_ECO.Value;
                            qryarp.Close;
                            qryarp.PREPARE;
                            qryarp.SQL.CLEAR;
                            qryarp.SQL.ADD('SELECT *  FROM dbo.arps where tip_documento = :"Tipo" and  num_documento = :"Numero"');
                            qryarp.PARAMS[0].ASSTRING := qryempresasTIP_DOCUMENTO_ARP.Value;
                            qryarp.PARAMS[1].ASSTRING := qryempresasNUM_DOCUMENTO_ARP.Value;
                            qryarp.OPEN;
                                if qryarp.RecordCount = 1 then
                                begin
                                EDIT7.Text := qryarpNOM_ARPS.Value;
                                end;

                     DBEdit36.Enabled := false;
                     DBEdit25.Enabled := false;
                     Button7.Enabled := false;
                     //DateTimePicker8.Enabled := false;
                     //qryafiliados_empresas.ExecSQL;
                     btnnempresa.Visible := false;
                     btngempresa.Visible := true;
                     Edit5.Text := qryempresasNOM_EMPRESA.Value;
                     DBEdit35.Enabled := false;
                     DBLookupComboBox25.Enabled := false;
                     DBNavigator2.BtnClick(nbEdit);
                     DBEdit59.SetFocus;
                     end
                     else
                     begin
                     PageControl3.ActivePage := TabSheet3;
                     qryafiliados_empresas.Close;
                     qryafiliados_empresas.ExecSQL;
                     qryafiliados_empresas.Open;
                     DBNavigator2.BtnClick(nbInsert);
                     btnnempresa.Visible := false;
                     btngempresa.Visible := false;
                     DBLookupComboBox25.SetFocus;
                     end;

                 end
                 else
                 if dblmodalidadtrabajo.KeyValue = 'M' then
                 begin
                 GroupBox14.Caption := 'Informacion Exclusiva para madres Comunitarias';
                 if  TabSheet5.TabVisible = true then
                 begin
                 PageControl3.ActivePage := TabSheet3;
                 qryafiliados_empresas.Close;
                 qryafiliados_empresas.ExecSQL;
                 qryafiliados_empresas.Open;
                 DBNavigator2.BtnClick(nbInsert);
                 btnnempresa.Visible := false;
                 btngempresa.Visible := false;
                 DBLookupComboBox25.SetFocus;
                 end
                 else
                 if TabSheet5.TabVisible = false then
                 begin
                 PageControl3.ActivePage := TabSheet3;
                 qryafiliados_empresas.Close;
                 qryafiliados_empresas.Params[0].AsString := DBEdit67.Text;
                 qryafiliados_empresas.Params[1].AsString := DBEdit68.Text;
                 qryafiliados_empresas.Open;
                     if qryafiliados_empresas.RecordCount > 0 then
                     begin
                      dmafiliaciones.Qryciudades2.Active:=false;
                      dmafiliaciones.qryciudades2.Params[0].AsString := qryafiliados_empresascod_departamento_lab.Value;
                      dmafiliaciones.Qryciudades2.ExecSQL;
                      dmafiliaciones.Qryciudades2.Active:=true;
                      dmafiliaciones.tblactividadeconomica.Open;
                      dmafiliaciones.tblocupaciones.Open;
                      dmafiliaciones.tbldepartamentos.Open;

                     qryempresas.close;
                     qryempresas.sql.clear;
                     qryempresas.sql.add('SELECT * FROM EMPRESAS WHERE TIP_DOCUMENTO = :"TIPO" AND NUM_DOCUMENTO = :"NUMERO"');
                     qryempresas.PARAMS[0].ASSTRING := qryafiliados_empresasTIP_DOCUMENTO_EMP.Value;
                     qryempresas.PARAMS[1].ASSTRING := qryafiliados_empresasNUM_DOCUMENTO_EMP.Value;
                     qryempresas.open;
                           dbctividadeconomica.KeyValue := qryempresasCOD_ACTIVIDAD_ECO.Value;
                            qryarp.Close;
                            qryarp.PREPARE;
                            qryarp.SQL.CLEAR;
                            qryarp.SQL.ADD('SELECT *  FROM dbo.arps where tip_documento = :"Tipo" and  num_documento = :"Numero"');
                            qryarp.PARAMS[0].ASSTRING := qryempresasTIP_DOCUMENTO_ARP.Value;
                            qryarp.PARAMS[1].ASSTRING := qryempresasNUM_DOCUMENTO_ARP.Value;
                            qryarp.OPEN;
                                if qryarp.RecordCount = 1 then
                                begin
                                EDIT7.Text := qryarpNOM_ARPS.Value;
                                end;

                     DBEdit36.Enabled := false;
                     DBEdit25.Enabled := false;
                     Button7.Enabled := false;
                     //DateTimePicker8.Enabled := false;
                     //qryafiliados_empresas.ExecSQL;
                     btnnempresa.Visible := false;
                     btngempresa.Visible := true;
                     Edit5.Text := qryempresasNOM_EMPRESA.Value;
                     DBEdit35.Enabled := false;
                     DBLookupComboBox25.Enabled := false;
                     DBNavigator2.BtnClick(nbEdit);
                     DBEdit59.SetFocus;
                     end
                     else
                     begin
                     PageControl3.ActivePage := TabSheet3;
                     qryafiliados_empresas.Close;
                     qryafiliados_empresas.ExecSQL;
                     qryafiliados_empresas.Open;
                     DBNavigator2.BtnClick(nbInsert);
                     btnnempresa.Visible := false;
                     btngempresa.Visible := false;
                     DBLookupComboBox25.SetFocus;
                     end;

                 end

                 else
                 begin
                 tblafiliados.Destroy;
                 qryafiliados_empresas.free;
                 frmafiliacion_independientes.Free;
                 qryrelacion_afiliados.Free;
                 end;
           end;
       end;
      end;
   end
      else
      begin
      grabar_afiliados_cotizantes;
      qryrelacion_afiliados.close;
      qryrelacion_afiliados.free;
      qryafiliados_empresas.Cancel;
      qryafiliados_empresas.free;
      qrybeneficiarios.Cancel;
      qrybeneficiarios.free;
      qrynovedades_afiliados.Cancel;
      qrynovedades_afiliados.free;
       tblafiliados.Cancel;
      tblafiliados.Destroy;
      if frmafiliacion_independientes = nil then
      begin
      frmafiliacion_independientes.Free;
      end
      else
      frmafiliacion_independientes.close;


      end;



end;

procedure Tfrmafiliacion_independientes.adicionar_afiliados_empresa;
begin
qryafiliados_empresas.Close;
     qryafiliados_empresas.Params[0].AsString := DBEdit67.Text;
     qryafiliados_empresas.Params[1].AsString := DBEdit68.Text;
     qryafiliados_empresas.Open;
         if qryafiliados_empresas.RecordCount = 0 then
         begin
         qryafiliados_empresas.Insert;
     //    qryafiliados_empresasCOD_OCUPACION.Value := dblprofesion.KeyValue;
         qryafiliados_empresasTIP_DOCUMENTO_AFI.Value := DBEdit67.Text;
         qryafiliados_empresasNUM_DOCUMENTO_AFI.Value := DBEdit68.Text;
         qryafiliados_empresasTIP_DOCUMENTO_EMP.Value := DBEdit67.Text;
         qryafiliados_empresasNUM_DOCUMENTO_EMP.Value := DBEdit68.Text;
         qryafiliados_empresasCOD_SUCURSAL.Value := '0';
         qryafiliados_empresasCOD_ESTADO.Value := 'A';
         qryafiliados_empresasVAL_SUELDO_AFIL.Value := 0;
         qryafiliados_empresasFEC_INGRESO_UNI.Value := strtodate(DateTimePicker4.Text);
         qryafiliados_empresasCOD_DEPARTAMENTO_LAB.Value   := dbldepartamentos.KeyValue;
         qryafiliados_empresasCOD_CIUDAD_LAB.Value   :=   dblciudades.KeyValue;
         qryafiliados_empresasDIR_AFILIADO_LAB.Value   :=   DBEdit11.text;
         qryafiliados_empresasTEL_AFILIADO_LAB.Value   :=   DBEdit12.text;
         qryafiliados_empresasTEL_AFILIADO_LAB2.Value   :=   DBEdit13.text;
         qryafiliados_empresasFEC_ING_EMPRESA.Value := strtodate(DateTimePicker4.Text);
         qryafiliados_empresas.Post;
         end;




end;

procedure Tfrmafiliacion_independientes.crear_empresa;
begin
qryempresas.close;
     qryempresas.sql.clear;
     qryempresas.sql.add('SELECT * FROM EMPRESAS WHERE TIP_DOCUMENTO = :"TIPO" AND NUM_DOCUMENTO = :"NUMERO"');
     qryempresas.PARAMS[0].ASSTRING := DBLookupComboBox2.Text;
     qryempresas.PARAMS[1].ASSTRING := DBEdit23.Text;
     qryempresas.RequestLive := true;
     qryempresas.open;
      if qryempresas.RecordCount = 0 then
       begin
       qryempresas.Insert;
       qryempresasTIP_DOCUMENTO.Value := DBLookupComboBox2.Text;
       qryempresasNUM_DOCUMENTO.Value := DBEdit23.Text;
       qryempresasCOD_SUCURSAL.Value := '0';
       qryempresasNOM_EMPRESA.Value   :=  trim(DBEdit69.Text) + ' ' + trim(DBEdit70.Text) + ' ' +trim(DBEdit71.Text) + ' ' +trim(DBEdit72.Text);
       qryempresasCOD_ACTIVIDAD_ECO.Value   := '5269';
       qryempresasCOD_DEPARTAMENTO.Value   := dbldepartamentos.KeyValue;
       qryempresasCOD_CIUDAD.Value   :=   dblciudades.KeyValue;
       qryempresasTIP_APORTANTE.Value   := 'P';
       qryempresasDIR_EMPRESA.Value   := DBEdit11.text;
       qryempresasTEL_EMPRESA.Value   := DBEdit12.text;
       qryempresasTEL_EMPRESA2.Value   := DBEdit13.text;
       qryempresasCOD_ESTADO.Value   := 'A';
       qryempresasCOD_OFICINA.Value   := gb_oficina;
       qryempresasCOD_REGIONAL.Value   := gb_regional;
       qryempresasFEC_AFILIACION.Value   := strtodate(DateTimePicker4.text);
       qryempresasCOD_TIPO_PER.Value   := 'N';
       qryempresasCOD_ZONA.Value   := DBLookupComboBox3.KeyValue;
       qryempresasCOD_DEPARTAMENTO_PAG.Value   := dbldepartamentos.KeyValue;
       qryempresasCOD_CIUDAD_PAG.Value   :=   dblciudades.KeyValue;
       qryempresas.Post;
    end;


end;

function Tfrmafiliacion_independientes.validar_salario: Boolean;
  begin
   dmafiliaciones.qrysalariominimo.Close;
   dmafiliaciones.qrysalariominimo.Prepare;
   dmafiliaciones.qrysalariominimo.Params[0].Value := '01/01/'+copy(datetimepicker4.Text,7,4);
   dmafiliaciones.qrysalariominimo.open;
   dmafiliaciones.qrysalariominimo.First;
   validar_salario := false;
   if dblmodalidadtrabajo.KeyValue = 'I' then
     begin
      if (dmafiliaciones.qrysalariominimoSAL_MINIMO.value*2) > sueldo then
      begin
      ShowMessage('El salario del Cotizante Independiente no puede ser Menor de Dos salario Minimo ');
      validar_salario := true;
      end
      else
        if (dmafiliaciones.qrysalariominimoSAL_MINIMO.value*20) < (sueldo) then
        begin
        ShowMessage('El salario del Cotizante Independiente no puede ser Mayor de 20 salarios Minimos ');
        validar_salario := true;
        end;
      end
      else
      if dblmodalidadtrabajo.KeyValue = 'E' then
       begin
        if (dmafiliaciones.qrysalariominimoSAL_MINIMO.value/2) > sueldo then
        begin
        ShowMessage('El salario de la Empleada(o) Domestica(o) no puede ser Menor de la mitad del salario Minimo ');
        validar_salario := true;
      end
      else
        if (dmafiliaciones.qrysalariominimoSAL_MINIMO.value*20) < sueldo then
        begin
        ShowMessage('salario de la Empleada(o) Domestica(o) no puede ser Mayor de 20 salarios Minimos ');
        validar_salario := true;
        end;

      end;




end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox13Exit(
  Sender: TObject);
begin
if DBLookupComboBox13.KeyValue = '' then
begin
ShowMessage('Selecione  el tipo de  Documento de la IPS');
DBLookupComboBox13.SetFocus;
end;
end;

procedure Tfrmafiliacion_independientes.DBEdit19Exit(Sender: TObject);
begin
      if DBEdit19.text = '' then
      begin
      ShowMessage('Digite el numero de  Documento de la IPS o Cero Si no tiene');
      Button3.Enabled := true;
      DBEdit19.SetFocus;
      end
      else
      if DBEdit19.text = '0' then
      begin
      Button3.Enabled := false;
      dblescolaridad.SetFocus;
      end;

end;

procedure Tfrmafiliacion_independientes.DBLookupComboBox12Exit(
  Sender: TObject);
begin
if DBLookupComboBox12.KeyValue = '' then
begin
ShowMessage('Selecione  el tipo de  Documento de la IPS');
DBLookupComboBox12.SetFocus;
end;

end;

procedure Tfrmafiliacion_independientes.DBEdit18Exit(Sender: TObject);
begin
      if DBEdit18.text = '' then
      begin
        button4.Click;

     // ShowMessage('Digite el numero de  Documento de la IPS o Cero Si no tiene');
     // DBEdit18.SetFocus;
      end
      else
      if DBEdit18.text = '0' then
      begin
      Button4.Enabled := false;
      RadioGroup2.SetFocus;
      end;


end;

procedure Tfrmafiliacion_independientes.DateTimePicker8Exit(
  Sender: TObject);
begin
    if frmafiliaciones.mayor_hoy(tblafiliadosfec_nacimiento)=true then
     begin
          DateTimePicker2.SetFocus;
     end
     else
      if  (round(YearSpan(gb_fec_hoy,DateTimePicker2.Date))) > 110 then
      begin
      ShowMessage('Cotizante No puede Tener Mas de 110 años  de edad');
      DateTimePicker2.SetFocus;
      end
      else
      if (DBLookupComboBox2.KeyValue = 'NIT') then
        begin
        ShowMessage('Cotizante No puede Tener Identificacion Tributaria');
        DBLookupComboBox2.SetFocus;
        end
        else
             if  (round(YearSpan(gb_fec_hoy,DateTimePicker2.Date))) <= 18 then
             begin
                if (DBLookupComboBox2.KeyValue = 'CC') or (DBLookupComboBox2.KeyValue = 'CE') then
                begin
                ShowMessage('Cotizante Menor de Edad y con Cedula de Ciudadania');
                DBLookupComboBox2.SetFocus;
                end;
             end
             else
             if  (round(YearSpan(gb_fec_hoy,DateTimePicker2.Date))) > 18 then
             begin
                if (DBLookupComboBox2.KeyValue = 'RC') or (DBLookupComboBox2.KeyValue = 'TI') then
                begin
                ShowMessage('Cotizante Mayor de  de Edad debe Poseer Cedula de Ciudadania');
                DBLookupComboBox2.SetFocus;
                end;
             end;
end;

procedure Tfrmafiliacion_independientes.DateTimePicker8Change(
  Sender: TObject);
begin
        tblafiliados.edit;
        tblafiliadosfec_nacimiento.Value:=DateTimePicker2.date;
end;

procedure Tfrmafiliacion_independientes.Button4Click(Sender: TObject);
begin
   frmips:=Tfrmips.create(Application);
   try
       frmips.caption:='[IPS]- BENEFICIARIO IND';
       frmips.eddepto.text:=tblafiliadoscod_departamento_res.Text;
       frmips.edmun.text:=tblafiliadoscod_ciudad_res.Text;
       frmips.show;
     except
       frmips.free;
   end;

end;

end.




