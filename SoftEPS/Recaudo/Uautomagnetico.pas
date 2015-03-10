UNIT UAUTOMAGNETICO;

INTERFACE

USES
  WINDOWS, MESSAGES, SYSUTILS, VARIANTS, CLASSES, GRAPHICS, CONTROLS, FORMS,
  DIALOGS, MENUS, COMCTRLS, GRIDS, EXTCTRLS, STDCTRLS,MATH, DBCTRLS, MASK,
  Buttons;

TYPE
  TFRMAUTOLIQUIDACIONMAGNETICA = CLASS(TFORM)
    OPABRIR: TOPENDIALOG;
    LABEL39: TLABEL;
    LABEL40: TLABEL;
    LABEL46: TLABEL;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Image1: TImage;
    Label47: TLabel;
    Label48: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    btnlimpiar: TBitBtn;
    GroupBox2: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label23: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    cbtipoideempresa: TComboBox;
    edtnumdocempresa: TEdit;
    edtsucursal: TEdit;
    edtrazonsocial: TEdit;
    edtdireccion: TEdit;
    edtcoddepartamento: TEdit;
    edtdepartamento: TEdit;
    edtcodciudad: TEdit;
    edtciudad: TEdit;
    edttelefono: TEdit;
    edtfax: TEdit;
    edtcodarp: TEdit;
    edtnombrearp: TEdit;
    edtnumcorrecion: TEdit;
    cbpresentacion: TComboBox;
    edtnumtrabajadores: TEdit;
    edtnumafiliados: TEdit;
    edtclaseaportante: TComboBox;
    edtdigito: TEdit;
    edtultimafechapago: TEdit;
    rgestado: TRadioGroup;
    edtconsecutivo: TEdit;
    edtfecharecaudo: TEdit;
    edtnumplanilla: TEdit;
    cargar_archivo: TBitBtn;
    edtnombrearchivo: TEdit;
    TabSheet2: TTabSheet;
    sgdetalle: TStringGrid;
    TabSheet3: TTabSheet;
    pbrgrabar: TProgressBar;
    btgrabarplanilla: TBitBtn;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label44: TLabel;
    Label43: TLabel;
    Label42: TLabel;
    Label41: TLabel;
    Label38: TLabel;
    Label15: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    edtingresobase: TEdit;
    edtcotizobligatoria: TEdit;
    edtvallicematernidad: TEdit;
    edtvalupc: TEdit;
    edtmincnroautorizacion: TEdit;
    edtlmbasecotizacion: TEdit;
    edtningresobasecot: TEdit;
    edtibasecotizacion: TEdit;
    edtimbasecotizacion: TEdit;
    edtsfnroplanilla: TEdit;
    edtspbasecotizacion: TEdit;
    edtspcotizobligatoria: TEdit;
    edtsfcotobligatoria: TEdit;
    edtimcotobligatoria: TEdit;
    edticotobligatoria: TEdit;
    edtncotizobligatoria: TEdit;
    edtlmcotobligatoria: TEdit;
    edtmincotizacionobligatoria: TEdit;
    edtincpacidadeg: TEdit;
    edtmincvalincapacidad: TEdit;
    edtlmvalincapacidad: TEdit;
    edtnvalincapacidad: TEdit;
    edtivalincapacidad: TEdit;
    edtimvalincapacidad: TEdit;
    edtsfvalincapacidad: TEdit;
    edtspvalincapacidad: TEdit;
    edtspvallicencia: TEdit;
    edtsfvallicencia: TEdit;
    edtimvallicencia: TEdit;
    edtivallicencia: TEdit;
    edtlnlicencia: TEdit;
    edtlmvallmaternidad: TEdit;
    edtminvallicencia: TEdit;
    edtmvalupc: TEdit;
    edtlmupc: TEdit;
    edtnvalupc: TEdit;
    edtivalupc: TEdit;
    edtimvalupc: TEdit;
    edtsfvalupc: TEdit;
    edtspvalupc: TEdit;
    TabSheet4: TTabSheet;
    Panel2: TPanel;
    sgincapacidades: TStringGrid;
    Panel3: TPanel;
    sgupc: TStringGrid;
    Label27: TLabel;
    cbtipoaporte: TComboBox;
    Label16: TLabel;
    dtfechapago: TDateTimePicker;
    Label28: TLabel;
    edtperiodo: TEdit;
    Label45: TLabel;
    mkperiodo: TMaskEdit;
    GroupBox11: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cbbanco: TDBLookupComboBox;
    EDTCUENTA: TEdit;
    edtvalefectivo: TEdit;
    edtvalcheque: TEdit;
    EDTVALORPAGADO: TEdit;
    sgdetabanco: TStringGrid;
    GroupBox4: TGroupBox;
    Label49: TLabel;
    Label50: TLabel;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    PROCEDURE FORMCREATE(SENDER: TOBJECT);
    PROCEDURE CARGARMEDIOMAGNETICO;
    PROCEDURE LIMPIAR;
    PROCEDURE CARGAR_ARCHIVOCLICK(SENDER: TOBJECT);
    PROCEDURE FORMCLOSE(SENDER: TOBJECT; VAR ACTION: TCLOSEACTION);
    PROCEDURE EDTNUMPLANILLAEXIT(SENDER: TOBJECT);
    PROCEDURE FECHAS_PAGO;
    PROCEDURE EDTVALEFECTIVOKEYPRESS(SENDER: TOBJECT; VAR KEY: CHAR);
    PROCEDURE BTNLIMPIARCLICK(SENDER: TOBJECT);
    PROCEDURE BTGRABARPLANILLACLICK(SENDER: TOBJECT);
    FUNCTION VALIDAR : BOOLEAN;
    PROCEDURE CBBANCOCLICK(SENDER: TOBJECT);
    PROCEDURE DTFECHAPAGOEXIT(SENDER: TOBJECT);
    PROCEDURE EDTNUMPLANILLACHANGE(SENDER: TOBJECT);
    PROCEDURE EDTVALEFECTIVOCHANGE(SENDER: TOBJECT);
    PROCEDURE EDTVALCHEQUECHANGE(SENDER: TOBJECT);
    PROCEDURE SALARIOMINIMO;
    PROCEDURE EDTNUMPLANILLAENTER(SENDER: TOBJECT);
    PROCEDURE CBTIPOAPORTEEXIT(SENDER: TOBJECT);
    PROCEDURE EDTPERIODOEXIT(SENDER: TOBJECT);
    PROCEDURE CERRAR1CLICK(SENDER: TOBJECT);
    PROCEDURE PAGOSPORAFILIADO1CLICK(SENDER: TOBJECT);
    PROCEDURE PAGOSPOREMPRESA1CLICK(SENDER: TOBJECT);
    PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);
    PROCEDURE RETIRAR_AFILIADOS;
    procedure edtvalefectivoExit(Sender: TObject);
    procedure edtvalchequeExit(Sender: TObject);
    procedure grabarplanilla;
    procedure sgdetabancoSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    function estado_pago( tipo,numero,dias,ingreso,modalidad :string) : string;
  PRIVATE
    { PRIVATE DECLARATIONS }


  PUBLIC
    { PUBLIC DECLARATIONS }
  END;

VAR
  FRMAUTOLIQUIDACIONMAGNETICA: TFRMAUTOLIQUIDACIONMAGNETICA;
   ESTADO_PLANILLA : STRING;
   ESTADO_USUARIO : STRING;
   INCAPACIDAD : BOOLEAN;
    UPC : BOOLEAN;
    ENCONTRO : BOOLEAN;
    EDADUPC : INTEGER;
    VALOR : REAL;
IMPLEMENTATION

USES UGLOBAL, DTMODULO, UPRINCIPAL, UCONPAGOS, UCONPAGOSE;

{$R *.DFM}

PROCEDURE TFRMAUTOLIQUIDACIONMAGNETICA.FORMCREATE(SENDER: TOBJECT);
BEGIN
APPLICATION.ONMESSAGE := APPMESSAGE;
WITH SGDETALLE DO
  BEGIN
    CELLS[0,0]:='SECUENCIA ';
    CELLS[1,0]:='TIPO';
    CELLS[2,0]:='NUMERO ';
    CELLS[3,0]:='NOMBRE USUARIO ';
    CELLS[4,0]:='ING';
    CELLS[5,0]:='RET';
    CELLS[6,0]:='TDA';
    CELLS[7,0]:='TAA';
    CELLS[8,0]:='VSP';
    CELLS[9,0]:='VST';
    CELLS[10,0]:='SLN';
    CELLS[11,0]:='IGE';
    CELLS[12,0]:='LMA';
    CELLS[13,0]:='VAC';
    CELLS[14,0]:='DIAS COTIZADOS';
    CELLS[15,0]:='SALARIO BASE';
    CELLS[16,0]:='VAL. NETO NOVEDAD';
    CELLS[17,0]:='ING. BASE COTIZACION';
    CELLS[18,0]:='COT. OBLIGATORIA';
    CELLS[19,0]:='NRO AUT. INCAPACIDAD';
    CELLS[20,0]:='VAL INCAPACIDAD EG';
    CELLS[21,0]:='NRO AUT. LICENCIA';
    CELLS[22,0]:='VAL LICENCIA';
    CELLS[23,0]:='VALOR UPC';
    CELLS[24,0]:='VALOR TOTAL';
    CELLS[25,0]:='ESTADO ';
    WITH SGINCAPACIDADES DO
          BEGIN
        CELLS[0,0]:='NUMERO';
        CELLS[1,0]:='PERIODO';
        CELLS[2,0]:='DIAS';
        CELLS[3,0]:='VALOR';
        CELLS[4,0]:='PAGO';
        CELLS[5,0]:='FECHA PAGO';
        CELLS[6,0]:='COMPROBATE';
        CELLS[7,0]:='PERIODO';
        CELLS[8,0]:='ESTADO';
        CELLS[9,0]:='DESCUENTO';

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
        CELLS[0,0]:='Cod';
        CELLS[1,0]:='Numero';
        CELLS[2,0]:='Valor';
        END;

    LIMPIAR;

    DATAMODULE1.QRYBANCOS.OPEN;
        TRY
        IF OPABRIR.EXECUTE THEN
        BEGIN
        EDTNOMBREARCHIVO.TEXT := OPABRIR.FILENAME;
        END;
        EXCEPT
        RAISE EXCEPTION.CREATE('INSERTES  EL DISCO  EN LA  UNIDAD A:\');
      END;

     END;
END;

PROCEDURE TFRMAUTOLIQUIDACIONMAGNETICA.CARGARMEDIOMAGNETICO;
VAR I,J,X,Y,Z : INTEGER;
F : TEXTFILE;
S,NUMERO,TIPO : STRING;
INCOTIZACION,COTIZAOBLIGATORIA ,VALOR : REAL;

 BEGIN
 VALOR := 0;

   IF (EDTNOMBREARCHIVO.TEXT <> '') THEN
   BEGIN
   TRY  // MANEJO DE  ERRORES
    ASSIGNFILE (F,EDTNOMBREARCHIVO.TEXT);
    RESET(F);
    I := 1;
    TRY  // MANEJO DE  ERRORES
     WHILE  NOT EOF(F) DO
      BEGIN
        READLN(F,S); // LEER ARCHIVO

        // ENCABEZADO  DEL ARCHIVO MAGNETICOS

          IF (COPY(S,1,5) = '00000') AND (COPY(S,6,1) ='1') THEN
          BEGIN
            IF COPY(S,99,1) = 'N' THEN
             BEGIN
             CBTIPOIDEEMPRESA.ITEMINDEX := 0;
             END
             ELSE
                 IF COPY(S,99,1) = 'C' THEN
                 BEGIN
                 CBTIPOIDEEMPRESA.ITEMINDEX := 1;
                 END
                 ELSE   IF COPY(S,99,1) = 'E' THEN
                        BEGIN
                        CBTIPOIDEEMPRESA.ITEMINDEX := 2;
                        END;


                     EDTNUMDOCEMPRESA.TEXT := floattostr(strtofloat(COPY (S,100,9)));
                     EDTRAZONSOCIAL.TEXT := TRIM(COPY (S,59,40));
                     EDTDIRECCION.TEXT := TRIM(COPY (S,111,40));
                     EDTCIUDAD.TEXT := TRIM(COPY (S,151,15));
                     EDTCODCIUDAD.TEXT := TRIM(COPY (S,166,4));
                     EDTDEPARTAMENTO.TEXT := TRIM(COPY (S,170,15));
                     EDTCODDEPARTAMENTO.TEXT := TRIM(COPY (S,185,2));
                     EDTTELEFONO.TEXT := TRIM(COPY (S,187,10));
                     EDTFAX.TEXT := TRIM(COPY (S,197,10));
                     IF COPY(S,110,1) = 'G' THEN
                       BEGIN
                        EDTCLASEAPORTANTE.ITEMINDEX := 0;
                        END
                        ELSE IF COPY(S,110,1) = 'P' THEN
                             BEGIN
                             EDTCLASEAPORTANTE.ITEMINDEX := 1;
                             END;
                       EDTNOMBREARP.TEXT := TRIM(COPY (S,213,40));
                       EDTCODARP.TEXT := TRIM(COPY (S,253,5));
                       //EDTPERIODO.TEXT :=  TRIM(COPY (S,211,2)) +'/' + TRIM(COPY (S,207,4));
                       IF EDTPERIODO.TEXT <> '' THEN
                        BEGIN
                        SALARIOMINIMO;
                        END;

                       EDTNUMCORRECION.TEXT := TRIM(COPY (S,273,10));
                        IF TRIM(COPY (S,293,1))= 'U' THEN
                          BEGIN
                            CBPRESENTACION.ITEMINDEX := 0;
                            END
                            ELSE  IF TRIM(COPY (S,293,1))= 'C' THEN
                                  BEGIN
                                  CBPRESENTACION.ITEMINDEX := 1;
                                  END
                                   ELSE IF TRIM(COPY (S,293,1))= 'S' THEN
                                        BEGIN
                                        CBPRESENTACION.ITEMINDEX := 2;
                                         END;

                        // TIPO DE PRESENTACION

                        IF TRIM(COPY (S,293,1))= 'A' THEN
                          BEGIN
                            CBTIPOAPORTE.ITEMINDEX := 1;
                            END
                            ELSE  IF TRIM(COPY (S,293,1))= 'X' THEN
                                  BEGIN
                                  CBTIPOAPORTE.ITEMINDEX := 1;
                                  END
                                   ELSE
                                     CBTIPOAPORTE.ITEMINDEX := 0;

                               EDTSUCURSAL.TEXT := TRIM(COPY (S,294,10));
                               EDTNUMTRABAJADORES.TEXT := FLOATTOSTR(STRTOINT(COPY (S,304,5)));
                               EDTNUMAFILIADOS.TEXT := FLOATTOSTR(STRTOINT(COPY (S,309,5)));

                                           // VALIDAR QUE  LA  EMPRESA  EXISTA
    IF EDTNUMDOCEMPRESA.TEXT <> '0' THEN
    BEGIN
    DATAMODULE1.QRYEMPRESAS.DISABLECONTROLS;
    DATAMODULE1.QRYEMPRESAS.CLOSE;
    DATAMODULE1.QRYEMPRESAS.PARAMBYNAME('PTIPO').VALUE := TRIM(CBTIPOIDEEMPRESA.TEXT);
    DATAMODULE1.QRYEMPRESAS.PARAMBYNAME('PNUMERO').VALUE := TRIM(EDTNUMDOCEMPRESA.TEXT);
    DATAMODULE1.QRYEMPRESAS.OPEN;
    DATAMODULE1.QRYEMPRESAS.ENABLECONTROLS;
        IF DATAMODULE1.QRYEMPRESAS.RECORDCOUNT > 0 THEN
        BEGIN
        EDTDIGITO.TEXT := COPY(TRIM(EDTNUMDOCEMPRESA.TEXT),LENGTH(EDTNUMDOCEMPRESA.TEXT),1);
        RGESTADO.ITEMINDEX := 0;
         FECHAS_PAGO;
        END
        ELSE
          IF DATAMODULE1.QRYEMPRESAS.RECORDCOUNT = 0 THEN
          BEGIN
           SHOWMESSAGE('EMPRESA  NO EXISTE VERIFIQUE EL NUMERO DE  DOCUMENTO ');
           RGESTADO.ITEMINDEX := 0;
           ESTADO_PLANILLA := 'NRE';
           //EXIT;
           //limpiar
          END;
        END;

    END;





          // CARGAR  EL DETALLE DE  LA  AUTOLIQUIDACIOND DETALLE  DE  LA AUTOLIQUIDACION
          IF (COPY(S,6,1) ='2') THEN
           BEGIN
            SGDETALLE.ROWCOUNT := SGDETALLE.ROWCOUNT + 1   ;
              SGDETALLE.CELLS[0,I] := FLOATTOSTR(STRTOINT(COPY(S,1,5)));
                IF TRIM(COPY(S,7,1)) = 'N' THEN
                BEGIN
                SGDETALLE.CELLS[1,I] := 'NIT';
                END
                ELSE IF TRIM(COPY(S,7,1)) = 'C' THEN
                        BEGIN
                        SGDETALLE.CELLS[1,I] := 'CC';
                        END
                        ELSE IF TRIM(COPY(S,7,1)) = 'E' THEN
                                BEGIN
                                SGDETALLE.CELLS[1,I] := 'CE';
                                END
                                ELSE IF TRIM(COPY(S,7,1)) = 'P' THEN
                                        BEGIN
                                        SGDETALLE.CELLS[1,I] := 'PAS';
                                        END
                                        ELSE IF TRIM(COPY(S,7,1)) = 'T' THEN
                                                BEGIN
                                                SGDETALLE.CELLS[1,I] := 'TI';
                                                END;
                      // NUMERO DE  DOCUMENTO
            SGDETALLE.CELLS[2,I] := FLOATTOSTR(STRTOINT(COPY (S,8,12)));
            IF   SGDETALLE.CELLS[2,I] > '0' THEN
            BEGIN
                     DATAMODULE1.QRYDETALLE.CLOSE;
                     DATAMODULE1.QRYDETALLE.SQL.CLEAR;
                     DATAMODULE1.QRYDETALLE.REQUESTLIVE := FALSE;
                     DATAMODULE1.QRYDETALLE.SQL.ADD('SELECT * FROM DET_PLANILLA_AUTOLIQUIDACION WHERE AFI_TIPO_DOC = :"CC" AND AFI_NUMERO_DOC = :"DOCUMENTO" AND  PER_COTIZACION = :"PERIODO"');
                     DATAMODULE1.QRYDETALLE.PARAMS[0].ASSTRING := SGDETALLE.CELLS[1,I];
                     DATAMODULE1.QRYDETALLE.PARAMS[1].ASSTRING := SGDETALLE.CELLS[2,I];
                     DATAMODULE1.QRYDETALLE.PARAMS[2].ASSTRING := EDTPERIODO.TEXT;
                     DATAMODULE1.QRYDETALLE.OPEN;
                                                 IF DATAMODULE1.QRYDETALLE.RECORDCOUNT = 1 THEN
                                                 BEGIN
                                                 DATAMODULE1.QRYAUTOLIQUIDACION.CLOSE;
                                                 DATAMODULE1.QRYAUTOLIQUIDACION.PREPARE;
                                                 DATAMODULE1.QRYAUTOLIQUIDACION.REQUESTLIVE := FALSE;
                                                 DATAMODULE1.QRYAUTOLIQUIDACION.SQL.CLEAR;
                                                 DATAMODULE1.QRYAUTOLIQUIDACION.SQL.ADD('SELECT * FROM AUTOLIQUIDACION  WHERE  NUM_PLANILLA = :"PLANILLA"');
                                                 DATAMODULE1.QRYAUTOLIQUIDACION.PARAMS[0].ASSTRING := DATAMODULE1.QRYDETALLENUM_PLANILLA.VALUE;
                                                 DATAMODULE1.QRYAUTOLIQUIDACION.OPEN;
                                                            IF DATAMODULE1.QRYAUTOLIQUIDACION.RECORDCOUNT = 1 THEN
                                                             BEGIN
                                                                  IF  (DATAMODULE1.QRYAUTOLIQUIDACIONEMP_TIPO_DOC.VALUE  = CBTIPOIDEEMPRESA.TEXT) AND (DATAMODULE1.QRYAUTOLIQUIDACIONEMP_NUMERO_DOC.VALUE  = EDTNUMDOCEMPRESA.TEXT) THEN
                                                                  BEGIN
                                                                  SHOWMESSAGE('AFILIADO ' + SGDETALLE.CELLS[1,I]+ '  ' + SGDETALLE.CELLS[2,I] + ' ' + SGDETALLE.CELLS[3,I] + ' YA  TIENE PAGOS  POR ESTA  EMPRESA  CON  LA  PLANILLA  :  ' + DATAMODULE1.QRYDETALLENUM_PLANILLA.VALUE);
                                                                  END;
                                                             END;
                                                 END;
                     END;
                     // NOMBRE  DEL AFILIADO
                     SGDETALLE.CELLS[3,I] := TRIM(COPY (S,20,15)) + ' ' + TRIM(COPY (S,35,15)) + ' ' +TRIM(COPY (S,50,15)) + ' ' +TRIM(COPY (S,65,15));
                     // NOVEDADES  DE  LA  PLANILLA
                     SGDETALLE.CELLS[4,I] := TRIM(COPY (S,80,1));
                     SGDETALLE.CELLS[5,I] := TRIM(COPY (S,81,1));
                     SGDETALLE.CELLS[6,I] := TRIM(COPY (S,82,1));
                     SGDETALLE.CELLS[7,I] := TRIM(COPY (S,83,1));
                     SGDETALLE.CELLS[8,I] := TRIM(COPY (S,84,1));
                     SGDETALLE.CELLS[9,I] := TRIM(COPY (S,85,1));
                     SGDETALLE.CELLS[10,I] := TRIM(COPY (S,86,1));
                     SGDETALLE.CELLS[11,I] := TRIM(COPY (S,87,1));
                     SGDETALLE.CELLS[12,I] := TRIM(COPY (S,88,1));
                     SGDETALLE.CELLS[13,I] := TRIM(COPY (S,89,1));
                     // DIAS  TRABAJADOS
                     SGDETALLE.CELLS[14,I] := FLOATTOSTR(STRTOINT(COPY (S,90,2)));
                     // SALARIO  BASICO
                     SGDETALLE.CELLS[15,I] := FLOATTOSTR(STRTOINT(COPY (S,92,9)));
                     // VALOR DE  LA  NOVEDAD
                     SGDETALLE.CELLS[16,I] := FLOATTOSTR(STRTOINT(COPY (S,101,9)));
                     // INGRESO BASE DE  COTIZACION
                     SGDETALLE.CELLS[17,I] := FLOATTOSTR(STRTOINT(COPY (S,110,9)));
                     // COTIZACION  OBLIGATORIA
                     SGDETALLE.CELLS[18,I] := FLOATTOSTR(STRTOINT(COPY (S,119,9)));
                     SGDETALLE.CELLS[17,I] :=   FLOATTOSTR(ROUNDTO((STRTOINT(SGDETALLE.CELLS[18,I]) / 0.12),3));
                     // NUMERO DE  INCAPACIDAD DESCONTADA
                     SGDETALLE.CELLS[19,I] := TRIM(COPY (S,128,9));
                     // VALOR  DE  LA INCAPACIDAD  DESCONTADA
                     SGDETALLE.CELLS[20,I] := IntToStr(STRTOINT(COPY (S,137,9)));
                      IF TRIM(SGDETALLE.CELLS[20,I]) > '0' THEN
                      BEGIN
                        VALOR := STRTOINT(TRIM(SGDETALLE.CELLS[20,I]));
                        DATAMODULE1.QRYINCAPACIDADES.CLOSE;
                        DATAMODULE1.QRYINCAPACIDADES.SQL.CLEAR;
                        DATAMODULE1.QRYINCAPACIDADES.SQL.ADD('SELECT * FROM INCAPACIDADES WHERE TIP_DOCEMPRESA = :"NIT" AND NUM_DOCEMPRESA = :"EMPRESA" AND AFI_TIPO_DOC = :"CC" AND AFI_NUMERO_DOC = :"AFILIADO" AND EST_INCAPACIDAD IS NULL AND TIP_INCAPACIDAD <> :"MATERNIDAD"');
                        DATAMODULE1.QRYINCAPACIDADES.PARAMS[0].ASSTRING := CBTIPOIDEEMPRESA.TEXT;
                        DATAMODULE1.QRYINCAPACIDADES.PARAMS[1].ASSTRING := EDTNUMDOCEMPRESA.TEXT;
                        DATAMODULE1.QRYINCAPACIDADES.PARAMS[2].ASSTRING := SGDETALLE.CELLS[1,I];
                        DATAMODULE1.QRYINCAPACIDADES.PARAMS[3].ASSTRING := SGDETALLE.CELLS[2,I];
                        DATAMODULE1.QRYINCAPACIDADES.PARAMS[4].ASSTRING := 'MAT';
                        DATAMODULE1.QRYINCAPACIDADES.OPEN;
                        IF DATAMODULE1.QRYINCAPACIDADES.RECORDCOUNT > 0 THEN
                        BEGIN
                                DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
                                DATAMODULE1.QRYDETINCAPACIDAD.SQL.CLEAR;
                                DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('SELECT * FROM DET_INCAPACIDAD WHERE NUM_INCAPACIDAD = :"INCAPACIDAD" AND  EST_DET_PLANILLA IS NULL ORDER BY PER_PAGO_INCAP');
                                DATAMODULE1.QRYDETINCAPACIDAD.PARAMS[0].ASSTRING := DATAMODULE1.QRYINCAPACIDADESNUM_INCAPACIDAD.VALUE;
                                DATAMODULE1.QRYDETINCAPACIDAD.OPEN;
                                IF DATAMODULE1.QRYDETINCAPACIDAD.RECORDCOUNT > 0 THEN
                                BEGIN

                                        FOR I := 1 TO DATAMODULE1.QRYDETINCAPACIDAD.RECORDCOUNT  DO
                                        BEGIN
                                                IF STRTODATE('01/' + EDTPERIODO.TEXT) >= DATAMODULE1.QRYDETINCAPACIDADPER_PAGO_INCAP.VALUE THEN
                                                BEGIN
                                                        IF    DATAMODULE1.QRYDETINCAPACIDADVAL_PAGAR_INCAP.VALUE <= VALOR THEN
                                                        BEGIN
                                                        SGINCAPACIDADES.ROWCOUNT := SGINCAPACIDADES.ROWCOUNT +1 ;
                                                        SGINCAPACIDADES.CELLS[0,I] := DATAMODULE1.QRYDETINCAPACIDADNUM_INCAPACIDAD.VALUE;
                                                        SGINCAPACIDADES.CELLS[1,I] := datetostr(DATAMODULE1.QRYDETINCAPACIDADPER_PAGO_INCAP.VALUE);
                                                        SGINCAPACIDADES.CELLS[2,I] := FLOATTOSTR(DATAMODULE1.QRYDETINCAPACIDADDIA_PAGAR_INCAP.VALUE);
                                                        SGINCAPACIDADES.CELLS[3,I] := FLOATTOSTR(DATAMODULE1.QRYDETINCAPACIDADVAL_PAGAR_INCAP.VALUE);
                                                        SGINCAPACIDADES.CELLS[8,I] := DATAMODULE1.QRYDETINCAPACIDADEST_DET_PLANILLA.VALUE;
                                                        SGDETALLE.CELLS[19,I] := DATAMODULE1.QRYDETINCAPACIDADNUM_INCAPACIDAD.VALUE;
                                                        SGINCAPACIDADES.CELLS[4,I] := 'A';
                                                        SGINCAPACIDADES.CELLS[5,I] :=  GLDATE;
                                                        SGINCAPACIDADES.CELLS[7,I] := EDTPERIODO.TEXT;
                                                        SGINCAPACIDADES.CELLS[8,I] := 'DES';
                                                        SGINCAPACIDADES.CELLS[9,I] := FLOATTOSTR(DATAMODULE1.QRYDETINCAPACIDADVAL_PAGAR_INCAP.VALUE);
                                                        VALOR := VALOR - DATAMODULE1.QRYDETINCAPACIDADVAL_PAGAR_INCAP.VALUE;
                                                        END;
                                                END;
                                                DATAMODULE1.QRYDETINCAPACIDAD.FINDNEXT;
                                                INCAPACIDAD := TRUE;
                                        END;
                                END;
                                DATAMODULE1.QRYINCAPACIDADES.FINDNEXT;

                        END
                        ELSE   IF DATAMODULE1.QRYINCAPACIDADES.RECORDCOUNT = 0 THEN
                                BEGIN
                                SHOWMESSAGE('EL USUARIO NO TIENE INCAPACIDADES, NOTA DEBITO  ' + FloatToStr(VALOR));
                                //NOTASDEBITOS(VALOR);
                        END;

                     END;

                        IF VALOR <> 0 THEN
                        BEGIN
                        //NOTASDEBITOS(VALOR);
                        SHOWMESSAGE('GENERA  UNA NOTA DEBITO POR LA INCAPACIDAD ' + FloatToStr(VALOR));
                        END;

                      // NUMERO DE  LA  LICENCIA  DE  MATERNIDAD
                     SGDETALLE.CELLS[21,I] := TRIM(COPY (S,146,9));
                     // VALOR  DE  LA  LICENCIA  DE  MATERNIDAD
                     SGDETALLE.CELLS[22,I] := IntToStr(STRTOINT(COPY (S,155,9)));
                   // VERIFICAR LA  LICENCIA  DE  MATERNIDAD PARA  DESCONTAR O GENERAR  UNA  NOTA  DEBITO
                IF SGDETALLE.CELLS[22,I] > '0' THEN
                BEGIN
                        DATAMODULE1.QRYINCAPACIDADES.CLOSE;
                        DATAMODULE1.QRYINCAPACIDADES.SQL.CLEAR;
                        DATAMODULE1.QRYINCAPACIDADES.SQL.ADD('SELECT * FROM INCAPACIDADES WHERE TIP_DOCEMPRESA = :"NIT" AND NUM_DOCEMPRESA = :"EMPRESA" AND AFI_TIPO_DOC = :"CC" AND AFI_NUMERO_DOC = :"AFILIADO" AND EST_INCAPACIDAD IS NULL AND TIP_INCAPACIDAD = :"MATERNIDAD"');
                        DATAMODULE1.QRYINCAPACIDADES.PARAMS[0].ASSTRING := CBTIPOIDEEMPRESA.TEXT;
                        DATAMODULE1.QRYINCAPACIDADES.PARAMS[1].ASSTRING := EDTNUMDOCEMPRESA.TEXT;
                        DATAMODULE1.QRYINCAPACIDADES.PARAMS[2].ASSTRING := SGDETALLE.CELLS[1,I];
                        DATAMODULE1.QRYINCAPACIDADES.PARAMS[3].ASSTRING := SGDETALLE.CELLS[2,I];
                        DATAMODULE1.QRYINCAPACIDADES.OPEN;
                        IF DATAMODULE1.QRYINCAPACIDADES.RECORDCOUNT > 0 THEN
                        BEGIN
                                FOR Y := 1 TO DATAMODULE1.QRYINCAPACIDADES.RECORDCOUNT  DO
                                BEGIN
                                DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
                                DATAMODULE1.QRYDETINCAPACIDAD.SQL.CLEAR;
                                DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('SELECT * FROM DET_INCAPACIDAD WHERE NUM_INCAPACIDAD = :"INCAPACIDAD" AND (EST_DET_PLANILLA IS NULL)  ORDER BY  PER_PAGO_INCAP');
                                DATAMODULE1.QRYDETINCAPACIDAD.PARAMS[0].ASSTRING := DATAMODULE1.QRYINCAPACIDADESNUM_INCAPACIDAD.VALUE;
                                DATAMODULE1.QRYDETINCAPACIDAD.OPEN;
                                  IF DATAMODULE1.QRYDETINCAPACIDAD.RECORDCOUNT > 0 THEN
                                  BEGIN
                                      FOR I := 1 TO DATAMODULE1.QRYDETINCAPACIDAD.RECORDCOUNT  DO
                                      BEGIN
                                           IF STRTODATE('01/' + EDTPERIODO.TEXT) >= DATAMODULE1.QRyDETINCAPACIDADPER_PAGO_INCAP.VALUE THEN
                                           BEGIN
                                                IF    DATAMODULE1.QRYDETINCAPACIDADVAL_PAGAR_INCAP.VALUE <= VALOR THEN
                                                BEGIN
                                                SGINCAPACIDADES.ROWCOUNT := SGINCAPACIDADES.ROWCOUNT +1 ;
                                                SGINCAPACIDADES.CELLS[0,I] := DATAMODULE1.QRYDETINCAPACIDADNUM_INCAPACIDAD.VALUE;
                                                SGINCAPACIDADES.CELLS[1,I] := datetostr(DATAMODULE1.QRYDETINCAPACIDADPER_PAGO_INCAP.VALUE);
                                                SGINCAPACIDADES.CELLS[2,I] := FloatToStr(dATAMODULE1.QRYDETINCAPACIDADDIA_PAGAR_INCAP.VALUE);
                                                SGINCAPACIDADES.CELLS[3,I] := FloatToStr(DATAMODULE1.QRYDETINCAPACIDADVAL_PAGAR_INCAP.VALUE);
                                                SGINCAPACIDADES.CELLS[8,I] := DATAMODULE1.QRYDETINCAPACIDADEST_DET_PLANILLA.VALUE;
                                                SGDETALLE.CELLS[22,I] :=  DATAMODULE1.QRYDETINCAPACIDADNUM_INCAPACIDAD.VALUE;
                                                SGINCAPACIDADES.CELLS[4,I] := 'A';
                                                SGINCAPACIDADES.CELLS[5,I] :=  GLDATE;
                                                SGINCAPACIDADES.CELLS[7,I] := EDTPERIODO.TEXT;
                                                SGINCAPACIDADES.CELLS[8,I] := 'DES';
                                                SGINCAPACIDADES.CELLS[9,I] := FloatToStr(DATAMODULE1.QRYDETINCAPACIDADVAL_PAGAR_INCAP.VALUE);
                                                VALOR := VALOR -DATAMODULE1.QRYDETINCAPACIDADVAL_PAGAR_INCAP.VALUE;
                                                END;
                                           END;
                                       DATAMODULE1.QRYDETINCAPACIDAD.FINDNEXT;
                                       INCAPACIDAD := TRUE;
                                       END;
                                 END;
                                DATAMODULE1.QRYINCAPACIDADES.FINDNEXT;
                            END;
                        END
                        ELSE   IF DATAMODULE1.QRYINCAPACIDADES.RECORDCOUNT = 0 THEN
                                BEGIN
                                SHOWMESSAGE('EL USUARIO NO TIENE LINCENCIA, NOTA DEBITO  ' + FloatToStr(VALOR));
                                END;

                        IF VALOR <> 0 THEN
                        BEGIN
                        //NOTASDEBITOS(VALOR);
                        SHOWMESSAGE('GENERA  UNA NOTA DEBITO POR LA LICENCIA ' + FloatToStr(VALOR));
                        END;

               END;

                      // VALOR  UPC  DESCONTADO
                     SGDETALLE.CELLS[23,I] := FloatToStr(STRTOINT(COPY (S,164,9)));
                     // UPC  DESCONTADAS
                    IF  SGDETALLE.CELLS[23,I] > '0' THEN
                    BEGIN

                              DATAMODULE1.QRYUPC.CLOSE;
                              DATAMODULE1.QRYUPC.PREPARE;
                              DATAMODULE1.QRYUPC.SQL.CLEAR;
                              DATAMODULE1.QRYUPC.SQL.ADD('SELECT TIP_DOCUMENTO_BEN,NUM_DOCUMENTO_BEN,COD_SEXO,TIP_DOCUMENTO_COT,NUM_DOCUMENTO_COT,FEC_NACIMIENTO,');
                              DATAMODULE1.QRYUPC.SQL.ADD('PRI_APELLIDO,SEG_APELLIDO,PRI_NOMBRE,SEG_NOMBRE');
                              DATAMODULE1.QRYUPC.SQL.ADD('FROM AFILIADOS,RELACION_AFILIADOS');
                              DATAMODULE1.QRYUPC.SQL.ADD('WHERE COD_TIPO_AFIL=:"EST" AND TIP_DOCUMENTO_BEN =  TIP_DOCUMENTO AND NUM_DOCUMENTO_BEN = NUM_DOCUMENTO AND TIP_DOCUMENTO_COT =  :"TIPO" AND NUM_DOCUMENTO_COT = :"NUMERO" ');
                              DATAMODULE1.QRYUPC.SQL.ADD('AND ((FEC_INCLUSION_NOV <= :"FECHA") OR (FEC_INCLUSION_NOV <= :"FECHAI")) AND (((FEC_EXCLUSION_NOV >= :"FECHAF") OR (FEC_EXCLUSION_NOV >= :"FECHAFI"))OR FEC_EXCLUSION_NOV  IS NULL)');
                              DATAMODULE1.QRYUPC.PARAMS[0].ASSTRING := 'A';
                              DATAMODULE1.QRYUPC.PARAMS[1].ASSTRING := SGDETALLE.CELLS[1,I];;
                              DATAMODULE1.QRYUPC.PARAMS[2].ASSTRING := SGDETALLE.CELLS[2,I];;
                              DATAMODULE1.QRYUPC.PARAMS[3].ASDATE := STRTODATE('01/'+ EDTPERIODO.TEXT);
                              DATAMODULE1.QRYUPC.PARAMS[4].ASDATE := STRTODATE('28/'+ EDTPERIODO.TEXT);
                              DATAMODULE1.QRYUPC.PARAMS[5].ASDATE := STRTODATE('01/'+ EDTPERIODO.TEXT);
                              DATAMODULE1.QRYUPC.PARAMS[6].ASDATE := STRTODATE('28/'+ EDTPERIODO.TEXT);

                              DATAMODULE1.QRYUPC.OPEN;
                                IF DATAMODULE1.QRYUPC.RECORDCOUNT > 0 THEN
                                BEGIN
                                FOR Y := 1 TO DATAMODULE1.QRYUPC.RECORDCOUNT DO
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
                                        DATAMODULE1.QRYDETALLEUPC.CLOSE;
                                        DATAMODULE1.QRYDETALLEUPC.SQL.CLEAR;
                                        DATAMODULE1.QRYDETALLEUPC.SQL.ADD('SELECT DET_PAGO_UPC_ADICIONAL.*  FROM DET_PAGO_UPC_ADICIONAL  WHERE  PER_COTIZACION = :"PERIODO" AND  AFI_TIP_DOC_ADICIONAL = :"TIPO" AND AFI_NUM_DOC_ADICIONAL = :"NUMERO"');
                                        DATAMODULE1.QRYDETALLEUPC.PARAMS[0].ASSTRING := EDTPERIODO.TEXT;
                                        DATAMODULE1.QRYDETALLEUPC.PARAMS[1].ASSTRING := TRIM(DATAMODULE1.QRYUPCTIP_DOCUMENTO_BEN.VALUE);
                                        DATAMODULE1.QRYDETALLEUPC.PARAMS[2].ASSTRING := TRIM(DATAMODULE1.QRYUPCNUM_DOCUMENTO_BEN.VALUE);
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
                                                SGUPC.CELLS[6,SGUPC.ROWCOUNT -2] := FloatToStr(EDADUPC);
                                                   IF EDTVALUPC.TEXT > '0' THEN
                                                   BEGIN
                                                   SGUPC.CELLS[8,SGUPC.ROWCOUNT -2] := 'P';
                                                   END
                                                   ELSE
                                                   SGUPC.CELLS[8,SGUPC.ROWCOUNT -2] := 'C';
                                                END;
                                                        IF  SGUPC.CELLS[0,SGUPC.ROWCOUNT -2] <> '' THEN
                                                        BEGIN

                                                        // GENERAR EL VALOR   DE LA  UPC A  PAGAR
                                                        DATAMODULE1.QRYVALORESUPC.CLOSE;
                                                        DATAMODULE1.QRYVALORESUPC.REQUESTLIVE := FALSE;
                                                        DATAMODULE1.QRYVALORESUPC.SQL.CLEAR;
                                                        DATAMODULE1.QRYVALORESUPC.SQL.ADD('SELECT VAL_ESTRUCTURA_COST, INI_GRUPO_ETA, FIN_GRUPO_ETA, SEXO_GRUPO_ETA,((VAL_ESTRUCTURA_COST * VAL_UPC_DIA_NORMAL)*30) AS VALOR_NORMAL, (((PYP/12))) AS PROMOCION,SOL');
                                                        DATAMODULE1.QRYVALORESUPC.SQL.ADD(' FROM GRUPOS_ETAREOS,ESTRUCTURA_COSTOS,VALORESANULESCOMP  WHERE GRUPOS_ETAREOS.COD_GRUPO_ETA = ESTRUCTURA_COSTOS.COD_GRUPO_ETA AND');
                                                        DATAMODULE1.QRYVALORESUPC.SQL.ADD(' ANO_VAL_ESTRUCTURA_COST = ANO  AND ANO_VAL_ESTRUCTURA_COST = :"FECHA" AND');
                                                	DATAMODULE1.QRYVALORESUPC.SQL.ADD('(INI_GRUPO_ETA <= :"EDAD" AND FIN_GRUPO_ETA >= :"EDAD")');
                                                        DATAMODULE1.QRYVALORESUPC.PARAMS[0].ASDATE :=  STRTODATE('01/01/'+(FORMATDATETIME('YYYY',STRTODATE('01/' + EDTPERIODO.TEXT))));
                                                        DATAMODULE1.QRYVALORESUPC.PARAMS[1].ASFLOAT := EDADUPC;
                                                        DATAMODULE1.QRYVALORESUPC.PARAMS[1].ASFLOAT := EDADUPC;
                                                        DATAMODULE1.QRYVALORESUPC.OPEN;
                                                           IF  DATAMODULE1.QRYVALORESUPC.RECORDCOUNT = 1 THEN
                                                           BEGIN
                                                           SGUPC.CELLS[7,SGUPC.ROWCOUNT -2] := FloatToStr(((((DATAMODULE1.QRYVALORESUPCVALOR_NORMAL.VALUE + DATAMODULE1.QRYVALORESUPCPROMOCION.VALUE)* DATAMODULE1.QRYVALORESUPCSOL.VALUE))+ (DATAMODULE1.QRYVALORESUPCVALOR_NORMAL.VALUE + DATAMODULE1.QRYVALORESUPCPROMOCION.VALUE)));
                                                           SGUPC.CELLS[7,SGUPC.ROWCOUNT -2] := FloatToStr(ROUNDTO(STRTOINT(SGUPC.CELLS[7,SGUPC.ROWCOUNT -2]),0));
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
                                                                                SGUPC.CELLS[7,SGUPC.ROWCOUNT -2] := FloatToStr(((((DATAMODULE1.QRYVALORESUPCVALOR_NORMAL.VALUE + DATAMODULE1.QRYVALORESUPCPROMOCION.VALUE)* DATAMODULE1.QRYVALORESUPCSOL.VALUE))+ (DATAMODULE1.QRYVALORESUPCVALOR_NORMAL.VALUE + DATAMODULE1.QRYVALORESUPCPROMOCION.VALUE)));
                                                                                SGUPC.CELLS[7,SGUPC.ROWCOUNT -2] := FloatToStr(ROUNDTO(STRTOINT(SGUPC.CELLS[7,SGUPC.ROWCOUNT -2]),0));
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
                                                                                 SGUPC.CELLS[7,SGUPC.ROWCOUNT -2] := FloatToStr(((((DATAMODULE1.QRYVALORESUPCVALOR_NORMAL.VALUE + DATAMODULE1.QRYVALORESUPCPROMOCION.VALUE)* DATAMODULE1.QRYVALORESUPCSOL.VALUE))+ (DATAMODULE1.QRYVALORESUPCVALOR_NORMAL.VALUE + DATAMODULE1.QRYVALORESUPCPROMOCION.VALUE)));
                                                                                 SGUPC.CELLS[7,SGUPC.ROWCOUNT -2] := FloatToStr(ROUNDTO(STRTOINT(SGUPC.CELLS[7,SGUPC.ROWCOUNT -2]),0));
                                                                                 END;
                                                                                 DATAMODULE1.QRYVALORESUPC.FINDNEXT;
                                                                              END;
                                                                              END;
                                                                   END;
                                                        END;
                                                        DATAMODULE1.QRYUPC.FINDNEXT;
                                        END;
                            END;
                        END;
                    END;



                    //  TOTAL  PAGADO POR  EL USUARIO

                     SGDETALLE.CELLS[24,I] := FloatToStr(((STRTOINT(COPY (S,119,9))) + (STRTOINT(COPY (S,164,9))))-((STRTOINT(COPY (S,137,9))) + (STRTOINT(COPY (S,155,9)))));
                     // VALIDAR  EL ESTADO DEL USUARIO

                 SGDETALLE.CELLS[25,I] := estado_pago(SGDETALLE.CELLS[1,I],SGDETALLE.CELLS[2,I],SGDETALLE.CELLS[14,I],SGDETALLE.CELLS[17,i],SGDETALLE.CELLS[15,i]);
                INC (I);
                END;

                   IF (COPY(S,6,1) ='3') THEN
                   BEGIN
                   // APORTES  DEL PERIODO DECLARADO
                       IF (COPY(S,1,5) ='00031') THEN
                       BEGIN
                       EDTINGRESOBASE.TEXT :=FloatToStr(STRTOINT(COPY(S,7,10)));
                       EDTCOTIZOBLIGATORIA.TEXT :=FloatToStr(STRTOINT(COPY(S,17,10)));
                       EDTINCPACIDADEG.TEXT :=FloatToStr(STRTOINT(COPY(S,27,10)));

                       EDTVALLICEMATERNIDAD.TEXT := FloatToStr(STRTOINT(COPY(S,37,10)));
                       EDTVALUPC.TEXT :=FloatToStr(STRTOINT(COPY(S,47,10)));
                       END;
                       // INCAPACIDADES PAGADAS
                       IF (COPY(S,1,5) ='00032') THEN
                       BEGIN
                       EDTMINCNROAUTORIZACION.TEXT :=TRIM(COPY(S,7,10));
                       EDTMINCOTIZACIONOBLIGATORIA.TEXT :=FloatToStr(STRTOINT(COPY(S,17,10)));
                       EDTMINCVALINCAPACIDAD.TEXT :=FloatToStr(STRTOINT(COPY(S,27,10)));
                       EDTMINVALLICENCIA.TEXT :=FloatToStr(STRTOINT(COPY(S,37,10)));
                       EDTMVALUPC.TEXT :=FloatToStr(STRTOINT(COPY(S,47,10)));
                       END;
                       // LICENCIAS DE  MATERNIDAD
                       IF (COPY(S,1,5) ='00033') THEN
                       BEGIN
                       EDTLMBASECOTIZACION.TEXT := TRIM(COPY(S,7,10));
                       EDTLMCOTOBLIGATORIA.TEXT :=FloatToStr(STRTOINT(COPY(S,17,10)));
                       EDTLMVALINCAPACIDAD.TEXT :=FloatToStr(STRTOINT(COPY(S,27,10)));
                       EDTLMVALLMATERNIDAD.TEXT :=FloatToStr(STRTOINT(COPY(S,37,10)));
                       EDTLMUPC.TEXT :=FloatToStr(STRTOINT(COPY(S,47,10)));
                       END;
                       //VALOR APORTES NETO
                       IF (COPY(S,1,5) ='00035') THEN
                       BEGIN
                       EDTNINGRESOBASECOT.TEXT :=FloatToStr(STRTOINT(COPY(S,7,10)));
                       EDTNCOTIZOBLIGATORIA.TEXT :=FloatToStr(STRTOINT(COPY(S,17,10)));
                       EDTNVALINCAPACIDAD.TEXT :=FloatToStr(STRTOINT(COPY(S,27,10)));
                       EDTLNLICENCIA.TEXT :=FloatToStr(STRTOINT(COPY(S,37,10)));
                       EDTNVALUPC.TEXT :=FloatToStr(STRTOINT(COPY(S,47,10)));
                       END;
                       // INTERESES  DE  MORA
                       IF (COPY(S,1,5) ='00036') THEN
                       BEGIN
                        IF  TRIM(COPY(S,7,10)) = '0' THEN
                        BEGIN
                       EDTIBASECOTIZACION.TEXT :=FloatToStr(STRTOINT(COPY(S,7,10)));
                       END  ELSE EDTIBASECOTIZACION.TEXT := '0';
                       EDTICOTOBLIGATORIA.TEXT :=FloatToStr(STRTOINT(COPY(S,17,10)));
                       EDTIVALINCAPACIDAD.TEXT :=FloatToStr(STRTOINT(COPY(S,27,10)));
                       EDTIVALLICENCIA.TEXT :=FloatToStr(STRTOINT(COPY(S,37,10)));
                       EDTIVALUPC.TEXT :=FloatToStr(STRTOINT(COPY(S,47,10)));
                       END;
                       // INTERESES  MAS  APORTES
                       IF (COPY(S,1,5) ='00037') THEN
                       BEGIN
                       IF  TRIM(COPY(S,7,10)) = '0' THEN
                        BEGIN
                       EDTIMBASECOTIZACION.TEXT :=FloatToStr(STRTOINT(COPY(S,7,10)));
                       END
                       ELSE  EDTIMBASECOTIZACION.TEXT := '0';
                       EDTIMCOTOBLIGATORIA.TEXT :=FloatToStr(STRTOINT(COPY(S,17,10)));
                       EDTIMVALINCAPACIDAD.TEXT :=FloatToStr(STRTOINT(COPY(S,27,10)));
                       EDTIMVALLICENCIA.TEXT :=FloatToStr(STRTOINT(COPY(S,37,10)));
                       EDTIMVALUPC.TEXT :=FloatToStr(STRTOINT(COPY(S,47,10)));
                       END;
                       // SALDO A  FAVOR  MES  ANTERIOR
                       IF (COPY(S,1,5) ='00038') THEN
                       BEGIN
                       EDTSFNROPLANILLA.TEXT :=TRIM(COPY(S,7,10));
                       EDTSFCOTOBLIGATORIA.TEXT :=FloatToStr(STRTOINT(COPY(S,17,10)));
                       EDTSFVALINCAPACIDAD.TEXT :=FloatToStr(STRTOINT(COPY(S,27,10)));
                       EDTSFVALLICENCIA.TEXT :=FloatToStr(STRTOINT(COPY(S,37,10)));
                       EDTSFVALUPC.TEXT :=FloatToStr(STRTOINT(COPY(S,47,10)));
                       END;
                       IF (COPY(S,1,5) ='00039') THEN
                       BEGIN
                       EDTSPBASECOTIZACION.TEXT :=FloatToStr(STRTOINT(COPY(S,7,10)));
                       EDTSPCOTIZOBLIGATORIA.TEXT :=FloatToStr(STRTOINT(COPY(S,17,10)));
                       EDTSPVALINCAPACIDAD.TEXT :=FloatToStr(STRTOINT(COPY(S,27,10)));
                       EDTSPVALLICENCIA.TEXT :=FloatToStr(STRTOINT(COPY(S,37,10)));
                       EDTSPVALUPC.TEXT :=FloatToStr(STRTOINT(COPY(S,47,10)));
                       END;
                   END;
               END;
        FINALLY
    CLOSEFILE(F);
    END;
    EXCEPT
   RAISE EXCEPTION.CREATE(LowerCase('Este Archivo no cumple  con  el formato  establecido  por la ley'));
   LIMPIAR;
   edtnumplanilla.SetFocus;
 END;

 END;

END;

PROCEDURE TFRMAUTOLIQUIDACIONMAGNETICA.CARGAR_ARCHIVOCLICK(
  SENDER: TOBJECT);
BEGIN
MKPERIODO.TEXT := GLPRESENTACION;
BTGRABARPLANILLA.ENABLED := FALSE;
CARGARMEDIOMAGNETICO;

END;

PROCEDURE TFRMAUTOLIQUIDACIONMAGNETICA.FORMCLOSE(SENDER: TOBJECT;
  VAR ACTION: TCLOSEACTION);
BEGIN
 ACTION := CAFREE;
END;

PROCEDURE TFRMAUTOLIQUIDACIONMAGNETICA.EDTNUMPLANILLAEXIT(SENDER: TOBJECT);
BEGIN
IF (EDTNUMPLANILLA.TEXT > '0') and  (edtnumdocempresa.Text = '' ) THEN
    BEGIN
        DATAMODULE1.QRYAUTOLIQUIDACION.CLOSE;
        DATAMODULE1.QRYAUTOLIQUIDACION.PREPARE;
        DATAMODULE1.QRYAUTOLIQUIDACION.REQUESTLIVE := FALSE;
        DATAMODULE1.QRYAUTOLIQUIDACION.SQL.CLEAR;
        DATAMODULE1.QRYAUTOLIQUIDACION.SQL.ADD('SELECT * FROM AUTOLIQUIDACION WHERE  NUM_PLANILLA = :"PLANILLA"');
        DATAMODULE1.QRYAUTOLIQUIDACION.PARAMS[0].ASSTRING := EDTNUMPLANILLA.TEXT;
        DATAMODULE1.QRYAUTOLIQUIDACION.OPEN;
        IF DATAMODULE1.QRYAUTOLIQUIDACION.RECORDCOUNT > 0 THEN
        BEGIN
        SHOWMESSAGE('EL NUMERO DE LA PLANILLA  YA  FUE  DIGITADA' +  DATAMODULE1.QRYAUTOLIQUIDACIONEMP_NUMERO_DOC.VALUE);
        EDTNUMPLANILLA.TEXT := '0';
        EDTNUMPLANILLA.SETFOCUS;
        END
        ELSE
        BEGIN
        MKPERIODO.TEXT := GLPRESENTACION;
        mkperiodo.Enabled := false;
        edtperiodo.Enabled := false;
        cbtipoaporte.SetFocus;
        END;
    END;


    IF ('01/' + MKPERIODO.TEXT) = ('01/' + EDTPERIODO.TEXT) THEN
      BEGIN
      CBTIPOAPORTE.ITEMINDEX := 0;
      END ELSE IF ('01/' + MKPERIODO.TEXT) > ('01/' + EDTPERIODO.TEXT)  THEN
                BEGIN
                CBTIPOAPORTE.ITEMINDEX := 1;

                END  ELSE IF ('01/' + MKPERIODO.TEXT) < ('01/' + EDTPERIODO.TEXT) THEN
                           BEGIN
                           CBTIPOAPORTE.ITEMINDEX := 1;
                           END;


END;

PROCEDURE TFRMAUTOLIQUIDACIONMAGNETICA.LIMPIAR;
var I : Integer;
BEGIN
// LIMPIAR  EL FORMULARIO  PARA  UN  NUEVO  ARCHIVO
CBBANCO.KEYVALUE := '';
CBPRESENTACION.ITEMINDEX := -1;
CBTIPOAPORTE.ITEMINDEX := -1;
CBTIPOIDEEMPRESA.ITEMINDEX := -1;
DTFECHAPAGO.DATE := STRTODATE(GLDATE);
EDTCIUDAD.TEXT :='';
EDTCLASEAPORTANTE.TEXT :='';
EDTCODARP.TEXT :='';
EDTCODCIUDAD.TEXT :='';
EDTCODDEPARTAMENTO.TEXT :='';
EDTCOTIZOBLIGATORIA.TEXT :='';
EDTDEPARTAMENTO.TEXT :='';
EDTDIRECCION.TEXT :='';
EDTFAX.TEXT :='';
EDTIBASECOTIZACION.TEXT :='';
EDTICOTOBLIGATORIA.TEXT :='';
EDTIMBASECOTIZACION.TEXT :='';
EDTIMCOTOBLIGATORIA.TEXT :='';
EDTIMVALINCAPACIDAD.TEXT :='';
EDTIMVALLICENCIA.TEXT :='';
EDTIMVALUPC.TEXT :='';
EDTINCPACIDADEG.TEXT :='';
EDTINGRESOBASE.TEXT :='';
EDTIVALINCAPACIDAD.TEXT :='';
EDTIVALLICENCIA.TEXT :='';
EDTIVALUPC.TEXT :='';
EDTLMBASECOTIZACION.TEXT :='';
EDTLMCOTOBLIGATORIA.TEXT :='';
EDTLMUPC.TEXT :='';
EDTLMVALINCAPACIDAD.TEXT :='';
EDTLMVALLMATERNIDAD.TEXT :='';
EDTLNLICENCIA.TEXT :='';
EDTMINCNROAUTORIZACION.TEXT :='';
EDTMINCOTIZACIONOBLIGATORIA.TEXT :='';
EDTMINCVALINCAPACIDAD.TEXT :='';
EDTMINVALLICENCIA.TEXT :='';
EDTMVALUPC.TEXT :='';
EDTNCOTIZOBLIGATORIA.TEXT :='';
EDTNINGRESOBASECOT.TEXT :='';
EDTNOMBREARP.TEXT :='';
EDTNUMAFILIADOS.TEXT :='';
EDTNUMCORRECION.TEXT :='';
//EDTNUMCUENTA.TEXT :='';
EDTNUMDOCEMPRESA.TEXT :='';
EDTNUMPLANILLA.TEXT :='';
EDTNUMTRABAJADORES.TEXT :='';
EDTNVALINCAPACIDAD.TEXT :='';
EDTNVALUPC.TEXT :='';
EDTPERIODO.TEXT :='';
EDTRAZONSOCIAL.TEXT :='';
EDTSFCOTOBLIGATORIA.TEXT :='';
EDTSFNROPLANILLA.TEXT :='';
EDTSFVALINCAPACIDAD.TEXT :='';
EDTSFVALLICENCIA.TEXT :='';
EDTSFVALUPC.TEXT :='';
EDTSPBASECOTIZACION.TEXT :='';
EDTSPCOTIZOBLIGATORIA.TEXT :='';
EDTSPVALINCAPACIDAD.TEXT :='';
EDTSPVALLICENCIA.TEXT :='';
EDTSPVALUPC.TEXT :='';
EDTSUCURSAL.TEXT :='';
EDTTELEFONO.TEXT :='';
EDTVALCHEQUE.TEXT :='';
EDTVALEFECTIVO.TEXT :='';
EDTVALLICEMATERNIDAD.TEXT :='';
EDTVALORPAGADO.TEXT :='';
EDTVALUPC.TEXT :='';

sgdetalle.ROWCOUNT := 2;
 FOR I := 0 TO sgdetalle.ROWCOUNT DO
     BEGIN
        SGDETALLE.CELLS[0,1] :='';
        SGDETALLE.CELLS[1,1] :='';
        SGDETALLE.CELLS[2,1] :='';
        SGDETALLE.CELLS[3,1] :='';
        SGDETALLE.CELLS[4,1] :='';
        SGDETALLE.CELLS[5,1] :='';
        SGDETALLE.CELLS[6,1] :='';
        SGDETALLE.CELLS[7,1] :='';
        SGDETALLE.CELLS[8,1] :='';
        SGDETALLE.CELLS[9,1] :='';
        SGDETALLE.CELLS[10,1] :='';
        SGDETALLE.CELLS[11,1] :='';
        SGDETALLE.CELLS[12,1] :='';
        SGDETALLE.CELLS[13,1] :='';
        SGDETALLE.CELLS[14,1] :='';
 END;

     FOR I := 0 TO sgdetabanco.ROWCOUNT DO
     BEGIN
                   sgdetabanco.CELLS[0,I]:='';
                   sgdetabanco.CELLS[1,I]:='';
                   sgdetabanco.CELLS[2,I]:='';

     END;
  WITH sgdetabanco DO
          BEGIN
        CELLS[0,0]:='Cod';
        CELLS[1,0]:='Numero';
        CELLS[2,0]:='Valor';
        END;


SGDETALLE.CELLS[0,1] :='';
SGDETALLE.CELLS[1,1] :='';
SGDETALLE.CELLS[2,1] :='';
SGDETALLE.CELLS[3,1] :='';
SGDETALLE.CELLS[4,1] :='';
SGDETALLE.CELLS[5,1] :='';
SGDETALLE.CELLS[6,1] :='';
SGDETALLE.CELLS[7,1] :='';
SGDETALLE.CELLS[8,1] :='';
SGDETALLE.CELLS[9,1] :='';
SGDETALLE.CELLS[10,1] :='';
SGDETALLE.CELLS[11,1] :='';
SGDETALLE.CELLS[12,1] :='';
SGDETALLE.CELLS[13,1] :='';
SGDETALLE.CELLS[14,1] :='';
mkperiodo.Enabled := false;

END;




PROCEDURE TFRMAUTOLIQUIDACIONMAGNETICA.FECHAS_PAGO;
VAR  DIAPAGO,MES,ANO : STRING;
DAYS: ARRAY[1..7] OF STRING;
ADATE: TDATETIME;
BEGIN
   DATAMODULE1.QRYTIPOS.DISABLECONTROLS;
    DATAMODULE1.QRYTIPOS.CLOSE;
    IF  EDTCLASEAPORTANTE.ITEMINDEX = 0 THEN
    BEGIN
    DATAMODULE1.QRYTIPOS.PARAMBYNAME('PTIPO').VALUE := 'G';
    DATAMODULE1.QRYTIPOS.PARAMBYNAME('PNUMERO').VALUE := TRIM(EDTDIGITO.TEXT);
    END;
    IF  EDTCLASEAPORTANTE.ITEMINDEX = 1 THEN
    BEGIN
        DATAMODULE1.QRYTIPOS.PARAMBYNAME('PTIPO').VALUE := 'P';
        DATAMODULE1.QRYTIPOS.PARAMBYNAME('PNUMERO').VALUE := TRIM(EDTDIGITO.TEXT);
    END;
    DATAMODULE1.QRYTIPOS.OPEN;
    DATAMODULE1.QRYTIPOS.ENABLECONTROLS;
    IF DATAMODULE1.QRYTIPOS.RECORDCOUNT > 0 THEN
    BEGIN
        DIAPAGO := TRIM(DATAMODULE1.QRYTIPOSDIA_HABIL.TEXT);
        MES:=(FORMATDATETIME('MM',STRTODATE(GLDATE)));
        ANO:=(FORMATDATETIME('YYYY',STRTODATE(GLDATE)));
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
        //SHOWMESSAGE(' IS A ' + DAYS[DAYOFWEEK(ADATE)]);
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

PROCEDURE TFRMAUTOLIQUIDACIONMAGNETICA.EDTVALEFECTIVOKEYPRESS(
  SENDER: TOBJECT; VAR KEY: CHAR);
BEGIN
 IF NOT (KEY IN ['0'..'9',#8])THEN
 BEGIN
 KEY := #0;
 SHOWMESSAGE('DIGITE SOLO NUMEROS');
 END;

END;

PROCEDURE TFRMAUTOLIQUIDACIONMAGNETICA.BTNLIMPIARCLICK(SENDER: TOBJECT);
BEGIN
LIMPIAR;
TRY
        IF OPABRIR.EXECUTE THEN
        BEGIN
        EDTNOMBREARCHIVO.TEXT := OPABRIR.FILENAME;
        END;
        EXCEPT
        RAISE EXCEPTION.CREATE('INSERTES  EL DISCO  EN LA  UNIDAD A:\');
END;

END;

PROCEDURE TFRMAUTOLIQUIDACIONMAGNETICA.BTGRABARPLANILLACLICK(SENDER: TOBJECT);
var i : integer;
BEGIN
 if edtvalcheque.Text > '0' then
  begin
   FOR I := 1 TO sgdetabanco.ROWCOUNT -2 DO
   BEGIN
    if  sgdetabanco.CELLS[0,i] = '' then
    begin
    ShowMessage(LowerCase('Falta Ingresar El codigo del Banco'));
    sgdetabanco.SetFocus;
    exit
    end;
    if  sgdetabanco.CELLS[1,i] = '' then
    begin
    ShowMessage(LowerCase('Falta Ingresar El numero del cheque o la  cuenta'));
    sgdetabanco.SetFocus;
    exit
    end;
    if  sgdetabanco.CELLS[2,i] = '' then
    begin
    ShowMessage(LowerCase('Falta Ingresar el valor del cheque'));
    sgdetabanco.SetFocus;
    exit
    end;
   end;
 end;

 IF CBBANCO.KeyValue > 0 THEN
        BEGIN
        EDIT4.Text := '0';

                IF STRTOFLOAT(EDTVALORPAGADO.TEXT) <> STRTOFLOAT(edtspcotizobligatoria.TEXT) THEN
                BEGIN
                          IF MESSAGEDLG (LowerCase(' EL VALOR DE LA PLANILLA  ES DIFERENTE AL CONSIGNADO, SERA GENERADA UNA  NOTA ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
                          BEGIN
                                    ComboBox1.ItemIndex := -1;
                                    EDIT4.Text := '0';
                                    IF STRTOFLOAT(EDTVALORPAGADO.TEXT) < STRTOFLOAT(edtspcotizobligatoria.TEXT) THEN
                                    BEGIN
                                    // debito
                                    ComboBox1.ItemIndex := 0;
                                    EDIT4.Text :=FloatToStr(STRTOFLOAT(edtspcotizobligatoria.TEXT) - STRTOFLOAT(EDTVALORPAGADO.TEXT));
                                    END
                                    ELSE
                                    //credito
                                    ComboBox1.ItemIndex := 1;
                                    IF STRTOFLOAT(EDTVALORPAGADO.TEXT) > STRTOFLOAT(edtspcotizobligatoria.TEXT) THEN
                                    BEGIN
                                    EDIT4.Text :=FLOATTOSTR( STRTOFLOAT(EDTVALORPAGADO.TEXT)- STRTOFLOAT(edtspcotizobligatoria.TEXT));
                                    END;

                                END
                      end;
                 end
                  ELSE
                  EXIT;
                  IF MESSAGEDLG (LowerCase(' Desea Grabar la  planilla ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
                  BEGIN
                  grabarplanilla;
                  RETIRAR_AFILIADOS;
                  FRMAUTOLIQUIDACIONMAGNETICA.Close;
                  end;



// grabar  la planilla


END;

FUNCTION TFRMAUTOLIQUIDACIONMAGNETICA.VALIDAR: BOOLEAN;
BEGIN
VALIDAR := FALSE;
 IF (CBBANCO.TEXT = '') OR (EDTNUMPLANILLA.TEXT = '') OR (EDTCUENTA.TEXT = '') OR  (EDTVALEFECTIVO.TEXT = '') OR (EDTVALCHEQUE.TEXT = '')  THEN
 BEGIN
    IF CBBANCO.TEXT = '' THEN
    BEGIN
      SHOWMESSAGE('FALTA  SELECIONAR  EL BANCO');
      VALIDAR := TRUE;
      CBBANCO.SETFOCUS
      END;
      IF EDTNUMPLANILLA.TEXT = '' THEN
      BEGIN
      SHOWMESSAGE('DIGITE  EL  NUMERO DE PLANILLA');
      VALIDAR := TRUE;
      EDTNUMPLANILLA.SETFOCUS;
      END;
      IF EDTCUENTA.TEXT = '' THEN
      BEGIN
      SHOWMESSAGE('DIGITE  EL NUMERO DE  LA  CUENTA DONDE  SE REALIZO LA  CONSIGNACION');
      VALIDAR := TRUE;
      EDTCUENTA.SETFOCUS;
      END;
      IF EDTVALEFECTIVO.TEXT = '' THEN
      BEGIN
      SHOWMESSAGE('VALOR CONSIGNADO  EN  EFECTIVO');
      VALIDAR := TRUE;
      EDTVALEFECTIVO.SETFOCUS;
      END;
      IF EDTVALCHEQUE.TEXT = '' THEN
      BEGIN
      SHOWMESSAGE('VALOR CONSIGNADO  EN  EFECTIVO');
      VALIDAR := TRUE;
      EDTVALCHEQUE.SETFOCUS;
      END;
    END;
 END;
PROCEDURE TFRMAUTOLIQUIDACIONMAGNETICA.CBBANCOCLICK(SENDER: TOBJECT);
BEGIN
IF CBBANCO.TEXT <> '' THEN
  BEGIN
    DATAMODULE1.QRYBANCOESP.DISABLECONTROLS;
    DATAMODULE1.QRYBANCOESP.CLOSE;
    DATAMODULE1.QRYBANCOESP.PREPARE;
    DATAMODULE1.QRYBANCOESP.PARAMBYNAME('PBANCO').VALUE := CBBANCO.KEYVALUE;
    DATAMODULE1.QRYBANCOESP.OPEN;
    DATAMODULE1.QRYBANCOESP.ENABLECONTROLS;
     IF DATAMODULE1.QRYBANCOESP.RECORDCOUNT > 0 THEN
     BEGIN
         EDTCUENTA.TEXT :=  DATAMODULE1.QRYBANCOESPCTA_BANCO.VALUE;
         btgrabarplanilla.Enabled := TRUE;
     END;
  END;

END;

PROCEDURE TFRMAUTOLIQUIDACIONMAGNETICA.DTFECHAPAGOEXIT(SENDER: TOBJECT);
BEGIN
        IF DTFECHAPAGO.DATE  = STRTODATE(gldate)+1 THEN
        BEGIN
        SHOWMESSAGE('DIGITE  LA FECHA DE  PAGO');
        DTFECHAPAGO.SETFOCUS;
        exit;
        END
        ELSE
        IF DTFECHAPAGO.DATE > STRTODATE(GLDATE) THEN
        BEGIN
                SHOWMESSAGE('LA  FECHA  DE  PAGO NO PUDE SER  MAYOR A LA FECHA ACTUAL');
                DTFECHAPAGO.SETFOCUS;
                DTFECHAPAGO.DATE := STRTODATE(gldate)+1;
                exit;
        END;
    if  cbtipoaporte.ItemIndex = 0 then
    begin
    cargar_archivo.Click;
    PageControl1.ActivePage := TabSheet2;
    end
    else
     if  cbtipoaporte.ItemIndex = 1 then
    begin
    edtperiodo.SetFocus;
    end;


END;

PROCEDURE TFRMAUTOLIQUIDACIONMAGNETICA.EDTNUMPLANILLACHANGE(
  SENDER: TOBJECT);
BEGIN
EDTVALEFECTIVO.TEXT := '0';
EDTVALCHEQUE.TEXT := '0';
END;

PROCEDURE TFRMAUTOLIQUIDACIONMAGNETICA.EDTVALEFECTIVOCHANGE(
  SENDER: TOBJECT);
BEGIN
IF (EDTVALEFECTIVO.TEXT <> '') AND(EDTVALCHEQUE.TEXT <> '') THEN
 BEGIN
 EDTVALORPAGADO.TEXT := FloatToStr((STRTOINT(EDTVALCHEQUE.TEXT)) + (STRTOINT(EDTVALEFECTIVO.TEXT)));
 BTGRABARPLANILLA.ENABLED := TRUE;
 END;
END;

PROCEDURE TFRMAUTOLIQUIDACIONMAGNETICA.EDTVALCHEQUECHANGE(SENDER: TOBJECT);
BEGIN
IF (EDTVALEFECTIVO.TEXT <> '') AND(EDTVALCHEQUE.TEXT <> '') THEN
 BEGIN
 EDTVALORPAGADO.TEXT := FloatToStr((STRTOINT(EDTVALCHEQUE.TEXT)) + (STRTOINT(EDTVALEFECTIVO.TEXT)));
 BTGRABARPLANILLA.ENABLED := TRUE;
 END;
END;

PROCEDURE TFRMAUTOLIQUIDACIONMAGNETICA.SALARIOMINIMO;
VAR ANO : STRING;
    FECHA : TDATE;
BEGIN
     FECHA  := STRTODATE('01/' + EDTPERIODO.TEXT);
     ANO:=(FORMATDATETIME('YYYY',FECHA));
     DATAMODULE1.QRYVALORESCOMPENSACION.CLOSE;
     DATAMODULE1.QRYVALORESCOMPENSACION.PARAMBYNAME('PANO').VALUE := STRTODATE('01/01/'+ ANO);
     DATAMODULE1.QRYVALORESCOMPENSACION.OPEN;
     GLSALARIOMINIMO := DATAMODULE1.QRYVALORESCOMPENSACIONSAL_MINIMO.VALUE;

END;

PROCEDURE TFRMAUTOLIQUIDACIONMAGNETICA.EDTNUMPLANILLAENTER(
  SENDER: TOBJECT);
BEGIN
{IF STRTOINT(EDTSPCOTIZOBLIGATORIA.TEXT) > 0 THEN
 BEGIN
        MKPERIODO.TEXT := GLPRESENTACION;
        DTFECHAPAGO.DATE := STRTODATE('01/' + MKPERIODO.TEXT);
        IF CBTIPOAPORTE.ITEMINDEX = 0 THEN
        BEGIN
        MKPERIODO.ENABLED := FALSE;
        MKPERIODO.TEXT := GLPRESENTACION;
        EDTPERIODO.ENABLED := FALSE;
        //EDTPERIODO.TEXT := PRESENTACION;
        END
        ELSE
                IF CBTIPOAPORTE.ITEMINDEX = 1 THEN
                BEGIN
                EDTPERIODO.CLEAR;
                MKPERIODO.ENABLED := FALSE;
                MKPERIODO.TEXT := GLPRESENTACION;
                EDTPERIODO.ENABLED := TRUE;
                END;

  END
  ELSE SHOWMESSAGE('NO ESTA  VALIDADO EL MEDIO  MAGNETICO');}
END;

PROCEDURE TFRMAUTOLIQUIDACIONMAGNETICA.CBTIPOAPORTEEXIT(SENDER: TOBJECT);
BEGIN
EDTPERIODO.CLEAR;
DTFECHAPAGO.DATE := strtodate(gldate) +1;
//DTFECHAPAGO.DATE := strtodate(inttostr(Strtoint(FloatToStr(STRTOINT(GLDIA)+1) + '/' + MKPERIODO.TEXT)));
        IF CBTIPOAPORTE.ITEMINDEX = 0 THEN
        BEGIN
        MKPERIODO.ENABLED := FALSE;
        MKPERIODO.TEXT := GLPRESENTACION;
        EDTPERIODO.ENABLED := FALSE;
        EDTPERIODO.TEXT := GLPRESENTACION;
        DTFECHAPAGO.SetFocus;
        END
        ELSE
                IF CBTIPOAPORTE.ITEMINDEX = 1 THEN
                BEGIN
                MKPERIODO.ENABLED := FALSE;
                MKPERIODO.TEXT := GLPRESENTACION;
                EDTPERIODO.ENABLED := TRUE;
                DTFECHAPAGO.SetFocus;
                END;


END;

PROCEDURE TFRMAUTOLIQUIDACIONMAGNETICA.EDTPERIODOEXIT(SENDER: TOBJECT);
VAR FECHACOMPENSA,FECHAPAGO,FECHACOMPENSA1 : TDATE;
BEGIN
TRY

IF EDTPERIODO.TEXT <> '__/____' THEN
FECHAPAGO := DTFECHAPAGO.DATE;
FECHACOMPENSA1  := StrToDateTime('01/' + EDTPERIODO.TEXT);

IF CBTIPOAPORTE.ITEMINDEX = 1 THEN
 BEGIN
   IF  StrToDateTime('01/' + EDTPERIODO.TEXT) >= StrToDateTime('01/' + MKPERIODO.TEXT) THEN
   BEGIN
    SHOWMESSAGE('EN LA ADICION EL PERIODO DE  COTIZACIONES  NO PUDE SER MAYOR AL DE  PRESENTACION');
   END
   else
   cargar_archivo.Click;
   PageControl1.ActivePage := TabSheet2;
  END;
  EXCEPT  // MENASJE  DE  LOS ERRORES
  //SHOWMESSAGE('ERROR AL CALCULAR LIQUIDACION');
   ON E: ECONVERTERROR DO
    BEGIN
     E.MESSAGE := 'EL PERIODO  ESTA MAL  DIGITADO O IMCOMPLETO';
       EDTPERIODO.SETFOCUS;
      RAISE;
    END;
   END;
END;

PROCEDURE TFRMAUTOLIQUIDACIONMAGNETICA.CERRAR1CLICK(SENDER: TOBJECT);
BEGIN
FRMAUTOLIQUIDACIONMAGNETICA.CLOSE;
END;

PROCEDURE TFRMAUTOLIQUIDACIONMAGNETICA.PAGOSPORAFILIADO1CLICK(
  SENDER: TOBJECT);
BEGIN
       FRMPAGOSAFILIADOS:=TFRMPAGOSAFILIADOS.CREATE(APPLICATION);
        TRY
        FRMPAGOSAFILIADOS.SHOW;
        //FINALLY
        EXCEPT
        FRMPAGOSAFILIADOS.FREE;
        END;

END;

PROCEDURE TFRMAUTOLIQUIDACIONMAGNETICA.PAGOSPOREMPRESA1CLICK(
  SENDER: TOBJECT);
BEGIN
        FRMPAGOSEMPRESA:=TFRMPAGOSEMPRESA.CREATE(APPLICATION);
        TRY
        FRMPAGOSEMPRESA.SHOW;
        //FINALLY
        EXCEPT
        FRMPAGOSEMPRESA.FREE;
        END;

END;

procedure TFRMAUTOLIQUIDACIONMAGNETICA.APPMESSAGE(var MSG: TMSG;
  var HANDLED: BOOLEAN);
begin
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
       END;
end;

procedure TFRMAUTOLIQUIDACIONMAGNETICA.RETIRAR_AFILIADOS;
var i,x : Integer;
begin
DataModule1.qrydetalle.Close;
DataModule1.qrydetalle.Prepare;
DataModule1.qrydetalle.RequestLive := false;
DataModule1.qrydetalle.sql.Clear;
DataModule1.qrydetalle.sql.add ('SELECT * FROM DBO.DET_PLANILLA_AUTOLIQUIDACION WHERE (NOV_RET = :"RET" OR NOV_TAA = :"TAA") AND NUM_PLANILLA = :"NUM_PLANILLA"');
DataModule1.qrydetalle.Params[0].AsString :=  'X';
DataModule1.qrydetalle.Params[1].AsString :=  'X';
DataModule1.qrydetalle.Params[2].AsString := EDTNUMPLANILLA.text;

DataModule1.qrydetalle.open;
     if DataModule1.qrydetalle.RecordCount > 0 then
     begin
        IF MESSAGEDLG(LowerCase('Esta  PLanilla  de  autoliquidaciones  tiene  afiliados  para  retirar desea retirarlos?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
        BEGIN

           for i := 1 to DataModule1.qrydetalle.RecordCount do
           begin
           DataModule1.qryautoliquidacion.Close;
           DataModule1.qryautoliquidacion.Prepare;
           DataModule1.qryautoliquidacion.RequestLive := false;
           DataModule1.qryautoliquidacion.sql.Clear;
           DataModule1.qryautoliquidacion.sql.add ('SELECT * FROM AUTOLIQUIDACION WHERE NUM_PLANILLA = :"PLANILLA"');
           DataModule1.qryautoliquidacion.Params[0].AsString := DataModule1.qrydetallenum_planilla.Value;
           DataModule1.qryautoliquidacion.open;
                 if   DataModule1.qryautoliquidacion.RecordCount = 1 then
                 begin
                      if DataModule1.qryautoliquidaciontip_declaracion.Value = 'D' then
                      begin
                      DataModule1.qryafiliadosempresa.Close;
                      DataModule1.qryafiliadosempresa.Prepare;
                      DataModule1.qryafiliadosempresa.sql.Clear;
                      DataModule1.qryafiliadosempresa.sql.add ('SELECT * FROM AFILIADOS_EMPRESAS WHERE TIP_DOCUMENTO_AFI = :"TIPO" AND NUM_DOCUMENTO_AFI = :"NUMERO" AND FEC_EGRESO_UNI IS NULL');
                      DataModule1.qryafiliadosempresa.Params[0].AsString := DataModule1.qrydetalleafi_tipo_doc.Value;
                      DataModule1.qryafiliadosempresa.Params[1].AsString := DataModule1.qrydetalleafi_numero_doc.Value;
                      DataModule1.qryafiliadosempresa.RequestLive := true;
                      DataModule1.qryafiliadosempresa.open;
                           if   DataModule1.qryafiliadosempresa.RecordCount = 1 then
                           begin
                           DataModule1.qryafiliadosempresa.Close;
                           DataModule1.qryafiliadosempresa.Prepare;
                           DataModule1.qryafiliadosempresa.sql.Clear;
                           DataModule1.qryafiliadosempresa.sql.add ('SELECT * FROM AFILIADOS_EMPRESAS WHERE TIP_DOCUMENTO_EMP = :"TIPOE" AND NUM_DOCUMENTO_EMP = :"EMPRESA" AND TIP_DOCUMENTO_AFI = :"TIPO" AND NUM_DOCUMENTO_AFI = :"NUMERO" AND FEC_EGRESO_UNI IS NULL');
                           DataModule1.qryafiliadosempresa.Params[0].AsString := DataModule1.qryautoliquidacionemp_tipo_doc.Value;
                           DataModule1.qryafiliadosempresa.Params[1].AsString := DataModule1.qryautoliquidacionemp_numero_doc.Value;
                           DataModule1.qryafiliadosempresa.Params[2].AsString := DataModule1.qrydetalleafi_tipo_doc.Value;
                           DataModule1.qryafiliadosempresa.Params[3].AsString := DataModule1.qrydetalleafi_numero_doc.Value;
                           DataModule1.qryafiliadosempresa.RequestLive := true;
                           DataModule1.qryafiliadosempresa.Open;
                           if DataModule1.qryafiliadosempresa.RecordCount = 1 then
                           begin
                           try
                           DataModule1.dtbdatamec.StartTransaction;
                           // cuando esta  en una   empresa
                           DataModule1.qryrelacion_afiliados.Close;
                           DataModule1.qryrelacion_afiliados.RequestLive := false;
                           DataModule1.qryrelacion_afiliados.Prepare;
                           DataModule1.qryrelacion_afiliados.sql.Clear;
                           DataModule1.qryrelacion_afiliados.sql.add ('SELECT * FROM RELACION_AFILIADOS WHERE TIP_DOCUMENTO_COT = :"TIPO" AND NUM_DOCUMENTO_COT = :"NUMERO" AND FEC_EXCLUSION_NOV IS NULL');
                           DataModule1.qryrelacion_afiliados.Params[0].AsString := DataModule1.qrydetalleafi_tipo_doc.Value;
                           DataModule1.qryrelacion_afiliados.Params[1].AsString := DataModule1.qrydetalleafi_numero_doc.Value;
                           DataModule1.qryrelacion_afiliados.open;
                                if  DataModule1.qryrelacion_afiliados.RecordCount > 0 then
                                begin
                                   for x := 0 to DataModule1.qryrelacion_afiliados.RecordCount do
                                   begin
                                   DataModule1.qryafiliadoss.Close;
                                   DataModule1.qryafiliadoss.Prepare;
                                   DataModule1.qryafiliadoss.sql.Clear;
                                   DataModule1.qryafiliadoss.sql.add ('SELECT * FROM AFILIADOS WHERE TIP_DOCUMENTO = :"TIPO" AND NUM_DOCUMENTO = :"NUMERO"');
                                   DataModule1.qryafiliadoss.Params[0].AsString := DataModule1.qryrelacion_afiliadostip_documento_ben.Value;
                                   DataModule1.qryafiliadoss.Params[1].AsString := DataModule1.qryrelacion_afiliadosnum_documento_ben.Value;
                                   DataModule1.qryafiliadoss.RequestLive := true;
                                   DataModule1.qryafiliadoss.open;
                                        if   DataModule1.qryafiliadoss.RecordCount > 0 then
                                        begin
                                        DataModule1.qrynovafiliados.Close;
                                        DataModule1.qrynovafiliados.sql.Clear;
                                        DataModule1.qrynovafiliados.sql.add ('INSERT INTO NOVEDADES_AFILIADOS ( NOV_CODIGO,TIP_DOCUMENTO,NUM_DOCUMENTO,COD_OFICINA,COD_REGIONAL,USU_TIPO_DOC,USU_NUMERO_DOC,FEC_NOVEDAD_AFIL,');
                                        DataModule1.qrynovafiliados.sql.add ('NOM_CAMPO,DAT_CAMPO_ANT,NOM_TABLA,DAT_CAMPO_DES,FEC_EVENTO,FEC_APLICATIVO,TIP_DOCUMENTO_EMP,NUM_DOCUMENTO_EMP,COD_SUCURSAL,NUM_PLANILLA,COD_NOVEDAD_AFIL)');
                                        DataModule1.qrynovafiliados.sql.add ('VALUES ( :"NOVEDAD",:"TIP_DOCUMENTO_BEN",:"NUM_DOCUMENTO_BEN",:"OFICINA",:"REGIONAL",:"TIPO_USUARIO",:"NUMERO_USUAIRO",:"FECHA_NOVEDAD",');
                                        DataModule1.qrynovafiliados.sql.add (':"NOMBRE_CAMPO ",:"DATO_ANTERIOR",:"TABLA",:"CAMPO",:"FECHA_NOVEDAD",:"FECHA_SISTEMA",:"TIP_DOC_EMP",:"NUM_DOC_EMP",:"COD_SUCURSAL",:"NUM_PLANILLA",'+'nov_afiliados.nextval'+')');
                                        DataModule1.qrynovafiliados.Params[0].AsString := '15';
                                        DataModule1.qrynovafiliados.Params[1].AsString := DataModule1.qryafiliadosstip_documento.Value;
                                        DataModule1.qrynovafiliados.Params[2].AsString := DataModule1.qryafiliadossnum_documento.Value;
                                        DataModule1.qrynovafiliados.Params[3].AsString := DataModule1.qryautoliquidacioncod_oficina.value;
                                        DataModule1.qrynovafiliados.Params[4].AsString := DataModule1.qryautoliquidacioncod_regional.value;
                                        DataModule1.qrynovafiliados.Params[5].AsString := DataModule1.qryautoliquidaciontip_doc_usuario.value;
                                        DataModule1.qrynovafiliados.Params[6].AsString := DataModule1.qryautoliquidacionnum_doc_usuario.value;
                                        DataModule1.qrynovafiliados.Params[7].AsDateTime := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qrynovafiliados.Params[8].AsString := '';
                                        DataModule1.qrynovafiliados.Params[9].AsString := '';
                                        DataModule1.qrynovafiliados.Params[10].AsString := 'AFILIADOS';
                                        DataModule1.qrynovafiliados.Params[11].AsString := 'ESTADO';
                                        DataModule1.qrynovafiliados.Params[12].AsDateTime := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qrynovafiliados.Params[13].AsDateTime := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qrynovafiliados.Params[14].AsString := DataModule1.qryautoliquidacionemp_tipo_doc.value;
                                        DataModule1.qrynovafiliados.Params[15].AsString := DataModule1.qryautoliquidacionemp_numero_doc.value;
                                        DataModule1.qrynovafiliados.Params[16].AsString := DataModule1.qryautoliquidacioncod_sucursal.value;
                                        DataModule1.qrynovafiliados.Params[17].AsString := DataModule1.qryautoliquidacionnum_planilla.value;
//                                        DataModule1.qrynovafiliados.Params[18].AsString := 'NOV_AFILIADOS.NEXTVAL';
                                        DataModule1.qrynovafiliados.RequestLive := true;
                                        DataModule1.qrynovafiliados.ExecSQL;
                                        DataModule1.qrynovafiliados.close;
                                        DataModule1.qryafiliadoss.Edit;
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
                                        DataModule1.qrynovafiliados.Params[0].AsString := '11';
                                        end
                                        else
                                        if DataModule1.qrydetallenov_taa.Value = 'X' then
                                        begin
                                        DataModule1.qrynovafiliados.Params[0].AsString := '10';
                                        end;
                                        DataModule1.qrynovafiliados.Params[1].AsString := DataModule1.qrydetalleafi_tipo_doc.Value;
                                        DataModule1.qrynovafiliados.Params[2].AsString := DataModule1.qrydetalleafi_numero_doc.Value;
                                        DataModule1.qrynovafiliados.Params[3].AsString := DataModule1.qryautoliquidacioncod_oficina.value;
                                        DataModule1.qrynovafiliados.Params[4].AsString := DataModule1.qryautoliquidacioncod_regional.value;
                                        DataModule1.qrynovafiliados.Params[5].AsString := DataModule1.qryautoliquidaciontip_doc_usuario.value;
                                        DataModule1.qrynovafiliados.Params[6].AsString := DataModule1.qryautoliquidacionnum_doc_usuario.value;
                                        DataModule1.qrynovafiliados.Params[7].AsDateTime := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qrynovafiliados.Params[8].AsString := '';
                                        DataModule1.qrynovafiliados.Params[9].AsString := '';
                                        DataModule1.qrynovafiliados.Params[10].AsString := 'AFILIADOS_EMPRESAS';
                                        DataModule1.qrynovafiliados.Params[11].AsString := 'ESTADO';
                                        DataModule1.qrynovafiliados.Params[12].AsDateTime := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qrynovafiliados.Params[13].AsDateTime := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qrynovafiliados.Params[14].AsString := DataModule1.qryautoliquidacionemp_tipo_doc.value;
                                        DataModule1.qrynovafiliados.Params[15].AsString := DataModule1.qryautoliquidacionemp_numero_doc.value;
                                        DataModule1.qrynovafiliados.Params[16].AsString := DataModule1.qryautoliquidacioncod_sucursal.value;
                                        DataModule1.qrynovafiliados.Params[17].AsString := DataModule1.qryautoliquidacionnum_planilla.value;
                                        DataModule1.qrynovafiliados.RequestLive := true;
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
                                        DataModule1.qryrelacion_afiliados.Params[0].AsString :='I';
                                        DataModule1.qryrelacion_afiliados.Params[1].AsDateTime := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qryrelacion_afiliados.Params[2].AsString := DataModule1.qrydetalleafi_tipo_doc.Value;
                                        DataModule1.qryrelacion_afiliados.Params[3].AsString := DataModule1.qrydetalleafi_numero_doc.Value;
                                        DataModule1.qryrelacion_afiliados.RequestLive := true;
                                        DataModule1.qryrelacion_afiliados.ExecSQL;
                                        DataModule1.qryrelacion_afiliados.Close;

                                        DataModule1.qryafiliadosempresa.Close;
                                        DataModule1.qryafiliadosempresa.Prepare;
                                        DataModule1.qryafiliadosempresa.sql.Clear;
                                        DataModule1.qryafiliadosempresa.sql.add ('UPDATE  AFILIADOS_EMPRESAS SET COD_ESTADO = :"ESTADO",FEC_EGRESO_UNI = :"FECHA" WHERE TIP_DOCUMENTO_EMP = :"TIPOE" AND NUM_DOCUMENTO_EMP = :"EMPRESA" AND TIP_DOCUMENTO_AFI = :"TIPO" AND NUM_DOCUMENTO_AFI = :"NUMERO" AND FEC_EGRESO_UNI IS NULL');
                                        DataModule1.qryafiliadosempresa.Params[0].AsString := 'I';
                                        DataModule1.qryafiliadosempresa.Params[1].AsDateTime := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qryafiliadosempresa.Params[2].AsString := DataModule1.qryautoliquidacionEMP_TIPO_DOC.Value;
                                        DataModule1.qryafiliadosempresa.Params[3].AsString := DataModule1.qryautoliquidacionemp_numero_doc.Value;
                                        DataModule1.qryafiliadosempresa.Params[4].AsString := DataModule1.qrydetalleafi_tipo_doc.Value;
                                        DataModule1.qryafiliadosempresa.Params[5].AsString := DataModule1.qrydetalleafi_numero_doc.Value;
                                        DataModule1.qryafiliadosempresa.RequestLive := true;
                                        DataModule1.qryafiliadosempresa.ExecSQL;

                             DataModule1.dtbdatamec.Commit;

                           except
                           DataModule1.dtbdatamec.Rollback;
                           showMessage('No se puede pudo retirar  el afiliado por planilla');
                           raise;
                           end;
                           end;
                           end
                           else
                           if   DataModule1.qryafiliadosempresa.RecordCount > 1 then
                           begin
                           // cuando esta  en mas  de  una  empresa
                           DataModule1.qryafiliadosempresa.Close;
                           DataModule1.qryafiliadosempresa.RequestLive := false;
                           DataModule1.qryafiliadosempresa.Prepare;
                           DataModule1.qryafiliadosempresa.sql.Clear;
                           DataModule1.qryafiliadosempresa.sql.add ('SELECT * FROM AFILIADOS_EMPRESAS WHERE TIP_DOCUMENTO_EMP = :"TIPOE" AND NUM_DOCUMENTO_EMP = :"EMPRESA" AND TIP_DOCUMENTO_AFI = :"TIPO" AND NUM_DOCUMENTO_AFI = :"NUMERO" AND FEC_EGRESO_UNI IS NULL');
                           DataModule1.qryafiliadosempresa.Params[0].AsString := DataModule1.qryautoliquidacionemp_tipo_doc.Value;
                           DataModule1.qryafiliadosempresa.Params[1].AsString := DataModule1.qryautoliquidacionemp_numero_doc.Value;
                           DataModule1.qryafiliadosempresa.Params[2].AsString := DataModule1.qrydetalleafi_tipo_doc.Value;
                           DataModule1.qryafiliadosempresa.Params[3].AsString := DataModule1.qrydetalleafi_numero_doc.Value;

                           DataModule1.qryafiliadosempresa.Open;
                             if DataModule1.qryafiliadosempresa.RecordCount = 1 then
                             begin
                             try
                             DataModule1.dtbdatamec.StartTransaction;
                                        DataModule1.qrynovafiliados.Close;
                                        DataModule1.qrynovafiliados.sql.add ('INSERT INTO NOVEDADES_AFILIADOS ( NOV_CODIGO,TIP_DOCUMENTO,NUM_DOCUMENTO,COD_OFICINA,COD_REGIONAL,USU_TIPO_DOC,USU_NUMERO_DOC,FEC_NOVEDAD_AFIL,');
                                        DataModule1.qrynovafiliados.sql.add ('NOM_CAMPO,DAT_CAMPO_ANT,NOM_TABLA,DAT_CAMPO_DES,FEC_EVENTO,FEC_APLICATIVO,TIP_DOCUMENTO_EMP,NUM_DOCUMENTO_EMP,COD_SUCURSAL,NUM_PLANILLA,COD_NOVEDAD_AFIL)');
                                        DataModule1.qrynovafiliados.sql.add ('VALUES ( :"NOVEDAD",:"TIP_DOCUMENTO_BEN",:"NUM_DOCUMENTO_BEN",:"OFICINA",:"REGIONAL",:"TIPO_USUARIO",:"NUMERO_USUAIRO",:"FECHA_NOVEDAD",');
                                        DataModule1.qrynovafiliados.sql.add (':"NOMBRE_CAMPO ",:"DATO_ANTERIOR",:"TABLA",:"CAMPO",:"FECHA_NOVEDAD",:"FECHA_SISTEMA",:"TIP_DOC_EMP",:"NUM_DOC_EMP",:"COD_SUCURSAL",:"NUM_PLANILLA",'+'nov_afiliados.nextval'+')');
                                        if DataModule1.qrydetallenov_ret.Value = 'X' then
                                        begin
                                        DataModule1.qrynovafiliados.Params[0].AsString := '11';
                                        end
                                        else
                                        if DataModule1.qrydetallenov_taa.Value = 'X' then
                                        begin
                                        DataModule1.qrynovafiliados.Params[0].AsString := '10';
                                        end;
                                        DataModule1.qrynovafiliados.Params[1].AsString := DataModule1.qrydetalleafi_tipo_doc.Value;
                                        DataModule1.qrynovafiliados.Params[2].AsString := DataModule1.qrydetalleafi_numero_doc.Value;
                                        DataModule1.qrynovafiliados.Params[3].AsString := DataModule1.qryautoliquidacioncod_oficina.value;
                                        DataModule1.qrynovafiliados.Params[4].AsString := DataModule1.qryautoliquidacioncod_regional.value;
                                        DataModule1.qrynovafiliados.Params[5].AsString := DataModule1.qryautoliquidaciontip_doc_usuario.value;
                                        DataModule1.qrynovafiliados.Params[6].AsString := DataModule1.qryautoliquidacionnum_doc_usuario.value;
                                        DataModule1.qrynovafiliados.Params[7].AsDateTime := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qrynovafiliados.Params[8].AsString := '';
                                        DataModule1.qrynovafiliados.Params[9].AsString := '';
                                        DataModule1.qrynovafiliados.Params[10].AsString := 'AFILIADOS_EMPRESA';
                                        DataModule1.qrynovafiliados.Params[11].AsString := 'ESTADO';
                                        DataModule1.qrynovafiliados.Params[12].AsDateTime := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qrynovafiliados.Params[13].AsDateTime := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qrynovafiliados.Params[14].AsString := DataModule1.qryautoliquidacionemp_tipo_doc.value;
                                        DataModule1.qrynovafiliados.Params[15].AsString := DataModule1.qryautoliquidacionemp_numero_doc.value;
                                        DataModule1.qrynovafiliados.Params[16].AsString := DataModule1.qryautoliquidacioncod_sucursal.value;
                                        DataModule1.qrynovafiliados.Params[17].AsString := DataModule1.qryautoliquidacionnum_planilla.value;
                                        //DataModule1.qrynovafiliados.Params[18].AsString := qrynovafiliados.NextVAL;
                                        DataModule1.qrynovafiliados.RequestLive := true;
                                        DataModule1.qrynovafiliados.ExecSQL;
                                        DataModule1.qrynovafiliados.close;

                                        DataModule1.qryafiliadosempresa.Close;
                                        DataModule1.qryafiliadosempresa.Prepare;
                                        DataModule1.qryafiliadosempresa.sql.Clear;
                                        DataModule1.qryafiliadosempresa.sql.add ('UPDATE  AFILIADOS_EMPRESAS SET COD_ESTADO = :"ESTADO",FEC_EGRESO_UNI = :"FECHA" WHERE TIP_DOCUMENTO_EMP = :"TIPOE" AND NUM_DOCUMENTO_EMP = :"EMPRESA" AND TIP_DOCUMENTO_AFI = :"TIPO" AND NUM_DOCUMENTO_AFI = :"NUMERO" AND FEC_EGRESO_UNI IS NULL');
                                        DataModule1.qryafiliadosempresa.Params[0].AsString := 'I';
                                        DataModule1.qryafiliadosempresa.Params[1].AsDateTime := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + edtperiodo.text)))+ '/' + edtperiodo.text);
                                        DataModule1.qryafiliadosempresa.Params[2].AsString := DataModule1.qryautoliquidacionEMP_TIPO_DOC.Value;
                                        DataModule1.qryafiliadosempresa.Params[3].AsString := DataModule1.qryautoliquidacionemp_numero_doc.Value;
                                        DataModule1.qryafiliadosempresa.Params[4].AsString := DataModule1.qrydetalleafi_tipo_doc.Value;
                                        DataModule1.qryafiliadosempresa.Params[5].AsString := DataModule1.qrydetalleafi_numero_doc.Value;
                                        DataModule1.qryafiliadosempresa.RequestLive := true;
                                        DataModule1.qryafiliadosempresa.ExecSQL;

                                        DataModule1.qrydetalle.FindNext;

                             DataModule1.qryafiliadosempresa.Post;
                             DataModule1.qryafiliadosempresa.Close;
                             DataModule1.dtbdatamec.Commit;
                             except
                             DataModule1.dtbdatamec.Rollback;
                             showMessage('No se puede  Borrar  el Pago del Afiliado');
                             raise;
                             end;

                           end;
                       end;
                     end;
          end;  end;
       end;
    END;
end;

procedure TFRMAUTOLIQUIDACIONMAGNETICA.edtvalefectivoExit(Sender: TObject);
begin
IF EDTVALCHEQUE.TEXT <> '' THEN
 BEGIN
 EDTVALORPAGADO.TEXT := FLOATTOSTR((STRTOINT(EDTVALCHEQUE.TEXT)) + (STRTOINT(EDTVALEFECTIVO.TEXT)));
 BTGRABARPLANILLA.ENABLED := TRUE;
 sgdetabanco.Enabled := false;
  END;
end;

procedure TFRMAUTOLIQUIDACIONMAGNETICA.edtvalchequeExit(Sender: TObject);
begin
IF EDTVALCHEQUE.TEXT <> '' THEN
 BEGIN
 EDTVALORPAGADO.TEXT := FLOATTOSTR((STRTOINT(EDTVALCHEQUE.TEXT)) + (STRTOINT(EDTVALEFECTIVO.TEXT)));
 BTGRABARPLANILLA.ENABLED := TRUE;
        IF EDTVALCHEQUE.TEXT > '0' THEN
        BEGIN
       ShowMessage(LowerCase('Ingrese los  numero de los  cheques y los  valores'));
       sgdetabanco.ROWCOUNT := sgdetabanco.ROWCOUNT +1;
       sgdetabanco.Enabled := TRUE;
       sgdetabanco.SetFocus;
       end
       else
       BTGRABARPLANILLA.SetFocus;

  END;

end;

procedure TFRMAUTOLIQUIDACIONMAGNETICA.grabarplanilla;
VAR I,J : INTEGER;
begin
IF VALIDAR = FALSE THEN
BEGIN

 TRY
 DATAMODULE1.DTBDATAMEC.STARTTRANSACTION;
 DATAMODULE1.QRYAUTOLIQUIDACION.CACHEDUPDATES := TRUE;
 DATAMODULE1.QRYPAGOUPC.CACHEDUPDATES := TRUE;
 DATAMODULE1.QRYCARTERA.CACHEDUPDATES := TRUE;
 DATAMODULE1.QRYDETALLE.CACHEDUPDATES := TRUE;
 DATAMODULE1.qrynotasautoliquidacion.CACHEDUPDATES := TRUE;
 DATAMODULE1.qrydetallepago.CACHEDUPDATES := TRUE;
 DATAMODULE1.QRYDETINCAPACIDAD.CACHEDUPDATES := TRUE;
 DATAMODULE1.QRYAUTOLIQUIDACION.CLOSE;
 DATAMODULE1.QRYAUTOLIQUIDACION.PREPARE;
 DATAMODULE1.QRYAUTOLIQUIDACION.SQL.CLEAR;
 DATAMODULE1.QRYAUTOLIQUIDACION.SQL.ADD('SELECT * FROM AUTOLIQUIDACION  WHERE  NUM_PLANILLA  = :PLANILLA');
 DATAMODULE1.QRYAUTOLIQUIDACION.PARAMS[0].ASSTRING := EDTNUMPLANILLA.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.REQUESTLIVE := TRUE;
 DATAMODULE1.QRYAUTOLIQUIDACION.OPEN;

   IF DATAMODULE1.QRYAUTOLIQUIDACION.RECORDCOUNT > 0 THEN
   BEGIN
   DATAMODULE1.QRYAUTOLIQUIDACION.EDIT;
    END
    ELSE IF DATAMODULE1.QRYAUTOLIQUIDACION.RECORDCOUNT = 0 THEN
    BEGIN
     DATAMODULE1.QRYAUTOLIQUIDACION.INSERT;
     END;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('NUM_PLANILLA').VALUE := EDTNUMPLANILLA.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('EMP_TIPO_DOC').VALUE := CBTIPOIDEEMPRESA.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('EMP_NUMERO_DOC').VALUE := EDTNUMDOCEMPRESA.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('COD_SUCURSAL').VALUE := EDTSUCURSAL.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TIP_DECLARACION').VALUE := CBTIPOAPORTE.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('FEC_PAGO').VALUE := DTFECHAPAGO.DATE;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('NUM_PLANILLA_CORR').VALUE := EDTNUMCORRECION.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('PER_COTIZACION').VALUE := EDTPERIODO.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('PER_PRESENTACION').VALUE := MKPERIODO.TEXT;
 // GRABAR  CONSOLIDADO DE LA  PLANILLA
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_PLANILLA').VALUE := EDTCOTIZOBLIGATORIA.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_APORTE_PER').VALUE := EDTCOTIZOBLIGATORIA.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_INCAPACIDAD').VALUE := EDTMINCOTIZACIONOBLIGATORIA.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_LICENCIAS').VALUE := EDTLMCOTOBLIGATORIA.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_APORTE').VALUE := EDTNCOTIZOBLIGATORIA.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('INT_MORA').VALUE := EDTICOTOBLIGATORIA.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_APORTE_MMORA').VALUE := EDTIMCOTOBLIGATORIA.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_SALDO_FAV').VALUE := EDTSFCOTOBLIGATORIA.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_UPC').VALUE := EDTSPVALUPC.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_PAGADO').VALUE := STRTOINT(EDTSPCOTIZOBLIGATORIA.TEXT) + STRTOINT(EDTSPVALUPC.TEXT);
 // LUGAR  DE  CONSIGNACION
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('COD_BANCO').VALUE    := CBBANCO.KeyValue;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('NUM_CUENTA').VALUE   := EDTCUENTA.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('VAL_EFECTIVO').VALUE := EDTVALEFECTIVO.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('VAL_CHEQUE').VALUE   := EDTVALCHEQUE.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('EST_PLANILLA').VALUE := 'CIE';
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('COD_OFICINA').VALUE  := GLOFICINA;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('COD_REGIONAL').VALUE  := GLREGIONAL;
 DATAMODULE1.QRYAUTOLIQUIDACIONFEC_DIGITACION.VALUE := STRTODATE(GLDATE);
 DATAMODULE1.QRYAUTOLIQUIDACIONTIP_DOC_USUARIO.VALUE := GLTIPO;
 DATAMODULE1.QRYAUTOLIQUIDACIONNUM_DOC_USUARIO.VALUE := GLNUMERO;
 DATAMODULE1.QRYAUTOLIQUIDACIONCRU_CONCILIACION.VALUE := 'N';



 DataModule1.qryestrato.close;
           DataModule1.qryestrato.sql.clear;
           DataModule1.qryestrato.sql.add('SELECT * FROM EST_BANCARIO_AUTO');
           DataModule1.qryestrato.sql.add('WHERE COD_BANCO = :"COD_BANCO" AND NUM_DOCUMENTO= :"NUM_DOCUMENTO" AND NUM_PLANILLA = :"NUM_PLANILLA" AND FEC_RECAUDO = :"FEC_RECAUDO" AND VAL_CONSIGNACION = :"VAL_CONSIGNACION" AND EST_CONCILIACION = :"ESTADO" "');
           DataModule1.qryestrato.Params[0].AsString := cbbanco.KeyValue;
           DataModule1.qryestrato.Params[1].AsString := trim(edtnumdocempresa.text);
           DataModule1.qryestrato.Params[2].AsString := trim(edtnumplanilla.text);
           DataModule1.qryestrato.Params[3].Asdate := dtfechapago.Date;
           DataModule1.qryestrato.Params[4].AsFloat := strtofloat(EDTVALORPAGADO.text);
           DataModule1.qryestrato.Params[5].AsString := 'N';
           //DataModule1.qryestrato.Prepare;
           DataModule1.qryestrato.RequestLive := true;
           DataModule1.qryestrato.Open;
                 if DataModule1.qryestrato.RecordCount = 1 then
                 begin
                 DATAMODULE1.QRYESTRATO.CACHEDUPDATES := TRUE;
                 DataModule1.qryestrato.Edit;
                 DataModule1.qryautoliquidacionCRU_CONCILIACION.Value := 'S';
                 DataModule1.qryestratoEST_CONCILIACION.Value := 'S';
                 DataModule1.qryestratoFEC_PLANILLA_CON.Value := strtodate(GLDATE);
                 DataModule1.qryestrato.Post;
                 DATAMODULE1.qryestrato.COMMITUPDATES;
                 DATAMODULE1.qryestrato.CLOSE;
                 end
                 else
                             begin
                             DataModule1.qryestrato.close;
                             DataModule1.qryestrato.sql.clear;
                             DataModule1.qryestrato.sql.add('SELECT * FROM EST_BANCARIO_AUTO');
                             DataModule1.qryestrato.sql.add('WHERE COD_BANCO = :"COD_BANCO" AND NUM_PLANILLA = :"NUM_PLANILLA" AND FEC_RECAUDO = :"FEC_RECAUDO" AND VAL_CONSIGNACION = :"VAL_CONSIGNACION" AND EST_CONCILIACION = :"ESTADO"');
                             DataModule1.qryestrato.Params[0].AsString := cbbanco.KeyValue;
                             DataModule1.qryestrato.Params[1].AsString := trim(edtnumplanilla.text);
                             DataModule1.qryestrato.Params[2].Asdate := dtfechapago.Date;
                             DataModule1.qryestrato.Params[3].AsFloat := strtofloat(EDTVALORPAGADO.text);
                             DataModule1.qryestrato.Params[4].AsString := 'N';
                             //DataModule1.qryestrato.Prepare;
                             DataModule1.qryestrato.RequestLive := true;
                             DataModule1.qryestrato.Open;
                                   if DataModule1.qryestrato.RecordCount = 1 then
                                   begin
                                   DATAMODULE1.QRYESTRATO.CACHEDUPDATES := TRUE;
                                   DataModule1.qryestrato.Edit;
                                   DataModule1.qryestratoEST_CONCILIACION.Value := 'S';
                                   DataModule1.qryestratoNUM_DOCUMENTO.Value := TRIM(edtnumdocempresa.Text);
                                   DataModule1.qryautoliquidacionCRU_CONCILIACION.Value := 'S';
                                   DataModule1.qryestratoFEC_PLANILLA_CON.Value := strtodate(GLDATE);
                                   DataModule1.qryestrato.Post;
                                   DATAMODULE1.qryestrato.COMMITUPDATES;
                                   DATAMODULE1.qryestrato.CLOSE;
                                   end
                                   ELSE
                                        begin
                                         DataModule1.qryestrato.close;
                                         DataModule1.qryestrato.Prepare;
                                         DataModule1.qryestrato.sql.clear;
                                         DataModule1.qryestrato.sql.add('SELECT * FROM EST_BANCARIO_AUTO');
                                         DataModule1.qryestrato.sql.add('WHERE COD_BANCO = :"COD_BANCO" AND NUM_DOCUMENTO= :"NUM_DOCUMENTO" AND FEC_RECAUDO = :"FEC_RECAUDO" AND VAL_CONSIGNACION = :"VAL_CONSIGNACION" AND EST_CONCILIACION = :"ESTADO" "');
                                         DataModule1.qryestrato.Params[0].AsString := cbbanco.KeyValue;
                                         DataModule1.qryestrato.Params[1].AsString := trim(edtnumdocempresa.text);
                                         DataModule1.qryestrato.Params[2].Asdate := dtfechapago.Date;
                                         DataModule1.qryestrato.Params[3].AsFloat := strtofloat(EDTVALORPAGADO.text);
                                         DataModule1.qryestrato.Params[4].AsString := 'N';
                                         DataModule1.qryestrato.RequestLive := true;
                                         DataModule1.qryestrato.Open;
                                               if DataModule1.qryestrato.RecordCount = 1 then
                                               begin
                                               DATAMODULE1.QRYESTRATO.CACHEDUPDATES := TRUE;
                                               DataModule1.qryestrato.Edit;
                                               DataModule1.qryestratoEST_CONCILIACION.Value := 'S';
                                               DataModule1.qryestratoNUM_PLANILLA.Value := TRIM(edtnumplanilla.Text);
                                               DataModule1.qryautoliquidacionCRU_CONCILIACION.Value := 'S';
                                               DataModule1.qryestratoFEC_PLANILLA_CON.Value := strtodate(GLDATE);
                                               DataModule1.qryestrato.Post;
                                               DATAMODULE1.qryestrato.COMMITUPDATES;
                                               DATAMODULE1.qryestrato.CLOSE;
                                               end;
                                     END;
                             end;


 DATAMODULE1.QRYAUTOLIQUIDACION.POST;
 DATAMODULE1.QRYAUTOLIQUIDACION.COMMITUPDATES;
 DATAMODULE1.QRYAUTOLIQUIDACION.CLOSE;


 // GRABAR  DETALLE  DE  LA  PLANILLA

    PBRGRABAR.MIN := 0;
    PBRGRABAR.MAX :=  SGDETALLE.ROWCOUNT -2;
    PBRGRABAR.POSITION := 0;
    DATAMODULE1.QRYDETALLE.OPEN;

       FOR I := 1 TO SGDETALLE.ROWCOUNT -2 DO
        BEGIN
        if  TRIM(SGDETALLE.CELLS[1,I]) <> '' then
        begin
        DATAMODULE1.QRYDETALLE.CLOSE;
        DATAMODULE1.QRYDETALLE.PREPARE;
        DATAMODULE1.QRYDETALLE.SQL.CLEAR;
        DATAMODULE1.QRYDETALLE.SQL.ADD('SELECT * FROM DBO.DET_PLANILLA_AUTOLIQUIDACION  WHERE  NUM_PLANILLA  = :"PLANILLA" AND AFI_TIPO_DOC = :"CC" AND AFI_NUMERO_DOC = :"NUMERO"');
        DATAMODULE1.QRYDETALLE.PARAMS[0].ASSTRING := EDTNUMPLANILLA.TEXT;
        DATAMODULE1.QRYDETALLE.PARAMS[1].ASSTRING := TRIM(SGDETALLE.CELLS[1,I]);
        DATAMODULE1.QRYDETALLE.PARAMS[2].ASSTRING := TRIM(SGDETALLE.CELLS[2,I]);
        DATAMODULE1.QRYDETALLE.REQUESTLIVE := TRUE;
        DATAMODULE1.QRYDETALLE.OPEN;
        IF DATAMODULE1.QRYDETALLE.RECORDCOUNT = 1 THEN
        BEGIN
        DATAMODULE1.QRYDETALLE.EDIT;
        END
        ELSE
        IF DATAMODULE1.QRYDETALLE.RECORDCOUNT = 0 THEN
        BEGIN
        DATAMODULE1.QRYDETALLE.INSERT;
        END;

        DATAMODULE1.QRYDETALLE.FIELDBYNAME('NUM_PLANILLA').VALUE := EDTNUMPLANILLA.TEXT;
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('AFI_TIPO_DOC').VALUE :=SGDETALLE.CELLS[1,I];
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('AFI_NUMERO_DOC').VALUE :=SGDETALLE.CELLS[2,I];
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_ING').VALUE :=SGDETALLE.CELLS[4,I];
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_RET').VALUE :=SGDETALLE.CELLS[5,I];
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_TDA').VALUE :=SGDETALLE.CELLS[6,I];
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_TAA').VALUE :=SGDETALLE.CELLS[7,I];
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_VSP').VALUE :=SGDETALLE.CELLS[8,I];
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_VST').VALUE :=SGDETALLE.CELLS[9,I];
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_SLN').VALUE :=SGDETALLE.CELLS[10,I];
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_IGE').VALUE :=SGDETALLE.CELLS[11,I];
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_LMA').VALUE :=SGDETALLE.CELLS[12,I];
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('NOV_VAC').VALUE :=SGDETALLE.CELLS[13,I];
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('DIA_COTIZADOS').VALUE :=SGDETALLE.CELLS[14,I];
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('SAL_BASE').VALUE :=SGDETALLE.CELLS[15,I];
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('VAL_NETO_NOV').VALUE :=SGDETALLE.CELLS[16,I];
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('ING_BASE_COT').VALUE :=SGDETALLE.CELLS[17,I];
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('COT_OBLIGATORIA').VALUE :=SGDETALLE.CELLS[18,I];
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('NUM_INCAPACIDAD_EGR').VALUE :=SGDETALLE.CELLS[19,I];
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('VAL_INCAPACIDAD_EGR').VALUE :=SGDETALLE.CELLS[20,I];
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('NUM_LICENCIA_MAT').VALUE := SGDETALLE.CELLS[21,I];
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('VAL_LICENCIA_MAT').VALUE :=SGDETALLE.CELLS[22,I];
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('VAL_UPC_ADI').VALUE :=SGDETALLE.CELLS[23,I];
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('VAL_TOTAL_COT').VALUE :=SGDETALLE.CELLS[24,I];
        IF  SGDETALLE.CELLS[25,I] = '' THEN
         BEGIN
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('DET_ESTADO').VALUE := 'CIE';
        END
        ELSE
        DATAMODULE1.QRYDETALLE.FIELDBYNAME('DET_ESTADO').VALUE := SGDETALLE.CELLS[25,I];

        DATAMODULE1.QRYDETALLEPER_COTIZACION.VALUE := EDTPERIODO.TEXT;
        DATAMODULE1.QRYDETALLEPER_PRESENTACION.VALUE := MKPERIODO.TEXT;
        PBRGRABAR.POSITION := PBRGRABAR.POSITION + 1;
        FRMAUTOLIQUIDACIONMAGNETICA.REFRESH;
        DATAMODULE1.QRYDETALLE.POST;
        DATAMODULE1.QRYDETALLE.COMMITUPDATES;
        DATAMODULE1.QRYDETALLE.CLOSE;
        END;
       end;
        // PAGO  APORTES  CUANDO PAGAN UPC  ADICINAL  EN LA PLANILLA DE  AUTOLIQUIDACION
  FOR I := 1 TO SGUPC.ROWCOUNT -2 DO
  BEGIN
    IF SGUPC.CELLS[8,I] = 'P' THEN
    BEGIN
    DATAMODULE1.QRYPAGOUPC.CLOSE;
    DATAMODULE1.QRYPAGOUPC.PREPARE;
    DATAMODULE1.QRYPAGOUPC.SQL.CLEAR;
    DATAMODULE1.QRYPAGOUPC.SQL.ADD('SELECT * FROM DBO.DET_PAGO_UPC_ADICIONAL WHERE NUM_PLANILLA =:"NUM_PLANILLA" AND AFI_TIP_DOCUMENTO = :"TIPO_COTIZA" AND AFI_NUM_DOCUMENTO = :"NUM_COTIZA" AND AFI_TIP_DOC_ADICONAL = :"TIPO_UPC" AND AFI_NUM_DOC_ADICONAL = :"NUM_UPC"');
    DATAMODULE1.QRYPAGOUPC.PARAMS[0].ASSTRING := TRIM(EDTNUMPLANILLA.TEXT);
    DATAMODULE1.QRYPAGOUPC.PARAMS[1].ASSTRING := TRIM(SGUPC.CELLS[0,I]);
    DATAMODULE1.QRYPAGOUPC.PARAMS[2].ASSTRING := TRIM(SGUPC.CELLS[1,I]);
    DATAMODULE1.QRYPAGOUPC.PARAMS[3].ASSTRING := TRIM(SGUPC.CELLS[2,I]);
    DATAMODULE1.QRYPAGOUPC.PARAMS[4].ASSTRING := TRIM(SGUPC.CELLS[3,I]);
    DATAMODULE1.QRYPAGOUPC.REQUESTLIVE := TRUE;
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
        DATAMODULE1.QRYPAGOUPCNUM_PLANILLA.VALUE := TRIM(EDTNUMPLANILLA.TEXT);
        DATAMODULE1.QRYPAGOUPCAFI_TIP_DOCUMENTO.VALUE :=  TRIM(SGUPC.CELLS[0,I]);
        DATAMODULE1.QRYPAGOUPCAFI_NUM_DOCUMENTO.VALUE := TRIM(SGUPC.CELLS[1,I]);
        DATAMODULE1.QRYPAGOUPCAFI_TIP_DOC_ADICIONAL.VALUE := TRIM(SGUPC.CELLS[2,I]);
        DATAMODULE1.QRYPAGOUPCAFI_NUM_DOC_ADICIONAL.VALUE := TRIM(SGUPC.CELLS[3,I]);
        DATAMODULE1.QRYPAGOUPCVAL_PAGADO.VALUE := STRTOINT(SGUPC.CELLS[7,I]);
        DATAMODULE1.QRYPAGOUPCPER_COTIZACION.VALUE := TRIM(EDTPERIODO.TEXT);
        DATAMODULE1.QRYPAGOUPCPER_PRESENTACION.VALUE := TRIM(MKPERIODO.TEXT);
        FRMAUTOLIQUIDACIONMAGNETICA.REFRESH;
        DATAMODULE1.QRYPAGOUPC.POST;
        DATAMODULE1.QRYPAGOUPC.COMMITUPDATES;
        DATAMODULE1.QRYPAGOUPC.CLOSE;

     END
     // CUANDO  TIENE UPC  ADICIONAL Y NO A  PAGADO LOS APORTES  DEL PERIODO GENERA  CARTERA MOROSA
        ELSE IF SGUPC.CELLS[8,I] = 'C' THEN
         BEGIN
                DATAMODULE1.QRYCARTERA.CLOSE;
                DATAMODULE1.QRYCARTERA.REQUESTLIVE := TRUE;
                DATAMODULE1.QRYCARTERA.SQL.CLEAR;
                DATAMODULE1.QRYCARTERA.SQL.ADD('SELECT * FROM  CARTERA WHERE TIP_DOCUMENTO = :"TIPO" AND NUM_DOCUMENTO = :"NUMERO" AND PER_COMPENSACION = :"PERIODO"');
                DATAMODULE1.QRYCARTERA.PARAMS[0].ASSTRING := SGUPC.CELLS[2,I];
                DATAMODULE1.QRYCARTERA.PARAMS[1].ASSTRING := SGUPC.CELLS[3,I];
                DATAMODULE1.QRYCARTERA.PARAMS[2].ASSTRING := EDTPERIODO.TEXT;
                DATAMODULE1.QRYCARTERA.REQUESTLIVE := TRUE;
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
                        DATAMODULE1.QRYCARTERATIP_DOCUMENTO_EMP.VALUE := TRIM(CBTIPOIDEEMPRESA.TEXT);
                        DATAMODULE1.QRYCARTERANUM_DOCUMENTO_EMP.VALUE := TRIM(EDTNUMDOCEMPRESA.TEXT);
                        DATAMODULE1.QRYCARTERACOD_SUCURSAL_EMP.VALUE := TRIM(EDTSUCURSAL.TEXT);
                        DATAMODULE1.QRYCARTERAPER_COMPENSACION.VALUE := TRIM(EDTPERIODO.TEXT);
                        DATAMODULE1.QRYCARTERATIPO_MORA.VALUE := '2';
                        DATAMODULE1.QRYCARTERAVALOR_MORA.VALUE := STRTOINT('0');
                        DATAMODULE1.QRYCARTERAVALOR_UPC.VALUE := STRTOINT(SGUPC.CELLS[7,I]);
                        DATAMODULE1.QRYCARTERACOD_TIPO_AFIL.VALUE := 'A';
                        DATAMODULE1.QRYCARTERATIP_DOCUMENTO_COT.VALUE := SGUPC.CELLS[0,I];
                        DATAMODULE1.QRYCARTERANUM_DOCUMENTO_COT.VALUE := SGUPC.CELLS[1,I];
                        FRMAUTOLIQUIDACIONMAGNETICA.REFRESH;
                        DATAMODULE1.QRYCARTERA.POST;
                        DATAMODULE1.QRYCARTERA.COMMITUPDATES;
                        DATAMODULE1.QRYCARTERA.CLOSE;

                END;
           END;




        // DESCARGA  CARTERA MOROSA DE AFILIADOS   COTIZANTES Y BENEFICIARIOS NO INCLUYE UPC ADICONAL

          FOR I := 1 TO SGDETALLE.ROWCOUNT -2 DO
          BEGIN
                DATAMODULE1.QRYCARTERA.CLOSE;
                DATAMODULE1.QRYCARTERA.SQL.CLEAR;
                DATAMODULE1.QRYCARTERA.SQL.ADD('DELETE  CARTERA  WHERE TIP_DOCUMENTO_COT = :"TIPO" AND NUM_DOCUMENTO_COT = :"NUMERO" AND PER_COMPENSACION = :"PERIODO"  AND TIPO_MORA = :"TIPO"');
                DATAMODULE1.QRYCARTERA.PARAMS[0].ASSTRING := SGDETALLE.CELLS[0,I];
                DATAMODULE1.QRYCARTERA.PARAMS[1].ASSTRING := SGDETALLE.CELLS[1,I];
                DATAMODULE1.QRYCARTERA.PARAMS[2].ASSTRING := EDTPERIODO.TEXT;
                DATAMODULE1.QRYCARTERA.PARAMS[3].ASSTRING := '1';
                DATAMODULE1.QRYCARTERA.REQUESTLIVE := TRUE;
                DATAMODULE1.QRYCARTERA.EXECSQL;
                DATAMODULE1.QRYCARTERA.CLOSE;

          END;
         // DESCARGA  LOS  PAGOS  POR  UPC  ADICIONAL
         FOR I := 1 TO SGUPC.ROWCOUNT -2 DO
          BEGIN
            IF  SGUPC.CELLS[8,I] = 'C' THEN
             BEGIN
                DATAMODULE1.QRYCARTERA.CLOSE;
                DATAMODULE1.QRYCARTERA.SQL.CLEAR;
                DATAMODULE1.QRYCARTERA.SQL.ADD('DELETE FROM CARTERA WHERE TIP_DOCUMENTO_COT = :"TIPO" AND NUM_DOCUMENTO_COT = :"NUMERO" AND PER_COMPENSACION = :"PERIODO"  AND TIPO_MORA = :"TIPO"');
                DATAMODULE1.QRYCARTERA.PARAMS[0].ASSTRING := SGUPC.CELLS[0,I];
                DATAMODULE1.QRYCARTERA.PARAMS[1].ASSTRING := SGUPC.CELLS[1,I];
                DATAMODULE1.QRYCARTERA.PARAMS[2].ASSTRING := EDTPERIODO.TEXT;
                DATAMODULE1.QRYCARTERA.PARAMS[3].ASSTRING := '2';
                DATAMODULE1.QRYCARTERA.REQUESTLIVE := TRUE;
                DATAMODULE1.QRYCARTERA.EXECSQL;
                DATAMODULE1.QRYCARTERA.CLOSE;
             END;
          END;
          // INCAPACIDADES

          FOR I := 1 TO SGINCAPACIDADES.ROWCOUNT -2 DO
          BEGIN
                DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
                DATAMODULE1.QRYDETINCAPACIDAD.SQL.CLEAR;
                DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('SELECT * FROM DET_INCAPACIDAD WHERE NUM_INCAPACIDAD = :"INCAPACIDAD" AND   PER_PAGO_INCAP= :"PERIODO" AND VAL_PAGAR_INCAP = :"VALOR" AND EST_DET_PLANILLA IS NULL ORDER BY PER_PAGO_INCAP');
                DATAMODULE1.QRYDETINCAPACIDAD.PARAMS[0].ASSTRING := SGINCAPACIDADES.CELLS[0,I];
                DATAMODULE1.QRYDETINCAPACIDAD.PARAMS[1].ASSTRING := SGINCAPACIDADES.CELLS[1,I];
                DATAMODULE1.QRYDETINCAPACIDAD.PARAMS[2].ASFLOAT := STRTOINT(SGINCAPACIDADES.CELLS[3,I]);
                DATAMODULE1.QRYDETINCAPACIDAD.REQUESTLIVE := TRUE;
                DATAMODULE1.QRYDETINCAPACIDAD.OPEN;
                  IF DATAMODULE1.QRYDETINCAPACIDAD.RECORDCOUNT = 1 THEN
                  BEGIN
                   IF SGINCAPACIDADES.CELLS[4,I] = 'A' THEN
                   BEGIN
                   DATAMODULE1.QRYDETINCAPACIDAD.EDIT;
                   DATAMODULE1.QRYDETINCAPACIDADTIP_PAGO_INCAP.VALUE := SGINCAPACIDADES.CELLS[4,I];
                   DATAMODULE1.QRYDETINCAPACIDADFEC_PAGO_INCAP.VALUE := STRTODATE(SGINCAPACIDADES.CELLS[5,I]);
                   DATAMODULE1.QRYDETINCAPACIDADNUM_COMPROBANTE.VALUE := SGINCAPACIDADES.CELLS[6,I];
                   DATAMODULE1.QRYDETINCAPACIDADPER_PRESENTADO.VALUE := SGINCAPACIDADES.CELLS[7,I];
                   DATAMODULE1.QRYDETINCAPACIDADEST_DET_PLANILLA.VALUE := SGINCAPACIDADES.CELLS[8,I];
                   DATAMODULE1.QRYDETINCAPACIDADVAL_DESCONTADO.VALUE := STRTOINT(SGINCAPACIDADES.CELLS[9,I]);
                   DATAMODULE1.QRYDETINCAPACIDAD.POST;
                   DATAMODULE1.QRYDETINCAPACIDAD.COMMITUPDATES;
                   END;
                   DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;

                  END;

          END;

    DATAMODULE1.qrynotasautoliquidacion.CLOSE;
    DATAMODULE1.qrynotasautoliquidacion.RequestLive := true;
    DATAMODULE1.qrynotasautoliquidacion.SQL.CLEAR;
    DATAMODULE1.qrynotasautoliquidacion.SQL.ADD('SELECT * FROM NOTAS_AUTOLIQUIDACION WHERE NUM_PLANILLA = :"NUMERO"');
    DATAMODULE1.qrynotasautoliquidacion.PARAMS[0].ASSTRING := TRIM(edtnumplanilla.TEXT);
    DATAMODULE1.qrynotasautoliquidacion.Open;
            IF DATAMODULE1.qrynotasautoliquidacion.RecordCount = 0 THEN
            begin
            DATAMODULE1.qrynotasautoliquidacion.Insert;
            DATAMODULE1.qrynotasautoliquidacionNUM_PLANILLA.Value := TRIM(edtnumplanilla.TEXT);
            DATAMODULE1.qrynotasautoliquidacionTIP_DOC_EMPRESA.Value := cbtipoideempresa.Text;
            DATAMODULE1.qrynotasautoliquidacionNUM_DOC_EMPRESA.Value := edtnumdocempresa.Text;
            DATAMODULE1.qrynotasautoliquidacionTIP_NOTA.Value := ComboBox1.text;
            DATAMODULE1.qrynotasautoliquidacionVAL_NOTA.Value := strtofloat(Edit4.Text);
            DATAMODULE1.qrynotasautoliquidacion.Post;
            DATAMODULE1.qrynotasautoliquidacion.COMMITUPDATES;

            end
            else
            begin
            DATAMODULE1.qrynotasautoliquidacion.edit;
            DATAMODULE1.qrynotasautoliquidacionNUM_PLANILLA.Value := TRIM(edtnumplanilla.TEXT);
            DATAMODULE1.qrynotasautoliquidacionTIP_DOC_EMPRESA.Value := cbtipoideempresa.Text;
            DATAMODULE1.qrynotasautoliquidacionNUM_DOC_EMPRESA.Value := edtnumdocempresa.Text;
            DATAMODULE1.qrynotasautoliquidacionTIP_NOTA.Value := ComboBox1.text;
            DATAMODULE1.qrynotasautoliquidacionVAL_NOTA.Value := strtofloat(Edit4.Text);
            DATAMODULE1.qrynotasautoliquidacion.Post;
            DATAMODULE1.qrynotasautoliquidacion.COMMITUPDATES;
            end;
    // borrar  si  quedo en cero
    DATAMODULE1.qrynotasautoliquidacion.CLOSE;
    DATAMODULE1.qrynotasautoliquidacion.RequestLive := true;
    DATAMODULE1.qrynotasautoliquidacion.SQL.CLEAR;
    DATAMODULE1.qrynotasautoliquidacion.SQL.ADD('DELETE  FROM NOTAS_AUTOLIQUIDACION WHERE  NUM_PLANILLA = :"NUMERO" AND VAL_NOTA = :"VALOR"');
    DATAMODULE1.qrynotasautoliquidacion.PARAMS[0].ASSTRING := TRIM(edtnumplanilla.TEXT);
    DATAMODULE1.qrynotasautoliquidacion.PARAMS[1].AsInteger := 0;
    DATAMODULE1.qrynotasautoliquidacion.ExecSQL;


     // INGRESAR  EL DETALLE  DEL PAGO EN EL BANCO CON CHEQUE
         FOR I := 1 TO sgdetabanco.ROWCOUNT -2 DO
         BEGIN
           IF TRIM(sgdetabanco.CELLS[0,I]) > '0' THEN
           BEGIN
           DATAMODULE1.qrydetallepago.SQL.CLEAR;
           DATAMODULE1.qrydetallepago.SQL.ADD('SELECT * FROM DET_PAGO_AUTOLIQUIDACIONES WHERE NUM_PLANILLA = :"NUMERO" AND COD_BANCO = :"BANCO" AND NUM_CUENTA = :"CUENTA"');
           DATAMODULE1.qrydetallepago.PARAMS[0].ASSTRING := edtnumplanilla.TEXT;
           DATAMODULE1.qrydetallepago.PARAMS[1].ASSTRING := TRIM(sgdetabanco.CELLS[0,I]);
           DATAMODULE1.qrydetallepago.PARAMS[2].ASSTRING := TRIM(sgdetabanco.CELLS[1,I]);
           DATAMODULE1.qrydetallepago.REQUESTLIVE := TRUE;
           DATAMODULE1.qrydetallepago.OPEN;
                 IF DATAMODULE1.qrydetallepago.RecordCount = 0 THEN
                 BEGIN
                 DATAMODULE1.qrydetallepago.Insert;
                 DATAMODULE1.qrydetallepagoNUM_PLANILLA.Value := edtnumplanilla.TEXT;
                 DATAMODULE1.qrydetallepagoCOD_BANCO.Value :=  TRIM(sgdetabanco.CELLS[0,I]);
                 DATAMODULE1.qrydetallepagoNUM_CUENTA.Value := TRIM(sgdetabanco.CELLS[1,I]);
                 DATAMODULE1.qrydetallepagoVAL_CHEQUE.Value := STRTOFLOAT(sgdetabanco.CELLS[2,I]);
                 DATAMODULE1.qrydetallepago.Post;
                 DATAMODULE1.qrydetallepago.COMMITUPDATES;
                 DATAMODULE1.qrydetallepago.CLOSE;

                 END
                 ELSE
                 IF DATAMODULE1.qrydetallepago.RecordCount > 0 THEN
                 BEGIN
                 DATAMODULE1.qrydetallepago.Edit;
                 DATAMODULE1.qrydetallepagoNUM_PLANILLA.Value := edtnumplanilla.TEXT;
                 DATAMODULE1.qrydetallepagoCOD_BANCO.Value :=  TRIM(sgdetabanco.CELLS[0,I]);
                 DATAMODULE1.qrydetallepagoNUM_CUENTA.Value := TRIM(sgdetabanco.CELLS[1,I]);
                 DATAMODULE1.qrydetallepagoVAL_CHEQUE.Value := STRTOFLOAT(sgdetabanco.CELLS[2,I]);
                 DATAMODULE1.qrydetallepago.Post;
                 DATAMODULE1.qrydetallepago.COMMITUPDATES;
                 DATAMODULE1.qrydetallepago.CLOSE;


                 END;
               END;
           END;

   DATAMODULE1.DTBDATAMEC.COMMIT;
   RETIRAR_AFILIADOS;
    PBRGRABAR.MIN := 0;
    PBRGRABAR.MAX :=  100;
    PBRGRABAR.POSITION := 0;

   LIMPIAR;
EXCEPT
   DATAMODULE1.DTBDATAMEC.ROLLBACK;
   SHOWMESSAGE('NO SE PUEDE  GRABAR LA AUTOLIQUIDACION');
   PBRGRABAR.MIN := 0;
    PBRGRABAR.MAX :=  100;
    PBRGRABAR.POSITION := 0;

   RAISE;
   END;
 END;

end;

procedure TFRMAUTOLIQUIDACIONMAGNETICA.sgdetabancoSelectCell(
  Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
  var i : integer;
    valor : real;

begin

IF sgdetabanco.CELLS[2,sgdetabanco.ROW]  >'0'  THEN
  BEGIN
   FOR I := 1 TO sgdetabanco.ROWCOUNT -2 DO
   BEGIN
     if sgdetabanco.CELLS[2,i] >= '0'  then
     begin
       try
          if strtoint(sgdetabanco.CELLS[2,i])> 0 then
          begin
          valor := valor + strtoint(sgdetabanco.CELLS[2,i]);
          end;
       EXCEPT  // MENASJE  DE  LOS ERRORES
       ON E: EConvertError DO
        BEGIN
        e.Message := 'Digite Solo digitos';
        sgdetabanco.CELLS[2,i] := '0';
        RAISE;
        END;
       end;
     end;
    end;
    if valor >= strtofloat(edtvalcheque.text) then
    begin
    sgdetabanco.Enabled := false;
    btgrabarplanilla.SetFocus;
    end;
   end;

end;



function TFRMAUTOLIQUIDACIONMAGNETICA.estado_pago(tipo,
  numero,dias,ingreso,modalidad: string): string;
begin
FRMPRINCIPAL.Salariobase(edtperiodo.text);
estado_pago := 'CIE';
    DATAMODULE1.QRYEMPRESAS.DISABLECONTROLS;
    DATAMODULE1.QRYEMPRESAS.CLOSE;
    DATAMODULE1.QRYEMPRESAS.PREPARE;
    DATAMODULE1.QRYEMPRESAS.PARAMBYNAME('PTIPO').VALUE := TRIM(cbtipoideempresa.TEXT);
    DATAMODULE1.QRYEMPRESAS.PARAMBYNAME('PNUMERO').VALUE := TRIM(edtnumdocempresa.TEXT);
    DATAMODULE1.QRYEMPRESAS.OPEN;
    DATAMODULE1.QRYEMPRESAS.ENABLECONTROLS;
        IF DATAMODULE1.QRYEMPRESAS.RECORDCOUNT = 0 THEN
        BEGIN
        estado_pago := 'NRE';
        exit
        end;
        // verifcar  si no es  NRS Nuevamente
                DATAMODULE1.QRYAFILIADOS.CLOSE;
                DATAMODULE1.QRYAFILIADOS.PREPARE;
                DATAMODULE1.QRYAFILIADOS.SQL.CLEAR;
                DATAMODULE1.QRYAFILIADOS.SQL.ADD('SELECT  TIP_DOCUMENTO_EMP, NUM_DOCUMENTO_EMP,TIP_DOCUMENTO_AFI, NUM_DOCUMENTO_AFI,PRI_APELLIDO,SEG_APELLIDO,PRI_NOMBRE,SEG_NOMBRE, VAL_SUELDO_AFIL,FEC_INGRESO_UNI,FEC_EGRESO_UNI,AFILIADOS_EMPRESAS.COD_ESTADO,FEC_NACIMIENTO,COD_SEXO,COD_MODALIDAD_TRA');
                DATAMODULE1.QRYAFILIADOS.SQL.ADD('FROM AFILIADOS_EMPRESAS,AFILIADOS');
                DATAMODULE1.QRYAFILIADOS.SQL.ADD('WHERE TIP_DOCUMENTO_AFI = TIP_DOCUMENTO AND  NUM_DOCUMENTO_AFI = NUM_DOCUMENTO AND  TIP_DOCUMENTO_AFI = :"CC" AND NUM_DOCUMENTO_AFI = :"DOCUMENTO" AND ((FEC_INGRESO_UNI <= :"FECHAIN") OR (FEC_INGRESO_UNI <= :"FECHAINI")) AND ');
                DATAMODULE1.QRYAFILIADOS.SQL.ADD('(((FEC_EGRESO_UNI >= :"FECHAF") OR (FEC_EGRESO_UNI >= :"FECHAFI")) OR FEC_EGRESO_UNI IS NULL)');
                DATAMODULE1.QRYAFILIADOS.PARAMS[0].ASSTRING := TRIM(tipo);
                DATAMODULE1.QRYAFILIADOS.PARAMS[1].ASSTRING := TRIM(numero);
                DATAMODULE1.QRYAFILIADOS.PARAMS[2].AsDate := STRTODATE('01/' + EDTPERIODO.TEXT);
                DATAMODULE1.QRYAFILIADOS.PARAMS[3].AsDate := STRTODATE('28/' + EDTPERIODO.TEXT);
                DATAMODULE1.QRYAFILIADOS.PARAMS[4].AsDate := STRTODATE('01/' + EDTPERIODO.TEXT);
                DATAMODULE1.QRYAFILIADOS.PARAMS[5].AsDate := STRTODATE('28/' + EDTPERIODO.TEXT);
                DATAMODULE1.QRYAFILIADOS.OPEN;
                IF DATAMODULE1.QRYAFILIADOS.RECORDCOUNT > 0 THEN
                   BEGIN
                        DATAMODULE1.QRYAFILIADOS.CLOSE;
                        DATAMODULE1.QRYAFILIADOS.PREPARE;
                        DATAMODULE1.QRYAFILIADOS.SQL.CLEAR;
                        DATAMODULE1.QRYAFILIADOS.SQL.ADD('SELECT  TIP_DOCUMENTO_EMP, NUM_DOCUMENTO_EMP,TIP_DOCUMENTO_AFI, NUM_DOCUMENTO_AFI,PRI_APELLIDO,SEG_APELLIDO,PRI_NOMBRE,SEG_NOMBRE, VAL_SUELDO_AFIL,FEC_INGRESO_UNI,FEC_EGRESO_UNI,AFILIADOS_EMPRESAS.COD_ESTADO,FEC_NACIMIENTO,COD_SEXO,COD_MODALIDAD_TRA');
                        DATAMODULE1.QRYAFILIADOS.SQL.ADD('FROM AFILIADOS_EMPRESAS,AFILIADOS');
                        DATAMODULE1.QRYAFILIADOS.SQL.ADD('WHERE TIP_DOCUMENTO_AFI = TIP_DOCUMENTO AND  NUM_DOCUMENTO_AFI = NUM_DOCUMENTO AND  TIP_DOCUMENTO_AFI = :"CC" AND NUM_DOCUMENTO_AFI = :"DOCUMENTO" AND ((FEC_INGRESO_UNI <= :"FECHAIN") OR (FEC_INGRESO_UNI <= :"FECHAINI")) AND ');
                        DATAMODULE1.QRYAFILIADOS.SQL.ADD('(((FEC_EGRESO_UNI >= :"FECHAF") OR (FEC_EGRESO_UNI >= :"FECHAFI")) OR FEC_EGRESO_UNI IS NULL) AND TIP_DOCUMENTO_EMP = :"TIPOEM" AND  NUM_DOCUMENTO_EMP = :"NUMEM"');
                        DATAMODULE1.QRYAFILIADOS.PARAMS[0].ASSTRING := TRIM(tipo);
                        DATAMODULE1.QRYAFILIADOS.PARAMS[1].ASSTRING := TRIM(numero);
                        DATAMODULE1.QRYAFILIADOS.PARAMS[2].AsDate := STRTODATE('01/' + EDTPERIODO.TEXT);
                        DATAMODULE1.QRYAFILIADOS.PARAMS[3].AsDate := STRTODATE('28/' + EDTPERIODO.TEXT);
                        DATAMODULE1.QRYAFILIADOS.PARAMS[4].AsDate := STRTODATE('01/' + EDTPERIODO.TEXT);
                        DATAMODULE1.QRYAFILIADOS.PARAMS[5].AsDate := STRTODATE('28/' + EDTPERIODO.TEXT);
                        DATAMODULE1.QRYAFILIADOS.PARAMS[6].ASSTRING := TRIM(cbtipoideempresa.TEXT);
                        DATAMODULE1.QRYAFILIADOS.PARAMS[7].ASSTRING := TRIM(edtnumdocempresa.TEXT);
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
                     IF DATAMODULE1.QRYAFILIADOSCOD_MODALIDAD_TRA.VALUE = 'D' THEN
                                BEGIN
                                     IF  ROUNDTO(((GLSALARIOMINIMO)/30)* STRTOINT(dias),0) >  STRTOINT(ingreso) THEN
                                     BEGIN
                                       estado_pago := 'IBC';
                                       exit;
                                     END;
                                END
                                ELSE IF DATAMODULE1.QRYAFILIADOSCOD_MODALIDAD_TRA.VALUE = 'E' THEN
                                     BEGIN
                                          IF  ROUNDTO(((GLSALARIOMINIMO/2)/30)* STRTOINT(dias),0) >  STRTOINT(ingreso) THEN
                                          BEGIN
                                          estado_pago := 'IBC';
                                          exit;
                                          END;
                                END
                                ELSE IF DATAMODULE1.QRYAFILIADOSCOD_MODALIDAD_TRA.VALUE = 'P' THEN
                                     BEGIN
                                          IF  ROUNDTO(((GLSALARIOMINIMO)/30)* STRTOINT(dias),0) >  STRTOINT(ingreso) THEN
                                          BEGIN
                                          estado_pago := 'IBC';
                                          exit;
                                          END;
                               END
                               ELSE IF DATAMODULE1.QRYAFILIADOSCOD_MODALIDAD_TRA.VALUE = 'I' THEN
                                     BEGIN
                                          IF  ROUNDTO((((GLSALARIOMINIMO*2))/30)* STRTOINT(dias),0) >  STRTOINT(ingreso) THEN
                                          BEGIN
                                          estado_pago := 'IBC';
                                          exit;
                                          END;
                                          END;


end;

END.

