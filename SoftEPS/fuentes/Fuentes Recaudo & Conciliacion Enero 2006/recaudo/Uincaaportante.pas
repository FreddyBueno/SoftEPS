UNIT UINCAAPORTANTE;

INTERFACE

USES
  WINDOWS, MESSAGES, SYSUTILS, VARIANTS, CLASSES, GRAPHICS, CONTROLS, FORMS,
  DIALOGS, GRIDS, DBGRIDS, STDCTRLS, EXTCTRLS, MENUS, DB, DBTABLES, Buttons,
  ADODB;

TYPE
  TFRMINCAPOREMPRESA = CLASS(TFORM)
    PANEL1: TPANEL;
    PANEL2: TPANEL;
    PANEL3: TPANEL;
    LABEL1: TLABEL;
    CBTIPO: TCOMBOBOX;
    LABEL2: TLABEL;
    EDTNUMERO: TEDIT;
    LABEL3: TLABEL;
    EDTNOMBRE: TEDIT;
    LABEL4: TLABEL;
    CBESTADO: TCOMBOBOX;
    DBGRID1: TDBGRID;
    DBGRID2: TDBGRID;
    DTSDETALLEINC: TDATASOURCE;
    DTSENCAINC: TDATASOURCE;
    Label5: TLabel;
    Label47: TLabel;
    GroupBox1: TGroupBox;
    btnbuscar: TBitBtn;
    qryempresas: TADOQuery;
    qryempresasTIP_DOCUMENTO: TStringField;
    qryempresasNUM_DOCUMENTO: TStringField;
    qryempresasNOM_EMPRESA: TStringField;
    qryempresasREP_EMPRESA: TStringField;
    qryempresasDIR_EMPRESA: TStringField;
    qryempresasTEL_EPS: TStringField;
    qryempresasFAX_EPS: TStringField;
    qryempresasEML_EPS: TStringField;
    qryempresasDEPARTAMENTO: TStringField;
    qryempresasCIUDAD: TStringField;
    qryempresasCOD_SUCURSAL: TStringField;
    qryempresasTIP_APORTANTE: TStringField;
    qryempresasCOD_ACTIVIDAD_ECO: TStringField;
    qryempresasCOD_ESTADO: TStringField;
    qryempresasCOD_OFICINA: TStringField;
    qryempresasCOD_REGIONAL: TStringField;
    qryempresasTIP_DOCUMENTO_ARP: TStringField;
    qryempresasNUM_DOCUMENTO_ARP: TStringField;
    qryempresasCOD_DEPARTAMENTO: TStringField;
    qryempresasCOD_CIUDAD: TStringField;
    qryempresasFEC_AFILIACION: TDateTimeField;
    qryempresasTEL_EMPRESA: TStringField;
    qryempresasTEL_EMPRESA2: TStringField;
    qryempresasURL_EMPRESA: TStringField;
    qryempresasEML_EMPRESA: TStringField;
    qryempresasTOT_EMPLEADOS: TStringField;
    qryempresasCOD_TIPO_PER: TStringField;
    qryempresasCOD_ZONA: TStringField;
    qryempresasCOD_DEPARTAMENTO_PAG: TStringField;
    qryempresasCOD_CIUDAD_PAG: TStringField;
    qryempresasCOD_PRESENTACION_cOM: TStringField;
    qryempresasCOD_TIP_EMPRESA: TStringField;
    qryempresasTIP_DOCUMENTO_PEN: TStringField;
    qryempresasNUM_DOCUMENTO_PEN: TStringField;
    qryempresasclave: TStringField;
    qryempresasNOM_EMPRESA_BDUA: TStringField;
    qryempresasDIGITO_VERIFICACION: TStringField;
    qryempresasCARGO_REPRESENTANTE: TStringField;
    qryempresasTELEFONO_REPRESENTANTE: TStringField;
    qryempresasNOMBRE_CONTACTO: TStringField;
    qryempresasCARGO_CONTACTO: TStringField;
    qryempresasTELEFONO_CONTACTO: TStringField;
    qryempresasCLASE_APORTANTE: TStringField;
    qryempresasCOD_ARP: TStringField;
    qryempresasCOD_ARP_BUDA: TStringField;
    qryempresasBARRIO: TBCDField;
    Edtsaldo: TEdit;
    Label6: TLabel;
    qryincapacidades2: TADOQuery;
    qryincapacidades2VALORSALDO: TBCDField;
    PROCEDURE EDTNUMEROEXIT(SENDER: TOBJECT);
    PROCEDURE CERRAR1CLICK(SENDER: TOBJECT);
    PROCEDURE BTNBUSCARCLICK(SENDER: TOBJECT);
    PROCEDURE DBGRID1CELLCLICK(COLUMN: TCOLUMN);
    PROCEDURE FORMCLOSE(SENDER: TOBJECT; VAR ACTION: TCLOSEACTION);
    PROCEDURE FORMCREATE(SENDER: TOBJECT);
    procedure cbtipoExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  PRIVATE
    { PRIVATE DECLARATIONS }
  PUBLIC
    { PUBLIC DECLARATIONS }
  END;

VAR
  FRMINCAPOREMPRESA: TFRMINCAPOREMPRESA;

IMPLEMENTATION

USES DTMODULO;

{$R *.DFM}

PROCEDURE TFRMINCAPOREMPRESA.EDTNUMEROEXIT(SENDER: TOBJECT);
BEGIN
     IF (CBTIPO.ITEMINDEX >= 0) AND (EDTNUMERO.TEXT > '0') THEN
     BEGIN
                EDTNOMBRE.TEXT := '';
                QRYEMPRESAS.CLOSE;
                QRYEMPRESAS.SQL.CLEAR;
                QRYEMPRESAS.SQL.ADD('SELECT * FROM EMPRESAS WHERE  TIP_DOCUMENTO = :"TIPO" AND NUM_DOCUMENTO = :"NUMERO"');
                QRYEMPRESAS.Parameters[0].VALUE := TRIM(CBTIPO.TEXT);
                QRYEMPRESAS.Parameters[1].VALUE := TRIM(EDTNUMERO.TEXT);
                QRYEMPRESAS.OPEN;
                       IF QRYEMPRESAS.RECORDCOUNT > 0 THEN
                        BEGIN
                        EDTNOMBRE.TEXT := QRYEMPRESASNOM_EMPRESA.Value;
                        btnbuscar.Click;
                        IF   TRIM(QRYEMPRESASCOD_ESTADO.VALUE) = 'A' THEN
                          BEGIN
                          CBESTADO.ITEMINDEX := 0;
                          END  ELSE
                                IF  TRIM(QRYEMPRESASCOD_ESTADO.VALUE) = 'S' THEN
                                        BEGIN
                                        CBESTADO.ITEMINDEX := 1;
                                        END
                                        ELSE   IF   TRIM(QRYEMPRESASCOD_ESTADO.VALUE) = 'I' THEN
                                                BEGIN
                                                CBESTADO.ITEMINDEX := 2;
                                                END;

                        END
                        ELSE SHOWMESSAGE('NO EXISTE NINGUNA  EMPRESA  CON ESTE  NUMERO DE  DOCUMENTO');
     END;

END;

PROCEDURE TFRMINCAPOREMPRESA.CERRAR1CLICK(SENDER: TOBJECT);
BEGIN
FRMINCAPOREMPRESA.FREE;
END;

PROCEDURE TFRMINCAPOREMPRESA.BTNBUSCARCLICK(SENDER: TOBJECT);
BEGIN
     IF EDTNOMBRE.TEXT <> '' THEN
     BEGIN
     DATAMODULE1.QRYINCAPACIDADES.CLOSE;
     DATAMODULE1.QRYINCAPACIDADES.SQL.CLEAR;
     DATAMODULE1.QRYINCAPACIDADES.SQL.ADD('SELECT * FROM  INCAPACIDADES WHERE TIP_DOCEMPRESA = :"TIPO" AND NUM_DOCEMPRESA = :"NUMERO" ORDER BY FEC_INICIO');
     DATAMODULE1.QRYINCAPACIDADES.Parameters[0].VALUE := CBTIPO.TEXT;
     DATAMODULE1.QRYINCAPACIDADES.Parameters[1].VALUE := EDTNUMERO.TEXT;
     DATAMODULE1.QRYINCAPACIDADES.OPEN;
        if DATAMODULE1.QRYINCAPACIDADES.RecordCount = 0 then
        begin
         ShowMessage('LA EMPRESA NO TIENE INCAPACIDADES  DIGITADAS');
         END;
         if DATAMODULE1.QRYINCAPACIDADES.RecordCount > 0 then
         BEGIN
         QRYINCAPACIDADES2.CLOSE;
         QRYINCAPACIDADES2.SQL.Clear;
         QRYINCAPACIDADES2.SQL.Text :='SELECT SUM(T1.VAL_PAGAR_INCAP) AS VALORSALDO'
         + ' FROM DET_INCAPACIDAD T1, INCAPACIDADES T2'
         + ' WHERE T2.TIP_DOCEMPRESA= :TIP AND T2.NUM_DOCEMPRESA= :DOC'
         + ' AND T2.NUM_INCAPACIDAD=T1.NUM_INCAPACIDAD'
         + ' AND (T1.EST_DET_PLANILLA IS NULL OR T1.EST_DET_PLANILLA='''')';
         QRYINCAPACIDADES2.Parameters[0].VALUE := TRIM(CBTIPO.TEXT);
         QRYINCAPACIDADES2.Parameters[1].VALUE := TRIM(EDTNUMERO.TEXT);
         QRYINCAPACIDADES2.OPEN;
         EDTSALDO.Text := '$ ' + QRYINCAPACIDADES2VALORSALDO.Text;

         END
     END;

END;

PROCEDURE TFRMINCAPOREMPRESA.DBGRID1CELLCLICK(COLUMN: TCOLUMN);
BEGIN
             DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
             DATAMODULE1.QRYDETINCAPACIDAD.SQL.CLEAR;
             DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('SELECT * FROM DET_INCAPACIDAD WHERE NUM_INCAPACIDAD = :"INCAP"');
             DATAMODULE1.QRYDETINCAPACIDAD.Parameters[0].VALUE := DATAMODULE1.QRYINCAPACIDADESNUM_INCAPACIDAD.VALUE;
             DATAMODULE1.QRYDETINCAPACIDAD.OPEN;

END;

PROCEDURE TFRMINCAPOREMPRESA.FORMCLOSE(SENDER: TOBJECT;
  VAR ACTION: TCLOSEACTION);
BEGIN
  ACTION := CAFREE;
END;

PROCEDURE TFRMINCAPOREMPRESA.FORMCREATE(SENDER: TOBJECT);
BEGIN
DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
DATAMODULE1.QRYINCAPACIDADES.CLOSE;
END;

procedure TFRMINCAPOREMPRESA.cbtipoExit(Sender: TObject);
begin
  IF CBTIPO.ItemIndex = -1 THEN
  BEGIN
  ShowMessage('Debe Selecionar  el tipo de documento');
  CBTIPO.SetFocus;
  END;
end;

procedure TFRMINCAPOREMPRESA.FormActivate(Sender: TObject);
begin
WindowState := wsNormal;
top := 0;
Left := 0;
end;

END.

