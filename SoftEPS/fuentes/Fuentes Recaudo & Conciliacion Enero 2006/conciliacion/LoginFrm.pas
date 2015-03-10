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
  INTENTOS : INTEGER;
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
 EditWinIni;
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
      TRY
      SplashForm := TSplashForm.Create(Application);
      SplashForm.Show;
      SplashForm.Update;
      codaplicativo := '31';
      
      APPLICATION.CREATEFORM(TDATAMODULE1, DATAMODULE1);
      // SQLSERVER
      DATAMODULE1.DTBDATAMEC.CONNECTED := FALSE;
      DATAMODULE1.DTBDATAMEC.ConnectionString := 'Provider=SQLOLEDB.1;Password='+  'pra0271'+trim(edtusuario.text) + ';Persist Security Info=True;User ID='+ trim(edtusuario.text) +';Initial Catalog= ' + Basedatos +';Data Source=' +  SERVIDOR +';Use Procedure for Prepare=1;';
      DATAMODULE1.DTBDATAMEC.ConnectionString := DATAMODULE1.DTBDATAMEC.ConnectionString + 'Auto Translate=True;Packet Size=8192;Application Name=Recobros de  alto costo;Use Encryption for Data=False;Workstation ID ='+ nomcomputador ;
      DATAMODULE1.DTBDATAMEC.Connected := true;

                IF DATAMODULE1.DTBDATAMEC.CONNECTED = TRUE THEN
                BEGIN
                        DATAMODULE1.QRYUSUARIOS.DISABLECONTROLS;
                        DATAMODULE1.QRYUSUARIOS.CLOSE;
                        DATAMODULE1.QRYUSUARIOS.Parameters[0].VALUE := TRIM(EDTUSUARIO.TEXT);
                        DATAMODULE1.QRYUSUARIOS.OPEN;
                        DATAMODULE1.QRYUSUARIOS.ENABLECONTROLS;
                        IF DATAMODULE1.QRYUSUARIOS.RECORDCOUNT > 0 THEN
                        BEGIN
                            IF DATAMODULE1.QRYUSUARIOSCOD_ESTADO.VALUE = 'A' THEN
                            BEGIN
                             if DATAMODULE1.qryusuariosPWD_USUARIO.Value <> Encrypt(trim(edtpassword.text),1) then
                             begin
                                   ShowMessage('Clave  Errada Vefifique  Nuevamente');
                                   SplashForm.close;
                                   frminicio.Close;
                                   Application.Terminate;
                             end;


                             //LABEL3.CAPTION := ' CONECTANDO  CON LA  BASE DE DATOS';
                             GLNOMUSUARIO := DATAMODULE1.QRYUSUARIOSNOM_USUARIO.VALUE;
                             GLTIPO := DATAMODULE1.QRYUSUARIOSTIP_DOCUMENTO.VALUE;
                             GLNUMERO := DATAMODULE1.QRYUSUARIOSNUM_DOCUMENTO.VALUE;
                           //  GLNIVELUSUARIO := StrToInt(IntToStr(QRYUSUARIOSNIV_USUARIO.VALUE));
                             GLOFICINA := DATAMODULE1.QRYUSUARIOSCOD_OFICINA.VALUE;
                             GLREGIONAL := DATAMODULE1.QRYUSUARIOSCOD_REGIONAL.VALUE;
                             GLUSUARIO := EDTUSUARIO.TEXT;
                             DATAMODULE1.QRYGETDATE.DISABLECONTROLS;
                             DATAMODULE1.QRYGETDATE.CLOSE;
                             DATAMODULE1.QRYGETDATE.OPEN;
                             DATAMODULE1.QRYGETDATE.ENABLECONTROLS;
                             GLDATE := DATETOSTR(DATAMODULE1.qrygetdateSYSDATE.VALUE);
                             // DATOS  DE  COMPENSACION
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



                             SplashForm.close;
                              FRMPRINCIPAL.show;
                              FRMINICIO.REFRESH;
                              FRMINICIO.hide;

                             END
                             ELSE  IF DATAMODULE1.QRYUSUARIOSCOD_ESTADO.VALUE <> 'A' THEN
                                    BEGIN
                                    DATAMODULE1.DTBDATAMEC.CONNECTED := FALSE;
                                    SHOWMESSAGE(LowerCase('EL USUARIO  SIN PERMISOS  PARA INGRESAR  AL MODULO'));
                                    EDTUSUARIO.TEXT := '';
                                    EDTPASSWORD.TEXT := '';
                                    EDTUSUARIO.SETFOCUS;
                                    INC (INTENTOS);
                               END;


                        END
                        ELSE
                        IF DATAMODULE1.QRYUSUARIOS.RECORDCOUNT = 0 THEN
                                BEGIN
                                DATAMODULE1.DTBDATAMEC.CONNECTED := FALSE;
                                SHOWMESSAGE(LowerCase('IMPOSIBLE CONECTAR LA BASE DE DATOS, VERIFIQUE EL USUARIO Y LA CLAVE Y VUELVA A INTENTARLO'));
                                EDTUSUARIO.TEXT := '';
                                EDTPASSWORD.TEXT := '';
                                EDTUSUARIO.SETFOCUS;
                                INC (INTENTOS);
                                END;

                  END
         ELSE IF DATAMODULE1.DTBDATAMEC.CONNECTED = FALSE THEN
                BEGIN
                SHOWMESSAGE(LowerCase('VERIFIQUE  EL USUARIO Y LA  CLAVE'));
                END;
        EXCEPT  // MENASJE  DE  LOS ERRORES
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

