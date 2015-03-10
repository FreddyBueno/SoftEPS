UNIT UINCAFILIADO;

INTERFACE

USES
  WINDOWS, MESSAGES, SYSUTILS, VARIANTS, CLASSES, GRAPHICS, CONTROLS, FORMS,
  DIALOGS, GRIDS, DBGRIDS, STDCTRLS, EXTCTRLS, MENUS, DB, DBTABLES, Buttons,
  ADODB;

TYPE
  TFRMINCAPORUSUARIO = CLASS(TFORM)
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
    qryafiliados: TADOQuery;
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
    qryafiliadosNUM_SEMANA_COTIZA: TBCDField;
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
    qryafiliadosSEM_COTIZACION: TBCDField;
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
  FRMINCAPORUSUARIO: TFRMINCAPORUSUARIO;

IMPLEMENTATION

USES DTMODULO;

{$R *.DFM}

PROCEDURE TFRMINCAPORUSUARIO.EDTNUMEROEXIT(SENDER: TOBJECT);
BEGIN
     IF (CBTIPO.ITEMINDEX >= 0) AND (EDTNUMERO.TEXT > '0') THEN
     BEGIN
                EDTNOMBRE.TEXT := '';
                QRYAFILIADOS.CLOSE;
                QRYAFILIADOS.SQL.CLEAR;
                QRYAFILIADOS.SQL.ADD('SELECT * FROM AFILIADOS WHERE  TIP_DOCUMENTO = :"TIPO" AND NUM_DOCUMENTO = :"NUMERO"');
                QRYAFILIADOS.Parameters[0].VALUE := TRIM(CBTIPO.TEXT);
                QRYAFILIADOS.Parameters[1].VALUE := TRIM(EDTNUMERO.TEXT);
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

PROCEDURE TFRMINCAPORUSUARIO.CERRAR1CLICK(SENDER: TOBJECT);
BEGIN
FRMINCAPORUSUARIO.FREE;
END;

PROCEDURE TFRMINCAPORUSUARIO.BTNBUSCARCLICK(SENDER: TOBJECT);
BEGIN
     IF EDTNOMBRE.TEXT <> '' THEN
     BEGIN
     DATAMODULE1.QRYINCAPACIDADES.CLOSE;
     DATAMODULE1.QRYINCAPACIDADES.SQL.CLEAR;
     DATAMODULE1.QRYINCAPACIDADES.SQL.ADD('SELECT * FROM  INCAPACIDADES WHERE AFI_TIPO_DOC = :"TIPO" AND AFI_NUMERO_DOC = :"NUMERO" ORDER BY FEC_INICIO');
     DATAMODULE1.QRYINCAPACIDADES.Parameters[0].VALUE := CBTIPO.TEXT;
     DATAMODULE1.QRYINCAPACIDADES.Parameters[1].VALUE := EDTNUMERO.TEXT;
     DATAMODULE1.QRYINCAPACIDADES.OPEN;
        if DATAMODULE1.QRYINCAPACIDADES.RecordCount = 0 then
        begin
         ShowMessage('AFILIADO NO TIENE INCAPACIDADES  DIGITADAS');
         END;
         if DATAMODULE1.QRYINCAPACIDADES.RecordCount > 0 then
         BEGIN
         QRYINCAPACIDADES2.CLOSE;
         QRYINCAPACIDADES2.SQL.Clear;
         QRYINCAPACIDADES2.SQL.Text :='SELECT SUM(T1.VAL_PAGAR_INCAP) AS VALORSALDO'
         + ' FROM DET_INCAPACIDAD T1, INCAPACIDADES T2'
         + ' WHERE T2.AFI_TIPO_DOC= :TIP AND T2.AFI_NUMERO_DOC= :DOC'
         + ' AND T2.NUM_INCAPACIDAD=T1.NUM_INCAPACIDAD'
         + ' AND (T1.EST_DET_PLANILLA IS NULL OR T1.EST_DET_PLANILLA='''')';
         QRYINCAPACIDADES2.Parameters[0].VALUE := TRIM(CBTIPO.TEXT);
         QRYINCAPACIDADES2.Parameters[1].VALUE := TRIM(EDTNUMERO.TEXT);
         QRYINCAPACIDADES2.OPEN;
         EDTSALDO.Text := '$ ' + QRYINCAPACIDADES2VALORSALDO.Text;

         END
     END;

END;

PROCEDURE TFRMINCAPORUSUARIO.DBGRID1CELLCLICK(COLUMN: TCOLUMN);
BEGIN
             DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
             DATAMODULE1.QRYDETINCAPACIDAD.SQL.CLEAR;
             DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('SELECT * FROM DET_INCAPACIDAD WHERE NUM_INCAPACIDAD = :"INCAP"');
             DATAMODULE1.QRYDETINCAPACIDAD.Parameters[0].VALUE := DATAMODULE1.QRYINCAPACIDADESNUM_INCAPACIDAD.VALUE;
             DATAMODULE1.QRYDETINCAPACIDAD.OPEN;

END;

PROCEDURE TFRMINCAPORUSUARIO.FORMCLOSE(SENDER: TOBJECT;
  VAR ACTION: TCLOSEACTION);
BEGIN
  ACTION := CAFREE;
END;

PROCEDURE TFRMINCAPORUSUARIO.FORMCREATE(SENDER: TOBJECT);
BEGIN
DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
DATAMODULE1.QRYINCAPACIDADES.CLOSE;
END;

procedure TFRMINCAPORUSUARIO.cbtipoExit(Sender: TObject);
begin
  IF CBTIPO.ItemIndex = -1 THEN
  BEGIN
  ShowMessage('Debe Selecionar  el tipo de documento');
  CBTIPO.SetFocus;
  END;
end;

procedure TFRMINCAPORUSUARIO.FormActivate(Sender: TObject);
begin
WindowState := wsNormal;
top := 0;
Left := 0;
end;

END.

