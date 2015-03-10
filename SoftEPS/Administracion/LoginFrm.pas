UNIT LOGINFRM;

INTERFACE

USES
  WINDOWS, MESSAGES, SYSUTILS, CLASSES, GRAPHICS, CONTROLS, FORMS,
  DIALOGS, BUTTONS, STDCTRLS, EXTCTRLS, DB, DBTABLES,REGISTRY;

TYPE
  TFRMINICIO = CLASS(TFORM)
    CANCELAR: TBitBtn;
    QRYUSUARIOS: TQUERY;
    GROUPBOX1: TGROUPBOX;
    LABEL1: TLABEL;
    EDTUSUARIO: TEDIT;
    LABEL2: TLABEL;
    EDTPASSWORD: TEDIT;
    IMAGE1: TIMAGE;
    qryusuariosTIP_DOCUMENTO: TStringField;
    qryusuariosNUM_DOCUMENTO: TStringField;
    qryusuariosCOD_ESTADO: TStringField;
    qryusuariosCOD_USUARIO: TStringField;
    qryusuariosNOM_USUARIO: TStringField;
    qryusuariosPWD_USUARIO: TStringField;
    qryusuariosFEC_EXPIRACION: TDateTimeField;
    qryusuariosNIV_USUARIO: TFloatField;
    qryusuariosUSU_LOGUEADO: TFloatField;
    qryusuariosULT_FEC_LOG: TDateTimeField;
    qryusuariosCOD_OFICINA: TStringField;
    qryusuariosCOD_REGIONAL: TStringField;
    PROCEDURE CANCELARCLICK(SENDER: TOBJECT);
    PROCEDURE FORMKEYPRESS(SENDER: TOBJECT; VAR KEY: CHAR);
    PROCEDURE FORMCREATE(SENDER: TOBJECT);
    PROCEDURE FORMACTIVATE(SENDER: TOBJECT);
    procedure BitBtn1Click(Sender: TObject);

  PRIVATE
    { PRIVATE DECLARATIONS }

  PUBLIC
    { PUBLIC DECLARATIONS }
  END;

VAR
  FRMINICIO: TFRMINICIO;
  VAR INTENTOS : INTEGER;

IMPLEMENTATION

USES DTMODULO, UPRINCIPAL, UGLOBAL;


{$R *.DFM}


PROCEDURE TFRMINICIO.CANCELARCLICK(SENDER: TOBJECT);
BEGIN
CLOSE;
END;

PROCEDURE TFRMINICIO.FORMKEYPRESS(SENDER: TOBJECT; VAR KEY: CHAR);
BEGIN
 IF (KEY = #13) THEN                            { IF IT'S AN ENTER KEY }
     IF (ACTIVECONTROL IS TEDIT) THEN
        BEGIN
       KEY := #0;                                 { EAT ENTER KEY }
       PERFORM(WM_NEXTDLGCTL, 0, 0);              { MOVE TO NEXT CONTROL }
     END
END;


PROCEDURE TFRMINICIO.FORMCREATE(SENDER: TOBJECT);
FUNCTION GETUSERNAME : STRING;
 VAR
    PCUSER   : PCHAR;
    DWUSIZE : DWORD;
    REGISTRO : TREGINIFILE;
 BEGIN

 REGISTRO := TREGINIFILE.CREATE('CONTROL PANEL');
// REGISTRO.WRITESTRING('INTERNATIONAL','SSHORTDATE','dd/MM/aaaa');
 REGISTRO.WRITESTRING('INTERNATIONAL','LOCALE','00000409');
 FRMINICIO.CAPTION := FRMPRINCIPAL.GETAPPINFO('FILEDESCRIPTION') +' VERSION ' + FRMPRINCIPAL.GETAPPINFO('FILEVERSION');
 APPLICATION.TITLE := FRMPRINCIPAL.GETAPPINFO('FILEDESCRIPTION') +' VERSION ' + FRMPRINCIPAL.GETAPPINFO('FILEVERSION');
 GLNITEPS :=  FRMPRINCIPAL.GETAPPINFO('INTERNALNAME');
 GLEMPRESA :=  FRMPRINCIPAL.GETAPPINFO('COMPANYNAME');


    DWUSIZE := 21;
    GETMEM( PCUSER, DWUSIZE );
    TRY
       IF WINDOWS.GETUSERNAME( PCUSER, DWUSIZE ) THEN
          RESULT := PCUSER
    FINALLY
       FREEMEM( PCUSER );
    END;
 END;
BEGIN
EDTUSUARIO.TEXT := GETUSERNAME;

INTENTOS := 0;

END;

PROCEDURE TFRMINICIO.FORMACTIVATE(SENDER: TOBJECT);
BEGIN
EDTUSUARIO.SETFOCUS;
END;

procedure TFRMINICIO.BitBtn1Click(Sender: TObject);
 VAR ANO,MES,MESCO : STRING;
    MES1 : INTEGER;
BEGIN
   IF  (EDTUSUARIO.TEXT <> '') AND  (EDTPASSWORD.TEXT <> '') THEN
   BEGIN
    WHILE INTENTOS <= 3 DO

        TRY
        APPLICATION.CREATEFORM(TDATAMODULE1, DATAMODULE1);
        APPLICATION.INITIALIZE;
        DATAMODULE1.DTBDATAMEC.CONNECTED := FALSE;
        DATAMODULE1.DTBDATAMEC.PARAMS.VALUES['USER NAME'] := '';
        DATAMODULE1.DTBDATAMEC.PARAMS.VALUES['PASSWORD'] := '';
        DATAMODULE1.DTBDATAMEC.PARAMS.VALUES['USER NAME'] := TRIM(EDTUSUARIO.TEXT);
        DATAMODULE1.DTBDATAMEC.PARAMS.VALUES['PASSWORD'] := TRIM(EDTPASSWORD.TEXT);
        DATAMODULE1.DTBDATAMEC.CONNECTED := TRUE;

                IF DATAMODULE1.DTBDATAMEC.CONNECTED = TRUE THEN
                BEGIN
                        QRYUSUARIOS.DISABLECONTROLS;
                        QRYUSUARIOS.CLOSE;
                        QRYUSUARIOS.PREPARE;
                        QRYUSUARIOS.PARAMBYNAME('PUSUARIO').VALUE := TRIM(EDTUSUARIO.TEXT);
                        QRYUSUARIOS.PARAMBYNAME('PPASWORD').VALUE := TRIM(EDTPASSWORD.TEXT);
                        QRYUSUARIOS.OPEN;
                        QRYUSUARIOS.ENABLECONTROLS;
                        IF QRYUSUARIOS.RECORDCOUNT > 0 THEN
                        BEGIN
                            IF QRYUSUARIOSCOD_ESTADO.VALUE = 'A' THEN
                            BEGIN
                             INTENTOS := 4;
                             //LABEL3.CAPTION := ' CONECTANDO  CON LA  BASE DE DATOS';
                             GLNOMUSUARIO := QRYUSUARIOSNOM_USUARIO.VALUE;
                             GLTIPO := QRYUSUARIOSTIP_DOCUMENTO.VALUE;
                             GLNUMERO := QRYUSUARIOSNUM_DOCUMENTO.VALUE;
                           //  GLNIVELUSUARIO := StrToInt(IntToStr(QRYUSUARIOSNIV_USUARIO.VALUE));
                             GLOFICINA := QRYUSUARIOSCOD_OFICINA.VALUE;
                             GLREGIONAL := QRYUSUARIOSCOD_REGIONAL.VALUE;
                             GLUSUARIO := DATAMODULE1.DTBDATAMEC.PARAMS.VALUES['USER NAME'];
                             DATAMODULE1.QRYGETDATE.DISABLECONTROLS;
                             DATAMODULE1.QRYGETDATE.CLOSE;
                             DATAMODULE1.QRYGETDATE.PREPARE;
                             DATAMODULE1.QRYGETDATE.OPEN;
                             DATAMODULE1.QRYGETDATE.ENABLECONTROLS;
                           GLDATE := DATETOSTR(DATAMODULE1.qrygetdateSYSDATE.VALUE);


                             // DATOS  DE  COMPENSACION
                             ANO:=(FORMATDATETIME('YYYY',StrToDateTime(GLDATE)));
                             MES:=(FORMATDATETIME('MM',STRTODATE(GLDATE)));
                             GLDIA  :=(FORMATDATETIME('DD',StrToDateTime(GLDATE)));
                             IF MES = '01' THEN
                                BEGIN
                                GLCOTIZACION :=  '12/'+ INTTOSTR(STRTOINT(ANO)-1);
                                GLPRESENTACION := MES  + '/'+ ANO;
                                END
                                ELSE IF MES > '01' THEN
                                        BEGIN
                                        MES1 := STRTOINT(MES) -1 ;
                                                IF MES1 <= 9 THEN
                                                BEGIN
                                                MESCO := '0' + INTTOSTR(MES1);
                                                END
                                                ELSE    IF MES1 > 9 THEN
                                                        BEGIN
                                                        MESCO := INTTOSTR(MES1);
                                                        END;
                                        GLCOTIZACION := MESCO + '/'+ ANO;
                                        GLPRESENTACION := MES  + '/'+ ANO;

                                        END;

                             FRMINICIO.REFRESH;
                             FRMINICIO.CLOSE;
                             APPLICATION.CREATEFORM(TFRMPRINCIPAL, FRMPRINCIPAL);
                             APPLICATION.RUN;
                             END
                             ELSE  IF QRYUSUARIOSCOD_ESTADO.VALUE <> 'A' THEN
                                    BEGIN
                                    DATAMODULE1.DTBDATAMEC.CONNECTED := FALSE;
                                    SHOWMESSAGE('EL USUARIO  SIN PERMISOS  PARA INGRESAR  AL MODULO');
                                    EDTUSUARIO.TEXT := '';
                                    EDTPASSWORD.TEXT := '';
                                    EDTUSUARIO.SETFOCUS;
                                    INC (INTENTOS);
                               END;


                        END
                        ELSE IF QRYUSUARIOS.RECORDCOUNT > 0 THEN
                                BEGIN
                                DATAMODULE1.DTBDATAMEC.CONNECTED := FALSE;
                                SHOWMESSAGE('IMPOSIBLE CONECTAR LA BASE DE DATOS, VERIFIQUE EL USUARIO Y LA CLAVE Y VUELVA A INTENTARLO');
                                EDTUSUARIO.TEXT := '';
                                EDTPASSWORD.TEXT := '';
                                EDTUSUARIO.SETFOCUS;
                                INC (INTENTOS);
                        END;

                  END
         ELSE IF DATAMODULE1.DTBDATAMEC.CONNECTED = FALSE THEN
                BEGIN
                SHOWMESSAGE('VERIFIQUE  EL USUARIO Y LA  CLAVE');
                END;
        EXCEPT  // MENASJE  DE  LOS ERRORES
               SHOWMESSAGE('IMPOSIBLE CONECTAR LA BASE DE DATOS, VERIFIQUE EL USUARIO Y LA CLAVE Y VUELVA A INTENTARLO');
           RAISE;    // VOLVER A  EJECUTAR  LA OPCION
  END;
 END;
END;
END.

