UNIT UPRINCIPAL;

INTERFACE

USES
  WINDOWS, MESSAGES, SYSUTILS, VARIANTS, CLASSES, GRAPHICS, CONTROLS, FORMS,
  DIALOGS, EXTCTRLS, MENUS, COMCTRLS, TOOLWIN, STDACTNS, EXTACTNS, ACTNLIST,
  IMGLIST;

TYPE
  TFRMPRINCIPAL = CLASS(TFORM)
    SB: TSTATUSBAR;
    MMPRINCIPAL: TMAINMENU;
    ARCHIVO1: TMENUITEM;
    CONFIGURARIMPRESORA1: TMENUITEM;
    IMPRIMIR1: TMENUITEM;
    N1: TMENUITEM;
    SALIR1: TMENUITEM;
    PROCESO1: TMENUITEM;
    CONSULTA1: TMENUITEM;
    AUTOLIQUIDACIONESDIGITADAS1: TMENUITEM;
    AYUDA1: TMENUITEM;
    CONTENIDO1: TMENUITEM;
    PDIMPRIMIR: TPRINTDIALOG;
    PSIIMPRIMIR: TPRINTERSETUPDIALOG;
    ACERCAR1: TMENUITEM;
    VENTANA1: TMENUITEM;
    ACTIONLIST1: TACTIONLIST;
    HORIZONTAL1: TMENUITEM;
    MINIMIZEALL1: TMENUITEM;
    MINIMIZEALL2: TMENUITEM;
    CLOSE1: TMENUITEM;
    WINDOWCLOSE1: TWINDOWCLOSE;
    WINDOWCASCADE1: TWINDOWCASCADE;
    WINDOWTILEHORIZONTAL1: TWINDOWTILEHORIZONTAL;
    WINDOWTILEVERTICAL1: TWINDOWTILEVERTICAL;
    WINDOWMINIMIZEALL1: TWINDOWMINIMIZEALL;
    WINDOWARRANGE1: TWINDOWARRANGE;
    MIXIMIZARTODO1: TMENUITEM;
    IMGPRINCIPAL: TIMAGELIST;
    IMAGE1: TIMAGE;
    INCAPACIDADES1: TMENUITEM;
    EMPRESAS1: TMENUITEM;
    INCAPACIDADESDIGITADAS1: TMENUITEM;
    MEDIOMAGNETICO1: TMENUITEM;
    COOLBAR1: TCOOLBAR;
    PAGOUPCPORSEPARADO1: TMENUITEM;
    TOOLBAR1: TTOOLBAR;
    TOOLBUTTON1: TTOOLBUTTON;
    TOOLBUTTON2: TTOOLBUTTON;
    TOOLBUTTON3: TTOOLBUTTON;
    TOOLBUTTON4: TTOOLBUTTON;
    TOOLBUTTON5: TTOOLBUTTON;
    TOOLBUTTON6: TTOOLBUTTON;
    TOOLBUTTON7: TTOOLBUTTON;
    TOOLBUTTON8: TTOOLBUTTON;
    TOOLBUTTON10: TTOOLBUTTON;
    TOOLBUTTON12: TTOOLBUTTON;
    TOOLBUTTON13: TTOOLBUTTON;
    TOOLBUTTON14: TTOOLBUTTON;
    TOOLBUTTON15: TTOOLBUTTON;
    TOOLBUTTON17: TTOOLBUTTON;
    TOOLBUTTON18: TTOOLBUTTON;
    TOOLBUTTON19: TTOOLBUTTON;
    CONFIGURAR: TACTION;
    IMPRIMIR: TACTION;
    APORTES: TACTION;
    AfiliadosporEmpresas1: TMenuItem;
    PagosporAfiliados1: TMenuItem;
    PagosPorempresas1: TMenuItem;
    PorUsuario1: TMenuItem;
    CorreciondePlanillaAportes1: TMenuItem;
    ToolButton25: TToolButton;
    Incapacidades2: TMenuItem;
    PagoIncapacidesPorTesoreria1: TMenuItem;
    A1: TMenuItem;
    Notas1: TMenuItem;
    Debistos1: TMenuItem;
    Credito1: TMenuItem;
    ToolButton9: TToolButton;
    ToolButton16: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    Notas2: TMenuItem;
    PagodeNotasPorTesoreria1: TMenuItem;
    DescuentoporTesoreria1: TMenuItem;
    DescuentoPorAutoliquidaciones1: TMenuItem;
    ModificacionNRS1: TMenuItem;




    PROCEDURE TOOLBUTTON6CLICK(SENDER: TOBJECT);
    PROCEDURE CONFIGURARIMPRESORA1CLICK(SENDER: TOBJECT);
    PROCEDURE IMPRIMIR1CLICK(SENDER: TOBJECT);
    PROCEDURE ACERCAR1CLICK(SENDER: TOBJECT);
    PROCEDURE FORMSHOW(SENDER: TOBJECT);
    PROCEDURE EMPRESAS1CLICK(SENDER: TOBJECT);
    PROCEDURE INCAPACIDADES1CLICK(SENDER: TOBJECT);
    PROCEDURE MEDIOMAGNETICO1CLICK(SENDER: TOBJECT);
    // FUNCIONES
    FUNCTION  GETAPPINFO(DE:STRING):STRING;
    PROCEDURE FORMACTIVATE(SENDER: TOBJECT);
    FUNCTION EDAD(FECHANACIMIENTO: STRING): INTEGER;
    FUNCTION DIASMES(FECHA: TDATETIME): INTEGER;
    procedure ToolButton7Click(Sender: TObject);
    procedure PagoUPCporSeparado1Click(Sender: TObject);
    procedure PagosporAfiliados1Click(Sender: TObject);
    procedure PagosPorempresas1Click(Sender: TObject);
    procedure PorUsuario1Click(Sender: TObject);
    procedure AfiliadosporEmpresas1Click(Sender: TObject);
    procedure CorreciondePlanillaAportes1Click(Sender: TObject);
    procedure PagoIncapacidesPorTesoreria1Click(Sender: TObject);
    procedure Debistos1Click(Sender: TObject);
    procedure Credito1Click(Sender: TObject);
    procedure ModificacionNRS1Click(Sender: TObject);
    procedure  Salariobase(periodo_cotizacion:STRING);
    function pasarletras(numero:LONGINT):string;


  PRIVATE
    { PRIVATE DECLARATIONS }
  PUBLIC
    { PUBLIC DECLARATIONS }
  END;
                             
VAR
 FRMPRINCIPAL: TFRMPRINCIPAL;

IMPLEMENTATION

USES UACERCA, UPLANILLAS, UMPLANILLA, UINCAPACIDADES, UINDEPENDIENTES,
  DTMODULO, UGLOBAL, LOGINFRM, UAUTOMAGNETICO,
  UPAGOUPCADICIONAL, Uconpagos, Uconpagose,
  Uafiliados, Uafiliaempresa, Uincafiliado, Uplanillacorreciones,
  upagoincaptesoreria, upagonotasautoliquidacion, Umodficacionnrs;

{$R *.DFM}

PROCEDURE TFRMPRINCIPAL.TOOLBUTTON6CLICK(SENDER: TOBJECT);
BEGIN
CLOSE;

END;

PROCEDURE TFRMPRINCIPAL.CONFIGURARIMPRESORA1CLICK(SENDER: TOBJECT);
BEGIN
PSIIMPRIMIR.EXECUTE;
END;

PROCEDURE TFRMPRINCIPAL.IMPRIMIR1CLICK(SENDER: TOBJECT);
BEGIN
PDIMPRIMIR.EXECUTE;
END;

PROCEDURE TFRMPRINCIPAL.ACERCAR1CLICK(SENDER: TOBJECT);
BEGIN
//ABOUTBOX.SHOWMODAL
ABOUTBOX:=TABOUTBOX.CREATE(APPLICATION);
TRY
ABOUTBOX.SHOW;
EXCEPT
ABOUTBOX.FREE;
END;

END;

PROCEDURE TFRMPRINCIPAL.INCAPACIDADES1CLICK(SENDER: TOBJECT);
BEGIN
FRMINCAPACIDADES:=TFRMINCAPACIDADES.CREATE(APPLICATION);
   TRY
    FRMINCAPACIDADES.WindowState := wsMaximized;
    FRMINCAPACIDADES.Edtnumero.Text := '0';
    FRMINCAPACIDADES.Edtnumero.SetFocus;
    FRMINCAPACIDADES.SHOW;
   //FINALLY
   EXCEPT
   FRMINCAPACIDADES.FREE;
   END;

END;



PROCEDURE TFRMPRINCIPAL.FORMSHOW(SENDER: TOBJECT);
BEGIN
SB.PANELS[0].TEXT := ' USUARIO CONECTADO :' + GLNOMUSUARIO;
SB.PANELS[3].TEXT := 'FECHA  ACTUAL ' + GLDATE;
SB.PANELS[1].TEXT := 'PROCESO ABIERTO ACTUAL'+ GLPROCESO;
END;

PROCEDURE TFRMPRINCIPAL.EMPRESAS1CLICK(SENDER: TOBJECT);
BEGIN
FRMPLANILLAS:=TFRMPLANILLAS.CREATE(APPLICATION);
TRY
FRMPLANILLAS.WindowState := wsMaximized;
FRMPLANILLAS.TABSHEET4.TabVisible := false;
FRMPLANILLAS.PCENCABEZADO.ActivePage := FRMPLANILLAS.TABSHEET1;
FRMPLANILLAS.EDTPLANILLA.Text := '0';
FRMPLANILLAS.EDTPLANILLA.SetFocus;
FRMPLANILLAS.SHOW;
//FINALLY
EXCEPT
FRMPLANILLAS.FREE;
END;
END;

PROCEDURE TFRMPRINCIPAL.MEDIOMAGNETICO1CLICK(SENDER: TOBJECT);
BEGIN
FRMAUTOLIQUIDACIONMAGNETICA:=TFRMAUTOLIQUIDACIONMAGNETICA.CREATE(APPLICATION);
TRY
  FRMAUTOLIQUIDACIONMAGNETICA.WindowState := wsMaximized;
  FRMAUTOLIQUIDACIONMAGNETICA.PAGECONTROL1.ActivePage := FRMAUTOLIQUIDACIONMAGNETICA.TABSHEET1;

      IF FRMAUTOLIQUIDACIONMAGNETICA.EDTNOMBREARCHIVO.TEXT <> '' THEN
      BEGIN
      FRMAUTOLIQUIDACIONMAGNETICA.edtnumplanilla.SetFocus;
      FRMAUTOLIQUIDACIONMAGNETICA.SHOW;
      END
      ELSE
      begin
      ShowMessage(LowerCase('Debe Selecionar el nombre del archivo  Magnetico para  continuar'));
      FRMAUTOLIQUIDACIONMAGNETICA.FREE;
      END;

//FINALLY
EXCEPT
FRMAUTOLIQUIDACIONMAGNETICA.FREE;
END;

END;

FUNCTION TFRMPRINCIPAL.GETAPPINFO(DE: STRING): STRING;
  {SE PUEDEN PEDIR LOS SIGUIENTES DATOS:
     COMPANYNAME
     FILEDESCRIPTION
     FILEVERSION
     INTERNALNAME
     LEGALCOPYRIGHT
     ORIGINALFILENAME
     PRODUCTNAME
     PRODUCTVERSION
  }

  TYPE
    PALEERBUFFER = ARRAY [0..MAX_PATH] OF CHAR;

  VAR
   SIZE, SIZE2 : DWORD;
   PT, PT2     : POINTER;
   IDIOMA      : STRING;

   BEGIN
     RESULT:='';
     SIZE := GETFILEVERSIONINFOSIZE(PCHAR (APPLICATION.EXENAME), SIZE2);
     IF SIZE > 0 THEN
     BEGIN
       GETMEM (PT, SIZE);
       GETFILEVERSIONINFO (PCHAR (PARAMSTR (0)), 0, SIZE, PT);
       {OBTENEMOS LA CADENA DE TRANSLACION, REQUERIDA PARA OBTENER EL RESTO
       DE DATOS DEL VERSIONINFO}
       VERQUERYVALUE( PT, '\VARFILEINFO\TRANSLATION',PT2, SIZE2);
       IDIOMA:=INTTOHEX( DWORD(PT2^) ,8 );
       {LE DAMOS LA VUELTA (ES WINDOWS, QUE QUIERES...}
       IDIOMA:=COPY(IDIOMA,5,4)+COPY(IDIOMA,1,4);

       {PEDIMOS LA INFO REQUERIDA...}
       VERQUERYVALUE( PT,
                      PCHAR('\STRINGFILEINFO\'+
                      IDIOMA+'\'+
                      DE),
                      PT2, SIZE2);
       IF SIZE2 > 0 THEN
       BEGIN
         {Y LA DEVOLVEMOS}
         RESULT:=COPY(PALEERBUFFER(PT2^),1,SIZE2);
       END ELSE
         RAISE EXCEPTION.CREATE( 'NO EXISTE ESA INFORMACION EN ESTE EJECUTABLE'+
                                 #13+
                                 'THERE ARE NOT THIS INFO IN THIS EXECUTABLE');
       FREEMEM (PT);
     END ELSE
       RAISE EXCEPTION.CREATE ( 'LO SIENTO, NO HAY VERSIONINFO DISPONIBLE '+
                                'EN ESTE EJECUTABLE.'+#13+
                                'SORRY THERE ARE NOT VERSIONINFO AVAILABLE'+
                                'IN THIS EXECUTABLE.');
   END;

PROCEDURE TFRMPRINCIPAL.FORMACTIVATE(SENDER: TOBJECT);
BEGIN
frmprincipal.Caption:= GetAppInfo('FileDescription') +' VERSION ' + GetAppInfo('FileVersion');
END;

FUNCTION TFRMPRINCIPAL.EDAD(FECHANACIMIENTO: STRING): INTEGER;
   VAR
      ITEMP,ITEMP2,NADA:WORD;
      FECHA:TDATE;
   BEGIN
     FECHA:=STRTODATE(FECHANACIMIENTO);
     DECODEDATE(DATE,ITEMP,NADA,NADA);
     DECODEDATE(FECHA,ITEMP2,NADA,NADA);
      IF FORMATDATETIME('MMDD',STRTODATE(GLDATE)) <
         FORMATDATETIME('MMDD',FECHA) THEN RESULT:=ITEMP-ITEMP2-1
                                      ELSE RESULT:=ITEMP-ITEMP2;

END;


function TFRMPRINCIPAL.DIASMES(FECHA: TDATETIME): INTEGER;
VAR
   PRIMERDIAMES, PRIMERDIAMESSIGUIENTE : TDATETIME;
   ANYO, MES, DIA: WORD;
BEGIN
   DECODEDATE( FECHA, ANYO, MES, DIA );
   PRIMERDIAMES := ENCODEDATE(ANYO, MES, 1);
   PRIMERDIAMESSIGUIENTE := INCMONTH(PRIMERDIAMES, 1);
   RESULT := ROUND(PRIMERDIAMESSIGUIENTE - PRIMERDIAMES);


end;

procedure TFRMPRINCIPAL.ToolButton7Click(Sender: TObject);
begin
 frmpagoupc:=Tfrmpagoupc.create(application);
   try
   frmpagoupc.show;
   //finally
   except
      frmpagoupc.Free;
   end;

end;

procedure TFRMPRINCIPAL.PagoUPCporSeparado1Click(Sender: TObject);
begin
 frmpagoupc:=Tfrmpagoupc.create(application);
   try
   frmpagoupc.WindowState := wsMaximized;
   frmpagoupc.PAGECONTROL1.ActivePage := FRMPAGOUPC.TABSHEET1;
   frmpagoupc.NUEVO_REGISTRO;
   frmpagoupc.EDTPLANILLA.SetFocus;
   
   frmpagoupc.show;
   //finally
   except
      frmpagoupc.Free;
   end;
end;

procedure TFRMPRINCIPAL.PagosporAfiliados1Click(Sender: TObject);
begin
FRMPAGOSAFILIADOS:=TFRMPAGOSAFILIADOS.create(application);
   try
   FRMPAGOSAFILIADOS.WindowState := wsMaximized;
   FRMPAGOSAFILIADOS.CBTIPO.SetFocus;
   FRMPAGOSAFILIADOS.show;


   //finally
   except
      FRMPAGOSAFILIADOS.Free;
   end;

end;

procedure TFRMPRINCIPAL.PagosPorempresas1Click(Sender: TObject);
begin
FRMPAGOSEMPRESA:=TFRMPAGOSEMPRESA.create(application);
   try
   FRMPAGOSEMPRESA.WindowState := wsMaximized;
   FRMPAGOSEMPRESA.CBTIPO.SetFocus;
   FRMPAGOSEMPRESA.show;

   //finally
   except
      FRMPAGOSEMPRESA.Free;
   end;
end;

procedure TFRMPRINCIPAL.PorUsuario1Click(Sender: TObject);
begin
frmincaporusuario:=Tfrmincaporusuario.create(application);
   try
   FRMINCAPORUSUARIO.WindowState := wsMaximized;
   FRMINCAPORUSUARIO.CBTIPO.SetFocus;
   frmincaporusuario.show;


   //finally
   except
      frmincaporusuario.Free;
   end;

end;

procedure TFRMPRINCIPAL.AfiliadosporEmpresas1Click(Sender: TObject);
begin
FRMAFILIEMPRESA:=TFRMAFILIEMPRESA.create(application);
   try
   FRMAFILIEMPRESA.WindowState := wsMaximized;
   FRMAFILIEMPRESA.CBTIPO.SetFocus;
   FRMAFILIEMPRESA.show;
   //finally
   except
      FRMAFILIEMPRESA.Free;
   end;

end;

procedure TFRMPRINCIPAL.CorreciondePlanillaAportes1Click(Sender: TObject);
begin
FRMCORRECIONES:=TFRMCORRECIONES.create(application);
   try
   FRMCORRECIONES.WindowState := wsMaximized;
   FRMCORRECIONES.PCENCABEZADO.ActivePage := FRMCORRECIONES.TABSHEET1;
   FRMCORRECIONES.EDTPLANILLA.Text := '0';
   FRMCORRECIONES.EDTPLANILLA.SetFocus;

   FRMCORRECIONES.show;
   //finally
   except
      FRMCORRECIONES.Free;
   end;
end;

procedure TFRMPRINCIPAL.PagoIncapacidesPorTesoreria1Click(Sender: TObject);
begin
frmdesincaptesoreria:=Tfrmdesincaptesoreria.create(application);
   try
   DATAMODULE1.qrydocumentos.Open;
   frmdesincaptesoreria.WindowState := wsMaximized;
   frmdesincaptesoreria.btncancelar.Click;
   frmdesincaptesoreria.DBLookupComboBox1.setfocus;

   frmdesincaptesoreria.show;
   //finally
   except
      frmdesincaptesoreria.Free;
   end;

end;

procedure TFRMPRINCIPAL.Debistos1Click(Sender: TObject);
begin
frmpagonotasautoliquidacion:=Tfrmpagonotasautoliquidacion.create(application);
   try
   frmpagonotasautoliquidacion.Label47.Caption := 'NOTAS  DEBITO ';
   frmpagonotasautoliquidacion.Caption := frmpagonotasautoliquidacion.Label47.Caption;
   DATAMODULE1.qrydocumentos.Open;
   frmpagonotasautoliquidacion.WindowState := wsMaximized;
   frmpagonotasautoliquidacion.btncancelar.Click;
   frmpagonotasautoliquidacion.DBLookupComboBox1.setfocus;

   frmpagonotasautoliquidacion.show;
   //finally
   except
      frmpagonotasautoliquidacion.Free;
   end;


end;

procedure TFRMPRINCIPAL.Credito1Click(Sender: TObject);
begin
frmpagonotasautoliquidacion:=Tfrmpagonotasautoliquidacion.create(application);
   try
   frmpagonotasautoliquidacion.Label47.Caption := 'NOTAS  CREDITO';
   frmpagonotasautoliquidacion.Caption := frmpagonotasautoliquidacion.Label47.Caption;
   DATAMODULE1.qrydocumentos.Open;
   frmpagonotasautoliquidacion.WindowState := wsMaximized;
   frmpagonotasautoliquidacion.btncancelar.Click;
   frmpagonotasautoliquidacion.DBLookupComboBox1.setfocus;

   frmpagonotasautoliquidacion.show;
   //finally
   except
      frmpagonotasautoliquidacion.Free;
   end;



end;

procedure TFRMPRINCIPAL.ModificacionNRS1Click(Sender: TObject);
begin
frmnoregistrados:=Tfrmnoregistrados.create(application);
   try
   DATAMODULE1.qrydocumentos.Open;
   frmnoregistrados.WindowState := wsMaximized;
   frmnoregistrados.EDTPERIODO.SetFocus;

   frmnoregistrados.show;
   //finally
   except
      frmnoregistrados.Free;
   end;


end;






procedure TFRMPRINCIPAL.Salariobase(periodo_cotizacion: STRING);
VAR ANO,MES : STRING;
    FECHA : TDATE;
BEGIN
     FECHA  := STRTODATE('01/' + periodo_cotizacion);
     ANO:=(FORMATDATETIME('YYYY',FECHA));
     MES:=(FORMATDATETIME('MM',FECHA));
       if  mes = '01' then
       begin
       ano :=  floattostr(strtofloat(ano)-1);
       DATAMODULE1.QRYVALORESCOMPENSACION.CLOSE;
       DATAMODULE1.QRYVALORESCOMPENSACION.PARAMBYNAME('PANO').VALUE := STRTODATE('01/01/'+ ANO);
       DATAMODULE1.QRYVALORESCOMPENSACION.OPEN;
       GLSALARIOMINIMO := DATAMODULE1.QRYVALORESCOMPENSACIONSAL_MINIMO.VALUE;
       end
       else
       begin
       DATAMODULE1.QRYVALORESCOMPENSACION.CLOSE;
       DATAMODULE1.QRYVALORESCOMPENSACION.PARAMBYNAME('PANO').VALUE := STRTODATE('01/01/'+ ANO);
       DATAMODULE1.QRYVALORESCOMPENSACION.OPEN;
       GLSALARIOMINIMO := DATAMODULE1.QRYVALORESCOMPENSACIONSAL_MINIMO.VALUE;

       end;


end;

function TFRMPRINCIPAL.pasarletras(numero: LONGINT): string;
FUNCTION XINTTOLLETRAS(NUMERO:LONGINT):STRING;
  FUNCTION XXINTTOLLETRAS(VALOR:LONGINT):STRING;
  CONST
   AUNIDAD : ARRAY[1..15] OF STRING =
     ('UN','DOS','TRES','CUATRO','CINCO','SEIS',
      'SIETE','OCHO','NUEVE','DIEZ','ONCE','DOCE',
      'TRECE','CATORCE','QUINCE');
   ACENTENA: ARRAY[1..9]  OF STRING =
     ('CIENTO','DOSCIENTOS','TRESCIENTOS',
      'CUATROCIENTOS','QUINIENTOS','SEISCIENTOS',
      'SETECIENTOS','OCHOCIENTOS','NOVECIENTOS');
   ADECENA : ARRAY[1..9]  OF STRING =
    ('DIECI','VEINTI','TREINTA','CUARENTA','CINCUENTA',
     'SESENTA','SETENTA','OCHENTA','NOVENTA');
  VAR
   CENTENA, DECENA, UNIDAD, DOBLE: LONGINT;
   LINEA: STRING;
  BEGIN
   IF VALOR=100 THEN LINEA:=' CIEN '
   ELSE BEGIN
     LINEA:='';
     CENTENA := VALOR DIV 100;
     DOBLE   := VALOR - (CENTENA*100);
     DECENA  := (VALOR DIV 10) - (CENTENA*10);
     UNIDAD  := VALOR - (DECENA*10) - (CENTENA*100);

     IF CENTENA>0 THEN LINEA := LINEA + ACENTENA[CENTENA]+' ';

     IF DOBLE>0 THEN BEGIN
       IF DOBLE=20 THEN LINEA := LINEA +' VEINTE '
         ELSE BEGIN
          IF DOBLE<16 THEN LINEA := LINEA + AUNIDAD[DOBLE]
            ELSE BEGIN
                 LINEA := LINEA +' '+ ADECENA[DECENA];
                 IF (DECENA>2) AND (UNIDAD<>0) THEN LINEA := LINEA+' Y ';
                 IF UNIDAD>0 THEN LINEA := LINEA + AUNIDAD[UNIDAD];
            END;
         END;
     END;
   END;
   RESULT := LINEA;
  END;

VAR
   MILLONES,MILES,UNIDADES: LONGINT;
   LINEA : STRING;
BEGIN
  {INICIALIZAMOS EL STRING QUE CONTENDRÁ LAS LETRAS SEGÚN EL VALOR
  NUMÉRICO}
  IF NUMERO=0 THEN LINEA := 'CERO'
  ELSE IF NUMERO<0 THEN LINEA := 'MENOS '
       ELSE IF NUMERO=1 THEN
            BEGIN
              LINEA := 'UN';
              XINTTOLLETRAS := LINEA;
              EXIT
            END
            ELSE IF NUMERO>1 THEN LINEA := '';

  {DETERMINAMOS EL Nº DE MILLONES, MILES Y UNIDADES DE NUMERO EN
  POSITIVO}
  NUMERO   := ABS(NUMERO);
  MILLONES := NUMERO DIV 1000000;
  MILES     := (NUMERO - (MILLONES*1000000)) DIV 1000;
  UNIDADES  := NUMERO - ((MILLONES*1000000)+(MILES*1000));

  {VAMOS PONIENDO EN EL STRING LAS CADENAS DE LOS NÚMEROS(LLAMANDO
  A SUBFUNCION)}
  IF MILLONES=1 THEN LINEA:= LINEA + ' UN MILLON '
  ELSE IF MILLONES>1 THEN LINEA := LINEA + XXINTTOLLETRAS(MILLONES)
                                   + ' MILLONES ';

  IF MILES =1 THEN LINEA:= LINEA + ' MIL '
  ELSE IF MILES>1 THEN LINEA := LINEA + XXINTTOLLETRAS(MILES)+
                                ' MIL ';

  IF UNIDADES >0 THEN LINEA := LINEA + XXINTTOLLETRAS(UNIDADES);

  XINTTOLLETRAS := LINEA + '  DIAS';
END;

BEGIN
  pasarletras:= XINTTOLLETRAS(numero);

end;

END.

