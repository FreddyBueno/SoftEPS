UNIT UINCAPACIDADES;

INTERFACE

USES
  WINDOWS, MESSAGES, SYSUTILS, VARIANTS, CLASSES, GRAPHICS, CONTROLS, FORMS,
  DIALOGS, MATH, EXTCTRLS, DBCTRLS, STDCTRLS, GRIDS, DBGRIDS, COMCTRLS, DB,
  DBTABLES, MENUS,SHELLAPI, Buttons, QuickRpt, ADODB;

TYPE
  TFRMINCAPACIDADES = CLASS(TFORM)
    PANEL2: TPANEL;
    PANEL3: TPANEL;
    QRYAFILIADOS: TQUERY;
    QRYINCAUSUARIO: TQUERY;
    Button3: TBitBtn;
    Button2: TBitBtn;
    Panel1: TPanel;
    Label24: TLabel;
    Label47: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Edtnumero: TEdit;
    Label1: TLabel;
    rgtipoincapacidad: TComboBox;
    Label7: TLabel;
    cbtipodocempresa: TComboBox;
    Label8: TLabel;
    edtnumdocempresa: TEdit;
    Label3: TLabel;
    dtpfecexpedicion: TDateTimePicker;
    Label9: TLabel;
    edtnombreempresa: TEdit;
    Label4: TLabel;
    cbtipodocafiliado: TComboBox;
    Label5: TLabel;
    edtnumdocafiliadoin: TEdit;
    Label17: TLabel;
    edtsexo: TEdit;
    edtedad: TEdit;
    edtnombreafiliado: TEdit;
    Label6: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    edtcoddiagnostico: TEdit;
    edtnombrediagnostico: TEdit;
    Label12: TLabel;
    dtpfeciniciacion: TDateTimePicker;
    Label13: TLabel;
    edtdiasincapacidad: TEdit;
    valorletradias: TEdit;
    Label14: TLabel;
    Label23: TLabel;
    edtfinal: TEdit;
    chprorroga: TCheckBox;
    Label16: TLabel;
    edtcodprestador: TEdit;
    Label15: TLabel;
    edtnombreprestador: TEdit;
    Label18: TLabel;
    edtdiasliquidados: TEdit;
    Label19: TLabel;
    edtsalariobase: TEdit;
    Label20: TLabel;
    edtproliquidacion: TEdit;
    Label21: TLabel;
    edtvalorliquidado: TEdit;
    Edit1: TEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    Edit2: TEdit;
    Button1: TBitBtn;
    btneliminar: TBitBtn;
    Label22: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    QRCompositeReport1: TQRCompositeReport;
    Label25: TLabel;
    Label26: TLabel;
    sgdetalleinc: TStringGrid;
    Label27: TLabel;
    Edit3: TEdit;
    Label28: TLabel;
    qrycartapresentacion: TADOQuery;
    buscarprorroga: TADOQuery;
    qrydetalle: TADOQuery;
    buscarprorrogaNUM_INCAPACIDAD: TStringField;
    buscarprorrogaTIP_INCAPACIDAD: TStringField;
    buscarprorrogaFEC_EXPEDICION: TDateTimeField;
    buscarprorrogaTIP_DOCEMPRESA: TStringField;
    buscarprorrogaNUM_DOCEMPRESA: TStringField;
    buscarprorrogaAFI_TIPO_DOC: TStringField;
    buscarprorrogaAFI_NUMERO_DOC: TStringField;
    buscarprorrogaCOD_DIAGNOSTICO: TStringField;
    buscarprorrogaCOD_PRESTADOR: TStringField;
    buscarprorrogaNOM_PRESTADOR: TStringField;
    buscarprorrogaDIA_INCAPACIDAD: TStringField;
    buscarprorrogaDIA_LIQUIDADOS: TStringField;
    buscarprorrogaFEC_INICIO: TDateTimeField;
    buscarprorrogaPRO_INCAPACIDAD: TStringField;
    buscarprorrogaSAL_BASE: TBCDField;
    buscarprorrogaPRO_SALARIO_LIQUI: TBCDField;
    buscarprorrogaVAL_INCAPACIDAD: TBCDField;
    buscarprorrogaEST_INCAPACIDAD: TStringField;
    buscarprorrogaCOD_REGIONAL: TStringField;
    buscarprorrogaCOD_OFICINA: TStringField;
    buscarprorrogaFEC_DIGITACION: TDateTimeField;
    buscarprorrogaTIP_DOC_USUARIO: TStringField;
    buscarprorrogaTIP_NUM_USUARIO: TStringField;
    buscarprorrogaFEC_TERMINACION: TDateTimeField;
    buscarprorrogaFEC_MODIFICACION: TDateTimeField;
    buscarprorrogaNO_PRORROGA: TStringField;
    buscarprorrogaTOT_DIAS_PRORROGA: TStringField;
    buscarprorrogaNUM_RECEPCION: TStringField;
    buscarprorrogaFEC_NOTIFICACION: TDateTimeField;
    buscarprorrogaMED_NOTIFICACION: TStringField;
    buscarprorrogaNO_GUIA: TStringField;
    qrydetalleNUM_INCAPACIDAD: TStringField;
    qrydetallePER_PAGO_INCAP: TDateTimeField;
    qrydetalleNUM_COMPROBANTE: TStringField;
    qrydetalleDIA_PAGAR_INCAP: TBCDField;
    qrydetalleVAL_PAGAR_INCAP: TBCDField;
    qrydetalleTIP_PAGO_INCAP: TStringField;
    qrydetalleFEC_PAGO_INCAP: TDateTimeField;
    qrydetallePER_PRESENTADO: TStringField;
    qrydetalleEST_DET_PLANILLA: TStringField;
    qrydetalleVAL_DESCONTADO: TBCDField;
    qrybuscarcompensacion: TADOQuery;
    qrybuscarcompensacionPER_COTIZACION: TStringField;
    qryaprobaciones: TADOQuery;
    qryaprobacionesACTIVADO: TBooleanField;
    qryaprobacionesTIPO: TStringField;
    qryaprobacionesCAUSAL_DE_NO_APROBACION: TStringField;
    qrycartapresentacionNUM_INCAPACIDAD: TStringField;
    qrycartapresentacionTIP_INCAPACIDAD: TStringField;
    qrycartapresentacionFEC_EXPEDICION: TDateTimeField;
    qrycartapresentacionFEC_FALLO_TUTELA: TDateTimeField;
    qrycartapresentacionNUMERO_TUTELA: TStringField;
    qrycartapresentacionTIP_DOCEMPRESA: TStringField;
    qrycartapresentacionNUM_DOCEMPRESA: TStringField;
    qrycartapresentacionAFI_TIPO_DOC: TStringField;
    qrycartapresentacionAFI_NUMERO_DOC: TStringField;
    qrycartapresentacionCOD_DIAGNOSTICO: TStringField;
    qrycartapresentacionCOD_PRESTADOR: TStringField;
    qrycartapresentacionNOM_PRESTADOR: TStringField;
    qrycartapresentacionDIA_INCAPACIDAD: TStringField;
    qrycartapresentacionDIA_LIQUIDADOS: TStringField;
    qrycartapresentacionFEC_INICIO: TDateTimeField;
    qrycartapresentacionPRO_INCAPACIDAD: TStringField;
    qrycartapresentacionSAL_BASE: TBCDField;
    qrycartapresentacionPRO_SALARIO_LIQUI: TBCDField;
    qrycartapresentacionVAL_INCAPACIDAD: TBCDField;
    qrycartapresentacionEST_INCAPACIDAD: TStringField;
    qrycartapresentacionCOD_REGIONAL: TStringField;
    qrycartapresentacionCOD_OFICINA: TStringField;
    qrycartapresentacionFEC_DIGITACION: TDateTimeField;
    qrycartapresentacionTIP_DOC_USUARIO: TStringField;
    qrycartapresentacionTIP_NUM_USUARIO: TStringField;
    qrycartapresentacionFEC_TERMINACION: TDateTimeField;
    qrycartapresentacionFEC_MODIFICACION: TDateTimeField;
    qrycartapresentacionNO_PRORROGA: TStringField;
    qrycartapresentacionTOT_DIAS_PRORROGA: TStringField;
    qrycartapresentacionNUM_RECEPCION: TStringField;
    qrycartapresentacionFEC_NOTIFICACION: TDateTimeField;
    qrycartapresentacionMED_NOTIFICACION: TStringField;
    qrycartapresentacionNO_GUIA: TStringField;
    qrycartapresentacionTIP_DOCUMENTO: TStringField;
    qrycartapresentacionNUM_DOCUMENTO: TStringField;
    qrycartapresentacionNOM_EMPRESA: TStringField;
    qrycartapresentacionREP_EMPRESA: TStringField;
    qrycartapresentacionDIR_EMPRESA: TStringField;
    qrycartapresentacionTEL_EPS: TStringField;
    qrycartapresentacionFAX_EPS: TStringField;
    qrycartapresentacionEML_EPS: TStringField;
    qrycartapresentacionDEPARTAMENTO: TStringField;
    qrycartapresentacionCIUDAD: TStringField;
    qrycartapresentacionCOD_SUCURSAL: TStringField;
    qrycartapresentacionTIP_APORTANTE: TStringField;
    qrycartapresentacionCOD_ACTIVIDAD_ECO: TStringField;
    qrycartapresentacionCOD_ESTADO: TStringField;
    qrycartapresentacionCOD_OFICINA_1: TStringField;
    qrycartapresentacionCOD_REGIONAL_1: TStringField;
    qrycartapresentacionTIP_DOCUMENTO_ARP: TStringField;
    qrycartapresentacionNUM_DOCUMENTO_ARP: TStringField;
    qrycartapresentacionCOD_DEPARTAMENTO: TStringField;
    qrycartapresentacionCOD_CIUDAD: TStringField;
    qrycartapresentacionFEC_AFILIACION: TDateTimeField;
    qrycartapresentacionTEL_EMPRESA: TStringField;
    qrycartapresentacionTEL_EMPRESA2: TStringField;
    qrycartapresentacionURL_EMPRESA: TStringField;
    qrycartapresentacionEML_EMPRESA: TStringField;
    qrycartapresentacionTOT_EMPLEADOS: TStringField;
    qrycartapresentacionCOD_TIPO_PER: TStringField;
    qrycartapresentacionCOD_ZONA: TStringField;
    qrycartapresentacionCOD_DEPARTAMENTO_PAG: TStringField;
    qrycartapresentacionCOD_CIUDAD_PAG: TStringField;
    qrycartapresentacionCOD_PRESENTACION_cOM: TStringField;
    qrycartapresentacionCOD_TIP_EMPRESA: TStringField;
    qrycartapresentacionTIP_DOCUMENTO_PEN: TStringField;
    qrycartapresentacionNUM_DOCUMENTO_PEN: TStringField;
    qrycartapresentacionclave: TStringField;
    qrycartapresentacionNOM_EMPRESA_BDUA: TStringField;
    qrycartapresentacionDIGITO_VERIFICACION: TStringField;
    qrycartapresentacionCARGO_REPRESENTANTE: TStringField;
    qrycartapresentacionTELEFONO_REPRESENTANTE: TStringField;
    qrycartapresentacionNOMBRE_CONTACTO: TStringField;
    qrycartapresentacionCARGO_CONTACTO: TStringField;
    qrycartapresentacionTELEFONO_CONTACTO: TStringField;
    qrycartapresentacionCLASE_APORTANTE: TStringField;
    qrycartapresentacionCOD_ARP: TStringField;
    qrycartapresentacionCOD_ARP_BUDA: TStringField;
    qrycartapresentacionBARRIO: TBCDField;
    qrycartapresentacionCOD_DEPARTAMENTO_1: TStringField;
    qrycartapresentacionCOD_CIUDAD_1: TStringField;
    qrycartapresentacionNOM_CIUDAD: TStringField;
    qrycartapresentacionPOR_ALTO_RIE: TStringField;
    qrycartapresentacionCOD_REGIONAL_2: TStringField;
    qrycartapresentacionVALOR_UPC: TBCDField;
    qrycartapresentacionCEN_COSTO: TStringField;
    qrycartapresentacionCONS_RS: TStringField;
    qrycartapresentacionFAC_PRESENTA: TStringField;
    qrycartapresentacionFORMATOOTROSI: TStringField;
    qrycartapresentacionFOR_PAGO: TStringField;
    qrycartapresentacionTIP_DOCUMENTO_1: TStringField;
    qrycartapresentacionNUM_DOCUMENTO_1: TStringField;
    qrycartapresentacionCOD_SEXO: TStringField;
    qrycartapresentacionCOD_TIPO_AFIL: TStringField;
    qrycartapresentacionCOD_MODALIDAD_TRA: TStringField;
    qrycartapresentacionCOD_ESTADO_CIV: TStringField;
    qrycartapresentacionCOD_ESTRATO: TStringField;
    qrycartapresentacionCOD_ESCOLARIDAD: TStringField;
    qrycartapresentacionCOD_PROFESION: TStringField;
    qrycartapresentacionCOD_ESTADO_1: TStringField;
    qrycartapresentacionCOD_OFICINA_2: TStringField;
    qrycartapresentacionCOD_REGIONAL_3: TStringField;
    qrycartapresentacionPRI_NOMBRE: TStringField;
    qrycartapresentacionSEG_NOMBRE: TStringField;
    qrycartapresentacionPRI_APELLIDO: TStringField;
    qrycartapresentacionSEG_APELLIDO: TStringField;
    qrycartapresentacionFEC_NACIMIENTO: TDateTimeField;
    qrycartapresentacionFEC_AFILIACION_SIS: TDateTimeField;
    qrycartapresentacionFEC_AFILIACION_UNI: TDateTimeField;
    qrycartapresentacionEPS_TIP_DOC: TStringField;
    qrycartapresentacionEPS_NUM_DOC: TStringField;
    qrycartapresentacionCOD_DEPARTAMENTO_RES: TStringField;
    qrycartapresentacionCOD_CIUDAD_RES: TStringField;
    qrycartapresentacionCOD_BARRIO_RES: TStringField;
    qrycartapresentacionCOD_ZONA_1: TStringField;
    qrycartapresentacionACE_TIP_DOC: TStringField;
    qrycartapresentacionACE_NUMERO_DOC: TStringField;
    qrycartapresentacionCOD_DISCAPACIDAD: TStringField;
    qrycartapresentacionNUM_SEMANA_COTIZA: TBCDField;
    qrycartapresentacionFEC_RADICACION: TDateTimeField;
    qrycartapresentacionNUM_FORMATO_AFIL: TStringField;
    qrycartapresentacionDIR_AFILIADO_RES: TStringField;
    qrycartapresentacionTEL_AFILIADO_RES: TStringField;
    qrycartapresentacionTEL_AFILIADO_RES2: TStringField;
    qrycartapresentacionCEL_AFILIADO: TStringField;
    qrycartapresentacionEML_AFILIADO: TStringField;
    qrycartapresentacionFEC_ULTIMA_NOV: TDateTimeField;
    qrycartapresentacionTIP_DOCUMENTO_IPS: TStringField;
    qrycartapresentacionNUM_DOCUMENTO_IPS: TStringField;
    qrycartapresentacionTIP_DOCUMENTO_MED: TStringField;
    qrycartapresentacionNUM_DOCUMENTO_MED: TStringField;
    qrycartapresentacionTIP_DOCUMENTO_ODO: TStringField;
    qrycartapresentacionNUM_DOCUMENTO_ODO: TStringField;
    qrycartapresentacionSEM_COTIZACION: TBCDField;
    qrycartapresentacionCATEGORIA: TStringField;
    qrycartapresentacionCOD_CLA_AFILIACION: TStringField;
    qrycartapresentacionAFI_FONETICO: TStringField;
    qrycartapresentacionAFI_CAU_ESTADO: TIntegerField;
    qrycartapresentacionAFI_TRA_CODIGO: TStringField;
    qrycartapresentacionCOD_DEPARTAMENTO_2: TStringField;
    qrycartapresentacionNOM_DEPARTAMENTO: TStringField;
    qrycartapresentacionDISTRITOS: TStringField;
    PROCEDURE FORMCLOSE(SENDER: TOBJECT; VAR ACTION: TCLOSEACTION);
    PROCEDURE FORMCREATE(SENDER: TOBJECT);
    PROCEDURE EDTDIASINCAPACIDADKEYPRESS(SENDER: TOBJECT; VAR KEY: CHAR);
    PROCEDURE EDTNUMDOCEMPRESAEXIT(SENDER: TOBJECT);
    PROCEDURE EDTPROLIQUIDACIONEXIT(SENDER: TOBJECT);
    PROCEDURE EDTNUMEROEXIT(SENDER: TOBJECT);
    PROCEDURE EDTNUMDOCAFILIADOINEXIT(SENDER: TOBJECT);
    PROCEDURE EDTCODDIAGNOSTICOEXIT(SENDER: TOBJECT);
    PROCEDURE LIMPIAR;
    PROCEDURE EDTNUMEROENTER(SENDER: TOBJECT);
    PROCEDURE DTPFECINICIACIONEXIT(SENDER: TOBJECT);
    PROCEDURE EDTDIASINCAPACIDADEXIT(SENDER: TOBJECT);
    PROCEDURE EDTNUMDOCAFILIADOINCLICK(SENDER: TOBJECT);
    PROCEDURE RGTIPOINCAPACIDADEXIT(SENDER: TOBJECT);
    PROCEDURE EDTNUMDOCEMPRESACHANGE(SENDER: TOBJECT);
    PROCEDURE EDTCODPRESTADOREXIT(SENDER: TOBJECT);
    PROCEDURE REFRESCAR_INCAPACIDAD;
    PROCEDURE BUTTON3CLICK(SENDER: TOBJECT);
    PROCEDURE DIASLIQUIDADOS;
    PROCEDURE PAGOLINCENCIAS;
    PROCEDURE PAGOEFERMEDADGENERAL;
    PROCEDURE GRABARINCAPACIDADES;
    PROCEDURE BUTTON2CLICK(SENDER: TOBJECT);
    FUNCTION  VALIDAR: BOOLEAN;
    PROCEDURE EDTSALARIOBASEENTER(SENDER: TOBJECT);
    PROCEDURE VERIFICAR_INCAPACIDADES;
    PROCEDURE EDTCODDIAGNOSTICOCLICK(SENDER: TOBJECT);
    PROCEDURE EDTPROLIQUIDACIONCLICK(SENDER: TOBJECT);
    PROCEDURE VERIFICAR_CARTERA;
    PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);
    PROCEDURE CERRAR1CLICK(SENDER: TOBJECT);
    PROCEDURE ENVIARWORD;
    PROCEDURE USUARIOS1CLICK(SENDER: TOBJECT);
    PROCEDURE INCAPACIDADVIGENTE;
    procedure liquidar_incapacidad;
    procedure Button1Click(Sender: TObject);
    procedure dtpfecexpedicionExit(Sender: TObject);
    procedure cbtipodocempresaExit(Sender: TObject);
    procedure cbtipodocafiliadoExit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure chprorrogaClick(Sender: TObject);
    procedure btneliminarClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure imprimir_incapacidad;
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    PROCEDURE DIASINCAPACIDADPAT;
    PROCEDURE PAGOSININTERRUMPIDOS;
    PROCEDURE CUATROSEMANASAFILIACION;
    FUNCTION   xIntToLletres (Numero:LongInt):String;
    FUNCTION  xxIntToLletres(Valor:LongInt):String;
    FUNCTION PROMEDIOSAL:STRING;
    FUNCTION FECHA:STRING;
    FUNCTION FECHAINCAPACIDAD:STRING;
    procedure edtnombreprestadorExit(Sender: TObject);




  PRIVATE
     { PRIVATE DECLARATIONS }
  PUBLIC
    { PUBLIC DECLARATIONS }
  END;

VAR
  FRMINCAPACIDADES: TFRMINCAPACIDADES;
  ENCONTRO : BOOLEAN;
  FECHA_FINAL : TDATETIME;
  EDADAFILIADO : INTEGER;
  ESTADO_INCAPACIDAD : STRING;
  LIQUIDAR : Real;
  NOM1 : STRING;
  NOM2 : STRING;
  APE1 : STRING;
  APE2 : STRING;
IMPLEMENTATION

USES DTMODULO, UDIAGNOSTICOS, UPRINCIPAL, UGLOBAL,UEMPRESAS, UAFILIADOS,
  UPRESTADORES, UPROCESO, AUTOIMPL, UINCAFILIADO, Uplanillacorreciones,
  Ucerincapa, Uincappat, Ucartaincapacidad, Ucertificado_inca;

{$R *.DFM}

PROCEDURE TFRMINCAPACIDADES.FORMCLOSE(SENDER: TOBJECT;
  VAR ACTION: TCLOSEACTION);
BEGIN
ACTION:=CAFREE;
GLPROCESO := '';
FRMPRINCIPAL.SB.PANELS[1].TEXT := 'PROCESO ABIERTO ACTUAL  :'+ GLPROCESO
END;

PROCEDURE TFRMINCAPACIDADES.FORMCREATE(SENDER: TOBJECT);
BEGIN
APPLICATION.ONMESSAGE := APPMESSAGE;
GLPROCESO := 'INCAPACIDADES';
FRMPRINCIPAL.SB.PANELS[1].TEXT := 'PROCESO ABIERTO ACTUAL  :'+ GLPROCESO;
WITH SGDETALLEINC DO
  BEGIN
        CELLS[0,0]:='PERIODO ';
        CELLS[1,0]:='DIAS ';
        CELLS[2,0]:='VALOR ';
        CELLS[3,0]:='DESCONTADA POR';
        CELLS[4,0]:='FECHA  DESCUENTO';
        CELLS[5,0]:='NUMERO  COMPROBANTE';
        CELLS[6,0]:='PERIODO DESCONTADO';
        CELLS[7,0]:='ESTADO';
        CELLS[8,0]:='VALOR DESCONTADO';
        DATAMODULE1.qrydocumentos.Open;
    DTPFECEXPEDICION.DATE := STRTODATE(GLDATE);
    DTPFECINICIACION.DATE := STRTODATE(GLDATE);
    EDTNUMERO.TEXT := '0';
    //EDTNUMERO.SETFOCUS;

    END;

END;

PROCEDURE TFRMINCAPACIDADES.EDTDIASINCAPACIDADKEYPRESS(SENDER: TOBJECT; VAR KEY: CHAR);
BEGIN
 IF (KEY = #13) THEN                            { IF IT'S AN ENTER KEY }
     IF (ACTIVECONTROL IS TEDIT) THEN
        BEGIN
       KEY := #0;                                 { EAT ENTER KEY }
       PERFORM(WM_NEXTDLGCTL, 0, 0);              { MOVE TO NEXT CONTROL }
     END;
IF NOT (KEY IN ['0'..'9',#8])THEN
 BEGIN
 KEY := #0;
 SHOWMESSAGE(LowerCase('DIGITE SOLO NUMEROS'));
 END;
END;

PROCEDURE TFRMINCAPACIDADES.EDTNUMDOCEMPRESAEXIT(SENDER: TOBJECT);
BEGIN
if (trim(EDTNUMDOCEMPRESA.Text) = '') or (trim(EDTNUMDOCEMPRESA.Text) = '0') then
begin
//ShowMessage(' Seleccione  el tipo de Documento de la Empresa');
Button4.SetFocus;
exit;
end;

 IF (EDTNUMDOCEMPRESA.TEXT >'0') AND  (CBTIPODOCEMPRESA.ITEMINDEX >-1) THEN
  BEGIN
    DATAMODULE1.QRYEMPRESAS.CLOSE;
    DATAMODULE1.QRYEMPRESAS.Parameters[0].VALUE := TRIM(CBTIPODOCEMPRESA.TEXT);
    DATAMODULE1.QRYEMPRESAS.Parameters[1].VALUE := TRIM(EDTNUMDOCEMPRESA.TEXT);
    DATAMODULE1.QRYEMPRESAS.OPEN;
        IF DATAMODULE1.QRYEMPRESAS.RECORDCOUNT > 0 THEN
        BEGIN
        EDTNOMBREEMPRESA.TEXT := DATAMODULE1.QRYEMPRESASNOM_EMPRESA.VALUE;
        QRYAPROBACIONES.Close;
        QRYAPROBACIONES.Parameters[0].Value:='POR TENER PAGOS ININTERRUMPIDOS A LA FECHA DE INICIO DE LA LICENCIA DE MATERNIDAD';
        QRYAPROBACIONES.Open;
        IF (QRYAPROBACIONESACTIVADO.Value=TRUE) AND (RGTIPOINCAPACIDAD.ItemIndex=2)  THEN
        PAGOSININTERRUMPIDOS  //***TUTELA***
        ELSE IF (QRYAPROBACIONESACTIVADO.Value=TRUE) AND (RGTIPOINCAPACIDAD.ItemIndex<>2)  THEN
                 PAGOSININTERRUMPIDOS;
        END
        ELSE
        IF DATAMODULE1.QRYEMPRESAS.RECORDCOUNT = 0 THEN
         BEGIN
         SHOWMESSAGE(LowerCase('LA EMPRESA  NO EXISTE VERIFIQUE NUEVAMENTE'));
         CBTIPODOCEMPRESA.ITEMINDEX := -1;
         EDTNUMDOCEMPRESA.TEXT := '';
         Button4.SETFOCUS;
         END;
       END
    ELSE IF EDTNUMDOCEMPRESA.TEXT = '0' THEN
         BEGIN
         SHOWMESSAGE(LowerCase('ESCOJA  EL NUMERO DE  DOCUMENTO  O CON DOBLE CLIK LISTA  LAS  EMPRESAS'));
         Button4.SETFOCUS;
         END;

     
END;

PROCEDURE TFRMINCAPACIDADES.EDTPROLIQUIDACIONEXIT(SENDER: TOBJECT);
BEGIN
    IF CHPRORROGA.Checked THEN
  BEGIN
    IF STRTOFLOAT(EDIT2.Text) > 90 THEN
       LIQUIDAR := 0.50;
  END;     
        IF RGTIPOINCAPACIDAD.ITEMINDEX = 0 THEN
        BEGIN
        EDTVALORLIQUIDADO.TEXT := FLOATTOSTR(((STRTOINT(EDTPROLIQUIDACION.TEXT)/30)* LIQUIDAR)*(STRTOINT(EDTDIASLIQUIDADOS.TEXT)));
        EDTVALORLIQUIDADO.TEXT := FLOATTOSTR(ROUNDTO(StrToFloat(EDTVALORLIQUIDADO.TEXT),1));
        liquidar_incapacidad;
        END
                ELSE IF RGTIPOINCAPACIDAD.ITEMINDEX = 1 THEN
                BEGIN
                EDTVALORLIQUIDADO.TEXT := FLOATTOSTR((STRTOINT(EDTPROLIQUIDACION.TEXT)/30)* STRTOINT(EDTDIASLIQUIDADOS.TEXT)*LIQUIDAR);
                EDTVALORLIQUIDADO.TEXT := FLOATTOSTR(ROUNDTO(STRTOfloat(EDTVALORLIQUIDADO.TEXT),1));
                liquidar_incapacidad;
                END
                        ELSE IF RGTIPOINCAPACIDAD.ITEMINDEX = 2 THEN
                        BEGIN
                        EDTVALORLIQUIDADO.TEXT := FLOATTOSTR((STRTOINT(EDTPROLIQUIDACION.TEXT)/30)* STRTOINT(EDTDIASLIQUIDADOS.TEXT));
                        EDTVALORLIQUIDADO.TEXT := FLOATTOSTR(ROUNDTO(STRTOfloat(EDTVALORLIQUIDADO.TEXT),1));
                        liquidar_incapacidad;
                        END
                                ELSE IF RGTIPOINCAPACIDAD.ITEMINDEX = 3 THEN
                                BEGIN
                                EDTVALORLIQUIDADO.TEXT := FLOATTOSTR((STRTOINT(EDTPROLIQUIDACION.TEXT)/30)* STRTOINT(EDTDIASLIQUIDADOS.TEXT));
                                EDTVALORLIQUIDADO.TEXT := FLOATTOSTR(ROUNDTO(STRTOfloat(EDTVALORLIQUIDADO.TEXT),1));
                                liquidar_incapacidad;
                                END
                                       { ELSE IF RGTIPOINCAPACIDAD.ITEMINDEX = 4 THEN
                                        BEGIN
                                        EDTVALORLIQUIDADO.TEXT := FLOATTOSTR((STRTOINT(EDTPROLIQUIDACION.TEXT)/30)* STRTOINT(EDTDIASLIQUIDADOS.TEXT)*LIQUIDAR);
                                        EDTVALORLIQUIDADO.TEXT := FLOATTOSTR(ROUNDTO(STRTOfloat(EDTVALORLIQUIDADO.TEXT),1));
                                        liquidar_incapacidad;
                                        END}
                                                ELSE IF RGTIPOINCAPACIDAD.ITEMINDEX = 5 THEN
                                                BEGIN
                                                EDTVALORLIQUIDADO.TEXT := FLOATTOSTR((STRTOINT(EDTPROLIQUIDACION.TEXT)/30)* STRTOINT(EDTDIASLIQUIDADOS.TEXT)*LIQUIDAR);
                                                EDTVALORLIQUIDADO.TEXT := FLOATTOSTR(ROUNDTO(STRTOfloat(EDTVALORLIQUIDADO.TEXT),1));
                                                liquidar_incapacidad;
                                                END;

BUTTON2.SetFocus;
END;

PROCEDURE TFRMINCAPACIDADES.EDTNUMEROEXIT(SENDER: TOBJECT);
BEGIN
IF (trim(EDTNUMERO.TEXT) = '0') or (trim(EDTNUMERO.TEXT) = '') THEN
    BEGIN
     ShowMessage('Digite  el numero de  la incapacidad');
     EDTNUMERO.SetFocus;
     exit;
    end;

    IF EDTNUMERO.TEXT > '0' THEN
    BEGIN
     EDTNUMERO.TEXT :=FLOATTOSTR(STRTOINT(EDTNUMERO.TEXT));
     DATAMODULE1.QRYINCAPACIDADES.CLOSE;
     DATAMODULE1.QRYINCAPACIDADES.SQL.CLEAR;
     DATAMODULE1.QRYINCAPACIDADES.SQL.ADD('SELECT * FROM INCAPACIDADES WHERE NUM_INCAPACIDAD = :"INCAPACIDAD"');
     DATAMODULE1.QRYINCAPACIDADES.Parameters[0].VALUE := EDTNUMERO.TEXT;
     DATAMODULE1.QRYINCAPACIDADES.OPEN;
     IF DATAMODULE1.QRYINCAPACIDADES.RECORDCOUNT > 0 THEN
        BEGIN
        SHOWMESSAGE(LowerCase('EL NUMERO DE  INCAPACIDAD YA  FUE DIGITADA ' + DATETOSTR(DATAMODULE1.QRYINCAPACIDADESFEC_INICIO.VALUE)));
        LIMPIAR;
        ENCONTRO := TRUE;
        btneliminar.Enabled := true;
        if (DATAMODULE1.QRYINCAPACIDADESTIP_INCAPACIDAD.Value='MAT') or (DATAMODULE1.QRYINCAPACIDADESTIP_INCAPACIDAD.Value='MAP') then
        BEGIN
        EDTDIASINCAPACIDAD.Enabled:=False;
        EDTDIASINCAPACIDAD.Color:=clActiveBorder;
        END;
        EDTNUMERO.ENABLED := FALSE;
        EDTNUMERO.Color :=clActiveBorder;
        REFRESCAR_INCAPACIDAD;

        //EDTPLANILLA.SETFOCUS;
        END
        ELSE IF DATAMODULE1.QRYINCAPACIDADES.RECORDCOUNT = 0 THEN
             BEGIN
             GroupBox2.Enabled := TRUE;
             ENCONTRO := FALSE;

             IF RGTIPOINCAPACIDAD.ITEMINDEX = -1 THEN
               BEGIN
               btneliminar.Enabled := true;
               LIMPIAR;
               Edit3.SetFocus;
               END;
             END;
    END;
END;

PROCEDURE TFRMINCAPACIDADES.EDTNUMDOCAFILIADOINEXIT(SENDER: TOBJECT);
BEGIN
          if (Trim(edtnumdocafiliadoin.Text) = '0') or (trim(edtnumdocafiliadoin.Text) = '') then
        begin
        //ShowMessage('Digite  el numero de  documento  o Escojalo de  la lista');
        Button5.SetFocus;
        exit;
        end;

    IF (EDTNUMDOCAFILIADOIN.TEXT > '0') AND (CBTIPODOCEMPRESA.ITEMINDEX > -1) THEN
    BEGIN
    DATAMODULE1.QRYAFILIADOS.CLOSE;
  //  DATAMODULE1.QRYAFILIADOS.PREPARE;
    DATAMODULE1.QRYAFILIADOS.SQL.CLEAR;
    DATAMODULE1.QRYAFILIADOS.SQL.ADD('SELECT  TIP_DOCUMENTO_EMP, NUM_DOCUMENTO_EMP,TIP_DOCUMENTO_AFI, NUM_DOCUMENTO_AFI,PRI_APELLIDO,SEG_APELLIDO,PRI_NOMBRE,SEG_NOMBRE,VAL_SUELDO_AFIL,FEC_INGRESO_UNI,FEC_EGRESO_UNI,AFILIADOS_EMPRESAS.COD_ESTADO,FEC_NACIMIENTO,COD_SEXO,T1.COD_MODALIDAD_TRA');
    DATAMODULE1.QRYAFILIADOS.SQL.ADD('FROM AFILIADOS_EMPRESAS,AFILIADOS T1');
    DATAMODULE1.QRYAFILIADOS.SQL.ADD('WHERE TIP_DOCUMENTO_AFI = TIP_DOCUMENTO AND NUM_DOCUMENTO_AFI = NUM_DOCUMENTO AND TIP_DOCUMENTO_AFI = :"TIPO" AND NUM_DOCUMENTO_AFI = :"NUMERO" AND TIP_DOCUMENTO_EMP = :"TIPOEMP" AND NUM_DOCUMENTO_EMP = :"NUMEROEMP" AND');
    DATAMODULE1.QRYAFILIADOS.SQL.ADD('((FEC_INGRESO_UNI <= :"FECHAIN" ) OR (FEC_INGRESO_UNI <= :"FECHAINI" )) AND ');
    DATAMODULE1.QRYAFILIADOS.SQL.ADD('(((FEC_EGRESO_UNI >= :"FECHAFI" ) OR (FEC_EGRESO_UNI >= :"FECHAIN" )) OR FEC_EGRESO_UNI IS NULL)');
    DATAMODULE1.QRYAFILIADOS.Parameters[0].VALUE := TRIM(FRMINCAPACIDADES.CBTIPODOCAFILIADO.TEXT);
    DATAMODULE1.QRYAFILIADOS.Parameters[1].VALUE := TRIM(FRMINCAPACIDADES.EDTNUMDOCAFILIADOIN.TEXT);
    DATAMODULE1.QRYAFILIADOS.Parameters[2].VALUE := CBTIPODOCEMPRESA.TEXT;
    DATAMODULE1.QRYAFILIADOS.Parameters[3].VALUE := EDTNUMDOCEMPRESA.TEXT;
    DATAMODULE1.QRYAFILIADOS.Parameters[4].VALUE := STRTODATE('01/' + (FORMATDATETIME('MM',(dtpfecexpedicion.DATE))) + '/' +(FORMATDATETIME('YYYY',(dtpfecexpedicion.DATE))));
    DATAMODULE1.QRYAFILIADOS.Parameters[5].VALUE := STRTODATE('28/' + (FORMATDATETIME('MM',(dtpfecexpedicion.DATE))) + '/' +(FORMATDATETIME('YYYY',(dtpfecexpedicion.DATE))));
    DATAMODULE1.QRYAFILIADOS.Parameters[6].VALUE := STRTODATE('01/' + (FORMATDATETIME('MM',(dtpfecexpedicion.DATE))) + '/' +(FORMATDATETIME('YYYY',(dtpfecexpedicion.DATE))));
    DATAMODULE1.QRYAFILIADOS.Parameters[7].VALUE := STRTODATE('28/' + (FORMATDATETIME('MM',(dtpfecexpedicion.DATE))) + '/' +(FORMATDATETIME('YYYY',(dtpfecexpedicion.DATE))));
    DATAMODULE1.QRYAFILIADOS.OPEN;
        IF DATAMODULE1.QRYAFILIADOS.RECORDCOUNT > 0 THEN
        BEGIN
                EDTSEXO.TEXT := DATAMODULE1.QRYAFILIADOSCOD_SEXO.VALUE ;
                EDADAFILIADO := (FRMPRINCIPAL.EDAD(DATETOSTR(DATAMODULE1.QRYAFILIADOSFEC_NACIMIENTO.VALUE)));
                EDTEDAD.TEXT := INTTOSTR(EDADAFILIADO);
                EDTNOMBREAFILIADO.TEXT := DATAMODULE1.QRYAFILIADOSPRI_APELLIDO.VALUE + ' ' + DATAMODULE1.QRYAFILIADOSSEG_APELLIDO.VALUE + ' ' + DATAMODULE1.QRYAFILIADOSPRI_NOMBRE.VALUE + ' ' + DATAMODULE1.QRYAFILIADOSSEG_NOMBRE.VALUE;
                APE1 := DATAMODULE1.QRYAFILIADOSPRI_APELLIDO.VALUE;
                APE2 := DATAMODULE1.QRYAFILIADOSSEG_APELLIDO.VALUE;
                NOM1 := DATAMODULE1.QRYAFILIADOSPRI_NOMBRE.VALUE;
                NOM2 := DATAMODULE1.QRYAFILIADOSSEG_NOMBRE.VALUE;
                EDTSALARIOBASE.TEXT := FLOATTOSTR(DATAMODULE1.QRYAFILIADOSVAL_SUELDO_AFIL.VALUE);

                //EDTPROLIQUIDACION.TEXT := FLOATTOSTR(DATAMODULE1.QRYAFILIADOSVAL_SUELDO_AFIL.VALUE);
                //**************Promedio Salario
                EDTPROLIQUIDACION.TEXT := PROMEDIOSAL;
                //*************************
                QRYAPROBACIONES.Close;
                QRYAPROBACIONES.Parameters[0].Value:='POR ENCONTRARSE EN MORA EN EL MOMENTO DE LA INCAPACIDAD';
                QRYAPROBACIONES.Open;
                IF (QRYAPROBACIONESACTIVADO.Value=TRUE) AND (RGTIPOINCAPACIDAD.ItemIndex<>2)  THEN
                VERIFICAR_CARTERA
                ELSE
                BEGIN
                    IF (RGTIPOINCAPACIDAD.ItemIndex=2) THEN
                    BEGIN
                      QRYAPROBACIONES.Close;
                      QRYAPROBACIONES.Parameters[0].Value:='POR ENCONTRARSE EN MORA EN EL MOMENTO DE LA LICENCIA DE MATERNIDAD';
                      QRYAPROBACIONES.Open;
                      IF (QRYAPROBACIONESACTIVADO.Value=TRUE) THEN
                      VERIFICAR_CARTERA;
                    END;
                END;
                //VERIFICAR_CARTERA;
                //*************************
                QRYAPROBACIONES.Close;
                QRYAPROBACIONES.Parameters[0].Value:='POR TENER MENOS DE CUATRO SEMANAS AFILIADO A LA E.P.S.';
                QRYAPROBACIONES.Open;
                IF (QRYAPROBACIONESACTIVADO.Value=TRUE) AND (RGTIPOINCAPACIDAD.ItemIndex<>2)  THEN
                CUATROSEMANASAFILIACION;

                //CUATROSEMANASAFILIACION;


                  IF RGTIPOINCAPACIDAD.ITEMINDEX = 2 THEN
                  BEGIN
                        IF DATAMODULE1.QRYAFILIADOSCOD_SEXO.VALUE = 'M' THEN
                        BEGIN
                        SHOWMESSAGE(LowerCase(' ESTE  USUARIO  NO PUEDE  TENER  UNA LICENCIA DE MATERNIDAD'));
                        //LIMPIAR;
                        cbtipodocafiliado.Text:='';
                        edtnumdocafiliadoin.Text:='';
                        edtedad.Text :='';
                        edtsexo.Text :='';
                        edtnombreafiliado.Text  :='';
                        Button5.SETFOCUS;
                        END

                  END
                  ELSE IF RGTIPOINCAPACIDAD.ITEMINDEX = 3 THEN
                  BEGIN
                        IF DATAMODULE1.QRYAFILIADOSCOD_SEXO.VALUE = 'F' THEN
                        BEGIN
                        SHOWMESSAGE(LowerCase(' ESTE  USUARIO  NO PUEDE  TENER  UNA LICENCIA DE PATERNIDAD'));
                        cbtipodocafiliado.Text:='';
                        edtnumdocafiliadoin.Text:='';
                        edtedad.Text :='';
                        edtsexo.Text :='';
                        edtnombreafiliado.Text :='';
                        cbtipodocafiliado.SetFocus;
                        END

                  END;
                  //LICENCIA DE PATERNIDAD
                  IF RGTIPOINCAPACIDAD.ItemIndex  = 3 THEN
                  DIASINCAPACIDADPAT;
               END

                ELSE  IF DATAMODULE1.QRYAFILIADOS.RECORDCOUNT = 0 THEN
                BEGIN
                SHOWMESSAGE(LowerCase('EL USUARIO  NO  EXISTE CON LA  EMPRESA  '+ EDTNOMBREEMPRESA.TEXT  + #13#10 +
                'EN EL PERIODO  DE EXPEDICION  ' + (FORMATDATETIME('MM',(dtpfecexpedicion.DATE))) + '/' +(FORMATDATETIME('YYYY',(dtpfecexpedicion.DATE)))));
                Button5.SETFOCUS;
                EDTNUMDOCAFILIADOIN.TEXT := '';
                CBTIPODOCAFILIADO.ITEMINDEX := -1;
                edtnombreafiliado.Text :='';
                END;
    END
    ELSE IF EDTNUMDOCAFILIADOIN.TEXT = '0' THEN
         BEGIN
         SHOWMESSAGE(LowerCase('DIGITE  EL NUMERO DE  DOCUMENTO DEL AFILIADO O CON DOBLE CLIK LISTA  LOS  EMPLEADOS  DE LA  EMPRESA'));
         Button5.SETFOCUS;
         END;



END;

PROCEDURE TFRMINCAPACIDADES.EDTCODDIAGNOSTICOEXIT(SENDER: TOBJECT);
 BEGIN
if (trim(EDTCODDIAGNOSTICO.Text) = '')  or (trim(EDTCODDIAGNOSTICO.Text) = '0')then
begin
//ShowMessage(LowerCase(' Digite el  código que  origino la  incapacidad  o  dobleclic para  listar los  diagnósticos'));
Button5.SetFocus;
exit;
end;

IF (EDTCODDIAGNOSTICO.TEXT > '0')  THEN
    BEGIN
        DATAMODULE1.QRYDIAGNOSTICOS.CLOSE;
        DATAMODULE1.QRYDIAGNOSTICOS.SQL.CLEAR;
        DATAMODULE1.QRYDIAGNOSTICOS.SQL.ADD('SELECT * FROM DIAGNOSTICOS WHERE ((RANGO_SEXO = :"SEXO") OR(RANGO_SEXO = :"SEXOF")) AND ((EDA_MININA <=:"EDAD") AND (EDA_MAXIMA >= :"EDA")) AND  COD_DIAGNOSTICO = :"DIA"');
        IF  EDTSEXO.TEXT = 'M' THEN
         BEGIN
         DATAMODULE1.QRYDIAGNOSTICOS.Parameters[0].VALUE := '0';
         END
         ELSE IF  EDTSEXO.TEXT = 'F' THEN
             BEGIN
             DATAMODULE1.QRYDIAGNOSTICOS.Parameters[0].VALUE := '1';
             END;
        DATAMODULE1.QRYDIAGNOSTICOS.Parameters[1].VALUE := '2';
        DATAMODULE1.QRYDIAGNOSTICOS.Parameters[2].VALUE := STRTOINT(EDTEDAD.TEXT);
        DATAMODULE1.QRYDIAGNOSTICOS.Parameters[3].VALUE := STRTOINT(EDTEDAD.TEXT);
        DATAMODULE1.QRYDIAGNOSTICOS.Parameters[4].VALUE := EDTCODDIAGNOSTICO.TEXT;
        DATAMODULE1.QRYDIAGNOSTICOS.OPEN;
        //DEJA PASAR SI HAY UNA LICENCIA DE MATERNIDAD
        IF DATAMODULE1.QRYDIAGNOSTICOS.RECORDCOUNT > 0 THEN
        BEGIN
              EDTNOMBREDIAGNOSTICO.TEXT := DATAMODULE1.QRYDIAGNOSTICOSNOM_DIAGNSOTICO.VALUE;
              dtpfeciniciacion.DATE := dtpfecexpedicion.DATE;
        END
        ELSE  IF DATAMODULE1.QRYDIAGNOSTICOS.RECORDCOUNT = 0 THEN
              BEGIN
              SHOWMESSAGE(LowerCase('EL CODIGO NO EXISTE  VERIFIQUE  EN LA LISTA'));
              EDTCODDIAGNOSTICO.TEXT := '0';
              Button5.SETFOCUS;
              END;


END;


END;

PROCEDURE TFRMINCAPACIDADES.LIMPIAR;
VAR I : INTEGER;
BEGIN
Edit1.Text := '0';
Edit2.Text := '';
edit3.TEXT := '';
valorletradias.Text := '';
edtfinal.Text := '';
EDTEDAD.Text:='';
EDTSEXO.Text:='';
CBTIPODOCAFILIADO.ITEMINDEX := -1;
CBTIPODOCEMPRESA.ITEMINDEX := -1;
EDTNUMDOCAFILIADOIN.TEXT := '0';
EDTNOMBREAFILIADO.TEXT := '0';
EDTNUMDOCEMPRESA.TEXT := '0';
EDTNOMBREEMPRESA.TEXT := '0';
EDTCODDIAGNOSTICO.TEXT := '0';
EDTNOMBREDIAGNOSTICO.TEXT := '';
EDTDIASINCAPACIDAD.TEXT := '0';
EDTDIASLIQUIDADOS.TEXT := '0';
EDTPROLIQUIDACION.TEXT := '0';
EDTVALORLIQUIDADO.TEXT := '0';
RGTIPOINCAPACIDAD.ITEMINDEX := -1;
CHPRORROGA.CHECKED := FALSE;
DTPFECEXPEDICION.DATE := STRTODATE(GLDATE);
DTPFECINICIACION.DATE := (STRTODATE(GLDATE) +1);
EDTSALARIOBASE.TEXT := '0';
     FOR I := 1 TO SGDETALLEINC.ROWCOUNT DO
     BEGIN
                   SGDETALLEINC.CELLS[0,I]:='';
                   SGDETALLEINC.CELLS[1,I]:='';
                   SGDETALLEINC.CELLS[2,I]:='';
                   SGDETALLEINC.CELLS[3,I]:='';
                   SGDETALLEINC.CELLS[4,I]:='';
                   SGDETALLEINC.CELLS[5,I]:='';
                   SGDETALLEINC.CELLS[6,I]:='';
                   SGDETALLEINC.CELLS[7,I]:='';
                   SGDETALLEINC.CELLS[8,I]:='';
        END;

    SGDETALLEINC.ROWCOUNT := 1;
    SGDETALLEINC.ROWCOUNT := 2;
    SGDETALLEINC.FIXEDCOLS := 0;
    SGDETALLEINC.FIXEDROWS := 1;

    SGDETALLEINC.CELLS[0,1]:='';
    SGDETALLEINC.CELLS[1,1]:='';
    SGDETALLEINC.CELLS[2,1]:='';
    SGDETALLEINC.CELLS[3,1]:='';
    SGDETALLEINC.CELLS[4,1]:='';
    SGDETALLEINC.CELLS[5,1]:='';
    SGDETALLEINC.CELLS[6,1]:='';
    SGDETALLEINC.CELLS[7,1]:='';
    SGDETALLEINC.CELLS[8,1]:='';



EDTCODPRESTADOR.TEXT := '';
EDTNOMBREPRESTADOR.TEXT := '';
BUTTON2.ENABLED := TRUE;
EDTDIASINCAPACIDAD.Enabled:=TRUE;
EDTDIASINCAPACIDAD.Color :=CLMONEYGREEN;
CHPRORROGA.Enabled:=TRUE;
EDIT1.Enabled:=TRUE;


// DESABILITAR  COMPONENTES

END;

PROCEDURE TFRMINCAPACIDADES.EDTNUMEROENTER(SENDER: TOBJECT);
BEGIN
IF EDTNUMERO.TEXT = '0' THEN
  BEGIN
  LIMPIAR;
  END;
END;

PROCEDURE TFRMINCAPACIDADES.DTPFECINICIACIONEXIT(SENDER: TOBJECT);
VAR
VALIDAR:BOOLEAN;
MESINI, AINI,I,J:INTEGER;
MESINICIAL:STRING;
VALID:ARRAY[1..60] OF STRING; //5 AÑOS
BEGIN
IF DTPFECEXPEDICION.DATE < DTPFECINICIACION.DATE THEN
  BEGIN
   SHOWMESSAGE(LowerCase('LA  FECHA  NO PUEDE  SER  MAYOR A LA  FECHA  DE EXPEDICION'));
   DTPFECINICIACION.SETFOCUS;
  END
  ELSE  {IF (DTPFECEXPEDICION.DATE - 30)  > DTPFECINICIACION.DATE THEN
         BEGIN
         IF RGTIPOINCAPACIDAD.ItemIndex<>2 THEN
         BEGIN
         SHOWMESSAGE(LowerCase('La Incapacidad No se puede Expedir  despues  de 30 dias de inicio'));
         LIMPIAR;
         END
         ELSE}{*}
         BEGIN //Busca Periodos de Compensación para las Licencias de Maternidad
         QRYBUSCARCOMPENSACION.CLOSE;
         QRYBUSCARCOMPENSACION.SQL.Clear;
         QRYBUSCARCOMPENSACION.SQL.Text:= 'SELECT PER_COTIZACION FROM DET_PLANILLA_AUTOLIQUIDACION WHERE ' +
                                          'AFI_TIPO_DOC= :TIP_DOC AND AFI_NUMERO_DOC= :NUM_DOC AND DET_ESTADO=''CIE'' AND ' +
                                          'SUBSTRING(PER_COTIZACION,4,4) <= :AINI AND SUBSTRING(PER_COTIZACION,1,2) <= :MESINI ' +
                                          'ORDER BY SUBSTRING(PER_COTIZACION,4,4)DESC,SUBSTRING(PER_COTIZACION,1,2) DESC';
         QRYBUSCARCOMPENSACION.Parameters[0].Value:=CBTIPODOCAFILIADO.Text;
         QRYBUSCARCOMPENSACION.Parameters[1].Value:=EDTNUMDOCAFILIADOIN.Text;
         //QRYBUSCARCOMPENSACION.Parameters[2].Value:=COPY(DATETOSTR(DTPFECINICIACION.Date),4,2)+COPY(DATETOSTR(DTPFECINICIACION.Date),7,4);
         QRYBUSCARCOMPENSACION.Parameters[2].Value:= COPY(DATETOSTR(DTPFECINICIACION.Date),7,4);
         QRYBUSCARCOMPENSACION.Parameters[3].Value:= COPY(DATETOSTR(DTPFECINICIACION.Date),4,2);
         QRYBUSCARCOMPENSACION.OPEN;
         MESINI:=STRTOINT(COPY(DATETOSTR(DTPFECINICIACION.Date),4,2));
         AINI:=  STRTOINT(COPY(DATETOSTR(DTPFECINICIACION.Date),7,4));
         //***********
         FOR I:=1 TO QRYBUSCARCOMPENSACION.RecordCount DO
         BEGIN
         VALID[I]:=QRYBUSCARCOMPENSACIONPER_COTIZACION.VALUE;
         QRYBUSCARCOMPENSACION.Next;
         END;
         //***********

         IF QRYBUSCARCOMPENSACION.RecordCount = 0 THEN
         BEGIN
          I := 1;
         END;

         IF MESINI<= 2 THEN //febrero
         BEGIN
         QRYBUSCARCOMPENSACION.Close;
         QRYBUSCARCOMPENSACION.SQL.Clear;
         QRYBUSCARCOMPENSACION.SQL.Text:= 'SELECT PER_COTIZACION FROM DET_PLANILLA_AUTOLIQUIDACION WHERE ' +
                                          'AFI_TIPO_DOC= :TIP_DOC AND ' +
                                          'AFI_NUMERO_DOC= :NUM_DOC AND ' +
                                          'DET_ESTADO=''CIE'' AND ' +
                                          'SUBSTRING(PER_COTIZACION,3,4) < :AINI ' +
                                          'ORDER BY SUBSTRING(PER_COTIZACION,3,4)DESC,SUBSTRING(PER_COTIZACION,1,2) DESC' ;
         QRYBUSCARCOMPENSACION.Parameters[0].Value:=CBTIPODOCAFILIADO.Text;
         QRYBUSCARCOMPENSACION.Parameters[1].Value:=EDTNUMDOCAFILIADOIN.Text;
         QRYBUSCARCOMPENSACION.Parameters[2].Value:= COPY(DATETOSTR(DTPFECINICIACION.Date),7,4);
         QRYBUSCARCOMPENSACION.OPEN;
         //***********
         FOR J:=I TO (QRYBUSCARCOMPENSACION.RecordCount + I -1) DO
         BEGIN
         VALID[J]:=QRYBUSCARCOMPENSACIONPER_COTIZACION.VALUE;
         QRYBUSCARCOMPENSACION.Next;
         END;
         //***********
         END;
         VALIDAR:=FALSE;
         IF MESINI<10 THEN
              MESINICIAL :='0' + INTTOSTR(MESINI)
         ELSE
              MESINICIAL :=INTTOSTR(MESINI);

         FOR I:=1 TO 3 DO
         BEGIN

           IF VALID[I]=MESINICIAL+INTTOSTR(AINI) THEN
              VALIDAR:=TRUE
           ELSE
              VALIDAR:=VALIDAR AND FALSE;

           IF MESINI=1 THEN
           BEGIN
              MESINI:=12;
              AINI :=AINI-1;
              MESINICIAL := '01'
           END
           ELSE
           BEGIN
                MESINI:=MESINI-1;
                IF MESINI<10 THEN
                BEGIN
                    MESINICIAL :='0' + INTTOSTR(MESINI);
                END
                ELSE
                    MESINICIAL :=INTTOSTR(MESINI)

           END;

         END;  //FOR
         //END  //IF
         {ELSE  *}IF (RGTIPOINCAPACIDAD.ItemIndex=2) AND (VALIDAR=FALSE) THEN{*} //Vendria un AND con Aprobación para filtrar el mensaje y dejar pasar la Licencia
         BEGIN
         //********************************
        QRYAPROBACIONES.Close;
        QRYAPROBACIONES.Parameters[0].Value:='POR TENER PAGOS ININTERRUMPIDOS A LA FECHA DE INICIO DE LA LICENCIA DE MATERNIDAD';
        QRYAPROBACIONES.Open;
        IF (QRYAPROBACIONESACTIVADO.Value=TRUE) THEN
        BEGIN
         SHOWMESSAGE(LowerCase('La Licencia de Maternidad  No tiene tres meses compensados a partir de la fecha de iniciación para ser liquidada'));
         EDTNUMERO.SetFocus;
         LIMPIAR;
        END
        //*********************************

         END
         END; //{*}IF RGTIPOINCAPACIDAD.ItemIndex<>2
         //END //{*}IF (DTPFECEXPEDICION.DATE - 30)  > DTPFECINICIACION.DATE
  //ELSE {*}
  IF DTPFECEXPEDICION.DATE >= DTPFECINICIACION.DATE THEN
  BEGIN
  Edit1.enabled := false;
  INCAPACIDADVIGENTE;
  EDTFINAL.TEXT := DATETOSTR((DTPFECINICIACION.DATE -1) + STRTOINT(EDTDIASINCAPACIDAD.TEXT));
  END;

  //*************************
  IF EDTDIASINCAPACIDAD.Enabled=FALSE THEN
  EDTDIASINCAPACIDADEXIT(NIL)
  //*************************
  END;

PROCEDURE TFRMINCAPACIDADES.PAGOLINCENCIAS;
VAR MES,DIA,ANO : STRING;
PRIMERMES,PRIMERMES1,PRIMERMES2,MESPOS,PRIMERMES3  : INTEGER;
BEGIN
PRIMERMES1 := 0;
PRIMERMES3 := 0;
PRIMERMES2 := 0;
PRIMERMES := 0;

        MES:=COPY(FECHAINCAPACIDAD,1,2);
        IF MES='' THEN
        EXIT;
        ANO:=COPY(FECHAINCAPACIDAD,4,4);
        //MES:=(FORMATDATETIME('MM',DTPFECINICIACION.DATE));
        //ANO:=(FORMATDATETIME('YYYY',DTPFECINICIACION.DATE));
        DIA:=(FORMATDATETIME('DD',DTPFECINICIACION.DATE));
        IF MES = '12' THEN
          BEGIN
          MES := '01';
          ANO := INTTOSTR(STRTOINT(ANO) + 1);
          END
          ELSE MES := INTTOSTR(STRTOINT(MES) +1);

          IF (STRTOINT(MES)> 0) AND   (STRTOINT(MES)< 10) THEN
          BEGIN
          MES := '0'+ INTTOSTR(STRTOINT(MES));
          END;

        PRIMERMES := FRMPRINCIPAL.DIASMES(DTPFECINICIACION.DATE)+1 - STRTOINT(FORMATDATETIME('DD',DTPFECINICIACION.DATE));
           IF PRIMERMES <= 0 THEN
               BEGIN
               PRIMERMES := FRMPRINCIPAL.DIASMES(DTPFECINICIACION.DATE);
               MESPOS := STRTOINT(MES);
                  IF (MESPOS > 0) AND (MESPOS < 10) THEN
                  BEGIN
                  MES := '0' + INTTOSTR(MESPOS+1)
                  END
                  ELSE  IF MESPOS >= 10  THEN
                        BEGIN
                        MES := INTTOSTR(MESPOS+1);
                  END;

               END;

           IF PRIMERMES >= STRTOINT(EDTDIASLIQUIDADOS.TEXT) THEN
               BEGIN
                PRIMERMES := STRTOINT(EDTDIASLIQUIDADOS.TEXT);
               END;

IF MES = '12' THEN
           BEGIN
           SGDETALLEINC.CELLS[0,1] :=   '01/12/' + ANO;
           SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
           SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES),0));
           PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
           IF (PRIMERMES1 > 0) AND(PRIMERMES1 <= 30) THEN
             BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,2] :=   '01/01/' + INTTOSTR(STRTOINT(ANO)+1);
                SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                END
                ELSE IF PRIMERMES1 > 30 THEN
                        BEGIN
                        SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                        PRIMERMES1 := FRMPRINCIPAL.DIASMES(STRTODATE('01/01/' + INTTOSTR(STRTOINT(ANO)+1)));
                        SGDETALLEINC.CELLS[0,2] :=   '01/01/' + INTTOSTR(STRTOINT(ANO)+1);
                        SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                        SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                PRIMERMES2 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1);
                END;
                IF (PRIMERMES2 > 0) AND(PRIMERMES2 <= 30) THEN
                BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,3] :=   '01/02/' + INTTOSTR(STRTOINT(ANO)+1);
                SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES2),0));
                END
                ELSE  IF PRIMERMES2 > 30 THEN
                      BEGIN
                      SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                      SGDETALLEINC.CELLS[0,3] := '01/02/' + INTTOSTR(STRTOINT(ANO)+1);
                      PRIMERMES2 := FRMPRINCIPAL.DIASMES(STRTODATE('01/02/' + INTTOSTR(STRTOINT(ANO)+1)));
                      SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES2),0));
                      SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                      PRIMERMES3 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1 + PRIMERMES2);
                END;
                        IF PRIMERMES3 > 0 THEN
                           BEGIN
                           SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                           SGDETALLEINC.CELLS[0,4] :=   '01/03/' + INTTOSTR(STRTOINT(ANO)+1);
                           SGDETALLEINC.CELLS[1,4] := INTTOSTR(PRIMERMES3);
                           SGDETALLEINC.CELLS[2,4] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES3),0));
                           END;

      END
      ELSE IF MES = '11' THEN
           BEGIN
           SGDETALLEINC.CELLS[0,1] :=   '01/11/' + ANO;
           SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
           SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES),0));
           PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
           IF (PRIMERMES1 > 0) AND(PRIMERMES1 <= 30) THEN
             BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,2] :=   '01/12/' + ANO;
                SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                END
                ELSE IF PRIMERMES1 > 30 THEN
                        BEGIN
                        SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                        PRIMERMES1 := FRMPRINCIPAL.DIASMES(STRTODATE('01/12/' + ANO));
                        SGDETALLEINC.CELLS[0,2] :=   '01/12/' + ANO;
                        SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                        SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                PRIMERMES2 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1);
                END;
                IF (PRIMERMES2 > 0) AND(PRIMERMES2 <= 30) THEN
                BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,3] :=   '01/01/' + INTTOSTR(STRTOINT(ANO)+1);
                SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES2),0));
                END
                ELSE  IF PRIMERMES2 > 30 THEN
                      BEGIN
                      SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                      SGDETALLEINC.CELLS[0,3] := '01/01/' + INTTOSTR(STRTOINT(ANO)+1);
                      PRIMERMES2 := FRMPRINCIPAL.DIASMES(STRTODATE('01/01/' + INTTOSTR(STRTOINT(ANO)+1)));
                      SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES2),0));
                      SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                      PRIMERMES3 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1 + PRIMERMES2);
                END;
                        IF PRIMERMES3 > 0 THEN
                           BEGIN
                           SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                           SGDETALLEINC.CELLS[0,4] :=   '01/02/' + INTTOSTR(STRTOINT(ANO)+1);
                           SGDETALLEINC.CELLS[1,4] := INTTOSTR(PRIMERMES3);
                           SGDETALLEINC.CELLS[2,4] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES3),0));
                           END;

      END
      ELSE IF MES = '10' THEN
           BEGIN
           SGDETALLEINC.CELLS[0,1] :=   '01/10/' + ANO;
           SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
           SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES),0));
           PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
           IF (PRIMERMES1 > 0) AND(PRIMERMES1 <= 30) THEN
             BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,2] :=   '01/11/' + ANO;
                SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                END
                ELSE IF PRIMERMES1 > 30 THEN
                        BEGIN
                        SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                        PRIMERMES1 := FRMPRINCIPAL.DIASMES(STRTODATE('01/11/' + ANO));
                        SGDETALLEINC.CELLS[0,2] :=   '01/11/' + ANO;
                        SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                        SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                PRIMERMES2 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1);
                END;
                IF (PRIMERMES2 > 0) AND(PRIMERMES2 <= 30) THEN
                BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,3] :=    '01/12/' + ANO;
                SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES2),0));
                END
                ELSE  IF PRIMERMES2 > 30 THEN
                      BEGIN
                      SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                      SGDETALLEINC.CELLS[0,3] :=  '01/12/' + ANO;
                      PRIMERMES2 := FRMPRINCIPAL.DIASMES(STRTODATE('01/12/' + ANO));
                      SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES2),0));

                      SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                      PRIMERMES3 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1 + PRIMERMES2);
                END;
                        IF PRIMERMES3 > 0 THEN
                           BEGIN
                           SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                           SGDETALLEINC.CELLS[0,4] :=   '01/01/' + INTTOSTR(STRTOINT(ANO)+1);
                           SGDETALLEINC.CELLS[1,4] := INTTOSTR(PRIMERMES3);
                           SGDETALLEINC.CELLS[2,4] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES3),0));
                           END;

      END
      ELSE IF MES = '09' THEN
           BEGIN
           SGDETALLEINC.CELLS[0,1] :=   '01/09/' + ANO;
           SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
           SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES),0));
           PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
           IF (PRIMERMES1 > 0) AND(PRIMERMES1 <= 30) THEN
             BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,2] :=   '01/10/' + ANO;
                SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                END
                ELSE IF PRIMERMES1 > 30 THEN
                        BEGIN
                        SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                        PRIMERMES1 := FRMPRINCIPAL.DIASMES(STRTODATE('01/10/' + ANO));
                        SGDETALLEINC.CELLS[0,2] :=   '01/10/' + ANO;
                        SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                        SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                PRIMERMES2 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1);
                END;
                IF (PRIMERMES2 > 0) AND(PRIMERMES2 <= 30) THEN
                BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,3] :=    '01/11/' + ANO;
                SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES2),0));
                END
                ELSE  IF PRIMERMES2 > 30 THEN
                      BEGIN
                      SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                      SGDETALLEINC.CELLS[0,3] :=  '01/11/' + ANO;
                      PRIMERMES2 := FRMPRINCIPAL.DIASMES(STRTODATE('01/11/' + ANO));
                      SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));

                      SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                      PRIMERMES3 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1 + PRIMERMES2);
                END;
                        IF PRIMERMES3 > 0 THEN
                           BEGIN
                           SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                           SGDETALLEINC.CELLS[0,4] :=   '01/12/' + ANO;
                           SGDETALLEINC.CELLS[1,4] := INTTOSTR(PRIMERMES3);
                           SGDETALLEINC.CELLS[2,4] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES3),0));
                           END;

      END
      ELSE IF MES = '08' THEN
           BEGIN
           SGDETALLEINC.CELLS[0,1] :=   '01/08/' + ANO;
           SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
           SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES),0));
           PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
           IF (PRIMERMES1 > 0) AND(PRIMERMES1 <= 30) THEN
             BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,2] :=   '01/09/' + ANO;
                SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                END
                ELSE IF PRIMERMES1 > 30 THEN
                        BEGIN
                        SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                        PRIMERMES1 := FRMPRINCIPAL.DIASMES(STRTODATE('01/09/' + ANO));
                        SGDETALLEINC.CELLS[0,2] :=   '01/09/' + ANO;
                        SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                        SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                PRIMERMES2 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1);
                END;
                IF (PRIMERMES2 > 0) AND(PRIMERMES2 <= 30) THEN
                BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,3] :=    '01/10/' + ANO;
                SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES2),0));
                END
                ELSE  IF PRIMERMES2 > 30 THEN
                      BEGIN
                      SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                      SGDETALLEINC.CELLS[0,3] :=  '01/10/' + ANO;
                      PRIMERMES2 := FRMPRINCIPAL.DIASMES(STRTODATE('01/10/' + ANO));
                      SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES2),0));

                      SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                      PRIMERMES3 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1 + PRIMERMES2);
                END;
                        IF PRIMERMES3 > 0 THEN
                           BEGIN
                           SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                           SGDETALLEINC.CELLS[0,4] :=   '01/11/' + ANO;
                           SGDETALLEINC.CELLS[1,4] := INTTOSTR(PRIMERMES3);
                           SGDETALLEINC.CELLS[2,4] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES3),0));
                           END;

      END
      ELSE IF MES = '07' THEN
           BEGIN
           SGDETALLEINC.CELLS[0,1] :=   '01/07/' + ANO;
           SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
           SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES),0));
           PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
           IF (PRIMERMES1 > 0) AND(PRIMERMES1 <= 30) THEN
             BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,2] :=   '01/08/' + ANO;
                SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                END
                ELSE IF PRIMERMES1 > 30 THEN
                        BEGIN
                        SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                        PRIMERMES1 := FRMPRINCIPAL.DIASMES(STRTODATE('01/08/' + ANO));
                        SGDETALLEINC.CELLS[0,2] :=   '01/08/' + ANO;
                        SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                        SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                PRIMERMES2 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1);
                END;
                IF (PRIMERMES2 > 0) AND(PRIMERMES2 <= 30) THEN
                BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,3] :=    '01/09/' + ANO;
                SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES2),0));
                END
                ELSE  IF PRIMERMES2 > 30 THEN
                      BEGIN
                      SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                      SGDETALLEINC.CELLS[0,3] :=  '01/09/' + ANO;
                      PRIMERMES2 := FRMPRINCIPAL.DIASMES(STRTODATE('01/09/' + ANO));
                      SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES2),0));

                      SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                      PRIMERMES3 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1 + PRIMERMES2);
                END;
                        IF PRIMERMES3 > 0 THEN
                           BEGIN
                           SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                           SGDETALLEINC.CELLS[0,4] :=   '01/10/' + ANO;
                           SGDETALLEINC.CELLS[1,4] := INTTOSTR(PRIMERMES3);
                           SGDETALLEINC.CELLS[2,4] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES3),0));
                           END;

      END
      ELSE IF MES = '06' THEN
           BEGIN
           SGDETALLEINC.CELLS[0,1] :=   '01/06/' + ANO;
           SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
           SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES),0));
           PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
           IF (PRIMERMES1 > 0) AND(PRIMERMES1 <= 30) THEN
             BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,2] :=   '01/07/' + ANO;
                SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                END
                ELSE IF PRIMERMES1 > 30 THEN
                        BEGIN
                        SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                        PRIMERMES1 := FRMPRINCIPAL.DIASMES(STRTODATE('01/07/' + ANO));
                        SGDETALLEINC.CELLS[0,2] :=   '01/07/' + ANO;
                        SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                        SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                PRIMERMES2 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1);
                END;
                IF (PRIMERMES2 > 0) AND(PRIMERMES2 <= 30) THEN
                BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,3] :=    '01/08/' + ANO;
                SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES2),0));
                END
                ELSE  IF PRIMERMES2 > 30 THEN
                      BEGIN
                      SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                      SGDETALLEINC.CELLS[0,3] :=  '01/08/' + ANO;
                       PRIMERMES2 := FRMPRINCIPAL.DIASMES(STRTODATE('01/08/' + ANO));
                      SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES2),0));

                      SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                      PRIMERMES3 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1 + PRIMERMES2);
                END;
                        IF PRIMERMES3 > 0 THEN
                           BEGIN
                           SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                           SGDETALLEINC.CELLS[0,4] :=   '01/09/' + ANO;
                           SGDETALLEINC.CELLS[1,4] := INTTOSTR(PRIMERMES3);
                           SGDETALLEINC.CELLS[2,4] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES3),0));
                           END;

      END
      ELSE IF MES = '05' THEN
           BEGIN
           SGDETALLEINC.CELLS[0,1] :=   '01/05/' + ANO;
           SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
           SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES),0));
           PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
           IF (PRIMERMES1 > 0) AND(PRIMERMES1 <= 30) THEN
             BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,2] :=   '01/06/' + ANO;
                SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                END
                ELSE IF PRIMERMES1 > 30 THEN
                        BEGIN
                        SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                        PRIMERMES1 := FRMPRINCIPAL.DIASMES(STRTODATE('01/06/' + ANO));
                        SGDETALLEINC.CELLS[0,2] :=   '01/06/' + ANO;
                        SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                        SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                PRIMERMES2 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1);
                END;
                IF (PRIMERMES2 > 0) AND(PRIMERMES2 <= 30) THEN
                BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,3] :=    '01/07/' + ANO;
                SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES2),0));
                END
                ELSE  IF PRIMERMES2 > 30 THEN
                      BEGIN
                      SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                      SGDETALLEINC.CELLS[0,3] :=  '01/07/' + ANO;
                      PRIMERMES2 := FRMPRINCIPAL.DIASMES(STRTODATE('01/07/' + ANO));
                      SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES2),0));
                      SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                      PRIMERMES3 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1 + PRIMERMES2);
                END;
                        IF PRIMERMES3 > 0 THEN
                           BEGIN
                           SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                           SGDETALLEINC.CELLS[0,4] :=   '01/08/' + ANO;
                           SGDETALLEINC.CELLS[1,4] := INTTOSTR(PRIMERMES3);
                           SGDETALLEINC.CELLS[2,4] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES3),0));
                           END;

      END
      ELSE IF MES = '04' THEN
           BEGIN
           SGDETALLEINC.CELLS[0,1] :=   '01/04/' + ANO;
           SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
           SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES),0));
           PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
           IF (PRIMERMES1 > 0) AND(PRIMERMES1 <= 30) THEN
             BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,2] :=   '01/05/' + ANO;
                SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                END
                ELSE IF PRIMERMES1 > 30 THEN
                        BEGIN
                        SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                        PRIMERMES1 := FRMPRINCIPAL.DIASMES(STRTODATE('01/05/' + ANO));
                        SGDETALLEINC.CELLS[0,2] :=   '01/05/' + ANO;
                        SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                        SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                PRIMERMES2 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1);
                END;
                IF (PRIMERMES2 > 0) AND(PRIMERMES2 <= 30) THEN
                BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,3] :=    '01/06/' + ANO;
                SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES2),0));
                END
                ELSE  IF PRIMERMES2 > 30 THEN
                      BEGIN
                      SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                      SGDETALLEINC.CELLS[0,3] :=  '01/06/' + ANO;
                      PRIMERMES2 := FRMPRINCIPAL.DIASMES(STRTODATE('01/06/' + ANO));
                      SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES2),0));
                      SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                      PRIMERMES3 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1 + PRIMERMES2);
                END;
                        IF PRIMERMES3 > 0 THEN
                           BEGIN
                           SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                           SGDETALLEINC.CELLS[0,4] :=   '01/07/' + ANO;
                           SGDETALLEINC.CELLS[1,4] := INTTOSTR(PRIMERMES3);
                           SGDETALLEINC.CELLS[2,4] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES3),0));
                           END;

      END
      ELSE IF MES = '03' THEN
           BEGIN
           SGDETALLEINC.CELLS[0,1] :=   '01/03/' + ANO;
           SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
           SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES),0));
           PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
           IF (PRIMERMES1 > 0) AND(PRIMERMES1 <= 30) THEN
             BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,2] :=   '01/04/' + ANO;
                SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                END
                ELSE IF PRIMERMES1 > 30 THEN
                        BEGIN
                        SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                        PRIMERMES1 := FRMPRINCIPAL.DIASMES(STRTODATE('01/04/' + ANO));
                        SGDETALLEINC.CELLS[0,2] :=   '01/04/' + ANO;
                        SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                        SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                PRIMERMES2 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1);
                END;
                IF (PRIMERMES2 > 0) AND(PRIMERMES2 <= 30) THEN
                BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,3] :=    '01/05/' + ANO;
                SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES2),0));
                END
                ELSE  IF PRIMERMES2 > 30 THEN
                      BEGIN
                      SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                      PRIMERMES2 := FRMPRINCIPAL.DIASMES(STRTODATE('01/05/' + ANO));
                      SGDETALLEINC.CELLS[0,3] :=  '01/05/' + ANO;
                      SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES2),0));
                      SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                      PRIMERMES3 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1 + PRIMERMES2);
                END;
                        IF PRIMERMES3 > 0 THEN
                           BEGIN
                           SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                           SGDETALLEINC.CELLS[0,4] :=   '01/06/' + ANO;
                           SGDETALLEINC.CELLS[1,4] := INTTOSTR(PRIMERMES3);
                           SGDETALLEINC.CELLS[2,4] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES3),0));
                           END;

      END
      ELSE IF MES = '02' THEN
           BEGIN
           SGDETALLEINC.CELLS[0,1] :=   '01/02/' + ANO;
           SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
           SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES),0));
           PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
           IF (PRIMERMES1 > 0) AND(PRIMERMES1 <= 30) THEN
             BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,2] :=   '01/03/' + ANO;
                SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                END
                ELSE IF PRIMERMES1 > 30 THEN
                        BEGIN
                        SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                        PRIMERMES1 := FRMPRINCIPAL.DIASMES(STRTODATE('01/03/' + ANO));
                        SGDETALLEINC.CELLS[0,2] :=   '01/03/' + ANO;
                        SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                        SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                PRIMERMES2 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1);
                END;
                IF (PRIMERMES2 > 0) AND(PRIMERMES2 <= 30) THEN
                BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,3] :=    '01/04/' + ANO;
                SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES2),0));
                END
                ELSE  IF PRIMERMES2 > 30 THEN
                      BEGIN
                      SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                      SGDETALLEINC.CELLS[0,3] :=  '01/04/' + ANO;
                      PRIMERMES2 := FRMPRINCIPAL.DIASMES(STRTODATE('01/04/' + ANO));
                      SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES2),0));
                      SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                      PRIMERMES3 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1 + PRIMERMES2);
                END;
                        IF PRIMERMES3 > 0 THEN
                           BEGIN
                           SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                           SGDETALLEINC.CELLS[0,4] :=   '01/05/' + ANO;
                           SGDETALLEINC.CELLS[1,4] := INTTOSTR(PRIMERMES3);
                           SGDETALLEINC.CELLS[2,4] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES3),0));
                           END;

      END
      ELSE IF MES = '01' THEN
           BEGIN
           SGDETALLEINC.CELLS[0,1] :=   '01/01/' + INTTOSTR(STRTOINT(ANO)+1);
           SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
           SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES),0));
           PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
           IF (PRIMERMES1 > 0) AND(PRIMERMES1 <= 30) THEN
             BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,2] :=   '01/02/' + INTTOSTR(STRTOINT(ANO)+1);
                SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                END
                ELSE IF PRIMERMES1 > 30 THEN
                        BEGIN
                        SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                        PRIMERMES1 := FRMPRINCIPAL.DIASMES(STRTODATE('01/02/' + INTTOSTR(STRTOINT(ANO)+1)));
                        SGDETALLEINC.CELLS[0,2] :=   '01/02/' + INTTOSTR(STRTOINT(ANO)+1);
                        SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                        SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES1),0));
                PRIMERMES2 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1);
                END;
                IF (PRIMERMES2 > 0) AND(PRIMERMES2 <= 30) THEN
                BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                SGDETALLEINC.CELLS[0,3] :=    '01/03/' + ANO;
                SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES2),0));
                END
                ELSE  IF PRIMERMES2 > 30 THEN
                      BEGIN
                      SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                      PRIMERMES2 := FRMPRINCIPAL.DIASMES(STRTODATE('01/03/' + INTTOSTR(STRTOINT(ANO)+1)));
                      SGDETALLEINC.CELLS[0,3] :=  '01/03/' + INTTOSTR(STRTOINT(ANO)+1);
                      SGDETALLEINC.CELLS[2,3] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES2),0));
                      SGDETALLEINC.CELLS[1,3] := INTTOSTR(PRIMERMES2);
                      PRIMERMES3 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES + PRIMERMES1 + PRIMERMES2);
                END;
                        IF PRIMERMES3 > 0 THEN
                           BEGIN
                           SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                           SGDETALLEINC.CELLS[0,4] :=   '01/04/' + INTTOSTR(STRTOINT(ANO)+1);
                           SGDETALLEINC.CELLS[1,4] := INTTOSTR(PRIMERMES3);
                           SGDETALLEINC.CELLS[2,4] := FLOATTOSTR(ROUNDTO((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT)* PRIMERMES3),0));
                           END;
      END;


 END;

PROCEDURE TFRMINCAPACIDADES.EDTDIASINCAPACIDADEXIT(SENDER: TOBJECT);
var dias : integer;
    LIMITEDIAS:STRING;
BEGIN
//****************************
QRYAPROBACIONES.Close;
QRYAPROBACIONES.Parameters[0].Value:='POR SER INFERIOR A 3 DIAS';
QRYAPROBACIONES.Open;
IF (QRYAPROBACIONESACTIVADO.Value=TRUE) THEN
          LIMITEDIAS:='2'
     ELSE LIMITEDIAS:='0';
//***************************

        IF EDTDIASINCAPACIDAD.TEXT > LIMITEDIAS THEN
        BEGIN
                EDTDIASINCAPACIDAD.TEXT :=   INTTOSTR(STRTOINT(EDTDIASINCAPACIDAD.TEXT));
                IF RGTIPOINCAPACIDAD.ITEMINDEX <= 1 THEN
                BEGIN
                IF STRTOINT(EDTDIASINCAPACIDAD.TEXT) > 30 THEN
                BEGIN
                SHOWMESSAGE(LowerCase(' LOS  DIAS  DE  INCAPACIDAD GENERAL  NO PUEDE  SER  MAYOR  DE 30 DIAS'));
                END
                ELSE
                begin
                valorletradias.Text := FRMPRINCIPAL.pasarletras(StrToInt64(edtdiasincapacidad.text));
                EDTFINAL.TEXT := DATETOSTR((DTPFECINICIACION.DATE -1) + STRTOINT(EDTDIASINCAPACIDAD.TEXT));
                      LIQUIDAR := 0.66667;
                      if chprorroga.Checked = true then
                      begin
                       if ((STRTOINT(DATAMODULE1.qryincapacidadesTOT_DIAS_PRORROGA.VALUE) >= 90) AND (STRTOINT(DATAMODULE1.qryincapacidadesTOT_DIAS_PRORROGA.VALUE) <= 120)) then
                       begin
                       SHOWMESSAGE(LowerCase('EL USUARIO  COMPLETO MAS  DE 90 DIAS  EN INCAPACIDAD SERA LIQUIDADA POR 50% DEL SALARIO BASICO'));
                       LIQUIDAR := 0.50;
                       end
                       ELSE
                           if STRTOINT(DATAMODULE1.qryincapacidadesTOT_DIAS_PRORROGA.VALUE) > 120 then
                           begin
                           SHOWMESSAGE(LowerCase('EL USUARIO  COMPLETO MAS  DE 135 DIAS  EN INCAPACIDAD  DEBE GENERAR UN AVISO AL FONDO DE PENSIONES'));
                           LIQUIDAR := 0.50;
                           end
                           ELSE
                               if STRTOINT(DATAMODULE1.qryincapacidadesTOT_DIAS_PRORROGA.VALUE) <= 90 then
                               begin
                               LIQUIDAR := 0.66667;
                               end;



                      Edit2.Text := inttostr((strtoint(DATAMODULE1.qryincapacidadesTOT_DIAS_PRORROGA.VALUE))+(strtoint(edtdiasincapacidad.Text)));
                      end
                      else
                      Edit2.Text := edtdiasincapacidad.text

                end;
                END
                ELSE IF RGTIPOINCAPACIDAD.ITEMINDEX = 2 THEN
                BEGIN
                IF STRTOINT(EDTDIASINCAPACIDAD.TEXT) > 84 THEN
                BEGIN
                SHOWMESSAGE(LowerCase(' LOS  DIAS  DE  LICENCIA DE MATERNIDAD  NO PUEDEN  SER  MAYOR  DE 84 DIAS'));
                END
                ELSE IF STRTOINT(EDTDIASINCAPACIDAD.TEXT) <= 84 THEN
                      BEGIN
                      valorletradias.Text := FRMPRINCIPAL.pasarletras(StrToInt64(edtdiasincapacidad.text));
                      EDTFINAL.TEXT := DATETOSTR((DTPFECINICIACION.DATE -1) + STRTOINT(EDTDIASINCAPACIDAD.TEXT));

                      END;

                END //Maternidad
                ELSE IF RGTIPOINCAPACIDAD.ITEMINDEX = 3 THEN
                BEGIN
                IF STRTOINT(EDTDIASINCAPACIDAD.TEXT) > 8 THEN
                BEGIN
                SHOWMESSAGE(LowerCase(' LOS  DIAS  DE  LICENCIA DE PATERNIDAD  NO PUEDEN  SER  MAYOR  DE 8 DIAS'));
                END
                ELSE IF STRTOINT(EDTDIASINCAPACIDAD.TEXT) <= 8 THEN
                      BEGIN
                      valorletradias.Text := FRMPRINCIPAL.pasarletras(StrToInt64(edtdiasincapacidad.text));
                      EDTFINAL.TEXT := DATETOSTR((DTPFECINICIACION.DATE -1) + STRTOINT(EDTDIASINCAPACIDAD.TEXT));

                      END;

                END;//Paternidad
        DIASLIQUIDADOS;
        END
      ELSE IF LIMITEDIAS='2' THEN
           BEGIN
           SHOWMESSAGE(LOWERCASE('NO SE LIQUIDAN INCAPACIDADES MENORES A 3 DIAS'));
           EDTDIASINCAPACIDAD.Text:='';
           EDTDIASINCAPACIDAD.SetFocus;
           END
           ELSE
              SHOWMESSAGE(LowerCase('DIGITE  EL NUMERO DE DIAS  DE LA  INCAPACIDAD'));
          //DIASLIQUIDADOS;    
END;

PROCEDURE TFRMINCAPACIDADES.EDTNUMDOCAFILIADOINCLICK(SENDER: TOBJECT);
BEGIN

IF EDTNUMDOCEMPRESA.TEXT = '0' THEN
  BEGIN
  SHOWMESSAGE(LowerCase(' DEBE  SELECCIONAR LA  EMPRESA PARA  CONTINUAR'))
  END
  ELSE IF EDTNUMDOCEMPRESA.TEXT = '' THEN
  BEGIN
  SHOWMESSAGE(LowerCase(' DEBE  SELECCIONAR LA  EMPRESA PARA  CONTINUAR'))
  END;
END;

PROCEDURE TFRMINCAPACIDADES.RGTIPOINCAPACIDADEXIT(SENDER: TOBJECT);
BEGIN
if RGTIPOINCAPACIDAD.Text = '' then
begin
ShowMessage(LowerCase('SELECCIONE  EL TIPO DE  INCAPACIDAD'));
RGTIPOINCAPACIDAD.SetFocus;
exit;
end;
IF EDTDIASINCAPACIDAD.TEXT = '0' THEN
BEGIN
IF  RGTIPOINCAPACIDAD.ITEMINDEX <= 1 THEN
    BEGIN
    EDTDIASINCAPACIDAD.TEXT := '30';
    END
    ELSE  IF  RGTIPOINCAPACIDAD.ITEMINDEX = 2 THEN
          BEGIN
          EDTDIASINCAPACIDAD.TEXT := '84';
          //EDTCODDIAGNOSTICO.TEXT := 'Z321';
          //EDTCODDIAGNOSTICO.Enabled:=FALSE;
          //BUTTON6.Enabled:=FALSE;
          EDTDIASINCAPACIDAD.Enabled:=FALSE;
          EDTDIASINCAPACIDAD.Color:=cL3DLight;
          chprorroga.Enabled := false;
          Edit1.Enabled := false;
          EDIT1.Color:=cL3DLight;
          END
          //LICENCIA DE PATERNIDAD
          ELSE IF RGTIPOINCAPACIDAD.ItemIndex  = 3 THEN
               BEGIN
               EDTDIASINCAPACIDAD.Text :='4';
               //EDTCODDIAGNOSTICO.TEXT := 'Z321';
               //EDTCODDIAGNOSTICO.Enabled:=FALSE;
               //BUTTON6.Enabled:=FALSE;
               EDTDIASINCAPACIDAD.Enabled:=FALSE;
               EDTDIASINCAPACIDAD.Color:=cL3DLight;
               chprorroga.Enabled := false;
               Edit1.Enabled := false;
               EDIT1.Color:=cL3DLight;
               END
               //LICENCIA ARP
               ELSE IF RGTIPOINCAPACIDAD.ItemIndex = 4 THEN
                    BEGIN
                        EDTDIASINCAPACIDAD.Enabled := false;
                        EDTDIASINCAPACIDAD.Color:=cL3DLight;
                        chprorroga.Enabled := false;
                        Edit1.Enabled := false;
                        EDIT1.Color:=cL3DLight;
                        edtproliquidacion.Enabled:=False;
                        edtproliquidacion.Color:=cL3DLight;
                        END  //LICENCIA SOAT
                    ELSE IF RGTIPOINCAPACIDAD.ItemIndex = 5 THEN
                    BEGIN
                         EDTDIASINCAPACIDAD.TEXT := '30';
                    END
    END;
END;

PROCEDURE TFRMINCAPACIDADES.EDTNUMDOCEMPRESACHANGE(SENDER: TOBJECT);
BEGIN
IF EDTNUMDOCEMPRESA.TEXT > '0' THEN

BEGIN
IF RGTIPOINCAPACIDAD.ITEMINDEX = -1 THEN
  BEGIN
  SHOWMESSAGE(LowerCase('ESCOJA  EL  TIPO DE  INCAPACIDAD'));
  RGTIPOINCAPACIDAD.SETFOCUS;
  END;
END;



END;

PROCEDURE TFRMINCAPACIDADES.EDTCODPRESTADOREXIT(SENDER: TOBJECT);
BEGIN
IF EDTCODPRESTADOR.TEXT >'0' THEN
   BEGIN

        DATAMODULE1.QRYPRESTADORES.CLOSE;
        DATAMODULE1.QRYPRESTADORES.SQL.CLEAR;
        DATAMODULE1.QRYPRESTADORES.SQL.ADD('SELECT * FROM PRESTADORES WHERE NIT_PRESTADOR = :"CODIGO"');
        DATAMODULE1.QRYPRESTADORES.Parameters[0].VALUE :=  DATAMODULE1.alinearcero(TRIM(EDTCODPRESTADOR.TEXT),14);
        DATAMODULE1.QRYPRESTADORES.OPEN;

        IF DATAMODULE1.QRYPRESTADORES.RECORDCOUNT > 0 THEN
        BEGIN

        EDTNOMBREPRESTADOR.TEXT := DATAMODULE1.QRYPRESTADORESNOM_PRESTADOR.VALUE;
        edtcodprestador.TEXT := DATAMODULE1.qryprestadoresNIT_PRESTADOR.VALUE;
        EDTNOMBREPRESTADOR.ENABLED := FALSE;
        //EDTPROLIQUIDACION.SETFOCUS;
        EDTPROLIQUIDACIONEXIT(NIL);
        END
        ELSE IF DATAMODULE1.QRYPRESTADORES.RECORDCOUNT = 0 THEN
                BEGIN
                EDTNOMBREPRESTADOR.ENABLED := TRUE;
                END;


    END
    ELSE IF EDTCODPRESTADOR.TEXT = '0' THEN
    BEGIN
    SHOWMESSAGE(LowerCase('DIGITE  CODIGO DEL PRESTADOR O DOBLE CLICK PARA LISTAR LOS  PRESTADORES DE  SALUD'));
    EDTCODPRESTADOR.SETFOCUS;
    END;
    //EDTDIASINCAPACIDADEXIT;

END;

PROCEDURE TFRMINCAPACIDADES.REFRESCAR_INCAPACIDAD;
VAR I : INTEGER;
BEGIN
	EDTNUMERO.TEXT := DATAMODULE1.QRYINCAPACIDADESNUM_INCAPACIDAD.VALUE;
	if DATAMODULE1.qryincapacidadesNUM_RECEPCION.VALUE <> '' then
	Edit3.TEXT := DATAMODULE1.qryincapacidadesNUM_RECEPCION.VALUE;
	if DATAMODULE1.qryincapacidadesNUM_RECEPCION.VALUE = '' then
	Edit3.TEXT := DATAMODULE1.QRYINCAPACIDADESNUM_INCAPACIDAD.VALUE;
	IF DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('TIP_INCAPACIDAD').VALUE = 'EGA' THEN
	   BEGIN
           RGTIPOINCAPACIDAD.ITEMINDEX := 0;
           END
           ELSE IF DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('TIP_INCAPACIDAD').VALUE = 'EGH' THEN
                BEGIN
                RGTIPOINCAPACIDAD.ITEMINDEX := 1;
                END
                ELSE IF DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('TIP_INCAPACIDAD').VALUE = 'MAT' THEN
                     BEGIN
                     RGTIPOINCAPACIDAD.ITEMINDEX := 2;
                     END
                     ELSE IF DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('TIP_INCAPACIDAD').VALUE = 'MAP' THEN
                             BEGIN
                             RGTIPOINCAPACIDAD.ITEMINDEX := 3;
                             END
                             ELSE IF DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('TIP_INCAPACIDAD').VALUE = 'ARP' THEN
                                     BEGIN
                                     RGTIPOINCAPACIDAD.ITEMINDEX := 4;
                                     END
                                     ELSE IF DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('TIP_INCAPACIDAD').VALUE = 'SOA' THEN
                                          BEGIN
                                               RGTIPOINCAPACIDAD.ITEMINDEX := 5;
                                               END;
        DTPFECEXPEDICION.DATE := DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('FEC_EXPEDICION').VALUE;
        IF DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('TIP_DOCEMPRESA').VALUE = 'CC' THEN
            BEGIN
             CBTIPODOCEMPRESA.ITEMINDEX := 0;
             END
             ELSE IF DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('TIP_DOCEMPRESA').VALUE = 'NIT' THEN
                  BEGIN
                  CBTIPODOCEMPRESA.ITEMINDEX := 1;
                  END
                  ELSE  IF DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('TIP_DOCEMPRESA').VALUE = 'CE' THEN
                        BEGIN
                        CBTIPODOCEMPRESA.ITEMINDEX := 2;
                        END
                        ELSE    IF DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('TIP_DOCEMPRESA').VALUE = 'TI' THEN
                                BEGIN
                                CBTIPODOCEMPRESA.ITEMINDEX := 3;
                                END;


        EDTNUMDOCEMPRESA.TEXT := DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('NUM_DOCEMPRESA').VALUE;
        IF EDTNUMDOCEMPRESA.TEXT >'0' THEN
        BEGIN
          DATAMODULE1.QRYEMPRESAS.CLOSE;
          DATAMODULE1.QRYEMPRESAS.Parameters[0].VALUE := TRIM(CBTIPODOCEMPRESA.TEXT);
          DATAMODULE1.QRYEMPRESAS.Parameters[1].VALUE := TRIM(EDTNUMDOCEMPRESA.TEXT);
          DATAMODULE1.QRYEMPRESAS.OPEN;
                IF DATAMODULE1.QRYEMPRESAS.RECORDCOUNT > 0 THEN
                BEGIN
                EDTNOMBREEMPRESA.TEXT := DATAMODULE1.QRYEMPRESASNOM_EMPRESA.VALUE;
                END;
        END;
               EDTCODDIAGNOSTICO.TEXT := DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('COD_DIAGNOSTICO').VALUE;
                IF EDTCODDIAGNOSTICO.TEXT > '0' THEN
                BEGIN
                DATAMODULE1.QRYDIAGNOSTICOS.CLOSE;
                DATAMODULE1.QRYDIAGNOSTICOS.SQL.CLEAR;
                DATAMODULE1.QRYDIAGNOSTICOS.SQL.ADD('SELECT * FROM DIAGNOSTICOS WHERE COD_DIAGNOSTICO = :"DIA"');
                DATAMODULE1.QRYDIAGNOSTICOS.Parameters[0].VALUE := EDTCODDIAGNOSTICO.TEXT;
                DATAMODULE1.QRYDIAGNOSTICOS.OPEN;

                IF DATAMODULE1.QRYDIAGNOSTICOS.RECORDCOUNT > 0 THEN
                   BEGIN
                   EDTNOMBREDIAGNOSTICO.TEXT := DATAMODULE1.QRYDIAGNOSTICOSNOM_DIAGNSOTICO.VALUE;
                   END;
                END;




                IF  DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('AFI_TIPO_DOC').VALUE =  'CC' THEN
                BEGIN
                CBTIPODOCAFILIADO.ITEMINDEX := 0;
                END
                ELSE   IF  DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('AFI_TIPO_DOC').VALUE =  'CE' THEN
                        BEGIN
                        CBTIPODOCAFILIADO.ITEMINDEX := 1;
                        END
                        ELSE IF  DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('AFI_TIPO_DOC').VALUE =  'TI' THEN
                                BEGIN
                                CBTIPODOCAFILIADO.ITEMINDEX := 2;
                                END;

        EDTNUMDOCAFILIADOIN.TEXT := DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('AFI_NUMERO_DOC').VALUE;

                IF EDTNUMDOCAFILIADOIN.TEXT > '0' THEN
                BEGIN
                DATAMODULE1.QRYAFILIADOS.CLOSE;
                DATAMODULE1.QRYAFILIADOS.SQL.CLEAR;
                DATAMODULE1.QRYAFILIADOS.SQL.ADD('SELECT  TIP_DOCUMENTO_EMP, NUM_DOCUMENTO_EMP,TIP_DOCUMENTO_AFI, NUM_DOCUMENTO_AFI,PRI_APELLIDO,SEG_APELLIDO,PRI_NOMBRE,SEG_NOMBRE,VAL_SUELDO_AFIL,FEC_INGRESO_UNI,FEC_EGRESO_UNI,AFILIADOS_EMPRESAS.COD_ESTADO,FEC_NACIMIENTO,COD_SEXO,T1.COD_MODALIDAD_TRA');
                DATAMODULE1.QRYAFILIADOS.SQL.ADD('FROM AFILIADOS_EMPRESAS,AFILIADOS T1');
                DATAMODULE1.QRYAFILIADOS.SQL.ADD('WHERE TIP_DOCUMENTO_AFI = TIP_DOCUMENTO AND NUM_DOCUMENTO_AFI = NUM_DOCUMENTO AND TIP_DOCUMENTO_AFI = :"NIT" AND NUM_DOCUMENTO_AFI = :"DOCUMENTO"');
                DATAMODULE1.QRYAFILIADOS.Parameters[0].VALUE := TRIM(FRMINCAPACIDADES.CBTIPODOCAFILIADO.TEXT);
                DATAMODULE1.QRYAFILIADOS.Parameters[1].VALUE := TRIM(FRMINCAPACIDADES.EDTNUMDOCAFILIADOIN.TEXT);
                DATAMODULE1.QRYAFILIADOS.OPEN;

                IF DATAMODULE1.QRYAFILIADOS.RECORDCOUNT > 0 THEN
                   BEGIN
                    EDTNOMBREAFILIADO.TEXT := DATAMODULE1.QRYAFILIADOSPRI_APELLIDO.VALUE + ' ' + DATAMODULE1.QRYAFILIADOSSEG_APELLIDO.VALUE + ' ' + DATAMODULE1.QRYAFILIADOSPRI_NOMBRE.VALUE + ' ' + DATAMODULE1.QRYAFILIADOSSEG_NOMBRE.VALUE;
                    APE1 := DATAMODULE1.QRYAFILIADOSPRI_APELLIDO.VALUE;
                    APE2 := DATAMODULE1.QRYAFILIADOSSEG_APELLIDO.VALUE;
                    NOM1 := DATAMODULE1.QRYAFILIADOSPRI_NOMBRE.VALUE;
                    NOM2 := DATAMODULE1.QRYAFILIADOSSEG_NOMBRE.VALUE;
                   EDTSEXO.TEXT := DATAMODULE1.QRYAFILIADOSCOD_SEXO.VALUE ;
                   EDADAFILIADO := (FRMPRINCIPAL.EDAD(DATETOSTR(DATAMODULE1.QRYAFILIADOSFEC_NACIMIENTO.VALUE)));
                   EDTEDAD.TEXT := INTTOSTR(EDADAFILIADO);
                   END;
                END;
        EDTCODPRESTADOR.TEXT := DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('COD_PRESTADOR').VALUE;
        EDTNOMBREPRESTADOR.TEXT := DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('NOM_PRESTADOR').VALUE;
        EDTDIASINCAPACIDAD.TEXT := DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('DIA_INCAPACIDAD').VALUE;
        IF  RGTIPOINCAPACIDAD.ItemIndex<>4 THEN
        EDTDIASLIQUIDADOS.TEXT := DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('DIA_LIQUIDADOS').VALUE;

        DTPFECINICIACION.DATE := DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('FEC_INICIO').VALUE;
                        valorletradias.Text := FRMPRINCIPAL.pasarletras(StrToInt64(edtdiasincapacidad.text));
        IF DATAMODULE1.QRYINCAPACIDADESFEC_TERMINACION.VALUE <> NULL THEN
         BEGIN
         EDTFINAL.TEXT := DATETOSTR(DATAMODULE1.QRYINCAPACIDADESFEC_TERMINACION.VALUE);
         END
         ELSE
         EDTFINAL.TEXT := DATETOSTR((DTPFECINICIACION.DATE -1) + STRTOINT(EDTDIASINCAPACIDAD.TEXT));
        IF DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('PRO_INCAPACIDAD').VALUE = 'S' THEN
           BEGIN
            CHPRORROGA.ENABLED := TRUE;
            CHPRORROGA.CHECKED := TRUE;
            CHPRORROGA.ENABLED := FALSE;
            Edit1.TEXT := DATAMODULE1.qryincapacidadesNO_PRORROGA.VALUE;
            Edit2.TEXT := DATAMODULE1.qryincapacidadesTOT_DIAS_PRORROGA.VALUE;
            END
            ELSE IF DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('PRO_INCAPACIDAD').VALUE = 'N' THEN
                 BEGIN
                 CHPRORROGA.CHECKED := FALSE;
                 Edit1.TEXT := '0';
                 Edit2.TEXT := DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('DIA_INCAPACIDAD').VALUE;
                 END;

        EDTSALARIOBASE.TEXT := DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('SAL_BASE').VALUE;
        EDTPROLIQUIDACION.TEXT := DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('PRO_SALARIO_LIQUI').VALUE;
        EDTVALORLIQUIDADO.TEXT := DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('VAL_INCAPACIDAD').VALUE;

             DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
             DATAMODULE1.QRYDETINCAPACIDAD.SQL.CLEAR;
             DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('SELECT * FROM DET_INCAPACIDAD WHERE NUM_INCAPACIDAD = :"INCAP" ORDER BY FEC_PAGO_INCAP ');
             DATAMODULE1.QRYDETINCAPACIDAD.Parameters[0].VALUE := EDTNUMERO.TEXT;
             DATAMODULE1.QRYDETINCAPACIDAD.OPEN;
             IF DATAMODULE1.QRYDETINCAPACIDAD.RECORDCOUNT > 0 THEN
              BEGIN
                 FOR I:= 1 TO DATAMODULE1.QRYDETINCAPACIDAD.RECORDCOUNT DO
                 BEGIN
                    IF I > 1 THEN
                    BEGIN
                    SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                    SGDETALLEINC.CELLS[0,I] := DATAMODULE1.QRYDETINCAPACIDAD.FIELDBYNAME('PER_PAGO_INCAP').VALUE;
                    SGDETALLEINC.CELLS[1,I] := DATAMODULE1.QRYDETINCAPACIDAD.FIELDBYNAME('DIA_PAGAR_INCAP').VALUE;
                    SGDETALLEINC.CELLS[2,I] := DATAMODULE1.QRYDETINCAPACIDAD.FIELDBYNAME('VAL_PAGAR_INCAP').VALUE;
                    IF DATAMODULE1.qrydetincapacidadTIP_PAGO_INCAP.VALUE <> '' THEN
                     BEGIN
                        GroupBox2.Enabled := FALSE;
                        BUTTON2.ENABLED := FALSE;
                        btneliminar.Enabled := false;
                        SGDETALLEINC.CELLS[3,I] := DATAMODULE1.qrydetincapacidadTIP_PAGO_INCAP.VALUE;
                        SGDETALLEINC.CELLS[4,I] := DATETOSTR(DATAMODULE1.QRYDETINCAPACIDADFEC_PAGO_INCAP.VALUE);
                        SGDETALLEINC.CELLS[5,I] := DATAMODULE1.QRYDETINCAPACIDADNUM_COMPROBANTE.VALUE;
                        SGDETALLEINC.CELLS[6,I] := DATAMODULE1.QRYDETINCAPACIDADPER_PRESENTADO.VALUE;
                        SGDETALLEINC.CELLS[7,I] := DATAMODULE1.QRYDETINCAPACIDADEST_DET_PLANILLA.VALUE;
                        SGDETALLEINC.CELLS[8,I] := FLOATTOSTR(DATAMODULE1.QRYDETINCAPACIDADVAL_DESCONTADO.VALUE);
                    END;
                    DATAMODULE1.QRYDETINCAPACIDAD.FINDNEXT;
                    END
                    ELSE IF I = 1 THEN
                    BEGIN
                    SGDETALLEINC.CELLS[0,I] := DATAMODULE1.QRYDETINCAPACIDAD.FIELDBYNAME('PER_PAGO_INCAP').VALUE;
                    SGDETALLEINC.CELLS[1,I] := DATAMODULE1.QRYDETINCAPACIDAD.FIELDBYNAME('DIA_PAGAR_INCAP').VALUE;
                    SGDETALLEINC.CELLS[2,I] := DATAMODULE1.QRYDETINCAPACIDAD.FIELDBYNAME('VAL_PAGAR_INCAP').VALUE;
                   IF DATAMODULE1.QRYDETINCAPACIDADTIP_PAGO_INCAP.VALUE <> '' THEN
                     BEGIN
                        SHOWMESSAGE(LowerCase(' LA  ' + RGTIPOINCAPACIDAD.TEXT +' NO SE  PUEDE MODIFICAR'));
                        GroupBox2.Enabled := FALSE;
                        btneliminar.Enabled := false;
                        BUTTON2.ENABLED := FALSE;
                        SGDETALLEINC.CELLS[3,I] := DATAMODULE1.QRYDETINCAPACIDADTIP_PAGO_INCAP.VALUE;
                        SGDETALLEINC.CELLS[4,I] := DATETOSTR(DATAMODULE1.QRYDETINCAPACIDADFEC_PAGO_INCAP.VALUE);
                        SGDETALLEINC.CELLS[5,I] := DATAMODULE1.QRYDETINCAPACIDADNUM_COMPROBANTE.VALUE;
                        SGDETALLEINC.CELLS[6,I] := DATAMODULE1.QRYDETINCAPACIDADPER_PRESENTADO.VALUE;
                        SGDETALLEINC.CELLS[7,I] := DATAMODULE1.QRYDETINCAPACIDADEST_DET_PLANILLA.VALUE;
                        SGDETALLEINC.CELLS[8,I] := FLOATTOSTR(DATAMODULE1.QRYDETINCAPACIDADVAL_DESCONTADO.VALUE);
                    END;
                    DATAMODULE1.QRYDETINCAPACIDAD.FINDNEXT;
                    END;
                 END;

        END;
END;

PROCEDURE TFRMINCAPACIDADES.BUTTON3CLICK(SENDER: TOBJECT);
BEGIN
EDTNUMERO.ENABLED := TRUE;
EDTNUMERO.Color :=clMoneyGreen;
EDTNUMERO.TEXT := '0';
edit3.TEXT := '0';
btneliminar.Enabled := true;
EDTNUMERO.SETFOCUS;
GroupBox2.Enabled := TRUE;
//********
{chprorroga.Enabled:=TRUE;
Edit1.Color:=cLMoneyGreen;}
//********
LIMPIAR;
END;

PROCEDURE TFRMINCAPACIDADES.DIASLIQUIDADOS;
BEGIN

        IF RGTIPOINCAPACIDAD.ITEMINDEX = 0 THEN
        BEGIN

           IF CHPRORROGA.CHECKED = FALSE THEN
           BEGIN
           EDTDIASLIQUIDADOS.TEXT := FLOATTOSTR(STRTOINT(EDTDIASINCAPACIDAD.TEXT)-3);
           IF  STRTOINT(EDTDIASLIQUIDADOS.TEXT) <= 0 THEN
               BEGIN
                    EDTDIASLIQUIDADOS.TEXT := '0';
               END;
           END
           ELSE IF CHPRORROGA.CHECKED = TRUE THEN
                BEGIN
                EDTDIASLIQUIDADOS.TEXT := FLOATTOSTR(STRTOINT(EDTDIASINCAPACIDAD.TEXT));
                END;
        END
                ELSE IF RGTIPOINCAPACIDAD.ITEMINDEX = 1 THEN
                BEGIN
                EDTDIASLIQUIDADOS.TEXT := EDTDIASINCAPACIDAD.TEXT;
                END
                        //MATERNIDAD
                        ELSE IF RGTIPOINCAPACIDAD.ITEMINDEX = 2 THEN
                        BEGIN
                        EDTDIASLIQUIDADOS.TEXT := EDTDIASINCAPACIDAD.TEXT;
                        END
                        //PATERNIDAD
                                ELSE IF RGTIPOINCAPACIDAD.ITEMINDEX = 3 THEN
                                BEGIN
                                EDTDIASLIQUIDADOS.TEXT := EDTDIASINCAPACIDAD.TEXT;
                                END
                        //ARP
                                        {ELSE IF RGTIPOINCAPACIDAD.ITEMINDEX = 4 THEN
                                        BEGIN

                                        IF CHPRORROGA.CHECKED = FALSE THEN
                                        BEGIN
                                        EDTDIASLIQUIDADOS.TEXT := FLOATTOSTR(STRTOINT(EDTDIASINCAPACIDAD.TEXT)-3);
                                        IF  STRTOINT(EDTDIASLIQUIDADOS.TEXT) <= 0 THEN
                                        BEGIN
                                        EDTDIASLIQUIDADOS.TEXT := '0';
                                        END;
                                        END
                                        ELSE IF CHPRORROGA.CHECKED = TRUE THEN
                                        BEGIN
                                        EDTDIASLIQUIDADOS.TEXT := FLOATTOSTR(STRTOINT(EDTDIASINCAPACIDAD.TEXT));
                                        END;
                                        END}
                        //SOAT
                                        ELSE IF RGTIPOINCAPACIDAD.ITEMINDEX = 5 THEN
                                        BEGIN

                                        IF CHPRORROGA.CHECKED = FALSE THEN
                                        BEGIN
                                        EDTDIASLIQUIDADOS.TEXT := FLOATTOSTR(STRTOINT(EDTDIASINCAPACIDAD.TEXT)-3);
                                        IF  STRTOINT(EDTDIASLIQUIDADOS.TEXT) <= 0 THEN
                                        BEGIN
                                        EDTDIASLIQUIDADOS.TEXT := '0';
                                        END;
                                        END
                                        ELSE IF CHPRORROGA.CHECKED = TRUE THEN
                                        BEGIN
                                        EDTDIASLIQUIDADOS.TEXT := FLOATTOSTR(STRTOINT(EDTDIASINCAPACIDAD.TEXT));
                                        END;
                                        END


END;

PROCEDURE TFRMINCAPACIDADES.PAGOEFERMEDADGENERAL;
VAR MES,DIA,ANO : STRING;
PRIMERMES,PRIMERMES3,PRIMERMES1,PRIMERMES2,MESPOS : INTEGER;
BEGIN
PRIMERMES := 0;
        //MES:=(FORMATDATETIME('MM',DTPFECINICIACION.DATE));
        MES:=COPY(FECHAINCAPACIDAD,1,2);
        IF MES='' THEN
        EXIT;
        //ANO:=(FORMATDATETIME('YYYY',DTPFECINICIACION.DATE));
        ANO:=COPY(FECHAINCAPACIDAD,4,4);
        DIA:=(FORMATDATETIME('DD',DTPFECINICIACION.DATE));
           IF EDTDIASINCAPACIDAD.TEXT <> EDTDIASLIQUIDADOS.TEXT THEN
           BEGIN
           IF MES = '12' THEN
          BEGIN
          MES := '01';
          ANO := INTTOSTR(STRTOINT(ANO) +1);//****
          END
          ELSE MES := INTTOSTR(STRTOINT(MES) +1);

          IF (STRTOINT(MES)> 0) AND   (STRTOINT(MES)< 10) THEN
          BEGIN
          MES := '0'+ INTTOSTR(STRTOINT(MES));
          END;


           PRIMERMES := FRMPRINCIPAL.DIASMES(DTPFECINICIACION.DATE)-2 - STRTOINT(FORMATDATETIME('DD',DTPFECINICIACION.DATE));
               IF PRIMERMES <= 0 THEN
               BEGIN
               PRIMERMES := STRTOINT(EDTDIASLIQUIDADOS.TEXT);
               MESPOS := STRTOINT(MES);

               END;
           END
           ELSE IF EDTDIASINCAPACIDAD.TEXT = EDTDIASLIQUIDADOS.TEXT THEN
                BEGIN
                PRIMERMES := FRMPRINCIPAL.DIASMES(DTPFECINICIACION.DATE)+1 - STRTOINT(FORMATDATETIME('DD',DTPFECINICIACION.DATE));
                IF PRIMERMES <= 0 THEN
               BEGIN
                 PRIMERMES := STRTOINT(EDTDIASLIQUIDADOS.TEXT);
                 MESPOS := STRTOINT(MES);
                 END;
             END;
        IF PRIMERMES >= STRTOINT(EDTDIASLIQUIDADOS.TEXT) THEN
           BEGIN
           PRIMERMES := STRTOINT(EDTDIASLIQUIDADOS.TEXT);
        END;

        IF MES = '12' THEN
           BEGIN
           SGDETALLEINC.CELLS[0,1] :=   '01/12/' + ANO;
           SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
           SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES),0));
           PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
           IF PRIMERMES1 > 0 THEN
                BEGIN
                SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT + 1;
                SGDETALLEINC.CELLS[0,2] :=   '01/01/' + INTTOSTR(STRTOINT(ANO)+1);
                SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES1),0));
                END;

          END
          ELSE IF MES = '01' THEN
                BEGIN
                SGDETALLEINC.CELLS[0,1] :=   '01/01/' + ANO;
                SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
                SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES),0));
                PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
                IF PRIMERMES1 > 0 THEN
                        BEGIN
                        SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                        SGDETALLEINC.CELLS[0,2] :=   '01/02/' + ANO;
                        SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                        SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES1),0));
                        END;

                END
                ELSE IF MES = '02' THEN
                BEGIN
                SGDETALLEINC.CELLS[0,1] :=   '01/02/' + ANO;
                SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
                SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES),0));
                PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
                IF PRIMERMES1 > 0 THEN
                        BEGIN
                        SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                        SGDETALLEINC.CELLS[0,2] :=   '01/03/' + ANO;
                        SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                        SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES1),0));
                        END;
                END
                ELSE IF MES = '03' THEN
                BEGIN
                SGDETALLEINC.CELLS[0,1] :=   '01/03/' + ANO;
                SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
                SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES),0));
                PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
                IF PRIMERMES1 > 0 THEN
                        BEGIN
                        SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                        SGDETALLEINC.CELLS[0,2] :=   '01/04/' + ANO;
                        SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                        SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES1),0));
                        END;
                END
                ELSE IF MES = '04' THEN
                BEGIN
                SGDETALLEINC.CELLS[0,1] :=   '01/04/' + ANO;
                SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
                SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES),0));
                PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
                IF PRIMERMES1 > 0 THEN
                        BEGIN
                        SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                        SGDETALLEINC.CELLS[0,2] :=   '01/05/' + ANO;
                        SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                        SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES1),0));
                        END;
                END
                ELSE IF MES = '05' THEN
                BEGIN
                SGDETALLEINC.CELLS[0,1] :=   '01/05/' + ANO;
                SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
                SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES),0));
                PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
                IF PRIMERMES1 > 0 THEN
                        BEGIN
                        SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                        SGDETALLEINC.CELLS[0,2] :=   '01/06/' + ANO;
                        SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                        SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES1),0));
                        END;
                END
                ELSE IF MES = '06' THEN
                BEGIN
                SGDETALLEINC.CELLS[0,1] :=   '01/06/' + ANO;
                SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
                SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES),0));
                PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
                IF PRIMERMES1 > 0 THEN
                        BEGIN
                        SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                        SGDETALLEINC.CELLS[0,2] :=   '01/07/' + ANO;
                        SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                        SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES1),0));
                        END;
                END
                ELSE IF MES = '07' THEN
                BEGIN
                SGDETALLEINC.CELLS[0,1] :=   '01/07/' + ANO;
                SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
                SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES),0));
                PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
                IF PRIMERMES1 > 0 THEN
                        BEGIN
                        SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                        SGDETALLEINC.CELLS[0,2] :=   '01/08/' + ANO;
                        SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                        SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES1),0));
                        END;
                END
                ELSE IF MES = '08' THEN
                BEGIN
                SGDETALLEINC.CELLS[0,1] :=   '01/08/' + ANO;
                SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
                SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES),0));
                PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
                IF PRIMERMES1 > 0 THEN
                        BEGIN
                        SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                        SGDETALLEINC.CELLS[0,2] :=   '01/09/' + ANO;
                        SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                        SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES1),0));
                        END;
                END
                ELSE IF MES = '09' THEN
                BEGIN
                SGDETALLEINC.CELLS[0,1] :=   '01/09/' + ANO;
                SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
                SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES),0));
                PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
                IF PRIMERMES1 > 0 THEN
                        BEGIN
                        SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                        SGDETALLEINC.CELLS[0,2] :=   '01/10/' + ANO;
                        SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                        SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES1),0));
                        END;
                END
                ELSE IF MES = '10' THEN
                BEGIN
                SGDETALLEINC.CELLS[0,1] :=   '01/10/' + ANO;
                SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
                SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES),0));
                PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
                IF PRIMERMES1 > 0 THEN
                        BEGIN
                        SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                        SGDETALLEINC.CELLS[0,2] :=   '01/11/' + ANO;
                        SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                        SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES1),0));
                        END;
                END
                ELSE IF MES = '11' THEN
                BEGIN
                SGDETALLEINC.CELLS[0,1] :=   '01/11/' + ANO;
                SGDETALLEINC.CELLS[1,1] := INTTOSTR(PRIMERMES);
                SGDETALLEINC.CELLS[2,1] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES),0));
                PRIMERMES1 := STRTOINT(EDTDIASLIQUIDADOS.TEXT)-(PRIMERMES);
                IF PRIMERMES1 > 0 THEN
                        BEGIN
                        SGDETALLEINC.ROWCOUNT := SGDETALLEINC.ROWCOUNT +1;
                        SGDETALLEINC.CELLS[0,2] :=   '01/12/' + ANO;
                        SGDETALLEINC.CELLS[1,2] := INTTOSTR(PRIMERMES1);
                        SGDETALLEINC.CELLS[2,2] := FLOATTOSTR(ROUNDTO(((STRTOINT(EDTVALORLIQUIDADO.TEXT)/STRTOINT(EDTDIASLIQUIDADOS.TEXT))* PRIMERMES1),0));
                        END;
                END;





END;


PROCEDURE TFRMINCAPACIDADES.GRABARINCAPACIDADES;
VAR I : INTEGER;
BEGIN
IF  EDTVALORLIQUIDADO.TEXT <> '' THEN
BEGIN
 IF RGTIPOINCAPACIDAD.ItemIndex<> 4 THEN
 BEGIN
 TRY
     DATAMODULE1.DTBDATAMEC.BeginTrans;
     DATAMODULE1.QRYINCAPACIDADES.CLOSE;
     DATAMODULE1.QRYINCAPACIDADES.SQL.CLEAR;
     DATAMODULE1.QRYINCAPACIDADES.SQL.ADD('SELECT * FROM INCAPACIDADES WHERE NUM_INCAPACIDAD = :"INCAPACIDAD"');
     DATAMODULE1.QRYINCAPACIDADES.Parameters[0].VALUE := EDTNUMERO.TEXT;
     DATAMODULE1.QRYINCAPACIDADES.OPEN;

        IF DATAMODULE1.QRYINCAPACIDADES.RECORDCOUNT > 0 THEN
        BEGIN
        DATAMODULE1.QRYINCAPACIDADES.EDIT;
        DATAMODULE1.QRYINCAPACIDADESFEC_MODIFICACION.VALUE := STRTOdate(GLDATE);
        END
        ELSE  IF DATAMODULE1.QRYINCAPACIDADES.RECORDCOUNT = 0 THEN
                BEGIN
                DATAMODULE1.QRYINCAPACIDADES.INSERT;
                DATAMODULE1.QRYINCAPACIDADESFEC_DIGITACION.VALUE := STRTODATE(GLDATE);
                END;
        DATAMODULE1.QRYINCAPACIDADESNUM_INCAPACIDAD.VALUE :=EDTNUMERO.TEXT;
        IF RGTIPOINCAPACIDAD.ITEMINDEX = 0 THEN
        BEGIN
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('TIP_INCAPACIDAD').VALUE := 'EGA';
        END
                ELSE IF RGTIPOINCAPACIDAD.ITEMINDEX = 1 THEN
                        BEGIN
                        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('TIP_INCAPACIDAD').VALUE := 'EGH';
                        END
                        ELSE IF RGTIPOINCAPACIDAD.ITEMINDEX = 2 THEN
                                BEGIN
                                DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('TIP_INCAPACIDAD').VALUE := 'MAT';
                                END
                                     ELSE IF RGTIPOINCAPACIDAD.ITEMINDEX = 3 THEN
                                     BEGIN
                                     DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('TIP_INCAPACIDAD').VALUE := 'MAP';
                                     END
                                         ELSE IF RGTIPOINCAPACIDAD.ITEMINDEX = 5 THEN
                                         BEGIN
                                         DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('TIP_INCAPACIDAD').VALUE := 'SOA';
                                         END;


        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('FEC_EXPEDICION').VALUE :=DTPFECEXPEDICION.DATE;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('TIP_DOCEMPRESA').VALUE :=CBTIPODOCEMPRESA.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('NUM_DOCEMPRESA').VALUE :=EDTNUMDOCEMPRESA.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('COD_DIAGNOSTICO').VALUE :=EDTCODDIAGNOSTICO.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('AFI_TIPO_DOC').VALUE :=CBTIPODOCAFILIADO.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('AFI_NUMERO_DOC').VALUE :=EDTNUMDOCAFILIADOIN.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('COD_PRESTADOR').VALUE :=EDTCODPRESTADOR.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('NOM_PRESTADOR').VALUE :=EDTNOMBREPRESTADOR.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('DIA_INCAPACIDAD').VALUE :=EDTDIASINCAPACIDAD.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('DIA_LIQUIDADOS').VALUE :=EDTDIASLIQUIDADOS.TEXT;
	      DATAMODULE1.qryincapacidadesTOT_DIAS_PRORROGA.VALUE := Edit2.Text;
	      DATAMODULE1.qryincapacidadesNUM_RECEPCION.VALUE := trim(Edit3.Text);


         IF CHPRORROGA.CHECKED = TRUE THEN
           BEGIN
            DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('PRO_INCAPACIDAD').VALUE := 'S';
            DATAMODULE1.qryincapacidadesNO_PRORROGA.VALUE := Edit1.Text;
            DATAMODULE1.qryincapacidadesTOT_DIAS_PRORROGA.VALUE := Edit2.Text;

            END
            ELSE IF CHPRORROGA.CHECKED = FALSE THEN
                 BEGIN
                 DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('PRO_INCAPACIDAD').VALUE := 'N';
                 DATAMODULE1.qryincapacidadesNO_PRORROGA.VALUE := '0';
                 DATAMODULE1.qryincapacidadesTOT_DIAS_PRORROGA.VALUE := Edit2.Text;

                 END;

        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('SAL_BASE').VALUE :=EDTSALARIOBASE.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('PRO_SALARIO_LIQUI').VALUE :=EDTPROLIQUIDACION.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('VAL_INCAPACIDAD').VALUE :=EDTVALORLIQUIDADO.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('EST_INCAPACIDAD').VALUE := ESTADO_INCAPACIDAD;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('COD_OFICINA').VALUE :=GLOFICINA;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('COD_REGIONAL').VALUE :=GLREGIONAL;
        DATAMODULE1.QRYINCAPACIDADESTIP_DOC_USUARIO.VALUE :=GLTIPO;
        DATAMODULE1.QRYINCAPACIDADESTIP_NUM_USUARIO.VALUE :=GLNUMERO;
        DATAMODULE1.QRYINCAPACIDADESFEC_INICIO.VALUE := DTPFECINICIACION.DATE;
        DATAMODULE1.QRYINCAPACIDADESFEC_TERMINACION.VALUE := STRTODATE(EDTFINAL.TEXT);
        DATAMODULE1.QRYINCAPACIDADES.POST;


         // GRABAR  LA  LIQUIDACION DE  LA  INCAPACIDAD

          FOR I := 1 TO SGDETALLEINC.ROWCOUNT - 1 DO
          BEGIN
                IF TRIM(SGDETALLEINC.CELLS[0,I]) <> '' THEN
                BEGIN

                DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
                DATAMODULE1.QRYDETINCAPACIDAD.SQL.CLEAR;
                DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('SELECT * FROM DET_INCAPACIDAD WHERE NUM_INCAPACIDAD =  :"INCPA" AND PER_PAGO_INCAP = :"PERIODO"');
                DATAMODULE1.QRYDETINCAPACIDAD.Parameters[0].VALUE := EDTNUMERO.TEXT;
                DATAMODULE1.QRYDETINCAPACIDAD.Parameters[1].VALUE := TRIM(SGDETALLEINC.CELLS[0,I]);
                DATAMODULE1.QRYDETINCAPACIDAD.OPEN;
                IF DATAMODULE1.QRYDETINCAPACIDAD.RECORDCOUNT > 0 THEN
                BEGIN
           DATAMODULE1.QRYDETINCAPACIDAD.EDIT;
             END
            ELSE IF DATAMODULE1.QRYDETINCAPACIDAD.RECORDCOUNT = 0 THEN
                BEGIN
                DATAMODULE1.QRYDETINCAPACIDAD.INSERT;
                END;
                DATAMODULE1.QRYDETINCAPACIDAD.FIELDBYNAME('NUM_INCAPACIDAD').VALUE := TRIM(EDTNUMERO.TEXT);
                DATAMODULE1.QRYDETINCAPACIDAD.FIELDBYNAME('PER_PAGO_INCAP').VALUE := TRIM(SGDETALLEINC.CELLS[0,I]);
                DATAMODULE1.QRYDETINCAPACIDAD.FIELDBYNAME('DIA_PAGAR_INCAP').VALUE := STRTOINT(SGDETALLEINC.CELLS[1,I]);
                DATAMODULE1.QRYDETINCAPACIDAD.FIELDBYNAME('VAL_PAGAR_INCAP').VALUE := STRTOINT(SGDETALLEINC.CELLS[2,I]);
                DATAMODULE1.qrydetincapacidadNUM_COMPROBANTE.VALUE := '0';
                DATAMODULE1.QRYDETINCAPACIDAD.POST;
                DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
                END;
          END;
           DATAMODULE1.DTBDATAMEC.CommitTrans;
          IF MESSAGEDLG (LowerCase(' Desea  Imprimir  la  Incapacidad ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
          BEGIN
          imprimir_incapacidad
          end;
          EDTNUMERO.TEXT := '0';
          LIMPIAR;
    EXCEPT
        DATAMODULE1.DTBDATAMEC.RollbackTrans;
        SHOWMESSAGE(LowerCase('NO SE PUEDE  GRABAR LA INCAPACIDAD PORQUE  TIENE  ERRORES'));
        FRMPROCESO.FREE;
        RAISE;
     END;
    END
    ELSE //ARP
    BEGIN
    TRY
     DATAMODULE1.DTBDATAMEC.BeginTrans;
     DATAMODULE1.QRYINCAPACIDADES.CLOSE;
     DATAMODULE1.QRYINCAPACIDADES.SQL.CLEAR;
     DATAMODULE1.QRYINCAPACIDADES.SQL.ADD('SELECT * FROM INCAPACIDADES WHERE NUM_INCAPACIDAD = :"INCAPACIDAD"');
     DATAMODULE1.QRYINCAPACIDADES.Parameters[0].VALUE := EDTNUMERO.TEXT;
     DATAMODULE1.QRYINCAPACIDADES.OPEN;

        IF DATAMODULE1.QRYINCAPACIDADES.RECORDCOUNT > 0 THEN
        BEGIN
        DATAMODULE1.QRYINCAPACIDADES.EDIT;
        DATAMODULE1.QRYINCAPACIDADESFEC_MODIFICACION.VALUE := STRTOdate(GLDATE);
        END
        ELSE  IF DATAMODULE1.QRYINCAPACIDADES.RECORDCOUNT = 0 THEN
                BEGIN
                DATAMODULE1.QRYINCAPACIDADES.INSERT;
                DATAMODULE1.QRYINCAPACIDADESFEC_DIGITACION.VALUE := STRTODATE(GLDATE);
                END;
        DATAMODULE1.QRYINCAPACIDADESNUM_INCAPACIDAD.VALUE :=EDTNUMERO.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('TIP_INCAPACIDAD').VALUE := 'ARP';
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('FEC_EXPEDICION').VALUE :=DTPFECEXPEDICION.DATE;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('TIP_DOCEMPRESA').VALUE :=CBTIPODOCEMPRESA.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('NUM_DOCEMPRESA').VALUE :=EDTNUMDOCEMPRESA.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('COD_DIAGNOSTICO').VALUE :=EDTCODDIAGNOSTICO.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('AFI_TIPO_DOC').VALUE :=CBTIPODOCAFILIADO.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('AFI_NUMERO_DOC').VALUE :=EDTNUMDOCAFILIADOIN.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('COD_PRESTADOR').VALUE :=EDTCODPRESTADOR.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('NOM_PRESTADOR').VALUE :=EDTNOMBREPRESTADOR.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('DIA_INCAPACIDAD').VALUE :=EDTDIASINCAPACIDAD.TEXT;
        //DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('DIA_LIQUIDADOS').VALUE :=EDTDIASLIQUIDADOS.TEXT;
	      //DATAMODULE1.qryincapacidadesTOT_DIAS_PRORROGA.VALUE := Edit2.Text;
	      DATAMODULE1.qryincapacidadesNUM_RECEPCION.VALUE := trim(Edit3.Text);

        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('PRO_INCAPACIDAD').VALUE := 'N';
        DATAMODULE1.qryincapacidadesNO_PRORROGA.VALUE := '0';
        DATAMODULE1.qryincapacidadesTOT_DIAS_PRORROGA.VALUE := Edit2.Text;

        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('SAL_BASE').VALUE :=EDTSALARIOBASE.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('PRO_SALARIO_LIQUI').VALUE :=EDTPROLIQUIDACION.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('VAL_INCAPACIDAD').VALUE :=EDTVALORLIQUIDADO.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('EST_INCAPACIDAD').VALUE := ESTADO_INCAPACIDAD;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('COD_OFICINA').VALUE :=GLOFICINA;
        DATAMODULE1.QRYINCAPACIDADES.FIELDBYNAME('COD_REGIONAL').VALUE :=GLREGIONAL;
        DATAMODULE1.QRYINCAPACIDADESTIP_DOC_USUARIO.VALUE :=GLTIPO;
        DATAMODULE1.QRYINCAPACIDADESTIP_NUM_USUARIO.VALUE :=GLNUMERO;
        DATAMODULE1.QRYINCAPACIDADESFEC_INICIO.VALUE := DTPFECINICIACION.DATE;
        //DATAMODULE1.QRYINCAPACIDADESFEC_TERMINACION.VALUE := STRTODATE(EDTFINAL.TEXT);
        DATAMODULE1.QRYINCAPACIDADES.POST;
        DATAMODULE1.DTBDATAMEC.CommitTrans;
          IF MESSAGEDLG (LowerCase(' Desea  Imprimir  la  Incapacidad ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
          BEGIN
          imprimir_incapacidad
          end;
          EDTNUMERO.TEXT := '0';
          LIMPIAR;
       EXCEPT
        DATAMODULE1.DTBDATAMEC.RollbackTrans;
        SHOWMESSAGE(LowerCase('NO SE PUEDE  GRABAR LA INCAPACIDAD PORQUE  TIENE  ERRORES'));
        FRMPROCESO.FREE;
        RAISE;
     END;
    END

 END;

END;

PROCEDURE TFRMINCAPACIDADES.BUTTON2CLICK(SENDER: TOBJECT);
BEGIN
IF   RGTIPOINCAPACIDAD.ItemIndex<> 4 THEN //ARP
BEGIN

                liquidar_incapacidad;
                DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
                DATAMODULE1.QRYDETINCAPACIDAD.SQL.CLEAR;
                DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('DELETE  FROM DET_INCAPACIDAD WHERE NUM_INCAPACIDAD =  :"INCPA"');
                DATAMODULE1.QRYDETINCAPACIDAD.Parameters[0].VALUE := EDTNUMERO.TEXT;
                DATAMODULE1.QRYDETINCAPACIDAD.ExecSQL;
                DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;

 // CUANDO LOS  DIAS LIQUIDADOS  SON MAYORES A 0 DIAS
  IF (EDTVALORLIQUIDADO.TEXT > '0') AND (EDTDIASLIQUIDADOS.TEXT > '0') THEN
  BEGIN
    IF  SGDETALLEINC.CELLS[0,1] = '' THEN
    BEGIN
    SHOWMESSAGE(LowerCase('DEBE  LIQUIDAR  LA FORMA  DE  PAGO DE LA INCAPACIDAD'));
    END
    ELSE IF  SGDETALLEINC.CELLS[0,1] > '0'THEN
          BEGIN
          ESTADO_INCAPACIDAD := 'SDE';
          GRABARINCAPACIDADES;
          EDTNUMERO.Enabled :=TRUE;
          Edtnumero.SetFocus;

          END;
  END;

// INCAPACIDADES  QUE NO SE  PAGAN POR  NO TIENE  DIAS  PARA  LIQUIDAR

        IF (EDTVALORLIQUIDADO.TEXT = '0') AND (EDTDIASLIQUIDADOS.TEXT = '0') AND (EDTDIASINCAPACIDAD.TEXT > '0') THEN
        BEGIN
        ESTADO_INCAPACIDAD := 'DES';
        GRABARINCAPACIDADES;
        END;


END
ELSE
BEGIN
  GRABARINCAPACIDADES;
END

END;

FUNCTION TFRMINCAPACIDADES.VALIDAR: BOOLEAN;
BEGIN
VALIDAR := FALSE;
IF CBTIPODOCAFILIADO.ITEMINDEX = -1 THEN
   BEGIN
   VALIDAR := TRUE;
   SHOWMESSAGE(LowerCase('EL TIPO DE  DOCUMENTO DEL AFILIADO ESTA EN BLANCO'));
   END;
IF CBTIPODOCEMPRESA.ITEMINDEX = -1 THEN
  BEGIN
   VALIDAR := TRUE;
   SHOWMESSAGE(LowerCase('EL TIPO DE  DOCUMENTO DE LA EMPRESA EN BLANCO'));
   END;

IF EDTNUMDOCAFILIADOIN.TEXT = '' THEN
        BEGIN
        VALIDAR := TRUE;
        SHOWMESSAGE(LowerCase('EL NUMERO DE  DOCUMENTO DEL AFILIADO EN BLANCO'));
        END;
IF EDTNUMDOCEMPRESA.TEXT = '' THEN
        BEGIN
        VALIDAR := TRUE;
        SHOWMESSAGE(LowerCase('EL NUMERO DE  DOCUMENTO DE LA  EMPRESA EN BLANCO'));
        END;
IF EDTCODDIAGNOSTICO.TEXT = '' THEN
        BEGIN
        VALIDAR := TRUE;
        SHOWMESSAGE(LowerCase('INCAPACIDAD SIN DIAGNOSTICO'));
        END;
IF EDTDIASINCAPACIDAD.TEXT = '' THEN
        BEGIN
        VALIDAR := TRUE;
        SHOWMESSAGE(LowerCase('NO TIENE  NUMERO DE  DIAS  LA  INCAPACIDAD'));
        END;

IF EDTPROLIQUIDACION.TEXT = '' THEN
        BEGIN
        VALIDAR := TRUE;
        SHOWMESSAGE(LowerCase('PROMEDIO DE LIQUIDACION EN BLANCO'));
        END;
IF RGTIPOINCAPACIDAD.ITEMINDEX = -1 THEN
        BEGIN
        VALIDAR := TRUE;
        SHOWMESSAGE(LowerCase('ESCOJA  EL TIPO DE  INCAPACIDAD'));
        END;

IF EDTCODPRESTADOR.TEXT = '' THEN
        BEGIN
        VALIDAR := TRUE;
        SHOWMESSAGE(LowerCase('DIGITE  EL  CODIGO DEL  PRESTADOR  O ESCOJALO DE LA  LISTA'));
        END;
IF EDTNOMBREPRESTADOR.TEXT = '' THEN
        BEGIN
        VALIDAR := TRUE;
	SHOWMESSAGE(LowerCase('DIGITE  EL NOMBRE  DEL PRESTADOR  QUE  EMITIO LA  INCAPACIDAD'));
	END;

	IF EDTVALORLIQUIDADO.TEXT = '' THEN
	BEGIN
	VALIDAR := TRUE;
	SHOWMESSAGE(LowerCase('DEBE  LIQUIDAR  LA  INCAPACIDAD ANTES VER LOS  DESCUENTOS EN EL PERIODO'));
	END;

	IF trim(Edit3.TEXT) = '' THEN
	BEGIN
	VALIDAR := TRUE;
	SHOWMESSAGE(LowerCase('Debe  digitar  el numero de  remision de la incapacidad'));
	END;

	
END;

PROCEDURE TFRMINCAPACIDADES.EDTSALARIOBASEENTER(SENDER: TOBJECT);
BEGIN
DIASLIQUIDADOS;
END;



PROCEDURE TFRMINCAPACIDADES.VERIFICAR_INCAPACIDADES;
  VAR  I : INTEGER;

BEGIN

IF EDTCODDIAGNOSTICO.TEXT > '0' THEN
BEGIN
     IF RGTIPOINCAPACIDAD.ITEMINDEX <= 1 THEN
     BEGIN
     DATAMODULE1.QRYINCAPACIDADES.CLOSE;
     DATAMODULE1.QRYINCAPACIDADES.SQL.CLEAR;
     DATAMODULE1.QRYINCAPACIDADES.SQL.ADD('SELECT * FROM INCAPACIDADES WHERE  AFI_TIPO_DOC = :"TIPO" AND AFI_NUMERO_DOC = :"DOCUMENTO" AND COD_DIAGNOSTICO = :"DIAGNOSTICO" AND TIP_INCAPACIDAD <> :"TIPINCAP" AND FEC_TERMINACION = :"FECHAFINAL"');
     DATAMODULE1.QRYINCAPACIDADES.Parameters[0].VALUE := CBTIPODOCAFILIADO.TEXT;
     DATAMODULE1.QRYINCAPACIDADES.Parameters[1].VALUE := EDTNUMDOCAFILIADOIN.TEXT;
     DATAMODULE1.QRYINCAPACIDADES.Parameters[2].VALUE := EDTCODDIAGNOSTICO.TEXT;
     DATAMODULE1.QRYINCAPACIDADES.Parameters[3].VALUE := 'MAT';
     DATAMODULE1.QRYINCAPACIDADES.Parameters[4].VALUE := (DTPFECINICIACION.DATE -1);
     DATAMODULE1.QRYINCAPACIDADES.OPEN;
         IF DATAMODULE1.QRYINCAPACIDADES.RECORDCOUNT > 0 THEN
         BEGIN
          IF DATAMODULE1.QRYINCAPACIDADESPRO_INCAPACIDAD.VALUE = 'N' THEN
          BEGIN
           SHOWMESSAGE(LowerCase('ESTA  INCAPACIDAD ES  UNA  PRORROGA  DE LA INCAPACIDAD  NO. :'+ (DATAMODULE1.QRYINCAPACIDADESNUM_INCAPACIDAD.VALUE) +' QUE NO ES UNA PRORROGA'));
           Edit1.Text := DATAMODULE1.QRYINCAPACIDADESNUM_INCAPACIDAD.VALUE;
           END
          ELSE
          SHOWMESSAGE(LowerCase('ESTA  INCAPACIDAD ES  UNA  PRORROGA  DE LA INCAPACIDAD  NO. : '+ (DATAMODULE1.QRYINCAPACIDADESNUM_INCAPACIDAD.VALUE)+ ' QUE  ES UNA PRORROGA'));
          Edit1.Text := DATAMODULE1.QRYINCAPACIDADESNUM_INCAPACIDAD.VALUE;
          CHPRORROGA.CHECKED := TRUE;
           END
         ELSE IF DATAMODULE1.QRYINCAPACIDADES.RECORDCOUNT = 0 THEN
         BEGIN
         CHPRORROGA.CHECKED := FALSE;
         END;
     END
     ELSE IF RGTIPOINCAPACIDAD.ITEMINDEX = 2 THEN
          BEGIN
         DATAMODULE1.QRYINCAPACIDADES.CLOSE;
         DATAMODULE1.QRYINCAPACIDADES.SQL.CLEAR;
         DATAMODULE1.QRYINCAPACIDADES.SQL.ADD('SELECT * FROM  INCAPACIDADES WHERE AFI_TIPO_DOC = :"TIPO" AND AFI_NUMERO_DOC = :"NUMERO" AND  FEC_INICIO <= :"FECHAI" AND FEC_TERMINACION >= :"FECHAF"');
         DATAMODULE1.QRYINCAPACIDADES.Parameters[0].VALUE := CBTIPODOCAFILIADO.TEXT;
         DATAMODULE1.QRYINCAPACIDADES.Parameters[1].VALUE := EDTNUMDOCAFILIADOIN.TEXT;
         DATAMODULE1.QRYINCAPACIDADES.Parameters[2].VALUE := (DTPFECINICIACION.DATE -270);
         DATAMODULE1.QRYINCAPACIDADES.Parameters[3].VALUE := (DTPFECINICIACION.DATE );
         DATAMODULE1.QRYINCAPACIDADES.OPEN;
             IF DATAMODULE1.QRYINCAPACIDADES.RECORDCOUNT > 0 THEN
             BEGIN
             SHOWMESSAGE(LowerCase('EL  AFILIADO NO PUEDE  TENER  UNA  LICENCIA  DE MATERNIDAD POR QUE  SU  ULTIMA INCAPACIDAD TERMINO' + DATETOSTR(DATAMODULE1.QRYINCAPACIDADESFEC_TERMINACION.VALUE )));
             LIMPIAR;
             EDTNUMERO.SETFOCUS;
             END;
          END;
     END;
END;
PROCEDURE TFRMINCAPACIDADES.EDTCODDIAGNOSTICOCLICK(SENDER: TOBJECT);
BEGIN
 IF EDTNUMDOCAFILIADOIN.TEXT = '0' THEN
    BEGIN
    SHOWMESSAGE(LowerCase(' SELECCIONE  EL USUARIO'));
    EDTNUMDOCAFILIADOIN.SETFOCUS;
    END;
END;

PROCEDURE TFRMINCAPACIDADES.EDTPROLIQUIDACIONCLICK(SENDER: TOBJECT);
BEGIN
IF ENCONTRO = FALSE THEN
  BEGIN
VERIFICAR_INCAPACIDADES;
END;
END;

PROCEDURE TFRMINCAPACIDADES.VERIFICAR_CARTERA;
BEGIN
        IF (CBTIPODOCAFILIADO.ITEMINDEX >= 0)  AND (EDTNUMDOCAFILIADOIN.TEXT >'0') THEN
        BEGIN

                DATAMODULE1.QRYCARTERA.CLOSE;
                DATAMODULE1.QRYCARTERA.SQL.CLEAR;
                DATAMODULE1.QRYCARTERA.SQL.ADD('SELECT * FROM CARTERA WHERE TIP_DOCUMENTO = :"TIPO" AND NUM_DOCUMENTO = :"COTIZANTE" AND TIPO_MORA >:"ESTADO"');
                DATAMODULE1.QRYCARTERA.Parameters[0].VALUE := CBTIPODOCAFILIADO.TEXT;
                DATAMODULE1.QRYCARTERA.Parameters[1].VALUE := EDTNUMDOCAFILIADOIN.TEXT;
                DATAMODULE1.QRYCARTERA.Parameters[2].VALUE := '0';
                DATAMODULE1.QRYCARTERA.OPEN;
                        IF DATAMODULE1.QRYCARTERA.RECORDCOUNT > 0 THEN
                        BEGIN
                        SHOWMESSAGE(LowerCase('ESTE  USUARIO  TIENE  '+ INTTOSTR(DATAMODULE1.QRYCARTERA.RECORDCOUNT) + '  PERIODOS EN MORA  Y  LA ' + RGTIPOINCAPACIDAD.TEXT + ' NO SE PUEDE LIQUIDAR'));
                        LIMPIAR;
                        EDTNUMERO.SETFOCUS;
                        END;
        END;
END;



PROCEDURE TFRMINCAPACIDADES.APPMESSAGE(VAR MSG: TMSG;
  VAR HANDLED: BOOLEAN);
BEGIN
     IF MSG.WPARAM = VK_RETURN THEN
    BEGIN
        IF (((SCREEN.ACTIVECONTROL) IS TEDIT)) THEN
                MSG.WPARAM := VK_TAB;
        IF (((SCREEN.ACTIVECONTROL) IS TCOMBOBOX)) THEN
                MSG.WPARAM := VK_TAB;
        IF (((SCREEN.ACTIVECONTROL) IS TDATETIMEPICKER)) THEN
                MSG.WPARAM := VK_TAB;
        IF (((SCREEN.ACTIVECONTROL) IS TBitBtn)) THEN
                MSG.WPARAM := VK_TAB;
        IF (((SCREEN.ACTIVECONTROL) IS TCheckBox)) THEN
                MSG.WPARAM := VK_TAB;
    END;
END;

PROCEDURE TFRMINCAPACIDADES.CERRAR1CLICK(SENDER: TOBJECT);
BEGIN
FRMINCAPACIDADES.CLOSE
END;

PROCEDURE TFRMINCAPACIDADES.ENVIARWORD;
VAR
WORDOBJECT : TWORDOBJECT;
I,J : INTEGER;
FECHAFIN : TDATE;
BEGIN
WORDOBJECT:=TWORDOBJECT.CREATE;
WORDOBJECT.NEWDOC('');
WORDOBJECT.CAPTION := RGTIPOINCAPACIDAD.TEXT + ' ' + EDTNUMERO.TEXT;
WORDOBJECT.VISIBLE := TRUE;
WORDOBJECT.INSERTTEXT('FECHA ' +  GLDATE + #13#13); //ABRIR  DOS  LINEAS  EN  WORD
WORDOBJECT.INSERTTEXT('                  AUTORIZACION  DE  DESCUENTOS  INCAPACIDADES' + #13); //ABRIR  DOS  LINEAS  EN  WORD
WORDOBJECT.INSERTTEXT('                             O LICENCIA  DE  MATERNIDAD' + #13#13#13#13); //ABRIR  DOS  LINEAS  EN  WORD
WORDOBJECT.INSERTTEXT('      '+#9 + RGTIPOINCAPACIDAD.TEXT +  ' NUMERO : ' + EDTNUMERO.TEXT + #13#13 ); //ABRIR  DOS  LINEAS  EN  WORD
WORDOBJECT.INSERTTEXT('                             DATOS  DE LA  EMPRESA' + #13#13); //ABRIR  DOS  LINEAS  EN  WORD

    DATAMODULE1.QRYEMPRESAS.CLOSE;
    DATAMODULE1.QRYEMPRESAS.Parameters[0].VALUE := TRIM(CBTIPODOCEMPRESA.TEXT);
    DATAMODULE1.QRYEMPRESAS.Parameters[1].VALUE := TRIM(EDTNUMDOCEMPRESA.TEXT);
    DATAMODULE1.QRYEMPRESAS.OPEN;

WORDOBJECT.INSERTTEXT('EMPRESA              :'+#9 + DATAMODULE1.QRYEMPRESASNOM_EMPRESA.VALUE + #13  ); //ABRIR  DOS  LINEAS  EN  WORD
WORDOBJECT.INSERTTEXT('NIT                         :'+#9 + CBTIPODOCEMPRESA.TEXT + ' ' + EDTNUMDOCEMPRESA.TEXT + #13); //ABRIR  DOS  LINEAS  EN  WORD
WORDOBJECT.INSERTTEXT('ATENCION             :'+#9 +  #13); //ABRIR  DOS  LINEAS  EN  WORD
WORDOBJECT.INSERTTEXT('DIRECCION            :'+#9 + DATAMODULE1.QRYEMPRESASDIR_EMPRESA.VALUE + #13); //ABRIR  DOS  LINEAS  EN  WORD
WORDOBJECT.INSERTTEXT('TELEFONOS           :'+#9 + DATAMODULE1.QRYEMPRESASTEL_EMPRESA.VALUE + DATAMODULE1.QRYEMPRESASTEL_EMPRESA2.VALUE + #13#13#13#13); //ABRIR  DOS  LINEAS  EN  WORD
WORDOBJECT.INSERTTEXT('                             DATOS  DEL  COTIZANTE ' + #13#13); //ABRIR  DOS  LINEAS  EN  WORD
WORDOBJECT.INSERTTEXT('PERTENCECE A      :'+#9 + EDTNOMBREAFILIADO.TEXT + #13); //ABRIR  DOS  LINEAS  EN  WORD
WORDOBJECT.INSERTTEXT('DOCUMENTO          :'+#9 + CBTIPODOCAFILIADO.TEXT + ' ' + EDTNUMDOCAFILIADOIN.TEXT + #13); //ABRIR  DOS  LINEAS  EN  WORD
WORDOBJECT.INSERTTEXT('FECHA INICIO        :'+#9 + DATETOSTR(DTPFECINICIACION.DATE) + ' HASTA  EL ' + EDTFINAL.TEXT + #13); //ABRIR  DOS  LINEAS  EN  WORD
WORDOBJECT.INSERTTEXT('DIAS INCAPACIDAD :'+#9 + VALORLETRADIAS.TEXT + '(' + EDTDIASLIQUIDADOS.TEXT +')' + #13#13); //ABRIR  DOS  LINEAS  EN  WORD
WORDOBJECT.INSERTTEXT('                            DESCUENTOS  AUTORORIZADOS POR PERIODO' + #13#13); //ABRIR  DOS  LINEAS  EN  WORD

  FOR I := 0 TO SGDETALLEINC.ROWCOUNT - 1 DO
  BEGIN

         FOR J:= 0 TO 2 DO
         WORDOBJECT.INSERTTEXT('¦              ' + SGDETALLEINC.CELLS[J,I]+ #9#9);
         WORDOBJECT.INSERTTEXT ('¦________________________________________________________________¦');
         WORDOBJECT.INSERTTEXT(#13); // REALIZAR CONXION  CON  AUTOIMPL
  END;


END;

PROCEDURE TFRMINCAPACIDADES.USUARIOS1CLICK(SENDER: TOBJECT);
BEGIN
FRMINCAPORUSUARIO:=TFRMINCAPORUSUARIO.CREATE(APPLICATION);
        TRY
        FRMINCAPORUSUARIO.SHOW;
        //FINALLY
        EXCEPT
        FRMINCAPORUSUARIO.FREE;
        END;

END;

PROCEDURE TFRMINCAPACIDADES.INCAPACIDADVIGENTE;
VAR
TIPINCAPACIDAD:STRING;
BEGIN
     DATAMODULE1.QRYINCAPACIDADES.CLOSE;
     DATAMODULE1.QRYINCAPACIDADES.SQL.CLEAR;
     DATAMODULE1.QRYINCAPACIDADES.SQL.ADD('SELECT * FROM  INCAPACIDADES WHERE AFI_TIPO_DOC = :"TIPO" AND AFI_NUMERO_DOC = :"NUMERO" AND  FEC_INICIO <= :"FECHAI" AND FEC_TERMINACION >= :"FECHAF"');
     DATAMODULE1.QRYINCAPACIDADES.Parameters[0].VALUE := CBTIPODOCAFILIADO.TEXT;
     DATAMODULE1.QRYINCAPACIDADES.Parameters[1].VALUE := EDTNUMDOCAFILIADOIN.TEXT;
     DATAMODULE1.QRYINCAPACIDADES.Parameters[2].VALUE := DTPFECINICIACION.DATE;
     DATAMODULE1.QRYINCAPACIDADES.Parameters[3].VALUE := DTPFECINICIACION.DATE;
     DATAMODULE1.QRYINCAPACIDADES.OPEN;
        IF DATAMODULE1.QRYINCAPACIDADES.RECORDCOUNT > 0 THEN
        BEGIN
        IF DATAMODULE1.QRYINCAPACIDADESTIP_INCAPACIDAD.VALUE='EGA' THEN
           TIPINCAPACIDAD:=('ENFERMEDAD GENERAL AMBULATORIA')
           ELSE IF DATAMODULE1.QRYINCAPACIDADESTIP_INCAPACIDAD.VALUE='EGH' THEN
                   TIPINCAPACIDAD:='ENFERMEDAD GENERAL HOSPITALARIA'
                   ELSE IF DATAMODULE1.QRYINCAPACIDADESTIP_INCAPACIDAD.VALUE='MAT' THEN
                           TIPINCAPACIDAD:='LICENCIA DE MATERNIDAD'
                           ELSE IF DATAMODULE1.QRYINCAPACIDADESTIP_INCAPACIDAD.VALUE='MAP' THEN
                                   TIPINCAPACIDAD:='LICENCIA DE PATERNIDAD'
                                   ELSE IF DATAMODULE1.QRYINCAPACIDADESTIP_INCAPACIDAD.VALUE='ARP' THEN
                                           TIPINCAPACIDAD:='INCAPACIDAD POR RIESGOS PROFESIONALES(ARP)'
                                           ELSE IF DATAMODULE1.QRYINCAPACIDADESTIP_INCAPACIDAD.VALUE='SOA' THEN
                                                   TIPINCAPACIDAD:='INCAPACIDADES POR SOAT';

        IF MESSAGEDLG (LowerCase('EL AFILIADO TIENE LA INCAPACIDAD NUMERO '+ DATAMODULE1.QRYINCAPACIDADESNUM_INCAPACIDAD.VALUE + ' VIGENTE POR ' + TIPINCAPACIDAD + '  TERMINAR  ' + DATETOSTR(DATAMODULE1.QRYINCAPACIDADESFEC_TERMINACION.VALUE )+ ' DESEA CORREGIR LA FECHA '), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
        BEGIN
        dtpfeciniciacion.Date := DATAMODULE1.QRYINCAPACIDADESFEC_TERMINACION.VALUE+1;
        {IF RGTIPOINCAPACIDAD.ITEMINDEX = 2 THEN
        EDTDIASINCAPACIDADEXIT://(SENDER: TOBJECT)
        ELSE IF RGTIPOINCAPACIDAD.ITEMINDEX = 3 THEN
                FRMINCAPACIDADES.EDTDIASINCAPACIDAD.OnExit
                ELSE}
                IF EDTDIASINCAPACIDAD.Enabled=TRUE THEN
                edtdiasincapacidad.SETFOCUS
                ELSE
                FRMINCAPACIDADES.EDTDIASINCAPACIDADEXIT(NIL);


        END
        ELSE
        BEGIN
        EDTNUMERO.ENABLED := TRUE;
        //EDTNUMERO.Color :=clWindow;
        EDTNUMERO.TEXT := '0';
        LIMPIAR;
        EDTNUMERO.SETFOCUS;
        END;

        END;
END;

procedure TFRMINCAPACIDADES.liquidar_incapacidad;
VAR I : INTEGER;
 BEGIN
  IF VALIDAR = FALSE THEN
   BEGIN
   IF EDTVALORLIQUIDADO.TEXT > '0' THEN
        BEGIN
        IF (RGTIPOINCAPACIDAD.ITEMINDEX <=6) AND (STRTOINT(EDTDIASLIQUIDADOS.Text)<=30)  THEN //***
           BEGIN
             IF EDTDIASLIQUIDADOS.TEXT > '0' THEN
                BEGIN
                FOR I := 1 TO SGDETALLEINC.ROWCOUNT DO
                BEGIN
                       SGDETALLEINC.CELLS[0,I]:='';
                       SGDETALLEINC.CELLS[1,I]:='';
                       SGDETALLEINC.CELLS[2,I]:='';
                       SGDETALLEINC.CELLS[3,I]:='';
                       SGDETALLEINC.CELLS[4,I]:='';
                       SGDETALLEINC.CELLS[5,I]:='';
                       SGDETALLEINC.CELLS[6,I]:='';
                       SGDETALLEINC.CELLS[7,I]:='';
                       SGDETALLEINC.CELLS[8,I]:='';
                        END;

                   SGDETALLEINC.ROWCOUNT := 2;
                   SGDETALLEINC.CELLS[0,1]:='';
                   SGDETALLEINC.CELLS[1,1]:='';
                   SGDETALLEINC.CELLS[2,1]:='';
                   SGDETALLEINC.CELLS[3,1]:='';
                   SGDETALLEINC.CELLS[4,1]:='';
                   SGDETALLEINC.CELLS[5,1]:='';
                   SGDETALLEINC.CELLS[6,1]:='';
                   PAGOEFERMEDADGENERAL;
                END
                ELSE IF EDTDIASLIQUIDADOS.TEXT = '0' THEN
                BEGIN
                     SHOWMESSAGE(LowerCase('NO SE PUEDE LIQUIDAR LA  INCAPACIDAD PORQUE  TIENE 0 DIAS '));
                     END;
                END
                ELSE IF (RGTIPOINCAPACIDAD.ITEMINDEX = 2) OR (STRTOINT(EDTDIASLIQUIDADOS.Text)>30) THEN //***
                        BEGIN
                        IF EDTDIASLIQUIDADOS.TEXT > '0' THEN
                        BEGIN
                        FOR I := 1 TO SGDETALLEINC.ROWCOUNT DO
                        BEGIN
                       SGDETALLEINC.CELLS[0,I]:='';
                       SGDETALLEINC.CELLS[1,I]:='';
                       SGDETALLEINC.CELLS[2,I]:='';
                       SGDETALLEINC.CELLS[3,I]:='';
                       SGDETALLEINC.CELLS[4,I]:='';
                       SGDETALLEINC.CELLS[5,I]:='';
                       SGDETALLEINC.CELLS[6,I]:='';
                       SGDETALLEINC.CELLS[7,I]:='';
                       SGDETALLEINC.CELLS[8,I]:='';
                        END;


                                SGDETALLEINC.ROWCOUNT := 2;
                                SGDETALLEINC.CELLS[0,1]:='';
                                SGDETALLEINC.CELLS[1,1]:='';
                                SGDETALLEINC.CELLS[2,1]:='';
                                SGDETALLEINC.CELLS[3,1]:='';
                                SGDETALLEINC.CELLS[4,1]:='';
                                SGDETALLEINC.CELLS[5,1]:='';
                                SGDETALLEINC.CELLS[6,1]:='';
                                PAGOLINCENCIAS;
                                END
                                ELSE IF EDTDIASLIQUIDADOS.TEXT = '0' THEN
                                        BEGIN
                                        SHOWMESSAGE(LowerCase('NO SE PUEDE LIQUIDAR LA  INCAPACIDAD PORQUE  TIENE 0 DIAS '));
                                        END;
                       END;

        END;
   END;

end;
//--funcion para pasar a letras valor incapacidad
Function TFRMINCAPACIDADES.xIntToLletres(Numero:LongInt):String;
var
   Millions,mils,unitats: Longint;
   Linea : String;
begin
     {Inicializamos el string que contendra las letras segun el valor numerico}
     if numero=0 then Linea:='Cero'
     else if numero<0 then Linea:='MENOS '
          else if numero>0 then Linea:='';
     {Determinamos el Nº de millones, miles, i unidades de numero en positivo}
     Numero   := Abs(Numero);
     millions := numero div 1000000;
     mils     := (numero - (millions*1000000)) div 1000;
     unitats  := numero - ((millions*1000000)+(mils*1000));
     {Vamos colocando en el string las cadenas de los numeros(llamando a subfuncion)}
     if millions=1 then Linea:= Linea + ' UN MILLON '
     else if millions>1 then Linea := Linea + xxIntToLletres(millions) + ' MILLONES ';
     if mils =1 then Linea:= Linea + ' MIL '
     else if mils>1 then Linea := Linea + xxIntToLletres(mils) + ' MIL ';
     if unitats >0 then Linea:=Linea+xxIntToLletres(unitats);
     xIntToLletres:=Linea;
end;

Function TFRMINCAPACIDADES.xxIntToLletres(Valor:LongInt):String;
const
 aUnitat : array[1..15] of String = ('UN','DOS','TRES','CUATRO','CINCO','SEIS',
                                     'SIETE','OCHO','NUEVE','DIEZ','ONCE','DOCE',
                                     'TRECE','CATORCE','QUINCE');
 aCentena: array[1..9]  of String = ('CIENTO','DOSCIENTOS','TRESCIENTOS',
                                     'CUATROCIENTOS','QUINIENTOS','SEISCIENTOS',
                                     'SETECIENTOS','OCHOCIENTOS','NOVECIENTOS');
 aDecena : array[1..9]  of String = ('DIECI','VEINTI','TREINTA','CUARENTA','CINCUENTA',
                                     'SESENTA','SETENTA','OCHENTA','NOVENTA');
var
   Centena, Decena, Unitat, Doble: LongInt;
   Linea: String;
begin
   if valor=100 then Linea:=' CIEN ' {Maximo Valor sera 999, ejemplo con 123}
   else   begin
        Linea:='';
        Centena := Valor div 100;                         {1 }
        Doble   := Valor - (Centena*100);                 {23}
        Decena  := (Valor div 10) - (Centena*10);         {2 }
        Unitat  := Valor - (Decena*10) - (Centena*100);   {3 }
        if Centena>0 then Linea:=Linea+Acentena[centena]+' ';
        if Doble>0 then begin
           if Doble=20 then Linea:=Linea+' VEINTE '
          else  begin
               if doble<16 then Linea:=Linea+Aunitat[Doble]
               else  begin
                    Linea:=Linea+' '+Adecena[Decena];
                    if (Decena>2) and (Unitat<>0) then Linea:=Linea+' Y ';
                    if Unitat>0 then Linea:=Linea+Aunitat[Unitat];
               end;
          end;
        end;
   end;
   Result:=Linea;
end;


procedure TFRMINCAPACIDADES.Button1Click(Sender: TObject);
begin
        IF STRTOINT(EDTNUMERO.TEXT) > 0 THEN
        BEGIN
        EDTNUMERO.TEXT :=FLOATTOSTR(STRTOINT(EDTNUMERO.TEXT));
        DATAMODULE1.QRYINCAPACIDADES.CLOSE;
        DATAMODULE1.QRYINCAPACIDADES.SQL.CLEAR;
        DATAMODULE1.QRYINCAPACIDADES.SQL.ADD('SELECT * FROM INCAPACIDADES WHERE NUM_INCAPACIDAD = :"INCAPACIDAD"');
        DATAMODULE1.QRYINCAPACIDADES.Parameters[0].VALUE := EDTNUMERO.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.OPEN;
                IF DATAMODULE1.QRYINCAPACIDADES.RECORDCOUNT = 0 THEN
                BEGIN
                SHOWMESSAGE(LowerCase('Debe Grabar la  Incapacidad para  Poderla  imprimir '));
                END
                ELSE
                begin
                imprimir_incapacidad;
             end;
        end
        ELSE SHOWMESSAGE(LowerCase(LowerCase('NO EXISTE  NINGUNA  INCAPACIDAD  EN LA  PANTALLA, DEBE SELECIONARLA')));

end;

procedure TFRMINCAPACIDADES.dtpfecexpedicionExit(Sender: TObject);
begin
    if strtodate(GLDATE) < dtpfecexpedicion.Date then
    begin
    SHOWMESSAGE(LowerCase(LowerCase('La Fecha   de Expedicion No debe Ser Mayor al dia  de Hoy')));
    dtpfecexpedicion.SetFocus;
    end
    else
    IF (strtodate(gldate) - 1095)  > DTPFECINICIACION.DATE THEN
         BEGIN
         SHOWMESSAGE(LowerCase(LowerCase('LA  INCAPACIDAD NO PUEDE  TENER  MAS  DE 3 AÑOS de Expedicion')));
         LIMPIAR;
         END
end;
procedure TFRMINCAPACIDADES.cbtipodocempresaExit(Sender: TObject);
begin
if cbtipodocempresa.Text = '' then
begin
//ShowMessage(LowerCase(' Seleccione  el tipo de Documento de la Empresa'));
cbtipodocempresa.SetFocus;
exit;
end;

end;

procedure TFRMINCAPACIDADES.cbtipodocafiliadoExit(Sender: TObject);
begin
if cbtipodocafiliado.Text = '' then
begin
ShowMessage(LowerCase(' Seleccione  el tipo de Documento del Afiliado'));
cbtipodocafiliado.SetFocus;
exit;
end;
end;

procedure TFRMINCAPACIDADES.Edit1Exit(Sender: TObject);
  VAR  I : INTEGER;
begin
Edit1.TEXT :=FLOATTOSTR(STRTOINT(Edit1.TEXT));
if  Edit1.Text= '0' then
  begin
          SHOWMESSAGE(LowerCase('Digite  el  numero  de la incapacidad  anterior '));
          Edit1.SETFOCUS;
          EXIT;
 END;

if  Edit1.Text > '0' then
  begin
     IF RGTIPOINCAPACIDAD.ITEMINDEX <= 1 THEN
     BEGIN
     DATAMODULE1.QRYINCAPACIDADES.CLOSE;
     DATAMODULE1.QRYINCAPACIDADES.SQL.CLEAR;
     DATAMODULE1.QRYINCAPACIDADES.SQL.ADD('SELECT * FROM INCAPACIDADES WHERE NUM_INCAPACIDAD = :"NUMERO" AND  AFI_TIPO_DOC = :"TIPO" AND AFI_NUMERO_DOC = :"DOCUMENTO" AND TIP_INCAPACIDAD <> :"TIP" AND FEC_TERMINACION >= :"FECHAINI" AND FEC_TERMINACION <= :"FECHAFINAL"');
     DATAMODULE1.QRYINCAPACIDADES.Parameters[0].VALUE := TRIM(Edit1.TEXT);
     DATAMODULE1.QRYINCAPACIDADES.Parameters[1].VALUE := CBTIPODOCAFILIADO.TEXT;
     DATAMODULE1.QRYINCAPACIDADES.Parameters[2].VALUE := TRIM(EDTNUMDOCAFILIADOIN.TEXT);
     DATAMODULE1.QRYINCAPACIDADES.Parameters[3].VALUE := 'MAT';
     DATAMODULE1.QRYINCAPACIDADES.Parameters[4].VALUE := (DTPFECINICIACION.DATE -30);
     DATAMODULE1.QRYINCAPACIDADES.Parameters[5].VALUE := (DTPFECINICIACION.DATE);
     DATAMODULE1.QRYINCAPACIDADES.OPEN;
         IF DATAMODULE1.QRYINCAPACIDADES.RECORDCOUNT > 0 THEN
         BEGIN
          IF DATAMODULE1.QRYINCAPACIDADESPRO_INCAPACIDAD.VALUE = 'N' THEN
          BEGIN
           SHOWMESSAGE(LowerCase('ESTA  INCAPACIDAD ES  UNA  PRORROGA  DE LA INCAPACIDAD  NO. :'+ (DATAMODULE1.QRYINCAPACIDADESNUM_INCAPACIDAD.VALUE) +' QUE NO ES UNA PRORROGA'));
           Edit2.TEXT :=  FloatToStr(strtofloat(DATAMODULE1.qryincapacidadesTOT_DIAS_PRORROGA.Value) + STRTOFLOAT(edtdiasincapacidad.TEXT));
           END
          ELSE
          SHOWMESSAGE(LowerCase('ESTA  INCAPACIDAD ES  UNA  PRORROGA  DE LA INCAPACIDAD  NO. : '+ (DATAMODULE1.QRYINCAPACIDADESNUM_INCAPACIDAD.VALUE)+ ' QUE  ES UNA PRORROGA'));
          Edit2.TEXT :=  FloatToStr(strtofloat(DATAMODULE1.qryincapacidadesTOT_DIAS_PRORROGA.Value) + STRTOFLOAT(edtdiasincapacidad.TEXT));
          END
         ELSE IF DATAMODULE1.QRYINCAPACIDADES.RECORDCOUNT = 0 THEN
         BEGIN
          CHPRORROGA.CHECKED := FALSE;
          Edit1.Color := cl3DLight;
          Edit1.Text := '0';
          Edit1.Enabled := false;
          edtcodprestador.SetFocus;

         END;
     END;

  end
  else



end;

procedure TFRMINCAPACIDADES.chprorrogaClick(Sender: TObject);
begin
    if  chprorroga.Checked = true then
    begin
        IF MESSAGEDLG (LowerCase(' Esta  Seguro  que está incapacidad es una  Prorroga  de otra Incapacidad ?'), mtConfirmation, [MBYES, MBNO], 0) = MRYES THEN
        BEGIN
        Edit1.Color := clMoneyGreen;
        Edit1.Enabled := true;
        edtdiasliquidados.TEXT := edtdiasincapacidad.TEXT;
        Edit1.SetFocus;
        end
        else
        begin
        Edit1.Color := cl3DLight;
        Edit1.Text := '0';
        Edit2.Text := edtdiasincapacidad.TEXT;
        Edit1.Enabled := false;
        edtdiasliquidados.TEXT := FLOATTOSTR(STRTOFLOAT(edtdiasincapacidad.TEXT)-3);
        edtcodprestador.SetFocus;
        end;
  end
  else
  begin
  Edit1.Color := cl3DLight;
  Edit1.Text := '0';
  Edit1.Enabled := false;
  edtcodprestador.SetFocus;
  end;
end;

procedure TFRMINCAPACIDADES.btneliminarClick(Sender: TObject);
begin
 if Edtnumero.Text > '0' then
 begin
 IF MESSAGEDLG (LowerCase(' REALMENTE  QUIERE BORRAR LA INCAPACIDAD ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
  BEGIN
   // borra  el detalle  de  la  Incapacidad
        DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
        DATAMODULE1.QRYDETINCAPACIDAD.SQL.CLEAR;
        DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('DELETE  FROM DET_INCAPACIDAD WHERE NUM_INCAPACIDAD =  :"INCPA"');
        DATAMODULE1.QRYDETINCAPACIDAD.Parameters[0].VALUE := EDTNUMERO.TEXT;
        DATAMODULE1.QRYDETINCAPACIDAD.ExecSQL;
        DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
     // borra el encabezado
        DATAMODULE1.QRYINCAPACIDADES.CLOSE;
        DATAMODULE1.QRYINCAPACIDADES.SQL.CLEAR;
        DATAMODULE1.QRYINCAPACIDADES.SQL.ADD('DELETE  FROM INCAPACIDADES WHERE NUM_INCAPACIDAD =  :"INCPA"');
        DATAMODULE1.QRYINCAPACIDADES.Parameters[0].VALUE := EDTNUMERO.TEXT;
        DATAMODULE1.QRYINCAPACIDADES.ExecSQL;
        DATAMODULE1.QRYINCAPACIDADES.CLOSE;

       END;
      END;

        end;

procedure TFRMINCAPACIDADES.Button4Click(Sender: TObject);
begin
GLPROCESO := 'INCAPACIDADES';
FRMPRINCIPAL.SB.PANELS[1].TEXT := 'PROCESO ABIERTO ACTUAL  :'+ GLPROCESO;
FRMEMPRESAS:=TFRMEMPRESAS.CREATE(APPLICATION);
TRY
FRMEMPRESAS.Caption:='Empresas con Afiliados en SALUDVIDA EPS';
FRMEMPRESAS.SHOW;
//FINALLY
EXCEPT
FRMEMPRESAS.FREE;
END;

end;

procedure TFRMINCAPACIDADES.Button5Click(Sender: TObject);
begin
GLPROCESO := 'INCAPACIDADES';
FRMPRINCIPAL.SB.PANELS[1].TEXT := 'PROCESO ABIERTO ACTUAL  :'+ GLPROCESO;

FRMAFILIADOS:=TFRMAFILIADOS.CREATE(APPLICATION);
TRY
FRMAFILIADOS.Caption:='Afiliados Activos en la Empresa';
FRMAFILIADOS.SHOW;
//FINALLY
EXCEPT
FRMAFILIADOS.FREE;

END;

end;

procedure TFRMINCAPACIDADES.FormActivate(Sender: TObject);
begin
WindowState := wsNormal;
top := 0;
Left := 0;
end;

procedure TFRMINCAPACIDADES.Button7Click(Sender: TObject);
begin
FRMPRESTADORES:=TFRMPRESTADORES.CREATE(APPLICATION);
TRY
FRMPRESTADORES.Caption:='Prestadores de Salud';
FRMPRESTADORES.SHOW;
//FINALLY
EXCEPT
FRMPRESTADORES.FREE;
END;

end;

procedure TFRMINCAPACIDADES.Button6Click(Sender: TObject);
begin
PANTALLA:='Diagnósticos';
FRMDIAGNOSTICOS:=TFRMDIAGNOSTICOS.CREATE(APPLICATION);
TRY
FRMDIAGNOSTICOS.Caption:='Diagnósticos';
FRMDIAGNOSTICOS.SHOW;
//FINALLY
EXCEPT
FRMDIAGNOSTICOS.FREE;
end;
end;

procedure TFRMINCAPACIDADES.imprimir_incapacidad;
var i: integer;
valor1:string;
valor2:integer;

begin
//frmcertincapacidades:=Tfrmcertincapacidades.create(application);
//   try
   //********************************
                qrycartapresentacion.Close;
                qrycartapresentacion.Parameters[0].Value:= Edtnumero.Text;
                qrycartapresentacion.Open;
                Application.CreateForm(Tfrmcartaincapacidad, frmcartaincapacidad);
                frmcartaincapacidad.QRlabel1.Caption:='Bogotá, ' + FECHA;
                frmcartaincapacidad.QRLabel5.Caption:=trim(qrycartapresentacionNOM_EMPRESA.Value);
                frmcartaincapacidad.QRLabel6.Caption:=trim(qrycartapresentacionTIP_DOCEMPRESA.Value);
                frmcartaincapacidad.QRLabel33.Caption:=trim(qrycartapresentacionNUM_DOCEMPRESA.Value);
                frmcartaincapacidad.qrlabel7.Caption:= trim(qrycartapresentacionDIR_EMPRESA.Value);
                //frmcartaincapacidad.QRLabel8.Caption:=trim(qrycartapresentacionNOM_ciudad.Value);
                //frmcartaincapacidad.QRLabel2.Caption:=trim(qrycartapresentacionNOM_DEPARTAMENTO.Value);
                frmcartaincapacidad.QRLabel12.Caption:= qrycartapresentacionNUM_INCAPACIDAD.Value;
                frmcartaincapacidad.QRLabel14.Caption:= qrycartapresentacionDIA_INCAPACIDAD.Value;
                frmcartaincapacidad.QRLabel16.Caption:= datetostr(qrycartapresentacionFEC_INICIO.Value);
                frmcartaincapacidad.QRLabel18.Caption:= datetostr(qrycartapresentacionFEC_TERMINACION.Value);
                frmcartaincapacidad.QRLabel20.Caption:=trim(qrycartapresentacionPRI_NOMBRE.Value)+ '  '+ trim(qrycartapresentacionSEG_NOMBRE.Value)+'  '+trim(qrycartapresentacionPRI_APELLIDO.Value)+'  '+trim(qrycartapresentacionSEG_APELLIDO.Value);
                frmcartaincapacidad.QRLabel22.Caption:= trim(qrycartapresentacionAFI_TIPO_DOC.Value);
                frmcartaincapacidad.QRLabel23.Caption:=trim(qrycartapresentacionAFI_NUMERO_DOC.Value);

                //frmcartaincapacidad.QRLabel25.Caption:= floattostr(qrycartapresentacionVAL_INCAPACIDAD.Value);
                //***********************
                frmcartaincapacidad.qrycartapresentacion.Close;
                frmcartaincapacidad.qrycartapresentacion.Parameters[0].Value:= Edtnumero.Text;
                frmcartaincapacidad.qrycartapresentacion.Open;
                //***********************
                valor1:=floattostr(qrycartapresentacionVAL_INCAPACIDAD.Value);
                valor2:=strtoint(valor1);
                frmcartaincapacidad.QRLabel9.Caption:= '(' + FRMINCAPACIDADES.xIntToLletres(valor2)+' PESOS M/LEGAL)';
                frmcartaincapacidad.QuickRep1.Preview;
          //para certificado de incapacidad
              Application.CreateForm(Tfrmcertificado_incapa, frmcertificado_incapa);
              frmcertificado_incapa.QRLabel47.Caption:=qrycartapresentacionCOD_OFICINA.Value;
              frmcertificado_incapa.QRLabel15.Caption:= trim(qrycartapresentacionPRI_APELLIDO.Value);
              frmcertificado_incapa.QRLabel49.Caption:= trim(qrycartapresentacionSEG_APELLIDO.Value);
              frmcertificado_incapa.QRLabel50.Caption:= trim(qrycartapresentacionPRI_NOMBRE.Value)+ ' '+ trim(qrycartapresentacionSEG_NOMBRE.Value);
              frmcertificado_incapa.QRLabel51.Caption:= trim(qrycartapresentacionAFI_TIPO_DOC.Value);
              frmcertificado_incapa.QRLabel52.Caption:= trim(qrycartapresentacionAFI_NUMERO_DOC.Value);
              frmcertificado_incapa.QRLabel53.Caption:= trim(qrycartapresentacionNOM_EMPRESA.Value);
              frmcertificado_incapa.QRLabel54.Caption:= trim(qrycartapresentacionNUM_DOCEMPRESA.Value);
              frmcertificado_incapa.QRLabel55.Caption:= qrycartapresentacionTEL_EMPRESA.Value;
              frmcertificado_incapa.QRLabel56.Caption:= qrycartapresentacionCOD_DIAGNOSTICO.Value;
              frmcertificado_incapa.QRLabel57.Caption:= datetostr(qrycartapresentacionFEC_INICIO.Value);
              frmcertificado_incapa.QRLabel58.Caption:= qrycartapresentacionDIA_INCAPACIDAD.Value;
              valor2:=strtoint(qrycartapresentacionDIA_INCAPACIDAD.Value);
              frmcertificado_incapa.QRLabel59.Caption:=FRMINCAPACIDADES.xIntToLletres(valor2);
              frmcertificado_incapa.QRLabel62.Caption:= qrycartapresentacionPRO_INCAPACIDAD.Value;
              //frmcertificado_incapa.QRLabel64.Caption:= FORMAT('%10.0m',[strtofloat(edtsalariobase.Text)]);
              frmcertificado_incapa.QRLabel64.Caption:= FORMAT('%10.0m',[strtofloat(edtPROLIQUIDACION.Text)]);
              frmcertificado_incapa.QRLabel65.Caption:=qrycartapresentacionDIA_INCAPACIDAD.Value;
              frmcertificado_incapa.QRLabel66.Caption:= FORMAT('%10.0m',[strtofloat(edtvalorliquidado.Text)]);
              frmcertificado_incapa.QRLabel48.Caption:= trim(edtnumero.Text);

              if qrycartapresentacionPRO_INCAPACIDAD.Value = 'S' THEN
              BEGIN
                buscarprorroga.Close;
                buscarprorroga.Parameters[0].Value:=cbtipodocafiliado.Text;
                buscarprorroga.Parameters[1].Value:=edtnumdocafiliadoin.Text;
                buscarprorroga.Parameters[2].Value:= edtcoddiagnostico.Text;
                buscarprorroga.Open;
                frmcertificado_incapa.QRLabel60.Caption:=buscarprorrogaNUM_INCAPACIDAD.Value;
               END
               ELSE
                 BEGIN
                  frmcertificado_incapa.QRLabel60.Caption:= '';
                  END;
              FRMcertificado_incapa.QRLabel61.Caption:=edtnombreprestador.Text;
              FRMcertificado_incapa.QRLabel63.Caption:=edtcodprestador.Text;
              valor2:=strtoint(edtvalorliquidado.Text);
              frmcertificado_incapa.QRLabel67.Caption:= FRMINCAPACIDADES.xIntToLletres(valor2)+'PESOS M/LEGAL';;

              if  qrycartapresentacionTIP_INCAPACIDAD.Value='EGA'   then
                 begin
                  frmcertificado_incapa.qrlabel68.caption := 'x';
                  frmcertificado_incapa.qrlabel69.caption := '';
                  frmcertificado_incapa.qrlabel70.caption := '';
                  frmcertificado_incapa.qrlabel71.caption := '';
                  frmcertificado_incapa.qrlabel72.caption := '';
                  frmcertificado_incapa.qrlabel73.caption := '';
                 end;
              if  qrycartapresentacionTIP_INCAPACIDAD.Value='EGH'   then
                 begin
                  frmcertificado_incapa.qrlabel68.caption := '';
                  frmcertificado_incapa.qrlabel69.caption := 'X';
                  frmcertificado_incapa.qrlabel70.caption := '';
                  frmcertificado_incapa.qrlabel71.caption := '';
                  frmcertificado_incapa.qrlabel72.caption := '';
                  frmcertificado_incapa.qrlabel73.caption := '';
                 end;
            if  qrycartapresentacionTIP_INCAPACIDAD.Value='MAT'   then
                 begin
                  frmcertificado_incapa.qrlabel68.caption := '';
                  frmcertificado_incapa.qrlabel69.caption := '';
                  frmcertificado_incapa.qrlabel70.caption := 'X';
                  frmcertificado_incapa.qrlabel71.caption := '';
                  frmcertificado_incapa.qrlabel72.caption := '';
                  frmcertificado_incapa.qrlabel73.caption := '';
                 end;
           if  qrycartapresentacionTIP_INCAPACIDAD.Value='MAP'   then
                 begin
                  frmcertificado_incapa.qrlabel68.caption := '';
                  frmcertificado_incapa.qrlabel69.caption := '';
                  frmcertificado_incapa.qrlabel70.caption := '';
                  frmcertificado_incapa.qrlabel71.caption := 'X';
                  frmcertificado_incapa.qrlabel72.caption := '';
                  frmcertificado_incapa.qrlabel73.caption := '';
                 end;
            if  qrycartapresentacionTIP_INCAPACIDAD.Value='ARP'   then
                 begin
                  frmcertificado_incapa.qrlabel68.caption := '';
                  frmcertificado_incapa.qrlabel69.caption := '';
                  frmcertificado_incapa.qrlabel70.caption := '';
                  frmcertificado_incapa.qrlabel71.caption := '';
                  frmcertificado_incapa.qrlabel72.caption := 'X';
                  frmcertificado_incapa.qrlabel73.caption := '';
                 end;
        if  qrycartapresentacionTIP_INCAPACIDAD.Value='SOAT'   then
                 begin
                  frmcertificado_incapa.qrlabel68.caption := '';
                  frmcertificado_incapa.qrlabel69.caption := '';
                  frmcertificado_incapa.qrlabel70.caption := '';
                  frmcertificado_incapa.qrlabel71.caption := '';
                  frmcertificado_incapa.qrlabel72.caption := '';
                  frmcertificado_incapa.qrlabel73.caption := 'X';
                 end;

              //********************
                //  valores a  pagar
             FOR I := 1 TO SGDETALLEINC.ROWCOUNT - 1 DO
             BEGIN
                if (i = 1) and (TRIM(SGDETALLEINC.CELLS[0,I]) <> '') then
                 begin
                        frmcertificado_incapa.qryperiodo1.Caption := TRIM(COPY(SGDETALLEINC.CELLS[0,I],4,10));
                        frmcertificado_incapa.qryvalperiodo1.Caption := FORMAT('%8.0m',[strtofloat(TRIM(SGDETALLEINC.CELLS[2,I]))]);
                        frmcertificado_incapa.qryperiodo2.Caption := '';
                        frmcertificado_incapa.qryvalperiodo2.Caption := '';
                        frmcertificado_incapa.qryperiodo3.Caption := '';
                        frmcertificado_incapa.qryvalperiodo3.Caption := '';
                        frmcertificado_incapa.qryperiodo4.Caption := '';
                        frmcertificado_incapa.qryvalperiodo4.Caption := '';
                  end;

                  if (i = 2) and (TRIM(SGDETALLEINC.CELLS[0,I]) <> '') then
                 begin
                        frmcertificado_incapa.qryperiodo2.Caption := TRIM(COPY(SGDETALLEINC.CELLS[0,I],4,10));
                        frmcertificado_incapa.qryvalperiodo2.Caption := FORMAT('%8.0m',[strtofloat(TRIM(SGDETALLEINC.CELLS[2,I]))]);
                        frmcertificado_incapa.qryperiodo3.Caption := '';
                        frmcertificado_incapa.qryvalperiodo3.Caption := '';
                        frmcertificado_incapa.qryperiodo4.Caption := '';
                        frmcertificado_incapa.qryvalperiodo4.Caption := '';
                  end;

                  if (i = 3) and (TRIM(SGDETALLEINC.CELLS[0,I]) <> '') then
                 begin
                        frmcertificado_incapa.qryperiodo3.Caption := TRIM(COPY(SGDETALLEINC.CELLS[0,I],4,10));
                        frmcertificado_incapa.qryvalperiodo3.Caption := FORMAT('%8.0m',[strtofloat(TRIM(SGDETALLEINC.CELLS[2,I]))]);
                        frmcertificado_incapa.qryperiodo4.Caption := '';
                        frmcertificado_incapa.qryvalperiodo4.Caption := '';
                  end;

                 if (i = 4) and (TRIM(SGDETALLEINC.CELLS[0,I]) <> '') then
                 begin
                        frmcertificado_incapa.qryperiodo4.Caption := TRIM(COPY(SGDETALLEINC.CELLS[0,I],4,10));
                        frmcertificado_incapa.qryvalperiodo4.Caption := FORMAT('%8.0m',[strtofloat(TRIM(SGDETALLEINC.CELLS[2,I]))]);

                  end;
                  //arp
                  if  TRIM(SGDETALLEINC.CELLS[0,1]) = '' then
                  begin
                         frmcertificado_incapa.qryvalperiodo1.Caption:='';
                         frmcertificado_incapa.qryvalperiodo2.Caption:='';
                         frmcertificado_incapa.qryvalperiodo3.Caption:='';
                         frmcertificado_incapa.qryvalperiodo4.Caption:='';
                  end


      end;

              //*******************
              {qrydetalle.Close;
              qrydetalle.Parameters[0].Value:= Edtnumero.Text;
              qrydetalle.Open;
              while not qrydetalle.Eof do
              begin
                 if qrydetalle.RecordCount = 1 then
                  frmcertificado_incapa.QRLabel31.Caption:= DATETOSTR(QRYDETALLEPER_PAGO_INCAP.Value)
                 else
                   frmcertificado_incapa.QRLabel31.Caption:= '';
                 if qrydetalle.RecordCount = 2  then
                    frmcertificado_incapa.QRLabel74.Caption:= DATETOSTR(QRYDETALLEPER_PAGO_INCAP.Value)
                 else
                   frmcertificado_incapa.QRLabel74.Caption:= '';
                 if qrydetalle.RecordCount = 3  then
                    frmcertificado_incapa.QRLabel75.Caption:= DATETOSTR(QRYDETALLEPER_PAGO_INCAP.Value)
                 else
                    frmcertificado_incapa.QRLabel75.Caption:= '';
                 if qrydetalle.RecordCount = 4  then
                    frmcertificado_incapa.QRLabel76.Caption:= DATETOSTR(QRYDETALLEPER_PAGO_INCAP.Value)
                 else
                    frmcertificado_incapa.QRLabel76.Caption:= '';
              qrydetalle.Next;
            end;}
              frmcertificado_incapa.QuickRep1.Preview;

   //********************************
    {if frmcertincapacidades.QuickRep1 <> nil then
    begin
//    frmcertincapacidades.qrnumero.Caption := Edtnumero.Text;
    if rgtipoincapacidad.ItemIndex = 0 then
      begin
        frmcertincapacidades.qrambu.Caption := 'X';
        frmcertincapacidades.qrhosp.Caption := '';
        frmcertincapacidades.qrmaternidad.Caption := '';
        frmcertincapacidades.qrpaternidad.Caption := '';
        {frmcertincapacidades.qrarp.Caption := '';
        frmcertincapacidades.qrsoat.Caption := '';}
     { end
      else
      if rgtipoincapacidad.ItemIndex = 1 then
       begin
        frmcertincapacidades.qrambu.Caption := '';
        frmcertincapacidades.qrhosp.Caption := 'X';
        frmcertincapacidades.qrmaternidad.Caption := '';
        frmcertincapacidades.qrpaternidad.Caption := '';
        {frmcertincapacidades.qrarp.Caption := '';
        frmcertincapacidades.qrsoat.Caption := '';}
      {end
      else
      if rgtipoincapacidad.ItemIndex = 2 then
        begin
        frmcertincapacidades.qrambu.Caption := '';
        frmcertincapacidades.qrhosp.Caption := '';
        frmcertincapacidades.qrmaternidad.Caption := 'X';
        frmcertincapacidades.qrpaternidad.Caption := '';
        {frmcertincapacidades.qrarp.Caption := '';
        frmcertincapacidades.qrsoat.Caption := '';}
      {end;
      if rgtipoincapacidad.ItemIndex = 3 then
        begin
        frmcertincapacidades.qrambu.Caption := '';
        frmcertincapacidades.qrhosp.Caption := '';
        frmcertincapacidades.qrmaternidad.Caption := '';
        frmcertincapacidades.qrpaternidad.Caption := 'X';
        {frmcertincapacidades.qrarp.Caption := '';
        frmcertincapacidades.qrsoat.Caption := '';}
      {end;
      {if rgtipoincapacidad.ItemIndex = 4 then
        begin
        frmcertincapacidades.qrambu.Caption := '';
        frmcertincapacidades.qrhosp.Caption := '';
        frmcertincapacidades.qrmaternidad.Caption := '';
        frmcertincapacidades.qrpaternidad.Caption := '';
        frmcertincapacidades.qrarp.Caption := 'X';
        frmcertincapacidades.qrsoat.Caption := '';
      end;
       if rgtipoincapacidad.ItemIndex = 5 then
        begin
        frmcertincapacidades.qrambu.Caption := '';
        frmcertincapacidades.qrhosp.Caption := '';
        frmcertincapacidades.qrmaternidad.Caption := '';
        frmcertincapacidades.qrpaternidad.Caption := '';
        frmcertincapacidades.qrarp.Caption := '';
        frmcertincapacidades.qrsoat.Caption := 'X';
      end; }

    {frmcertincapacidades.qrape1.Caption := ape1;
    frmcertincapacidades.qrape2.Caption := ape2;
    frmcertincapacidades.qrnom1.Caption := nom1;
    frmcertincapacidades.qrnom2.Caption := nom2;
    frmcertincapacidades.tipdocumento.Caption := cbtipodocafiliado.Text;
    frmcertincapacidades.numdocumento.Caption := edtnumdocafiliadoin.Text;
    frmcertincapacidades.qrfecha.Caption := datetostr(dtpfecexpedicion.date);
    frmcertincapacidades.qrnombreempresa.Caption := edtnombreempresa.text;
    frmcertincapacidades.qrtipdocempresa.Caption := cbtipodocempresa.Text;
    frmcertincapacidades.qrnumdocempresa.Caption := edtnumdocempresa.Text;
    frmcertincapacidades.qrdignostico.Caption := edtcoddiagnostico.Text;
    frmcertincapacidades.qrfechainicio.Caption := datetostr(dtpfeciniciacion.date);
    frmcertincapacidades.qrdiasletras.Caption := valorletradias.Text;
    frmcertincapacidades.qrnumeros.Caption := edtdiasincapacidad.Text;
      if chprorroga.Checked = true then
      begin
        frmcertincapacidades.qrnumprorroga.Caption := Edit1.Text;
        frmcertincapacidades.qrsiprorroga.Caption := 'X';
        frmcertincapacidades.qrynoprorroga.Caption := '';
      end
      else
      begin
        frmcertincapacidades.qrynoprorroga.Caption := 'X';
        frmcertincapacidades.qrsiprorroga.Caption := '';
        frmcertincapacidades.qrnumprorroga.Caption := Edit1.Text;
      end;
    frmcertincapacidades.qrnommedico.Caption := edtnombreprestador.Text;
    frmcertincapacidades.qrcodigo.Caption := edtcodprestador.Text;
    frmcertincapacidades.qrsalariobase.Caption := edtproliquidacion.Text;
    frmcertincapacidades.qrdiasl.Caption := edtdiasliquidados.Text;
    frmcertincapacidades.qrvalorincapacidad.Caption := edtvalorliquidado.Text;
    frmcertincapacidades.qrydiasletras.Caption := FRMPRINCIPAL.pasarletras(StrToInt64(edtdiasliquidados.text));

    //  valores a  pagar
      FOR I := 1 TO SGDETALLEINC.ROWCOUNT - 1 DO
       BEGIN
                if (i = 1) and (TRIM(SGDETALLEINC.CELLS[0,I]) <> '') then
                 begin
                        frmcertincapacidades.qrperiodo1.Caption := TRIM(COPY(SGDETALLEINC.CELLS[0,I],4,10));
                        frmcertincapacidades.qrpervalor1.Caption := TRIM(SGDETALLEINC.CELLS[2,I]);
                        frmcertincapacidades.qrperiodo2.Caption := '';
                        frmcertincapacidades.qrvalperiodo2.Caption := '';
                        frmcertincapacidades.qrperiodo3.Caption := '';
                        frmcertincapacidades.qrvalperiodo3.Caption := '';
                        frmcertincapacidades.qrperiodo4.Caption := '';
                        frmcertincapacidades.qrvalperiodo4.Caption := '';
                  end;
                  if (i = 2) and (TRIM(SGDETALLEINC.CELLS[0,I]) <> '') then
                 begin
                        frmcertincapacidades.qrperiodo2.Caption := TRIM(COPY(SGDETALLEINC.CELLS[0,I],4,10));
                        frmcertincapacidades.qrvalperiodo2.Caption := TRIM(SGDETALLEINC.CELLS[2,I]);
                        frmcertincapacidades.qrperiodo3.Caption := '';
                        frmcertincapacidades.qrvalperiodo3.Caption := '';
                        frmcertincapacidades.qrperiodo4.Caption := '';
                        frmcertincapacidades.qrvalperiodo4.Caption := '';
                  end;
                  if (i = 3) and (TRIM(SGDETALLEINC.CELLS[0,I]) <> '') then
                 begin
                        frmcertincapacidades.qrperiodo3.Caption := TRIM(COPY(SGDETALLEINC.CELLS[0,I],4,10));
                        frmcertincapacidades.qrvalperiodo3.Caption := TRIM(SGDETALLEINC.CELLS[2,I]);
                        frmcertincapacidades.qrperiodo4.Caption := '';
                        frmcertincapacidades.qrvalperiodo4.Caption := '';
                  end;
                  if (i = 4) and (TRIM(SGDETALLEINC.CELLS[0,I]) <> '') then
                 begin
                        frmcertincapacidades.qrperiodo4.Caption := TRIM(COPY(SGDETALLEINC.CELLS[0,I],4,10));
                        frmcertincapacidades.qrvalperiodo4.Caption := TRIM(SGDETALLEINC.CELLS[2,I]);

                  end;
      end;


    frmcertincapacidades.QuickRep1.preview
    end;
   //finally
   except
      frmcertincapacidades.Free;
   end;*****************}
end;

procedure TFRMINCAPACIDADES.Edit3Exit(Sender: TObject);
begin
if  trim(Edit3.Text) <> '' then
begin
     Edit3.TEXT :=FLOATTOSTR(STRTOINT(Edit3.TEXT));
     DATAMODULE1.QRYINCAPACIDADES.CLOSE;
     DATAMODULE1.QRYINCAPACIDADES.SQL.CLEAR;
     DATAMODULE1.QRYINCAPACIDADES.SQL.ADD('SELECT * FROM INCAPACIDADES WHERE NUM_RECEPCION = :"INCAPACIDAD"');
     DATAMODULE1.QRYINCAPACIDADES.Parameters[0].VALUE := trim(Edit3.TEXT);
     DATAMODULE1.QRYINCAPACIDADES.OPEN;
	IF DATAMODULE1.QRYINCAPACIDADES.RECORDCOUNT = 1 THEN
	BEGIN
	SHOWMESSAGE(LowerCase('EL NUMERO DE  Remision  YA  FUE DIGITADA con la  incapacidad  ' + DATAMODULE1.qryincapacidadesNUM_INCAPACIDAD.Value + ' fecha de  inicio ' + DATETOSTR(DATAMODULE1.QRYINCAPACIDADESFEC_INICIO.VALUE)));
        Edit3.TEXT := '';
        Edtnumero.enabled := true;
        Edtnumero.setfocus;

	end
        else
        begin
        rgtipoincapacidad.SetFocus;
        end;
end;
end;

procedure TFRMINCAPACIDADES.Edit3Enter(Sender: TObject);
begin
	IF trim(Edtnumero.TEXT) = '' THEN
	BEGIN
	SHOWMESSAGE(LowerCase('Debe  digitar  el numero de  incapacidad'));
	END;

end;

PROCEDURE TFRMINCAPACIDADES.DIASINCAPACIDADPAT;
  VAR
    DOCBEN:STRING;
  BEGIN
  frmincapacidades_paternidad:= TFRMINCAPACIDADES_PATERNIDAD.Create(APPLICATION);
  TRY
  frmincapacidades_paternidad.Show;
  EXCEPT
  frmincapacidades_paternidad.Free;
  END
END;


PROCEDURE TFRMINCAPACIDADES.PAGOSININTERRUMPIDOS;
 VAR
 I,J,MESDEF:INTEGER;
 M,AN,MES,YEAR:STRING;
 SIG,EXPR1,EXPR2:BOOLEAN;
 A:ARRAY [1..12,1..2] OF STRING;
BEGIN

DATAMODULE1.qrypagoininterrumpido.Close;
DATAMODULE1.qrypagoininterrumpido.SQL.Clear;
DATAMODULE1.qrypagoininterrumpido.SQL.Add('SELECT TOP 12 * FROM AUTOLIQUIDACION WHERE EMP_NUMERO_DOC= :DOCEMPRESA ORDER BY SUBSTRING(PER_PRESENTACION,3,4)DESC,SUBSTRING(PER_PRESENTACION,1,2) DESC');
DATAMODULE1.qrypagoininterrumpido.Parameters[0].Value:=TRIM(EDTNUMDOCEMPRESA.Text);
DATAMODULE1.qrypagoininterrumpido.ExecSQL;
DATAMODULE1.qrypagoininterrumpido.Open;
I:= 1;

WHILE NOT DATAMODULE1.qrypagoininterrumpido.Eof DO
BEGIN
A[I,1]:=DATAMODULE1.qrypagoininterrumpido.FieldValues['PER_PRESENTACION'];
A[I,2]:=DATAMODULE1.qrypagoininterrumpido.FieldValues['PER_PRESENTACION'];
M:=A[I,1];
AN:=A[I,2];
A[I,1]:=M[1]+M[2];
A[I,2]:=AN[3]+AN[4]+AN[5]+AN[6];
DATAMODULE1.qrypagoininterrumpido.Next;
I:=I+1;
END;

IF A[1,1]= GLDATE[4] + GLDATE[5] THEN
MESDEF:=0  //** PAGO AL DIA
ELSE
MESDEF:=1; //** ESPERA 1 MES
SIG:=TRUE;
I:=1;J:=1;

//***************
YEAR:=GLDATE[7] + GLDATE[8]+GLDATE[9]+GLDATE[10];
//***************

//PAGO ININTERRUMPIDO POR 2 MESES
WHILE ((I < 3) AND (SIG)) DO
BEGIN
MES :=GLDATE[4] + GLDATE[5];
MES:=IntToStr(STRTOINT(MES)-MESDEF);
IF StrtoInt(MES) = 0 THEN //CASO PRIMERO DE ENERO
BEGIN
 MES :='12'; YEAR := INTTOSTR(STRTOINT(YEAR)-1);
END;
IF STRTOINT(MES)<10 THEN
MES:='0' + MES;
IF (MES=A[I,J]) AND (YEAR=A[I,J+1]) THEN
BEGIN
I:=I+1;
MESDEF:=MESDEF+1;
END
ELSE
BEGIN
SIG:=FALSE;
END;
IF NOT SIG THEN
BEGIN
SHOWMESSAGE(Lowercase('LA EMPRESA NO CUMPLE CON PAGOS ININTERRUMPIDOS EN LOS ULTIMOS APORTES'));
FRMINCAPACIDADES.EDTNOMBREEMPRESA.Text:='';
FRMINCAPACIDADES.cbtipodocempresa.Text:='';
FRMINCAPACIDADES.edtnumdocempresa.Text:='';
FRMINCAPACIDADES.cbtipodocempresa.SetFocus;
END;
END;  //END WHILE
END;  //PAGOSININTERRUMPIDO

PROCEDURE TFRMINCAPACIDADES.CUATROSEMANASAFILIACION;
BEGIN
         DATAMODULE1.qryafil4sem.close;
         DATAMODULE1.qryafil4sem.Parameters[0].value:= TRIM(edtnumdocafiliadoin.Text);
         DATAMODULE1.qryafil4sem.Open;
                IF DATAMODULE1.qryafil4sem.RecordCount  > 0 THEN
                BEGIN
                   SHOWMESSAGE(LowerCase(' USUARIO NO CUMPLE CON 4 SEMANAS DE AFILIACION A LA EPS'));
                   EDTNOMBREAFILIADO.Text:='';
                   EDTEDAD.Text:='';
                   EDTSEXO.Text:='';
                   FRMINCAPACIDADES.cbtipodocafiliado.Text:='';
                   FRMINCAPACIDADES.edtnumdocafiliadoin.Text:='';
                   FRMINCAPACIDADES.cbtipodocafiliado.SetFocus;
                END;

END;  //CUATROSEMANASAFILIACION

FUNCTION TFRMINCAPACIDADES.PROMEDIOSAL:STRING;

VAR
PROM:ARRAY[1..12] OF INTEGER;
I,J:INTEGER;
PROMSAL:REAL;
//***Ordenar Vector
k, l, best_j : Integer;
best_value   : Integer;
PROMORDER:ARRAY[1..12] OF INTEGER;

BEGIN
    DATAMODULE1.qrypromsal.Close;
    DATAMODULE1.qrypromsal.Parameters[0].Value := CBTIPODOCAFILIADO.TEXT;
    DATAMODULE1.qrypromsal.Parameters[1].Value := EDTNUMDOCAFILIADOIN.TEXT;
    DATAMODULE1.qrypromsal.Open;
    J:=1;
    WHILE NOT DATAMODULE1.qrypromsal.Eof DO
    BEGIN
     IF (DATAMODULE1.qrypromsalING_BASE_COT.VALUE<>NULL) THEN
     BEGIN
       PROM[J]:= STRTOINT(DATAMODULE1.qrypromsalING_BASE_COT.Text);
       J:=J+1;
     END;
     DATAMODULE1.qrypromsal.Next;
    END;
    I:=1;
    PROMSAL:=0;
    //***************Ordenar ASCENDENTE el Vector
    FOR I:=1 TO J-1 DO
    BEGIN
        PROMORDER[I]:=PROM[I]; //Copiar el Vector
    END;
    //***********************
    l:=J;
    for k := 1 to l-1-1 do
    begin
        best_value := PROMORDER[k];
        best_j := k;
        for l := k + 1 to l-1 do
        begin
            if (PROMORDER[l] < best_value) Then
            begin
                best_value := PROMORDER[l];
                best_j := l;
            end;
        end;    // for l := k + 1 to (l-1) do
        PROMORDER[best_j] := PROMORDER[k];
        PROMORDER[k] := best_value;
    end;        // for k := 1 to (l-1) - 1 do  max l-1

    //***************
    FOR I:=1 TO (J-1) DO
    BEGIN
       PROMSAL := PROMSAL + PROM[I];
    END;
    //***************
    IF (J=1) AND (PROMSAL=0) THEN
    BEGIN
    RESULT:='0';
    END
    ELSE
    BEGIN
        //***************
        IF (1.07*PROMORDER[1]>PROMORDER[J-1]) THEN
            RESULT := FLOATTOSTR(PROM[1])
        ELSE
            RESULT := FLOATTOSTR(ROUNDTO(PROMSAL/(J-1),2));
        //***************
    END;
END;

FUNCTION TFRMINCAPACIDADES.FECHA:STRING;
VAR
MES,DIA,YEAR: STRING;
var LongMonthNames : array[1..12] of string;

BEGIN
  LongMonthNames[ 1] := 'Enero';
  LongMonthNames[ 2] := 'Febrero';
  LongMonthNames[ 3] := 'Marzo';
  LongMonthNames[ 4] := 'Abril';
  LongMonthNames[ 5] := 'Mayo';
  LongMonthNames[ 6] := 'Junio';
  LongMonthNames[ 7] := 'Julio';
  LongMonthNames[ 8] := 'Agosto';
  LongMonthNames[ 9] := 'Septiembre';
  LongMonthNames[10] := 'Octubre';
  LongMonthNames[11] := 'Noviembre';
  LongMonthNames[12] := 'Diciembre';
DIA:=COPY(GLDATE,1,2);
MES:=COPY(GLDATE,4,2);
YEAR:=COPY(GLDATE,7,4);
FECHA:=LongMonthNames[strtoint(MES)] + ' ' + DIA + ' de '+YEAR;
END;

FUNCTION TFRMINCAPACIDADES.FECHAINCAPACIDAD: STRING;

BEGIN
Datamodule1.qryfecincapacidad.Close;
Datamodule1.qryfecincapacidad.Parameters[0].Value :=trim(cbtipodocafiliado.text);
Datamodule1.qryfecincapacidad.Parameters[1].Value :=trim(edtnumdocafiliadoin.text);
Datamodule1.qryfecincapacidad.Open;
FECHAINCAPACIDAD:=datamodule1.qryfecincapacidadPER_COTIZACION.Value;
END;

procedure TFRMINCAPACIDADES.edtnombreprestadorExit(Sender: TObject);
begin
 EDTPROLIQUIDACIONEXIT(NIL);
end;

END.


