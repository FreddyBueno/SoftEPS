UNIT UPLANILLACORRECIONES ;

INTERFACE

USES
  WINDOWS, MESSAGES, SYSUTILS, VARIANTS, CLASSES, GRAPHICS, CONTROLS, FORMS,
  DIALOGS, STDCTRLS, GRIDS, EXTCTRLS, COMCTRLS, IMGLIST, MASK, MATH, DB,
  DBTABLES, DBCTRLS, MENUS, Buttons, DBGrids, ADODB;

TYPE
  Tfrmcorreciones = CLASS(TFORM)
    PCENCABEZADO: TPAGECONTROL;
    TABSHEET1: TTABSHEET;
    TABSHEET2: TTABSHEET;
    TABSHEET3: TTABSHEET;
    PANEL1: TPANEL;
    PANEL2: TPANEL;
    AGREGAR: TBUTTON;
    BUTTON1: TBUTTON;
    PANEL3: TPANEL;
    SGDETALLE: TSTRINGGRID;
    PBRGRABARDETALLE: TPROGRESSBAR;
    EDTCONSECUTIVO: TEDIT;
    EDTFECHARECAUDO: TEDIT;
    TABSHEET4: TTABSHEET;
    PANEL5: TPANEL;
    PANEL6: TPANEL;
    LABEL43: TLABEL;
    LABEL5: TLABEL;
    Label3: TLabel;
    Label47: TLabel;
    GroupBox1: TGroupBox;
    BTNBORRARPLA: TBitBtn;
    nuevaplanilla: TBitBtn;
    btgrabarplanilla: TBitBtn;
    GroupBox2: TGroupBox;
    Edit4: TEdit;
    Label15: TLabel;
    Label45: TLabel;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    edttotalplanilla: TEdit;
    edttotalaporte: TEdit;
    edtincapacidad: TEdit;
    edtlicencia: TEdit;
    edtnetoaportes: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label24: TLabel;
    Label16: TLabel;
    edtintereses: TEdit;
    edtaporteinteteres: TEdit;
    edtsaldoanterior: TEdit;
    edttotalpagado: TEdit;
    GroupBox4: TGroupBox;
    Label37: TLabel;
    cbtipodocempresa: TComboBox;
    Label2: TLabel;
    ednumero: TEdit;
    Button3: TButton;
    Label4: TLabel;
    edtnombreempresa: TEdit;
    cbtipodeclaracion: TComboBox;
    lbfechapago: TLabel;
    dtfechapago: TDateTimePicker;
    Label1: TLabel;
    edtperiodo: TMaskEdit;
    Label49: TLabel;
    msperpresentacion: TMaskEdit;
    Label44: TLabel;
    cbtipoaportante: TComboBox;
    Label50: TLabel;
    edtdigito: TEdit;
    Label41: TLabel;
    edtultimafechapago: TEdit;
    Label21: TLabel;
    edtplanilla: TEdit;
    GroupBox5: TGroupBox;
    Label38: TLabel;
    cbtipodocafiliado: TComboBox;
    Label22: TLabel;
    edtnumeroducafiliado: TEdit;
    Button4: TButton;
    Label23: TLabel;
    edtnombreafiliado: TEdit;
    Label25: TLabel;
    cbtipocotizante: TComboBox;
    GroupBox6: TGroupBox;
    cking: TCheckBox;
    ckret: TCheckBox;
    cktda: TCheckBox;
    cktaa: TCheckBox;
    ckvsp: TCheckBox;
    ckvst: TCheckBox;
    cksln: TCheckBox;
    ckige: TCheckBox;
    cklma: TCheckBox;
    ckvac: TCheckBox;
    GroupBox7: TGroupBox;
    eddias: TEdit;
    Label26: TLabel;
    edtsalariobase: TEdit;
    Label27: TLabel;
    Label28: TLabel;
    edtvalorneto: TEdit;
    Label29: TLabel;
    edtigresobasecotizacion: TEdit;
    Label30: TLabel;
    edtcotizacionobligatorio: TEdit;
    GroupBox8: TGroupBox;
    Label6: TLabel;
    edtvalupc: TEdit;
    Label39: TLabel;
    edttotalpagadoafiliado: TEdit;
    GroupBox9: TGroupBox;
    edtvalincapacidad: TEdit;
    edtnoautlicencia: TEdit;
    edtvallicencia: TEdit;
    edtautincapacidad: TEdit;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Label35: TLabel;
    Label36: TLabel;
    Label46: TLabel;
    Edit20: TEdit;
    edtupc: TEdit;
    Panel7: TPanel;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    GroupBox11: TGroupBox;
    cbbanco: TDBLookupComboBox;
    Label17: TLabel;
    Label18: TLabel;
    edtcuenta: TEdit;
    Label19: TLabel;
    edtvalefectivo: TEdit;
    Label20: TLabel;
    edtvalcheque: TEdit;
    Label40: TLabel;
    edttotalconsignado: TEdit;
    sgdetabanco: TStringGrid;
    TabSheet5: TTabSheet;
    Panel4: TPanel;
    sgupc: TStringGrid;
    dtsdetincapacidades: TDataSource;
    sgincapacidades: TStringGrid;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    DBGrid1: TDBGrid;
    Label48: TLabel;
    Descuentos: TGroupBox;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Label51: TLabel;
    Label54: TLabel;
    GroupBox10: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    ComboBox1: TComboBox;
    GroupBox12: TGroupBox;
    Button5: TButton;
    Button6: TButton;
    Button2: TButton;
    Label9: TLabel;
    Label10: TLabel;
    Label52: TLabel;
    Edit1: TEdit;
    EDTNPLACORRECION: TEdit;
    Label53: TLabel;
    TMPBORRAR: TADOQuery;
    Label42: TLabel;
    CheqDev: TCheckBox;
    Image1: TImage;
    qrynovedad166: TADOQuery;
    qrynovedad166COD_NOVEDAD_AFIL: TBCDField;
    qrynovedad166NOV_CODIGO: TStringField;
    qrynovedad166TIP_DOCUMENTO: TStringField;
    qrynovedad166NUM_DOCUMENTO: TStringField;
    qrynovedad166COD_OFICINA: TStringField;
    qrynovedad166COD_REGIONAL: TStringField;
    qrynovedad166USU_TIPO_DOC: TStringField;
    qrynovedad166USU_NUMERO_DOC: TStringField;
    qrynovedad166FEC_NOVEDAD_AFIL: TDateTimeField;
    qrynovedad166NOM_CAMPO: TStringField;
    qrynovedad166DAT_CAMPO_ANT: TStringField;
    qrynovedad166NOM_TABLA: TStringField;
    qrynovedad166DAT_CAMPO_DES: TStringField;
    qrynovedad166FEC_EVENTO: TDateTimeField;
    qrynovedad166FEC_APLICATIVO: TDateTimeField;
    qrynovedad166TIP_DOCUMENTO_EMP: TStringField;
    qrynovedad166NUM_DOCUMENTO_EMP: TStringField;
    qrynovedad166COD_SUCURSAL: TStringField;
    qrynovedad166NUM_PLANILLA: TStringField;
    qrynovedad166NOV890: TStringField;
    qrynovedad166FEC_ENTREGA_CARNET: TDateTimeField;
    qrynovedad166TIPO_CARNET: TStringField;
    qrydiferenciafechanov166: TADOQuery;
    qrydiferenciafechanov166DIFERENCIA: TIntegerField;
    qrynovedad166primer: TADOQuery;
    qrynovedad166primerNUM_PLANILLA: TStringField;
    qrynovedad166primerAFI_TIPO_DOC: TStringField;
    qrynovedad166primerAFI_NUMERO_DOC: TStringField;
    qrynovedad166primerNOV_ING: TStringField;
    qrynovedad166primerNOV_RET: TStringField;
    qrynovedad166primerNOV_TDA: TStringField;
    qrynovedad166primerNOV_TAA: TStringField;
    qrynovedad166primerNOV_VSP: TStringField;
    qrynovedad166primerNOV_VST: TStringField;
    qrynovedad166primerNOV_SLN: TStringField;
    qrynovedad166primerNOV_IGE: TStringField;
    qrynovedad166primerNOV_LMA: TStringField;
    qrynovedad166primerNOV_VAC: TStringField;
    qrynovedad166primerDIA_COTIZADOS: TStringField;
    qrynovedad166primerSAL_BASE: TBCDField;
    qrynovedad166primerVAL_NETO_NOV: TBCDField;
    qrynovedad166primerING_BASE_COT: TBCDField;
    qrynovedad166primerCOT_OBLIGATORIA: TBCDField;
    qrynovedad166primerNUM_INCAPACIDAD_EGR: TStringField;
    qrynovedad166primerVAL_INCAPACIDAD_EGR: TBCDField;
    qrynovedad166primerNUM_LICENCIA_MAT: TStringField;
    qrynovedad166primerVAL_LICENCIA_MAT: TBCDField;
    qrynovedad166primerVAL_UPC_ADI: TBCDField;
    qrynovedad166primerVAL_TOTAL_COT: TBCDField;
    qrynovedad166primerDET_ESTADO: TStringField;
    qrynovedad166primerPER_COTIZACION: TStringField;
    qrynovedad166primerPER_PRESENTACION: TStringField;
    qrynovedad166primerCOD_OFICINA: TStringField;
    qrynovedad166primerNUM_DECLARACION: TBCDField;
    qrynovedad166primerNOM_AFILIADO: TStringField;
    qrynovedad166diferencia: TADOQuery;
    qrynovedad166diferenciaintervalo: TIntegerField;
    qryafiliadosnr: TADOQuery;
    qryafiliadosnrTIP_DOCUMENTO_EMP: TStringField;
    qryafiliadosnrNUM_DOCUMENTO_EMP: TStringField;
    qryafiliadosnrTIP_DOCUMENTO_AFI: TStringField;
    qryafiliadosnrNUM_DOCUMENTO_AFI: TStringField;
    qryafiliadosnrPRI_APELLIDO: TStringField;
    qryafiliadosnrSEG_APELLIDO: TStringField;
    qryafiliadosnrPRI_NOMBRE: TStringField;
    qryafiliadosnrSEG_NOMBRE: TStringField;
    qryafiliadosnrVAL_SUELDO_AFIL: TBCDField;
    qryafiliadosnrFEC_INGRESO_UNI: TDateTimeField;
    qryafiliadosnrFEC_EGRESO_UNI: TDateTimeField;
    qryafiliadosnrCOD_ESTADO: TStringField;
    qryafiliadosnrFEC_NACIMIENTO: TDateTimeField;
    qryafiliadosnrCOD_SEXO: TStringField;
    qryafiliadosnrCOD_MODALIDAD_TRA: TStringField;
    qryafiliadosnrFEC_EGRESO_UNI_1: TDateTimeField;
    qrycorreccion: TADOQuery;
    qrynota: TADOQuery;
    qrycorreccionNUM_PLANILLA: TStringField;
    qrycorreccionEMP_TIPO_DOC: TStringField;
    qrycorreccionEMP_NUMERO_DOC: TStringField;
    qrycorreccionCOD_SUCURSAL: TStringField;
    qrycorreccionTIP_DECLARACION: TStringField;
    qrycorreccionFEC_PAGO: TDateTimeField;
    qrycorreccionNUM_PLANILLA_CORR: TStringField;
    qrycorreccionPER_COTIZACION: TStringField;
    qrycorreccionPER_PRESENTACION: TStringField;
    qrycorreccionTOT_PLANILLA: TBCDField;
    qrycorreccionTOT_APORTE_PER: TBCDField;
    qrycorreccionTOT_INCAPACIDAD: TBCDField;
    qrycorreccionTOT_LICENCIAS: TBCDField;
    qrycorreccionTOT_APORTE: TBCDField;
    qrycorreccionINT_MORA: TBCDField;
    qrycorreccionTOT_APORTE_MMORA: TBCDField;
    qrycorreccionTOT_SALDO_FAV: TBCDField;
    qrycorreccionTOT_UPC: TBCDField;
    qrycorreccionTOT_PAGADO: TBCDField;
    qrycorreccionCOD_BANCO: TStringField;
    qrycorreccionNUM_CUENTA: TStringField;
    qrycorreccionVAL_EFECTIVO: TBCDField;
    qrycorreccionVAL_CHEQUE: TBCDField;
    qrycorreccionEST_PLANILLA: TStringField;
    qrycorreccionCOD_REGIONAL: TStringField;
    qrycorreccionCOD_OFICINA: TStringField;
    qrycorreccionNUM_DECLARACION: TBCDField;
    qrycorreccionCRU_CONCILIACION: TStringField;
    qrycorreccionFEC_DIGITACION: TDateTimeField;
    qrycorreccionTIP_DOC_USUARIO: TStringField;
    qrycorreccionNUM_DOC_USUARIO: TStringField;
    qrycorreccionFEC_MODIFICACION: TDateTimeField;
    qrycorreccionNO_INCAP_PAG: TStringField;
    qrycorreccionVAL_INCAP_PAG: TBCDField;
    qrycorreccionNO_LICEN_PAG: TStringField;
    qrycorreccionVAL_LICEN_PAG: TBCDField;
    qrycorreccionNO_MESES_MORA: TBCDField;
    qrycorreccionNO_PLANINILLA_ANT: TStringField;
    qrycorreccionVAL_NETO_UPC: TBCDField;
    qrycorreccionVAL_INTERES_UPC: TBCDField;
    qrycorreccionVAL_APORMASINT_UPC: TBCDField;
    qrycorreccionVAL_SALFAVOR_UPC: TBCDField;
    qrycorreccionVAL_PAGO_UPC: TBCDField;
    qrycorreccionNUM_LOTE: TStringField;
    qrycorreccionNOM_EMPRESA: TStringField;
    qrynotaNUM_PLANILLA: TStringField;
    qrynotaTIP_DOC_EMPRESA: TStringField;
    qrynotaNUM_DOC_EMPRESA: TStringField;
    qrynotaTIP_NOTA: TStringField;
    qrynotaVAL_NOTA: TBCDField;
    qrynotaNUM_COMP_DES: TStringField;
    qrynotaFEC_DESCUENTO: TDateTimeField;
    qrynotaTIP_DESCUENTO: TStringField;
    qrynotaTIP_NOTA2: TStringField;
    qrynotaPER_PAGO_NOTA: TDateTimeField;
    qrynovedad187: TADOQuery;
    qrynovedad187COD_NOVEDAD_AFIL: TBCDField;
    qrynovedad187NOV_CODIGO: TStringField;
    qrynovedad187TIP_DOCUMENTO: TStringField;
    qrynovedad187NUM_DOCUMENTO: TStringField;
    qrynovedad187COD_OFICINA: TStringField;
    qrynovedad187COD_REGIONAL: TStringField;
    qrynovedad187USU_TIPO_DOC: TStringField;
    qrynovedad187USU_NUMERO_DOC: TStringField;
    qrynovedad187FEC_NOVEDAD_AFIL: TDateTimeField;
    qrynovedad187NOM_CAMPO: TStringField;
    qrynovedad187DAT_CAMPO_ANT: TStringField;
    qrynovedad187NOM_TABLA: TStringField;
    qrynovedad187DAT_CAMPO_DES: TStringField;
    qrynovedad187FEC_EVENTO: TDateTimeField;
    qrynovedad187FEC_APLICATIVO: TDateTimeField;
    qrynovedad187TIP_DOCUMENTO_EMP: TStringField;
    qrynovedad187NUM_DOCUMENTO_EMP: TStringField;
    qrynovedad187COD_SUCURSAL: TStringField;
    qrynovedad187NUM_PLANILLA: TStringField;
    qrynovedad187NOV890: TStringField;
    qrynovedad187FEC_ENTREGA_CARNET: TDateTimeField;
    qrynovedad187TIPO_CARNET: TStringField;
    qrynovedad187MOT_NO_ENTREGA: TStringField;
    qrymesesdif: TADOQuery;
    qrymesesdifMESESDIFF: TIntegerField;
    PROCEDURE EDTPLANILLAEXIT(SENDER: TOBJECT);
    PROCEDURE DTFECHAPAGOEXIT(SENDER: TOBJECT);
    PROCEDURE EDDIASEXIT(SENDER: TOBJECT);
    PROCEDURE EDTIGRESOBASECOTIZACIONEXIT(SENDER: TOBJECT);
    PROCEDURE AGREGARCLICK(SENDER: TOBJECT);
    PROCEDURE BUTTON1CLICK(SENDER: TOBJECT);
    PROCEDURE BTGRABARPLANILLACLICK(SENDER: TOBJECT);
    PROCEDURE FORMCLOSE(SENDER: TOBJECT; VAR ACTION: TCLOSEACTION);
    PROCEDURE FORMCREATE(SENDER: TOBJECT);
    PROCEDURE EDTVALINCAPACIDADEXIT(SENDER: TOBJECT);
    PROCEDURE EDTVALLICENCIAEXIT(SENDER: TOBJECT);
    PROCEDURE EDTVALUPCEXIT(SENDER: TOBJECT);
    PROCEDURE FORMKEYPRESS(SENDER: TOBJECT; VAR KEY: CHAR);
    PROCEDURE CALCULAR;
    PROCEDURE TABSHEET2ENTER(SENDER: TOBJECT);
    PROCEDURE LIMPIAR;
    PROCEDURE EDTINTERESESEXIT(SENDER: TOBJECT);
    PROCEDURE LIMPIAR_PLANILLA;
    PROCEDURE EDTCUENTAENTER(SENDER: TOBJECT);
    PROCEDURE GUARDAR_PLANILLA;
    PROCEDURE EDTPERIODOEXIT(SENDER: TOBJECT);
    PROCEDURE EDTVALEFECTIVOEXIT(SENDER: TOBJECT);
    PROCEDURE EDTPLANILLAENTER(SENDER: TOBJECT);
    PROCEDURE EDTNUMERODUCAFILIADOEXIT(SENDER: TOBJECT);
    PROCEDURE VERIFICAR_COMPENSACION;
    PROCEDURE EDTSALARIOBASEEXIT(SENDER: TOBJECT);
    PROCEDURE EDTNUMERODUCAFILIADOKEYPRESS(SENDER: TOBJECT; VAR KEY: CHAR);
    PROCEDURE EDTPLANILLAKEYPRESS(SENDER: TOBJECT; VAR KEY: CHAR);
    PROCEDURE EDNUMEROKEYPRESS(SENDER: TOBJECT; VAR KEY: CHAR);
    PROCEDURE EDNUMEROEXIT(SENDER: TOBJECT);
    PROCEDURE FECHAS_PAGO;
    PROCEDURE CARGCAR_PLANILLAS;
    PROCEDURE nuevaplanillaClick(SENDER: TOBJECT);
    PROCEDURE BLOQUEAR;
    PROCEDURE CBBANCOCLICK(SENDER: TOBJECT);
    PROCEDURE CKRETCLICK(SENDER: TOBJECT);
    PROCEDURE CKTDACLICK(SENDER: TOBJECT);
    PROCEDURE CKINGCLICK(SENDER: TOBJECT);
    PROCEDURE CKTAACLICK(SENDER: TOBJECT);
    PROCEDURE MODIFICAR_AFILIADO;
    PROCEDURE SGDETALLEDBLCLICK(SENDER: TOBJECT);
    PROCEDURE CARTERA_MOROSA;
    PROCEDURE  ESTADOS_PLANILLA;
    PROCEDURE USUARIOS_UPC;
    PROCEDURE MSPERPRESENTACIONEXIT(SENDER: TOBJECT);
    PROCEDURE EDTCOTIZACIONOBLIGATORIOEXIT(SENDER: TOBJECT);
    PROCEDURE BUTTON3CLICK(SENDER: TOBJECT);
    PROCEDURE BUTTON4CLICK(SENDER: TOBJECT);
    PROCEDURE SALARIOMINIMO;
    PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);
    PROCEDURE CBTIPODECLARACIONEXIT(SENDER: TOBJECT);
    PROCEDURE EDTVALLICENCIAKEYDOWN(SENDER: TOBJECT; VAR KEY: WORD;
    SHIFT: TSHIFTSTATE);
    PROCEDURE EDTTOTALPAGADOAFILIADOEXIT(SENDER: TOBJECT);
    PROCEDURE EDTVALINCAPACIDADENTER(SENDER: TOBJECT);
    PROCEDURE EDTVALLICENCIAENTER(SENDER: TOBJECT);
    PROCEDURE CERRAR1CLICK(SENDER: TOBJECT);
    PROCEDURE CONSULTAS1CLICK(SENDER: TOBJECT);
    PROCEDURE PAGOSPOREMPRESA1CLICK(SENDER: TOBJECT);
    PROCEDURE EDTSALDOANTERIOREXIT(SENDER: TOBJECT);
    PROCEDURE EDTUPCEXIT(SENDER: TOBJECT);
    PROCEDURE EDTVALUPCENTER(SENDER: TOBJECT);
    PROCEDURE AFILIADOSEMPRESA1CLICK(SENDER: TOBJECT);
    PROCEDURE DTFECHAPAGOENTER(SENDER: TOBJECT);
    PROCEDURE CBTIPODECLARACIONENTER(SENDER: TOBJECT);
    PROCEDURE BTNBORRARPLACLICK(SENDER: TOBJECT);
    procedure TabSheet1Enter(Sender: TObject);
    PROCEDURE RETIRAR_USUARIOS;
    procedure edtplanillaChange(Sender: TObject);
    procedure cbtipodocempresaChange(Sender: TObject);
    procedure ednumeroChange(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit20Change(Sender: TObject);
    procedure Edit14Change(Sender: TObject);
    procedure Edit16Change(Sender: TObject);
    procedure Edit17Change(Sender: TObject);
    procedure edtinteresesChange(Sender: TObject);
    procedure edtsaldoanteriorChange(Sender: TObject);
    procedure recalcular;
    procedure Edit14Exit(Sender: TObject);
    procedure Edit16Exit(Sender: TObject);
    procedure edtcotizacionobligatorioChange(Sender: TObject);
    procedure sgdetabancoSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure CheckBox1Exit(Sender: TObject);
    procedure CheckBox2Exit(Sender: TObject);
    procedure EDTNPLACORRECIONExit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure calcular_valor_incapacidad;
    procedure CheckBox2Enter(Sender: TObject);
    procedure CheckBox1Enter(Sender: TObject);
    procedure sgdetabancoEnter(Sender: TObject);
    procedure AgregarEnter(Sender: TObject);
    procedure CheckBox3Exit(Sender: TObject);
    procedure CheckBox4Exit(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CheckBox3Enter(Sender: TObject);
    procedure CheckBox4Enter(Sender: TObject);
    procedure Edit20Exit(Sender: TObject);
    procedure edtvalupcChange(Sender: TObject);
    procedure edtsalariobaseChange(Sender: TObject);

    FUNCTION  novedad166(tipo,Numero: String):String;
    FUNCTION  conciliar:string;
    PROCEDURE cargar_movimiento;
    FUNCTION  estado_pago:string;


  PRIVATE

    { PRIVATE DECLARATIONS }
  PUBLIC
    { PUBLIC DECLARATIONS }
  END;

VAR
  frmcorreciones: Tfrmcorreciones;
  ESTADO : BOOLEAN;
  ESTADO_PLANILLA : STRING;
  ENCONTRO: BOOLEAN;
  ESTADO_USUARIO : STRING;
  INCAPACIDAD : BOOLEAN;
  LICENCIA : BOOLEAN;
  COTIZACION : REAL;
  EDADUPC : INTEGER;
  MODIFICADO :BOOLEAN;
  IBC : BOOLEAN;
  NRE : BOOLEAN;
  NRS : BOOLEAN;
  DES : BOOLEAN;
  UPC : BOOLEAN;
  IGE : BOOLEAN;
  LIC : BOOLEAN;
  EMP : BOOLEAN;
  NOTAS :ARRAY[1..5,1..2] OF STRING;
IMPLEMENTATION

USES DTMODULO, UACERCA, UAFILIADOS, UEMPRESAS, UPRINCIPAL,
  UGLOBAL,UCONPAGOS, UCONPAGOSE, UAFILIAEMPRESA, Uplanillas;

{$R *.DFM}

PROCEDURE Tfrmcorreciones.EDTPLANILLAEXIT(SENDER: TOBJECT);

BEGIN
 IF EDTPLANILLA.TEXT > '0' THEN

    BEGIN

    //VERIFICACION DEL NUMERO DE PLANILLA EN L0S MOVIMIENTOS BANCARIOS
    DATAMODULE1.qryestrato.CLOSE;
    DATAMODULE1.qryestrato.SQL.CLEAR;
    DATAMODULE1.qryestrato.SQL.ADD('SELECT * FROM EST_BANCARIO_AUTO  WHERE  NUM_PLANILLA = :"PLANILLA"');
    DATAMODULE1.qryestrato.Parameters[0].VALUE := TRIM(FRMCORRECIONES.EDTPLANILLA.TEXT);
    DATAMODULE1.qryestrato.OPEN;
    IF DATAMODULE1.qryestrato.RECORDCOUNT = 0 THEN
    BEGIN
      SHOWMESSAGE(LowerCase('ESTA PLANILLA NO SE PUEDE INGRESAR PORQUE NO PRESENTA MOVIMIENTOS BANCARIOS'));
      LIMPIAR;
      EDTPLANILLA.SetFocus;
      exit;
    END;
    cargar_movimiento;
    IF (CBTIPODOCEMPRESA.ITEMINDEX = -1) AND (EDNUMERO.TEXT = '0') THEN
    BEGIN
    DATAMODULE1.QRYAUTOLIQUIDACION.CLOSE;
    DATAMODULE1.QRYAUTOLIQUIDACION.SQL.CLEAR;
    DATAMODULE1.QRYAUTOLIQUIDACION.SQL.ADD('SELECT * FROM AUTOLIQUIDACION  WHERE  NUM_PLANILLA = :"PLANILLA"');
    DATAMODULE1.QRYAUTOLIQUIDACION.Parameters[0].VALUE := TRIM(EDTPLANILLA.TEXT);
    DATAMODULE1.QRYAUTOLIQUIDACION.OPEN;
        IF DATAMODULE1.QRYAUTOLIQUIDACION.RECORDCOUNT > 0 THEN
           BEGIN
           IF DATAMODULE1.QRYAUTOLIQUIDACIONTIP_DECLARACION.VALUE = 'C' THEN
           BEGIN
                 IF MESSAGEDLG ('LA PLANILLA YA FUE DIGITADA  DESEA EDITARLA?', MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
                  BEGIN
                  LIMPIAR_PLANILLA;
                  CARGCAR_PLANILLAS;
                  ENCONTRO := TRUE;
                  END;
           END
           ELSE
           IF DATAMODULE1.QRYAUTOLIQUIDACIONTIP_DECLARACION.VALUE <> 'C' THEN
           BEGIN
           SHOWMESSAGE('LA  PLANILLA  NO ES UNA  CORRECION ');
           LIMPIAR_PLANILLA;
           EDTPLANILLA.SETFOCUS;

           END;
        END
        ELSE IF DATAMODULE1.QRYAUTOLIQUIDACION.RECORDCOUNT = 0 THEN
             BEGIN
             ENCONTRO := FALSE;
             END;
    END;
    END;

    IF  EDTPLANILLA.TEXT = '0' THEN
    BEGIN
    SHOWMESSAGE('DIGITE  EL NUMERO DE PLANILLA A  DIGITAR');
    LIMPIAR_PLANILLA;
    EDTPLANILLA.SETFOCUS;
    END;

  END;

PROCEDURE Tfrmcorreciones.DTFECHAPAGOEXIT(SENDER: TOBJECT);
BEGIN
     IF  DTFECHAPAGO.DATE >= STRTODATE(GLCREACIONEPS) THEN
     BEGIN
          IF DTFECHAPAGO.DATE  = strtodate(gldate)+1 THEN
          BEGIN
          SHOWMESSAGE(LowerCase('DIGITE  LA FECHA DE  PAGO'));
          DTFECHAPAGO.SETFOCUS
          END
          ELSE
              IF DTFECHAPAGO.DATE > STRTODATE(GLDATE) THEN
              BEGIN
              SHOWMESSAGE(LowerCase('LA  FECHA  DE  PAGO NO PUEDE SER  MAYOR A LA FECHA ACTUAL'));
              DTFECHAPAGO.SETFOCUS;
              DTFECHAPAGO.DATE := strtodate(gldate)+1;
              END
              ELSE IF DTFECHAPAGO.DATE <= STRTODATE(GLDATE) THEN
                   BEGIN
                        IF CBTIPODECLARACION.ITEMINDEX = 0 THEN
                        BEGIN
                        frmcorreciones.PCENCABEZADO.ACTIVEPAGE := TABSHEET2;
                          IF CBTIPODOCAFILIADO.Enabled = TRUE THEN
                              CBTIPODOCAFILIADO.SETFOCUS
                          ELSE
                              AGREGAR.SetFocus;
                        END;
                   END;

 END
 ELSE IF DTFECHAPAGO.DATE < STRTODATE(GLCREACIONEPS) THEN
      BEGIN
      SHOWMESSAGE(LowerCase('FECHA  NO VALIDA PARA LA  EPS'));
      DTFECHAPAGO.SETFOCUS;
       END;
END;


PROCEDURE Tfrmcorreciones.EDDIASEXIT(SENDER: TOBJECT);
VAR DIAS : INTEGER;
BEGIN
 IF EDDIAS.TEXT <> '' THEN
 BEGIN
    DIAS := STRTOINT(EDDIAS.TEXT);
    IF DIAS > 30 THEN
    BEGIN
    SHOWMESSAGE(LowerCase('ERROR  LOS DIAS  NO PUEDEN SER MAYORES A 30 DIAS'));
    EDDIAS.SETFOCUS
    END;
     IF DIAS = 0 THEN
        BEGIN
        SHOWMESSAGE(LowerCase('ERROR  LOS DIAS  NO PUEDEN SER IGUAL A 0 DIAS'));
        EDDIAS.SETFOCUS
        END;
     DATAMODULE1.qrydiasafil.Close;
     DATAMODULE1.qrydiasafil.Parameters[0].Value := STRTODATE('01' + '/' + EDTPERIODO.Text );
     DATAMODULE1.qrydiasafil.Parameters[1].Value := CBTIPODOCAFILIADO.Text;
     DATAMODULE1.qrydiasafil.Parameters[2].Value := EDTNUMERODUCAFILIADO.Text;
     DATAMODULE1.qrydiasafil.Open;
     IF DATAMODULE1.qrydiasafil.RecordCount > 0 THEN
     BEGIN
      IF (DATAMODULE1.qrydiasafilNODIAS.Value < 30) AND (DIAS=30) THEN
      SHOWMESSAGE(LowerCase('ERROR LOS DIAS DE COTIZACION SON MAYORES QUE LOS ESPERADOS DESDE LA FECHA DE AFILIACION :')+ INTTOSTR(DATAMODULE1.qrydiasafilNODIAS.Value))

     END
 END;
END;


PROCEDURE Tfrmcorreciones.EDTIGRESOBASECOTIZACIONEXIT(SENDER: TOBJECT);
VAR VALOR_COTIZACION : REAL;
BEGIN
 IF EDTIGRESOBASECOTIZACION.TEXT <> '' THEN
 BEGIN
   IF CKSLN.CHECKED = FALSE THEN
   BEGIN
   VALOR_COTIZACION := STRTOFLOAT(EDTIGRESOBASECOTIZACION.TEXT)* 0.12;
   EDTCOTIZACIONOBLIGATORIO.TEXT := FLOATTOSTR(ROUNDTO((VALOR_COTIZACION),2));
   EDTTOTALPAGADOAFILIADO.TEXT := FLOATTOSTR(ROUNDTO((VALOR_COTIZACION),2));
   END;
   IF CKSLN.CHECKED = TRUE THEN
   BEGIN
   VALOR_COTIZACION := STRTOFLOAT(EDTIGRESOBASECOTIZACION.TEXT)* 0.08;
   EDTCOTIZACIONOBLIGATORIO.TEXT := FLOATTOSTR(ROUNDTO((VALOR_COTIZACION),2));
   EDTTOTALPAGADOAFILIADO.TEXT := FLOATTOSTR(ROUNDTO((VALOR_COTIZACION),2));
   END;
 END;
END;

PROCEDURE Tfrmcorreciones.AGREGARCLICK(SENDER: TOBJECT);
BEGIN
IF ((EDTNUMERODUCAFILIADO.TEXT <> '') AND (CBTIPODOCAFILIADO.TEXT <> ''))AND ( EDTCOTIZACIONOBLIGATORIO.TEXT > '0') THEN
 BEGIN
 // PONER  VALORES A  LOS  CAMPOS
 IF EDTSALARIOBASE.TEXT = '' THEN
    EDTSALARIOBASE.TEXT := '0';
 IF  EDTVALORNETO.TEXT = '' THEN
     EDTVALORNETO.TEXT := '0';
 IF  EDTIGRESOBASECOTIZACION.TEXT = '' THEN
     EDTIGRESOBASECOTIZACION.TEXT := '0';
  IF EDTCOTIZACIONOBLIGATORIO.TEXT = '' THEN
    EDTCOTIZACIONOBLIGATORIO.TEXT := '0';
 IF  EDTAUTINCAPACIDAD.TEXT = '' THEN
     EDTAUTINCAPACIDAD.TEXT := '0';
 IF  EDTVALINCAPACIDAD.TEXT = '' THEN
     EDTVALINCAPACIDAD.TEXT := '0';
 IF EDTNOAUTLICENCIA.TEXT = '' THEN
    EDTNOAUTLICENCIA.TEXT := '0';
 IF  EDTVALLICENCIA.TEXT = '' THEN
     EDTVALLICENCIA.TEXT := '0';
 IF  EDTVALUPC.TEXT = '' THEN
     EDTVALUPC.TEXT := '0';
 IF  EDTTOTALPAGADOAFILIADO.TEXT = '' THEN
     EDTTOTALPAGADOAFILIADO.TEXT := '0';
     EDTTOTALPAGADOAFILIADO.TEXT := FLOATTOSTR((STRTOFLOAT(EDTCOTIZACIONOBLIGATORIO.TEXT) + STRTOFLOAT(EDTVALUPC.TEXT)) -(STRTOFLOAT(EDTVALINCAPACIDAD.TEXT)+ STRTOFLOAT(EDTVALLICENCIA.TEXT)));
    // ADICIONAR  EN LA  GRILLA LOS  DATOS  DIGITADOS
   //CARTERA_MOROSA_AFILIADO;
   //USUARIOS_UPC;




   SGDETALLE.ROWCOUNT := SGDETALLE.ROWCOUNT +1;
   SGDETALLE.CELLS[0,SGDETALLE.ROWCOUNT -2] := TRIM(CBTIPODOCAFILIADO.TEXT);
   SGDETALLE.CELLS[1,SGDETALLE.ROWCOUNT -2] := TRIM(EDTNUMERODUCAFILIADO.TEXT);
     IF CKING.CHECKED = TRUE THEN
     BEGIN
     SGDETALLE.CELLS[2,SGDETALLE.ROWCOUNT -2] := 'X'
     END;
     IF CKRET.CHECKED = TRUE THEN
     BEGIN
     SGDETALLE.CELLS[3,SGDETALLE.ROWCOUNT -2] := 'X'
     END;

     IF CKTDA.CHECKED = TRUE THEN
     BEGIN
     SGDETALLE.CELLS[4,SGDETALLE.ROWCOUNT -2] := 'X'
     END;

     IF CKTAA.CHECKED = TRUE THEN
     BEGIN
     SGDETALLE.CELLS[5,SGDETALLE.ROWCOUNT -2] := 'X'
     END;

     IF CKVSP.CHECKED = TRUE THEN
     BEGIN
     SGDETALLE.CELLS[6,SGDETALLE.ROWCOUNT -2] := 'X'
     END;

     IF CKVST.CHECKED = TRUE THEN
     BEGIN
     SGDETALLE.CELLS[7,SGDETALLE.ROWCOUNT -2] := 'X'
     END;

     IF CKSLN.CHECKED = TRUE THEN
     BEGIN
     SGDETALLE.CELLS[8,SGDETALLE.ROWCOUNT -2] := 'X'
     END;

     IF CKIGE.CHECKED = TRUE THEN
     BEGIN
     SGDETALLE.CELLS[9,SGDETALLE.ROWCOUNT -2] := 'X'
     END;

     IF CKLMA.CHECKED = TRUE THEN
     BEGIN
     SGDETALLE.CELLS[10,SGDETALLE.ROWCOUNT -2] := 'X'
     END;
     IF CKVAC.CHECKED = TRUE THEN
     BEGIN
     SGDETALLE.CELLS[11,SGDETALLE.ROWCOUNT -2] := 'X'
     END;
   SGDETALLE.CELLS[12,SGDETALLE.ROWCOUNT -2] := TRIM(EDDIAS.TEXT);
   SGDETALLE.CELLS[13,SGDETALLE.ROWCOUNT -2] := TRIM(EDTSALARIOBASE.TEXT);
   SGDETALLE.CELLS[14,SGDETALLE.ROWCOUNT -2] := TRIM(EDTVALORNETO.TEXT);
   SGDETALLE.CELLS[15,SGDETALLE.ROWCOUNT -2] := TRIM(EDTIGRESOBASECOTIZACION.TEXT);
   SGDETALLE.CELLS[16,SGDETALLE.ROWCOUNT -2] := TRIM(EDTCOTIZACIONOBLIGATORIO.TEXT);
   SGDETALLE.CELLS[17,SGDETALLE.ROWCOUNT -2] := TRIM(EDTAUTINCAPACIDAD.TEXT);
   SGDETALLE.CELLS[18,SGDETALLE.ROWCOUNT -2] := TRIM(EDTVALINCAPACIDAD.TEXT);
   SGDETALLE.CELLS[19,SGDETALLE.ROWCOUNT -2] := TRIM(EDTNOAUTLICENCIA.TEXT);
   SGDETALLE.CELLS[20,SGDETALLE.ROWCOUNT -2] := TRIM(EDTVALLICENCIA.TEXT);
   SGDETALLE.CELLS[21,SGDETALLE.ROWCOUNT -2] := TRIM(EDTVALUPC.TEXT);
   SGDETALLE.CELLS[22,SGDETALLE.ROWCOUNT -2] := TRIM(EDTTOTALPAGADOAFILIADO.TEXT);

   IF NRE = TRUE THEN
    BEGIN
    SGDETALLE.CELLS[23,SGDETALLE.ROWCOUNT -2] := 'NRE' ;
    END
    ELSE IF EMP = TRUE THEN
         BEGIN
         SGDETALLE.CELLS[23,SGDETALLE.ROWCOUNT -2] := 'EMP' ;
         END
         ELSE IF NRS = TRUE THEN
         BEGIN
         SGDETALLE.CELLS[23,SGDETALLE.ROWCOUNT -2] := 'NRS' ;
         END
               ELSE IF IBC = TRUE THEN
                 BEGIN
                 SGDETALLE.CELLS[23,SGDETALLE.ROWCOUNT -2] := 'IBC' ;
                 END
                 ELSE IF IGE = TRUE THEN
                    BEGIN
                    SGDETALLE.CELLS[23,SGDETALLE.ROWCOUNT -2] := 'IGE' ;
                    END
                    ELSE IF LIC = TRUE THEN
                         BEGIN
                         SGDETALLE.CELLS[23,SGDETALLE.ROWCOUNT -2] := 'LIC' ;
                         END
                         ELSE SGDETALLE.CELLS[23,SGDETALLE.ROWCOUNT -2] := 'CIE' ;


   SGDETALLE.ROW := SGDETALLE.ROWCOUNT -1 ;
   SGDETALLE.COL:=0;

      // LIMPIAR  LOS  DATOS  DEL AFILIADO
      LIMPIAR;
   // CALCULAR DATOS CONSOLIDADOS

   CALCULAR;
   FRMPRINCIPAL.TOOLBAR1.Enabled := true;


   END
   ELSE
   SHOWMESSAGE(LowerCase('EL NUMERO DE  DOCUMENTO Y EL VALOR  DE LA  COTIZACION NO PUDEN TENER  VALORES MENORES A CERO O  EN BLANCO' ));
END;

PROCEDURE Tfrmcorreciones.BUTTON1CLICK(SENDER: TOBJECT);
VAR I,J : INTEGER;
BEGIN
TRY
 IF SGDETALLE.CELLS[23,SGDETALLE.ROW ] <> 'COM' THEN
  BEGIN

  IF  SGDETALLE.ROW = SGDETALLE.ROWCOUNT -1  THEN
    EXIT;
  IF MESSAGEDLG (LowerCase(' REALMENTE  QUIERE BORRAR EL PAGO REALIZADO POR EMPLEADO ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
  BEGIN

 DATAMODULE1.DTBDATAMEC.BeginTrans;
 DATAMODULE1.QRYDETALLE.CLOSE;
 DATAMODULE1.QRYDETALLE.SQL.CLEAR;
 DATAMODULE1.QRYDETALLE.SQL.ADD('SELECT * FROM DET_PLANILLA_AUTOLIQUIDACION  WHERE  NUM_PLANILLA  = :"PLANILLA" AND AFI_TIPO_DOC = :"CC" AND AFI_NUMERO_DOC = :"USUARIO"');
 DATAMODULE1.QRYDETALLE.Parameters[0].VALUE := TRIM(EDTPLANILLA.TEXT);
 DATAMODULE1.QRYDETALLE.Parameters[1].VALUE := TRIM(SGDETALLE.CELLS[0,SGDETALLE.ROW ]);
 DATAMODULE1.QRYDETALLE.Parameters[2].VALUE := TRIM(SGDETALLE.CELLS[1,SGDETALLE.ROW ]);
 DATAMODULE1.QRYDETALLE.OPEN;
        IF DATAMODULE1.QRYDETALLE.RECORDCOUNT = 1 THEN
        BEGIN

                  IF DATAMODULE1.qrydetalleDET_ESTADO.Value = 'COM' THEN
            BEGIN
            MESSAGEDLG (LowerCase(' NO SE  PUEDE  BORRAR EL PAGO DEL AFILIADO  PORQUE  YA  ESTA  COMPENSADO '), mtInformation,[mbOk], 0);
            EXIT;
            END;
        TMPBORRAR.CLOSE;
        TMPBORRAR.SQL.CLEAR;
        TMPBORRAR.SQL.ADD('DELETE  FROM DET_PLANILLA_AUTOLIQUIDACION  WHERE  NUM_PLANILLA  = :"PLANILLA" AND AFI_TIPO_DOC = :"CC" AND AFI_NUMERO_DOC = :"USUARIO"');
        TMPBORRAR.Parameters[0].VALUE := TRIM(EDTPLANILLA.TEXT);
        TMPBORRAR.Parameters[1].VALUE := TRIM(SGDETALLE.CELLS[0,SGDETALLE.ROW ]);
        TMPBORRAR.Parameters[2].VALUE := TRIM(SGDETALLE.CELLS[1,SGDETALLE.ROW ]);
        TMPBORRAR.ExecSQL;
        END;
        FOR I:= SGDETALLE.ROW +1 TO SGDETALLE.ROWCOUNT -1 DO
        BEGIN
                FOR J := 0 TO 24 DO
                SGDETALLE.CELLS[J,I -1] := SGDETALLE.CELLS[J,I];
                END;
                SGDETALLE.ROWCOUNT := SGDETALLE.ROWCOUNT -1 ;
                LIMPIAR;
                CALCULAR;

        END;
 DATAMODULE1.QRYAUTOLIQUIDACION.CLOSE;
 DATAMODULE1.QRYAUTOLIQUIDACION.SQL.CLEAR;
 DATAMODULE1.QRYAUTOLIQUIDACION.SQL.ADD('SELECT * FROM AUTOLIQUIDACION  WHERE  NUM_PLANILLA  = :"PLANILLA"');
 DATAMODULE1.QRYAUTOLIQUIDACION.Parameters[0].VALUE := TRIM(EDTPLANILLA.TEXT);
 DATAMODULE1.QRYAUTOLIQUIDACION.OPEN;
 IF DATAMODULE1.QRYAUTOLIQUIDACION.RECORDCOUNT > 0 THEN
    BEGIN
        DATAMODULE1.QRYAUTOLIQUIDACION.EDIT;
        DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('NUM_PLANILLA').VALUE := TRIM(EDTPLANILLA.TEXT);
        DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('EMP_TIPO_DOC').VALUE := TRIM(CBTIPODOCEMPRESA.TEXT);
        DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('EMP_NUMERO_DOC').VALUE := TRIM(EDNUMERO.TEXT);
        DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('COD_SUCURSAL').VALUE := '0';
        DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TIP_DECLARACION').VALUE := TRIM(CBTIPODECLARACION.TEXT);
        DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('FEC_PAGO').VALUE := DTFECHAPAGO.DATE;
        //**
        DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('NUM_PLANILLA_CORR').VALUE := TRIM(EDTNPLACORRECION.TEXT);
        //**
        DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('PER_COTIZACION').VALUE := TRIM(EDTPERIODO.TEXT);
        DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('PER_PRESENTACION').VALUE := TRIM(MSPERPRESENTACION.TEXT);
        // GRABAR  CONSOLIDADO DE LA  PLANILLA
        DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_PLANILLA').VALUE := EDTTOTALPLANILLA.TEXT;
        DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_APORTE_PER').VALUE := EDTTOTALAPORTE.TEXT;
        DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_INCAPACIDAD').VALUE := EDTINCAPACIDAD.TEXT;
        DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_LICENCIAS').VALUE := EDTLICENCIA.TEXT;
        DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_APORTE').VALUE := EDTNETOAPORTES.TEXT;
        DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('INT_MORA').VALUE := EDTINTERESES.TEXT;
        DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_APORTE_MMORA').VALUE := EDTAPORTEINTETERES.TEXT;
        DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_SALDO_FAV').VALUE := EDTSALDOANTERIOR.TEXT;
        DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_UPC').VALUE := EDTUPC.TEXT;
        DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_PAGADO').VALUE := EDTTOTALPAGADO.TEXT;
        // LUGAR  DE  CONSIGNACION
        DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('COD_BANCO').VALUE := CBBANCO.KEYVALUE;
        DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('NUM_CUENTA').VALUE := EDTCUENTA.TEXT;
        DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('VAL_EFECTIVO').VALUE := EDTVALEFECTIVO.TEXT;
        DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('VAL_CHEQUE').VALUE := EDTVALCHEQUE.TEXT;
        DATAMODULE1.QRYAUTOLIQUIDACION.POST;
        DATAMODULE1.DTBDATAMEC.CommitTrans;
      END;
 END
 ELSE SHOWMESSAGE(LowerCase(' NO SE PUEDE  MODIFICAR ESTE  REGISTRO YA  ESTA  INCLUIDO EN LA  COMPENSACION'));
 EXCEPT
   DATAMODULE1.DTBDATAMEC.RollbackTrans;
   PBRGRABARDETALLE.MIN := 0;
   PBRGRABARDETALLE.POSITION := 0;
   PBRGRABARDETALLE.MAX := SGDETALLE.ROWCOUNT -2;
   SHOWMESSAGE(LowerCase('NO SE PUEDE  BORRAR  EL PAGO DEL AFILIADO'));
   RAISE;
 END;

END;

PROCEDURE Tfrmcorreciones.BTGRABARPLANILLACLICK(SENDER: TOBJECT);
BEGIN
        IF CBBANCO.KeyValue > 0 THEN
        BEGIN
           EDTTOTALPAGADO.Text     := STRINGREPLACE(EDTTOTALPAGADO.Text,'$','',[rfReplaceAll,rfIgnoreCase]);
           EDTTOTALPAGADO.Text     := STRINGREPLACE(EDTTOTALPAGADO.Text,')','',[rfReplaceAll,rfIgnoreCase]);
           EDTTOTALPAGADO.Text     := STRINGREPLACE(EDTTOTALPAGADO.Text,'.','',[rfReplaceAll,rfIgnoreCase]);
           EDTTOTALPAGADO.Text     := STRINGREPLACE(EDTTOTALPAGADO.Text,'(','-',[rfReplaceAll,rfIgnoreCase]);
           EDTTOTALPAGADO.Text     := STRINGREPLACE(EDTTOTALPAGADO.Text,' ','',[rfReplaceAll,rfIgnoreCase]);
           EDTTOTALCONSIGNADO.Text := STRINGREPLACE(EDTTOTALCONSIGNADO.Text,'$','',[rfReplaceAll,rfIgnoreCase]);
           EDTTOTALCONSIGNADO.Text := STRINGREPLACE(EDTTOTALCONSIGNADO.Text,'.','',[rfReplaceAll,rfIgnoreCase]);
           EDTTOTALCONSIGNADO.Text := TRIM(EDTTOTALCONSIGNADO.Text);
           //****************

        IF EDTVALCHEQUE.TEXT='' THEN
           EDTVALCHEQUE.TEXT:='0';
        IF EDTVALEFECTIVO.TEXT=''THEN
           EDTVALEFECTIVO.TEXT:='0';
        //**********************
           IF EDTTOTALCONSIGNADO.Text<>FLOATTOSTR((STRTOINT(EDTVALCHEQUE.TEXT)) + (STRTOINT(EDTVALEFECTIVO.TEXT))) THEN
           begin
           SHOWMESSAGE('Revice los Valores consignados');
           edtvalefectivo.SetFocus;
           exit;
           end;
        //*********************

                QRYCORRECCION.Close;
                QRYCORRECCION.Parameters[0].Value :=TRIM(EDTNPLACORRECION.Text);
                QRYCORRECCION.Open;
                IF QRYCORRECCION.RecordCount = 0 THEN
                BEGIN
                    EXIT;
                END;

                //IF STRTOFLOAT(EDTTOTALPAGADO.TEXT) <> STRTOFLOAT(EDTTOTALCONSIGNADO.TEXT) THEN
                IF (STRTOFLOAT(EDTTOTALCONSIGNADO.TEXT) + QRYCORRECCIONVAL_EFECTIVO.Value + QRYCORRECCIONVAL_CHEQUE.Value) <> (QRYCORRECCIONTOT_PAGADO.Value) THEN
                BEGIN
                        IF MESSAGEDLG (LowerCase(' EL VALOR DE LA PLANILLA  ES DIFERENTE AL CONSIGNADO, SERA GENERADA UNA  NOTA ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
                        BEGIN
                            ComboBox1.ItemIndex := -1;
                            EDIT4.Text := '0';
                            IF STRTOFLOAT(EDTTOTALPAGADO.TEXT) > STRTOFLOAT(EDTTOTALCONSIGNADO.TEXT) THEN
                            BEGIN
                            // debito
                            ComboBox1.ItemIndex := 0;
                            EDIT4.Text :=FloatToStr(STRTOFLOAT(EDTTOTALPAGADO.TEXT) - STRTOFLOAT(EDTTOTALCONSIGNADO.TEXT));
                            END
                            ELSE
                            //credito
                            ComboBox1.ItemIndex := 1;
                            IF STRTOFLOAT(EDTTOTALPAGADO.TEXT) < STRTOFLOAT(EDTTOTALCONSIGNADO.TEXT) THEN
                            BEGIN
                            EDIT4.Text :=FLOATTOSTR( STRTOFLOAT(EDTTOTALCONSIGNADO.TEXT)- STRTOFLOAT(EDTTOTALPAGADO.TEXT));
                            END;

                  END
                  ELSE
                  EXIT;


                  IF MESSAGEDLG (LowerCase(' DESEA GRABAR LA AUTOLIQUIDACION ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
                        BEGIN
                               // CONCILIAR_AUTOLIQUIDACION;
                               ESTADOS_PLANILLA;

                                IF ESTADO_PLANILLA <> '' THEN
                                BEGIN
                                GUARDAR_PLANILLA;
                                RETIRAR_USUARIOS;
                                frmcorreciones.PCENCABEZADO.ACTIVEPAGE := TABSHEET1;
                                LIMPIAR_PLANILLA;
                                END;
                        END ;
                END
                ELSE IF STRTOFLOAT(EDTTOTALPAGADO.TEXT) = STRTOFLOAT(EDTTOTALCONSIGNADO.TEXT) THEN
                BEGIN
                    //   CONCILIAR_AUTOLIQUIDACION;
                        ESTADOS_PLANILLA;
                                IF ESTADO_PLANILLA <> '' THEN
                                BEGIN
                                GUARDAR_PLANILLA;
                                RETIRAR_USUARIOS;
                                frmcorreciones.PCENCABEZADO.ACTIVEPAGE := TABSHEET1;
                                LIMPIAR_PLANILLA;
                                END;
                END;
    END
     ELSE SHOWMESSAGE(LowerCase('DEBE  SELECIONAR  EL BANCO ANTES DE GRABAR LA  PLANILLA'));

 END;


PROCEDURE Tfrmcorreciones.FORMCLOSE(SENDER: TOBJECT; VAR ACTION: TCLOSEACTION);
BEGIN
ACTION:=CAFREE;
GLPROCESO := '';
FRMPRINCIPAL.SB.PANELS[1].TEXT := 'PROCESO ABIERTO ACTUAL :'+ GLPROCESO
END;

PROCEDURE Tfrmcorreciones.FORMCREATE(SENDER: TOBJECT);
BEGIN
APPLICATION.ONMESSAGE := APPMESSAGE;
GLPROCESO := 'AUTOLIQUIDACIONES';
FRMPRINCIPAL.SB.PANELS[1].TEXT := 'PROCESO ABIERTO ACTUAL :'+ GLPROCESO;
WITH SGDETALLE DO
  BEGIN
    CELLS[0,0]:='TIPO';
    CELLS[1,0]:='DOCUMENTO';
    CELLS[2,0]:='ING';
    CELLS[3,0]:='RET';
    CELLS[4,0]:='TDA';
    CELLS[5,0]:='TAA';
    CELLS[6,0]:='VSP';
    CELLS[7,0]:='VST';
    CELLS[8,0]:='SLN';
    CELLS[9,0]:='IGE';
    CELLS[10,0]:='LMA';
    CELLS[11,0]:='VAC';
    CELLS[12,0]:='DIAS COTIZADOS';
    CELLS[13,0]:='SALARIO BASICO';
    CELLS[14,0]:='VALOR NETO NOVEDAD';
    CELLS[15,0]:='INGRESO BASE COTIZACION';
    CELLS[16,0]:='COTIZACION OBLIGATORIA';
    CELLS[17,0]:='NO.INCAPACIDAD';
    CELLS[18,0]:='VALOR INCAPACIDAD';
    CELLS[19,0]:='NO. LICENCIA';
    CELLS[20,0]:='VALOR LICENCIA';
    CELLS[21,0]:='VALOR UPC';
    CELLS[22,0]:='TOTAL PAGADO';
    CELLS[23,0]:='ESTADO';
    DTFECHAPAGO.DATE := STRTODATE(GLDATE);
    EDTPLANILLA.TEXT := '0';
    ESTADO_PLANILLA := '';
    ESTADO_USUARIO := '';
    ESTADO := FALSE;
    MSPERPRESENTACION.TEXT := GLPRESENTACION;

    END;
        WITH SGINCAPACIDADES DO
        BEGIN
        CELLS[0,0]:='NUMERO';
        CELLS[1,0]:='PERIODO';
        CELLS[2,0]:='VLR DESCONTADO';
        CELLS[3,0]:='VLR AUTORIZADO';
        CELLS[4,0]:='DIAS';
        END;

   sgdetabanco.CELLS[0,0]:='COD BANCO';
   sgdetabanco.CELLS[1,0]:='NUMERO DE CUENTA';
   sgdetabanco.CELLS[2,0]:='VALOR';

    WITH SGUPC DO
        BEGIN
        CELLS[0,0]:='TIP_DOC';
        CELLS[1,0]:='NUM_DOC';
        CELLS[2,0]:='TIPO';
        CELLS[3,0]:='DOCUMENTO';
        CELLS[4,0]:='NOMBRE';
        CELLS[5,0]:='SEXO';
        CELLS[6,0]:='EDAD';
        CELLS[7,0]:='VALOR UPC';
        CELLS[8,0]:='ESTADO';
        END;

   CheqDev.Enabled:=False;

END;

PROCEDURE Tfrmcorreciones.EDTVALINCAPACIDADEXIT(SENDER: TOBJECT);
BEGIN

      { IF EDTVALINCAPACIDAD.TEXT <> '' THEN
        BEGIN
         IF EDTVALINCAPACIDAD.TEXT > '0' THEN
         BEGIN
         EDTVALLICENCIA.ENABLED := FALSE;
         CKIGE.CHECKED := TRUE;
         INCAPACIDADES_GENERALES;
         END;
         EDTTOTALPAGADOAFILIADO.TEXT := FLOATTOSTR(STRTOFLOAT(EDTCOTIZACIONOBLIGATORIO.TEXT)-(STRTOFLOAT(EDTVALINCAPACIDAD.TEXT)));
        END;}
END;

PROCEDURE Tfrmcorreciones.EDTVALLICENCIAEXIT(SENDER: TOBJECT);
BEGIN
IF EDTVALINCAPACIDAD.TEXT > '0' THEN
        BEGIN
             DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
             DATAMODULE1.QRYDETINCAPACIDAD.SQL.CLEAR;
             DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('SELECT DET_INCAPACIDAD.* FROM DET_INCAPACIDAD,INCAPACIDADES WHERE DET_INCAPACIDAD.NUM_INCAPACIDAD =INCAPACIDADES.NUM_INCAPACIDAD');
             DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('AND  TIP_INCAPACIDAD = :"INCAP" AND TIP_DOCEMPRESA = :"TIPO_EMP" AND NUM_DOCEMPRESA = :"NUM_EMP" AND AFI_TIPO_DOC = :"TIP_AFIL" AND AFI_NUMERO_DOC = :"NUM_AFIL"');
             DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('AND NUM_COMPROBANTE = :"COMPROBANTE" AND PER_PAGO_INCAP <= :"FECHA" ORDER BY PER_PAGO_INCAP,FEC_EXPEDICION ');
             DATAMODULE1.QRYDETINCAPACIDAD.Parameters[0].VALUE := 'MAP';
             DATAMODULE1.QRYDETINCAPACIDAD.Parameters[1].VALUE := cbtipodocempresa.Text;
             DATAMODULE1.QRYDETINCAPACIDAD.Parameters[2].VALUE := EDNUMERO.TEXT;
             DATAMODULE1.QRYDETINCAPACIDAD.Parameters[3].VALUE := cbtipodocafiliado.TEXT;
             DATAMODULE1.QRYDETINCAPACIDAD.Parameters[4].VALUE := edtnumeroducafiliado.TEXT;
             DATAMODULE1.QRYDETINCAPACIDAD.Parameters[5].VALUE := 0;
             DATAMODULE1.QRYDETINCAPACIDAD.Parameters[6].VALUE := STRTODATE('01/'+ GLPRESENTACION);
             DATAMODULE1.QRYDETINCAPACIDAD.OPEN;
                 IF DATAMODULE1.QRYDETINCAPACIDAD.RECORDCOUNT > 0 THEN
                 BEGIN
                 TABSHEET4.Caption := 'Incapacidades  E. G.';
                 TABSHEET1.TabVisible := false;
                 TABSHEET2.TabVisible := false;
                 TABSHEET3.TabVisible := false;
                 TABSHEET4.TabVisible := true;
                 TABSHEET5.TabVisible := false;
                 PCENCABEZADO.ActivePage := TABSHEET4;
                 DBGrid1.SetFocus;
                 END
                 ELSE
                   BEGIN
                   ShowMessage(LowerCase('EL AFILIADO NO TIENE  INCAPACIDADES PENDIENTES  PARA  PAGO'));
                   edtvalincapacidad.SetFocus;
                   END;
        END;

      {  IF EDTVALLICENCIA.TEXT <> '0' THEN
        BEGIN
            IF EDTVALLICENCIA.TEXT > '0' THEN
            BEGIN
            EDTVALINCAPACIDAD.ENABLED := FALSE;
            CKLMA.CHECKED := TRUE;
            LICENCIAS_DESCONTADAS;
            END;
        EDTTOTALPAGADOAFILIADO.TEXT := FLOATTOSTR(STRTOFLOAT(EDTCOTIZACIONOBLIGATORIO.TEXT)-(STRTOFLOAT(EDTVALINCAPACIDAD.TEXT)+ STRTOFLOAT(EDTVALLICENCIA.TEXT)));
        END; }
END;

PROCEDURE Tfrmcorreciones.EDTVALUPCEXIT(SENDER: TOBJECT);
BEGIN
        IF EDTVALUPC.TEXT > '0' THEN
        BEGIN
        USUARIOS_UPC;
        IF UPC = FALSE THEN
        BEGIN
        SHOWMESSAGE(LowerCase('AFILIADO NO TIENE BENEFICIARIOS  ADICIONALES'));
        edtvalupc.Text := '0';
        END;
        EDTTOTALPAGADOAFILIADO.TEXT := FLOATTOSTR((STRTOFLOAT(EDTCOTIZACIONOBLIGATORIO.TEXT) + STRTOFLOAT(EDTVALUPC.TEXT)) -(STRTOFLOAT(EDTVALINCAPACIDAD.TEXT)-STRTOFLOAT(EDTVALLICENCIA.TEXT)));
        END;
END;

PROCEDURE Tfrmcorreciones.FORMKEYPRESS(SENDER: TOBJECT; VAR KEY: CHAR);
BEGIN
   IF KEY = #13 THEN
    BEGIN
      KEY := #0;
      PERFORM(WM_NEXTDLGCTL, 0, 0);
    END;
 END;


PROCEDURE Tfrmcorreciones.CALCULAR;
VAR COTIZACION,INCAPACIDAD,LICENCIA,TOTAL,UPC,INGRESOBASE : REAL;

 I : INTEGER;
 BEGIN
 INCAPACIDAD := 0;
 LICENCIA := 0;
 TOTAL := 0;
 INGRESOBASE := 0;
 UPC := 0;
 COTIZACION := 0;
 Edit2.Text := '0';
 Edit3.Text := '0';
 Edit6.Text := '0';
 Edit8.Text := '0';
 Edit7.Text := '0';
 Edit9.Text := '0';
 Edit10.Text := '0';
 Edit11.Text := '0';

 FOR I := 1 TO SGDETALLE.ROWCOUNT -2 DO
      BEGIN
      INGRESOBASE := INGRESOBASE + STRTOFLOAT(SGDETALLE.CELLS[16,I]);

      Edit2.Text :=   floattostr(STRTOFLOAT(Edit2.Text) + STRTOFLOAT(SGDETALLE.CELLS[15,I]));
      Edit3.Text :=   floattostr(STRTOFLOAT(Edit3.Text) + STRTOFLOAT(SGDETALLE.CELLS[15,I]));
      END;

     FOR I := 1 TO SGDETALLE.ROWCOUNT -2 DO
      BEGIN
      COTIZACION := COTIZACION +STRTOFLOAT(SGDETALLE.CELLS[16,I]);
      END;
     // CONSOLIDAR  COTIZACION OBLIGATORIA
     FOR I := 1 TO SGDETALLE.ROWCOUNT -2 DO
      BEGIN
      INCAPACIDAD := INCAPACIDAD +STRTOFLOAT(SGDETALLE.CELLS[18,I]);
      END;

     FOR I := 1 TO SGDETALLE.ROWCOUNT -2 DO
      BEGIN
      LICENCIA := LICENCIA +STRTOFLOAT(SGDETALLE.CELLS[20,I]);
      END;
       // VALOR  DE LA  UPC  DIGITADA
      FOR I := 1 TO SGDETALLE.ROWCOUNT -2 DO
      BEGIN
      UPC := UPC +STRTOFLOAT(SGDETALLE.CELLS[21,I]);
      END;
      // VALOR TOTAL DE  LA  COTIZACION
      FOR I := 1 TO SGDETALLE.ROWCOUNT -2 DO
      BEGIN
      TOTAL := TOTAL +STRTOFLOAT(SGDETALLE.CELLS[22,I]);
      END;
     //EDTTOTALPAGADO.TEXT := FORMAT('%10.0m',[TOTAL]);
     EDTTOTALPAGADO.TEXT := FLOATTOSTR(TOTAL);
     Edit10.TEXT := FLOATTOSTR(UPC);
     Edit11.TEXT := FLOATTOSTR(UPC);
     Edit6.TEXT := FLOATTOSTR(INCAPACIDAD);
     Edit8.TEXT := FLOATTOSTR(INCAPACIDAD);
     Edit7.TEXT := FLOATTOSTR(LICENCIA);
     Edit9.TEXT := FLOATTOSTR(LICENCIA);
     EDTTOTALPLANILLA.TEXT := FLOATTOSTR(INGRESOBASE);
     EDTTOTALAPORTE.TEXT := FLOATTOSTR(INGRESOBASE);
     //EDTNETOAPORTES.TEXT := FLOATTOSTR(INGRESOBASE-(INCAPACIDAD + LICENCIA));
     //EDTAPORTEINTETERES.TEXT := FLOATTOSTR(INGRESOBASE-(INCAPACIDAD + LICENCIA));
END;


PROCEDURE Tfrmcorreciones.LIMPIAR;
BEGIN
   EDTNUMERODUCAFILIADO.TEXT := '0';
   CKING.CHECKED := FALSE;
   CKRET.CHECKED := FALSE;
   CKTDA.CHECKED := FALSE;
   CKTAA.CHECKED := FALSE;
   CKVSP.CHECKED := FALSE;
   CKVST.CHECKED := FALSE;
   CKSLN.CHECKED := FALSE;
   CKIGE.CHECKED := FALSE;
   CKLMA.CHECKED := FALSE;
   CKVAC.CHECKED := FALSE;

   CheckBox1.CHECKED := FALSE;
   CheckBox2.CHECKED := FALSE;
   cbtipocotizante.ItemIndex := -1;
  IBC := FALSE;
  NRE := FALSE;
  NRS := FALSE;
  DES := FALSE;
  UPC := FALSE;
  IGE := FALSE;
  LIC := FALSE;

   EDTPLANILLA.Text :='0';
   CBTIPODOCAFILIADO.ITEMINDEX := 0;
   EDDIAS.TEXT := '30';
   EDTSALARIOBASE.TEXT := '0';
   EDTVALORNETO.TEXT := '0';
   EDDIAS.ENABLED := FALSE;
   EDTSALARIOBASE.ENABLED := FALSE;
   EDTVALORNETO.ENABLED := FALSE;
   EDTNOAUTLICENCIA.TEXT := '0';
   EDTAUTINCAPACIDAD.TEXT := '0';
   EDTIGRESOBASECOTIZACION.TEXT := '0';
   EDTCOTIZACIONOBLIGATORIO.TEXT := '0';
   EDTVALINCAPACIDAD.TEXT := '0';
   EDTVALLICENCIA.TEXT := '0';
   EDTVALUPC.TEXT := '0';
   EDTTOTALPAGADOAFILIADO.TEXT := '0';
   EDTNOMBREAFILIADO.TEXT := '';
   ESTADO_USUARIO := '';
   EDTNUMERODUCAFILIADO.ENABLED := TRUE;
   CBTIPODOCAFILIADO.ENABLED :=TRUE;
   UPC := FALSE;
   LICENCIA := FALSE;
   INCAPACIDAD := FALSE;
   //CBTIPODOCAFILIADO.SETFOCUS;

END;

PROCEDURE Tfrmcorreciones.EDTINTERESESEXIT(SENDER: TOBJECT);
BEGIN
IF EDTINTERESES.TEXT <> '' THEN
 BEGIN
 recalcular;
 END
 else
 IF EDTINTERESES.TEXT = '' THEN
 BEGIN
 EDTINTERESES.TEXT := '0';
 end;

END;

PROCEDURE Tfrmcorreciones.LIMPIAR_PLANILLA;
VAR I,X : INTEGER;
BEGIN
   FOR I := 0 TO SGDETALLE.ROWCOUNT DO
     BEGIN
                   SGDETALLE.CELLS[0,I]:='';
                   SGDETALLE.CELLS[1,I]:='';
                   SGDETALLE.CELLS[2,I]:='';
                   SGDETALLE.CELLS[3,I]:='';
                   SGDETALLE.CELLS[4,I]:='';
                   SGDETALLE.CELLS[5,I]:='';
                   SGDETALLE.CELLS[6,I]:='';
                   SGDETALLE.CELLS[7,I]:='';
                   SGDETALLE.CELLS[8,I]:='';
                   SGDETALLE.CELLS[9,I]:='';
                   SGDETALLE.CELLS[10,I]:='';
                   SGDETALLE.CELLS[11,I]:='';
                   SGDETALLE.CELLS[12,I]:='';
                   SGDETALLE.CELLS[13,I]:='';
                   SGDETALLE.CELLS[14,I]:='';
                   SGDETALLE.CELLS[15,I]:='';
                   SGDETALLE.CELLS[16,I]:='';
                   SGDETALLE.CELLS[17,I]:='';
                   SGDETALLE.CELLS[18,I]:='';
                   SGDETALLE.CELLS[19,I]:='';
                   SGDETALLE.CELLS[20,I]:='';
                   SGDETALLE.CELLS[21,I]:='';
                   SGDETALLE.CELLS[22,I]:='';
                   SGDETALLE.CELLS[23,I]:='';
        END;

   FOR I := 0 TO SGUPC.ROWCOUNT DO
     BEGIN
                   SGUPC.CELLS[0,I]:='';
                   SGUPC.CELLS[1,I]:='';
                   SGUPC.CELLS[2,I]:='';
                   SGUPC.CELLS[3,I]:='';
                   SGUPC.CELLS[4,I]:='';
                   SGUPC.CELLS[5,I]:='';
                   SGUPC.CELLS[6,I]:='';
                   SGUPC.CELLS[7,I]:='';
                   SGUPC.CELLS[8,I]:='';
        END;
      FOR I := 0 TO SGINCAPACIDADES.ROWCOUNT DO
     BEGIN
                   SGINCAPACIDADES.CELLS[0,I]:='';
                   SGINCAPACIDADES.CELLS[1,I]:='';
                   SGINCAPACIDADES.CELLS[2,I]:='';
                   SGINCAPACIDADES.CELLS[3,I]:='';
                   SGINCAPACIDADES.CELLS[4,I]:='';

        END;
   EDTNUMERODUCAFILIADO.TEXT := '0';
   CKING.CHECKED := FALSE;
   CKRET.CHECKED := FALSE;
   CKTDA.CHECKED := FALSE;
   CKTAA.CHECKED := FALSE;
   CKVSP.CHECKED := FALSE;
   CKVST.CHECKED := FALSE;
   CKSLN.CHECKED := FALSE;
   CKIGE.CHECKED := FALSE;
   CKLMA.CHECKED := FALSE;
   CKVAC.CHECKED := FALSE;
   IBC := FALSE;
   NRE := FALSE;
   NRS := FALSE;
   DES := FALSE;
   UPC := FALSE;
   IGE := FALSE;
   LIC := FALSE;
   EMP := FALSE;
   CBTIPODOCAFILIADO.ITEMINDEX := 0;
   EDDIAS.TEXT := '30';
   //EDTSUCURSAL.TEXT := '0';
   EDTSALARIOBASE.TEXT := '0';
   EDTVALORNETO.TEXT := '0';
   EDTNOAUTLICENCIA.TEXT := '0';
   EDTAUTINCAPACIDAD.TEXT := '0';
   EDTIGRESOBASECOTIZACION.TEXT := '0';
   EDTCOTIZACIONOBLIGATORIO.TEXT := '0';
   EDTVALINCAPACIDAD.TEXT := '0';
   EDTVALLICENCIA.TEXT := '0';
   EDTVALUPC.TEXT := '0';
   EDTTOTALPAGADOAFILIADO.TEXT := '0';
   // LIMPIAR  CONSOLIDADO DE LA  PLANILLA
   EDTTOTALPLANILLA.TEXT := '0';
   EDTTOTALAPORTE.TEXT := '0';
   EDTINCAPACIDAD.TEXT := '0';
   EDTLICENCIA.TEXT := '0';
   EDTNETOAPORTES.TEXT := '0';
   EDTTOTALPLANILLA.TEXT := '0';
   EDTINTERESES.TEXT := '0';
   EDTAPORTEINTETERES.TEXT := '0';
   EDTSALDOANTERIOR.TEXT := '0';
   EDTUPC.TEXT := '0';
   EDTTOTALPAGADO.TEXT := '0';
   EDTVALCHEQUE.TEXT := '0';
   EDTVALEFECTIVO.TEXT := '0';
   EDTTOTALCONSIGNADO.TEXT := '0';
   CBBANCO.KeyValue := -1;
   EDTCUENTA.Text := '';
   EDTTOTALCONSIGNADO.Text := '';
   SGDETALLE.ROWCOUNT := 1;
   SGUPC.ROWCOUNT := 1;
   SGINCAPACIDADES.ROWCOUNT := 1;
   SGDETALLE.ROWCOUNT := 2;
   SGDETALLE.FIXEDCOLS := 0;
   SGDETALLE.FIXEDROWS := 1;
   sgdetabanco.ROWCOUNT := 2;
   sgdetabanco.FIXEDCOLS := 0;
   sgdetabanco.FIXEDROWS := 1;
   cbtipoaportante.ItemIndex := -1;
   edtdigito.Text := '';
   DBLookupComboBox1.KeyValue := -1;
   DBLookupComboBox2.KeyValue := -1;

    SGUPC.ROWCOUNT := 2;
    SGUPC.FIXEDCOLS := 0;
    SGUPC.FIXEDROWS := 1;
    SGINCAPACIDADES.ROWCOUNT := 2;
    SGINCAPACIDADES.FIXEDCOLS := 0;
    SGINCAPACIDADES.FIXEDROWS := 1;

    Edit2.text := '0';
    Edit3.text := '0';
    Edit5.text := '0';
    Edit6.text := '0';
    Edit7.text := '0';
    Edit8.text := '0';
    Edit9.text := '0';
    Edit10.text := '0';
    Edit11.text := '0';
    Edit12.text := '0';
    Edit13.text := '0';
    Edit14.text := '0';
    Edit15.text := '0';
    Edit16.text := '0';
    Edit17.text := '0';
    Edit20.text := '0';
    Edit18.text := '0';
    Edit19.text := '0';
    Edit21.text := '0';
    Edit22.text := '0';
    Edit4.text := '0';
    Edit22.text := '0';
    ComboBox1.ItemIndex := -1;

   WITH sgdetabanco do
   BEGIN
   CELLS[0,0]:='COD';
   CELLS[1,0]:='NUMERO DE CUENTA';
   CELLS[2,0]:='VALOR';
   end;
    FOR I := 0 TO sgdetabanco.ROWCOUNT DO
     BEGIN
                   sgdetabanco.CELLS[0,I]:='';
                   sgdetabanco.CELLS[1,I]:='';
                   sgdetabanco.CELLS[2,I]:='';

     END;
     sgdetabanco.Enabled := FALSE;
     //edttotalconsignado.Enabled := FALSE;
   WITH SGDETALLE DO
   BEGIN
    CELLS[0,0]:='TIPO';
    CELLS[1,0]:='DOCUMENTO';
    CELLS[2,0]:='ING';
    CELLS[3,0]:='RET';
    CELLS[4,0]:='TDA';
    CELLS[5,0]:='TAA';
    CELLS[6,0]:='VSP';
    CELLS[7,0]:='VST';
    CELLS[8,0]:='SLN';
    CELLS[9,0]:='IGE';
    CELLS[10,0]:='LMA';
    CELLS[11,0]:='VAC';
    CELLS[12,0]:='DIAS COTIZADOS';
    CELLS[13,0]:='SALARIO BASICO';
    CELLS[14,0]:='VALOR NETO NOVEDAD';
    CELLS[15,0]:='INGRESO BASE COTIZACION';
    CELLS[16,0]:='COTIZACION OBLIGATORIA';
    CELLS[17,0]:='NO.INCAPACIDAD';
    CELLS[18,0]:='VALOR INCAPACIDAD';
    CELLS[19,0]:='NO. LICENCIA';
    CELLS[20,0]:='VALOR LICENCIA';
    CELLS[21,0]:='VALOR UPC';
    CELLS[22,0]:='TOTAL PAGADO';
    CELLS[23,0]:='ESTADO';
    DTFECHAPAGO.DATE := STRTODATE(GLDATE);
    EDTPLANILLA.TEXT := '0';
    ESTADO_PLANILLA := '';
    ESTADO_USUARIO := '';
    ESTADO := FALSE;
    MSPERPRESENTACION.TEXT := GLPRESENTACION;

   END;
        WITH SGINCAPACIDADES DO
          BEGIN
        CELLS[0,0]:='NUMERO';
        CELLS[1,0]:='PERIODO';
        CELLS[2,0]:='VLR DESCONTADO';
        CELLS[3,0]:='VLR AUTORIZADO';
        CELLS[4,0]:='DIAS';


        END;
    WITH SGUPC DO
          BEGIN
        CELLS[0,0]:='TIP_DOC';
        CELLS[1,0]:='NUM_DOC';
        CELLS[2,0]:='TIPO';
        CELLS[3,0]:='DOCUMENTO';
        CELLS[4,0]:='NOMBRE';
        CELLS[5,0]:='SEXO';
        CELLS[6,0]:='EDAD';
        CELLS[7,0]:='VALOR UPC';
        CELLS[8,0]:='ESTADO';
        END;


        WITH sgdetabanco DO
          BEGIN
        CELLS[0,0]:='CODIGO BANCO';
        CELLS[1,0]:='NUM. CHEQUE';
        CELLS[2,0]:='VALOR';
      END;

         SGINCAPACIDADES.ROWCOUNT := 2;
   // LIMPIAR  ENCABEZADO
    EDTPLANILLA.TEXT := '0';
    CBTIPODOCEMPRESA.ITEMINDEX := -1;
    EDNUMERO.TEXT := '0';
    EDTNOMBREEMPRESA.TEXT := '0';
    CBTIPODECLARACION.ITEMINDEX := 0;
    EDTPERIODO.TEXT := '__/____';
    EDTNPLACORRECION.Text := '0';
    EDIT1.Text := '0';
    EDIT23.Text:= '0';
    EDTULTIMAFECHAPAGO.Text :='0'; 
    //EDTCORRECIONPLANILLA.TEXT := '0';
    BTGRABARPLANILLA.ENABLED := FALSE;

    PBRGRABARDETALLE.MIN := 0;
    PBRGRABARDETALLE.POSITION := 0;
    PBRGRABARDETALLE.MAX := 0;



    DTFECHAPAGO.DATE := STRTODATE(GLDATE);
    ESTADO_PLANILLA := '';
    ESTADO_USUARIO := '';

   EDTNUMERODUCAFILIADO.ENABLED := TRUE;
   CKING.ENABLED := TRUE;
   CKRET.ENABLED := TRUE;
   CKTDA.ENABLED := TRUE;
   CKTAA.ENABLED := TRUE;
   CKVSP.ENABLED := TRUE;
   CKVST.ENABLED := TRUE;
   CKSLN.ENABLED := TRUE;
   CKIGE.ENABLED := TRUE;
   CKLMA.ENABLED := TRUE;
   CKVAC.ENABLED := TRUE;
   CBTIPODOCAFILIADO.ENABLED := TRUE;
   EDDIAS.ENABLED := TRUE;
   //EDTSUCURSAL.ENABLED := TRUE;
   EDTSALARIOBASE.ENABLED := TRUE;
   EDTVALORNETO.ENABLED := TRUE;
   EDTNOAUTLICENCIA.ENABLED := FALSE;
   EDTAUTINCAPACIDAD.ENABLED := FALSE;
//   EDTIGRESOBASECOTIZACION.ENABLED := TRUE;
   EDTCOTIZACIONOBLIGATORIO.ENABLED := TRUE;
   EDTVALINCAPACIDAD.ENABLED := TRUE;
   EDTVALLICENCIA.ENABLED := TRUE;
   EDTVALUPC.ENABLED := TRUE;
   EDTTOTALPAGADOAFILIADO.ENABLED := TRUE;
   // LIMPIAR  CONSOLIDADO DE LA  PLANILLA
   EDTTOTALPLANILLA.ENABLED := false;
   EDTTOTALAPORTE.ENABLED := false;
   EDTINCAPACIDAD.ENABLED := FALSE;
   EDTLICENCIA.ENABLED := FALSE;
   EDTNETOAPORTES.ENABLED := false;
   EDTTOTALPLANILLA.ENABLED := false;
   EDTINTERESES.ENABLED := TRUE;
   EDTAPORTEINTETERES.ENABLED := false;
   EDTSALDOANTERIOR.ENABLED := FALSE;
   EDTUPC.ENABLED := false;
   //EDTTOTALPAGADO.ENABLED := false;
   Edit17.ENABLED := false;
   EDTVALCHEQUE.ENABLED := TRUE;
   //CBBANCO.ENABLED := TRUE;
   EDTVALEFECTIVO.ENABLED := TRUE;
   //EDTTOTALCONSIGNADO.ENABLED := FALSE;

   // LIMPIAR  ENCABEZADO
    EDTPLANILLA.ENABLED := TRUE;
    CBTIPODOCEMPRESA.ENABLED := TRUE;
    EDNUMERO.ENABLED := TRUE;
    CBTIPODECLARACION.ENABLED := TRUE;
    EDTPERIODO.ENABLED := FALSE;
    //EDTCORRECIONPLANILLA.ENABLED := TRUE;
    BTGRABARPLANILLA.ENABLED := TRUE;
    DTFECHAPAGO.ENABLED := TRUE;

    EDTPERIODO.ENABLED := TRUE;
    EDTSALARIOBASE.ENABLED := TRUE;

END;

PROCEDURE Tfrmcorreciones.EDTCUENTAENTER(SENDER: TOBJECT);
BEGIN
        IF (EDTTOTALPLANILLA.TEXT = '0') THEN
        BEGIN
        SHOWMESSAGE(LowerCase('NO SE  DIGITARON  USUARIOS DE LA  PLANILLA'));
        LIMPIAR_PLANILLA;
        END;
END;

PROCEDURE Tfrmcorreciones.GUARDAR_PLANILLA;
VAR I,J,K : INTEGER;
BEGIN
TRY

 DATAMODULE1.DTBDATAMEC.BeginTrans;
 DATAMODULE1.QRYAUTOLIQUIDACION.CLOSE;
 DATAMODULE1.QRYAUTOLIQUIDACION.SQL.CLEAR;
 DATAMODULE1.QRYAUTOLIQUIDACION.SQL.ADD('SELECT * FROM AUTOLIQUIDACION  WHERE  NUM_PLANILLA  = :"PLANILLA"');
 DATAMODULE1.QRYAUTOLIQUIDACION.Parameters[0].VALUE := EDTPLANILLA.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.OPEN;
   IF DATAMODULE1.QRYAUTOLIQUIDACION.RECORDCOUNT > 0 THEN
   BEGIN
   DATAMODULE1.QRYAUTOLIQUIDACION.EDIT;
   DATAMODULE1.QRYAUTOLIQUIDACIONFEC_MODIFICACION.VALUE := STRTODATE(GLDATE);
    END
    ELSE IF DATAMODULE1.QRYAUTOLIQUIDACION.RECORDCOUNT = 0 THEN
    BEGIN
     DATAMODULE1.QRYAUTOLIQUIDACION.INSERT;
     DATAMODULE1.QRYAUTOLIQUIDACIONFEC_DIGITACION.VALUE := STRTODATE(GLDATE);
    END;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('NUM_PLANILLA').VALUE := TRIM(EDTPLANILLA.TEXT);
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('EMP_TIPO_DOC').VALUE := TRIM(CBTIPODOCEMPRESA.TEXT);
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('EMP_NUMERO_DOC').VALUE := TRIM(EDNUMERO.TEXT);
// DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('COD_SUCURSAL').VALUE := TRIM(EDTSUCURSAL.TEXT);
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TIP_DECLARACION').VALUE := TRIM(CBTIPODECLARACION.TEXT);
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('FEC_PAGO').VALUE := DTFECHAPAGO.DATE;
 //***
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('NUM_PLANILLA_CORR').VALUE := TRIM(EDTNPLACORRECION.TEXT);
 //***
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('PER_COTIZACION').VALUE := TRIM(EDTPERIODO.TEXT);
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('PER_PRESENTACION').VALUE := TRIM(MSPERPRESENTACION.TEXT);
// Consolidado del detalle  de Autoliquidaciones
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_PLANILLA').VALUE := EDTTOTALPLANILLA.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_APORTE_PER').VALUE := EDTTOTALAPORTE.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_INCAPACIDAD').VALUE := Edit8.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_LICENCIAS').VALUE := Edit9.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_UPC').VALUE := Edit11.TEXT;
 // incapaciddes  y licencias  descontadas por separado
 DATAMODULE1.qryautoliquidacionNO_INCAP_PAG.VALUE := Edit12.TEXT;
 DATAMODULE1.qryautoliquidacionVAL_INCAP_PAG.VALUE := strtofloat(EDTINCAPACIDAD.TEXT);
 DATAMODULE1.qryautoliquidacionNO_LICEN_PAG.VALUE := Edit13.TEXT;
 DATAMODULE1.qryautoliquidacionVAL_LICEN_PAG.VALUE := strtofloat(edtlicencia.TEXT);
 // interses de mora
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('INT_MORA').VALUE := EDTINTERESES.TEXT;
 DATAMODULE1.qryautoliquidacionVAL_INTERES_UPC.VALUE := strtofloat(Edit14.TEXT);
 // total aportes
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_APORTE').VALUE := EDTNETOAPORTES.TEXT;
 DATAMODULE1.qryautoliquidacionVAL_NETO_UPC.VALUE := strtofloat(edtupc.TEXT);
 // aportes  mas  interese de mora
  DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_APORTE_MMORA').VALUE := EDTAPORTEINTETERES.TEXT;
  DATAMODULE1.qryautoliquidacionVAL_APORMASINT_UPC.VALUE := strtofloat(Edit15.TEXT);
 // saldos  a  favor
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_SALDO_FAV').VALUE := EDTSALDOANTERIOR.TEXT;
 DATAMODULE1.qryautoliquidacionVAL_SALFAVOR_UPC.VALUE := strtofloat(Edit16.TEXT);

 //
 // pagos por upc
 DATAMODULE1.qryautoliquidacionVAL_PAGO_UPC.VALUE := strtofloat(Edit17.TEXT);
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_PAGADO').VALUE := EDTTOTALPAGADO.TEXT;
 // LUGAR  DE  CONSIGNACION
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('COD_BANCO').VALUE := CBBANCO.KEYVALUE;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('NUM_CUENTA').VALUE := EDTCUENTA.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('VAL_EFECTIVO').VALUE := EDTVALEFECTIVO.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('VAL_CHEQUE').VALUE := EDTVALCHEQUE.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('EST_PLANILLA').VALUE := ESTADO_PLANILLA;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('COD_OFICINA').VALUE := GLOFICINA;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('COD_REGIONAL').VALUE := GLREGIONAL;
 DATAMODULE1.QRYAUTOLIQUIDACIONCRU_CONCILIACION.VALUE := 'N';
 DATAMODULE1.QRYAUTOLIQUIDACIONTIP_DOC_USUARIO.VALUE := GLTIPO;
 DATAMODULE1.QRYAUTOLIQUIDACIONNUM_DOC_USUARIO.VALUE := GLNUMERO;
 // CONCILIACION DE PLANILLAS

           {DataModule1.qryestrato.close;
           DataModule1.qryestrato.sql.clear;
           DataModule1.qryestrato.sql.add('SELECT * FROM EST_BANCARIO_AUTO');
           DataModule1.qryestrato.sql.add('WHERE COD_BANCO = :"COD_BANCO" AND NUM_DOCUMENTO= :"NUM_DOCUMENTO" AND NUM_PLANILLA = :"NUM_PLANILLA" AND FEC_RECAUDO = :"FEC_RECAUDO" AND VAL_CONSIGNACION = :"VAL_CONSIGNACION" AND EST_CONCILIACION = :"ESTADO" "');
           DataModule1.qryestrato.Parameters[0].VALUE := cbbanco.KeyValue;
           DataModule1.qryestrato.Parameters[1].VALUE := trim(ednumero.text);
           DataModule1.qryestrato.Parameters[2].VALUE := trim(edtplanilla.text);
           DataModule1.qryestrato.Parameters[3].VALUE := dtfechapago.Date;
           DataModule1.qryestrato.Parameters[4].VALUE := strtofloat(edttotalconsignado.text);
           DataModule1.qryestrato.Parameters[5].VALUE := 'N';
           DataModule1.qryestrato.Open;
                 if DataModule1.qryestrato.RecordCount = 1 then
                 begin
                 DataModule1.qryestrato.Edit;
                 DataModule1.qryautoliquidacionCRU_CONCILIACION.Value := 'S';
                 DataModule1.qryestratoEST_CONCILIACION.Value := 'S';
                 DataModule1.qryestratoFEC_PLANILLA_CON.Value := strtodate(GLDATE);
                 DataModule1.qryestrato.Post;
                 end
                 else
                             begin
                             DataModule1.qryestrato.close;
                             DataModule1.qryestrato.sql.clear;
                             DataModule1.qryestrato.sql.add('SELECT * FROM EST_BANCARIO_AUTO');
                             DataModule1.qryestrato.sql.add('WHERE COD_BANCO = :"COD_BANCO" AND NUM_PLANILLA = :"NUM_PLANILLA" AND FEC_RECAUDO = :"FEC_RECAUDO" AND VAL_CONSIGNACION = :"VAL_CONSIGNACION" AND EST_CONCILIACION = :"ESTADO"');
                             DataModule1.qryestrato.Parameters[0].VALUE := cbbanco.KeyValue;
                             DataModule1.qryestrato.Parameters[1].VALUE := trim(edtplanilla.text);
                             DataModule1.qryestrato.Parameters[2].VALUE := dtfechapago.Date;
                             DataModule1.qryestrato.Parameters[3].VALUE := strtofloat(edttotalconsignado.text);
                             DataModule1.qryestrato.Parameters[4].VALUE := 'N';
                             DataModule1.qryestrato.Open;
                                   if DataModule1.qryestrato.RecordCount = 1 then
                                   begin
                                   DataModule1.qryestrato.Edit;
                                   DataModule1.qryestratoEST_CONCILIACION.Value := 'S';
                                   DataModule1.qryestratoNUM_DOCUMENTO.Value := TRIM(ednumero.Text);
                                   DataModule1.qryautoliquidacionCRU_CONCILIACION.Value := 'S';
                                   DataModule1.qryestratoFEC_PLANILLA_CON.Value := strtodate(GLDATE);
                                   DataModule1.qryestrato.Post;
                                   end
                                   ELSE
                                        begin
                                         DataModule1.qryestrato.close;
                                         DataModule1.qryestrato.sql.clear;
                                         DataModule1.qryestrato.sql.add('SELECT * FROM EST_BANCARIO_AUTO');
                                         DataModule1.qryestrato.sql.add('WHERE COD_BANCO = :"COD_BANCO" AND NUM_DOCUMENTO= :"NUM_DOCUMENTO" AND FEC_RECAUDO = :"FEC_RECAUDO" AND VAL_CONSIGNACION = :"VAL_CONSIGNACION" AND EST_CONCILIACION = :"ESTADO" "');
                                         DataModule1.qryestrato.Parameters[0].VALUE := cbbanco.KeyValue;
                                         DataModule1.qryestrato.Parameters[1].VALUE := trim(ednumero.text);
                                         DataModule1.qryestrato.Parameters[2].VALUE := dtfechapago.Date;
                                         DataModule1.qryestrato.Parameters[3].VALUE := strtofloat(edttotalconsignado.text);
                                         DataModule1.qryestrato.Parameters[4].VALUE := 'N';
                                         DataModule1.qryestrato.Open;
                                               if DataModule1.qryestrato.RecordCount = 1 then
                                               begin
                                               DataModule1.qryestrato.Edit;
                                               DataModule1.qryestratoEST_CONCILIACION.Value := 'S';
                                               DataModule1.qryestratoNUM_PLANILLA.Value := TRIM(edtplanilla.Text);
                                               DataModule1.qryautoliquidacionCRU_CONCILIACION.Value := 'S';
                                               DataModule1.qryestratoFEC_PLANILLA_CON.Value := strtodate(GLDATE);
                                               DataModule1.qryestrato.Post;
                                               end;
                                     END;
                             end;

            }
     DataModule1.qryestrato.close;
     DataModule1.qryestrato.sql.clear;
     DataModule1.qryestrato.sql.add('SELECT * FROM EST_BANCARIO_AUTO');
     DataModule1.qryestrato.sql.add('WHERE COD_BANCO = :"COD_BANCO" AND NUM_DOCUMENTO= :"NUM_DOCUMENTO" AND NUM_PLANILLA = :"NUM_PLANILLA" AND FEC_RECAUDO = :"FEC_RECAUDO" AND VAL_CONSIGNACION = :"VAL_CONSIGNACION"');
     DataModule1.qryestrato.Parameters[0].VALUE := cbbanco.KeyValue;
     DataModule1.qryestrato.Parameters[1].VALUE := trim(ednumero.text);
     DataModule1.qryestrato.Parameters[2].VALUE := trim(edtplanilla.text);
     DataModule1.qryestrato.Parameters[3].VALUE := DTFECHAPAGO.Date;
     DataModule1.qryestrato.Parameters[4].VALUE := strtofloat(edttotalconsignado.text);
     //DataModule1.qryestrato.Parameters[5].VALUE := 'N';
     DataModule1.qryestrato.Open;
     if DataModule1.qryestrato.RecordCount = 1 then
     begin
     DataModule1.qryestrato.Edit;
     DataModule1.qryautoliquidacionCRU_CONCILIACION.Value := 'S';
     DataModule1.qryestratoEST_CONCILIACION.Value := CONCILIAR;
     DataModule1.qryestratoFEC_PLANILLA_CON.Value := strtodate(GLDATE);
     DataModule1.qryestrato.Post;
     end
     ELSE
     BEGIN
     DataModule1.qryestrato.close;
     DataModule1.qryestrato.sql.clear;
     DataModule1.qryestrato.sql.add('SELECT * FROM EST_BANCARIO_AUTO');
     DataModule1.qryestrato.sql.add('WHERE COD_BANCO = :"COD_BANCO" AND NUM_PLANILLA = :"NUM_PLANILLA" AND FEC_RECAUDO = :"FEC_RECAUDO" AND VAL_CONSIGNACION = :"VAL_CONSIGNACION"');
     DataModule1.qryestrato.Parameters[0].VALUE := cbbanco.KeyValue;
     DataModule1.qryestrato.Parameters[1].VALUE := trim(edtplanilla.text);
     DataModule1.qryestrato.Parameters[2].VALUE := DTFECHAPAGO.Date;
     DataModule1.qryestrato.Parameters[3].VALUE := strtofloat(edttotalconsignado.text);
     //DataModule1.qryestrato.Parameters[5].VALUE := 'N';
     DataModule1.qryestrato.Open;
     if DataModule1.qryestrato.RecordCount = 1 then
     begin
     DataModule1.qryestrato.Edit;
     DataModule1.qryautoliquidacionCRU_CONCILIACION.Value := 'S';
     DataModule1.qryestratoNUM_DOCUMENTO.Value := TRIM(ednumero.Text);
     DataModule1.qryestratoEST_CONCILIACION.Value := CONCILIAR;
     DataModule1.qryestratoFEC_PLANILLA_CON.Value := strtodate(GLDATE);
     DataModule1.qryestrato.Post;
     END;
 END;





 DATAMODULE1.QRYAUTOLIQUIDACION.POST;
 ESTADO := TRUE;
 // GRABAR  DETALLE  DE  LA  PLANILLA
  PBRGRABARDETALLE.MIN := 0;
  PBRGRABARDETALLE.POSITION := 0;
  PBRGRABARDETALLE.MAX := SGDETALLE.ROWCOUNT -2;


  // GRABAR EL DETALLE  DE  LA PLANILLA  DE AUTOLIQUIDACION

  FOR I := 1 TO SGDETALLE.ROWCOUNT -2 DO
   BEGIN

 DATAMODULE1.QRYDETALLE.CLOSE;
 DATAMODULE1.QRYDETALLE.SQL.CLEAR;
 DATAMODULE1.QRYDETALLE.SQL.ADD('SELECT * FROM DET_PLANILLA_AUTOLIQUIDACION  WHERE  NUM_PLANILLA  = :"PLANILLA" AND AFI_TIPO_DOC = :"CC" AND AFI_NUMERO_DOC = :"USUARIO');
 DATAMODULE1.QRYDETALLE.Parameters[0].VALUE := EDTPLANILLA.TEXT;
 DATAMODULE1.QRYDETALLE.Parameters[1].VALUE := TRIM(SGDETALLE.CELLS[0,I]);
 DATAMODULE1.QRYDETALLE.Parameters[2].VALUE := TRIM(SGDETALLE.CELLS[1,I]);
 DATAMODULE1.QRYDETALLE.OPEN;

  IF DATAMODULE1.QRYDETALLE.RECORDCOUNT = 1 THEN
   BEGIN
   DATAMODULE1.QRYDETALLE.EDIT;
   END
   ELSE
    IF DATAMODULE1.QRYDETALLE.RECORDCOUNT = 0 THEN
     BEGIN
     DATAMODULE1.QRYDETALLE.INSERT;
      DATAMODULE1.QRYDETALLEPER_PRESENTACION.VALUE := MSPERPRESENTACION.TEXT;
      END;
        DATAMODULE1.QRYDETALLENUM_PLANILLA.VALUE := TRIM(EDTPLANILLA.TEXT);
        DATAMODULE1.QRYDETALLEAFI_TIPO_DOC.VALUE :=TRIM(SGDETALLE.CELLS[0,I]);
        DATAMODULE1.QRYDETALLEAFI_NUMERO_DOC.VALUE :=TRIM(SGDETALLE.CELLS[1,I]);
        DATAMODULE1.QRYDETALLENOV_ING.VALUE :=SGDETALLE.CELLS[2,I];
        DATAMODULE1.QRYDETALLENOV_RET.VALUE :=SGDETALLE.CELLS[3,I];
        DATAMODULE1.QRYDETALLENOV_TDA.VALUE :=SGDETALLE.CELLS[4,I];
        DATAMODULE1.QRYDETALLENOV_TAA.VALUE :=SGDETALLE.CELLS[5,I];
        DATAMODULE1.QRYDETALLENOV_VSP.VALUE :=SGDETALLE.CELLS[6,I];
        DATAMODULE1.QRYDETALLENOV_VST.VALUE :=SGDETALLE.CELLS[7,I];
        DATAMODULE1.QRYDETALLENOV_SLN.VALUE :=SGDETALLE.CELLS[8,I];
        DATAMODULE1.QRYDETALLENOV_IGE.VALUE :=SGDETALLE.CELLS[9,I];
        DATAMODULE1.QRYDETALLENOV_LMA.VALUE :=SGDETALLE.CELLS[10,I];
        DATAMODULE1.QRYDETALLENOV_VAC.VALUE :=SGDETALLE.CELLS[11,I];
        DATAMODULE1.QRYDETALLEDIA_COTIZADOS.VALUE :=SGDETALLE.CELLS[12,I];
        DATAMODULE1.QRYDETALLESAL_BASE.VALUE :=STRTOFLOAT(SGDETALLE.CELLS[13,I]);
        DATAMODULE1.QRYDETALLEVAL_NETO_NOV.VALUE :=STRTOFLOAT(SGDETALLE.CELLS[14,I]);
        DATAMODULE1.QRYDETALLEING_BASE_COT.VALUE :=STRTOFLOAT(SGDETALLE.CELLS[15,I]);
        DATAMODULE1.QRYDETALLECOT_OBLIGATORIA.VALUE :=STRTOFLOAT(SGDETALLE.CELLS[16,I]);
        DATAMODULE1.QRYDETALLENUM_INCAPACIDAD_EGR.VALUE :=SGDETALLE.CELLS[17,I];
        DATAMODULE1.QRYDETALLEVAL_INCAPACIDAD_EGR.VALUE :=STRTOFLOAT(SGDETALLE.CELLS[18,I]);
        DATAMODULE1.QRYDETALLENUM_LICENCIA_MAT.VALUE :=SGDETALLE.CELLS[19,I];
        DATAMODULE1.QRYDETALLEVAL_LICENCIA_MAT.VALUE :=STRTOFLOAT(SGDETALLE.CELLS[20,I]);
        DATAMODULE1.QRYDETALLEVAL_UPC_ADI.VALUE :=STRTOFLOAT(SGDETALLE.CELLS[21,I]);
        DATAMODULE1.QRYDETALLEVAL_TOTAL_COT.VALUE :=STRTOFLOAT(SGDETALLE.CELLS[22,I]);
        IF SGDETALLE.CELLS[23,I] = '' THEN
        BEGIN
         DATAMODULE1.QRYDETALLEDET_ESTADO.VALUE := 'CIE';
         END
         ELSE DATAMODULE1.QRYDETALLEDET_ESTADO.VALUE := SGDETALLE.CELLS[23,I];
        DATAMODULE1.QRYDETALLEPER_COTIZACION.VALUE := EDTPERIODO.TEXT;
        PBRGRABARDETALLE.POSITION := PBRGRABARDETALLE.POSITION + 1;
        frmcorreciones.REFRESH;
        DATAMODULE1.QRYDETALLE.POST;
  END;

  // INGRESAR  EL DETALLE  DEL PAGO EN EL BANCO CON CHEQUE
         FOR I := 1 TO sgdetabanco.ROWCOUNT -2 DO
         BEGIN
           IF TRIM(sgdetabanco.CELLS[0,I]) > '0' THEN
           BEGIN
           DATAMODULE1.qrydetallepago.SQL.CLEAR;
           DATAMODULE1.qrydetallepago.SQL.ADD('SELECT * FROM DET_PAGO_AUTOLIQUIDACIONES WHERE NUM_PLANILLA = :"NUMERO" AND COD_BANCO = :"BANCO" AND NUM_CUENTA = :"CUENTA"');
           DATAMODULE1.qrydetallepago.Parameters[0].VALUE := EDTPLANILLA.TEXT;
           DATAMODULE1.qrydetallepago.Parameters[1].VALUE := TRIM(sgdetabanco.CELLS[0,I]);
           DATAMODULE1.qrydetallepago.Parameters[2].VALUE := TRIM(sgdetabanco.CELLS[1,I]);
           DATAMODULE1.qrydetallepago.OPEN;
                 IF DATAMODULE1.qrydetallepago.RecordCount = 0 THEN
                 BEGIN
                 DATAMODULE1.qrydetallepago.Insert;
                 DATAMODULE1.qrydetallepagoNUM_PLANILLA.Value := edtplanilla.TEXT;
                 DATAMODULE1.qrydetallepagoCOD_BANCO.Value :=  TRIM(sgdetabanco.CELLS[0,I]);
                 DATAMODULE1.qrydetallepagoNUM_CUENTA.Value := TRIM(sgdetabanco.CELLS[1,I]);
                 DATAMODULE1.qrydetallepagoVAL_CHEQUE.Value := STRTOFLOAT(sgdetabanco.CELLS[2,I]);
                 DATAMODULE1.qrydetallepago.Post;

                 END
                 ELSE
                 IF DATAMODULE1.qrydetallepago.RecordCount > 0 THEN
                 BEGIN
                 DATAMODULE1.qrydetallepago.Edit;
                 DATAMODULE1.qrydetallepagoNUM_PLANILLA.Value := edtplanilla.TEXT;
                 DATAMODULE1.qrydetallepagoCOD_BANCO.Value :=  TRIM(sgdetabanco.CELLS[0,I]);
                 DATAMODULE1.qrydetallepagoNUM_CUENTA.Value := TRIM(sgdetabanco.CELLS[1,I]);
                 DATAMODULE1.qrydetallepagoVAL_CHEQUE.Value := STRTOFLOAT(sgdetabanco.CELLS[2,I]);
                 DATAMODULE1.qrydetallepago.Post;


                 END;
               END;
           END;




 // GRABAR  LAS  NOTAS  DE AUTOLIQUIDACIONES
    DATAMODULE1.qrynotasautoliquidacion.CLOSE;
    DATAMODULE1.qrynotasautoliquidacion.SQL.CLEAR;
    DATAMODULE1.qrynotasautoliquidacion.SQL.ADD('SELECT * FROM NOTAS_AUTOLIQUIDACION WHERE NUM_PLANILLA = :"NUMERO"');
    DATAMODULE1.qrynotasautoliquidacion.Parameters[0].VALUE := TRIM(EDTPLANILLA.TEXT);
    DATAMODULE1.qrynotasautoliquidacion.Open;
            IF DATAMODULE1.qrynotasautoliquidacion.RecordCount = 0 THEN
            begin
            DATAMODULE1.qrynotasautoliquidacion.Insert;
            DATAMODULE1.qrynotasautoliquidacionNUM_PLANILLA.Value := edtplanilla.Text;
            DATAMODULE1.qrynotasautoliquidacionTIP_DOC_EMPRESA.Value := cbtipodocempresa.Text;
            DATAMODULE1.qrynotasautoliquidacionNUM_DOC_EMPRESA.Value := ednumero.Text;
            DATAMODULE1.qrynotasautoliquidacionTIP_NOTA.Value := ComboBox1.text;
            DATAMODULE1.qrynotasautoliquidacionVAL_NOTA.Value := strtofloat(Edit4.Text);
            DATAMODULE1.qrynotasautoliquidacionPER_PAGO_NOTA.Value := STRTODATE(FormatDateTime('dd/mm/yy',STRTODATE(GLDATE)));
            //*****TIPO2 NOTAS AUTOLIQUIDACION*****//
            IF (Edit8.Text <> '0') or  (Edit9.Text <> '0') or (Edtincapacidad.Text <> '0') or (Edtlicencia.Text <>'0') then
            DATAMODULE1.qrynotasautoliquidacionTIP_NOTA2.Value := 'I' //Incapacidad
            ELSE
            DATAMODULE1.qrynotasautoliquidacionTIP_NOTA2.Value := 'D'; //Diferencia
            //**************************************
            DATAMODULE1.qrynotasautoliquidacion.Post;
            end
            else
            begin
            DATAMODULE1.qrynotasautoliquidacion.edit;
            DATAMODULE1.qrynotasautoliquidacionNUM_PLANILLA.Value := edtplanilla.Text;
            DATAMODULE1.qrynotasautoliquidacionTIP_DOC_EMPRESA.Value := cbtipodocempresa.Text;
            DATAMODULE1.qrynotasautoliquidacionNUM_DOC_EMPRESA.Value := ednumero.Text;
            DATAMODULE1.qrynotasautoliquidacionTIP_NOTA.Value := ComboBox1.text;
            DATAMODULE1.qrynotasautoliquidacionVAL_NOTA.Value := strtofloat(Edit4.Text);
            DATAMODULE1.qrynotasautoliquidacionPER_PAGO_NOTA.Value := STRTODATE(FormatDateTime('dd/mm/yy',STRTODATE(GLDATE)));
            //*****TIPO2 NOTAS AUTOLIQUIDACION*****//
            IF (Edit8.Text <>'0') or  (Edit9.Text <>'0') or (Edtincapacidad.Text <>'0') or (Edtlicencia.Text <>'0') then
            DATAMODULE1.qrynotasautoliquidacionTIP_NOTA2.Value := 'I' //Incapacidad
            ELSE
            DATAMODULE1.qrynotasautoliquidacionTIP_NOTA2.Value := 'D'; //Diferencia
            //**************************************
            DATAMODULE1.qrynotasautoliquidacion.Post;
            end;
    // borrar  si  quedo en cero
    DATAMODULE1.qrynotasautoliquidacion.CLOSE;
    DATAMODULE1.qrynotasautoliquidacion.SQL.CLEAR;
    DATAMODULE1.qrynotasautoliquidacion.SQL.ADD('DELETE  FROM NOTAS_AUTOLIQUIDACION WHERE  NUM_PLANILLA = :"NUMERO" AND VAL_NOTA = :"VALOR"');
    DATAMODULE1.qrynotasautoliquidacion.Parameters[0].VALUE := TRIM(EDTPLANILLA.TEXT);
    DATAMODULE1.qrynotasautoliquidacion.Parameters[1].VALUE := 0;
    DATAMODULE1.qrynotasautoliquidacion.ExecSQL;

   // cuando  hay  saldos a favor de la  empresa
    {if Edit20.TEXT > '0' then
    begin
    DATAMODULE1.qrynotasautoliquidacion.CLOSE;
    DATAMODULE1.qrynotasautoliquidacion.SQL.CLEAR;
    DATAMODULE1.qrynotasautoliquidacion.SQL.ADD('SELECT * FROM NOTAS_AUTOLIQUIDACION WHERE NUM_PLANILLA = :"NUMERO"');
    DATAMODULE1.qrynotasautoliquidacion.Parameters[0].VALUE := TRIM(Edit20.TEXT);
    DATAMODULE1.qrynotasautoliquidacion.Open;
            IF DATAMODULE1.qrynotasautoliquidacion.RecordCount = 1 THEN
            begin
            DATAMODULE1.qrynotasautoliquidacion.Edit;
            DATAMODULE1.qrynotasautoliquidacionNUM_COMP_DES.Value := edtplanilla.Text;
            DATAMODULE1.qrynotasautoliquidacionFEC_DESCUENTO.Value := dtfechapago.Date;
            DATAMODULE1.qrynotasautoliquidacionTIP_DESCUENTO.Value := 'A';
            DATAMODULE1.qrynotasautoliquidacion.Post;
            end;
     end;
     }
    IF Edit20.TEXT > '0' then
    begin
    K:=1;
    WHILE NOTAS[K,1] <> '' DO
    BEGIN
    WHILE NOTAS[K,2] <> '' DO
    BEGIN
    DATAMODULE1.qrynotasautoliquidacion.CLOSE;
    DATAMODULE1.qrynotasautoliquidacion.SQL.CLEAR;
    DATAMODULE1.qrynotasautoliquidacion.SQL.ADD('SELECT * FROM NOTAS_AUTOLIQUIDACION WHERE NUM_PLANILLA = :"NUMERO"');
    DATAMODULE1.qrynotasautoliquidacion.Parameters[0].VALUE := NOTAS[K,1];//TRIM(Edit20.TEXT);
    DATAMODULE1.qrynotasautoliquidacion.Open;
    IF DATAMODULE1.qrynotasautoliquidacion.RecordCount = 1 THEN
    begin
    //frmproceso.Label1.Caption := 'Descargando saldos de la  planilla';
    //frmproceso.Refresh;

            DATAMODULE1.qrynotasautoliquidacion.Edit;
            DATAMODULE1.qrynotasautoliquidacionNUM_COMP_DES.Value := trim(EDTPLANILLA.TEXT);
            DATAMODULE1.qrynotasautoliquidacionFEC_DESCUENTO.Value := Dtfechapago.Date;//STRTODATETIME(dtfechapago.Text);
            DATAMODULE1.qrynotasautoliquidacionTIP_DESCUENTO.Value := 'A';
            DATAMODULE1.qrynotasautoliquidacion.Post;
            end;
     K:=K+1;
     END;//WHILE
     
     END;//WHILE 1
     end;

     //Cuando se descuentan notas D�bito

      QRYNOTA.Close;
      QRYNOTA.Parameters[0].Value := TRIM(EDTNPLACORRECION.Text);
      QRYNOTA.Parameters[1].Value := STRTOFLOAT(EDTTOTALCONSIGNADO.Text);
      QRYNOTA.Open;
      IF QRYNOTA.RecordCount > 0 THEN
      BEGIN
            qrynota.Edit;
            qrynotaNUM_COMP_DES.Value := edtplanilla.Text;
            qrynotaFEC_DESCUENTO.Value := dtfechapago.Date;
            qrynotaTIP_DESCUENTO.Value := 'A';
            qrynota.Post;
      END;




// PAGO  APORTES  CUANDO PAGAN UPC  ADICINAL  EN LA PLANILLA DE  AUTOLIQUIDACION
  FOR I := 1 TO SGUPC.ROWCOUNT -2 DO
  BEGIN
    IF SGUPC.CELLS[8,I] = 'P' THEN
    BEGIN
    DATAMODULE1.QRYPAGOUPC.CLOSE;

    DATAMODULE1.QRYPAGOUPC.SQL.CLEAR;
    DATAMODULE1.QRYPAGOUPC.SQL.ADD('SELECT * FROM DET_PAGO_UPC_ADICIONAL WHERE NUM_PLANILLA =:"NUM_PLANILLA" AND AFI_TIP_DOCUMENTO = :"TIPO_COTIZA" AND AFI_NUM_DOCUMENTO = :"NUM_COTIZA" AND AFI_TIP_DOC_ADICIONAL = :"TIPO_UPC" AND AFI_NUM_DOC_ADICIONAL = :"NUM_UPC"');
    DATAMODULE1.QRYPAGOUPC.Parameters[0].VALUE := TRIM(EDTPLANILLA.TEXT);
    DATAMODULE1.QRYPAGOUPC.Parameters[1].VALUE := TRIM(SGUPC.CELLS[0,I]);
    DATAMODULE1.QRYPAGOUPC.Parameters[2].VALUE := TRIM(SGUPC.CELLS[1,I]);
    DATAMODULE1.QRYPAGOUPC.Parameters[3].VALUE := TRIM(SGUPC.CELLS[2,I]);
    DATAMODULE1.QRYPAGOUPC.Parameters[4].VALUE := TRIM(SGUPC.CELLS[3,I]);
    DATAMODULE1.QRYPAGOUPC.OPEN;

        IF DATAMODULE1.QRYPAGOUPC.RECORDCOUNT = 1 THEN
        BEGIN
        DATAMODULE1.QRYPAGOUPC.EDIT;
        END
        ELSE
        IF DATAMODULE1.QRYPAGOUPC.RECORDCOUNT = 0 THEN
        BEGIN
        DATAMODULE1.QRYPAGOUPC.INSERT;
        END;
        DATAMODULE1.QRYPAGOUPCNUM_PLANILLA.VALUE := TRIM(EDTPLANILLA.TEXT);
        DATAMODULE1.QRYPAGOUPCAFI_TIP_DOCUMENTO.VALUE :=  TRIM(SGUPC.CELLS[0,I]);
        DATAMODULE1.QRYPAGOUPCAFI_NUM_DOCUMENTO.VALUE := TRIM(SGUPC.CELLS[1,I]);
        DATAMODULE1.QRYPAGOUPCAFI_TIP_DOC_ADICIONAL.VALUE := TRIM(SGUPC.CELLS[2,I]);
        DATAMODULE1.QRYPAGOUPCAFI_NUM_DOC_ADICIONAL.VALUE := TRIM(SGUPC.CELLS[3,I]);
        DATAMODULE1.QRYPAGOUPCVAL_PAGADO.VALUE := STRTOFLOAT(SGUPC.CELLS[7,I]);
        DATAMODULE1.QRYPAGOUPCPER_COTIZACION.VALUE := TRIM(EDTPERIODO.TEXT);
        DATAMODULE1.QRYPAGOUPCPER_PRESENTACION.VALUE := TRIM(MSPERPRESENTACION.TEXT);
        FRMPLANILLAS.REFRESH;
        DATAMODULE1.QRYPAGOUPC.POST;

     END
     // CUANDO  TIENE UPC  ADICIONAL Y NO A  PAGADO LOS APORTES  DEL PERIODO GENERA  CARTERA MOROSA
        ELSE IF SGUPC.CELLS[8,I] = 'C' THEN
         BEGIN
                DATAMODULE1.QRYCARTERA.CLOSE;
                DATAMODULE1.QRYCARTERA.SQL.CLEAR;
                DATAMODULE1.QRYCARTERA.SQL.ADD('SELECT * FROM  CARTERA WHERE TIP_DOCUMENTO = :"TIPO" AND NUM_DOCUMENTO = :"NUMERO" AND PER_COMPENSACION = :"PERIODO"');
                DATAMODULE1.QRYCARTERA.Parameters[0].VALUE := SGUPC.CELLS[2,I];
                DATAMODULE1.QRYCARTERA.Parameters[1].VALUE := SGUPC.CELLS[3,I];
                DATAMODULE1.QRYCARTERA.Parameters[2].VALUE := EDTPERIODO.TEXT;
                DATAMODULE1.QRYCARTERA.OPEN;
                        IF DATAMODULE1.QRYCARTERA.RECORDCOUNT = 0 THEN
                        BEGIN
                        DATAMODULE1.QRYCARTERA.INSERT;
                        END
                        ELSE IF DATAMODULE1.QRYCARTERA.RECORDCOUNT = 1 THEN
                        BEGIN
                        DATAMODULE1.QRYCARTERA.EDIT;
                        END;
                        DATAMODULE1.QRYCARTERATIP_DOCUMENTO.VALUE := SGUPC.CELLS[2,I];
                        DATAMODULE1.QRYCARTERANUM_DOCUMENTO.VALUE := SGUPC.CELLS[3,I];
                        DATAMODULE1.QRYCARTERATIP_DOCUMENTO_EMP.VALUE := TRIM(CBTIPODOCEMPRESA.TEXT);
                        DATAMODULE1.QRYCARTERANUM_DOCUMENTO_EMP.VALUE := TRIM(EDNUMERO.TEXT);
//                        DATAMODULE1.QRYCARTERACOD_SUCURSAL_EMP.VALUE := TRIM(EDTSUCURSAL.TEXT);
                        DATAMODULE1.QRYCARTERAPER_COMPENSACION.VALUE := TRIM(EDTPERIODO.TEXT);
                        DATAMODULE1.QRYCARTERATIPO_MORA.VALUE := '2';
                        DATAMODULE1.QRYCARTERAVALOR_MORA.VALUE := STRTOINT('0');
                        DATAMODULE1.QRYCARTERAVALOR_UPC.VALUE := STRTOINT(SGUPC.CELLS[7,I]);
                        DATAMODULE1.QRYCARTERACOD_TIPO_AFIL.VALUE := 'A';
                        DATAMODULE1.QRYCARTERATIP_DOCUMENTO_COT.VALUE := SGUPC.CELLS[0,I];
                        DATAMODULE1.QRYCARTERANUM_DOCUMENTO_COT.VALUE := SGUPC.CELLS[1,I];
                        frmcorreciones.REFRESH;
                        DATAMODULE1.QRYCARTERA.POST;

                END;
           END;

        // DESCARGA  CARTERA MOROSA DE AFILIADOS   COTIZANTES Y BENEFICIARIOS NO INCLUYE UPC ADICONAL

          FOR I := 1 TO SGDETALLE.ROWCOUNT -2 DO
          BEGIN
                DATAMODULE1.QRYCARTERA.CLOSE;
                DATAMODULE1.QRYCARTERA.SQL.CLEAR;
                DATAMODULE1.QRYCARTERA.SQL.ADD('DELETE  FROM CARTERA WHERE TIP_DOCUMENTO_COT = :"TIPO" AND NUM_DOCUMENTO_COT = :"NUMERO" AND PER_COMPENSACION = :"PERIODO"  AND TIPO_MORA = :"TIPO_MORA"');
                DATAMODULE1.QRYCARTERA.Parameters[0].VALUE := SGDETALLE.CELLS[0,I];
                DATAMODULE1.QRYCARTERA.Parameters[1].VALUE := SGDETALLE.CELLS[1,I];
                DATAMODULE1.QRYCARTERA.Parameters[2].VALUE := EDTPERIODO.TEXT;
                DATAMODULE1.QRYCARTERA.Parameters[3].VALUE := '1';
                DATAMODULE1.QRYCARTERA.EXECSQL;

          END;
         // DESCARGA  LOS  PAGOS  POR  UPC  ADICIONAL
         FOR I := 1 TO SGUPC.ROWCOUNT -2 DO
          BEGIN
            IF  SGUPC.CELLS[8,I] = 'C' THEN
             BEGIN
                DATAMODULE1.QRYCARTERA.CLOSE;
                DATAMODULE1.QRYCARTERA.SQL.CLEAR;
                DATAMODULE1.QRYCARTERA.SQL.ADD('DELETE  FROM CARTERA WHERE TIP_DOCUMENTO_COT = :"TIPO" AND NUM_DOCUMENTO_COT = :"NUMERO" AND PER_COMPENSACION = :"PERIODO"  AND TIPO_MORA = :"TIPOMORA"');
                DATAMODULE1.QRYCARTERA.Parameters[0].VALUE := SGUPC.CELLS[0,I];
                DATAMODULE1.QRYCARTERA.Parameters[1].VALUE := SGUPC.CELLS[1,I];
                DATAMODULE1.QRYCARTERA.Parameters[2].VALUE := EDTPERIODO.TEXT;
                DATAMODULE1.QRYCARTERA.Parameters[3].VALUE := '2';
                DATAMODULE1.QRYCARTERA.EXECSQL;
             END;
          END;
          // genrar  saldos  de las  incapacidades INCAPACIDADES

          FOR I := 1 TO SGINCAPACIDADES.ROWCOUNT -2 DO
          BEGIN
                if SGINCAPACIDADES.CELLS[0,I] > '0' then
                begin
                DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
                DATAMODULE1.QRYDETINCAPACIDAD.SQL.CLEAR;
                DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('SELECT * FROM DET_INCAPACIDAD WHERE NUM_INCAPACIDAD = :"INCAPACIDAD" AND   PER_PAGO_INCAP= :"PERIODO" AND VAL_PAGAR_INCAP = :"VALOR" AND EST_DET_PLANILLA IS NULL ORDER BY PER_PAGO_INCAP');
                DATAMODULE1.QRYDETINCAPACIDAD.Parameters[0].VALUE := SGINCAPACIDADES.CELLS[0,I];
                DATAMODULE1.QRYDETINCAPACIDAD.Parameters[1].VALUE := SGINCAPACIDADES.CELLS[1,I];
                DATAMODULE1.QRYDETINCAPACIDAD.Parameters[2].VALUE := StrToInt(SGINCAPACIDADES.CELLS[3,I]);
                DATAMODULE1.QRYDETINCAPACIDAD.OPEN;
                           IF DATAMODULE1.QRYDETINCAPACIDAD.RECORDCOUNT = 1 THEN
                           BEGIN
                           DATAMODULE1.QRYDETINCAPACIDAD.EDIT;
                           DATAMODULE1.QRYDETINCAPACIDADTIP_PAGO_INCAP.VALUE := 'A';
                           DATAMODULE1.QRYDETINCAPACIDADFEC_PAGO_INCAP.VALUE := (dtfechapago.date);
                           DATAMODULE1.QRYDETINCAPACIDADNUM_COMPROBANTE.VALUE := edtplanilla.text;
                           DATAMODULE1.QRYDETINCAPACIDADPER_PRESENTADO.VALUE := msperpresentacion.text;
                           DATAMODULE1.QRYDETINCAPACIDADEST_DET_PLANILLA.VALUE := 'DES';
                           DATAMODULE1.QRYDETINCAPACIDADVAL_DESCONTADO.VALUE := STRTOINT(SGINCAPACIDADES.CELLS[2,I]);
                           DATAMODULE1.QRYDETINCAPACIDAD.POST;
                           ENd
                end;
          END;
          // GENERAR SALDOS
          FOR I := 1 TO SGINCAPACIDADES.ROWCOUNT -2 DO
          BEGIN
                IF (STRTOFLOAT(SGINCAPACIDADES.CELLS[3,I]) - STRTOFLOAT(SGINCAPACIDADES.CELLS[2,I])) > 0 THEN
                BEGIN
                DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
                DATAMODULE1.QRYDETINCAPACIDAD.SQL.CLEAR;
                DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('SELECT * FROM DET_INCAPACIDAD WHERE NUM_INCAPACIDAD = :"INCAPACIDAD" AND   PER_PAGO_INCAP= :"PERIODO" AND VAL_PAGAR_INCAP = :"VALOR" AND EST_DET_PLANILLA IS NULL ORDER BY PER_PAGO_INCAP');
                DATAMODULE1.QRYDETINCAPACIDAD.Parameters[0].VALUE := SGINCAPACIDADES.CELLS[0,I];
                DATAMODULE1.QRYDETINCAPACIDAD.Parameters[1].VALUE := SGINCAPACIDADES.CELLS[1,I];
                DATAMODULE1.QRYDETINCAPACIDAD.Parameters[2].VALUE := StrToInt(SGINCAPACIDADES.CELLS[3,I]) - StrToInt(SGINCAPACIDADES.CELLS[2,I]);
                DATAMODULE1.QRYDETINCAPACIDAD.OPEN;
                           IF DATAMODULE1.QRYDETINCAPACIDAD.RECORDCOUNT = 0 THEN
                           BEGIN
                           DATAMODULE1.QRYDETINCAPACIDAD.EDIT;
                           DATAMODULE1.qrydetincapacidadNUM_INCAPACIDAD.VALUE := (SGINCAPACIDADES.CELLS[0,I]);
                           DATAMODULE1.qrydetincapacidadPER_PAGO_INCAP.VALUE := StrToDATE(SGINCAPACIDADES.CELLS[1,I]);
                           DATAMODULE1.qrydetincapacidadDIA_PAGAR_INCAP.VALUE := StrToInt(SGINCAPACIDADES.CELLS[4,I]);
                           DATAMODULE1.qrydetincapacidadVAL_PAGAR_INCAP.VALUE := StrToInt(SGINCAPACIDADES.CELLS[3,I])- StrToInt(SGINCAPACIDADES.CELLS[2,I]);
                           DATAMODULE1.qrydetincapacidadNUM_COMPROBANTE.VALUE := '0';
                           DATAMODULE1.QRYDETINCAPACIDAD.POST;
                           ENd

          END;
         END;
          IF CBTIPODECLARACION.ITEMINDEX = 0 THEN
          BEGIN
          FOR I := 1 TO SGDETALLE.ROWCOUNT -2 DO
          BEGIN

                DATAMODULE1.QRYAFILIADOSEMPRESA.CLOSE;
                DATAMODULE1.QRYAFILIADOSEMPRESA.SQL.CLEAR;
                DATAMODULE1.QRYAFILIADOSEMPRESA.SQL.ADD('SELECT * FROM AFILIADOS_EMPRESAS WHERE TIP_DOCUMENTO_EMP = :"NIT" AND NUM_DOCUMENTO_EMP =:"DOCUMENTO" AND TIP_DOCUMENTO_AFI = :"TIPO" AND NUM_DOCUMENTO_AFI =:"AFILIADO"');
                DATAMODULE1.QRYAFILIADOSEMPRESA.Parameters[0].VALUE := TRIM(CBTIPODOCEMPRESA.TEXT);
                DATAMODULE1.QRYAFILIADOSEMPRESA.Parameters[1].VALUE := TRIM(EDNUMERO.TEXT);
                DATAMODULE1.QRYAFILIADOSEMPRESA.Parameters[2].VALUE := TRIM(SGDETALLE.CELLS[0,I]);
                DATAMODULE1.QRYAFILIADOSEMPRESA.Parameters[3].VALUE := TRIM(SGDETALLE.CELLS[1,I]);
                DATAMODULE1.QRYAFILIADOSEMPRESA.OPEN;
                IF DATAMODULE1.QRYAFILIADOSEMPRESA.RECORDCOUNT = 1 THEN
                BEGIN
                DATAMODULE1.QRYAFILIADOSEMPRESA.EDIT;
                DATAMODULE1.QRYAFILIADOSEMPRESAVAL_SUELDO_AFIL.VALUE := STRTOINT(SGDETALLE.CELLS[13,I]);
                DATAMODULE1.QRYAFILIADOSEMPRESA.POST;
                END

             END;
           END;


   DATAMODULE1.DTBDATAMEC.CommitTrans;
   EXCEPT
   DATAMODULE1.DTBDATAMEC.RollbackTrans;
   PBRGRABARDETALLE.MIN := 0;
   PBRGRABARDETALLE.POSITION := 0;
   PBRGRABARDETALLE.MAX := SGDETALLE.ROWCOUNT -2;
   SHOWMESSAGE(LowerCase('NO SE PUEDE  GRABAR LA AUTOLIQUIDACION'));
   RAISE;
   END;
END;


PROCEDURE Tfrmcorreciones.EDTPERIODOEXIT(SENDER: TOBJECT);
VAR FECHACOMPENSA,FECHAPAGO,FECHACOMPENSA1 : TDATE;
BEGIN
TRY

IF EDTPERIODO.TEXT <> '__/____' THEN
FECHAPAGO := DTFECHAPAGO.DATE;
FECHACOMPENSA  := STRTODATE(GLDATE);
FECHACOMPENSA1  := STRTODATE('01/' + EDTPERIODO.TEXT);

IF FECHACOMPENSA1 > STRTODATE('01/01/1995') THEN
BEGIN

IF CBTIPODECLARACION.ITEMINDEX = 0 THEN
 BEGIN
   IF  STRTODATE('01/' + EDTPERIODO.TEXT) >= STRTODATE('01/' + MSPERPRESENTACION.TEXT) THEN
   BEGIN
    SHOWMESSAGE(LowerCase('EN LA ADICION EL PERIODO DE  COTIZACIONES  NO PUDE SER MAYOR AL DE  PRESENTACION'));
   END
    ELSE  IF  STRTODATE('01/' + EDTPERIODO.TEXT) < STRTODATE('01/' + MSPERPRESENTACION.TEXT) THEN
    BEGIN
    FRMPLANILLAS.PCENCABEZADO.ACTIVEPAGE := TABSHEET2;
    CBTIPODOCAFILIADO.SETFOCUS;
    END;
  END;

IF CBTIPODECLARACION.ITEMINDEX = 1 THEN
 BEGIN
   IF  STRTODATE('01/' + EDTPERIODO.TEXT) >= STRTODATE('01/' + MSPERPRESENTACION.TEXT) THEN
   BEGIN
    SHOWMESSAGE(LowerCase('EN LA ADICION EL PERIODO DE  COTIZACIONES  NO PUDE SER MAYOR AL DE  PRESENTACION'));
   END
    ELSE  IF  STRTODATE('01/' + EDTPERIODO.TEXT) < STRTODATE('01/' + MSPERPRESENTACION.TEXT) THEN
    BEGIN
    FRMPLANILLAS.PCENCABEZADO.ACTIVEPAGE := TABSHEET2;
    CBTIPODOCAFILIADO.SETFOCUS;
    END;
  END;

 END
 ELSE IF FECHACOMPENSA1 <= STRTODATE('01/01/1995') THEN
      BEGIN
      SHOWMESSAGE(LowerCase(' EL PERIODO NO  PUEDE  SER  MENOR A  01/1995'));
      EDTPERIODO.SETFOCUS;
    END;


  EXCEPT  // MENASJE  DE  LOS ERRORES
  //SHOWMESSAGE(LowerCase('ERROR AL CALCULAR LIQUIDACION');
   ON E: ECONVERTERROR DO
    BEGIN
     E.MESSAGE := 'EL PERIODO  ESTA MAL  DIGITADO O IMCOMPLETO';
       EDTPERIODO.SETFOCUS;
      RAISE;
    END;
   END;

END;

PROCEDURE Tfrmcorreciones.EDTVALEFECTIVOEXIT(SENDER: TOBJECT);
VAR I:INTEGER;
BEGIN

IF EDTVALEFECTIVO.Text ='' THEN
EDTVALEFECTIVO.Text :='0';

IF EDTVALCHEQUE.Text ='' THEN
EDTVALCHEQUE.Text :='0';

 IF  STRTOINT(EDTVALEFECTIVO.Text)<> 0 THEN
     CheqDev.Enabled:=True
 ELSE
     CheqDev.Enabled:=False;
IF EDTVALCHEQUE.TEXT <> '' THEN
 BEGIN
 //EDTTOTALCONSIGNADO.TEXT := FLOATTOSTR((STRTOINT(EDTVALCHEQUE.TEXT)) + (STRTOINT(EDTVALEFECTIVO.TEXT)));
 BTGRABARPLANILLA.ENABLED := TRUE;
 sgdetabanco.Enabled := TRUE;


END;
IF (EDTVALCHEQUE.TEXT = '') OR (EDTVALCHEQUE.TEXT = '0') THEN
   BEGIN
   FOR I := 1 TO sgdetabanco.ROWCOUNT DO
     BEGIN
                   sgdetabanco.CELLS[0,I]:='';
                   sgdetabanco.CELLS[1,I]:='';
                   sgdetabanco.CELLS[2,I]:='';

     END;
    END;
END;

PROCEDURE Tfrmcorreciones.EDTPLANILLAENTER(SENDER: TOBJECT);
BEGIN
  IF EDTPLANILLA.TEXT = '0' THEN
  BEGIN
  LIMPIAR_PLANILLA;
  END;
END;

PROCEDURE Tfrmcorreciones.EDTNUMERODUCAFILIADOEXIT(SENDER: TOBJECT);
VAR I,Y,J,DIA,ULTIMODIA : INTEGER;
BEGIN
SALARIOMINIMO;
MODIFICADO := FALSE;
NRS := FALSE;
EMP := FALSE;
    IF (CBTIPODOCAFILIADO.ITEMINDEX > -1) AND (EDTNUMERODUCAFILIADO.TEXT > '0') THEN
    BEGIN
    // VERIFICAR  EL DOCUMENTO EN LA LISTA
                FOR I := 1 TO SGDETALLE.ROWCOUNT -2 DO
                BEGIN
                       IF  ((TRIM(SGDETALLE.CELLS[0,I]) = TRIM(CBTIPODOCAFILIADO.TEXT)) AND  (TRIM(SGDETALLE.CELLS[1,I]) = TRIM(EDTNUMERODUCAFILIADO.TEXT))) THEN
                       BEGIN
                                IF MESSAGEDLG (' EL AFILIADO  YA  ESTA  EN LA  LISTA  DESEA EDIRTARLO ?', MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
                                BEGIN
                                //MODIFICAR_AFILIADO;
                                MODIFICADO := FALSE;
                                IF SGDETALLE.CELLS[23,I ] <> 'COM' THEN
                                BEGIN
                                MODIFICADO := TRUE;
                                IF SGDETALLE.CELLS[0,I ] = 'CC' THEN
                                BEGIN
                                CBTIPODOCAFILIADO.ITEMINDEX := 0;
                                CBTIPODOCAFILIADO.ENABLED := FALSE;
                                END
                                ELSE IF TRIM(SGDETALLE.CELLS[0,I ]) = 'CE' THEN
                                BEGIN
                                CBTIPODOCAFILIADO.ITEMINDEX := 1;
                                CBTIPODOCAFILIADO.ENABLED := FALSE;
                                END
                                ELSE IF TRIM(SGDETALLE.CELLS[0,I ]) = 'TI' THEN
                                BEGIN
                                CBTIPODOCAFILIADO.ITEMINDEX := 2;
                                CBTIPODOCAFILIADO.ENABLED := FALSE;
                                END;
                                EDTNUMERODUCAFILIADO.TEXT := SGDETALLE.CELLS[1,I ];
                                EDTNUMERODUCAFILIADO.ENABLED := FALSE;
       IF SGDETALLE.CELLS[2,I ] = 'X' THEN
       BEGIN
       CKING.CHECKED := TRUE;
       END;
       IF SGDETALLE.CELLS[3,I ] = 'X' THEN
       BEGIN
       CKRET.CHECKED := TRUE;
       END;
       IF SGDETALLE.CELLS[4,I ] = 'X' THEN
       BEGIN
       CKTDA.CHECKED := TRUE;
       END;
       IF SGDETALLE.CELLS[5,I ] = 'X' THEN
       BEGIN
       CKTAA.CHECKED := TRUE;
       END;
       IF SGDETALLE.CELLS[6,I ] = 'X' THEN
       BEGIN
       CKVSP.CHECKED := TRUE;
       END;
       IF SGDETALLE.CELLS[7,I ] = 'X' THEN
       BEGIN
       CKVST.CHECKED := TRUE;
       END;
       IF SGDETALLE.CELLS[8,I ] = 'X' THEN
       BEGIN
       CKSLN.CHECKED := TRUE;
       END;
       IF SGDETALLE.CELLS[9,I ] = 'X' THEN
       BEGIN
       CKIGE.CHECKED := TRUE;
       END;
       IF SGDETALLE.CELLS[10,I ] = 'X' THEN
       BEGIN
       CKLMA.CHECKED := TRUE;
       END;
       IF SGDETALLE.CELLS[11,I ] = 'X' THEN
       BEGIN
       CKVAC.CHECKED := TRUE;
       END;
       EDDIAS.TEXT :=  SGDETALLE.CELLS[12,I ];
       EDTSALARIOBASE.TEXT := SGDETALLE.CELLS[13,I ];
      // EDTSALARIOBASE.ENABLED := FALSE;
       EDTVALORNETO.TEXT := SGDETALLE.CELLS[14,I ];
       EDTIGRESOBASECOTIZACION.TEXT := SGDETALLE.CELLS[15,I ];
       EDTCOTIZACIONOBLIGATORIO.TEXT := SGDETALLE.CELLS[16,I ];
       EDTVALUPC.TEXT := SGDETALLE.CELLS[21,SGDETALLE.ROW ];
       EDTTOTALPAGADOAFILIADO.TEXT := SGDETALLE.CELLS[22,I ];
       IF SGDETALLE.CELLS[23,I ] = 'NRS' THEN
         BEGIN
         NRS := TRUE;
         END;
       IF SGDETALLE.CELLS[23,I ] = 'NRE' THEN
          BEGIN
          NRE := TRUE;
          END;
       IF SGDETALLE.CELLS[23,I ] = 'IGE' THEN
         BEGIN
         IGE := TRUE;
         END;
       IF SGDETALLE.CELLS[23,I ] = 'LIC' THEN
          BEGIN
          LIC := TRUE;
          END;
       IF SGDETALLE.CELLS[23,I ] = 'IBC' THEN
          BEGIN
          IBC := TRUE;
          END;
       IF SGDETALLE.CELLS[23,I ] = 'EMP' THEN
          BEGIN
          EMP := TRUE;
          END;
    FOR Y:= I +1 TO SGDETALLE.ROWCOUNT -1 DO
       BEGIN
          FOR J := 0 TO 24 DO
          SGDETALLE.CELLS[J,Y -1] := SGDETALLE.CELLS[J,Y];
       END;


          SGDETALLE.ROWCOUNT := SGDETALLE.ROWCOUNT -1 ;
          CALCULAR;
         
 END
 ELSE SHOWMESSAGE(' ESTE  AFILIADO  ESTA  INCLUIDO EN LA  COMPENSACION Y NO SE PUEDE  MODIFICAR');

                                END ELSE
                                LIMPIAR;
                                END;
                END;
 // BUSCAR  EL AFILIADO ACTIVO
 {IF EDTNUMERODUCAFILIADO.TEXT > '0' THEN
 BEGIN
 //*****************
              QRYAFILIADOSNR.Close;
              QRYAFILIADOSNR.Parameters[0].Value :=TRIM(CBTIPODOCAFILIADO.TEXT);
              QRYAFILIADOSNR.Parameters[1].Value :=TRIM(EDTNUMERODUCAFILIADO.TEXT);
              QRYAFILIADOSNR.Open;
              IF QRYAFILIADOSNR.RecordCount > 0 THEN
              BEGIN
 //*****************}

              IF EDTNUMERODUCAFILIADO.TEXT > '0' THEN
                BEGIN
                DATAMODULE1.QRYDETALLE.CLOSE;
                DATAMODULE1.QRYDETALLE.SQL.CLEAR;
                DATAMODULE1.QRYDETALLE.SQL.ADD('SELECT * FROM DET_PLANILLA_AUTOLIQUIDACION WHERE AFI_TIPO_DOC = :"CC" AND AFI_NUMERO_DOC = :"DOCUMENTO" AND NUM_PLANILLA = :"NUMEROPLANILLA"');
                DATAMODULE1.QRYDETALLE.Parameters[0].VALUE := CBTIPODOCAFILIADO.TEXT;
                DATAMODULE1.QRYDETALLE.Parameters[1].VALUE := EDTNUMERODUCAFILIADO.TEXT;
                DATAMODULE1.QRYDETALLE.Parameters[2].VALUE := EDTNPLACORRECION.TEXT;
                DATAMODULE1.QRYDETALLE.OPEN;
                      IF DATAMODULE1.QRYDETALLE.RECORDCOUNT = 1 THEN
                      BEGIN
                      EDTSALARIOBASE.TEXT :=  FLOATTOSTR(DATAMODULE1.QRYDETALLESAL_BASE.VALUE);
                      EDDIAS.TEXT :=  DATAMODULE1.QRYDETALLEDIA_COTIZADOS.VALUE;
                      DATAMODULE1.QRYAFILIADOS.CLOSE;
                      DATAMODULE1.QRYAFILIADOS.SQL.CLEAR;
                      DATAMODULE1.QRYAFILIADOS.SQL.ADD('SELECT  TIP_DOCUMENTO_EMP, NUM_DOCUMENTO_EMP,TIP_DOCUMENTO_AFI, NUM_DOCUMENTO_AFI,PRI_APELLIDO,SEG_APELLIDO,PRI_NOMBRE,SEG_NOMBRE, VAL_SUELDO_AFIL,FEC_INGRESO_UNI,FEC_EGRESO_UNI,AFILIADOS_EMPRESAS.COD_ESTADO,FEC_NACIMIENTO,COD_SEXO,T1.COD_MODALIDAD_TRA');
                      DATAMODULE1.QRYAFILIADOS.SQL.ADD('FROM AFILIADOS_EMPRESAS,AFILIADOS T1');
                      DATAMODULE1.QRYAFILIADOS.SQL.ADD('WHERE TIP_DOCUMENTO_AFI = TIP_DOCUMENTO AND NUM_DOCUMENTO_AFI = NUM_DOCUMENTO AND TIP_DOCUMENTO_AFI = :"CC" AND NUM_DOCUMENTO_AFI = :"NUMERO" AND  ((FEC_INGRESO_UNI <= :"FECHAI") OR (FEC_INGRESO_UNI <= :"FECHAIN")) AND ');
                      DATAMODULE1.QRYAFILIADOS.SQL.ADD('(((FEC_EGRESO_UNI >= :"FECHAF") OR (FEC_EGRESO_UNI >= :"FECHAFI")) OR FEC_EGRESO_UNI IS NULL)');
                      DATAMODULE1.QRYAFILIADOS.Parameters[0].VALUE := TRIM(CBTIPODOCAFILIADO.TEXT);
                      DATAMODULE1.QRYAFILIADOS.Parameters[1].VALUE := TRIM(EDTNUMERODUCAFILIADO.TEXT);
                      DATAMODULE1.QRYAFILIADOS.Parameters[2].VALUE := STRTODATE('01/' + EDTPERIODO.TEXT);
                      DATAMODULE1.QRYAFILIADOS.Parameters[3].VALUE := STRTODATE(INTTOSTR(FRMPRINCIPAL.DIASMES(STRTODATE('01/' + EDTPERIODO.TEXT)))+ '/' + EDTPERIODO.TEXT);
                      DATAMODULE1.QRYAFILIADOS.Parameters[4].VALUE := STRTODATE('01/' + EDTPERIODO.TEXT);
                      DATAMODULE1.QRYAFILIADOS.Parameters[5].VALUE := STRTODATE(INTTOSTR(FRMPRINCIPAL.DIASMES(STRTODATE('01/' + EDTPERIODO.TEXT))) + '/'+ EDTPERIODO.TEXT);
                      DATAMODULE1.QRYAFILIADOS.OPEN;

                   // AFILIADO ACTIVO

                        IF DATAMODULE1.QRYAFILIADOS.RECORDCOUNT > 0 THEN
                        BEGIN
                          EDTNOMBREAFILIADO.TEXT := DATAMODULE1.QRYAFILIADOSPRI_APELLIDO.VALUE + ' ' + DATAMODULE1.QRYAFILIADOSSEG_APELLIDO.VALUE + ' ' + DATAMODULE1.QRYAFILIADOSPRI_NOMBRE.VALUE + ' ' + DATAMODULE1.QRYAFILIADOSSEG_NOMBRE.VALUE;
                          EDTCOTIZACIONOBLIGATORIO.SETFOCUS;
                          IF DATAMODULE1.QRYAFILIADOSCOD_MODALIDAD_TRA.VALUE = 'D' THEN
                          BEGIN
                          CBTIPOCOTIZANTE.ITEMINDEX := 0;
                          END
                          ELSE  IF DATAMODULE1.QRYAFILIADOSCOD_MODALIDAD_TRA.VALUE = 'I' THEN
                                BEGIN
                                CBTIPOCOTIZANTE.ITEMINDEX := 1;
                                END
                                ELSE    IF DATAMODULE1.QRYAFILIADOSCOD_MODALIDAD_TRA.VALUE = 'P' THEN
                                        BEGIN
                                        CBTIPOCOTIZANTE.ITEMINDEX := 2;
                                     END  ELSE  IF DATAMODULE1.QRYAFILIADOSCOD_MODALIDAD_TRA.VALUE = 'E' THEN
                                                BEGIN
                                                CBTIPOCOTIZANTE.ITEMINDEX := 3;
                                                END;

                             IF DATAMODULE1.QRYAFILIADOSCOD_SEXO.VALUE = 'M' THEN
                             BEGIN
                             END;

                       END
                       ELSE
                       begin
                       SHOWMESSAGE('ESTE  USUARIO ES  NRS ');
                       EDTNUMERODUCAFILIADO.SETFOCUS;
                       end;
                      END
                      ELSE
                          IF DATAMODULE1.QRYDETALLE.RECORDCOUNT = 0 THEN
                          BEGIN
                          SHOWMESSAGE('AFILIADO  NO ESTA INCLUIDO EN LA PLANILLA ' + EDTNPLACORRECION.TEXT + 'QUE SE  ESTA  CORRIGIENDO ');
                          EDTNUMERODUCAFILIADO.TEXT := '';
                          EDTNOMBREAFILIADO.Text := '';
                          EDTNUMERODUCAFILIADO.SETFOCUS;

                          END;

                END
                ELSE IF EDTNUMERODUCAFILIADO.TEXT = '0' THEN
                        BEGIN
                        SHOWMESSAGE('DIGITE  EL NUMERO DE  DOCUMENTO DEL AFILIADO O CON DOBLE CLIK LISTA  LOS  EMPLEADOS  DE LA  EMPRESA');
                        EDTNUMERODUCAFILIADO.SETFOCUS;
                        END;
               END;

 END;

PROCEDURE Tfrmcorreciones.VERIFICAR_COMPENSACION;
VAR  PLANILLA : STRING;
BEGIN
IF EDTNUMERODUCAFILIADO.TEXT > '0' THEN
    BEGIN
    DATAMODULE1.QRYDETALLE.CLOSE;
    DATAMODULE1.QRYDETALLE.SQL.CLEAR;
    DATAMODULE1.QRYDETALLE.SQL.ADD('SELECT * FROM DBO.DET_PLANILLA_AUTOLIQUIDACION WHERE AFI_TIPO_DOC = :"CC" AND AFI_NUMERO_DOC = :"DOCUMENTO" AND  PER_COTIZACION = :"PERIODO"');
    DATAMODULE1.QRYDETALLE.Parameters[0].VALUE := CBTIPODOCAFILIADO.TEXT;
    DATAMODULE1.QRYDETALLE.Parameters[1].VALUE := EDTNUMERODUCAFILIADO.TEXT;
    DATAMODULE1.QRYDETALLE.Parameters[2].VALUE := EDTPERIODO.TEXT;
    DATAMODULE1.QRYDETALLE.OPEN;
        IF DATAMODULE1.QRYDETALLE.RECORDCOUNT = 1 THEN
        BEGIN
        DATAMODULE1.QRYAUTOLIQUIDACION.CLOSE;
        DATAMODULE1.QRYAUTOLIQUIDACION.SQL.CLEAR;
        DATAMODULE1.QRYAUTOLIQUIDACION.SQL.ADD('SELECT * FROM AUTOLIQUIDACION  WHERE  NUM_PLANILLA = :"PLANILLA"');
        DATAMODULE1.QRYAUTOLIQUIDACION.Parameters[0].VALUE := DATAMODULE1.QRYDETALLENUM_PLANILLA.VALUE;
        DATAMODULE1.QRYAUTOLIQUIDACION.OPEN;
                IF DATAMODULE1.QRYAUTOLIQUIDACION.RECORDCOUNT = 1 THEN
                BEGIN
                 IF  (DATAMODULE1.QRYAUTOLIQUIDACIONEMP_TIPO_DOC.VALUE  = CBTIPODOCEMPRESA.TEXT) AND (DATAMODULE1.QRYAUTOLIQUIDACIONEMP_NUMERO_DOC.VALUE  = EDNUMERO.TEXT) THEN
                    BEGIN
                      SHOWMESSAGE(LowerCase('AFILIADO YA  TIENE PAGOS  POR ESTA  EMPRESA  CON  LA  PLANILLA  :  ' + DATAMODULE1.QRYDETALLENUM_PLANILLA.VALUE));
                      LIMPIAR;
                      CBTIPODOCAFILIADO.SETFOCUS;
                    END;
                 END;
        END;
    END;
END;

PROCEDURE Tfrmcorreciones.EDTSALARIOBASEEXIT(SENDER: TOBJECT);
VAR VALOR : REAL;
BEGIN
    IF DATAMODULE1.QRYAFILIADOSCOD_MODALIDAD_TRA.VALUE = 'D' THEN
    BEGIN
          IF (GLSALARIOMINIMO <= STRTOINT(EDTSALARIOBASE.TEXT)) THEN
          BEGIN
          EDTIGRESOBASECOTIZACION.TEXT := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTSALARIOBASE.TEXT)/30)* STRTOINT(TRIM(EDDIAS.TEXT))),2));
          END
          ELSE IF (GLSALARIOMINIMO >= STRTOINT(EDTSALARIOBASE.TEXT)) THEN
                BEGIN
                IF MESSAGEDLG(LowerCase('!EL SALARIO BASE  NO DEBE SER  MENOR AL SALARIO MINIMO � DESEA  INGRESARLO ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
                BEGIN

                EDTIGRESOBASECOTIZACION.TEXT := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTSALARIOBASE.TEXT)/30)* STRTOINT(TRIM(EDDIAS.TEXT))),2));


                END ELSE EDTSALARIOBASE.SETFOCUS;

           END;
     END
     ELSE IF DATAMODULE1.QRYAFILIADOSCOD_MODALIDAD_TRA.VALUE = 'P' THEN
          BEGIN
          IF (GLSALARIOMINIMO <= STRTOINT(EDTSALARIOBASE.TEXT)) THEN
          BEGIN
          EDTIGRESOBASECOTIZACION.TEXT := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTSALARIOBASE.TEXT)/30)* STRTOINT(TRIM(EDDIAS.TEXT))),2));
          END
          ELSE IF (GLSALARIOMINIMO >= STRTOINT(EDTSALARIOBASE.TEXT)) THEN
                BEGIN
                IF MESSAGEDLG(LowerCase('!EL SALARIO BASE  NO DEBE SER  MENOR AL SALARIO MINIMO � DESEA  INGRESARLO ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
                BEGIN
                EDTIGRESOBASECOTIZACION.TEXT := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTSALARIOBASE.TEXT)/30)* STRTOINT(TRIM(EDDIAS.TEXT))),2));
                END ELSE EDTSALARIOBASE.SETFOCUS;

           END;
     END
     ELSE IF DATAMODULE1.QRYAFILIADOSCOD_MODALIDAD_TRA.VALUE = 'I' THEN
          BEGIN
          IF (GLSALARIOMINIMO <= STRTOINT(EDTSALARIOBASE.TEXT)) THEN
          BEGIN
          EDTIGRESOBASECOTIZACION.TEXT := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTSALARIOBASE.TEXT)/30)* STRTOINT(TRIM(EDDIAS.TEXT))),2));
          END
          ELSE IF ((GLSALARIOMINIMO * 2) >= STRTOINT(EDTSALARIOBASE.TEXT)) THEN
                BEGIN
                IF MESSAGEDLG(LowerCase('!LOS  IDEPENDIENTES  COTIZAN SOBRE DOS  SALARIOS MINIMOS � DESEA  INGRESARLO ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
                EDTIGRESOBASECOTIZACION.TEXT := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTSALARIOBASE.TEXT)/30)* STRTOINT(TRIM(EDDIAS.TEXT))),2));
                END ELSE EDTSALARIOBASE.SETFOCUS;


     END
    ELSE  IF DATAMODULE1.QRYAFILIADOSCOD_MODALIDAD_TRA.VALUE = 'E' THEN
          BEGIN
            IF ((GLSALARIOMINIMO/0.50) <= STRTOINT(EDTSALARIOBASE.TEXT))THEN
            BEGIN
            EDTIGRESOBASECOTIZACION.TEXT := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTSALARIOBASE.TEXT)/30)* STRTOINT(TRIM(EDDIAS.TEXT))),2));
            END
             ELSE IF ((GLSALARIOMINIMO/0.50) >= STRTOINT(EDTSALARIOBASE.TEXT))THEN
                  BEGIN
                     IF MESSAGEDLG(LowerCase('!EL SALARIO BASE  NO PUDE  SER MENOR A LA MITAD DEL MINIMO VIGENTES � DESEA  INGRESARLO ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
                     BEGIN
                        EDTIGRESOBASECOTIZACION.TEXT := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTSALARIOBASE.TEXT)/30)* STRTOINT(TRIM(EDDIAS.TEXT))),2));
                      END;
                  END ELSE EDTSALARIOBASE.SETFOCUS;

    END
 ELSE    IF ((GLSALARIOMINIMO) <= STRTOINT(EDTSALARIOBASE.TEXT))THEN
            BEGIN
           EDTIGRESOBASECOTIZACION.TEXT := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTSALARIOBASE.TEXT)/30)* STRTOINT(TRIM(EDDIAS.TEXT))),2));
           END
           ELSE IF ((GLSALARIOMINIMO) >= STRTOINT(EDTSALARIOBASE.TEXT))THEN
                BEGIN
                IF MESSAGEDLG(LowerCase('!EL SALARIO BASE  NO PUDE  SER MENOR A LA MITAD DEL MINIMO VIGENTES � DESEA  INGRESARLO ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
                BEGIN
                 EDTIGRESOBASECOTIZACION.TEXT := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTSALARIOBASE.TEXT)/30)* STRTOINT(TRIM(EDDIAS.TEXT))),2));
                END ELSE EDTSALARIOBASE.SETFOCUS;
     END;

 END;


PROCEDURE Tfrmcorreciones.EDTNUMERODUCAFILIADOKEYPRESS(SENDER: TOBJECT;
  VAR KEY: CHAR);
BEGIN
 IF NOT (KEY IN ['0'..'9',#8])THEN
 BEGIN
 KEY := #0;
 SHOWMESSAGE(LowerCase('DIGITE SOLO NUMEROS'));
 END;
 END;

PROCEDURE Tfrmcorreciones.EDTPLANILLAKEYPRESS(SENDER: TOBJECT;
  VAR KEY: CHAR);
BEGIN
IF NOT (KEY IN ['0'..'9',#8])THEN
  BEGIN
  KEY := #0;
  SHOWMESSAGE(LowerCase('DIGITE SOLO NUMEROS'));
  END;
END;

PROCEDURE Tfrmcorreciones.EDNUMEROKEYPRESS(SENDER: TOBJECT; VAR KEY: CHAR);
BEGIN
 IF NOT (KEY IN ['0'..'9',#8])THEN
 BEGIN
 KEY := #0;
 SHOWMESSAGE(LowerCase('DIGITE SOLO NUMEROS'));
 END;
END;

PROCEDURE Tfrmcorreciones.EDNUMEROEXIT(SENDER: TOBJECT);
VAR NUMERO,MES,ANO : STRING;
    CANTIDAD : INTEGER;
   BEGIN
  IF (EDNUMERO.Text = '') or (EDNUMERO.Text = '0') then
  begin
  SHOWMESSAGE(LowerCase('Digite o Seleccione  la  empresa'));
   Button3.SetFocus;
   exit;
   end;

 IF (EDNUMERO.TEXT <> '')  AND  (CBTIPODOCEMPRESA.TEXT <> '')THEN
 BEGIN
    IF EDNUMERO.TEXT <> '0' THEN
    BEGIN
    ESTADO_PLANILLA := '';
    DATAMODULE1.QRYEMPRESAS.DISABLECONTROLS;
    DATAMODULE1.QRYEMPRESAS.CLOSE;
    DATAMODULE1.QRYEMPRESAS.Parameters[0].VALUE := TRIM(CBTIPODOCEMPRESA.TEXT);
    DATAMODULE1.QRYEMPRESAS.Parameters[1].VALUE := TRIM(EDNUMERO.TEXT);
    DATAMODULE1.QRYEMPRESAS.OPEN;
    DATAMODULE1.QRYEMPRESAS.ENABLECONTROLS;
        IF DATAMODULE1.QRYEMPRESAS.RECORDCOUNT > 0 THEN
        BEGIN
         EDTNOMBREEMPRESA.TEXT := DATAMODULE1.QRYEMPRESASNOM_EMPRESA.VALUE;
         Edit21.TEXT := DATAMODULE1.QRYEMPRESASNOM_EMPRESA.VALUE;
         Edit23.TEXT := DATAMODULE1.qryempresasDIR_EMPRESA.VALUE;
           DATAMODULE1.qrydepartamentos.CLOSE;
           DATAMODULE1.qrydepartamentos.OPEN;
           DBLookupComboBox1.KeyValue :=  DATAMODULE1.qryempresasCOD_DEPARTAMENTO.VALUE;

           DATAMODULE1.qryciudades.CLOSE;
           DATAMODULE1.qryciudades.SQL.CLEAR;
           DATAMODULE1.qryciudades.SQL.ADD('SELECT * FROM CIUDADES WHERE COD_DEPARTAMENTO = :"DEPAR"');
           DATAMODULE1.qryciudades.Parameters[0].VALUE := DATAMODULE1.qrydepartamentosCOD_DEPARTAMENTO.VALUE;
           DATAMODULE1.qryciudades.OPEN;
           DBLookupComboBox2.KeyValue :=  DATAMODULE1.qryempresasCOD_CIUDAD.VALUE;



     {
        DATAMODULE1.QRYMAXPAGO.CLOSE;
        DATAMODULE1.QRYMAXPAGO.REQUESTLIVE := false;
        DATAMODULE1.QRYMAXPAGO.REQUESTLIVE := FALSE;
        DATAMODULE1.QRYMAXPAGO.Parameters[0].VALUE := TRIM(CBTIPODOCEMPRESA.TEXT);
        DATAMODULE1.QRYMAXPAGO.Parameters[1].VALUE := TRIM(EDNUMERO.TEXT);
        DATAMODULE1.QRYMAXPAGO.OPEN;
        IF DATAMODULE1.QRYMAXPAGO.RECORDCOUNT > 0 THEN
        BEGIN
        if DATAMODULE1.qrymaxpagoMAXPER_COTIZACION.Value <> '' then
        begin
          SHOWMESSAGE(LowerCase('ULTIMA  COTIZACION  DE  '+ EDTNOMBREEMPRESA.TEXT + ' FUE  EN EL PERIODO ' + DATAMODULE1.qrymaxpagoMAXPER_COTIZACION.Value ));
          end
        else
        SHOWMESSAGE(LowerCase('Este Aportante no a Realizado nigun Pago Anteriormente'))

        END;}
           IF DATAMODULE1.QRYEMPRESASTIP_APORTANTE.VALUE = 'G' THEN
           BEGIN
          CBTIPOAPORTANTE.ITEMINDEX := 0;
          END
          ELSE //****Temporal*****revizar
             IF (DATAMODULE1.QRYEMPRESASTIP_APORTANTE.VALUE = 'P') OR (DATAMODULE1.QRYEMPRESASTIP_APORTANTE.VALUE = '2') OR (DATAMODULE1.QRYEMPRESASTIP_APORTANTE.VALUE = '1') THEN
             BEGIN
             CBTIPOAPORTANTE.ITEMINDEX := 1;
             END;

        EDTDIGITO.TEXT := COPY(TRIM(EDNUMERO.TEXT),LENGTH(EDNUMERO.TEXT),1);
       // SHOWMESSAGE(LowerCase('NIT EMPRESA '+ EDNUMERO.TEXT + ' ULTIMO NUMERO  :' +  EDTDIGITO.TEXT);
        FECHAS_PAGO;
        END
        ELSE IF DATAMODULE1.QRYEMPRESAS.RECORDCOUNT = 0 THEN
             BEGIN
             IF MESSAGEDLG(LowerCase('!LA  EMPRESA  NO ESTA  REGISTRADA� DESEA  INGRESAR LA  PLANILLA ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
               BEGIN
             NRE := TRUE;
             CBTIPOAPORTANTE.ITEMINDEX := 1;

             END
             ELSE
               Button3.SETFOCUS;
             END;
    END;
 END;
END;

PROCEDURE Tfrmcorreciones.FECHAS_PAGO;
VAR  DIAPAGO,MES,ANO : STRING;
DAYS: ARRAY[1..7] OF STRING;
ADATE: TDATETIME;
BEGIN
   DATAMODULE1.QRYTIPOS.DISABLECONTROLS;
    DATAMODULE1.QRYTIPOS.CLOSE;
    IF  CBTIPOAPORTANTE.ITEMINDEX = 0 THEN
    BEGIN
    DATAMODULE1.QRYTIPOS.Parameters[0].VALUE := 'G';
    DATAMODULE1.QRYTIPOS.Parameters[1].VALUE := TRIM(EDTDIGITO.TEXT);
    END;
    IF  CBTIPOAPORTANTE.ITEMINDEX = 1 THEN
    BEGIN
        DATAMODULE1.QRYTIPOS.Parameters[0].VALUE := 'P';
        DATAMODULE1.QRYTIPOS.Parameters[1].VALUE := TRIM(EDTDIGITO.TEXT);
    END;

    DATAMODULE1.QRYTIPOS.OPEN;
    IF DATAMODULE1.QRYTIPOS.RECORDCOUNT > 0 THEN
    BEGIN
        DIAPAGO := TRIM(DATAMODULE1.QRYTIPOSDIA_HABIL.TEXT);
        MES:=(FORMATDATETIME('MM',DTFECHAPAGO.DATE));
        ANO:=(FORMATDATETIME('YYYY',DTFECHAPAGO.DATE));
        DAYS[1] := 'DOMINGO';
        DAYS[2] := 'LUNES';
        DAYS[3] := 'MARTES';
        DAYS[4] := 'MIERCOLES';
        DAYS[5] := 'JUEVES';
        DAYS[6] := 'VIERNES';
        DAYS[7] := 'SABADO';
        ADATE := STRTODATE('01/'+ MES + '/' + ANO);
        // CUANDO  SON DOS  DIAS HABILES
        IF DIAPAGO = '4' THEN
        BEGIN
           IF DAYS[DAYOFWEEK(ADATE )] = 'LUNES' THEN
           BEGIN
           EDTULTIMAFECHAPAGO.TEXT := ('04/'+ MES + '/' + ANO);
           END
           ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'MARTES' THEN
                BEGIN
                EDTULTIMAFECHAPAGO.TEXT := ('04/'+ MES + '/' + ANO);
                END
                ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'MIERCOLES' THEN
                        BEGIN
                        EDTULTIMAFECHAPAGO.TEXT := ('06/'+ MES + '/' + ANO);
                        END
                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'JUEVES' THEN
                        BEGIN
                        EDTULTIMAFECHAPAGO.TEXT := ('06/'+ MES + '/' + ANO);
                        END
                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'VIERNES' THEN
                                BEGIN
                                EDTULTIMAFECHAPAGO.TEXT := ('06/'+ MES + '/' + ANO);
                                END
                                ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'SABADO' THEN
                                        BEGIN
                                        EDTULTIMAFECHAPAGO.TEXT := ('06/'+ MES + '/' + ANO);
                                        END
                                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'DOMINGO' THEN
                                                BEGIN
                                                EDTULTIMAFECHAPAGO.TEXT := ('05/'+ MES + '/' + ANO);
                                                END;
        //SHOWMESSAGE(LowerCase(' IS A ' + DAYS[DAYOFWEEK(ADATE)]);
        //EDTULTIMAFECHAPAGO.TEXT := (EDTULTIMAFECHAPAGO.TEXT+ '/'+ MES + '/' + ANO);
        END;
        // CUANDO  SON  CINCO DIAS  HABILES
        IF DIAPAGO = '5' THEN
        BEGIN
           IF DAYS[DAYOFWEEK(ADATE )] = 'LUNES' THEN
           BEGIN
           EDTULTIMAFECHAPAGO.TEXT := ('05/'+ MES + '/' + ANO);
           END
           ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'MARTES' THEN
                BEGIN
                EDTULTIMAFECHAPAGO.TEXT := ('07/'+ MES + '/' + ANO);
                END
                ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'MIERCOLES' THEN
                        BEGIN
                        EDTULTIMAFECHAPAGO.TEXT := ('07/'+ MES + '/' + ANO);
                        END
                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'JUEVES' THEN
                        BEGIN
                        EDTULTIMAFECHAPAGO.TEXT := ('07/'+ MES + '/' + ANO);
                        END
                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'VIERNES' THEN
                                BEGIN
                                EDTULTIMAFECHAPAGO.TEXT := ('07/'+ MES + '/' + ANO);
                                END
                                ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'SABADO' THEN
                                        BEGIN
                                        EDTULTIMAFECHAPAGO.TEXT := ('07/'+ MES + '/' + ANO);
                                        END
                                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'DOMINGO' THEN
                                                BEGIN
                                                EDTULTIMAFECHAPAGO.TEXT := ('06/'+ MES + '/' + ANO);
                                                END;
        END;
        // CUANDO  SON SEIS DIAS HABILES
        IF DIAPAGO = '6' THEN
        BEGIN
           IF DAYS[DAYOFWEEK(ADATE )] = 'LUNES' THEN
           BEGIN
           EDTULTIMAFECHAPAGO.TEXT := ('08/'+ MES + '/' + ANO);
           END
           ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'MARTES' THEN
                BEGIN
                EDTULTIMAFECHAPAGO.TEXT := ('08/'+ MES + '/' + ANO);
                END
                ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'MIERCOLES' THEN
                        BEGIN
                        EDTULTIMAFECHAPAGO.TEXT := ('08/'+ MES + '/' + ANO);
                        END
                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'JUEVES' THEN
                        BEGIN
                        EDTULTIMAFECHAPAGO.TEXT := ('08/'+ MES + '/' + ANO);
                        END
                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'VIERNES' THEN
                                BEGIN
                                EDTULTIMAFECHAPAGO.TEXT := ('08/'+ MES + '/' + ANO);
                                END
                                ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'SABADO' THEN
                                        BEGIN
                                        EDTULTIMAFECHAPAGO.TEXT := ('10/'+ MES + '/' + ANO);
                                        END
                                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'DOMINGO' THEN
                                                BEGIN
                                                EDTULTIMAFECHAPAGO.TEXT := ('09/'+ MES + '/' + ANO);
                                                END;
        END;

        // SEPTIMO DIA  DE  PAGO
        IF DIAPAGO = '7' THEN
        BEGIN
           IF DAYS[DAYOFWEEK(ADATE )] = 'LUNES' THEN
           BEGIN
           EDTULTIMAFECHAPAGO.TEXT := ('09/'+ MES + '/' + ANO);
           END
           ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'MARTES' THEN
                BEGIN
                EDTULTIMAFECHAPAGO.TEXT := ('09/'+ MES + '/' + ANO);
                END
                ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'MIERCOLES' THEN
                        BEGIN
                        EDTULTIMAFECHAPAGO.TEXT := ('09/'+ MES + '/' + ANO);
                        END
                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'JUEVES' THEN
                        BEGIN
                        EDTULTIMAFECHAPAGO.TEXT := ('09/'+ MES + '/' + ANO);
                        END
                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'VIERNES' THEN
                                BEGIN
                                EDTULTIMAFECHAPAGO.TEXT := ('11/'+ MES + '/' + ANO);
                                END
                                ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'SABADO' THEN
                                        BEGIN
                                        EDTULTIMAFECHAPAGO.TEXT := ('11/'+ MES + '/' + ANO);
                                        END
                                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'DOMINGO' THEN
                                                BEGIN
                                                EDTULTIMAFECHAPAGO.TEXT := ('10/'+ MES + '/' + ANO);
                                                END;
        END;

        // PAGOS  EL NOVENO DIA  HABIL
      IF DIAPAGO = '8' THEN
        BEGIN
           IF DAYS[DAYOFWEEK(ADATE )] = 'LUNES' THEN
           BEGIN
           EDTULTIMAFECHAPAGO.TEXT := ('10/'+ MES + '/' + ANO);
           END
           ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'MARTES' THEN
                BEGIN
                EDTULTIMAFECHAPAGO.TEXT := ('10/'+ MES + '/' + ANO);
                END
                ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'MIERCOLES' THEN
                        BEGIN
                        EDTULTIMAFECHAPAGO.TEXT := ('10/'+ MES + '/' + ANO);
                        END
                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'JUEVES' THEN
                        BEGIN
                        EDTULTIMAFECHAPAGO.TEXT := ('12/'+ MES + '/' + ANO);
                        END
                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'VIERNES' THEN
                                BEGIN
                                EDTULTIMAFECHAPAGO.TEXT := ('11/'+ MES + '/' + ANO);
                                END
                                ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'SABADO' THEN
                                        BEGIN
                                        EDTULTIMAFECHAPAGO.TEXT := ('12/'+ MES + '/' + ANO);
                                        END
                                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'DOMINGO' THEN
                                                BEGIN
                                                EDTULTIMAFECHAPAGO.TEXT := ('12/'+ MES + '/' + ANO);
                                                END;
        END;

    END;
END;

PROCEDURE Tfrmcorreciones.CARGCAR_PLANILLAS;
VAR I,CANTIDAD,CANTIDAD1 : INTEGER;
BEGIN
 CANTIDAD := 0;
 CANTIDAD1 := 0;
        DATAMODULE1.QRYAUTOLIQUIDACION.OPEN;
        IF ENCONTRO <> FALSE THEN
        EDTPLANILLA.TEXT := DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('NUM_PLANILLA').VALUE;

        IF DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('EMP_TIPO_DOC').VALUE = 'CC' THEN
        BEGIN
         CBTIPODOCEMPRESA.ITEMINDEX := 0;
        END
           ELSE IF DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('EMP_TIPO_DOC').VALUE = 'NIT' THEN
                BEGIN
                CBTIPODOCEMPRESA.ITEMINDEX := 1;
                END
                ELSE IF DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('EMP_TIPO_DOC').VALUE = 'CE' THEN
                        BEGIN
                        CBTIPODOCEMPRESA.ITEMINDEX := 2;
                        END
                        ELSE IF DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('EMP_TIPO_DOC').VALUE = 'TI' THEN
                                BEGIN
                                CBTIPODOCEMPRESA.ITEMINDEX := 3;
                                END ELSE IF DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('EMP_TIPO_DOC').VALUE = 'RC' THEN
                                        BEGIN
                                        CBTIPODOCEMPRESA.ITEMINDEX := 4;
                                        END;

        EDNUMERO.TEXT := DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('EMP_NUMERO_DOC').VALUE;
        IF ENCONTRO <> FALSE THEN
        EDTNPLACORRECION.TEXT := DATAMODULE1.qryautoliquidacionNUM_PLANILLA_CORR.VALUE;

                                IF DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('FEC_PAGO').VALUE <> NULL THEN
                                BEGIN
                                DTFECHAPAGO.DATE := DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('FEC_PAGO').VALUE;
                                END;
        //**********
        IF ENCONTRO <> FALSE THEN
        BEGIN
        IF  (DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('NUM_PLANILLA_CORR').VALUE) >= '0' THEN
          BEGIN
        EDTNPLACORRECION.TEXT := DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('NUM_PLANILLA_CORR').VALUE ;
        END
          ELSE
          EDTNPLACORRECION.TEXT := '0';
        END;
        //***********
        EDTPERIODO.TEXT :=DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('PER_COTIZACION').VALUE;
        MSPERPRESENTACION.TEXT :=DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('PER_PRESENTACION').VALUE;


    DATAMODULE1.QRYEMPRESAS.CLOSE;
    DATAMODULE1.QRYEMPRESAS.Parameters[0].VALUE := TRIM(CBTIPODOCEMPRESA.TEXT);
    DATAMODULE1.QRYEMPRESAS.Parameters[1].VALUE := TRIM(EDNUMERO.TEXT);
    DATAMODULE1.QRYEMPRESAS.OPEN;
        IF DATAMODULE1.QRYEMPRESAS.RECORDCOUNT > 0 THEN
        BEGIN
        EDTNOMBREEMPRESA.TEXT := DATAMODULE1.QRYEMPRESASNOM_EMPRESA.VALUE;
        Edit21.TEXT := DATAMODULE1.QRYEMPRESASNOM_EMPRESA.VALUE;
         Edit23.TEXT := DATAMODULE1.qryempresasDIR_EMPRESA.VALUE;
           DATAMODULE1.qrydepartamentos.CLOSE;
           DATAMODULE1.qrydepartamentos.OPEN;
           DBLookupComboBox1.KeyValue :=  DATAMODULE1.qryempresasCOD_DEPARTAMENTO.VALUE;

           DATAMODULE1.qryciudades.CLOSE;
           DATAMODULE1.qryciudades.SQL.CLEAR;
           DATAMODULE1.qryciudades.SQL.ADD('SELECT * FROM CIUDADES WHERE COD_DEPARTAMENTO = :"DEPAR"');
           DATAMODULE1.qryciudades.Parameters[0].VALUE := DATAMODULE1.qrydepartamentosCOD_DEPARTAMENTO.VALUE;
           DATAMODULE1.qryciudades.OPEN;
           DBLookupComboBox2.KeyValue :=  DATAMODULE1.qryempresasCOD_CIUDAD.VALUE;
           IF DATAMODULE1.QRYEMPRESASTIP_APORTANTE.VALUE = 'G' THEN
           BEGIN
           CBTIPOAPORTANTE.ITEMINDEX := 0;
           END
           ELSE
              IF DATAMODULE1.QRYEMPRESASTIP_APORTANTE.VALUE = 'P' THEN
              BEGIN
              CBTIPOAPORTANTE.ITEMINDEX := 1;
              END;
           END;

        EDTDIGITO.TEXT := COPY(TRIM(EDNUMERO.TEXT),LENGTH(EDNUMERO.TEXT),1);
       // SHOWMESSAGE(LowerCase('NIT EMPRESA '+ EDNUMERO.TEXT + ' ULTIMO NUMERO  :' +  EDTDIGITO.TEXT);
        FECHAS_PAGO;
         // GRABAR  CONSOLIDADO DE LA  PLANILLA


        EDTTOTALPLANILLA.TEXT :=DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_PLANILLA').VALUE;
        edttotalaporte.TEXT :=DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_PLANILLA').VALUE;
        Edit6.TEXT :=DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_INCAPACIDAD').VALUE;
        Edit7.TEXT :=DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_LICENCIAS').VALUE;
        Edit10.TEXT := DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_UPC').VALUE;

        Edit8.TEXT :=DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_INCAPACIDAD').VALUE;
        Edit9.TEXT :=DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_LICENCIAS').VALUE;
        Edit11.TEXT := DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_UPC').VALUE;
        edtupc.TEXT := DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_UPC').VALUE;

        Edit12.TEXT :=DATAMODULE1.qryautoliquidacionNO_INCAP_PAG.VALUE;
        EDTINCAPACIDAD.TEXT :=FloatToStr(DATAMODULE1.qryautoliquidacionVAL_INCAP_PAG.VALUE);
        Edit13.TEXT :=DATAMODULE1.qryautoliquidacionNO_LICEN_PAG.VALUE;
        edtlicencia.TEXT :=FloatToStr(DATAMODULE1.qryautoliquidacionVAL_LICEN_PAG.VALUE);
        EDTNETOAPORTES.TEXT := DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_APORTE').VALUE ;
        EDTINTERESES.TEXT := DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('INT_MORA').VALUE;
        Edit14.TEXT := FloatToStr(DATAMODULE1.qryautoliquidacionVAL_INTERES_UPC.VALUE);
        EDTAPORTEINTETERES.TEXT := DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_APORTE_MMORA').VALUE;
        Edit15.TEXT := FloatToStr(DATAMODULE1.qryautoliquidacionVAL_APORMASINT_UPC.VALUE);
        EDTSALDOANTERIOR.TEXT := DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_SALDO_FAV').VALUE;
        Edit16.TEXT  := FloatToStr(DATAMODULE1.qryautoliquidacionVAL_SALFAVOR_UPC.VALUE);
        //EDTTOTALPAGADO.TEXT := FORMAT('%10.0m',[STRTOFLOAT(DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_PAGADO').VALUE)]);
        EDTTOTALPAGADO.TEXT := DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_PAGADO').VALUE;
        Edit17.TEXT := FloatToStr(DATAMODULE1.qryautoliquidacionVAL_PAGO_UPC.VALUE);
         // LUGAR  DE  CONSIGNACION
        //CBBANCO.KEYVALUE := DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('COD_BANCO').VALUE;
       IF DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('NUM_CUENTA').VALUE <> NULL THEN
       BEGIN
        //EDTCUENTA.TEXT := DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('NUM_CUENTA').VALUE;
        END
        ELSE EDTCUENTA.TEXT := '0';
          IF DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('VAL_EFECTIVO').VALUE > 0 THEN
            BEGIN
            EDTVALEFECTIVO.TEXT:= DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('VAL_EFECTIVO').VALUE;
            END
            ELSE  EDTVALEFECTIVO.TEXT:= '0';
         IF DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('VAL_CHEQUE').VALUE >=0 THEN
            BEGIN
            EDTVALCHEQUE.TEXT := DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('VAL_CHEQUE').VALUE;
           END
         ELSE
         EDTVALCHEQUE.TEXT := '0';
         //EDTTOTALCONSIGNADO.TEXT :=   FORMAT('%10.0m',[STRTOFLOAT(EDTVALCHEQUE.TEXT) + STRTOFLOAT(EDTVALEFECTIVO.TEXT)]);
         //EDTTOTALCONSIGNADO.TEXT :=   FLOATTOSTR(STRTOINT(EDTVALCHEQUE.TEXT) + STRTOINT(EDTVALEFECTIVO.TEXT));
         ESTADO_PLANILLA := DATAMODULE1.QRYAUTOLIQUIDACIONEST_PLANILLA.VALUE;

    // CARGAR DETALLE DE LAS PLANILLAS





 DATAMODULE1.QRYDETALLE.CLOSE;
 DATAMODULE1.QRYDETALLE.SQL.CLEAR;
 DATAMODULE1.QRYDETALLE.SQL.ADD('SELECT * FROM  DBO.DET_PLANILLA_AUTOLIQUIDACION  WHERE NUM_PLANILLA = :"PLANILLA" ORDER BY AFI_TIPO_DOC,AFI_NUMERO_DOC');
 IF ENCONTRO<> FALSE THEN
 DATAMODULE1.QRYDETALLE.Parameters[0].VALUE := EDTPLANILLA.TEXT
 ELSE
 DATAMODULE1.QRYDETALLE.Parameters[0].VALUE := EDTNPLACORRECION.TEXT;
 DATAMODULE1.QRYDETALLE.OPEN;
  IF DATAMODULE1.QRYDETALLE.RECORDCOUNT > 0 THEN
      BEGIN
      CANTIDAD1 := DATAMODULE1.QRYDETALLE.RECORDCOUNT;
       FOR I := 0 TO DATAMODULE1.QRYDETALLE.RECORDCOUNT -1 DO
        BEGIN

        SGDETALLE.ROWCOUNT := SGDETALLE.ROWCOUNT +1   ;
        SGDETALLE.CELLS[0,I+1]  := DATAMODULE1.QRYDETALLE.FIELDBYNAME('AFI_TIPO_DOC').VALUE;
        SGDETALLE.CELLS[1,I+1]  := DATAMODULE1.QRYDETALLE.FIELDBYNAME('AFI_NUMERO_DOC').VALUE;
         IF  DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_ING').VALUE = 'X' THEN
         BEGIN
         SGDETALLE.CELLS[2,I+1]  := DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_ING').VALUE;
         END;
         IF DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_RET').VALUE = 'X' THEN
         BEGIN
         SGDETALLE.CELLS[3,I+1]  := DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_RET').VALUE;
         END;
         IF DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_TDA').VALUE = 'X' THEN
         BEGIN
         SGDETALLE.CELLS[4,I+1]  := DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_TDA').VALUE;
         END;
         IF DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_TAA').VALUE = 'X' THEN
         BEGIN
         SGDETALLE.CELLS[5,I+1]  := DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_TAA').VALUE;
         END;
         IF DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_VSP').VALUE = 'X'  THEN
         BEGIN
         SGDETALLE.CELLS[6,I+1]  := DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_VSP').VALUE;
         END;
         IF DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_VST').VALUE = 'X' THEN
         BEGIN
         SGDETALLE.CELLS[7,I+1]  := DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_VST').VALUE;
         END;
         IF DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_SLN').VALUE = 'X' THEN
         BEGIN
        SGDETALLE.CELLS[8,I+1]  := DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_SLN').VALUE;
        END;
        IF DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_IGE').VALUE = 'X' THEN
        BEGIN
        SGDETALLE.CELLS[9,I+1]  := DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_IGE').VALUE;
        END;
        IF DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_LMA').VALUE = 'X' THEN
        BEGIN
        SGDETALLE.CELLS[10,I+1]  := DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_LMA').VALUE;
        END;
        IF DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_VAC').VALUE = 'X' THEN
        BEGIN
        SGDETALLE.CELLS[11,I+1]  := DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_VAC').VALUE;
        END;
        SGDETALLE.CELLS[12,I+1]  := DATAMODULE1.QRYDETALLE.FIELDBYNAME('DIA_COTIZADOS').VALUE;
        SGDETALLE.CELLS[13,I+1]  := DATAMODULE1.QRYDETALLE.FIELDBYNAME('SAL_BASE').VALUE;
        IF DATAMODULE1.QRYDETALLE.FIELDBYNAME('VAL_NETO_NOV').VALUE >= 0 THEN
        BEGIN
        SGDETALLE.CELLS[14,I+1]  := DATAMODULE1.QRYDETALLE.FIELDBYNAME('VAL_NETO_NOV').VALUE;
        END ELSE
        SGDETALLE.CELLS[14,I+1] := '0';
        SGDETALLE.CELLS[15,I+1]  := DATAMODULE1.QRYDETALLE.FIELDBYNAME('ING_BASE_COT').VALUE;
        SGDETALLE.CELLS[16,I+1]  := DATAMODULE1.QRYDETALLE.FIELDBYNAME('COT_OBLIGATORIA').VALUE;

        IF (DATAMODULE1.QRYDETALLE.FIELDBYNAME('NUM_INCAPACIDAD_EGR').VALUE) <> NULL THEN
        BEGIN
        SGDETALLE.CELLS[17,I+1]  := DATAMODULE1.QRYDETALLE.FIELDBYNAME('NUM_INCAPACIDAD_EGR').VALUE ;
        END ELSE
        SGDETALLE.CELLS[17,I+1]  := '0';
        IF DATAMODULE1.QRYDETALLE.FIELDBYNAME('VAL_INCAPACIDAD_EGR').VALUE >= 0 THEN
        BEGIN
        SGDETALLE.CELLS[18,I+1]  := DATAMODULE1.QRYDETALLE.FIELDBYNAME('VAL_INCAPACIDAD_EGR').VALUE;
        END
        ELSE
        SGDETALLE.CELLS[18,I+1]  := '0';

        IF DATAMODULE1.QRYDETALLE.FIELDBYNAME('NUM_LICENCIA_MAT').VALUE <> NULL THEN
        BEGIN
        SGDETALLE.CELLS[19,I+1] := DATAMODULE1.QRYDETALLE.FIELDBYNAME('NUM_LICENCIA_MAT').VALUE;
        END
        ELSE
        SGDETALLE.CELLS[19,I+1] := '0';
        IF DATAMODULE1.QRYDETALLE.FIELDBYNAME('VAL_LICENCIA_MAT').VALUE >= 0 THEN
        BEGIN
        SGDETALLE.CELLS[20,I+1] := DATAMODULE1.QRYDETALLE.FIELDBYNAME('VAL_LICENCIA_MAT').VALUE ;
        END ELSE
        SGDETALLE.CELLS[20,I+1] := '0';
        SGDETALLE.CELLS[21,I+1] := DATAMODULE1.QRYDETALLE.FIELDBYNAME('VAL_UPC_ADI').VALUE;
        SGDETALLE.CELLS[22,I+1] := DATAMODULE1.QRYDETALLE.FIELDBYNAME('VAL_TOTAL_COT').VALUE;
        SGDETALLE.CELLS[23,I+1] := DATAMODULE1.QRYDETALLE.FIELDBYNAME('DET_ESTADO').VALUE;
        IF DATAMODULE1.QRYDETALLE.FIELDBYNAME('DET_ESTADO').VALUE <> 'COM' THEN
         BEGIN
          INC (CANTIDAD)
          END;
         DATAMODULE1.QRYDETALLE.FINDNEXT;
        END;
       END;


         DATAMODULE1.qrydetallepago.SQL.CLEAR;
         DATAMODULE1.qrydetallepago.SQL.ADD('SELECT * FROM DET_PAGO_AUTOLIQUIDACIONES WHERE NUM_PLANILLA = :"NUMERO"');
         IF ENCONTRO<> FALSE THEN
         DATAMODULE1.qrydetallepago.Parameters[0].VALUE := EDTPLANILLA.TEXT
         ELSE
         DATAMODULE1.qrydetallepago.Parameters[0].VALUE := EDTNPLACORRECION.Text;
         DATAMODULE1.qrydetallepago.OPEN;
               IF DATAMODULE1.qrydetallepago.RECORDCOUNT > 0 THEN
               BEGIN
                       FOR I := 0 TO DATAMODULE1.qrydetallepago.RECORDCOUNT -1 DO
                        BEGIN
                        sgdetabanco.ROWCOUNT := sgdetabanco.ROWCOUNT +1   ;
                        sgdetabanco.CELLS[0,I+1]  := DATAMODULE1.qrydetallepagoCOD_BANCO.VALUE;
                        sgdetabanco.CELLS[1,I+1]  := DATAMODULE1.qrydetallepagoNUM_CUENTA.VALUE;
                        sgdetabanco.CELLS[2,I+1]  := FLOATTOSTR(DATAMODULE1.qrydetallepagoVAL_CHEQUE.VALUE);
                        DATAMODULE1.qrydetallepago.FindNext;
                        END;
               END;

    // SELECIONAR  LAS  NOTAS
    DATAMODULE1.qrynotasautoliquidacion.CLOSE;
    DATAMODULE1.qrynotasautoliquidacion.SQL.CLEAR;
    DATAMODULE1.qrynotasautoliquidacion.SQL.ADD('SELECT * FROM NOTAS_AUTOLIQUIDACION WHERE NUM_PLANILLA = :"NUMERO"');

    IF ENCONTRO <> FALSE THEN
    DATAMODULE1.qrynotasautoliquidacion.Parameters[0].VALUE := TRIM(EDTPLANILLA.TEXT)
    ELSE
    DATAMODULE1.qrynotasautoliquidacion.Parameters[0].VALUE := TRIM(EDTNPLACORRECION.TEXT);

    DATAMODULE1.qrynotasautoliquidacion.Open;
            IF DATAMODULE1.qrynotasautoliquidacion.RecordCount > 0 THEN
            begin
             IF  DATAMODULE1.qrynotasautoliquidacionTIP_NOTA.Value = 'C' THEN
             BEGIN
             ComboBox1.ItemIndex := 0;
             END
             ELSE
             ComboBox1.ItemIndex := 1;
             Edit4.Text := FLOATTOSTR(DATAMODULE1.qrynotasautoliquidacionVAL_NOTA.Value) ;
            END;

     IF edtsaldoanterior.Text > '0' THEN
     BEGIN
    DATAMODULE1.qrynotasautoliquidacion.CLOSE;
    DATAMODULE1.qrynotasautoliquidacion.SQL.CLEAR;
    DATAMODULE1.qrynotasautoliquidacion.SQL.ADD('SELECT * FROM NOTAS_AUTOLIQUIDACION WHERE NUM_COMP_DES = :"NUMERO" AND TIP_DESCUENTO = :"ESTADO"');

    IF ENCONTRO <> FALSE THEN
    DATAMODULE1.qrynotasautoliquidacion.Parameters[0].VALUE := TRIM(EDTPLANILLA.TEXT)
    ELSE
    DATAMODULE1.qrynotasautoliquidacion.Parameters[0].VALUE := TRIM(EDTNPLACORRECION.TEXT);

    DATAMODULE1.qrynotasautoliquidacion.Parameters[1].VALUE := 'A';
    DATAMODULE1.qrynotasautoliquidacion.Open;
            IF DATAMODULE1.qrynotasautoliquidacion.RecordCount > 0 THEN
            begin
            Edit20.Text := DATAMODULE1.qrynotasautoliquidacionNUM_COMP_DES.Value
            END;
     END;




   // SELECIONA  LA  UPC DESCONTADAS
    DATAMODULE1.QRYDETALLE.CLOSE;
    DATAMODULE1.QRYPAGOUPC.CLOSE;
    DATAMODULE1.QRYPAGOUPC.SQL.CLEAR;
    DATAMODULE1.QRYPAGOUPC.SQL.ADD('SELECT * FROM DET_PAGO_UPC_ADICIONAL WHERE NUM_PLANILLA =:"NUM_PLANILLA"');
    IF ENCONTRO <> FALSE THEN
    DATAMODULE1.QRYPAGOUPC.Parameters[0].VALUE := TRIM(EDTPLANILLA.TEXT)
    ELSE
    DATAMODULE1.QRYPAGOUPC.Parameters[0].VALUE := TRIM(EDTNPLACORRECION.TEXT);
    DATAMODULE1.QRYPAGOUPC.OPEN;
    IF DATAMODULE1.QRYPAGOUPC.RECORDCOUNT > 0 THEN
      BEGIN
       FOR I := 0 TO DATAMODULE1.QRYPAGOUPC.RECORDCOUNT -1 DO
        BEGIN
        SGUPC.ROWCOUNT := SGUPC.ROWCOUNT +1 ;
        SGUPC.CELLS[0,I+1]  := DATAMODULE1.QRYPAGOUPCAFI_TIP_DOCUMENTO.VALUE;
        SGUPC.CELLS[1,I+1]  := DATAMODULE1.QRYPAGOUPCAFI_NUM_DOCUMENTO.VALUE;
        SGUPC.CELLS[2,I+1]  := DATAMODULE1.QRYPAGOUPCAFI_TIP_DOC_ADICIONAL.VALUE;
        SGUPC.CELLS[3,I+1]  := DATAMODULE1.QRYPAGOUPCAFI_NUM_DOC_ADICIONAL.VALUE;
        SGUPC.CELLS[7,I+1]  := FLOATTOSTR(DATAMODULE1.QRYPAGOUPCVAL_PAGADO.VALUE);
        DATAMODULE1.QRYPAGOUPC.FINDNEXT;
        END;
       END;

   // SELECIONA  LAS INCAPACIDADES DESCONTADAS
    DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
    DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
    DATAMODULE1.QRYDETINCAPACIDAD.SQL.CLEAR;
    DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('SELECT * FROM DET_INCAPACIDAD WHERE NUM_COMPROBANTE = :"NUMERO"');
    IF ENCONTRO <> FALSE THEN
    DATAMODULE1.QRYDETINCAPACIDAD.Parameters[0].VALUE := TRIM(EDTPLANILLA.TEXT)
    ELSE
    DATAMODULE1.QRYDETINCAPACIDAD.Parameters[0].VALUE := TRIM(EDTNPLACORRECION.TEXT);

    DATAMODULE1.QRYDETINCAPACIDAD.OPEN;
      IF DATAMODULE1.QRYDETINCAPACIDAD.RECORDCOUNT > 0 THEN
      BEGIN
        FOR I := 0 TO DATAMODULE1.QRYDETINCAPACIDAD.RECORDCOUNT -1 DO
        BEGIN
              DATAMODULE1.QRYINCAPACIDADES.CLOSE;
              DATAMODULE1.QRYINCAPACIDADES.CLOSE;
              DATAMODULE1.QRYINCAPACIDADES.SQL.CLEAR;
              DATAMODULE1.QRYINCAPACIDADES.SQL.ADD('SELECT * FROM INCAPACIDADES WHERE NUM_INCAPACIDAD = :"NUMERO" ');
              DATAMODULE1.QRYINCAPACIDADES.Parameters[0].VALUE := DATAMODULE1.qrydetincapacidadNUM_INCAPACIDAD.VALUE;
              DATAMODULE1.QRYINCAPACIDADES.OPEN;
                  IF DATAMODULE1.QRYINCAPACIDADES.RECORDCOUNT > 0 THEN
                  BEGIN
                  sgincapacidades.ROWCOUNT := sgincapacidades.ROWCOUNT +1 ;
                  sgincapacidades.CELLS[0,I+1]  := DATAMODULE1.qrydetincapacidadNUM_INCAPACIDAD.VALUE;
                  sgincapacidades.CELLS[1,I+1]  := DATETOSTR(DATAMODULE1.qrydetincapacidadPER_PAGO_INCAP.VALUE);
                  sgincapacidades.CELLS[2,I+1]  := FLOATTOSTR(DATAMODULE1.qrydetincapacidadVAL_DESCONTADO.VALUE);
                  sgincapacidades.CELLS[3,I+1]  := FLOATTOSTR(DATAMODULE1.qrydetincapacidadVAL_PAGAR_INCAP.VALUE);
                  sgincapacidades.CELLS[4,I+1]  := FLOATTOSTR(DATAMODULE1.qrydetincapacidadDIA_PAGAR_INCAP.VALUE);
                  sgincapacidades.CELLS[5,I+1]  := (DATAMODULE1.qryincapacidadesAFI_TIPO_DOC.VALUE);
                  sgincapacidades.CELLS[6,I+1]  := (DATAMODULE1.qryincapacidadesAFI_NUMERO_DOC.VALUE);
                  sgincapacidades.CELLS[7,I+1]  := DATAMODULE1.qryincapacidadesTIP_INCAPACIDAD.VALUE
                  END;

        DATAMODULE1.QRYDETINCAPACIDAD.FINDNEXT;
        END;
       END;

          MSPERPRESENTACION.ENABLED := FALSE;
          IF  CANTIDAD = 0 THEN
           BEGIN
           SHOWMESSAGE(LowerCase(' LA  PLANILLA  YA  ESTA  COMPENSADA  COMPLETAMENTO Y NO SE  PUEDE MODIFICAR'));
           BLOQUEAR;
           BTNBORRARPLA.Enabled := FALSE;
           END
           ELSE IF CANTIDAD1 <> CANTIDAD THEN
              BEGIN
              SHOWMESSAGE(LowerCase(' LA  PLANILLA  NO A  COMPENSADO TOTALMENTE FALTAN ' + INTTOSTR(CANTIDAD) + ' POR  COMPENSAR DE : ' + INTTOSTR(CANTIDAD1)));
              EDTPLANILLA.ENABLED := FALSE;
              CBTIPODOCEMPRESA.ENABLED := FALSE;
              EDNUMERO.ENABLED := FALSE;
              EDTNOMBREEMPRESA.ENABLED := FALSE;
              CBTIPODECLARACION.ENABLED := FALSE;
              EDTPERIODO.ENABLED := FALSE;
              BTGRABARPLANILLA.ENABLED := FALSE;
              DTFECHAPAGO.ENABLED := FALSE;
              MSPERPRESENTACION.ENABLED := FALSE;
              BTNBORRARPLA.ENABLED := FALSE;
              END
              ELSE
                  IF CANTIDAD1 = CANTIDAD THEN
                   BEGIN
                   SHOWMESSAGE(LowerCase(' LA  PLANILLA  NO A  COMPENSADO  POR NINGUN USUARIO  DE LOS ' + INTTOSTR(CANTIDAD1) + ' DECLARADOS  EN LA  PLANILLA'));
                   BTNBORRARPLA.ENABLED := TRUE;
                   END;

          //*************
          calcular;
          recalcular;



END;

PROCEDURE Tfrmcorreciones.nuevaplanillaClick(SENDER: TOBJECT);
BEGIN
LIMPIAR_PLANILLA;
END;

PROCEDURE Tfrmcorreciones.BLOQUEAR;
BEGIN
   EDTNUMERODUCAFILIADO.ENABLED := FALSE;
   CKING.ENABLED := FALSE;
   CKRET.ENABLED := FALSE;
   CKTDA.ENABLED := FALSE;
   CKTAA.ENABLED := FALSE;
   CKVSP.ENABLED := FALSE;
   CKVST.ENABLED := FALSE;
   CKSLN.ENABLED := FALSE;
   CKIGE.ENABLED := FALSE;
   CKLMA.ENABLED := FALSE;
   CKVAC.ENABLED := FALSE;
   CBTIPODOCAFILIADO.ENABLED := FALSE;
   EDDIAS.ENABLED := FALSE;
   //EDTSUCURSAL.ENABLED := FALSE;
   EDTSALARIOBASE.ENABLED := FALSE;
   EDTVALORNETO.ENABLED := FALSE;
   EDTNOAUTLICENCIA.ENABLED := FALSE;
   EDTAUTINCAPACIDAD.ENABLED := FALSE;
   EDTIGRESOBASECOTIZACION.ENABLED := FALSE;
   EDTCOTIZACIONOBLIGATORIO.ENABLED := FALSE;
   EDTVALINCAPACIDAD.ENABLED := FALSE;
   EDTVALLICENCIA.ENABLED := FALSE;
   EDTVALUPC.ENABLED := FALSE;
   EDTTOTALPAGADOAFILIADO.ENABLED := FALSE;
   // LIMPIAR  CONSOLIDADO DE LA  PLANILLA
   EDTTOTALPLANILLA.ENABLED := FALSE;
   EDTTOTALAPORTE.ENABLED := FALSE;
   EDTINCAPACIDAD.ENABLED := FALSE;
   EDTLICENCIA.ENABLED := FALSE;
   EDTNETOAPORTES.ENABLED := FALSE;
   EDTTOTALPLANILLA.ENABLED := FALSE;
   EDTINTERESES.ENABLED := FALSE;
   EDTAPORTEINTETERES.ENABLED := FALSE;
   EDTSALDOANTERIOR.ENABLED := FALSE;
   EDTUPC.ENABLED := FALSE;
   EDTTOTALPAGADO.ENABLED := FALSE;
   EDTVALCHEQUE.ENABLED := FALSE;
   CBBANCO.ENABLED := FALSE;
   EDTVALEFECTIVO.ENABLED := FALSE;
   EDTTOTALCONSIGNADO.ENABLED := FALSE;
    // LIMPIAR  ENCABEZADO
   EDTPLANILLA.ENABLED := FALSE;
   CBTIPODOCEMPRESA.ENABLED := FALSE;
   EDNUMERO.ENABLED := FALSE;
   EDTNOMBREEMPRESA.ENABLED := FALSE;
   CBTIPODECLARACION.ENABLED := FALSE;
   EDTPERIODO.ENABLED := FALSE;
  // EDTCORRECIONPLANILLA.ENABLED := FALSE;
   BTGRABARPLANILLA.ENABLED := FALSE;
   DTFECHAPAGO.ENABLED := FALSE;
   EDTPERIODO.ENABLED := FALSE;
   EDTSALARIOBASE.ENABLED := FALSE;
END;

PROCEDURE Tfrmcorreciones.CBBANCOCLICK(SENDER: TOBJECT);
BEGIN
IF CBBANCO.TEXT <> '' THEN
  BEGIN
    DATAMODULE1.QRYBANCOS.CLOSE;
    DATAMODULE1.QRYBANCOS.SQL.Clear;
    DATAMODULE1.qrybancos.SQL.Text:='SELECT * FROM BANCOS_CONTRV WHERE COD_BANCO= :BANCO';
    DATAMODULE1.QRYBANCOS.Parameters[0].VALUE := CBBANCO.KEYVALUE;
    DATAMODULE1.QRYBANCOS.OPEN;
     IF DATAMODULE1.QRYBANCOS.RECORDCOUNT > 0 THEN
     BEGIN
         EDTCUENTA.TEXT :=  DATAMODULE1.QRYBANCOSCTA_BANCO.VALUE;
         recalcular;
         btgrabarplanilla.Enabled := TRUE;
     END;
  END;
END;

PROCEDURE Tfrmcorreciones.CKRETCLICK(SENDER: TOBJECT);
BEGIN
IF CKRET.CHECKED = TRUE THEN
  BEGIN
  //CKING.ENABLED := FALSE;
  CKING.ENABLED := TRUE;
  CKRET.ENABLED := TRUE;
  CKTAA.ENABLED := TRUE;
  CKTDA.ENABLED := FALSE;
  CKVSP.ENABLED := TRUE;
  CKVST.ENABLED := TRUE;
  CKSLN.ENABLED := TRUE;
  CKIGE.ENABLED := TRUE;
  CKVAC.ENABLED := TRUE;
  IF GLSEXO = 'M' THEN
  BEGIN
   CKLMA.ENABLED := FALSE;
   END
   ELSE
   CKLMA.ENABLED := TRUE;
 END
 ELSE IF CKRET.CHECKED = FALSE THEN
  BEGIN
  CKING.ENABLED := TRUE;
  CKRET.ENABLED := TRUE;
  CKTAA.ENABLED := TRUE;
  CKVSP.ENABLED := TRUE;
  CKVST.ENABLED := TRUE;
  CKSLN.ENABLED := TRUE;
  CKIGE.ENABLED := TRUE;
  CKVAC.ENABLED := TRUE;
  CKLMA.ENABLED := TRUE;
  CKTDA.ENABLED := TRUE;
  END;
END;

PROCEDURE Tfrmcorreciones.CKTDACLICK(SENDER: TOBJECT);
BEGIN
IF CKTDA.CHECKED = TRUE THEN
  BEGIN
  CKING.ENABLED := FALSE;
  CKRET.ENABLED := TRUE;
  CKTAA.ENABLED := TRUE;
  CKTDA.ENABLED := TRUE;
  CKVSP.ENABLED := TRUE;
  CKVST.ENABLED := TRUE;
  CKSLN.ENABLED := TRUE;
  CKIGE.ENABLED := TRUE;
  CKVAC.ENABLED := TRUE;
  IF GLSEXO = 'M' THEN
  BEGIN
   CKLMA.ENABLED := FALSE;
   END
   ELSE
   CKLMA.ENABLED := TRUE;
 END
 ELSE IF CKRET.CHECKED = FALSE THEN
  BEGIN
  CKING.ENABLED := TRUE;
  CKRET.ENABLED := TRUE;
  CKTAA.ENABLED := TRUE;
  CKVSP.ENABLED := TRUE;
  CKVST.ENABLED := TRUE;
  CKSLN.ENABLED := TRUE;
  CKIGE.ENABLED := TRUE;
  CKVAC.ENABLED := TRUE;
  CKLMA.ENABLED := TRUE;
  CKTDA.ENABLED := TRUE;
  END;
END;

PROCEDURE Tfrmcorreciones.CKINGCLICK(SENDER: TOBJECT);
BEGIN
IF CKING.CHECKED = TRUE THEN
  BEGIN
  CKING.ENABLED := TRUE;
  //CKRET.ENABLED := FALSE;
  CKRET.ENABLED := TRUE;
  CKTAA.ENABLED := FALSE;
  CKTDA.ENABLED := TRUE;
  CKVSP.ENABLED := TRUE;
  CKVST.ENABLED := TRUE;
  CKSLN.ENABLED := FALSE;
  CKIGE.ENABLED := TRUE;
  CKVAC.ENABLED := FALSE;
  IF GLSEXO = 'M' THEN
  BEGIN
   CKLMA.ENABLED := FALSE;
   END
   ELSE
   CKLMA.ENABLED := TRUE;
 END
 ELSE IF CKING.CHECKED = FALSE THEN
  BEGIN
  CKING.ENABLED := TRUE;
  CKRET.ENABLED := TRUE;
  CKTAA.ENABLED := TRUE;
  CKVSP.ENABLED := TRUE;
  CKVST.ENABLED := TRUE;
  CKSLN.ENABLED := TRUE;
  CKIGE.ENABLED := TRUE;
  CKVAC.ENABLED := TRUE;
  CKLMA.ENABLED := TRUE;
  CKTDA.ENABLED := TRUE;
  END;

END;

PROCEDURE Tfrmcorreciones.CKTAACLICK(SENDER: TOBJECT);
BEGIN
IF CKTAA.CHECKED = TRUE THEN
  BEGIN
  CKING.ENABLED := FALSE;
  CKRET.ENABLED := TRUE;
  CKTAA.ENABLED := TRUE;
  CKTDA.ENABLED := FALSE;
  CKVSP.ENABLED := TRUE;
  CKVST.ENABLED := TRUE;
  CKSLN.ENABLED := TRUE;
  CKIGE.ENABLED := TRUE;
  CKVAC.ENABLED := TRUE;
  IF GLSEXO = 'M' THEN
  BEGIN
   CKLMA.ENABLED := FALSE;
   END
   ELSE
   CKLMA.ENABLED := TRUE;
 END
 ELSE IF CKTAA.CHECKED = FALSE THEN
  BEGIN
  CKING.ENABLED := TRUE;
  CKRET.ENABLED := TRUE;
  CKTAA.ENABLED := TRUE;
  CKVSP.ENABLED := TRUE;
  CKVST.ENABLED := TRUE;
  CKSLN.ENABLED := TRUE;
  CKIGE.ENABLED := TRUE;
  CKVAC.ENABLED := TRUE;
  CKLMA.ENABLED := TRUE;
  CKTDA.ENABLED := TRUE;
  END;

END;

PROCEDURE Tfrmcorreciones.MODIFICAR_AFILIADO;
VAR I,J : INTEGER;
BEGIN
 MODIFICADO := FALSE;
 I := 0;
IF SGDETALLE.CELLS[23,SGDETALLE.ROW ] <> 'COM' THEN
BEGIN
 MODIFICADO := TRUE;
  IF  SGDETALLE.ROW = SGDETALLE.ROWCOUNT -1  THEN
    EXIT;
    IF SGDETALLE.CELLS[0,SGDETALLE.ROW ] = 'CC' THEN
     BEGIN
     CBTIPODOCAFILIADO.ITEMINDEX := 0;
     CBTIPODOCAFILIADO.ENABLED := FALSE;
     END
     ELSE IF TRIM(SGDETALLE.CELLS[0,SGDETALLE.ROW ]) = 'CE' THEN
          BEGIN
          CBTIPODOCAFILIADO.ITEMINDEX := 1;
          CBTIPODOCAFILIADO.ENABLED := FALSE;
          END
          ELSE IF TRIM(SGDETALLE.CELLS[0,SGDETALLE.ROW ]) = 'TI' THEN
                BEGIN
                CBTIPODOCAFILIADO.ITEMINDEX := 2;
                CBTIPODOCAFILIADO.ENABLED := FALSE;
                END;
   EDTNUMERODUCAFILIADO.TEXT := SGDETALLE.CELLS[1,SGDETALLE.ROW ];
   IF EDTNUMERODUCAFILIADO.TEXT > '0' THEN
                BEGIN
                EDTNOAUTLICENCIA.ENABLED := TRUE;
                EDTVALLICENCIA.ENABLED := TRUE;
                DATAMODULE1.QRYAFILIADOS.CLOSE;
                DATAMODULE1.QRYAFILIADOS.SQL.CLEAR;
                DATAMODULE1.QRYAFILIADOS.SQL.ADD('SELECT  TIP_DOCUMENTO_EMP, NUM_DOCUMENTO_EMP,TIP_DOCUMENTO_AFI, NUM_DOCUMENTO_AFI,PRI_APELLIDO,SEG_APELLIDO,PRI_NOMBRE,SEG_NOMBRE, VAL_SUELDO_AFIL,FEC_INGRESO_UNI,FEC_EGRESO_UNI,AFILIADOS_EMPRESAS.COD_ESTADO,FEC_NACIMIENTO,COD_SEXO,T1.COD_MODALIDAD_TRA');
                DATAMODULE1.QRYAFILIADOS.SQL.ADD('FROM AFILIADOS_EMPRESAS,AFILIADOS T1');
                DATAMODULE1.QRYAFILIADOS.SQL.ADD('WHERE TIP_DOCUMENTO_AFI = TIP_DOCUMENTO AND  NUM_DOCUMENTO_AFI = NUM_DOCUMENTO AND  TIP_DOCUMENTO_AFI = :"CC" AND NUM_DOCUMENTO_AFI = :"DOCUMENTO" AND ((FEC_INGRESO_UNI <= :"FECHAIN") OR (FEC_INGRESO_UNI <= :"FECHAINI")) AND ');
                DATAMODULE1.QRYAFILIADOS.SQL.ADD('(((FEC_EGRESO_UNI >= :"FECHAF") OR (FEC_EGRESO_UNI >= :"FECHAFI")) OR FEC_EGRESO_UNI IS NULL)');

               // DATAMODULE1.QRYAFILIADOS.SQL.ADD('SELECT  TIP_DOCUMENTO_EMP, NUM_DOCUMENTO_EMP,TIP_DOCUMENTO_AFI, NUM_DOCUMENTO_AFI,PRI_APELLIDO,SEG_APELLIDO,PRI_NOMBRE,SEG_NOMBRE, VAL_SUELDO_AFIL,FEC_INGRESO_UNI,FEC_EGRESO_UNI,AFILIADOS_EMPRESAS.COD_ESTADO,FEC_NACIMIENTO,COD_SEXO,T1.COD_MODALIDAD_TRA');
               // DATAMODULE1.QRYAFILIADOS.SQL.ADD('FROM AFILIADOS_EMPRESAS,AFILIADOS T1');
               // DATAMODULE1.QRYAFILIADOS.SQL.ADD('WHERE TIP_DOCUMENTO_AFI = TIP_DOCUMENTO AND  NUM_DOCUMENTO_AFI = NUM_DOCUMENTO AND  TIP_DOCUMENTO_AFI = :"CC" AND NUM_DOCUMENTO_AFI = :"NUMERO"');
                DATAMODULE1.QRYAFILIADOS.Parameters[0].VALUE := TRIM(CBTIPODOCAFILIADO.TEXT);
                DATAMODULE1.QRYAFILIADOS.Parameters[1].VALUE := TRIM(EDTNUMERODUCAFILIADO.TEXT);

                DATAMODULE1.QRYAFILIADOS.Parameters[2].VALUE := STRTODATE('01/' + EDTPERIODO.TEXT);
                DATAMODULE1.QRYAFILIADOS.Parameters[3].VALUE := STRTODATE('28/' + EDTPERIODO.TEXT);
                DATAMODULE1.QRYAFILIADOS.Parameters[4].VALUE := STRTODATE('01/' + EDTPERIODO.TEXT);
                DATAMODULE1.QRYAFILIADOS.Parameters[5].VALUE := STRTODATE('28/' + EDTPERIODO.TEXT);

                DATAMODULE1.QRYAFILIADOS.OPEN;

                   // AFILIADO ACTIVO

                        IF DATAMODULE1.QRYAFILIADOS.RECORDCOUNT > 0 THEN
                        BEGIN
                          EDTNOMBREAFILIADO.TEXT := DATAMODULE1.QRYAFILIADOSPRI_APELLIDO.VALUE + ' ' + DATAMODULE1.QRYAFILIADOSSEG_APELLIDO.VALUE + ' ' + DATAMODULE1.QRYAFILIADOSPRI_NOMBRE.VALUE + ' ' + DATAMODULE1.QRYAFILIADOSSEG_NOMBRE.VALUE;
                          IF DATAMODULE1.QRYAFILIADOSCOD_MODALIDAD_TRA.VALUE = 'D' THEN
                          BEGIN
                          CBTIPOCOTIZANTE.ITEMINDEX := 0;
                          END
                          ELSE  IF DATAMODULE1.QRYAFILIADOSCOD_MODALIDAD_TRA.VALUE = 'I' THEN
                                BEGIN
                                CBTIPOCOTIZANTE.ITEMINDEX := 1;
                                END
                                ELSE    IF DATAMODULE1.QRYAFILIADOSCOD_MODALIDAD_TRA.VALUE = 'P' THEN
                                        BEGIN
                                        CBTIPOCOTIZANTE.ITEMINDEX := 2;
                                     END  ELSE  IF DATAMODULE1.QRYAFILIADOSCOD_MODALIDAD_TRA.VALUE = 'E' THEN
                                                BEGIN
                                                CBTIPOCOTIZANTE.ITEMINDEX := 3;
                                                END;

                             IF DATAMODULE1.QRYAFILIADOSCOD_SEXO.VALUE = 'M' THEN
                             BEGIN
                             EDTNOAUTLICENCIA.ENABLED := FALSE;
                             EDTVALLICENCIA.ENABLED := FALSE;
                             CheckBox1.Enabled := FALSE;
                             END;


                    IF (DATAMODULE1.QRYAFILIADOSTIP_DOCUMENTO_EMP.VALUE = CBTIPODOCEMPRESA.TEXT) AND  (DATAMODULE1.QRYAFILIADOSNUM_DOCUMENTO_EMP.VALUE = EDNUMERO.TEXT) THEN
                     BEGIN
                     EDTCOTIZACIONOBLIGATORIO.SETFOCUS;
                     END
                     ELSE
                     EMP := TRUE;

         END
         ELSE IF DATAMODULE1.QRYAFILIADOS.RECORDCOUNT = 0 THEN
              BEGIN
              NRS := TRUE;
              END;

   END;
       SALARIOMINIMO;
       EDTNUMERODUCAFILIADO.ENABLED := FALSE;
       IF SGDETALLE.CELLS[2,SGDETALLE.ROW ] = 'X' THEN
       BEGIN
       CKING.CHECKED := TRUE;
       END;
       IF SGDETALLE.CELLS[3,SGDETALLE.ROW ] = 'X' THEN
       BEGIN
       CKRET.CHECKED := TRUE;
       END;
       IF SGDETALLE.CELLS[4,SGDETALLE.ROW ] = 'X' THEN
       BEGIN
       CKTDA.CHECKED := TRUE;
       END;
       IF SGDETALLE.CELLS[5,SGDETALLE.ROW ] = 'X' THEN
       BEGIN
       CKTAA.CHECKED := TRUE;
       END;
       IF SGDETALLE.CELLS[6,SGDETALLE.ROW ] = 'X' THEN
       BEGIN
       CKVSP.CHECKED := TRUE;
       END;
       IF SGDETALLE.CELLS[7,SGDETALLE.ROW ] = 'X' THEN
       BEGIN
       CKVST.CHECKED := TRUE;
       END;
       IF SGDETALLE.CELLS[8,SGDETALLE.ROW ] = 'X' THEN
       BEGIN
       CKSLN.CHECKED := TRUE;
       END;
       IF SGDETALLE.CELLS[9,SGDETALLE.ROW ] = 'X' THEN
       BEGIN
       CKIGE.CHECKED := TRUE;
       END;
       IF SGDETALLE.CELLS[10,SGDETALLE.ROW ] = 'X' THEN
       BEGIN
       CKLMA.CHECKED := TRUE;
       END;
       IF SGDETALLE.CELLS[11,SGDETALLE.ROW ] = 'X' THEN
       BEGIN
       CKVAC.CHECKED := TRUE;
       END;
       EDDIAS.TEXT :=  SGDETALLE.CELLS[12,SGDETALLE.ROW ];
       EDTSALARIOBASE.TEXT := SGDETALLE.CELLS[13,SGDETALLE.ROW ];
      // EDTSALARIOBASE.ENABLED := FALSE;
       EDTVALORNETO.TEXT := SGDETALLE.CELLS[14,SGDETALLE.ROW ];
       EDTIGRESOBASECOTIZACION.TEXT := SGDETALLE.CELLS[15,SGDETALLE.ROW ];
       EDTCOTIZACIONOBLIGATORIO.TEXT := SGDETALLE.CELLS[16,SGDETALLE.ROW ];
       EDTAUTINCAPACIDAD.TEXT := SGDETALLE.CELLS[17,SGDETALLE.ROW ];
       EDTVALINCAPACIDAD.TEXT := SGDETALLE.CELLS[18,SGDETALLE.ROW ];
       EDTNOAUTLICENCIA.TEXT := SGDETALLE.CELLS[19,SGDETALLE.ROW ];
       EDTVALLICENCIA.TEXT := SGDETALLE.CELLS[20,SGDETALLE.ROW ];
       EDTVALUPC.TEXT := SGDETALLE.CELLS[21,SGDETALLE.ROW ];
       EDTTOTALPAGADOAFILIADO.TEXT := SGDETALLE.CELLS[22,SGDETALLE.ROW ];
        IF (EDTAUTINCAPACIDAD.TEXT > '0') AND (EDTVALINCAPACIDAD.TEXT > '0') THEN
        BEGIN
        CheckBox1.Checked := TRUE;
        END;

        IF (EDTNOAUTLICENCIA.TEXT > '0') AND (EDTVALLICENCIA.TEXT > '0') THEN
        BEGIN
        CheckBox2.Checked := TRUE;
        END;

       IF SGDETALLE.CELLS[23,I ] = 'NRS' THEN
         BEGIN
         NRS := TRUE;
         END;
       IF SGDETALLE.CELLS[23,I ] = 'NRE' THEN
          BEGIN
          NRE := TRUE;
          END;
       IF SGDETALLE.CELLS[23,I ] = 'IGE' THEN
         BEGIN
         IGE := TRUE;
         END;
       IF SGDETALLE.CELLS[23,I ] = 'LIC' THEN
          BEGIN
          LIC := TRUE;
          END;
       IF SGDETALLE.CELLS[23,I ] = 'IBC' THEN
          BEGIN
          IBC := TRUE;
          END;
       IF SGDETALLE.CELLS[23,I ] = 'EMP' THEN
          BEGIN
          EMP := TRUE;
          END;


       FOR I:= SGDETALLE.ROW +1 TO SGDETALLE.ROWCOUNT -1 DO
       BEGIN
          FOR J := 0 TO 24 DO
          SGDETALLE.CELLS[J,I -1] := SGDETALLE.CELLS[J,I];
       END;
          SGDETALLE.ROWCOUNT := SGDETALLE.ROWCOUNT -1 ;
          CALCULAR;
          EDTCOTIZACIONOBLIGATORIO.SETFOCUS;

 END
 ELSE SHOWMESSAGE(LowerCase(' ESTE  AFILIADO  ESTA  INCLUIDO EN LA  COMPENSACION Y NO SE PUEDE  MODIFICAR'));
 END;

PROCEDURE Tfrmcorreciones.SGDETALLEDBLCLICK(SENDER: TOBJECT);
BEGIN
IF (EDTNUMERODUCAFILIADO.TEXT = '0') THEN
  BEGIN
  FRMPRINCIPAL.TOOLBAR1.Enabled := true;
   MODIFICAR_AFILIADO;
   END;
END;

PROCEDURE Tfrmcorreciones.CARTERA_MOROSA;
BEGIN
   IF (EDNUMERO.TEXT <> '') AND (CBTIPODOCEMPRESA.TEXT <> '') AND (EDTPERIODO.TEXT <> '') THEN
   BEGIN
     IF CBTIPODECLARACION.ITEMINDEX >= 0 THEN
     BEGIN
     DATAMODULE1.QRYCARTERA.CLOSE;
     DATAMODULE1.QRYCARTERA.SQL.CLEAR;
     DATAMODULE1.QRYCARTERA.SQL.ADD('SELECT * FROM CARTERA WHERE TIPO_MORA >"0" AND TIP_DOCUMENTO_EMP = :"TIP_EMPRESA" AND NUM_DOCUMENTO_EMP = :"NUM_EMPRESA" AND PER_COMPENSACION = :"PERIODO"');
     DATAMODULE1.QRYCARTERA.Parameters[0].VALUE := CBTIPODOCEMPRESA.TEXT;
     DATAMODULE1.QRYCARTERA.Parameters[1].VALUE := EDNUMERO.TEXT;
     DATAMODULE1.QRYCARTERA.Parameters[2].VALUE := EDTPERIODO.TEXT;
     DATAMODULE1.QRYCARTERA.OPEN;
         IF DATAMODULE1.QRYCARTERA.RECORDCOUNT > 0 THEN
         BEGIN
         SHOWMESSAGE(LowerCase('LA  EMPRESA  NO DEBE PAGOS  ESTE PERIODO'));
         END;
    END;
   END;
END;
PROCEDURE Tfrmcorreciones.ESTADOS_PLANILLA;
VAR I, J : INTEGER;
BEGIN
 IF ESTADO_PLANILLA = '' THEN
 BEGIN
     FOR I := 1 TO SGDETALLE.ROWCOUNT -2 DO
     BEGIN
        IF  TRIM(SGDETALLE.CELLS[23,I]) = 'NRS' THEN
        BEGIN
        ESTADO_PLANILLA := 'NRS';
        END;
    END;
 END;

 IF ESTADO_PLANILLA = '' THEN
 BEGIN
     FOR I := 1 TO SGDETALLE.ROWCOUNT -2 DO
     BEGIN
        IF  TRIM(SGDETALLE.CELLS[23,I]) = 'IBC' THEN
        BEGIN
        ESTADO_PLANILLA := 'IBC';
        END;
    END;
 END;
 IF ESTADO_PLANILLA = '' THEN
    BEGIN
     ESTADO_PLANILLA := 'CIE';
 END;

END;


PROCEDURE Tfrmcorreciones.USUARIOS_UPC;
VAR I,X : INTEGER;
    ENCONTRO  : BOOLEAN;
    ANO : STRING;
BEGIN
IF (CBTIPODOCAFILIADO.TEXT <> '') AND  (EDTNUMERODUCAFILIADO.TEXT >'0') THEN
      BEGIN



        DATAMODULE1.QRYUPC.CLOSE;
        DATAMODULE1.QRYUPC.SQL.CLEAR;
        DATAMODULE1.QRYUPC.SQL.ADD('SELECT TIP_DOCUMENTO_BEN,NUM_DOCUMENTO_BEN,COD_SEXO,TIP_DOCUMENTO_COT,NUM_DOCUMENTO_COT,FEC_NACIMIENTO,');
        DATAMODULE1.QRYUPC.SQL.ADD('PRI_APELLIDO,SEG_APELLIDO,PRI_NOMBRE,SEG_NOMBRE');
        DATAMODULE1.QRYUPC.SQL.ADD('FROM AFILIADOS,RELACION_AFILIADOS');
        DATAMODULE1.QRYUPC.SQL.ADD('WHERE COD_TIPO_AFIL=:"EST" AND TIP_DOCUMENTO_BEN =  TIP_DOCUMENTO AND NUM_DOCUMENTO_BEN = NUM_DOCUMENTO AND TIP_DOCUMENTO_COT =  :"TIPO" AND NUM_DOCUMENTO_COT = :"NUMERO" ');
        DATAMODULE1.QRYUPC.SQL.ADD('AND ((FEC_INCLUSION_NOV <= :"FECHA") OR (FEC_INCLUSION_NOV <= :"FECHAI")) AND (((FEC_EXCLUSION_NOV >= :"FECHAF") OR (FEC_EXCLUSION_NOV >= :"FECHAFI"))OR FEC_EXCLUSION_NOV  IS NULL)');
        DATAMODULE1.QRYUPC.Parameters[0].VALUE := 'A';
        DATAMODULE1.QRYUPC.Parameters[1].VALUE := CBTIPODOCAFILIADO.TEXT;
        DATAMODULE1.QRYUPC.Parameters[2].VALUE := EDTNUMERODUCAFILIADO.TEXT;
        DATAMODULE1.QRYUPC.Parameters[3].VALUE := StrToDateTime('01/'+ EDTPERIODO.TEXT);
        DATAMODULE1.QRYUPC.Parameters[4].VALUE := StrToDateTime('28/'+ EDTPERIODO.TEXT);
        DATAMODULE1.QRYUPC.Parameters[5].VALUE := StrToDateTime('01/'+ EDTPERIODO.TEXT);
        DATAMODULE1.QRYUPC.Parameters[6].VALUE := StrToDateTime('28/'+ EDTPERIODO.TEXT);
        DATAMODULE1.QRYUPC.OPEN;
        IF DATAMODULE1.QRYUPC.RECORDCOUNT > 0 THEN
       BEGIN
        FOR I := 1 TO DATAMODULE1.QRYUPC.RECORDCOUNT DO
        BEGIN
         IF DATAMODULE1.QRYUPC.RECORDCOUNT = 0 THEN
             BEGIN
             UPC := FALSE
           END;

        ENCONTRO := FALSE;
        FOR X := 1 TO SGUPC.ROWCOUNT -2 DO
        BEGIN

          IF  ((TRIM(SGUPC.CELLS[2,X]) = TRIM(DATAMODULE1.QRYUPCTIP_DOCUMENTO_BEN.VALUE)) AND  (TRIM(SGUPC.CELLS[3,X]) = TRIM(DATAMODULE1.QRYUPCNUM_DOCUMENTO_BEN.VALUE))) THEN
          BEGIN
          ENCONTRO := TRUE;
          END;
        END;
        IF ENCONTRO = FALSE THEN
        BEGIN
        EDADUPC := (FRMPRINCIPAL.EDAD(DATETOSTR(DATAMODULE1.QRYUPCFEC_NACIMIENTO.VALUE)));
            IF EDADUPC < 0 THEN
             EDADUPC := 0;

        DATAMODULE1.QRYDETALLEUPC.CLOSE;
        DATAMODULE1.QRYDETALLEUPC.SQL.CLEAR;
        DATAMODULE1.QRYDETALLEUPC.SQL.ADD('SELECT DET_PAGO_UPC_ADICIONAL.*  FROM DET_PAGO_UPC_ADICIONAL  WHERE  PER_COTIZACION = :"PERIODO" AND  AFI_TIP_DOC_ADICIONAL = :"TIPO" AND AFI_NUM_DOC_ADICIONAL = :"NUMERO"');
        DATAMODULE1.QRYDETALLEUPC.Parameters[0].VALUE := EDTPERIODO.TEXT;
        DATAMODULE1.QRYDETALLEUPC.Parameters[1].VALUE := TRIM(DATAMODULE1.QRYUPCTIP_DOCUMENTO_BEN.VALUE);
        DATAMODULE1.QRYDETALLEUPC.Parameters[2].VALUE := TRIM(DATAMODULE1.QRYUPCNUM_DOCUMENTO_BEN.VALUE);
        DATAMODULE1.QRYDETALLEUPC.OPEN;
        IF DATAMODULE1.QRYDETALLEUPC.RECORDCOUNT = 0 THEN
           BEGIN
        SGUPC.ROWCOUNT := SGUPC.ROWCOUNT +1;
        SGUPC.CELLS[0,SGUPC.ROWCOUNT -2] := DATAMODULE1.QRYUPCTIP_DOCUMENTO_COT.VALUE;
        SGUPC.CELLS[1,SGUPC.ROWCOUNT -2] := DATAMODULE1.QRYUPCNUM_DOCUMENTO_COT.VALUE;
        SGUPC.CELLS[2,SGUPC.ROWCOUNT -2] := DATAMODULE1.QRYUPCTIP_DOCUMENTO_BEN.VALUE;
        SGUPC.CELLS[3,SGUPC.ROWCOUNT -2] := DATAMODULE1.QRYUPCNUM_DOCUMENTO_BEN.VALUE;
        SGUPC.CELLS[4,SGUPC.ROWCOUNT -2] := DATAMODULE1.QRYUPCPRI_APELLIDO.VALUE + ' ' + DATAMODULE1.QRYUPCSEG_APELLIDO.VALUE + ' ' + DATAMODULE1.QRYUPCPRI_NOMBRE.VALUE + ' ' + DATAMODULE1.QRYUPCSEG_NOMBRE.VALUE;
        SGUPC.CELLS[5,SGUPC.ROWCOUNT -2] := DATAMODULE1.QRYUPCCOD_SEXO.VALUE;
        SGUPC.CELLS[6,SGUPC.ROWCOUNT -2] := INTTOSTR(EDADUPC);
           IF EDTVALUPC.TEXT > '0' THEN
           BEGIN
            SGUPC.CELLS[8,SGUPC.ROWCOUNT -2] := 'P';
            END
           ELSE
           SGUPC.CELLS[8,SGUPC.ROWCOUNT -2] := 'C';

        END;
        IF  SGUPC.CELLS[0,SGUPC.ROWCOUNT -2] <> '' THEN
          BEGIN

         ANO:=(FORMATDATETIME('YYYY',STRTODATE('01/' + EDTPERIODO.TEXT)));


          // GENERAR EL VALOR   DE LA  UPC A  PAGAR
        DATAMODULE1.QRYVALORESUPC.CLOSE;
        DATAMODULE1.QRYVALORESUPC.SQL.CLEAR;
        DATAMODULE1.QRYVALORESUPC.SQL.ADD('SELECT VAL_ESTRUCTURA_COST, INI_GRUPO_ETA, FIN_GRUPO_ETA, SEXO_GRUPO_ETA,((VAL_ESTRUCTURA_COST * VAL_UPC_DIA_NORMAL)*30) AS VALOR_NORMAL, (((PYP/12))) AS PROMOCION,SOL');
        DATAMODULE1.QRYVALORESUPC.SQL.ADD(' FROM GRUPOS_ETAREOS,ESTRUCTURA_COSTOS,VALORESANULESCOMP  WHERE GRUPOS_ETAREOS.COD_GRUPO_ETA = ESTRUCTURA_COSTOS.COD_GRUPO_ETA AND');
        DATAMODULE1.QRYVALORESUPC.SQL.ADD(' ANO_VAL_ESTRUCTURA_COST = ANO  AND ANO_VAL_ESTRUCTURA_COST = :"FECHA" AND');
	DATAMODULE1.QRYVALORESUPC.SQL.ADD('(INI_GRUPO_ETA <= :"EDAD" AND FIN_GRUPO_ETA >= :"EDAD1")');
        DATAMODULE1.QRYVALORESUPC.Parameters[0].VALUE :=  StrToDateTime('01/01/'+(FORMATDATETIME('YYYY',STRTODATE('01/' + EDTPERIODO.TEXT))));
        DATAMODULE1.QRYVALORESUPC.Parameters[1].VALUE := EDADUPC;
        DATAMODULE1.QRYVALORESUPC.Parameters[2].VALUE := EDADUPC;
        DATAMODULE1.QRYVALORESUPC.OPEN;
           IF  DATAMODULE1.QRYVALORESUPC.RECORDCOUNT = 1 THEN
            BEGIN
             SGUPC.CELLS[7,SGUPC.ROWCOUNT -2] := FLOATTOSTR(((((DATAMODULE1.QRYVALORESUPCVALOR_NORMAL.VALUE + DATAMODULE1.QRYVALORESUPCPROMOCION.VALUE)* DATAMODULE1.QRYVALORESUPCSOL.VALUE))+ (DATAMODULE1.QRYVALORESUPCVALOR_NORMAL.VALUE + DATAMODULE1.QRYVALORESUPCPROMOCION.VALUE)));
             SGUPC.CELLS[7,SGUPC.ROWCOUNT -2] := FLOATTOSTR(ROUNDTO(STRTOINT(SGUPC.CELLS[7,SGUPC.ROWCOUNT -2]),0));
            // SI EL NUMERO DE REGISTROS ES MAYO DE 1
            END
            ELSE   IF  DATAMODULE1.QRYVALORESUPC.RECORDCOUNT > 1 THEN
                   BEGIN
                     IF DATAMODULE1.QRYVALORESUPCSEXO_GRUPO_ETA.VALUE = 'N' THEN
                     BEGIN
                          FOR X := 0 TO DATAMODULE1.QRYVALORESUPC.RECORDCOUNT DO
                          BEGIN
                                IF (EDADUPC = DATAMODULE1.QRYVALORESUPCINI_GRUPO_ETA.VALUE) THEN
                                BEGIN
                                  IF STRTOINT(ANO) <= 1999 THEN
                                  BEGIN
                                SGUPC.CELLS[7,SGUPC.ROWCOUNT -2] := FLOATTOSTR(((((DATAMODULE1.QRYVALORESUPCVALOR_NORMAL.VALUE )* DATAMODULE1.QRYVALORESUPCSOL.VALUE))+ (DATAMODULE1.QRYVALORESUPCVALOR_NORMAL.VALUE)));
                                SGUPC.CELLS[7,SGUPC.ROWCOUNT -2] := FLOATTOSTR(ROUNDTO(STRTOINT(SGUPC.CELLS[7,SGUPC.ROWCOUNT -2]),0));
                                END
                                ELSE IF STRTOINT(ANO) > 1999 THEN
                                  BEGIN
                                SGUPC.CELLS[7,SGUPC.ROWCOUNT -2] := FLOATTOSTR(((((DATAMODULE1.QRYVALORESUPCVALOR_NORMAL.VALUE + DATAMODULE1.QRYVALORESUPCPROMOCION.VALUE)* DATAMODULE1.QRYVALORESUPCSOL.VALUE))+ (DATAMODULE1.QRYVALORESUPCVALOR_NORMAL.VALUE + DATAMODULE1.QRYVALORESUPCPROMOCION.VALUE)));
                                SGUPC.CELLS[7,SGUPC.ROWCOUNT -2] := FLOATTOSTR(ROUNDTO(STRTOINT(SGUPC.CELLS[7,SGUPC.ROWCOUNT -2]),0));
                                  END;

                                END;
                                 DATAMODULE1.QRYVALORESUPC.FINDNEXT;
                          END;
                     END
                     ELSE    IF DATAMODULE1.QRYVALORESUPCSEXO_GRUPO_ETA.VALUE <> 'N' THEN
                           BEGIN
                              FOR X := 0 TO DATAMODULE1.QRYVALORESUPC.RECORDCOUNT DO
                              BEGIN
                                 IF (DATAMODULE1.QRYUPCCOD_SEXO.VALUE = DATAMODULE1.QRYVALORESUPCSEXO_GRUPO_ETA.VALUE) THEN
                                 BEGIN
                                 IF STRTOINT(ANO) <= 1999 THEN
                                  BEGIN
                                 SGUPC.CELLS[7,SGUPC.ROWCOUNT -2] := FLOATTOSTR(((((DATAMODULE1.QRYVALORESUPCVALOR_NORMAL.VALUE)* DATAMODULE1.QRYVALORESUPCSOL.VALUE))+ (DATAMODULE1.QRYVALORESUPCVALOR_NORMAL.VALUE )));
                                 SGUPC.CELLS[7,SGUPC.ROWCOUNT -2] := FLOATTOSTR(ROUNDTO(STRTOINT(SGUPC.CELLS[7,SGUPC.ROWCOUNT -2]),0));
                                 END
                                 ELSE  IF STRTOINT(ANO) > 1999 THEN
                                  BEGIN
                                  SGUPC.CELLS[7,SGUPC.ROWCOUNT -2] := FLOATTOSTR(((((DATAMODULE1.QRYVALORESUPCVALOR_NORMAL.VALUE + DATAMODULE1.QRYVALORESUPCPROMOCION.VALUE)* DATAMODULE1.QRYVALORESUPCSOL.VALUE))+ (DATAMODULE1.QRYVALORESUPCVALOR_NORMAL.VALUE + DATAMODULE1.QRYVALORESUPCPROMOCION.VALUE)));
                                  SGUPC.CELLS[7,SGUPC.ROWCOUNT -2] := FLOATTOSTR(ROUNDTO(STRTOINT(SGUPC.CELLS[7,SGUPC.ROWCOUNT -2]),0));
                                  END;
                                 END;
                                 DATAMODULE1.QRYVALORESUPC.FINDNEXT;
                              END;
                        END;
            END;
            END;
        DATAMODULE1.QRYUPC.FINDNEXT;
        END;
        END;

        //SHOWMESSAGE(LowerCase('EL AFILIADO  TIENE' + INTTOSTR(DATAMODULE1.QRYUPC.RECORDCOUNT) + '  AFILIADOS ADICIONALES');

        UPC := TRUE;
        END;
    END;

END;

PROCEDURE Tfrmcorreciones.MSPERPRESENTACIONEXIT(SENDER: TOBJECT);
BEGIN
IF CBTIPODECLARACION.ITEMINDEX >= 0 THEN
   BEGIN
   FRMPLANILLAS.PCENCABEZADO.ACTIVEPAGE := TABSHEET2;
   END;
END;



PROCEDURE Tfrmcorreciones.EDTCOTIZACIONOBLIGATORIOEXIT(SENDER: TOBJECT);

BEGIN
   {IF EDTCOTIZACIONOBLIGATORIO.TEXT > '0' THEN
    BEGIN
        IF STRTOINT(EDTCOTIZACIONOBLIGATORIO.TEXT) <> COTIZACION THEN
        BEGIN
        EDTIGRESOBASECOTIZACION.TEXT :=   FLOATTOSTR(ROUNDTO((STRTOINT(EDTCOTIZACIONOBLIGATORIO.TEXT)/ 0.12),0));
        EDTTOTALPAGADOAFILIADO.TEXT :=  FLOATTOSTR(ROUNDTO(STRTOINT(EDTCOTIZACIONOBLIGATORIO.TEXT),0));
         IF  (EDTSALARIOBASE.TEXT = '0') OR (EDTSALARIOBASE.TEXT = '') THEN
           BEGIN
           EDTSALARIOBASE.TEXT := EDTIGRESOBASECOTIZACION.TEXT;
           END;
        END;
        //******NOVEDAD 166
        estadonov166:=FRMCORRECIONES.novedad166(cbtipodocafiliado.Text,edtnumeroducafiliado.Text); //****
        //******NOVEDAD 166
    END;}

 if edtsalariobase.Text = '' then
 edtsalariobase.Text := '0';

  IF (GLSALARIOMINIMO * 25) < (ROUNDTO((((strtofloat(EDTCOTIZACIONOBLIGATORIO.text)/0.12))),3)) THEN
   begin
   EDTCOTIZACIONOBLIGATORIO.setfocus;
   SHOWMESSAGE(LowerCase('La  cotizacion Obligatoria No puede Ser Mayor a 25 salarios Minimos'));
   exit;
   end
   else
   if  estado_pago = 'IBC' then
   begin
    if cksln.Checked = false then
    begin
    IF MESSAGEDLG (LowerCase(' La  cotizacion de los afiliados ')+ LowerCase(cbtipocotizante.Text)+ LowerCase(' Esta por  debajo de lo establecido por la ley') + char(13)+ LowerCase(' �  Esta  seguro  que paga  esta  cotizacion ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRno THEN
    BEGIN
      EDTCOTIZACIONOBLIGATORIO.setfocus;
      exit;
    end
    else
    begin
      edtvalupc.setfocus;
    end;
    end
    else
	begin
	  edtvalupc.setfocus;
	end;
   end;

   //NUEVOS
     DATAMODULE1.qrydiasafil.Close;
     DATAMODULE1.qrydiasafil.Parameters[0].Value := STRTODATE('01' + '/' + EDTPERIODO.Text );
     DATAMODULE1.qrydiasafil.Parameters[1].Value := CBTIPODOCAFILIADO.Text;
     DATAMODULE1.qrydiasafil.Parameters[2].Value := EDTNUMERODUCAFILIADO.Text;
     DATAMODULE1.qrydiasafil.Open;
     IF DATAMODULE1.qrydiasafil.RecordCount > 0 THEN
     BEGIN
      IF (ABS(DATAMODULE1.qrydiasafilNODIAS.Value) < 30) THEN
        EDDIAS.Text := INTTOSTR(ABS(DATAMODULE1.qrydiasafilNODIAS.Value));
     END;
   //NUEVOS

       IF DATAMODULE1.QRYAFILIADOSCOD_MODALIDAD_TRA.VALUE = 'N' THEN
       begin
	    edtigresobasecotizacion.Text := FloatToStr(ROUNDTO((( (strtofloat(EDTCOTIZACIONOBLIGATORIO.text)/DATAMODULE1.QryModalidadPOR_COTIZACION.Value))),3));
	    if  strtofloat(edtsalariobase.Text) < strtofloat(edtigresobasecotizacion.Text) then
	    begin
	    //**edtsalariobase.Text := edtigresobasecotizacion.Text;
	    end;
       end
       else
       begin
       if edtcotizacionobligatorio.Text<>'' then
       BEGIN
           IF novedad166(cbtipodocafiliado.Text,edtnumeroducafiliado.Text)= 'A' then
             edtigresobasecotizacion.Text := FloatToStr(ROUNDTO((( (strtofloat(EDTCOTIZACIONOBLIGATORIO.text)/0.01))),3))
           ELSE
              edtigresobasecotizacion.Text := FloatToStr(ROUNDTO((( (strtofloat(EDTCOTIZACIONOBLIGATORIO.text)/DATAMODULE1.QryModalidadPOR_COTIZACION.Value))),3))
       END
       else
       edtigresobasecotizacion.Text :='0';
	    if  strtofloat(edtsalariobase.Text) < strtofloat(edtigresobasecotizacion.Text) then
	    begin
	    //**edtsalariobase.Text := edtigresobasecotizacion.Text;
	    end;
       end;

END;

PROCEDURE Tfrmcorreciones.BUTTON3CLICK(SENDER: TOBJECT);
BEGIN
GLPROCESO := 'CORRECIONES';
FRMPRINCIPAL.SB.PANELS[1].TEXT := 'PROCESO ABIERTO ACTUAL :'+ GLPROCESO;
FRMEMPRESAS:=TFRMEMPRESAS.CREATE(APPLICATION);
TRY
FRMEMPRESAS.SHOW;

//FINALLY
EXCEPT
FRMEMPRESAS.FREE;
END;

END;

PROCEDURE Tfrmcorreciones.BUTTON4CLICK(SENDER: TOBJECT);
BEGIN
GLPROCESO := 'CORRECIONES';
FRMPRINCIPAL.SB.PANELS[1].TEXT := 'PROCESO ABIERTO ACTUAL :'+ GLPROCESO;
FRMAFILIADOS:=TFRMAFILIADOS.CREATE(APPLICATION);
TRY
FRMAFILIADOS.SHOW;
//FINALLY
EXCEPT
FRMAFILIADOS.FREE;
END;

END;

PROCEDURE Tfrmcorreciones.SALARIOMINIMO;
VAR ANO : STRING;
    FECHA : TDATE;
BEGIN
     FECHA  := STRTODATE('01/' + EDTPERIODO.TEXT);
     ANO:=(FORMATDATETIME('YYYY',FECHA));
     DATAMODULE1.QRYVALORESCOMPENSACION.CLOSE;
     DATAMODULE1.QRYVALORESCOMPENSACION.Parameters[0].VALUE := STRTODATE('01/01/'+ ANO);
     DATAMODULE1.QRYVALORESCOMPENSACION.OPEN;
     GLSALARIOMINIMO := DATAMODULE1.QRYVALORESCOMPENSACIONSAL_MINIMO.VALUE;

END;



PROCEDURE Tfrmcorreciones.APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);
BEGIN

  IF MSG.WPARAM = VK_RETURN THEN
       BEGIN
        IF ((SCREEN.ACTIVECONTROL) IS TCOMBOBOX) THEN
             MSG.WPARAM := VK_TAB;
            IF (((SCREEN.ACTIVECONTROL) IS TEDIT)) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TDBEDIT) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TDATETIMEPICKER) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TMASKEDIT) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TDBLOOKUPCOMBOBOX) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TStringGrid) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TCheckBox) THEN
                MSG.WPARAM := VK_TAB;
       END;
  END;
PROCEDURE Tfrmcorreciones.CBTIPODECLARACIONEXIT(SENDER: TOBJECT);

BEGIN


IF CBTIPODECLARACION.ITEMINDEX >= 0 THEN
BEGIN
EDTPERIODO.CLEAR;
DTFECHAPAGO.DATE := STRTODATE( INTTOSTR(STRTOINT(GLDIA)+1) + '/' + MSPERPRESENTACION.TEXT);

        IF CBTIPODECLARACION.ITEMINDEX = 0 THEN
        BEGIN
        MSPERPRESENTACION.ENABLED := FALSE;
        MSPERPRESENTACION.TEXT := GLPRESENTACION;
        EDTPERIODO.ENABLED := FALSE;
        EDTPERIODO.TEXT := GLPRESENTACION;
        END
        ELSE
                IF CBTIPODECLARACION.ITEMINDEX = 1 THEN
                BEGIN
                EDTPERIODO.CLEAR;
                MSPERPRESENTACION.ENABLED := FALSE;
                MSPERPRESENTACION.TEXT := GLPRESENTACION;
                EDTPERIODO.ENABLED := TRUE;
                END;

END
ELSE IF CBTIPODECLARACION.ITEMINDEX = -1 THEN
     BEGIN
     SHOWMESSAGE(LowerCase('SELECCIONE  EL TIPO DE  DECLARACION'));
     CBTIPODECLARACION.SETFOCUS;
    END;


END;

PROCEDURE Tfrmcorreciones.EDTVALLICENCIAKEYDOWN(SENDER: TOBJECT;
  VAR KEY: WORD; SHIFT: TSHIFTSTATE);
BEGIN
IF EDTVALINCAPACIDAD.TEXT = '' THEN
  BEGIN
  EDTVALINCAPACIDAD.TEXT := '0';
  END;
END;

PROCEDURE Tfrmcorreciones.EDTTOTALPAGADOAFILIADOEXIT(SENDER: TOBJECT);
BEGIN
IF EDTSALARIOBASE.TEXT = '' THEN
    EDTSALARIOBASE.TEXT := '0';
 IF  EDTVALORNETO.TEXT = '' THEN
     EDTVALORNETO.TEXT := '0';
 IF  EDTIGRESOBASECOTIZACION.TEXT = '' THEN
     EDTIGRESOBASECOTIZACION.TEXT := '0';
  IF EDTCOTIZACIONOBLIGATORIO.TEXT = '' THEN
    EDTCOTIZACIONOBLIGATORIO.TEXT := '0';
 IF  EDTAUTINCAPACIDAD.TEXT = '' THEN
     EDTAUTINCAPACIDAD.TEXT := '0';
 IF  EDTVALINCAPACIDAD.TEXT = '' THEN
     EDTVALINCAPACIDAD.TEXT := '0';
 IF EDTNOAUTLICENCIA.TEXT = '' THEN
    EDTNOAUTLICENCIA.TEXT := '0';
 IF  EDTVALLICENCIA.TEXT = '' THEN
     EDTVALLICENCIA.TEXT := '0';
 IF  EDTVALUPC.TEXT = '' THEN
     EDTVALUPC.TEXT := '0';
 IF  EDTTOTALPAGADOAFILIADO.TEXT = '' THEN
     EDTTOTALPAGADOAFILIADO.TEXT := '0';
 EDTTOTALPAGADOAFILIADO.TEXT := FLOATTOSTR((STRTOINT(EDTCOTIZACIONOBLIGATORIO.TEXT) + STRTOINT(EDTVALUPC.TEXT)) -(STRTOINT(EDTVALINCAPACIDAD.TEXT)-STRTOINT(EDTVALLICENCIA.TEXT)));
END;

PROCEDURE Tfrmcorreciones.EDTVALINCAPACIDADENTER(SENDER: TOBJECT);
VAR I,Y,J,X : INTEGER;
BEGIN
  IF EDTVALINCAPACIDAD.TEXT > '0' THEN
  BEGIN
         IF MESSAGEDLG(LowerCase(' DESEA  MODIFICAR  EL  VALOR  DE LA  INCAPACIDAD'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
         BEGIN
          X := 1;
         EDTVALINCAPACIDAD.TEXT := '0';
         EDTAUTINCAPACIDAD.TEXT := '0';
         EDTVALINCAPACIDAD.SETFOCUS;
         EDTVALLICENCIA.ENABLED := TRUE;
         CKIGE.CHECKED := FALSE;

             WHILE X <= SGINCAPACIDADES.ROWCOUNT -2 DO
             BEGIN
                FOR I := 1 TO SGINCAPACIDADES.ROWCOUNT -2 DO
                BEGIN
                       IF  ((TRIM(SGINCAPACIDADES.CELLS[10,I]) = TRIM(CBTIPODOCAFILIADO.TEXT)) AND  (TRIM(SGINCAPACIDADES.CELLS[11,I]) = TRIM(EDTNUMERODUCAFILIADO.TEXT))) THEN
                       BEGIN
                                FOR Y:= I +1 TO SGINCAPACIDADES.ROWCOUNT -1 DO
                                BEGIN
                                        FOR J := 0 TO 11 DO
                                        SGINCAPACIDADES.CELLS[J,Y -1] := SGINCAPACIDADES.CELLS[J,Y];
                                END;
                         X := 1;
                       END
                       ELSE INC (X);

                END;

             END;

             END;
        END;
       // ELSE  AGREGAR.SETFOCUS;
 // END;
END;

PROCEDURE Tfrmcorreciones.EDTVALLICENCIAENTER(SENDER: TOBJECT);
VAR I,Y,J,X : INTEGER;
BEGIN
  IF EDTVALLICENCIA.TEXT > '0' THEN
  BEGIN
         IF MESSAGEDLG(LowerCase(' DESEA  MODIFICAR  EL  VALOR  DE LA  LICENCIA'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
         BEGIN
          X := 1;
         EDTVALLICENCIA.TEXT := '0';
         EDTVALLICENCIA.TEXT := '0';
         EDTVALLICENCIA.SETFOCUS;
         EDTVALINCAPACIDAD.ENABLED := TRUE;
         CKLMA.CHECKED := FALSE;

             WHILE X <= SGINCAPACIDADES.ROWCOUNT -2 DO
             BEGIN
                FOR I := 1 TO SGINCAPACIDADES.ROWCOUNT -2 DO
                BEGIN
                       IF  ((TRIM(SGINCAPACIDADES.CELLS[10,I]) = TRIM(CBTIPODOCAFILIADO.TEXT)) AND  (TRIM(SGINCAPACIDADES.CELLS[11,I]) = TRIM(EDTNUMERODUCAFILIADO.TEXT))) THEN
                       BEGIN
                                FOR Y:= I +1 TO SGINCAPACIDADES.ROWCOUNT -1 DO
                                BEGIN
                                        FOR J := 0 TO 11 DO
                                        SGINCAPACIDADES.CELLS[J,Y -1] := SGINCAPACIDADES.CELLS[J,Y];
                                END;
                         X := 1;
                       END
                       ELSE INC (X);

                END;

             END;

             END;
        END;
       // ELSE  AGREGAR.SETFOCUS;
 // END;
END;

PROCEDURE Tfrmcorreciones.CERRAR1CLICK(SENDER: TOBJECT);
BEGIN
FRMPLANILLAS.CLOSE;
END;

PROCEDURE Tfrmcorreciones.CONSULTAS1CLICK(SENDER: TOBJECT);
BEGIN
        FRMPAGOSAFILIADOS:=TFRMPAGOSAFILIADOS.CREATE(APPLICATION);
        TRY
        FRMPAGOSAFILIADOS.SHOW;
        //FINALLY
        EXCEPT
        FRMPAGOSAFILIADOS.FREE;
        END;

END;

PROCEDURE Tfrmcorreciones.PAGOSPOREMPRESA1CLICK(SENDER: TOBJECT);
BEGIN
        FRMPAGOSEMPRESA:=TFRMPAGOSEMPRESA.CREATE(APPLICATION);
        TRY
        FRMPAGOSEMPRESA.SHOW;
        //FINALLY
        EXCEPT
        FRMPAGOSEMPRESA.FREE;
        END;

END;

PROCEDURE Tfrmcorreciones.EDTSALDOANTERIOREXIT(SENDER: TOBJECT);
BEGIN
recalcular;
END;

PROCEDURE Tfrmcorreciones.EDTUPCEXIT(SENDER: TOBJECT);
BEGIN
//EDTTOTALPAGADO.TEXT := FORMAT('%10.0m',[ROUNDTO((STRTOINT(EDTAPORTEINTETERES.TEXT)+ STRTOINT(EDTUPC.TEXT)) - STRTOINT(EDTSALDOANTERIOR.TEXT),0)])
EDTTOTALPAGADO.TEXT := FLOATTOSTR(ROUNDTO((STRTOINT(EDTAPORTEINTETERES.TEXT)+ STRTOINT(EDTUPC.TEXT)) - STRTOINT(EDTSALDOANTERIOR.TEXT),0))
END;

PROCEDURE Tfrmcorreciones.EDTVALUPCENTER(SENDER: TOBJECT);
VAR X,I,Y,J : INTEGER;
BEGIN

  IF EDTVALUPC.TEXT > '0' THEN
  BEGIN
          IF MESSAGEDLG(LowerCase('DESEA  MODIFICAR EL VALOR DE LA UPC ADICIONAL'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
          BEGIN
          X := 1;
          EDTVALUPC.TEXT := '0';
          EDTVALUPC.SETFOCUS;
             WHILE X <= SGUPC.ROWCOUNT -2 DO
             BEGIN
                FOR I := 1 TO SGUPC.ROWCOUNT -2 DO
                BEGIN
                       IF  ((TRIM(SGUPC.CELLS[0,I]) = TRIM(CBTIPODOCAFILIADO.TEXT)) AND  (TRIM(SGUPC.CELLS[1,I]) = TRIM(EDTNUMERODUCAFILIADO.TEXT))) THEN
                       BEGIN
                                FOR Y:= I +1 TO SGUPC.ROWCOUNT -1 DO
                                BEGIN
                                        FOR J := 0 TO 11 DO
                                        SGUPC.CELLS[J,Y -1] := SGUPC.CELLS[J,Y];
                                END;
                         X := 1;
                       END
                       ELSE INC (X);

                END;
             END;
          END;
  END;
END;

PROCEDURE Tfrmcorreciones.AFILIADOSEMPRESA1CLICK(SENDER: TOBJECT);
BEGIN
       FRMAFILIEMPRESA:=TFRMAFILIEMPRESA.CREATE(APPLICATION);
        TRY
        FRMAFILIEMPRESA.SHOW;
        //FINALLY
        EXCEPT
        FRMAFILIEMPRESA.FREE;
        END;
END;

PROCEDURE Tfrmcorreciones.DTFECHAPAGOENTER(SENDER: TOBJECT);
BEGIN
     IF CBTIPODECLARACION.ITEMINDEX = -1 THEN
     BEGIN
     SHOWMESSAGE(LowerCase('SELECCIONE  EL TIPO DE  DECLARACION'));
     CBTIPODECLARACION.SETFOCUS;
     END;

END;

PROCEDURE Tfrmcorreciones.CBTIPODECLARACIONENTER(SENDER: TOBJECT);
BEGIN
IF (CBTIPODOCEMPRESA.ITEMINDEX = -1) AND ((EDNUMERO.TEXT = '0') OR   (EDNUMERO.TEXT = ' ')) THEN
  BEGIN
  SHOWMESSAGE(LowerCase('DIGITE  LA  EMPRESA  PARA  CONTINUAR'));
  CBTIPODOCEMPRESA.SETFOCUS;
  END;
END;

PROCEDURE Tfrmcorreciones.BTNBORRARPLACLICK(SENDER: TOBJECT);
VAR I : Integer;
BEGIN
IF MESSAGEDLG(LowerCase('DESEA  BORRAR LA PLANILLA  DE  AUTOLIQUIDACION ?'), MTCONFIRMATION, [MBYES, MBNO], 1) = MRYES THEN
  BEGIN
  TRY
         // BORRAR EL DETALLE
         DATAMODULE1.DTBDATAMEC.BeginTrans;
         DATAMODULE1.QRYDETALLE.CLOSE;
         DATAMODULE1.QRYDETALLE.SQL.CLEAR;
         DATAMODULE1.QRYDETALLE.SQL.ADD('DELETE FROM  DBO.DET_PLANILLA_AUTOLIQUIDACION  WHERE NUM_PLANILLA = :"PLANILLA"');
         DATAMODULE1.QRYDETALLE.Parameters[0].VALUE := EDTPLANILLA.TEXT;
         DATAMODULE1.QRYDETALLE.EXECSQL;

         // BORRAR  NOTAS  DE AUTOLIQUIDACION

         DATAMODULE1.qrynotasautoliquidacion.CLOSE;
         DATAMODULE1.qrynotasautoliquidacion.SQL.CLEAR;
         DATAMODULE1.qrynotasautoliquidacion.SQL.ADD('DELETE FROM NOTAS_AUTOLIQUIDACION WHERE NUM_PLANILLA = :"PLANILLA"');
         DATAMODULE1.qrynotasautoliquidacion.Parameters[0].VALUE := EDTPLANILLA.TEXT;
         DATAMODULE1.qrynotasautoliquidacion.EXECSQL;

         DATAMODULE1.qrynotasautoliquidacion.CLOSE;
         DATAMODULE1.qrynotasautoliquidacion.SQL.CLEAR;
         DATAMODULE1.qrynotasautoliquidacion.SQL.ADD('SELECT  * FROM NOTAS_AUTOLIQUIDACION WHERE MUN_COMP_DES = :"PLANILLA"');
         DATAMODULE1.qrynotasautoliquidacion.Parameters[0].VALUE := EDTPLANILLA.TEXT;
         DATAMODULE1.qrynotasautoliquidacion.Open;
             IF DATAMODULE1.QRYDETINCAPACIDAD.RecordCount > 0 THEN
             BEGIN
             DATAMODULE1.qrynotasautoliquidacion.Edit;
             DATAMODULE1.qrynotasautoliquidacionNUM_COMP_DES.Value := '';
             DATAMODULE1.qrynotasautoliquidacionFEC_DESCUENTO.Value := STRTODATE('01/01/1900');
             DATAMODULE1.qrynotasautoliquidacionTIP_DESCUENTO.Value := '';
             END;

         DATAMODULE1.qrydetallepago.CLOSE;
         DATAMODULE1.qrydetallepago.SQL.CLEAR;
         DATAMODULE1.qrydetallepago.SQL.ADD('DELETE FROM DET_PAGO_AUTOLIQUIDACIONES WHERE NUM_PLANILLA = :"PLANILLA"');
         DATAMODULE1.qrydetallepago.Parameters[0].VALUE := EDTPLANILLA.TEXT;
         DATAMODULE1.qrydetallepago.EXECSQL;



          DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
          DATAMODULE1.QRYDETINCAPACIDAD.SQL.CLEAR;
          DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('SELECT * FROM DET_INCAPACIDAD WHERE NUM_COMPROBANTE = :"NUMERO"');
          DATAMODULE1.QRYDETINCAPACIDAD.Parameters[0].VALUE := TRIM(EDTPLANILLA.TEXT);
          DATAMODULE1.QRYDETINCAPACIDAD.OPEN;
          IF DATAMODULE1.QRYDETINCAPACIDAD.RecordCount > 0 THEN
          BEGIN
             FOR I := 0 TO DATAMODULE1.QRYDETINCAPACIDAD.RecordCount DO
             BEGIN
             DATAMODULE1.QRYDETINCAPACIDAD.Edit;
             DATAMODULE1.qrydetincapacidadTIP_PAGO_INCAP.Value := '';
             DATAMODULE1.qrydetincapacidadFEC_PAGO_INCAP.Value := STRTODATE('01/01/1900');
             DATAMODULE1.qrydetincapacidadNUM_COMPROBANTE.Value := '0';
             DATAMODULE1.qrydetincapacidadPER_PRESENTADO.Value := ' ';
             DATAMODULE1.qrydetincapacidadEST_DET_PLANILLA.Value := '';
             DATAMODULE1.qrydetincapacidadVAL_DESCONTADO.Value := 0;
             DATAMODULE1.QRYDETINCAPACIDAD.Post;
             DATAMODULE1.QRYDETINCAPACIDAD.FindNext;
             END;
          END;
          DATAMODULE1.QRYAUTOLIQUIDACION.CLOSE;
          DATAMODULE1.QRYAUTOLIQUIDACION.SQL.CLEAR;
          DATAMODULE1.QRYAUTOLIQUIDACION.SQL.ADD('DELETE  FROM AUTOLIQUIDACION  WHERE  NUM_PLANILLA = :"PLANILLA"');
          DATAMODULE1.QRYAUTOLIQUIDACION.Parameters[0].VALUE := FRMPLANILLAS.EDTPLANILLA.TEXT;
          DATAMODULE1.QRYAUTOLIQUIDACION.EXECSQL;
          IF MESSAGEDLG(LowerCase('confirmar  el borrado de la  planilla?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
          BEGIN
          DATAMODULE1.DTBDATAMEC.CommitTrans;
          LIMPIAR_PLANILLA;
          edtplanilla.SetFocus;
          end
          else
              begin
               DATAMODULE1.DTBDATAMEC.RollbackTrans;
               SHOWMESSAGE(LowerCase('La  planilla  de autoliquidaciones  no  fue  borrada'));
               edtplanilla.SetFocus;
              end;


            EXCEPT
           DATAMODULE1.DTBDATAMEC.RollbackTrans;
           SHOWMESSAGE(LowerCase('NO SE PUEDE  BORRAR LA  PLANILLA LA AUTOLIQUIDACION'));
           LIMPIAR_PLANILLA;

           RAISE;
           END;

 END;
END;
procedure Tfrmcorreciones.TabSheet1Enter(Sender: TObject);
begin
 EDTPLANILLA.SETFOCUS;
end;

procedure Tfrmcorreciones.RETIRAR_USUARIOS;
var i,x : Integer;
begin
DataModule1.qrydetalle.Close;
DataModule1.qrydetalle.sql.Clear;
DataModule1.qrydetalle.sql.add ('SELECT * FROM DBO.DET_PLANILLA_AUTOLIQUIDACION WHERE (NOV_RET = :"RET" OR NOV_TAA = :"TAA") AND NUM_PLANILLA = :"NUM_PLANILLA"');
DataModule1.qrydetalle.Parameters[0].VALUE :=  'X';
DataModule1.qrydetalle.Parameters[1].VALUE :=  'X';
DataModule1.qrydetalle.Parameters[2].VALUE := edtplanilla.text;

     DataModule1.qrydetalle.open;
     if DataModule1.qrydetalle.RecordCount > 0 then
     begin
        IF MESSAGEDLG(LowerCase('Esta  PLanilla  de  autoliquidaciones  tiene  afiliados  para  retirar desea retirarlos?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
        BEGIN
           for i := 1 to DataModule1.qrydetalle.RecordCount do
           begin
           DataModule1.qryautoliquidacion.Close;
           DataModule1.qryautoliquidacion.sql.Clear;
           DataModule1.qryautoliquidacion.sql.add ('SELECT * FROM AUTOLIQUIDACION WHERE NUM_PLANILLA = :"PLANILLA"');
           DataModule1.qryautoliquidacion.Parameters[0].VALUE := DataModule1.qrydetallenum_planilla.Value;
           DataModule1.qryautoliquidacion.open;
                 if   DataModule1.qryautoliquidacion.RecordCount = 1 then
                 begin
                      if DataModule1.qryautoliquidaciontip_declaracion.Value = 'D' then
                      begin
                      DataModule1.qryafiliadosempresa.Close;
                      DataModule1.qryafiliadosempresa.sql.Clear;
                      DataModule1.qryafiliadosempresa.sql.add ('SELECT * FROM AFILIADOS_EMPRESAS WHERE TIP_DOCUMENTO_AFI = :"TIPO" AND NUM_DOCUMENTO_AFI = :"NUMERO" AND FEC_EGRESO_UNI IS NULL');
                      DataModule1.qryafiliadosempresa.Parameters[0].VALUE := DataModule1.qrydetalleafi_tipo_doc.Value;
                      DataModule1.qryafiliadosempresa.Parameters[1].VALUE := DataModule1.qrydetalleafi_numero_doc.Value;
                      DataModule1.qryafiliadosempresa.open;
                           if   DataModule1.qryafiliadosempresa.RecordCount = 1 then
                           begin
                           DataModule1.qryafiliadosempresa.Close;
                           DataModule1.qryafiliadosempresa.sql.Clear;
                           DataModule1.qryafiliadosempresa.sql.add ('SELECT * FROM AFILIADOS_EMPRESAS WHERE TIP_DOCUMENTO_EMP = :"TIPOE" AND NUM_DOCUMENTO_EMP = :"EMPRESA" AND TIP_DOCUMENTO_AFI = :"TIPO" AND NUM_DOCUMENTO_AFI = :"NUMERO" AND FEC_EGRESO_UNI IS NULL');
                           DataModule1.qryafiliadosempresa.Parameters[0].VALUE := DataModule1.qryautoliquidacionemp_tipo_doc.Value;
                           DataModule1.qryafiliadosempresa.Parameters[1].VALUE := DataModule1.qryautoliquidacionemp_numero_doc.Value;
                           DataModule1.qryafiliadosempresa.Parameters[2].VALUE := DataModule1.qrydetalleafi_tipo_doc.Value;
                           DataModule1.qryafiliadosempresa.Parameters[3].VALUE := DataModule1.qrydetalleafi_numero_doc.Value;
                           DataModule1.qryafiliadosempresa.Open;
                           if DataModule1.qryafiliadosempresa.RecordCount = 1 then
                           begin
                           try
                           DataModule1.dtbdatamec.BeginTrans;
                           // cuando esta  en una   empresa
                           DataModule1.qryrelacion_afiliados.Close;
                           DataModule1.qryrelacion_afiliados.sql.Clear;
                           DataModule1.qryrelacion_afiliados.sql.add ('SELECT * FROM RELACION_AFILIADOS WHERE TIP_DOCUMENTO_COT = :"TIPO" AND NUM_DOCUMENTO_COT = :"NUMERO" AND FEC_EXCLUSION_NOV IS NULL');
                           DataModule1.qryrelacion_afiliados.Parameters[0].VALUE := DataModule1.qrydetalleafi_tipo_doc.Value;
                           DataModule1.qryrelacion_afiliados.Parameters[1].VALUE := DataModule1.qrydetalleafi_numero_doc.Value;
                           DataModule1.qryrelacion_afiliados.open;
                                if  DataModule1.qryrelacion_afiliados.RecordCount > 0 then
                                begin
                                   for x := 0 to DataModule1.qryrelacion_afiliados.RecordCount do
                                   begin
                                   DataModule1.qryafiliadoss.Close;
                                   DataModule1.qryafiliadoss.sql.Clear;
                                   DataModule1.qryafiliadoss.sql.add ('SELECT * FROM AFILIADOS WHERE TIP_DOCUMENTO = :"TIPO" AND NUM_DOCUMENTO = :"NUMERO"');
                                   DataModule1.qryafiliadoss.Parameters[0].VALUE := DataModule1.qryrelacion_afiliadostip_documento_ben.Value;
                                   DataModule1.qryafiliadoss.Parameters[1].VALUE := DataModule1.qryrelacion_afiliadosnum_documento_ben.Value;
                                   DataModule1.qryafiliadoss.open;
                                        if   DataModule1.qryafiliadoss.RecordCount > 0 then
                                        begin
                                        DataModule1.qrynovafiliados.Close;
                                        DataModule1.qrynovafiliados.sql.Clear;
                                        DataModule1.qrynovafiliados.sql.add ('INSERT INTO NOVEDADES_AFILIADOS ( NOV_CODIGO,TIP_DOCUMENTO,NUM_DOCUMENTO,COD_OFICINA,COD_REGIONAL,USU_TIPO_DOC,USU_NUMERO_DOC,FEC_NOVEDAD_AFIL,');
                                        DataModule1.qrynovafiliados.sql.add ('NOM_CAMPO,DAT_CAMPO_ANT,NOM_TABLA,DAT_CAMPO_DES,FEC_EVENTO,FEC_APLICATIVO,TIP_DOCUMENTO_EMP,NUM_DOCUMENTO_EMP,COD_SUCURSAL,NUM_PLANILLA,COD_NOVEDAD_AFIL)');
                                        DataModule1.qrynovafiliados.sql.add ('VALUES ( :"NOVEDAD",:"TIP_DOCUMENTO_BEN",:"NUM_DOCUMENTO_BEN",:"OFICINA",:"REGIONAL",:"TIPO_USUARIO",:"NUMERO_USUAIRO",:"FECHA_NOVEDAD",');
                                        DataModule1.qrynovafiliados.sql.add (':"NOMBRE_CAMPO ",:"DATO_ANTERIOR",:"TABLA",:"CAMPO",:"FECHA_NOVEDAD",:"FECHA_SISTEMA",:"TIP_DOC_EMP",:"NUM_DOC_EMP",:"COD_SUCURSAL",:"NUM_PLANILLA",'+'nov_afiliados.nextval'+')');
                                        DataModule1.qrynovafiliados.Parameters[0].VALUE := '15';
                                        DataModule1.qrynovafiliados.Parameters[1].VALUE := DataModule1.qryafiliadosstip_documento.Value;
                                        DataModule1.qrynovafiliados.Parameters[2].VALUE := DataModule1.qryafiliadossnum_documento.Value;
                                        DataModule1.qrynovafiliados.Parameters[3].VALUE := DataModule1.qryautoliquidacioncod_oficina.value;
                                        DataModule1.qrynovafiliados.Parameters[4].VALUE := DataModule1.qryautoliquidacioncod_regional.value;
                                        DataModule1.qrynovafiliados.Parameters[5].VALUE := DataModule1.qryautoliquidaciontip_doc_usuario.value;
                                        DataModule1.qrynovafiliados.Parameters[6].VALUE := DataModule1.qryautoliquidacionnum_doc_usuario.value;
                                        DataModule1.qrynovafiliados.Parameters[7].VALUE := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qrynovafiliados.Parameters[8].VALUE := '';
                                        DataModule1.qrynovafiliados.Parameters[9].VALUE := '';
                                        DataModule1.qrynovafiliados.Parameters[10].VALUE := 'AFILIADOS';
                                        DataModule1.qrynovafiliados.Parameters[11].VALUE := 'ESTADO';
                                        DataModule1.qrynovafiliados.Parameters[12].VALUE := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qrynovafiliados.Parameters[13].VALUE := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qrynovafiliados.Parameters[14].VALUE := DataModule1.qryautoliquidacionemp_tipo_doc.value;
                                        DataModule1.qrynovafiliados.Parameters[15].VALUE := DataModule1.qryautoliquidacionemp_numero_doc.value;
                                        DataModule1.qrynovafiliados.Parameters[16].VALUE := DataModule1.qryautoliquidacioncod_sucursal.value;
                                        DataModule1.qrynovafiliados.Parameters[17].VALUE := DataModule1.qryautoliquidacionnum_planilla.value;
//                                        DataModule1.qrynovafiliados.Parameters[18].VALUE := 'NOV_AFILIADOS.NEXTVAL';
                                        DataModule1.qrynovafiliados.ExecSQL;
                                        // termina  el ingreso de  la  novedad
                                        DataModule1.qrynovafiliados.close;
                                        dataModule1.qryafiliadoss.Edit;
                                        DataModule1.qryafiliadosscod_estado.value := 'I';
                                        DataModule1.qryafiliadossfec_ultima_nov.value := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qryafiliadoss.post;
                                        DataModule1.qryafiliadoss.close;
                                        DataModule1.qryrelacion_afiliados.FindNext;

                                        end  // end de  realixion afiliados
                                        else DataModule1.qryrelacion_afiliados.FindNext;


                                    end; // end del for
                                end;
                                        DataModule1.qrynovafiliados.sql.Clear;
                                        DataModule1.qrynovafiliados.sql.add ('INSERT INTO NOVEDADES_AFILIADOS ( NOV_CODIGO,TIP_DOCUMENTO,NUM_DOCUMENTO,COD_OFICINA,COD_REGIONAL,USU_TIPO_DOC,USU_NUMERO_DOC,FEC_NOVEDAD_AFIL,');
                                        DataModule1.qrynovafiliados.sql.add ('NOM_CAMPO,DAT_CAMPO_ANT,NOM_TABLA,DAT_CAMPO_DES,FEC_EVENTO,FEC_APLICATIVO,TIP_DOCUMENTO_EMP,NUM_DOCUMENTO_EMP,COD_SUCURSAL,NUM_PLANILLA,COD_NOVEDAD_AFIL)');
                                        DataModule1.qrynovafiliados.sql.add ('VALUES ( :"NOVEDAD",:"TIP_DOCUMENTO_BEN",:"NUM_DOCUMENTO_BEN",:"OFICINA",:"REGIONAL",:"TIPO_USUARIO",:"NUMERO_USUAIRO",:"FECHA_NOVEDAD",');
                                        DataModule1.qrynovafiliados.sql.add (':"NOMBRE_CAMPO ",:"DATO_ANTERIOR",:"TABLA",:"CAMPO",:"FECHA_NOVEDAD",:"FECHA_SISTEMA",:"TIP_DOC_EMP",:"NUM_DOC_EMP",:"COD_SUCURSAL",:"NUM_PLANILLA",'+'nov_afiliados.nextval'+')');
                                        if DataModule1.qrydetallenov_ret.value = 'X' then
                                        begin
                                        DataModule1.qrynovafiliados.Parameters[0].VALUE := '11';
                                        end
                                        else
                                        if DataModule1.qrydetallenov_taa.Value = 'X' then
                                        begin
                                        DataModule1.qrynovafiliados.Parameters[0].VALUE := '10';
                                        end;
                                        DataModule1.qrynovafiliados.Parameters[1].VALUE := DataModule1.qrydetalleafi_tipo_doc.Value;
                                        DataModule1.qrynovafiliados.Parameters[2].VALUE := DataModule1.qrydetalleafi_numero_doc.Value;
                                        DataModule1.qrynovafiliados.Parameters[3].VALUE := DataModule1.qryautoliquidacioncod_oficina.value;
                                        DataModule1.qrynovafiliados.Parameters[4].VALUE := DataModule1.qryautoliquidacioncod_regional.value;
                                        DataModule1.qrynovafiliados.Parameters[5].VALUE := DataModule1.qryautoliquidaciontip_doc_usuario.value;
                                        DataModule1.qrynovafiliados.Parameters[6].VALUE := DataModule1.qryautoliquidacionnum_doc_usuario.value;
                                        DataModule1.qrynovafiliados.Parameters[7].VALUE := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qrynovafiliados.Parameters[8].VALUE := '';
                                        DataModule1.qrynovafiliados.Parameters[9].VALUE := '';
                                        DataModule1.qrynovafiliados.Parameters[10].VALUE := 'AFILIADOS_EMPRESAS';
                                        DataModule1.qrynovafiliados.Parameters[11].VALUE := 'ESTADO';
                                        DataModule1.qrynovafiliados.Parameters[12].VALUE := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qrynovafiliados.Parameters[13].VALUE := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qrynovafiliados.Parameters[14].VALUE := DataModule1.qryautoliquidacionemp_tipo_doc.value;
                                        DataModule1.qrynovafiliados.Parameters[15].VALUE := DataModule1.qryautoliquidacionemp_numero_doc.value;
                                        DataModule1.qrynovafiliados.Parameters[16].VALUE := DataModule1.qryautoliquidacioncod_sucursal.value;
                                        DataModule1.qrynovafiliados.Parameters[17].VALUE := DataModule1.qryautoliquidacionnum_planilla.value;
                                        DataModule1.qrynovafiliados.ExecSQL;
                                        DataModule1.qrynovafiliados.close;
                                        DataModule1.qryafiliadosempresa.Edit;
                                        //DataModule1.DataModule1.qryafiliadossempresafec_egreso_uni.value := StrToDateTime((DataModule1.qrydetalledia_cotizados.value) + '/' + (DataModule1.qrydetalleper_cotizacion.value));
                                        DataModule1.qryafiliadosempresa.Post;
                                        DataModule1.qryafiliadosempresa.close;
                                        DataModule1.qrynovafiliados.Close;

                                        DataModule1.qryrelacion_afiliados.Close;
                                        DataModule1.qryrelacion_afiliados.sql.Clear;
                                        DataModule1.qryrelacion_afiliados.sql.add ('UPDATE RELACION_AFILIADOS  SET COD_ESTADO = :"ESTADO",FEC_EXCLUSION_NOV = :"FECHA" WHERE TIP_DOCUMENTO_COT = :"TIPO" AND NUM_DOCUMENTO_COT = :"NUMERO" AND FEC_EXCLUSION_NOV IS NULL');
                                        DataModule1.qryrelacion_afiliados.Parameters[0].VALUE :='I';
                                        DataModule1.qryrelacion_afiliados.Parameters[1].VALUE := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qryrelacion_afiliados.Parameters[2].VALUE := DataModule1.qrydetalleafi_tipo_doc.Value;
                                        DataModule1.qryrelacion_afiliados.Parameters[3].VALUE := DataModule1.qrydetalleafi_numero_doc.Value;
                                        DataModule1.qryrelacion_afiliados.ExecSQL;
                                        DataModule1.qryrelacion_afiliados.Close;

                                        DataModule1.qryafiliadosempresa.Close;
                                        DataModule1.qryafiliadosempresa.sql.Clear;
                                        DataModule1.qryafiliadosempresa.sql.add ('UPDATE  AFILIADOS_EMPRESAS SET COD_ESTADO = :"ESTADO",FEC_EGRESO_UNI = :"FECHA" WHERE TIP_DOCUMENTO_EMP = :"TIPOE" AND NUM_DOCUMENTO_EMP = :"EMPRESA" AND TIP_DOCUMENTO_AFI = :"TIPO" AND NUM_DOCUMENTO_AFI = :"NUMERO" AND FEC_EGRESO_UNI IS NULL');
                                        DataModule1.qryafiliadosempresa.Parameters[0].VALUE := 'I';
                                        DataModule1.qryafiliadosempresa.Parameters[1].VALUE := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qryafiliadosempresa.Parameters[2].VALUE := DataModule1.qryautoliquidacionEMP_TIPO_DOC.Value;
                                        DataModule1.qryafiliadosempresa.Parameters[3].VALUE := DataModule1.qryautoliquidacionemp_numero_doc.Value;
                                        DataModule1.qryafiliadosempresa.Parameters[4].VALUE := DataModule1.qrydetalleafi_tipo_doc.Value;
                                        DataModule1.qryafiliadosempresa.Parameters[5].VALUE := DataModule1.qrydetalleafi_numero_doc.Value;
                                        DataModule1.qryafiliadosempresa.ExecSQL;

                             DataModule1.dtbdatamec.CommitTrans;

                           except
                           DataModule1.dtbdatamec.RollbackTrans;
                           SHOWMESSAGE(LowerCase('No se puede pudo retirar  el afiliado por planilla'));
                           raise;
                           end;
                           end;
                           end
                           else
                           if   DataModule1.qryafiliadosempresa.RecordCount > 1 then
                           begin
                           // cuando esta  en mas  de  una  empresa
                           DataModule1.qryafiliadosempresa.Close;
                           DataModule1.qryafiliadosempresa.sql.Clear;
                           DataModule1.qryafiliadosempresa.sql.add ('SELECT * FROM AFILIADOS_EMPRESAS WHERE TIP_DOCUMENTO_EMP = :"TIPOE" AND NUM_DOCUMENTO_EMP = :"EMPRESA" AND TIP_DOCUMENTO_AFI = :"TIPO" AND NUM_DOCUMENTO_AFI = :"NUMERO" AND FEC_EGRESO_UNI IS NULL');
                           DataModule1.qryafiliadosempresa.Parameters[0].VALUE := DataModule1.qryautoliquidacionemp_tipo_doc.Value;
                           DataModule1.qryafiliadosempresa.Parameters[1].VALUE := DataModule1.qryautoliquidacionemp_numero_doc.Value;
                           DataModule1.qryafiliadosempresa.Parameters[2].VALUE := DataModule1.qrydetalleafi_tipo_doc.Value;
                           DataModule1.qryafiliadosempresa.Parameters[3].VALUE := DataModule1.qrydetalleafi_numero_doc.Value;

                           DataModule1.qryafiliadosempresa.Open;
                             if DataModule1.qryafiliadosempresa.RecordCount = 1 then
                             begin
                             try
                             DataModule1.dtbdatamec.BeginTrans;
                                        DataModule1.qrynovafiliados.Close;
                                        DataModule1.qrynovafiliados.sql.add ('INSERT INTO NOVEDADES_AFILIADOS ( NOV_CODIGO,TIP_DOCUMENTO,NUM_DOCUMENTO,COD_OFICINA,COD_REGIONAL,USU_TIPO_DOC,USU_NUMERO_DOC,FEC_NOVEDAD_AFIL,');
                                        DataModule1.qrynovafiliados.sql.add ('NOM_CAMPO,DAT_CAMPO_ANT,NOM_TABLA,DAT_CAMPO_DES,FEC_EVENTO,FEC_APLICATIVO,TIP_DOCUMENTO_EMP,NUM_DOCUMENTO_EMP,COD_SUCURSAL,NUM_PLANILLA,COD_NOVEDAD_AFIL)');
                                        DataModule1.qrynovafiliados.sql.add ('VALUES ( :"NOVEDAD",:"TIP_DOCUMENTO_BEN",:"NUM_DOCUMENTO_BEN",:"OFICINA",:"REGIONAL",:"TIPO_USUARIO",:"NUMERO_USUAIRO",:"FECHA_NOVEDAD",');
                                        DataModule1.qrynovafiliados.sql.add (':"NOMBRE_CAMPO ",:"DATO_ANTERIOR",:"TABLA",:"CAMPO",:"FECHA_NOVEDAD",:"FECHA_SISTEMA",:"TIP_DOC_EMP",:"NUM_DOC_EMP",:"COD_SUCURSAL",:"NUM_PLANILLA",'+'nov_afiliados.nextval'+')');
                                        if DataModule1.qrydetallenov_ret.Value = 'X' then
                                        begin
                                        DataModule1.qrynovafiliados.Parameters[0].VALUE := '11';
                                        end
                                        else
                                        if DataModule1.qrydetallenov_taa.Value = 'X' then
                                        begin
                                        DataModule1.qrynovafiliados.Parameters[0].VALUE := '10';
                                        end;
                                        DataModule1.qrynovafiliados.Parameters[1].VALUE := DataModule1.qrydetalleafi_tipo_doc.Value;
                                        DataModule1.qrynovafiliados.Parameters[2].VALUE := DataModule1.qrydetalleafi_numero_doc.Value;
                                        DataModule1.qrynovafiliados.Parameters[3].VALUE := DataModule1.qryautoliquidacioncod_oficina.value;
                                        DataModule1.qrynovafiliados.Parameters[4].VALUE := DataModule1.qryautoliquidacioncod_regional.value;
                                        DataModule1.qrynovafiliados.Parameters[5].VALUE := DataModule1.qryautoliquidaciontip_doc_usuario.value;
                                        DataModule1.qrynovafiliados.Parameters[6].VALUE := DataModule1.qryautoliquidacionnum_doc_usuario.value;
                                        DataModule1.qrynovafiliados.Parameters[7].VALUE := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qrynovafiliados.Parameters[8].VALUE := '';
                                        DataModule1.qrynovafiliados.Parameters[9].VALUE := '';
                                        DataModule1.qrynovafiliados.Parameters[10].VALUE := 'AFILIADOS_EMPRESA';
                                        DataModule1.qrynovafiliados.Parameters[11].VALUE := 'ESTADO';
                                        DataModule1.qrynovafiliados.Parameters[12].VALUE := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qrynovafiliados.Parameters[13].VALUE := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qrynovafiliados.Parameters[14].VALUE := DataModule1.qryautoliquidacionemp_tipo_doc.value;
                                        DataModule1.qrynovafiliados.Parameters[15].VALUE := DataModule1.qryautoliquidacionemp_numero_doc.value;
                                        DataModule1.qrynovafiliados.Parameters[16].VALUE := DataModule1.qryautoliquidacioncod_sucursal.value;
                                        DataModule1.qrynovafiliados.Parameters[17].VALUE := DataModule1.qryautoliquidacionnum_planilla.value;
                                        //DataModule1.qrynovafiliados.Parameters[18].VALUE := qrynovafiliados.NextVAL;
                                        DataModule1.qrynovafiliados.ExecSQL;
                                        DataModule1.qrynovafiliados.close;

                                        DataModule1.qryafiliadosempresa.Close;
                                        DataModule1.qryafiliadosempresa.sql.Clear;
                                        DataModule1.qryafiliadosempresa.sql.add ('UPDATE  AFILIADOS_EMPRESAS SET COD_ESTADO = :"ESTADO",FEC_EGRESO_UNI = :"FECHA" WHERE TIP_DOCUMENTO_EMP = :"TIPOE" AND NUM_DOCUMENTO_EMP = :"EMPRESA" AND TIP_DOCUMENTO_AFI = :"TIPO" AND NUM_DOCUMENTO_AFI = :"NUMERO" AND FEC_EGRESO_UNI IS NULL');
                                        DataModule1.qryafiliadosempresa.Parameters[0].VALUE := 'I';
                                        DataModule1.qryafiliadosempresa.Parameters[1].VALUE := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qryafiliadosempresa.Parameters[2].VALUE := DataModule1.qryautoliquidacionEMP_TIPO_DOC.Value;
                                        DataModule1.qryafiliadosempresa.Parameters[3].VALUE := DataModule1.qryautoliquidacionemp_numero_doc.Value;
                                        DataModule1.qryafiliadosempresa.Parameters[4].VALUE := DataModule1.qrydetalleafi_tipo_doc.Value;
                                        DataModule1.qryafiliadosempresa.Parameters[5].VALUE := DataModule1.qrydetalleafi_numero_doc.Value;
                                        DataModule1.qryafiliadosempresa.ExecSQL;

                                        DataModule1.qrydetalle.FindNext;

                             DataModule1.qryafiliadosempresa.Post;
                             DataModule1.qryafiliadosempresa.Close;
                             DataModule1.dtbdatamec.CommitTrans;
                             except
                             DataModule1.dtbdatamec.RollbackTrans;
                             SHOWMESSAGE(LowerCase('No se puede  Borrar  el Pago del Afiliado'));
                             raise;
                             end;

                           end;
                       end;
                     end;
          end;  end;
       end;
  END;
end;



procedure Tfrmcorreciones.edtplanillaChange(Sender: TObject);
begin
Edit22.Text :=  EDTPLANILLA.TEXT;
end;

procedure Tfrmcorreciones.cbtipodocempresaChange(Sender: TObject);
begin
Edit18.Text :=  cbtipodocempresa.TEXT;
end;

procedure Tfrmcorreciones.ednumeroChange(Sender: TObject);
begin
Edit19.Text := ednumero.Text;
end;

procedure Tfrmcorreciones.Edit5Change(Sender: TObject);
begin
IF Edit5.TEXT = '' THEN
 BEGIN
 Edit5.TEXT := '0';
 end;

end;

procedure Tfrmcorreciones.Edit20Change(Sender: TObject);
begin
IF Edit20.TEXT = '' THEN
 BEGIN
 Edit20.TEXT := '0';
 end;
end;

procedure Tfrmcorreciones.Edit14Change(Sender: TObject);
begin
IF Edit14.TEXT = '' THEN
 BEGIN
 Edit14.TEXT := '0';
 end;

end;

procedure Tfrmcorreciones.Edit16Change(Sender: TObject);
begin
IF Edit16.TEXT = '' THEN
 BEGIN
 Edit16.TEXT := '0';
 end;

end;

procedure Tfrmcorreciones.Edit17Change(Sender: TObject);
begin
IF Edit17.TEXT = '' THEN
 BEGIN
 Edit17.TEXT := '0';
 end;
 end;

procedure Tfrmcorreciones.edtinteresesChange(Sender: TObject);
begin
IF edtintereses.TEXT = '' THEN
 BEGIN
 edtintereses.TEXT := '0';
 end;

end;

procedure Tfrmcorreciones.edtsaldoanteriorChange(Sender: TObject);
begin
IF edtsaldoanterior.TEXT = '' THEN
 BEGIN
 edtsaldoanterior.TEXT := '0';
 end;

end;

procedure Tfrmcorreciones.recalcular;
begin
//edttotalpagado.Text := FORMAT('%10.0m',[((StrToFloat(edttotalaporte.text)+ StrToFloat(edtintereses.text))- (StrToFloat(Edit8.text)+ StrToFloat(Edit9.text)+ StrToFloat(edtincapacidad.text)+ StrToFloat(edtlicencia.text)+StrToFloat(edtsaldoanterior.text)))]);
edttotalpagado.Text := FloatToStr((StrToFloat(edttotalaporte.text)+ StrToFloat(edtintereses.text))- (StrToFloat(Edit8.text)+ StrToFloat(Edit9.text)+ StrToFloat(edtincapacidad.text)+ StrToFloat(edtlicencia.text)+StrToFloat(edtsaldoanterior.text)));
Edit17.Text := FloatToStr((StrToFloat(Edit11.Text)+ StrToFloat(Edit14.Text))- (StrToFloat(Edit16.text)));


end;

procedure Tfrmcorreciones.Edit14Exit(Sender: TObject);
begin
recalcular;
end;

procedure Tfrmcorreciones.Edit16Exit(Sender: TObject);
begin
recalcular;
end;

procedure Tfrmcorreciones.edtcotizacionobligatorioChange(Sender: TObject);
begin
IF EDTCOTIZACIONOBLIGATORIO.TEXT > '0' THEN
    BEGIN
    //*****************
    IF STRTOINT(EDTCOTIZACIONOBLIGATORIO.TEXT) <> COTIZACION THEN
    BEGIN
    IF DATAMODULE1.QRYAFILIADOSCOD_MODALIDAD_TRA.VALUE = 'N' THEN
    begin
     edtigresobasecotizacion.Text := FloatToStr(ROUNDTO((( (strtofloat(EDTCOTIZACIONOBLIGATORIO.text)/DATAMODULE1.QryModalidadPOR_COTIZACION.Value))),3));
    end
    else IF NOV166='S' THEN
    BEGIN
     edtigresobasecotizacion.Text := FloatToStr(ROUNDTO((( (strtofloat(EDTCOTIZACIONOBLIGATORIO.text)/0.01))),3));
    END
    ELSE
     begin
      edtigresobasecotizacion.Text := FloatToStr(ROUNDTO((( (strtofloat(EDTCOTIZACIONOBLIGATORIO.text)/DATAMODULE1.QryModalidadPOR_COTIZACION.Value))),3));
     end;
        //EDTIGRESOBASECOTIZACION.TEXT :=   FLOATTOSTR(ROUNDTO((STRTOINT(EDTCOTIZACIONOBLIGATORIO.TEXT)/ 0.12),0));

        EDTTOTALPAGADOAFILIADO.TEXT :=  FLOATTOSTR(ROUNDTO(STRTOINT(EDTCOTIZACIONOBLIGATORIO.TEXT),0));
         IF  (EDTSALARIOBASE.TEXT = '0') OR (EDTSALARIOBASE.TEXT = '') THEN
           BEGIN
           EDTSALARIOBASE.TEXT := EDTIGRESOBASECOTIZACION.TEXT;
           END;
        END;
    end;
end;

procedure Tfrmcorreciones.sgdetabancoSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
  var i : integer;
    valor : real;

begin

IF sgdetabanco.CELLS[2,sgdetabanco.ROW]  >'0'  THEN
  BEGIN
   FOR I := 1 TO sgdetabanco.ROWCOUNT -2 DO
     BEGIN
     if strtoint(sgdetabanco.CELLS[2,i])> 0 then
     //***********
     begin
     if sgdetabanco.CELLS[2,i]<>'' then
     valor := valor + strtoint(sgdetabanco.CELLS[2,i])
     else
     valor := valor + 0;
     end;
     //***********
     end;
      if valor < strtoint(edtvalcheque.text) then
      begin
         if sgdetabanco.CELLS[2,sgdetabanco.ROW] = '' then
         begin
                IF MESSAGEDLG (LowerCase(' Desea Otro Numero de Cheque ?'), mtInformation, [MBYES, MBNO], 0) = MRYES THEN
                BEGIN
                sgdetabanco.ROWCOUNT := sgdetabanco.ROWCOUNT +1;
                end
                else
                btgrabarplanilla.SetFocus;
         end;
      end;
   end;
end;

procedure Tfrmcorreciones.DBGrid1CellClick(Column: TColumn);

begin
 Edit24.Text := floattostr(DATAMODULE1.qrydetincapacidadVAL_PAGAR_INCAP.value);

end;

procedure Tfrmcorreciones.CheckBox1Exit(Sender: TObject);
begin
    if CheckBox1.Checked = true then
    begin
          IF MESSAGEDLG (LowerCase('LA  PLANILLA  DE APORTES  TIENE INCAPACIDADES  DESCONTADAS'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
          BEGIN
                   DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
                   DATAMODULE1.QRYDETINCAPACIDAD.SQL.CLEAR;
                   DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('SELECT DET_INCAPACIDAD.* FROM DET_INCAPACIDAD,INCAPACIDADES WHERE DET_INCAPACIDAD.NUM_INCAPACIDAD =INCAPACIDADES.NUM_INCAPACIDAD');
                   DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('AND  TIP_INCAPACIDAD <> :"INCAP" AND TIP_DOCEMPRESA = :"TIPO_EMP" AND NUM_DOCEMPRESA = :"NUM_EMP" AND AFI_TIPO_DOC = :"TIP_AFIL" AND AFI_NUMERO_DOC = :"NUM_AFIL"');
                   DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('AND NUM_COMPROBANTE = :"COMPROBANTE" AND PER_PAGO_INCAP <= :"FECHA" ORDER BY PER_PAGO_INCAP,FEC_EXPEDICION ');
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[0].VALUE := 'MAT';
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[1].VALUE := cbtipodocempresa.Text;
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[2].VALUE := EDNUMERO.TEXT;
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[3].VALUE := cbtipodocafiliado.TEXT;
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[4].VALUE := edtnumeroducafiliado.TEXT;
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[5].VALUE := 0;
                   //DATAMODULE1.QRYDETINCAPACIDAD.Parameters[6].VALUE := STRTODATE('01/'+ msperpresentacion.TEXT);
                   //Descuento incluyendo periodos Anticipados
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[6].VALUE := STRTODATE('01/'+ EDTPERIODO.Text);

                   DATAMODULE1.QRYDETINCAPACIDAD.OPEN;
                       IF DATAMODULE1.QRYDETINCAPACIDAD.RECORDCOUNT > 0 THEN
                       BEGIN
                       FRMPRINCIPAL.TOOLBAR1.Enabled := FALSE;
                       TABSHEET4.Caption := 'Incapacidades  E. G.';
                       ckige.Checked := TRUE;
                       TABSHEET1.TabVisible := false;
                       TABSHEET2.TabVisible := false;
                       TABSHEET3.TabVisible := false;
                       TABSHEET4.TabVisible := true;
                       TABSHEET5.TabVisible := false;
                       PCENCABEZADO.ActivePage := TABSHEET4;
                      // Edit27.TEXT := edtvalincapacidad.TEXT;
                       Edit25.TEXT := '0';
                       Edit26.TEXT := '0';
                       Edit24.TEXT := '0';

                       calcular_valor_incapacidad;
                       DBGrid1.SetFocus;
                       END
                       ELSE
                         BEGIN
                         ShowMessage(LowerCase('EL AFILIADO NO TIENE  INCAPACIDADES PENDIENTES  PARA  PAGO'));

                         CheckBox1.Checked := FALSE;
                         edtvalupc.SetFocus;
                         ckige.Checked := FALSE;
                         edtautincapacidad.Text := '0';
                         edtvalincapacidad.Text := '0';
                         END;

          END
          ELSE
          BEGIN
          if edtautincapacidad.Text = '0' then
          begin
          CheckBox1.Checked := FALSE;
          edtautincapacidad.Text := '0';
          edtvalincapacidad.Text := '0';
          ckige.Checked := FALSE;
          edtvalupc.SetFocus;
          end
          else
          begin
          edtvalupc.SetFocus;
          CheckBox1.Checked := true;
          ckige.Checked := true;
          end;
          END;
    end;

end;

procedure Tfrmcorreciones.CheckBox2Exit(Sender: TObject);
begin
    if CheckBox2.Checked = true then
    begin
          IF MESSAGEDLG (LowerCase('LA  PLANILLA  DE APORTES  TIENE LICENCIAS  DE MATERNIDAD  DESCONTADAS'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
          BEGIN
                   DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
                   DATAMODULE1.QRYDETINCAPACIDAD.SQL.CLEAR;
                   DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('SELECT DET_INCAPACIDAD.* FROM DET_INCAPACIDAD,INCAPACIDADES WHERE DET_INCAPACIDAD.NUM_INCAPACIDAD =INCAPACIDADES.NUM_INCAPACIDAD');
                   DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('AND  TIP_INCAPACIDAD = :"INCAP" AND TIP_DOCEMPRESA = :"TIPO_EMP" AND NUM_DOCEMPRESA = :"NUM_EMP" AND AFI_TIPO_DOC = :"TIP_AFIL" AND AFI_NUMERO_DOC = :"NUM_AFIL"');
                   DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('AND NUM_COMPROBANTE = :"COMPROBANTE" AND PER_PAGO_INCAP <= :"FECHA" ORDER BY PER_PAGO_INCAP,FEC_EXPEDICION ');
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[0].VALUE := 'MAT';
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[1].VALUE := cbtipodocempresa.Text;
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[2].VALUE := EDNUMERO.TEXT;
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[3].VALUE := cbtipodocafiliado.TEXT;
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[4].VALUE := edtnumeroducafiliado.TEXT;
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[5].VALUE := 0;
                   //DATAMODULE1.QRYDETINCAPACIDAD.Parameters[6].VALUE := STRTODATE('01/'+ msperpresentacion.TEXT);
                   //Descuento incluyendo periodos Anticipados
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[6].VALUE := STRTODATE('01/'+ EDTPERIODO.Text);

                   DATAMODULE1.QRYDETINCAPACIDAD.OPEN;
                       IF DATAMODULE1.QRYDETINCAPACIDAD.RECORDCOUNT > 0 THEN
                       BEGIN
                       FRMPRINCIPAL.TOOLBAR1.Enabled := FALSE;
                       TABSHEET4.Caption := 'Licencias  de Maternidad';
                       TABSHEET1.TabVisible := false;
                       TABSHEET2.TabVisible := false;
                       cklma.Checked := TRUE;
                       TABSHEET3.TabVisible := false;
                       TABSHEET4.TabVisible := true;
                       TABSHEET5.TabVisible := false;
                       PCENCABEZADO.ActivePage := TABSHEET4;
                       //Edit27.TEXT := edtvallicencia.TEXT;
                       Edit25.TEXT := '0';
                       Edit26.TEXT := '0';
                       Edit24.TEXT := '0';
                       calcular_valor_incapacidad;
                       DBGrid1.SetFocus;
                       END
                       ELSE
                         BEGIN
                         ShowMessage(LowerCase('EL AFILIADO NO TIENE  LICENCIAS  DE MATERNIDAD PENDIENTES  PARA  PAGO'));
                         CheckBox2.Checked := FALSE;
                         cklma.Checked := FALSE;
                         edtnoautlicencia.Text := '0';
                         edtvallicencia.Text := '0';
                         edtvalupc.SetFocus;
                         END;

          END
          ELSE
          BEGIN
                if edtautincapacidad.Text = '0' then
                begin
                CheckBox2.Checked := FALSE;
                cklma.Checked := FALSE;
                edtnoautlicencia.Text := '0';
                edtvallicencia.Text := '0';
                edtvalupc.SetFocus;
                end
                else
                begin
                edtvalupc.SetFocus;
                CheckBox2.Checked := true;
                cklma.Checked := true;
                end;
          END;
    end;

end;

procedure Tfrmcorreciones.EDTNPLACORRECIONExit(Sender: TObject);
VAR VERIFICAR : BOOLEAN;
BEGIN
    if (EDTNPLACORRECION.text = '') or (EDTNPLACORRECION.text = '0') then
    begin
    ShowMessage(LowerCase('Debe digitar  el Numero de  la planilla  a  corregir'));
    edtplanilla.SetFocus;
    exit
    end;

 IF  EDTNPLACORRECION.TEXT > '0' THEN
 BEGIN
     VERIFICAR:= FALSE;
      EDTPERIODO.TEXT := '  /    ';
      DTFECHAPAGO.DATE := STRTODATE(GLDATE)+1;
      DATAMODULE1.QRYAUTOLIQUIDACION.CLOSE;
      DATAMODULE1.QRYAUTOLIQUIDACION.SQL.CLEAR;
      DATAMODULE1.QRYAUTOLIQUIDACION.SQL.ADD('SELECT * FROM  AUTOLIQUIDACION WHERE NUM_PLANILLA = :"NUMEROPLANILLA" AND TIP_DECLARACION <> :"TIPODECLARACION"');
      DATAMODULE1.QRYAUTOLIQUIDACION.Parameters[0].VALUE := FRMCORRECIONES.EDTNPLACORRECION.TEXT;
      DATAMODULE1.QRYAUTOLIQUIDACION.Parameters[1].VALUE := 'C';
      DATAMODULE1.QRYAUTOLIQUIDACION.OPEN;
            IF DATAMODULE1.QRYAUTOLIQUIDACION.RECORDCOUNT = 1 THEN
            BEGIN
                 IF (DATAMODULE1.QRYAUTOLIQUIDACIONEMP_TIPO_DOC.VALUE = TRIM(CBTIPODOCEMPRESA.TEXT)) AND (DATAMODULE1.QRYAUTOLIQUIDACIONEMP_NUMERO_DOC.VALUE = TRIM(EDNUMERO.TEXT)) THEN
                 BEGIN
                 EDTPERIODO.Enabled := FALSE;
                 EDTPERIODO.TEXT  := DATAMODULE1.QRYAUTOLIQUIDACIONPER_COTIZACION.VALUE;
                 Edit1.Text :=  DATETOSTR(DATAMODULE1.qryautoliquidacionFEC_PAGO.VALUE);
                 //Cargar planilla a corregir
                    IF ENCONTRO =FALSE THEN
                       //CARGCAR_PLANILLAS;
                 END
                 ELSE  VERIFICAR:= TRUE;
        IF VERIFICAR = TRUE THEN
        BEGIN
         SHOWMESSAGE('LA  PLANILLA  NO PERTENECE A  ESTA  EMPRESA  VERIFIQUE  NUEVAMENTE');
         EDTNPLACORRECION.TEXT := '0';
         edtplanilla.SetFocus;
         END;

        END
        ELSE IF DATAMODULE1.QRYAUTOLIQUIDACION.RECORDCOUNT = 0 THEN
            BEGIN
            SHOWMESSAGE('LA  PLANILLA  NO EXISTE  VERIFIQUE  NUEVAMENTE');
            EDTNPLACORRECION.TEXT := '0';
            edtplanilla.SetFocus;
          END;


 END
 ELSE edtplanilla.SetFocus;


end;

procedure Tfrmcorreciones.Button2Click(Sender: TObject);
var  i : Integer;
     X : REAL;
begin
  if Edit24.Text > '0' then
  begin
            FOR I := 1 TO sgincapacidades.ROWCOUNT -2 DO
             BEGIN
              IF  ((TRIM(sgincapacidades.CELLS[0,I]) = TRIM(DATAMODULE1.qrydetincapacidadNUM_INCAPACIDAD.Value)) AND  (strtodate(TRIM(sgincapacidades.CELLS[1,I])) = (DATAMODULE1.qrydetincapacidadPER_PAGO_INCAP.value))) THEN
              BEGIN
              ShowMessage(LowerCase('Esta  Incapacidad  Ya  esta  Incluida  dentro de la  lista' ));
              DATAMODULE1.qrydetincapacidad.FindNext;
              exit;
              end;
             end;
               IF MESSAGEDLG (LowerCase('Verifique  si esta  es la  incapacidad  que  se esta  descontando'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
                begin
                 sgincapacidades.RowCount := sgincapacidades.RowCount +1;
                 sgincapacidades.CELLS[0,sgincapacidades.ROWCOUNT -2] := DATAMODULE1.qrydetincapacidadNUM_INCAPACIDAD.value;
                 sgincapacidades.CELLS[1,sgincapacidades.ROWCOUNT -2] := DateToStr(DATAMODULE1.qrydetincapacidadPER_PAGO_INCAP.value);
                 sgincapacidades.CELLS[3,sgincapacidades.ROWCOUNT -2] := FloatToStr(DATAMODULE1.qrydetincapacidadVAL_PAGAR_INCAP.value);
                 sgincapacidades.CELLS[4,sgincapacidades.ROWCOUNT -2] := FloatToStr(DATAMODULE1.qrydetincapacidadDIA_PAGAR_INCAP.value);
                 DATAMODULE1.QRYINCAPACIDADES.CLOSE;
                 DATAMODULE1.QRYINCAPACIDADES.SQL.CLEAR;
                 DATAMODULE1.QRYINCAPACIDADES.SQL.ADD('SELECT * FROM INCAPACIDADES WHERE NUM_INCAPACIDAD = :"NUMERO"');
                 DATAMODULE1.QRYINCAPACIDADES.Parameters[0].VALUE := DATAMODULE1.qrydetincapacidadNUM_INCAPACIDAD.value;
                 DATAMODULE1.QRYINCAPACIDADES.OPEN;
                   if DATAMODULE1.QRYINCAPACIDADES.RecordCount = 1 then
                   begin
                   IF (edtnumeroducafiliado.Text > '0') AND (cbtipodocafiliado.ItemIndex > -1) THEN
                   BEGIN
                   sgincapacidades.CELLS[5,sgincapacidades.ROWCOUNT -2] := DATAMODULE1.qryincapacidadesAFI_TIPO_DOC.VALUE;
                   sgincapacidades.CELLS[6,sgincapacidades.ROWCOUNT -2] := DATAMODULE1.qryincapacidadesAFI_NUMERO_DOC.VALUE;
                   END
                   ELSE
                   BEGIN
                   sgincapacidades.CELLS[5,sgincapacidades.ROWCOUNT -2] := '0';
                   sgincapacidades.CELLS[6,sgincapacidades.ROWCOUNT -2] := '0';
                   END;
                   sgincapacidades.CELLS[7,sgincapacidades.ROWCOUNT -2] := DATAMODULE1.qryincapacidadesTIP_INCAPACIDAD.VALUE;
                   END;
                   IF Edit26.Text = '' THEN Edit26.Text := '0';
                   sgincapacidades.CELLS[2,sgincapacidades.ROWCOUNT -2] := Edit24.Text;

                 calcular_valor_incapacidad;
                end
                 else
                     begin
                     ShowMessage(LowerCase('Seleccione  el numero de  la incapacidadad a descontar'));
                     end;
     end
     ELSE
     BEGIN
     ShowMessage(LowerCase('Seleccione  el numero de  la incapacidadad a descontar'));
     END;
end;

procedure Tfrmcorreciones.Button6Click(Sender: TObject);
var i,j : integer;
begin
  IF  sgincapacidades.ROW = sgincapacidades.ROWCOUNT -1  THEN
    EXIT;

    IF MESSAGEDLG (LowerCase('Desea No descontar  esta  Incapacidad de  la Planilla  de Autoliquidaciones  ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
    BEGIN
        FOR I:= sgincapacidades.ROW +1 TO sgincapacidades.ROWCOUNT -1 DO
        BEGIN
                FOR J := 0 TO 7 DO
                sgincapacidades.CELLS[J,I -1] := sgincapacidades.CELLS[J,I];
                END;
                sgincapacidades.ROWCOUNT := sgincapacidades.ROWCOUNT -1 ;
                calcular_valor_incapacidad;
        END;
    end;


procedure Tfrmcorreciones.calcular_valor_incapacidad;
var i: integer;
begin
  IF TABSHEET4.Caption = 'Incapacidades  E. G.' THEN
  BEGIN
   Edit26.Text := '0';
   Edit25.Text := '';
     FOR I := 1 TO sgincapacidades.ROWCOUNT -2 DO
     BEGIN
         IF (sgincapacidades.CELLS[5,I] = cbtipodocafiliado.Text) AND (sgincapacidades.CELLS[6,I] = edtnumeroducafiliado.Text) AND (sgincapacidades.CELLS[7,I] <> 'MAT')  THEN
         BEGIN
                     if Edit25.Text <> '' then
                     begin
                     Edit25.Text := Edit25.Text + ',' + sgincapacidades.CELLS[0,I] ;
                     end
                     else
                     Edit25.Text :=  trim(sgincapacidades.CELLS[0,I]);
                     Edit26.Text := floattostr(strtofloat(Edit26.Text)+(strtofloat(sgincapacidades.CELLS[2,I])));


         END;
     end;
    END
    ELSE
    IF TABSHEET4.Caption = 'Licencias  de Maternidad' THEN
     BEGIN
     Edit26.Text := '0';
   Edit25.Text := '';
     FOR I := 1 TO sgincapacidades.ROWCOUNT -2 DO
     BEGIN
         IF (sgincapacidades.CELLS[5,I] = cbtipodocafiliado.Text) AND (sgincapacidades.CELLS[6,I] = edtnumeroducafiliado.Text) AND (sgincapacidades.CELLS[7,I] = 'MAT')  THEN
         BEGIN
                     if Edit25.Text <> '' then
                     begin
                     Edit25.Text := Edit25.Text + ',' + sgincapacidades.CELLS[0,I] ;
                     end
                     else
                     Edit25.Text :=  trim(sgincapacidades.CELLS[0,I]);
                     Edit26.Text := floattostr(strtofloat(Edit26.Text)+(strtofloat(sgincapacidades.CELLS[2,I])));


                 END;
     end;

   END;

   //  CONSOLIDADO DE  LA PLANILLA

 IF TABSHEET4.Caption = 'Incapacidades  E. G. pagadas' THEN
  BEGIN
   Edit26.Text := '0';
   Edit25.Text := '';
     FOR I := 1 TO sgincapacidades.ROWCOUNT -2 DO
     BEGIN
         IF (sgincapacidades.CELLS[5,I] = '0') AND (sgincapacidades.CELLS[6,I] = '0') AND (sgincapacidades.CELLS[7,I] <> 'MAT')  THEN
         BEGIN
                     if Edit25.Text <> '' then
                     begin
                     Edit25.Text := Edit25.Text + ',' + sgincapacidades.CELLS[0,I] ;
                     end
                     else
                     Edit25.Text :=  trim(sgincapacidades.CELLS[0,I]);
                     Edit26.Text := floattostr(strtofloat(Edit26.Text)+(strtofloat(sgincapacidades.CELLS[2,I])));

                     //if Edit27.Text > Edit26.Text then
                     //begin
                     //BUTTON2.Enabled := true;
                     //end
                     //else
                     //BUTTON2.Enabled := false;
                 END;
     end;
    END
    ELSE
  IF TABSHEET4.Caption = 'Licencias  de Maternidad pagadas' THEN
  BEGIN
     Edit26.Text := '0';
   Edit25.Text := '';
    FOR I := 1 TO sgincapacidades.ROWCOUNT -2 DO
     BEGIN
         IF (sgincapacidades.CELLS[5,I] = '0') AND (sgincapacidades.CELLS[6,I] = '0') AND (sgincapacidades.CELLS[7,I] = 'MAT')  THEN
         BEGIN
                     if Edit25.Text <> '' then
                     begin
                     Edit25.Text := Edit25.Text + ',' + sgincapacidades.CELLS[0,I] ;
                     end
                     else
                     Edit25.Text :=  trim(sgincapacidades.CELLS[0,I]);
                     Edit26.Text := floattostr(strtofloat(Edit26.Text)+(strtofloat(sgincapacidades.CELLS[2,I])));
                           //if Edit27.Text > Edit26.Text then
                          // begin
                          // BUTTON2.Enabled := true;
                          // end
                          // else
                          // BUTTON2.Enabled := false;
                 END;
     end;

   END;

end;

procedure Tfrmcorreciones.CheckBox2Enter(Sender: TObject);
begin
 if (edtvalincapacidad.Text > '0') and (CheckBox2.Checked = true) then
  begin
     IF MESSAGEDLG (LowerCase('Desea Modificar el valor  de la  Licencia ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
      BEGIN
      TABSHEET4.Caption := 'Licencias  de Maternidad';
      calcular_valor_incapacidad;
      end
      else
      begin
      CheckBox2.Checked := true;
      edtvalupc.SetFocus;
      end;
  end;


end;

procedure Tfrmcorreciones.CheckBox1Enter(Sender: TObject);
begin
 if (edtvalincapacidad.Text > '0') and (CheckBox1.Checked = true) then  begin
     IF MESSAGEDLG (LowerCase('Desea Modificar el valor  de la incapacidad ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
      BEGIN
      TABSHEET4.Caption := 'Incapacidades  E. G.';
      calcular_valor_incapacidad;
      end
      else
      begin
      //CheckBox1.Checked := true;
      edtvalupc.SetFocus;
      end;
   end;
end;

procedure Tfrmcorreciones.sgdetabancoEnter(Sender: TObject);
var valor,i : integer;
begin
IF  edtvalcheque.TEXT > '0' THEN
BEGIN
 IF MESSAGEDLG (LowerCase(' Desea Otro Numero de Cheque ?'), mtInformation, [MBYES, MBNO], 0) = MRYES THEN
    BEGIN
    sgdetabanco.ROWCOUNT := sgdetabanco.ROWCOUNT +1;

    end
    else
    btgrabarplanilla.SetFocus;
 END
 ELSE
 BEGIN
 sgdetabanco.Enabled := FALSE;
 btgrabarplanilla.SetFocus

 END;
 End;
procedure Tfrmcorreciones.AgregarEnter(Sender: TObject);
begin
EDTTOTALPAGADOAFILIADO.TEXT := FLOATTOSTR((STRTOFLOAT(EDTCOTIZACIONOBLIGATORIO.TEXT) + STRTOFLOAT(EDTVALUPC.TEXT)) -(STRTOFLOAT(EDTVALINCAPACIDAD.TEXT)+ STRTOFLOAT(EDTVALLICENCIA.TEXT)));
end;

procedure Tfrmcorreciones.CheckBox3Exit(Sender: TObject);
begin

 if CheckBox3.Checked = true then
    begin
          IF MESSAGEDLG (LowerCase('LA  PLANILLA  DE APORTES  TIENE INCAPACIDADES  PAGADAS'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
          BEGIN
                   DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
                   DATAMODULE1.QRYDETINCAPACIDAD.SQL.CLEAR;
                   DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('SELECT DET_INCAPACIDAD.* FROM DET_INCAPACIDAD,INCAPACIDADES WHERE DET_INCAPACIDAD.NUM_INCAPACIDAD =INCAPACIDADES.NUM_INCAPACIDAD');
                   DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('AND  TIP_INCAPACIDAD <> :"INCAP" AND TIP_DOCEMPRESA = :"TIPO_EMP" AND NUM_DOCEMPRESA = :"NUM_EMP"');
                   DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('AND NUM_COMPROBANTE = :"COMPROBANTE" AND PER_PAGO_INCAP <= :"FECHA" ORDER BY PER_PAGO_INCAP,FEC_EXPEDICION ');
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[0].VALUE := 'MAT';
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[1].VALUE := cbtipodocempresa.Text;
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[2].VALUE := EDNUMERO.TEXT;
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[3].VALUE := 0;
                   //DATAMODULE1.QRYDETINCAPACIDAD.Parameters[4].VALUE := STRTODATE('01/'+ msperpresentacion.TEXT);
                   //Descuento incluyendo periodos Anticipados
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[4].VALUE := STRTODATE('01/'+ EDTPERIODO.Text);
                   DATAMODULE1.QRYDETINCAPACIDAD.OPEN;
                       IF DATAMODULE1.QRYDETINCAPACIDAD.RECORDCOUNT > 0 THEN
                       BEGIN
                       FRMPRINCIPAL.TOOLBAR1.Enabled := FALSE;
                       TABSHEET4.Caption := 'Incapacidades  E. G. pagadas';
                       TABSHEET1.TabVisible := false;
                       TABSHEET2.TabVisible := false;
                       TABSHEET3.TabVisible := false;
                       TABSHEET4.TabVisible := true;
                       TABSHEET5.TabVisible := false;
                       PCENCABEZADO.ActivePage := TABSHEET4;
                       //Edit27.TEXT := edtincapacidad.TEXT;
                       Edit25.TEXT := '0';
                       Edit26.TEXT := '0';
                       Edit24.TEXT := '0';

                       calcular_valor_incapacidad;
                       DBGrid1.SetFocus;
                       END
                       ELSE
                         BEGIN
                         ShowMessage(LowerCase('EL AFILIADO NO TIENE  INCAPACIDADES PENDIENTES  PARA  PAGO'));
                         CheckBox3.Checked := FALSE;
                         Edit12.Text := '0';
                         edtincapacidad.TEXT := '0';
                         edit5.SetFocus;
                         END;

          END
          ELSE
          BEGIN
          CheckBox3.Checked := FALSE;
          Edit12.Text := '0';
          edtincapacidad.TEXT := '0';
          Edit5.SetFocus;
          END;
    end;

end;

procedure Tfrmcorreciones.CheckBox4Exit(Sender: TObject);
begin
 if CheckBox4.Checked = true then
    begin
          IF MESSAGEDLG (LowerCase('LA  PLANILLA  DE APORTES  TIENE LICENCIAS DE  MATERNIDAD  PAGADAS'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
          BEGIN
                   DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
                   DATAMODULE1.QRYDETINCAPACIDAD.SQL.CLEAR;
                   DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('SELECT DET_INCAPACIDAD.* FROM DET_INCAPACIDAD,INCAPACIDADES WHERE DET_INCAPACIDAD.NUM_INCAPACIDAD =INCAPACIDADES.NUM_INCAPACIDAD');
                   DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('AND  TIP_INCAPACIDAD = :"INCAP" AND TIP_DOCEMPRESA = :"TIPO_EMP" AND NUM_DOCEMPRESA = :"NUM_EMP"');
                   DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('AND NUM_COMPROBANTE = :"COMPROBANTE" AND PER_PAGO_INCAP <= :"FECHA" ORDER BY PER_PAGO_INCAP,FEC_EXPEDICION ');
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[0].VALUE := 'MAT';
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[1].VALUE := cbtipodocempresa.Text;
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[2].VALUE := EDNUMERO.TEXT;
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[3].VALUE := 0;
                   //DATAMODULE1.QRYDETINCAPACIDAD.Parameters[4].VALUE := STRTODATE('01/'+ msperpresentacion.TEXT);
                   //Descuento incluyendo periodos Anticipados
                   DATAMODULE1.QRYDETINCAPACIDAD.Parameters[4].VALUE := STRTODATE('01/'+ EDTPERIODO.Text);
                   DATAMODULE1.QRYDETINCAPACIDAD.OPEN;
                       IF DATAMODULE1.QRYDETINCAPACIDAD.RECORDCOUNT > 0 THEN
                       BEGIN
                       FRMPRINCIPAL.TOOLBAR1.Enabled := FALSE;
                       TABSHEET4.Caption := 'Licencias  de Maternidad pagadas';
                       TABSHEET1.TabVisible := false;
                       TABSHEET2.TabVisible := false;
                       TABSHEET3.TabVisible := false;
                       TABSHEET4.TabVisible := true;
                       TABSHEET5.TabVisible := false;
                       PCENCABEZADO.ActivePage := TABSHEET4;
                       //Edit27.TEXT := edtlicencia.TEXT;
                       Edit25.TEXT := '0';
                       Edit26.TEXT := '0';
                       Edit24.TEXT := '0';

                       calcular_valor_incapacidad;
                       DBGrid1.SetFocus;
                       END
                       ELSE
                         BEGIN
                         ShowMessage(LowerCase('EL AFILIADO NO TIENE  LICENCIAS PENDIENTES  DE  PAGO'));
                         CheckBox4.Checked := FALSE;
                         edit5.SetFocus;
                         Edit13.Text := '0';
                         edtlicencia.TEXT := '0';
                         END;

          END
          ELSE
          BEGIN
          CheckBox4.Checked := FALSE;
          Edit13.Text := '0';
          edtlicencia.TEXT := '0';
          Edit5.SetFocus;
          END;
    end;

end;

procedure Tfrmcorreciones.Button5Click(Sender: TObject);
begin

     IF TABSHEET4.Caption = 'Licencias  de Maternidad' THEN
     BEGIN
         TABSHEET1.TabVisible := true;
         TABSHEET2.TabVisible := true;
         TABSHEET3.TabVisible := true;
         TABSHEET4.TabVisible := false;
         TABSHEET5.TabVisible := true;
         PCENCABEZADO.ActivePage := TABSHEET2;
         FRMPRINCIPAL.TOOLBAR1.Enabled := TRUE;
         edtnoautlicencia.Text := EDIT25.TEXT;
         edtvallicencia.Text := EDIT26.TEXT;
         IF EDIT26.TEXT > '0' THEN
         BEGIN
         CheckBox2.Checked := TRUE;
         END
         ELSE
         CheckBox2.Checked := FALSE;
         edtvalupc.SetFocus;

     END;
     IF TABSHEET4.Caption = 'Incapacidades  E. G.' THEN
     BEGIN
         TABSHEET1.TabVisible := true;
         TABSHEET2.TabVisible := true;
         TABSHEET3.TabVisible := true;
         TABSHEET4.TabVisible := false;
         TABSHEET5.TabVisible := true;
         PCENCABEZADO.ActivePage := TABSHEET2;
         FRMPRINCIPAL.TOOLBAR1.Enabled := TRUE;
         edtvalincapacidad.Text := Edit26.TEXT;
         edtautincapacidad.Text := Edit25.TEXT;
         IF EDIT26.TEXT > '0' THEN
         BEGIN
         CheckBox1.Checked := TRUE;
         END
         ELSE
         CheckBox1.Checked := FALSE;
         edtvalupc.SetFocus;
     END;
     // incapacidades  no relacionadas  en el detalle
     IF TABSHEET4.Caption = 'Incapacidades  E. G. pagadas' THEN
     BEGIN
         TABSHEET1.TabVisible := true;
         TABSHEET2.TabVisible := true;
         TABSHEET3.TabVisible := true;
         TABSHEET4.TabVisible := false;
         TABSHEET5.TabVisible := true;
         PCENCABEZADO.ActivePage := TABSHEET3;
         FRMPRINCIPAL.TOOLBAR1.Enabled := TRUE;
         Edit12.Text := Edit25.TEXT;
         edtincapacidad.Text := Edit26.TEXT;
         IF EDIT26.TEXT > '0' THEN
         BEGIN
         CheckBox3.Checked := TRUE;
         END
         ELSE
         CheckBox3.Checked := FALSE;
         recalcular;
         CheckBox4.SetFocus;
     END;


         IF TABSHEET4.Caption = 'Licencias  de Maternidad pagadas' THEN
         BEGIN
         TABSHEET1.TabVisible := true;
         TABSHEET2.TabVisible := true;
         TABSHEET3.TabVisible := true;
         TABSHEET4.TabVisible := false;
         TABSHEET5.TabVisible := true;
         PCENCABEZADO.ActivePage := TABSHEET3;
         FRMPRINCIPAL.TOOLBAR1.Enabled := TRUE;
         Edit13.Text := Edit25.TEXT;
         edtlicencia.Text := Edit26.TEXT;
         IF EDIT26.TEXT > '0' THEN
         BEGIN
         CheckBox4.Checked := TRUE;
         END
         ELSE
         CheckBox4.Checked := FALSE;
         recalcular;
         Edit5.SetFocus;
     END;


end;

procedure Tfrmcorreciones.FormActivate(Sender: TObject);
begin
WindowState := wsNormal;
top := 0;
Left := 0;
end;

procedure Tfrmcorreciones.CheckBox3Enter(Sender: TObject);
begin
 if (edtincapacidad.Text > '0') and (CheckBox3.Checked = true) then
  begin
     IF MESSAGEDLG (LowerCase('Desea Modificar el valor  de la incapacidad ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
      BEGIN
      TABSHEET4.Caption := 'Incapacidades  E. G. pagadas';
      calcular_valor_incapacidad;
      end
      else
      begin
      CheckBox3.Checked := true;
      Edit5.SetFocus;
      end;
   end;

end;

procedure Tfrmcorreciones.CheckBox4Enter(Sender: TObject);
begin
if (edtlicencia.Text > '0') and (CheckBox4.Checked = true) then
  begin
     IF MESSAGEDLG (LowerCase('Desea Modificar el valor  de la LICENCIA ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
      BEGIN
      TABSHEET4.Caption := 'Licencias  de Maternidad pagadas';
      calcular_valor_incapacidad;
      end
      else
      begin
      CheckBox4.Checked := true;
      Edit5.SetFocus;
      end;
   end;
end;

procedure Tfrmcorreciones.Edit20Exit(Sender: TObject);
//*************
VAR
//NOTAS :ARRAY[1..5,1..2] OF STRING;  GLOBAL
I,J,P:INTEGER;
NUMPLANILLA:STRING;
//*************
begin
{       IF (Edit20.Text > '0') and (edtplanilla.Text <> Edit20.Text) then
       BEGIN
          DATAMODULE1.qrynotasautoliquidacion.CLOSE;
          DATAMODULE1.qrynotasautoliquidacion.SQL.CLEAR;
          DATAMODULE1.qrynotasautoliquidacion.SQL.ADD('SELECT * FROM NOTAS_AUTOLIQUIDACION WHERE NUM_PLANILLA = :"PLANILLA" AND TIP_DOC_EMPRESA = :"TIPOEMP" AND NUM_DOC_EMPRESA = :"NUMERO" AND TIP_NOTA = :"TIPONO" AND TIP_DESCUENTO IS NULL');
          DATAMODULE1.qrynotasautoliquidacion.Parameters[0].VALUE := TRIM(EDIT20.TEXT);
          DATAMODULE1.qrynotasautoliquidacion.Parameters[1].VALUE := TRIM(cbtipodocempresa.TEXT);
          DATAMODULE1.qrynotasautoliquidacion.Parameters[2].VALUE := TRIM(ednumero.TEXT);
          DATAMODULE1.qrynotasautoliquidacion.Parameters[3].VALUE := 'C';
          DATAMODULE1.qrynotasautoliquidacion.Open;
                  IF DATAMODULE1.qrynotasautoliquidacion.RecordCount = 1 THEN
                  begin
                   edtsaldoanterior.Text := FLOATTOSTR(DATAMODULE1.qrynotasautoliquidacionVAL_NOTA.VALUE);
                  END
                  ELSE
                  BEGIN
                  ShowMessage(LowerCase('la Empresa  no tiene  saldos a  favor  con este  numero de Planilla  Consulte  nuevamente'));
                  Edit20.Text := '0';
                  EDTVALEFECTIVO.SetFocus;
                  //cbbanco.SetFocus;
                  END;
       END
       else
       begin
       Edit20.Text := '0';
       EDTVALEFECTIVO.SetFocus;
       //cbbanco.SetFocus;
       end;
}
IF (trim(Edit20.Text) > '0') and (trim(EDTPLANILLA.TEXT) <> trim(Edit20.Text)) then
       BEGIN
       //*************
       NUMPLANILLA:=TRIM(EDIT20.Text);
       I:=1;
       WHILE (NUMPLANILLA <> '') DO
       BEGIN
       P:=POS('/',NUMPLANILLA);
        IF P > 0 THEN
          BEGIN
            NOTAS[I,1]:= COPY(NUMPLANILLA,1,P-1);
            NUMPLANILLA:=COPY(NUMPLANILLA,P+1,LENGTH(NUMPLANILLA));
            I:=I+1;
          END
        ELSE
          BEGIN
            NOTAS[I,1]:= NUMPLANILLA;
            NUMPLANILLA:='';
          END
       END;
       //*************
       J:=1;
       FOR J:=1 TO I DO
       BEGIN
          DATAMODULE1.qrynotasautoliquidacion.CLOSE;
          DATAMODULE1.qrynotasautoliquidacion.SQL.CLEAR;
          DATAMODULE1.qrynotasautoliquidacion.SQL.ADD('SELECT * FROM NOTAS_AUTOLIQUIDACION WHERE NUM_PLANILLA = :"PLANILLA" AND TIP_DOC_EMPRESA = :"TIPOEMP" AND NUM_DOC_EMPRESA = :"NUMERO" AND TIP_NOTA = :"TIPONO" AND TIP_DESCUENTO IS NULL');
          DATAMODULE1.qrynotasautoliquidacion.Parameters[0].VALUE := TRIM(NOTAS[J,1]);
          DATAMODULE1.qrynotasautoliquidacion.Parameters[1].VALUE := TRIM(cbtipodocempresa.TEXT);
          DATAMODULE1.qrynotasautoliquidacion.Parameters[2].VALUE := TRIM(ednumero.TEXT);
          DATAMODULE1.qrynotasautoliquidacion.Parameters[3].VALUE := 'C';
          DATAMODULE1.qrynotasautoliquidacion.Open;
                  IF DATAMODULE1.qrynotasautoliquidacion.RecordCount = 1 THEN
                  begin
                   edtsaldoanterior.Text := FLOATTOSTR(DATAMODULE1.qrynotasautoliquidacionVAL_NOTA.VALUE + STRTOINT(edtsaldoanterior.Text));
                   NOTAS[J,2]:=FLOATTOSTR(DATAMODULE1.qrynotasautoliquidacionVAL_NOTA.VALUE);
                  END
                  ELSE
                  BEGIN
                  ShowMessage(LowerCase('la Empresa  no tiene  saldos a  favor  con el  n�mero de Planilla :' + NOTAS[J,1] + #13 + 'Consulte  nuevamente'));
                  Edit20.Text := STRINGREPLACE(EDIT20.Text,NOTAS[J,1],'',[RFREPLACEALL,RFIGNORECASE]);
                    IF (COPY(EDIT20.Text,1,1)='/') THEN
                        EDIT20.Text :=COPY(EDIT20.Text,2,LENGTH(EDIT20.Text)-1);
                  END;
       END;//FOR
       IF NOTAS[1,2]='' THEN
       BEGIN
           Edit20.Text := '0';
           edtvalefectivo.SetFocus;
       END
       END//IF
       else
       begin
       Edit20.Text := '0';
       //cbbanco.SetFocus;
       edtvalefectivo.SetFocus;
       end;
end;

procedure Tfrmcorreciones.edtvalupcChange(Sender: TObject);
begin
  if  edtvalupc.text = '' then
  begin
  edtvalupc.Text := '0';
  end;
end;

procedure Tfrmcorreciones.edtsalariobaseChange(Sender: TObject);
begin
edtigresobasecotizacion.text  := edtsalariobase.Text;
end;

FUNCTION  TFRMCORRECIONES.conciliar:string;
BEGIN
   {IF  FRMPLANILLAS.CAPTION='Digitacion de Recaudo sin Anexos' THEN
   BEGIN
   RESULT:='CONCING';
   END}
   IF CheqDev.Checked=True Then
   RESULT:='CONCICH'
   ELSE
   IF STRTOINT(EDTTOTALPAGADO.Text)<>STRTOINT(EDTTOTALCONSIGNADO.Text) THEN
   RESULT:='CONCIDIF'
   ELSE
   RESULT:='CONCI';
END;

{FUNCTION  TFRMCORRECIONES.novedad166(tipo,Numero: String):String;
VAR
  meses:integer;
  a,b:Extended;

Begin
IF CBTIPOCOTIZANTE.Text <>'' THEN
BEGIN
   NOV166:='N';
   qrynovedad166.Close;
   qrynovedad166.Parameters[0].Value :=tipo;
   qrynovedad166.Parameters[1].Value :=Numero;
   qrynovedad166.Open;
   IF qrynovedad166.RecordCount>0 then
   begin
   NOV166:='S';
   qrydiferenciafechanov166.Close ;
   qrydiferenciafechanov166.Parameters[0].Value:=tipo;
   qrydiferenciafechanov166.Parameters[1].Value:=numero;
   qrydiferenciafechanov166.Parameters[2].Value:=qrynovedad166Fec_Evento.Value;
   qrydiferenciafechanov166.Open;
   meses:= qrydiferenciafechanov166DIFERENCIA.Value;
   IF meses=0 THEN
   Begin
        IF  ROUNDTO(((((GLSALARIOMINIMO)* DATAMODULE1.QryModalidadSALARIOS_MINIMOS.Value)/30)* 0.01)* STRTOINT(EDDIAS.TEXT),1) <> ROUNDTO((strtofloat(edtcotizacionobligatorio.TEXT)/ STRTOINT(EDDIAS.TEXT)*30),1) THEN
        BEGIN
                     showmessage('Interrupci�n de la Afiliacion por Salida del Pa�s -Novedad 166' + #13 + 'El Porcentaje de Descuento correspode al 1%');
                     edtcotizacionobligatorio.Text :='';
                     edtcotizacionobligatorio.SetFocus;
                     RESULT:='S';
                     exit;
        END
        ELSE
        BEGIN
        //estado_pago := 'CIE';
        RESULT:='S';
        exit;
        END
   end
   ELSE //COTIZACIONES DESPUES DEL EVENTO DE SALIDA DEL PAIS
        BEGIN
              qrynovedad166primer.Close;
              qrynovedad166primer.Parameters[0].Value:=tipo;
              qrynovedad166primer.Parameters[1].Value:=numero;
              qrynovedad166primer.Parameters[2].Value:=qrynovedad166Fec_Evento.Value;
              qrynovedad166primer.Open;
              qrynovedad166diferencia.Close;
              qrynovedad166diferencia.Parameters[0].Value :=qrynovedad166Fec_Evento.Value;
              qrynovedad166diferencia.Parameters[1].Value :=qrynovedad166primerPER_COTIZACION.Value;
              qrynovedad166diferencia.open;
              if meses<>(qrynovedad166diferenciaintervalo.Value) then
              begin
                IF  ROUNDTO(((((GLSALARIOMINIMO)* DATAMODULE1.QryModalidadSALARIOS_MINIMOS.Value)/30)* 0.01)* STRTOINT(EDDIAS.TEXT),1) <>  ROUNDTO((strtofloat(edtcotizacionobligatorio.TEXT)/ STRTOINT(EDDIAS.TEXT)*30),1) THEN
                BEGIN
                       showmessage('Interrupci�n de la Afiliacion por Salida del Pa�s -Novedad 166' + #13 + 'El Porcentaje de Descuento correspode al 1%');
                       edtcotizacionobligatorio.Text :='';
                       edtcotizacionobligatorio.SetFocus;
                       //estado_pago := 'IBC';
                       RESULT:='S';
                       exit;
                END
                ELSE
                BEGIN
                      //estado_pago := 'CIE';
                      RESULT:='S';
                      exit;
                END;
              end//meses
              ELSE
                 NOV166:='N';
        end;
        end;
   //No presenta Novedad 166
        RESULT:='A';
END;
End;
}

FUNCTION  TFRMCORRECIONES.novedad166(tipo,Numero: String):String;
VAR
  meses, mesesfuera :integer;

Begin
IF CBTIPOCOTIZANTE.Text <>'' THEN
BEGIN
   NOV166:='N';
   qrynovedad166.Close;
   qrynovedad166.Parameters[0].Value :=tipo;
   qrynovedad166.Parameters[1].Value :=Numero;
   qrynovedad166.Open;
   IF qrynovedad166.RecordCount>0 then
   begin
   NOV166:='S';
      qrynovedad187.Close;
      qrynovedad187.Parameters[0].Value :=tipo;
      qrynovedad187.Parameters[1].Value :=Numero;
      qrynovedad187.Open;
      IF qrynovedad187.RecordCount>0 then
      BEGIN
        qrymesesdif.Close;
        qrymesesdif.Parameters[0].Value := qrynovedad166Fec_Novedad_Afil.Value;//qrynovedad166Fec_Evento.Value;
        qrymesesdif.Parameters[1].Value := qrynovedad187Fec_Novedad_Afil.Value;
        qrymesesdif.Open;
        if qrymesesdif.RecordCount > 0 then
          mesesfuera:= qrymesesdifmesesdiff.Value
        else
          mesesfuera:= 0;

        qrydiferenciafechanov166.Close ;
        qrydiferenciafechanov166.Parameters[0].Value:=tipo;
        qrydiferenciafechanov166.Parameters[1].Value:=numero;
        qrydiferenciafechanov166.Parameters[2].Value:=qrynovedad187Fec_Novedad_Afil.Value;
        qrydiferenciafechanov166.Open;
        if  qrydiferenciafechanov166.RecordCount > 0 then
          meses:= qrydiferenciafechanov166DIFERENCIA.Value
        else
          meses:=0;

        IF meses <= mesesfuera THEN
        Begin
          IF  ROUNDTO(((((GLSALARIOMINIMO)* DATAMODULE1.QryModalidadSALARIOS_MINIMOS.Value)/30)* 0.01)* STRTOINT(EDDIAS.TEXT),1) <> ROUNDTO((strtofloat(edtcotizacionobligatorio.TEXT)/ STRTOINT(EDDIAS.TEXT)*30),1) THEN
          BEGIN
                     showmessage('Interrupci�n de la Afiliacion por Salida del Pa�s -Novedad 166' + #13 + 'El Porcentaje de Descuento correspode al 1%');
                     edtcotizacionobligatorio.Text :='';
                     edtcotizacionobligatorio.SetFocus;
                     RESULT:='S';
                     exit;
          END
          ELSE
          BEGIN
          //estado_pago := 'CIE';
          RESULT:='A';
          exit;
          END;
        END;
        END
        ELSE //presenta Novedad 166 pero no 187
        BEGIN
        RESULT:='S';
        EXIT;
        END;
      END;
   //No presenta Novedad 166
        RESULT:='N';
END;
End;


PROCEDURE TFRMCORRECIONES.cargar_movimiento;
begin
  CBBANCO.KeyValue:=DATAMODULE1.qryestratoCOD_BANCO.Value;
  CBBANCOCLICK(NIL);
  //EDTTOTALCONSIGNADO.Text:=FORMAT('%10.0m',[STRTOFLOAT(DATAMODULE1.qryestratoVAL_CONSIGNACION.Text)]);
  EDTTOTALCONSIGNADO.Text:=DATAMODULE1.qryestratoVAL_CONSIGNACION.Text;
end;


function TFRMCORRECIONES.estado_pago : string;

begin
FRMPRINCIPAL.Salariobase(edtperiodo.text);
estado_pago := 'CIE';
    DATAMODULE1.QRYEMPRESAS.DISABLECONTROLS;
    DATAMODULE1.QRYEMPRESAS.CLOSE;
    DATAMODULE1.QRYEMPRESAS.Parameters[0].VALUE := TRIM(CBTIPODOCEMPRESA.TEXT);
    DATAMODULE1.QRYEMPRESAS.Parameters[1].VALUE := TRIM(EDNUMERO.TEXT);
    DATAMODULE1.QRYEMPRESAS.OPEN;
    DATAMODULE1.QRYEMPRESAS.ENABLECONTROLS;
        IF DATAMODULE1.QRYEMPRESAS.RECORDCOUNT = 0 THEN
        BEGIN
        estado_pago := 'NRE';
        exit
        end;
        // verifcar  si no es  NRS Nuevamente
                DATAMODULE1.QRYAFILIADOS.CLOSE;
                DATAMODULE1.QRYAFILIADOS.SQL.CLEAR;
                DATAMODULE1.QRYAFILIADOS.SQL.ADD('SELECT  TIP_DOCUMENTO_EMP, NUM_DOCUMENTO_EMP,TIP_DOCUMENTO_AFI, NUM_DOCUMENTO_AFI,PRI_APELLIDO,SEG_APELLIDO,PRI_NOMBRE,SEG_NOMBRE, VAL_SUELDO_AFIL,FEC_INGRESO_UNI,FEC_EGRESO_UNI,AFILIADOS_EMPRESAS.COD_ESTADO,FEC_NACIMIENTO,COD_SEXO,T1.COD_MODALIDAD_TRA');
                DATAMODULE1.QRYAFILIADOS.SQL.ADD('FROM AFILIADOS_EMPRESAS,AFILIADOS T1');
                DATAMODULE1.QRYAFILIADOS.SQL.ADD('WHERE TIP_DOCUMENTO_AFI = TIP_DOCUMENTO AND  NUM_DOCUMENTO_AFI = NUM_DOCUMENTO AND  TIP_DOCUMENTO_AFI = :"CC" AND NUM_DOCUMENTO_AFI = :"DOCUMENTO" AND ((FEC_INGRESO_UNI <= :"FECHAIN") OR (FEC_INGRESO_UNI <= :"FECHAINI")) AND ');
                DATAMODULE1.QRYAFILIADOS.SQL.ADD('(((FEC_EGRESO_UNI >= :"FECHAF") OR (FEC_EGRESO_UNI >= :"FECHAFI")) OR FEC_EGRESO_UNI IS NULL)');
                DATAMODULE1.QRYAFILIADOS.Parameters[0].VALUE := TRIM(CBTIPODOCAFILIADO.TEXT);
                DATAMODULE1.QRYAFILIADOS.Parameters[1].VALUE := TRIM(EDTNUMERODUCAFILIADO.TEXT);
                DATAMODULE1.QRYAFILIADOS.Parameters[2].VALUE := STRTODATE('01/' + EDTPERIODO.TEXT);
                DATAMODULE1.QRYAFILIADOS.Parameters[3].VALUE := STRTODATE('28/' + EDTPERIODO.TEXT);
                DATAMODULE1.QRYAFILIADOS.Parameters[4].VALUE := STRTODATE('01/' + EDTPERIODO.TEXT);
                DATAMODULE1.QRYAFILIADOS.Parameters[5].VALUE := STRTODATE('28/' + EDTPERIODO.TEXT);
                DATAMODULE1.QRYAFILIADOS.OPEN;
                IF DATAMODULE1.QRYAFILIADOS.RECORDCOUNT > 0 THEN
                   BEGIN
                        DATAMODULE1.QRYAFILIADOS.CLOSE;
                        DATAMODULE1.QRYAFILIADOS.SQL.CLEAR;
                        DATAMODULE1.QRYAFILIADOS.SQL.ADD('SELECT  TIP_DOCUMENTO_EMP, NUM_DOCUMENTO_EMP,TIP_DOCUMENTO_AFI, NUM_DOCUMENTO_AFI,PRI_APELLIDO,SEG_APELLIDO,PRI_NOMBRE,SEG_NOMBRE, VAL_SUELDO_AFIL,FEC_INGRESO_UNI,FEC_EGRESO_UNI,AFILIADOS_EMPRESAS.COD_ESTADO,FEC_NACIMIENTO,COD_SEXO,T1.COD_MODALIDAD_TRA');
                        DATAMODULE1.QRYAFILIADOS.SQL.ADD('FROM AFILIADOS_EMPRESAS,AFILIADOS T1');
                        DATAMODULE1.QRYAFILIADOS.SQL.ADD('WHERE TIP_DOCUMENTO_AFI = TIP_DOCUMENTO AND  NUM_DOCUMENTO_AFI = NUM_DOCUMENTO AND  TIP_DOCUMENTO_AFI = :"CC" AND NUM_DOCUMENTO_AFI = :"DOCUMENTO" AND ((FEC_INGRESO_UNI <= :"FECHAIN") OR (FEC_INGRESO_UNI <= :"FECHAINI")) AND ');
                        DATAMODULE1.QRYAFILIADOS.SQL.ADD('(((FEC_EGRESO_UNI >= :"FECHAF") OR (FEC_EGRESO_UNI >= :"FECHAFI")) OR FEC_EGRESO_UNI IS NULL) AND TIP_DOCUMENTO_EMP = :"TIPOEM" AND  NUM_DOCUMENTO_EMP = :"NUMEM"');
                        DATAMODULE1.QRYAFILIADOS.Parameters[0].VALUE := TRIM(CBTIPODOCAFILIADO.TEXT);
                        DATAMODULE1.QRYAFILIADOS.Parameters[1].VALUE := TRIM(EDTNUMERODUCAFILIADO.TEXT);
                        DATAMODULE1.QRYAFILIADOS.Parameters[2].VALUE := STRTODATE('01/' + EDTPERIODO.TEXT);
                        DATAMODULE1.QRYAFILIADOS.Parameters[3].VALUE := STRTODATE('28/' + EDTPERIODO.TEXT);
                        DATAMODULE1.QRYAFILIADOS.Parameters[4].VALUE := STRTODATE('01/' + EDTPERIODO.TEXT);
                        DATAMODULE1.QRYAFILIADOS.Parameters[5].VALUE := STRTODATE('28/' + EDTPERIODO.TEXT);
                        DATAMODULE1.QRYAFILIADOS.Parameters[6].VALUE := TRIM(cbtipodocempresa.TEXT);
                        DATAMODULE1.QRYAFILIADOS.Parameters[7].VALUE := TRIM(ednumero.TEXT);
                        DATAMODULE1.QRYAFILIADOS.OPEN;
                        IF DATAMODULE1.QRYAFILIADOS.RECORDCOUNT = 0 THEN
                           BEGIN
                          estado_pago := 'EMP';
                          exit;
                        END;

                   end
                   else
                   begin
                     IF DATAMODULE1.QRYAFILIADOS.RECORDCOUNT = 0 THEN
                     BEGIN
                          estado_pago := 'NRS';
                          exit;
                     end;
                   end;

                   // verificar  si tiene IBC
                   // Trabajadores  dependientes  pagan  sobre  un  salario minimo  por 12 %


               IF  ROUNDTO(((((GLSALARIOMINIMO)* DATAMODULE1.QryModalidadSALARIOS_MINIMOS.Value)/30)* DATAMODULE1.QryModalidadPOR_COTIZACION.Value)* STRTOINT(EDDIAS.TEXT),1) >  (strtofloat(edtcotizacionobligatorio.TEXT)/ STRTOINT(EDDIAS.TEXT)*30) THEN
               BEGIN
                 estado_pago := 'IBC';
                 exit;
               END;
         //************
               //NUEVOS
              DATAMODULE1.qrymesesafil.Close;
              DATAMODULE1.qrymesesafil.Parameters[0].Value := STRTODATE(COPY(EDTPERIODO.Text,1,2) + '/' + '01' + '/' + COPY(EDTPERIODO.Text,4,4) );
              DATAMODULE1.qrymesesafil.Parameters[1].Value := CBTIPODOCAFILIADO.Text;
              DATAMODULE1.qrymesesafil.Parameters[2].Value := EDTNUMERODUCAFILIADO.Text;
              DATAMODULE1.qrymesesafil.Open;
              IF DATAMODULE1.qrymesesafil.RecordCount > 0 THEN //NUEVO MENOR A  1 MES
              BEGIN
                 estado_pago := 'IBC';
                 exit;
              END;

            //TRASLADOS
              DATAMODULE1.qrytrasafil.Close;
              DATAMODULE1.qrytrasafil.Parameters[0].Value := STRTODATE(COPY(EDTPERIODO.Text,1,2) + '/' + '01' + '/' + COPY(EDTPERIODO.Text,4,4) );
              DATAMODULE1.qrytrasafil.Parameters[1].Value := CBTIPODOCAFILIADO.Text;
              DATAMODULE1.qrytrasafil.Parameters[2].Value := EDTNUMERODUCAFILIADO.Text;
              DATAMODULE1.qrytrasafil.Parameters[3].Value := STRTODATE(COPY(EDTPERIODO.Text,1,2) + '/' + '01' + '/' + COPY(EDTPERIODO.Text,4,4) );
              IF DATAMODULE1.qrytrasafil.RecordCount > 0 THEN //TRASLADO MENOR  A 2 MESES
              BEGIN
                  estado_pago := 'IBC';
                 exit;
              END;
              //NUEVOS & TRASLADOS
              //******NOVEDAD 166
              IF novedad166(cbtipodocafiliado.Text,edtnumeroducafiliado.Text)='S' THEN
              BEGIN
                  estado_pago := 'IBC';
                  exit;
              END;
              //******NOVEDAD 166
              //***********

 end;

 
PROCEDURE Tfrmcorreciones.TABSHEET2ENTER(SENDER: TOBJECT);
VAR FECHACOMPENSA1 : TDATE;
BEGIN
///??????????
IF EDTPLANILLA.TEXT <> '0' THEN
BEGIN
TRY
FECHACOMPENSA1  := STRTODATE('01/' + EDTPERIODO.TEXT);
 IF (CBTIPODECLARACION.ITEMINDEX = -1) THEN
 BEGIN
   SHOWMESSAGE(LowerCase('SELECCIONE EL TIPO DE  DECLARACION'));
   //FRMPLANILLAS.PCENCABEZADO.ACTIVEPAGE := TABSHEET1;
   FRMCORRECIONES.PCENCABEZADO.ACTIVEPAGE := TABSHEET1;
   CBTIPODECLARACION.SETFOCUS;
 END
 EXCEPT  // MENSAJE  DE  LOS ERRORES
  //SHOWMESSAGE(LowerCase('ERROR AL CALCULAR LIQUIDACION');
   ON E: ECONVERTERROR DO
    BEGIN
      E.MESSAGE := 'EL PERIODO  ESTA MAL  DIGITADO O INCOMPLETO';
      FRMCORRECIONES.PCENCABEZADO.ACTIVEPAGE := TABSHEET1;
      EDTPERIODO.SETFOCUS;
      RAISE;
    END;
   END;

END; // EDTPLANILLA.TEXT <> '0'
END;

END.

