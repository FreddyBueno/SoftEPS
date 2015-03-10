UNIT UPRINCIPAL;

INTERFACE

USES
  WINDOWS, MESSAGES, SYSUTILS, VARIANTS, CLASSES, GRAPHICS, CONTROLS, FORMS,
  DIALOGS, EXTCTRLS, MENUS, COMCTRLS, TOOLWIN, STDACTNS, EXTACTNS, ACTNLIST,
  IMGLIST, jpeg;

TYPE
    TFRMPRINCIPAL = CLASS(TFORM)
    SB: TStatusBar;
    MMPRINCIPAL: TMAINMENU;
    ARCHIVO1: TMENUITEM;
    CONFIGURARIMPRESORA1: TMENUITEM;
    IMPRIMIR1: TMENUITEM;
    N1: TMENUITEM;
    SALIR1: TMENUITEM;
    PROCESO1: TMENUITEM;
    CONSULTA1: TMENUITEM;
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
    INCAPACIDADES1: TMENUITEM;
    EMPRESAS1: TMENUITEM;
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
    PagodeNotasPorTesoreria1: TMenuItem;
    DescuentoporTesoreria1: TMenuItem;
    DescuentoPorAutoliquidaciones1: TMenuItem;
    ModificacionNRS1: TMenuItem;
    ConsultadeAfiliadosporUPC1: TMenuItem;
    ReclasificarLosEstadoPlanillas1: TMenuItem;
    RetirodeAfiliadosPorPLanilla1: TMenuItem;
    ConsultadePlanillas1: TMenuItem;
    Afiliados1: TMenuItem;
    ConsultadeAfiadosCotizantes1: TMenuItem;
    ConsultasporEmpresa1: TMenuItem;
    ReportedeAfiliadosSinpagos1: TMenuItem;
    ReportedeAfiliadosconPagosIncosistentes1: TMenuItem;
    CONSULTADEDIGITACION1: TMenuItem;
    DigitaciondePlanillasporUsuario1: TMenuItem;
    ListadodePlanillasInconsitentes1: TMenuItem;
    ListadosPorLotes1: TMenuItem;
    ListadodeAfiliadosPendientesdeRetiro1: TMenuItem;
    ListadodeNotasDebitos1: TMenuItem;
    ListadodeNotasCreditos1: TMenuItem;
    Image1: TImage;
    MedioNotificacion1: TMenuItem;
    LiquidaciondeIncapacidadesAccciondeTutela1: TMenuItem;
    Parametrizacion: TMenuItem;
    Inconsistencias1: TMenuItem;
    DigitacionPlanillassinAnexos1: TMenuItem;
    Incapacidades3: TMenuItem;
    ConsultadeIncapacidades1: TMenuItem;
    IncapacidadesporNumero1: TMenuItem;

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
    procedure ConsultadeAfiliadosporUPC1Click(Sender: TObject);
    procedure ReclasificarLosEstadoPlanillas1Click(Sender: TObject);
    procedure RetirodeAfiliadosPorPLanilla1Click(Sender: TObject);
    procedure ConsultadePlanillas1Click(Sender: TObject);
    procedure ConsultadeAfiadosCotizantes1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ReportedeAfiliadosSinpagos1Click(Sender: TObject);
    procedure ReportedeAfiliadosconPagosIncosistentes1Click(
      Sender: TObject);
    procedure DigitaciondePlanillasporUsuario1Click(Sender: TObject);
    procedure ListadodePlanillasInconsitentes1Click(Sender: TObject);
    procedure ListadosPorLotes1Click(Sender: TObject);
    procedure ListadodeAfiliadosPendientesdeRetiro1Click(Sender: TObject);
    procedure grabarmenu(codaplicativo : string);
    function permisos(codaplicativo : string;usuario : string) : Boolean;
    procedure MedioNotificacion1Click(Sender: TObject);
    procedure LiquidaciondeIncapacidadesAccciondeTutela1Click(
      Sender: TObject);
    procedure ParametrizacionClick(Sender: TObject);
    procedure Inconsistencias1Click(Sender: TObject);
    procedure DigitacionPlanillassinAnexos1Click(Sender: TObject);
    procedure ListadodeNotasDebitos1Click(Sender: TObject);
    procedure ListadodeNotasCreditos1Click(Sender: TObject);
    procedure Incapacidades3Click(Sender: TObject);
    procedure IncapacidadesporNumero1Click(Sender: TObject);



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
  upagoincaptesoreria, upagonotasautoliquidacion, Umodficacionnrs,
  UConsultaUPC, UValidarEstadoPlanillas, URetiroAfiliados,
  UConsultadePlanillas, UinformacionAfiliado, UAfiliadossinpagos,
  UAfiliadoscopagosinc, UListadodigitacon, UListadodigitacioninco,
  UListadodigitacionlotes, Uconsultaretirospendientes, Umedio_notificacion,
  UincapacidadesTUTELA, Uaprobacion, Ureporte_inconsistencias,
  Uplanillas_sinanexos, Uincaaportante,
  Uincaapornumero, UConsultasnotas;

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
    FRMINCAPACIDADES.WindowState := wsNormal;
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
FRMPLANILLAS.PCENCABEZADO.ActivePage := FRMPLANILLAS.TABSHEET1;
FRMPLANILLAS.WindowState := wsNormal;
FRMPLANILLAS.TABSHEET4.TabVisible := false;
FRMPLANILLAS.EDTPLANILLA.Text := '';
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
  FRMAUTOLIQUIDACIONMAGNETICA.WindowState := wsNormal;
  FRMAUTOLIQUIDACIONMAGNETICA.PAGECONTROL1.ActivePage := FRMAUTOLIQUIDACIONMAGNETICA.TABSHEET1;

      IF FRMAUTOLIQUIDACIONMAGNETICA.EDTNOMBREARCHIVO.TEXT <> '' THEN
      BEGIN
      FRMAUTOLIQUIDACIONMAGNETICA.CHBFIE.SetFocus;
      //FRMAUTOLIQUIDACIONMAGNETICA.edtnumplanilla.SetFocus;
      FRMAUTOLIQUIDACIONMAGNETICA.SHOW;
      END
      ELSE
      begin
      ShowMessage(LowerCase('Debe Seleccionar el nombre del archivo  Magnetico para  continuar'));
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
   frmpagoupc.WindowState := wsNormal;
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
   FRMPAGOSAFILIADOS.WindowState := wsNormal;
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
   FRMPAGOSEMPRESA.WindowState := wsNormal;
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
   FRMINCAPORUSUARIO.WindowState := wsNormal;
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
   FRMAFILIEMPRESA.WindowState := wsNormal;
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
   FRMCORRECIONES.PCENCABEZADO.ActivePage := FRMCORRECIONES.TABSHEET1;
   FRMCORRECIONES.WindowState := wsNormal;
   FRMCORRECIONES.TABSHEET4.TabVisible := false;
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
   frmdesincaptesoreria.WindowState := wsNormal;
   frmdesincaptesoreria.show;
 //  frmdesincaptesoreria.btncancelar.Click;

   //finally
   except
      frmdesincaptesoreria.Free;
   end;

end;

procedure TFRMPRINCIPAL.Debistos1Click(Sender: TObject);
begin
frmpagonotasautoliquidacion:=Tfrmpagonotasautoliquidacion.create(application);
   try
   frmpagonotasautoliquidacion.WindowState := wsNormal;
   frmpagonotasautoliquidacion.Label47.Caption := 'NOTAS  DEBITO ';
   frmpagonotasautoliquidacion.Caption := frmpagonotasautoliquidacion.Label47.Caption;
  // frmpagonotasautoliquidacion.DBLookupComboBox1.setfocus;

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
   frmpagonotasautoliquidacion.WindowState := wsNormal;
   frmpagonotasautoliquidacion.Label47.Caption := 'NOTAS  CREDITO';
   frmpagonotasautoliquidacion.Caption := frmpagonotasautoliquidacion.Label47.Caption;
  // frmpagonotasautoliquidacion.DBLookupComboBox1.setfocus;

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
   frmnoregistrados.WindowState := wsNormal;

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
       DATAMODULE1.QRYVALORESCOMPENSACION.Parameters[0].VALUE := FloatToDateTime(STRTODATE('01/01/'+ ANO));
       DATAMODULE1.QRYVALORESCOMPENSACION.OPEN;
       GLSALARIOMINIMO := DATAMODULE1.QRYVALORESCOMPENSACIONSAL_MINIMO.VALUE;
       end
       else
       begin
       DATAMODULE1.QRYVALORESCOMPENSACION.CLOSE;
       DATAMODULE1.QRYVALORESCOMPENSACION.Parameters[0].VALUE := FloatToDateTime(STRTODATE('01/01/'+ ANO));
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

procedure TFRMPRINCIPAL.ConsultadeAfiliadosporUPC1Click(Sender: TObject);
begin
frmconsultaafiliadosben:=Tfrmconsultaafiliadosben.create(application);
   try
   frmconsultaafiliadosben.WindowState := wsNormal;
   frmconsultaafiliadosben.show;
   //finally
   except
      frmconsultaafiliadosben.Free;
   end;

end;

procedure TFRMPRINCIPAL.ReclasificarLosEstadoPlanillas1Click(
  Sender: TObject);
begin
frmValidarEstados:=TfrmValidarEstados.create(application);
   try
   frmValidarEstados.Show;
   frmValidarEstados.WindowState := wsNormal;
   //finally
   except
      frmValidarEstados.Free;
   end;

end;

procedure TFRMPRINCIPAL.RetirodeAfiliadosPorPLanilla1Click(
  Sender: TObject);
begin


frmRetiroAfiliados:=TfrmRetiroAfiliados.create(application);
   try
   frmRetiroAfiliados.Show;
   frmRetiroAfiliados.WindowState := wsNormal;
   //finally
   except
      frmRetiroAfiliados.Free;
   end;

end;

procedure TFRMPRINCIPAL.ConsultadePlanillas1Click(Sender: TObject);
begin

frmConsultaplanlla:=TfrmConsultaplanlla.create(application);
   try
   frmConsultaplanlla.Show;
   frmConsultaplanlla.WindowState := wsNormal;
   //finally
   except
      frmConsultaplanlla.Free;
   end;



end;

procedure TFRMPRINCIPAL.ConsultadeAfiadosCotizantes1Click(Sender: TObject);
begin

frmInformacionAfiliados:=TfrmInformacionAfiliados.create(application);
   try
   frmInformacionAfiliados.Show;
   frmInformacionAfiliados.WindowState := wsNormal;
   //finally
   except
      frmInformacionAfiliados.Free;
   end;

end;

procedure TFRMPRINCIPAL.FormCreate(Sender: TObject);
begin
   DATAMODULE1.qrydocumentos.Open;
   DATAMODULE1.QryModalidad.Open;
   DATAMODULE1.qrydepartamentos.OPEN;
   DATAMODULE1.qrybancos.OPEN;

   IF DATAMODULE1.qrybancos.RecordCount = 0 THEN
   BEGIN
   ShowMessage(LowerCase('NO  HAY  BANCOS '));
   END;

end;

procedure TFRMPRINCIPAL.ReportedeAfiliadosSinpagos1Click(Sender: TObject);
begin

frmAfilidosSinpagos:=TfrmAfilidosSinpagos.create(application);
   try
   frmAfilidosSinpagos.Show;
   frmAfilidosSinpagos.WindowState := wsNormal;
   //finally
   except
      frmAfilidosSinpagos.Free;
   end;

end;

procedure TFRMPRINCIPAL.ReportedeAfiliadosconPagosIncosistentes1Click(
  Sender: TObject);
begin
frmpagosinconsitentes:=Tfrmpagosinconsitentes.create(application);
   try
   frmpagosinconsitentes.Show;
   frmpagosinconsitentes.WindowState := wsNormal;
   //finally
   except
      frmpagosinconsitentes.Free;
   end;

end;

procedure TFRMPRINCIPAL.DigitaciondePlanillasporUsuario1Click(
  Sender: TObject);
begin


frmListadoinconsitentes:=TfrmListadoinconsitentes.create(application);
   try
   frmListadoinconsitentes.Show;
   frmListadoinconsitentes.WindowState := wsNormal;
   //finally
   except
      frmListadoinconsitentes.Free;
   end;


end;

procedure TFRMPRINCIPAL.ListadodePlanillasInconsitentes1Click(
  Sender: TObject);
begin


frmlistadoincosistencias:=Tfrmlistadoincosistencias.create(application);
   try
   frmlistadoincosistencias.Show;
   frmlistadoincosistencias.WindowState := wsNormal;
   //finally
   except
      frmlistadoincosistencias.Free;
   end;

end;

procedure TFRMPRINCIPAL.ListadosPorLotes1Click(Sender: TObject);
begin


frmlistadolotes:=Tfrmlistadolotes.create(application);
   try
   frmlistadolotes.Show;
   frmlistadolotes.WindowState := wsNormal;
   //finally
   except
      frmlistadolotes.Free;
   end;


end;

procedure TFRMPRINCIPAL.ListadodeAfiliadosPendientesdeRetiro1Click(
  Sender: TObject);
begin

frmConsultaplanlla1:=TfrmConsultaplanlla1.create(application);
   try
   frmConsultaplanlla1.Show;
   frmConsultaplanlla1.WindowState := wsNormal;
   //finally
   except
      frmConsultaplanlla1.Free;
   end;


end;

procedure TFRMPRINCIPAL.grabarmenu(codaplicativo: string);
var Contador: Integer;
Nodo1: string;
N:byte;
      Procedure AnadeOpcion(Opcion: TMenuItem; Nodo: string;indmenu : integer );
      Var
      Contador: Integer;
      codigo: string;
      Begin
       For Contador := 0 To Opcion.Count-1 Do
       begin
            Opcion.Items[Contador].Enabled := false;
            Nodo1 := DATAMODULE1.alinearcero(inttostr(indmenu),2)+ DATAMODULE1.alinearcero(inttostr(Opcion.Items[Contador].MenuIndex),3);
            DATAMODULE1.qrysegudidad.close;
	    DATAMODULE1.qrysegudidad.SQL.Clear;
	    DATAMODULE1.qrysegudidad.SQL.add('select *  from Seguridad where cod_aplicacion = :"aplicacion" and cod_menu = :"menu"');
	    DATAMODULE1.qrysegudidad.Parameters[0].Value := codaplicativo;
	    DATAMODULE1.qrysegudidad.Parameters[1].Value := Nodo1;
	    DATAMODULE1.qrysegudidad.open;
	      if DATAMODULE1.qrysegudidad.RecordCount = 0 then
	      begin
		DATAMODULE1.qrysegudidad.Insert;
		DATAMODULE1.qrysegudidadcod_aplicacion.Value :=codaplicativo;
		DATAMODULE1.qrysegudidadnom_aplicacion.Value :=UpperCase(APPLICATION.TITLE);
		DATAMODULE1.qrysegudidadcod_menu.Value  := Nodo1;
		DATAMODULE1.qrysegudidadcod_campo.Value  := Opcion.Items[Contador].Caption;
		DATAMODULE1.qrysegudidad.Post;
	      end;
       end;

      End;
	  Begin
	  For Contador := 0 To Menu.Items.Count-1 Do
	  AnadeOpcion(Menu.Items[Contador], Nodo1, Contador);


  // nodo -> string ; campo -> Alfanumerico


end;

function TFRMPRINCIPAL.permisos(codaplicativo, usuario: string): Boolean;
var Contador: Integer;
Nodo1: string;
N:byte;
      Procedure AnadeOpcion(Opcion: TMenuItem; Nodo: string;indmenu : integer );
      Var
      Contador: Integer;
      codigo: string;
      Begin
       For Contador := 0 To Opcion.Count-1 Do
       begin
	          DATAMODULE1.qrypermisos.close;
            DATAMODULE1.qrypermisos.SQL.Clear;
	          DATAMODULE1.qrypermisos.SQL.add('Select *  from permisos  where cod_usuario = :"usuario" and cod_aplicacion = :"aplicacion" and cod_menu = :"codigo" ');
            DATAMODULE1.qrypermisos.Parameters[1].Value := codaplicativo;
            DATAMODULE1.qrypermisos.Parameters[0].Value := usuario;
            DATAMODULE1.qrypermisos.Parameters[2].Value :=  DATAMODULE1.alinearcero(inttostr(indmenu),2)+ DATAMODULE1.alinearcero(inttostr(Opcion.Items[Contador].MenuIndex),3);
            DATAMODULE1.qrypermisos.open;
            if DATAMODULE1.qrypermisos.RecordCount = 1 then
            begin
            Opcion.Items[Contador].Enabled := true;
	    end;
      if DATAMODULE1.alinearcero(inttostr(indmenu),2)+ DATAMODULE1.alinearcero(inttostr(Opcion.Items[Contador].MenuIndex),3) = '0000000'  then
	    Opcion.Items[Contador].Enabled := true;
	    if DATAMODULE1.alinearcero(inttostr(indmenu),2)+ DATAMODULE1.alinearcero(inttostr(Opcion.Items[Contador].MenuIndex),3) = '0000001' then
	    Opcion.Items[Contador].Enabled := true;
	    if DATAMODULE1.alinearcero(inttostr(indmenu),2)+ DATAMODULE1.alinearcero(inttostr(Opcion.Items[Contador].MenuIndex),3) >= '0020000' then
	    Opcion.Items[Contador].Enabled := true;
	    if DATAMODULE1.alinearcero(inttostr(indmenu),2)+ DATAMODULE1.alinearcero(inttostr(Opcion.Items[Contador].MenuIndex),3) >= '0030000' then
	    Opcion.Items[Contador].Enabled := true;
	    if DATAMODULE1.alinearcero(inttostr(indmenu),2)+ DATAMODULE1.alinearcero(inttostr(Opcion.Items[Contador].MenuIndex),3) >= '0040000' then
	    Opcion.Items[Contador].Enabled := true;

      end;

      End;
          Begin
          For Contador := 0 To Menu.Items.Count-1 Do
          AnadeOpcion(Menu.Items[Contador], Nodo1, Contador);


  // nodo -> string ; campo -> Alfanumerico
end;



procedure TFRMPRINCIPAL.MedioNotificacion1Click(Sender: TObject);
begin
 frmmedio_notificacion:=Tfrmmedio_notificacion.create(application);
   try
   frmmedio_notificacion.Show;
   frmmedio_notificacion.WindowState := wsNormal;
   //finally
   except
      frmmedio_notificacion.Free;
   end;
end;

procedure TFRMPRINCIPAL.LiquidaciondeIncapacidadesAccciondeTutela1Click(
  Sender: TObject);
begin
   frmINCAPACIDADESTUTELA:=TfrmINCAPACIDADESTUTELA.create(application);
   try
   frmINCAPACIDADESTUTELA.Show;
   frmINCAPACIDADESTUTELA.WindowState := wsNormal;
   //finally
   except
      frmINCAPACIDADESTUTELA.Free;
   end;
end;

procedure TFRMPRINCIPAL.ParametrizacionClick(Sender: TObject);
begin
   frmAPROBACION:=TfrmAPROBACION.create(application);
   try
   frmAPROBACION.Show;
   frmAPROBACION.WindowState := wsNormal;
   except
      frmAPROBACION.Free;
   end;
end;

procedure TFRMPRINCIPAL.Inconsistencias1Click(Sender: TObject);
begin

FRMREPORTE_INCONSISTENCIAS:=TFRMREPORTE_INCONSISTENCIAS.CREATE(APPLICATION);
TRY
FRMREPORTE_INCONSISTENCIAS.SHOW;
FRMREPORTE_INCONSISTENCIAS.WindowState := wsNormal;
//FINALLY
EXCEPT
FRMREPORTE_INCONSISTENCIAS.FREE;
END;

end;

procedure TFRMPRINCIPAL.DigitacionPlanillassinAnexos1Click(
  Sender: TObject);
begin
FRMPLANILLAS_SINANEXOS:=TFRMPLANILLAS_SINANEXOS.CREATE(APPLICATION);
TRY
FRMPLANILLAS_SINANEXOS.SHOW;
FRMPLANILLAS_SINANEXOS.WindowState := wsNormal;
//FINALLY
EXCEPT
FRMPLANILLAS_SINANEXOS.FREE;
END;
end;

procedure TFRMPRINCIPAL.ListadodeNotasDebitos1Click(Sender: TObject);
begin
{FRMPLANILLAS_SINANEXOS:=TFRMPLANILLAS_SINANEXOS.CREATE(APPLICATION);
TRY
FRMPLANILLAS_SINANEXOS.SHOW;
FRMPLANILLAS_SINANEXOS.WindowState := wsNormal;
//FINALLY
EXCEPT
FRMPLANILLAS_SINANEXOS.FREE;
END;}
end;

procedure TFRMPRINCIPAL.ListadodeNotasCreditos1Click(Sender: TObject);
begin
FRMCONSULTAS_NOTAS:=TFRMCONSULTAS_NOTAS.CREATE(APPLICATION);
TRY
FRMCONSULTAS_NOTAS.SHOW;
FRMCONSULTAS_NOTAS.WindowState := wsNormal;
//FINALLY
EXCEPT
FRMCONSULTAS_NOTAS.FREE;
END;
end;

procedure TFRMPRINCIPAL.Incapacidades3Click(Sender: TObject);
begin
   frmincaporempresa:=Tfrmincaporempresa.create(application);
   try
   FRMINCAPOREMPRESA.WindowState := wsNormal;
   frmincaporempresa.show;


   //finally
   except
      frmincaporempresa.Free;
   end;

end;

procedure TFRMPRINCIPAL.IncapacidadesporNumero1Click(Sender: TObject);
begin
   frmincapornumero:=Tfrmincapornumero.create(application);
   try
   FRMINCAPORNUMERO.WindowState := wsNormal;
   frmincapornumero.show;


   //finally
   except
      frmincapornumero.Free;
   end;
end;

END.

