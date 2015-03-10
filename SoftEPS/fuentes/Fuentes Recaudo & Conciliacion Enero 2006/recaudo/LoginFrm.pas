UNIT LOGINFRM;

INTERFACE

USES
  WINDOWS, MESSAGES, SYSUTILS, VARIANTS, CLASSES, GRAPHICS, CONTROLS, FORMS,
  DIALOGS, BUTTONS, STDCTRLS, EXTCTRLS, DB, DBTABLES,REGISTRY, ADODB,IniFiles;

TYPE
  TFRMINICIO = CLASS(TFORM)
    CANCELAR: TBitBtn;
    GROUPBOX1: TGROUPBOX;
    LABEL1: TLABEL;
    EDTUSUARIO: TEDIT;
    LABEL2: TLABEL;
    EDTPASSWORD: TEDIT;
    BitBtn1: TBitBtn;
    qryusuarios: TADOQuery;
    qryusuariosCOD_USUARIO: TStringField;
    qryusuariosTIP_DOCUMENTO: TStringField;
    qryusuariosNUM_DOCUMENTO: TStringField;
    qryusuariosCOD_ESTADO: TStringField;
    qryusuariosNOM_USUARIO: TStringField;
    qryusuariosPWD_USUARIO: TStringField;
    qryusuariosFEC_EXPIRACION: TDateTimeField;
    qryusuariosNIV_USUARIO: TBCDField;
    qryusuariosUSU_LOGUEADO: TBCDField;
    qryusuariosULT_FEC_LOG: TDateTimeField;
    qryusuariosCOD_OFICINA: TStringField;
    qryusuariosCOD_REGIONAL: TStringField;
    qryusuariosCOD_CARGO: TStringField;
    qryusuariosNUM_CONSECUTIVO: TBCDField;
    PROCEDURE CANCELARCLICK(SENDER: TOBJECT);
    PROCEDURE FORMKEYPRESS(SENDER: TOBJECT; VAR KEY: CHAR);
    PROCEDURE FORMCREATE(SENDER: TOBJECT);
    PROCEDURE FORMACTIVATE(SENDER: TOBJECT);
    procedure edtusuarioExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    FUNCTION nomcomputador : STRING;
    procedure EditWinIni;
    procedure datoscomparte(programa : string);
    function Encrypt(const S: String; Key: Word): String;


  PRIVATE
    { PRIVATE DECLARATIONS }

  PUBLIC
    { PUBLIC DECLARATIONS }
  END;

VAR
  FRMINICIO: TFRMINICIO;
  VAR INTENTOS : INTEGER;
   SERVIDOR : STRING;
  Basedatos : STRING;
  host : STRING;
       const 
    {C1 y C2 are used for encryption of Master Password string}
    {C1 y C2 aon usadas para encriptar la cadena de la clave}
         C1 = 52845;
         C2 = 11719;

IMPLEMENTATION

USES DTMODULO, UPRINCIPAL, UGLOBAL, Usplansh;


{$R *.DFM}


PROCEDURE TFRMINICIO.CANCELARCLICK(SENDER: TOBJECT);
BEGIN
application.Terminate;
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

 //REGISTRO := TREGINIFILE.CREATE('CONTROL PANEL');
// REGISTRO.WRITESTRING('INTERNATIONAL','SSHORTDATE','dd/MM/aaaa');
 //REGISTRO.WRITESTRING('INTERNATIONAL','LOCALE','00000409');
 EditWinIni;
 FRMINICIO.CAPTION := FRMPRINCIPAL.GETAPPINFO('FILEDESCRIPTION') +' VERSION ' + FRMPRINCIPAL.GETAPPINFO('FILEVERSION');
 APPLICATION.TITLE := FRMPRINCIPAL.GETAPPINFO('FILEDESCRIPTION') +' VERSION ' + FRMPRINCIPAL.GETAPPINFO('FILEVERSION')+ ' SERVIDOR ' + SERVIDOR;
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
EDTUSUARIO.TEXT := trim(GETUSERNAME);

INTENTOS := 0;

END;

PROCEDURE TFRMINICIO.FORMACTIVATE(SENDER: TOBJECT);
BEGIN
EDTUSUARIO.SETFOCUS;
END;

procedure TFRMINICIO.edtusuarioExit(Sender: TObject);
begin
EDTPASSWORD.SetFocus;
end;

procedure TFRMINICIO.BitBtn1Click(Sender: TObject);
VAR ANO,MES,MESCO : STRING;
    MES1 : INTEGER;
BEGIN
   IF  (EDTUSUARIO.TEXT <> '') AND  (EDTPASSWORD.TEXT <> '') THEN
   BEGIN
    WHILE INTENTOS <= 3 DO

        TRY
      SplashForm := TSplashForm.Create(Application);
      SplashForm.Show;
      SplashForm.Update;
      codaplicativo := '30';

        APPLICATION.CREATEFORM(TDATAMODULE1, DATAMODULE1);
        frminicio.hide;
        // ORACLE
        {
        DATAMODULE1.DTBDATAMEC.CONNECTED := FALSE;
        DATAMODULE1.DTBDATAMEC.ConnectionString := 'Provider=MSDAORA.1;Password='+  trim(edtpassword.text) + ';User ID='+ trim(edtusuario.text) +';Data Source=dbo;Persist Security Info=True';
        DATAMODULE1.DTBDATAMEC.Connected := true;
         }


      // SQLSERVER
      DATAMODULE1.DTBDATAMEC.CONNECTED := FALSE;
      DATAMODULE1.DTBDATAMEC.ConnectionString := 'Provider=SQLOLEDB.1;Password='+  'pra0271'+trim(edtusuario.text) + ';Persist Security Info=True;User ID='+ trim(edtusuario.text) +';Initial Catalog= ' + Basedatos +';Data Source=' +  SERVIDOR +';Use Procedure for Prepare=1;';
      DATAMODULE1.DTBDATAMEC.ConnectionString := DATAMODULE1.DTBDATAMEC.ConnectionString + 'Auto Translate=True;Packet Size=8192;Application Name=Autoliquidacion de Aportes;Use Encryption for Data=False;Workstation ID ='+ nomcomputador ;
      DATAMODULE1.DTBDATAMEC.Connected := true;


                IF DATAMODULE1.DTBDATAMEC.CONNECTED = TRUE THEN
                BEGIN
                        QRYUSUARIOS.CLOSE;
                        QRYUSUARIOS.Parameters[0].value  := TRIM(EDTUSUARIO.TEXT);
                        QRYUSUARIOS.OPEN;
                        IF QRYUSUARIOS.RECORDCOUNT > 0 THEN
                        BEGIN

                             if qryusuariosPWD_USUARIO.Value <> Encrypt(trim(edtpassword.text),1) then
                             begin
                                   ShowMessage('Clave  Errada Vefifique  Nuevamente');
                                   SplashForm.close;
                                   frminicio.Close;
                                   Application.Terminate;
                             end;

                            APPLICATION.CREATEFORM(TFRMPRINCIPAL, FRMPRINCIPAL);
                            DATAMODULE1.qryprogramas.close;
                            DATAMODULE1.qryprogramas.Parameters[0].value := codaplicativo;
                            DATAMODULE1.qryprogramas.open;
                                  if  DATAMODULE1.qryprogramas.RecordCount = 1 then
                                  begin
                                        if frmprincipal.GETAPPINFO('FILEVERSION')<> DATAMODULE1.qryprogramasVERSIONES.Value then
                                        begin
                                             ShowMessage('Esta  Versión  esta  desactualizada la version ' + frmprincipal.GETAPPINFO('FILEVERSION') + ' por favor  actualize  la versión  de este  aplicativo a la versión'+DATAMODULE1.qryprogramasCOD_APLICACION.Value );
                                             SplashForm.close;
                                             datoscomparte('recaudo.exe')
                                        end;
                                  end
                                  else
                                  begin
                                   DATAMODULE1.qryprogramas.Insert;
                                   DATAMODULE1.qryprogramasCOD_APLICACION.Value := codaplicativo;
                                   DATAMODULE1.qryprogramasNOM_APLICACION.Value := frmprincipal.GETAPPINFO('FILEDESCRIPTION');
                                   DATAMODULE1.qryprogramasVERSIONES.Value := frmprincipal.GETAPPINFO('FILEVERSION');
                                   DATAMODULE1.qryprogramas.Post;
                                  end;
                                  frmprincipal.grabarmenu(codaplicativo);
                                  frmprincipal.permisos( codaplicativo,trim(edtusuario.text));
                                  frmprincipal.SB.Panels[0].Text :=  'Usuario  ' + qryusuariosNOM_USUARIO.Value;
                                  frmprincipal.SB.Panels[1].Text :=  'Zonal  ' + qryusuariosCOD_REGIONAL.Value;
                                  frmprincipal.SB.Panels[2].Text :=  GLDATE;

                                   FRMINICIO.CAPTION := frmprincipal.GETAPPINFO('FILEDESCRIPTION') +' VERSION ' + frmprincipal.GETAPPINFO('FILEVERSION');
                                   frmprincipal.CAPTION := frmprincipal.GETAPPINFO('FILEDESCRIPTION') +' VERSION ' + frmprincipal.GETAPPINFO('FILEVERSION');
                                   APPLICATION.TITLE := frmprincipal.GETAPPINFO('FILEDESCRIPTION') +' VERSION ' + frmprincipal.GETAPPINFO('FILEVERSION');
                 //**************************** informacion de  para  compensaciones **********************

                                   INTENTOS := 4;
                                   //LABEL3.CAPTION := ' CONECTANDO  CON LA  BASE DE DATOS';
                                   GLNOMUSUARIO := QRYUSUARIOSNOM_USUARIO.VALUE;
                                   GLTIPO := QRYUSUARIOSTIP_DOCUMENTO.VALUE;
                                   GLNUMERO := QRYUSUARIOSNUM_DOCUMENTO.VALUE;
                                 //  GLNIVELUSUARIO := StrToInt(IntToStr(QRYUSUARIOSNIV_USUARIO.VALUE));
                                   GLOFICINA := QRYUSUARIOSCOD_OFICINA.VALUE;
                                   GLREGIONAL := QRYUSUARIOSCOD_REGIONAL.VALUE;
                                   GLUSUARIO := TRIM(EDTUSUARIO.Text);
                                   DATAMODULE1.QRYGETDATE.CLOSE;
                                   DATAMODULE1.QRYGETDATE.OPEN;
                                   GLDATE := DATETOSTR(DATAMODULE1.QRYGETDATEFECHA.VALUE);
                                   // DATOS  DE  COMPENSACION
                                   ANO:=(FORMATDATETIME('YYYY',StrToDateTime(GLDATE)));
                                   MES:=(FORMATDATETIME('MM',STRTODATE(GLDATE)));
                                   GLDIA  :=(FORMATDATETIME('DD',StrToDateTime(GLDATE)));
                                   GLCOTIZACION := MES + '/'+ ANO;
                                   GLPRESENTACION := MES  + '/'+ ANO;
                                   DATAMODULE1.qrycompania.Open;
                                   GLCREACIONEPS := DATETOSTR(DATAMODULE1.qrycompaniaFEC_INCLUSION.Value);
                                   DATAMODULE1.QRYVALORESCOMPENSACION.DISABLECONTROLS;
                                   DATAMODULE1.QRYVALORESCOMPENSACION.CLOSE;
                                     IF MES <> '01' THEN
                                     BEGIN
                                     DATAMODULE1.QRYVALORESCOMPENSACION.Parameters[0].value  := StrToDateTime('01/01/'+ANO);
                                     END
                                     ELSE IF MES = '01' THEN
                                     BEGIN
                                     ANO := INTTOSTR(STRTOINT(ANO) -1);
                                     DATAMODULE1.QRYVALORESCOMPENSACION.Parameters[0].value  := StrToDateTime('01/01/'+ANO);
                                     END;
                                  DATAMODULE1.QRYVALORESCOMPENSACION.OPEN;
                                IF DATAMODULE1.QRYVALORESCOMPENSACION.RECORDCOUNT > 0 THEN
                                BEGIN
                                GLPORCOTIZACION := DATAMODULE1.QRYVALORESCOMPENSACIONPOR_COTIZACION.VALUE;
                                GLSALARIOMINIMO := DATAMODULE1.QRYVALORESCOMPENSACIONSAL_MINIMO.VALUE;
                                GLPORINCAPA := DATAMODULE1.QRYVALORESCOMPENSACIONPOR_ENFERMEDAD_GENERAL.VALUE;
                                END
                                ELSE
                                     IF DATAMODULE1.QRYVALORESCOMPENSACION.RECORDCOUNT = 0 THEN
                                     BEGIN
                                     SHOWMESSAGE(LowerCase('LOS  VALORES  BASICOS  DE  COMPRESACION  NO ESTAN  DIGITADO PARA AÑO :' + ANO));
                                     frmprincipal.close;
                                     SplashForm.close;
                                     frminicio.Close;
                                     END;
//***************************************************************


                             SplashForm.close;
                             FRMPRINCIPAL.show;

                        END
                        ELSE IF QRYUSUARIOS.RECORDCOUNT > 0 THEN
                                BEGIN
                                DATAMODULE1.DTBDATAMEC.CONNECTED := FALSE;
                                SHOWMESSAGE(LowerCase('IMPOSIBLE CONECTAR LA BASE DE DATOS, VERIFIQUE EL USUARIO Y LA CLAVE Y VUELVA A INTENTARLO'));
                                EDTUSUARIO.TEXT := '';
                                EDTPASSWORD.TEXT := '';
                                EDTUSUARIO.SETFOCUS;
                                frmprincipal.close;
                                INC (INTENTOS);
                                SplashForm.close;
                                 frminicio.Close;
                                END;

                  END
         ELSE IF DATAMODULE1.DTBDATAMEC.CONNECTED = FALSE THEN
                BEGIN
                SplashForm.close;
                SHOWMESSAGE(LowerCase('VERIFIQUE  EL USUARIO Y LA  CLAVE'));
                frmprincipal.close;
                frminicio.Close;
                END;
        EXCEPT  // MENASJE  DE  LOS ERRORES

               SplashForm.close;
               SHOWMESSAGE(LowerCase('IMPOSIBLE CONECTAR LA BASE DE DATOS, VERIFIQUE EL USUARIO Y LA CLAVE Y VUELVA A INTENTARLO'));
      RAISE;    // VOLVER A  EJECUTAR  LA OPCION
  END;
  end;
end;
procedure TFRMINICIO.datoscomparte(programa: string);
var f3: TextFile;
 nomarcontrol,nomarchivo3,ano,mes : string;
 i,x : real;
begin
  nomarchivo3 := 'c:\PROGRAMA.TXT';
  assignfile (f3,nomarchivo3);
  rewrite(F3);
  closefile(F3);
  assignfile(f3,nomarchivo3);
  append(f3);
  writeln(f3,programa);
  closefile(f3);

    WinExec(PChar('C:\SoftArs\Pactualizaciones.exe'),SW_SHOWNORMAL); {Ejecuta el Notepad.Exe}
    Application.Terminate;
    frminicio.Close;
end;

procedure TFRMINICIO.EditWinIni;
var
  AppIni: TIniFile;
  begin
  AppIni := TIniFile.Create('SOFTEPS.ini');
  Basedatos := AppIni.ReadString('Database','Database','');
  SERVIDOR := AppIni.ReadString('Database','ServerName','');
  AppIni.Free ;
end;

function TFRMINICIO.Encrypt(const S: String; Key: Word): String;
var 
        I: byte;
      begin 
        SetLength(Result,Length(S));
        for I := 1 to Length(S) do begin 
          Result[I] := char(byte(S[I]) xor (Key shr 8));
          Key := (byte(Result[I]) + Key) * C1 + C2;
        end; 
end;

function TFRMINICIO.nomcomputador: STRING;
VAR
    PCUSER   : PCHAR;
    DWUSIZE : DWORD;

 BEGIN

    DWUSIZE := 21;
    GETMEM( PCUSER, DWUSIZE );
    TRY
       IF WINDOWS.GetComputerName( PCUSER, DWUSIZE ) THEN
          RESULT := PCUSER
    FINALLY
       FREEMEM( PCUSER );
    END;
end;

END.

