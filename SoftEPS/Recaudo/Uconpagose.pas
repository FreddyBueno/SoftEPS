UNIT UCONPAGOSE;

INTERFACE

USES
  WINDOWS, MESSAGES, SYSUTILS, VARIANTS, CLASSES, GRAPHICS, CONTROLS, FORMS,
  DIALOGS, GRIDS, DBGRIDS, STDCTRLS, EXTCTRLS, DB, DBTABLES, MENUS, Buttons;

TYPE
  TFRMPAGOSEMPRESA = CLASS(TFORM)
    PANEL1: TPANEL;
    PANEL2: TPANEL;
    EDTNUMERO: TEDIT;
    EDTNOMBRE: TEDIT;
    DBGRID1: TDBGRID;
    CBTIPO: TCOMBOBOX;
    QRYEMPRESAS: TQUERY;
    DSTLISTADOPAGOS: TDATASOURCE;
    QRYLISTAPAGOS: TQUERY;
    MAINMENU1: TMAINMENU;
    CERRAR1: TMENUITEM;
    LABEL1: TLABEL;
    LABEL2: TLABEL;
    LABEL3: TLABEL;
    Image1: TImage;
    Label5: TLabel;
    Label47: TLabel;
    GroupBox1: TGroupBox;
    btnbuscar: TBitBtn;
    qrylistapagosNUM_PLANILLA: TStringField;
    qrylistapagosEMP_TIPO_DOC: TStringField;
    qrylistapagosEMP_NUMERO_DOC: TStringField;
    qrylistapagosCOD_SUCURSAL: TStringField;
    qrylistapagosTIP_DECLARACION: TStringField;
    qrylistapagosFEC_PAGO: TDateTimeField;
    qrylistapagosNUM_PLANILLA_CORR: TStringField;
    qrylistapagosPER_COTIZACION: TStringField;
    qrylistapagosPER_PRESENTACION: TStringField;
    qrylistapagosTOT_PLANILLA: TFloatField;
    qrylistapagosTOT_APORTE_PER: TFloatField;
    qrylistapagosTOT_INCAPACIDAD: TFloatField;
    qrylistapagosTOT_LICENCIAS: TFloatField;
    qrylistapagosTOT_APORTE: TFloatField;
    qrylistapagosINT_MORA: TFloatField;
    qrylistapagosTOT_APORTE_MMORA: TFloatField;
    qrylistapagosTOT_SALDO_FAV: TFloatField;
    qrylistapagosTOT_UPC: TFloatField;
    qrylistapagosTOT_PAGADO: TFloatField;
    qrylistapagosCOD_BANCO: TStringField;
    qrylistapagosNUM_CUENTA: TStringField;
    qrylistapagosVAL_EFECTIVO: TFloatField;
    qrylistapagosVAL_CHEQUE: TFloatField;
    qrylistapagosEST_PLANILLA: TStringField;
    qrylistapagosCOD_REGIONAL: TStringField;
    qrylistapagosCOD_OFICINA: TStringField;
    qrylistapagosNUM_DECLARACION: TFloatField;
    qrylistapagosCRU_CONCILIACION: TStringField;
    qrylistapagosFEC_DIGITACION: TDateTimeField;
    qrylistapagosTIP_DOC_USUARIO: TStringField;
    qrylistapagosNUM_DOC_USUARIO: TStringField;
    qrylistapagosFEC_MODIFICACION: TDateTimeField;
    qryempresasTIP_DOCUMENTO: TStringField;
    qryempresasNUM_DOCUMENTO: TStringField;
    qryempresasCOD_SUCURSAL: TStringField;
    qryempresasCOD_ACTIVIDAD_ECO: TStringField;
    qryempresasCOD_ESTADO: TStringField;
    qryempresasCOD_OFICINA: TStringField;
    qryempresasCOD_REGIONAL: TStringField;
    qryempresasTIP_DOCUMENTO_ARP: TStringField;
    qryempresasNUM_DOCUMENTO_ARP: TStringField;
    qryempresasCOD_DEPARTAMENTO: TStringField;
    qryempresasCOD_CIUDAD: TStringField;
    qryempresasTIP_APORTANTE: TStringField;
    qryempresasNOM_EMPRESA: TStringField;
    qryempresasFEC_AFILIACION: TDateTimeField;
    qryempresasDIR_EMPRESA: TStringField;
    qryempresasTEL_EMPRESA: TStringField;
    qryempresasTEL_EMPRESA2: TStringField;
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
    PROCEDURE EDTNUMEROEXIT(SENDER: TOBJECT);
    PROCEDURE BTNBUSCARCLICK(SENDER: TOBJECT);
    PROCEDURE FORMCLOSE(SENDER: TOBJECT; VAR ACTION: TCLOSEACTION);
    PROCEDURE CERRAR1CLICK(SENDER: TOBJECT);
    procedure FormCreate(Sender: TObject);
    PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);
    procedure cbtipoExit(Sender: TObject);
  PRIVATE
    { PRIVATE DECLARATIONS }
  PUBLIC
    { PUBLIC DECLARATIONS }
  END;

VAR
  FRMPAGOSEMPRESA: TFRMPAGOSEMPRESA;

IMPLEMENTATION



{$R *.DFM}

PROCEDURE TFRMPAGOSEMPRESA.EDTNUMEROEXIT(SENDER: TOBJECT);
BEGIN
    IF (CBTIPO.ITEMINDEX >= 0) AND (EDTNUMERO.TEXT > '0') THEN
      BEGIN
            EDTNOMBRE.TEXT := '';
                QRYEMPRESAS.CLOSE;
                QRYEMPRESAS.PREPARE;
                QRYEMPRESAS.REQUESTLIVE := FALSE;
                QRYEMPRESAS.SQL.CLEAR;
                QRYEMPRESAS.SQL.ADD('SELECT * FROM  EMPRESAS  WHERE TIP_DOCUMENTO = :"TIPO" AND NUM_DOCUMENTO = :"NUMERO"');
                QRYEMPRESAS.PARAMS[0].ASSTRING := TRIM(CBTIPO.TEXT);
                QRYEMPRESAS.PARAMS[1].ASSTRING := TRIM(EDTNUMERO.TEXT);
                QRYEMPRESAS.OPEN;
                       IF QRYEMPRESAS.RECORDCOUNT > 0 THEN
                        BEGIN
                        EDTNOMBRE.TEXT :=  QRYEMPRESASNOM_EMPRESA.VALUE;
                        btnbuscar.Click;
                        END
                        ELSE SHOWMESSAGE('EMPRESA  NO EXISTE');


      END;


END;

PROCEDURE TFRMPAGOSEMPRESA.BTNBUSCARCLICK(SENDER: TOBJECT);
BEGIN
        IF EDTNOMBRE.TEXT <> '' THEN
        BEGIN
                QRYLISTAPAGOS.CLOSE;
                QRYLISTAPAGOS.PREPARE;
                QRYLISTAPAGOS.REQUESTLIVE := FALSE;
                QRYLISTAPAGOS.SQL.CLEAR;
                QRYLISTAPAGOS.SQL.ADD('SELECT * FROM AUTOLIQUIDACION  WHERE EMP_TIPO_DOC = :"TIPO" AND EMP_NUMERO_DOC = :"NUMERO" ORDER BY  AUTOLIQUIDACION.PER_COTIZACION');
                QRYLISTAPAGOS.PARAMS[0].ASSTRING := TRIM(CBTIPO.TEXT);
                QRYLISTAPAGOS.PARAMS[1].ASSTRING := TRIM(EDTNUMERO.TEXT);
                QRYLISTAPAGOS.OPEN;
                       IF QRYLISTAPAGOS.RECORDCOUNT = 0 THEN
                        BEGIN
                        SHOWMESSAGE(' LA  EMPRESA  NO TIENE  PAGOS ');
                        END;

        END;

END;

PROCEDURE TFRMPAGOSEMPRESA.FORMCLOSE(SENDER: TOBJECT;
  VAR ACTION: TCLOSEACTION);
BEGIN
ACTION := CAFREE;
END;

PROCEDURE TFRMPAGOSEMPRESA.CERRAR1CLICK(SENDER: TOBJECT);
BEGIN
 FRMPAGOSEMPRESA.CLOSE
END;

procedure TFRMPAGOSEMPRESA.FormCreate(Sender: TObject);
begin
APPLICATION.ONMESSAGE := APPMESSAGE;
end;

procedure TFRMPAGOSEMPRESA.APPMESSAGE(var MSG: TMSG; var HANDLED: BOOLEAN);
begin
IF MSG.WPARAM = VK_RETURN THEN
       BEGIN
        IF ((SCREEN.ACTIVECONTROL) IS TCOMBOBOX) THEN
             MSG.WPARAM := VK_TAB;
            IF (((SCREEN.ACTIVECONTROL) IS TEDIT)) THEN
                 MSG.WPARAM := VK_TAB;
       END;

end;

procedure TFRMPAGOSEMPRESA.cbtipoExit(Sender: TObject);
begin
 IF CBTIPO.ItemIndex = -1 THEN
  BEGIN
  ShowMessage('Debe Selecionar  el tipo de documento');
  CBTIPO.SetFocus;
  END;
end;

END.

