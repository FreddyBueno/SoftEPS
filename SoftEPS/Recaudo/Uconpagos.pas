UNIT UCONPAGOS;

INTERFACE

USES
  WINDOWS, MESSAGES, SYSUTILS, VARIANTS, CLASSES, GRAPHICS, CONTROLS, FORMS,
  DIALOGS, GRIDS, DBGRIDS, STDCTRLS, EXTCTRLS, DB, DBTABLES, MENUS, Buttons;

TYPE
  TFRMPAGOSAFILIADOS = CLASS(TFORM)
    PANEL1: TPANEL;
    PANEL2: TPANEL;
    EDTNUMERO: TEDIT;
    EDTNOMBRE: TEDIT;
    DBGRID1: TDBGRID;
    CBTIPO: TCOMBOBOX;
    QRYAFILIADOS: TQUERY;
    DSTLISTADOPAGOS: TDATASOURCE;
    QRYLISTAPAGOS: TQUERY;
    CBESTADO: TCOMBOBOX;
    LABEL1: TLABEL;
    LABEL2: TLABEL;
    LABEL3: TLABEL;
    LABEL4: TLABEL;
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
    Image1: TImage;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    Label47: TLabel;
    btnbuscar: TBitBtn;
    PROCEDURE EDTNUMEROEXIT(SENDER: TOBJECT);
    PROCEDURE BTNBUSCARCLICK(SENDER: TOBJECT);
    PROCEDURE FORMCLOSE(SENDER: TOBJECT; VAR ACTION: TCLOSEACTION);
    PROCEDURE CERRAR1CLICK(SENDER: TOBJECT);
    PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);
    procedure FormCreate(Sender: TObject);
    procedure cbtipoExit(Sender: TObject);
  PRIVATE
    { PRIVATE DECLARATIONS }
  PUBLIC
    { PUBLIC DECLARATIONS }
  END;

VAR
  FRMPAGOSAFILIADOS: TFRMPAGOSAFILIADOS;

IMPLEMENTATION



{$R *.DFM}

PROCEDURE TFRMPAGOSAFILIADOS.EDTNUMEROEXIT(SENDER: TOBJECT);
BEGIN
IF trim(EDTNUMERO.TEXT) = '' THEN
  BEGIN
  ShowMessage('Digite El numero de Documento ');
  EDTNUMERO.SetFocus;
  Exit;
end;

    IF (CBTIPO.ITEMINDEX >= 0) AND (EDTNUMERO.TEXT > '0') THEN
      BEGIN
                EDTNOMBRE.TEXT := '';
                QRYAFILIADOS.CLOSE;
                QRYAFILIADOS.PREPARE;
                QRYAFILIADOS.REQUESTLIVE := FALSE;
                QRYAFILIADOS.SQL.CLEAR;
                QRYAFILIADOS.SQL.ADD('SELECT * FROM AFILIADOS WHERE  TIP_DOCUMENTO = :"TIPO" AND NUM_DOCUMENTO = :"NUMERO"');
                QRYAFILIADOS.PARAMS[0].ASSTRING := TRIM(CBTIPO.TEXT);
                QRYAFILIADOS.PARAMS[1].ASSTRING := TRIM(EDTNUMERO.TEXT);
                QRYAFILIADOS.OPEN;
                       IF QRYAFILIADOS.RECORDCOUNT > 0 THEN
                        BEGIN
                        EDTNOMBRE.TEXT := QRYAFILIADOSPRI_APELLIDO.VALUE + ' ' + QRYAFILIADOSSEG_APELLIDO.VALUE + ' ' + QRYAFILIADOSPRI_NOMBRE.VALUE + ' ' + QRYAFILIADOSSEG_NOMBRE.VALUE;
                        btnbuscar.Click;
                        IF   TRIM(QRYAFILIADOSCOD_ESTADO.VALUE) = 'A' THEN
                          BEGIN
                          CBESTADO.ITEMINDEX := 0;
                          END  ELSE
                                IF  TRIM(QRYAFILIADOSCOD_ESTADO.VALUE) = 'S' THEN
                                        BEGIN
                                        CBESTADO.ITEMINDEX := 1;
                                        END
                                        ELSE   IF   TRIM(QRYAFILIADOSCOD_ESTADO.VALUE) = 'I' THEN
                                                BEGIN
                                                CBESTADO.ITEMINDEX := 2;
                                                END;

                        END
                        ELSE SHOWMESSAGE('NO EXISTE NINGUN  AFILIADO  CON ESTE  NUMERO DE  DOCUMENTO');


      END;


END;

PROCEDURE TFRMPAGOSAFILIADOS.BTNBUSCARCLICK(SENDER: TOBJECT);
BEGIN
        IF EDTNOMBRE.TEXT <> '' THEN
        BEGIN
                QRYLISTAPAGOS.CLOSE;
                QRYLISTAPAGOS.PREPARE;
                QRYLISTAPAGOS.REQUESTLIVE := FALSE;
                QRYLISTAPAGOS.SQL.CLEAR;
                QRYLISTAPAGOS.SQL.ADD('SELECT AUTOLIQUIDACION.EMP_TIPO_DOC,AUTOLIQUIDACION.EMP_NUMERO_DOC,AUTOLIQUIDACION.FEC_PAGO,DET_PLANILLA_AUTOLIQUIDACION.*,AUTOLIQUIDACION.COD_REGIONAL,AUTOLIQUIDACION.COD_OFICINA,AUTOLIQUIDACION.TIP_DOC_USUARIO,AUTOLIQUIDACION.NUM_DOC_USUARIO');
                QRYLISTAPAGOS.SQL.ADD('FROM AUTOLIQUIDACION,DET_PLANILLA_AUTOLIQUIDACION');
                QRYLISTAPAGOS.SQL.ADD('WHERE AUTOLIQUIDACION.NUM_PLANILLA = DET_PLANILLA_AUTOLIQUIDACION.NUM_PLANILLA');
                QRYLISTAPAGOS.SQL.ADD('AND AFI_TIPO_DOC = :"TIPO" AND AFI_NUMERO_DOC = :"NUMERO" ORDER BY DET_PLANILLA_AUTOLIQUIDACION.PER_COTIZACION');
                QRYLISTAPAGOS.PARAMS[0].ASSTRING := TRIM(CBTIPO.TEXT);
                QRYLISTAPAGOS.PARAMS[1].ASSTRING := TRIM(EDTNUMERO.TEXT);
                QRYLISTAPAGOS.OPEN;
                       IF QRYLISTAPAGOS.RECORDCOUNT = 0 THEN
                        BEGIN
                        SHOWMESSAGE(' EL USUARIO NO TIENE  PAGOS DIGITADOS ');
                        END;

        END;

END;

PROCEDURE TFRMPAGOSAFILIADOS.FORMCLOSE(SENDER: TOBJECT;
  VAR ACTION: TCLOSEACTION);
BEGIN
ACTION := CAFREE;
END;

PROCEDURE TFRMPAGOSAFILIADOS.CERRAR1CLICK(SENDER: TOBJECT);
BEGIN
 FRMPAGOSAFILIADOS.CLOSE
END;

procedure TFRMPAGOSAFILIADOS.APPMESSAGE(var MSG: TMSG;
  var HANDLED: BOOLEAN);
begin
IF MSG.WPARAM = VK_RETURN THEN
       BEGIN
        IF ((SCREEN.ACTIVECONTROL) IS TCOMBOBOX) THEN
             MSG.WPARAM := VK_TAB;
            IF (((SCREEN.ACTIVECONTROL) IS TEDIT)) THEN
                 MSG.WPARAM := VK_TAB;
       END;
end;

procedure TFRMPAGOSAFILIADOS.FormCreate(Sender: TObject);
begin
APPLICATION.ONMESSAGE := APPMESSAGE;
end;

procedure TFRMPAGOSAFILIADOS.cbtipoExit(Sender: TObject);
begin
IF CBTIPO.ItemIndex = -1 THEN
  BEGIN
  ShowMessage('Debe Selecionar  el tipo de documento');
  CBTIPO.SetFocus;
end;
end;

END.

