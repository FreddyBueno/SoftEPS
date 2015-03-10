UNIT UconsultaResagos;

INTERFACE

USES
  WINDOWS, MESSAGES, SYSUTILS, CLASSES, GRAPHICS, CONTROLS, FORMS,
  DIALOGS, GRIDS, DBGRIDS, DBCTRLS, EXTCTRLS, DB, DBTABLES, STDCTRLS,
  COMCTRLS, MENUS;

TYPE
  TfrmConsulta = CLASS(TFORM)
    PANEL1: TPANEL;
    PANEL3: TPANEL;
    DBGRID2: TDBGRID;
    PANEL2: TPANEL;
    BUTTON1: TBUTTON;
    Label47: TLabel;
    Label48: TLabel;
    HeaderControl1: THeaderControl;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cbbancos: TDBLookupComboBox;
    Label2: TLabel;
    dtfinicial: TDateTimePicker;
    Label3: TLabel;
    dtffinal: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    PROCEDURE FORMCREATE(SENDER: TOBJECT);
    PROCEDURE DTFFINALEXIT(SENDER: TOBJECT);
    PROCEDURE FORMCLOSE(SENDER: TOBJECT; VAR ACTION: TCLOSEACTION);
    PROCEDURE CERRAR1CLICK(SENDER: TOBJECT);
    PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure cbbancosExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  PRIVATE
    { PRIVATE DECLARATIONS }
  PUBLIC
    { PUBLIC DECLARATIONS }
  END;

VAR
  frmConsulta: TfrmConsulta;

IMPLEMENTATION

USES DTMODULO, UGLOBAL;

{$R *.DFM}

PROCEDURE TfrmConsulta.FORMCREATE(SENDER: TOBJECT);
VAR ANO,MES : STRING;
BEGIN
        APPLICATION.ONMESSAGE := APPMESSAGE;
        DTFINICIAL.DATE := STRTODATE(GLDATE);
        DTFFINAL.DATE := STRTODATE(GLDATE);
        DATAMODULE1.QRYBANCOS.OPEN;
        DATAMODULE1.qryestrato.CLOSE;
        DATAMODULE1.qryautoliquidacion.CLOSE;

END;

PROCEDURE TfrmConsulta.DTFFINALEXIT(SENDER: TOBJECT);
BEGIN
        IF CBBANCOS.KEYVALUE <> '' THEN
        BEGIN
                DATAMODULE1.QRYESTRATO.CLOSE;
                DATAMODULE1.QRYESTRATO.SQL.CLEAR;
                DATAMODULE1.QRYESTRATO.SQL.ADD('SELECT *  FROM EST_BANCARIO_AUTO WHERE (FEC_RECAUDO >= :"INICIAL" AND  FEC_RECAUDO <= :"FINAL") AND  (EST_CONCILIACION = :"ESTADO") AND COD_BANCO = :"BANCO" ORDER BY FEC_RECAUDO,VAL_CONSIGNACION,NUM_DOCUMENTO');
                DATAMODULE1.QRYESTRATO.Parameters[0].DataType := ftDateTime; 
                DATAMODULE1.QRYESTRATO.Parameters[1].DataType := ftDateTime; 
                DATAMODULE1.QRYESTRATO.Parameters[0].Value :=  (DTFINICIAL.DATE);
                DATAMODULE1.QRYESTRATO.Parameters[1].Value := (DTFFINAL.DATE);
                DATAMODULE1.QRYESTRATO.Parameters[2].Value := 'N';
                DATAMODULE1.QRYESTRATO.Parameters[3].Value := CBBANCOS.KEYVALUE;
                DATAMODULE1.QRYESTRATO.OPEN;
                        IF DATAMODULE1.QRYESTRATO.RECORDCOUNT = 0 THEN
                        BEGIN
                        SHOWMESSAGE('NO HAY  ESTRACTOS  BANCARIOS  PARA  CONCILIAR');
                        END
                        ELSE    IF DATAMODULE1.QRYESTRATO.RECORDCOUNT > 0 THEN
                                BEGIN
                                DATAMODULE1.QRYAUTOLIQUIDACION.CLOSE;
                                DATAMODULE1.QRYAUTOLIQUIDACION.SQL.CLEAR;
                                DATAMODULE1.QRYAUTOLIQUIDACION.SQL.ADD('SELECT *  FROM AUTOLIQUIDACION WHERE (FEC_PAGO >= :"INICIAL" AND  FEC_PAGO <= :"FINAL") AND ((CRU_CONCILIACION <> :"ESTADO")  OR (CRU_CONCILIACION IS NULL)) ORDER BY FEC_PAGO,TOT_PAGADO,EMP_NUMERO_DOC');
                                DATAMODULE1.QRYESTRATO.Parameters[0].DataType := ftDateTime; 
                		DATAMODULE1.QRYESTRATO.Parameters[1].DataType := ftDateTime; 
                                DATAMODULE1.QRYAUTOLIQUIDACION.Parameters[0].Value :=  (DTFINICIAL.DATE);
                                DATAMODULE1.QRYAUTOLIQUIDACION.Parameters[1].Value := (DTFFINAL.DATE);
                                DATAMODULE1.QRYAUTOLIQUIDACION.Parameters[2].Value := 'S';
                                DATAMODULE1.QRYAUTOLIQUIDACION.OPEN;
                                END;
        END ELSE SHOWMESSAGE('ESCOJA  EL  BANCO PARA  REALIZAR LA  CONCILIACION');
END;

PROCEDURE TfrmConsulta.FORMCLOSE(SENDER: TOBJECT;
  VAR ACTION: TCLOSEACTION);
BEGIN
ACTION := CAFREE;
END;

PROCEDURE TfrmConsulta.CERRAR1CLICK(SENDER: TOBJECT);
BEGIN
FRMMODIFICARESTRATO.CLOSE;
END;

procedure TfrmConsulta.APPMESSAGE(var MSG: TMSG;
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
                IF ((SCREEN.ACTIVECONTROL) IS TDateTimePicker) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TDBGrid) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TDBLOOKUPCOMBOBOX) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TStringGrid) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TCheckBox) THEN
                MSG.WPARAM := VK_TAB;
       END;

end;

procedure TfrmConsulta.DBGrid2CellClick(Column: TColumn);
begin
                DATAMODULE1.QRYAUTOLIQUIDACION.CLOSE;
                DATAMODULE1.QRYAUTOLIQUIDACION.SQL.ADD('SELECT *  FROM AUTOLIQUIDACION WHERE (FEC_PAGO >= :"FECHAI" AND  FEC_PAGO <= :"FECHAF") AND ((CRU_CONCILIACION <> :"ESTADO")  OR (CRU_CONCILIACION IS NULL)) ORDER BY FEC_PAGO,TOT_PAGADO,EMP_NUMERO_DOC');
                DATAMODULE1.QRYAUTOLIQUIDACION.Parameters[0].Value := DATAMODULE1.qryestratoFEC_RECAUDO.Value;
                DATAMODULE1.QRYAUTOLIQUIDACION.Parameters[1].Value := DATAMODULE1.qryestratoFEC_RECAUDO.Value;
                DATAMODULE1.QRYAUTOLIQUIDACION.Parameters[2].Value := 'S';
                DATAMODULE1.QRYAUTOLIQUIDACION.OPEN;
                  IF DATAMODULE1.QRYAUTOLIQUIDACION.RECORDCOUNT = 0 THEN
                  BEGIN
                SHOWMESSAGE(LowerCase('NO HAY  AUTOLIQUIDACIONES  CON ESTE  VALOR'));
                END;


end;

procedure TfrmConsulta.cbbancosExit(Sender: TObject);
begin
        IF TRIM(CBBANCOS.TEXT) = '' THEN
        BEGIN
        ShowMessage('Seleccione  el  banco  para  continuar');
        END
        ELSE
        BEGIN
                DATAMODULE1.QRYESTRATO.CLOSE;
                DATAMODULE1.QRYESTRATO.SQL.CLEAR;
                DATAMODULE1.QRYESTRATO.SQL.ADD('SELECT *  FROM EST_BANCARIO_AUTO WHERE (FEC_RECAUDO >= :"INICIAL" AND  FEC_RECAUDO <= :"FINAL") AND  (EST_CONCILIACION = :"ESTADO") AND COD_BANCO = :"BANCO" ORDER BY FEC_RECAUDO,VAL_CONSIGNACION,NUM_DOCUMENTO');
                DATAMODULE1.QRYESTRATO.Parameters[0].DataType := ftDateTime; 
                DATAMODULE1.QRYESTRATO.Parameters[1].DataType := ftDateTime; 
                
                DATAMODULE1.QRYESTRATO.Parameters[0].Value :=  (DTFINICIAL.DATE);
                DATAMODULE1.QRYESTRATO.Parameters[1].Value := (DTFFINAL.DATE);
                DATAMODULE1.QRYESTRATO.Parameters[2].Value := 'N';
                DATAMODULE1.QRYESTRATO.Parameters[3].Value := CBBANCOS.KEYVALUE;
                DATAMODULE1.QRYESTRATO.OPEN;
                        IF DATAMODULE1.QRYESTRATO.RECORDCOUNT > 0 THEN
                           BEGIN
                                DATAMODULE1.QRYAUTOLIQUIDACION.CLOSE;
                                DATAMODULE1.QRYAUTOLIQUIDACION.SQL.CLEAR;
                                DATAMODULE1.QRYAUTOLIQUIDACION.SQL.ADD('SELECT *  FROM AUTOLIQUIDACION WHERE (FEC_PAGO >= :"INICIAL" AND  FEC_PAGO <= :"FINAL") AND ((CRU_CONCILIACION <> :"ESTADO")  OR (CRU_CONCILIACION IS NULL)) ORDER BY FEC_PAGO,TOT_PAGADO,EMP_NUMERO_DOC');
                                DATAMODULE1.QRYAUTOLIQUIDACION.Parameters[0].Value :=  (DTFINICIAL.DATE);
                                DATAMODULE1.QRYAUTOLIQUIDACION.Parameters[1].Value := (DTFFINAL.DATE);
                                DATAMODULE1.QRYAUTOLIQUIDACION.Parameters[2].Value := 'S';
                                DATAMODULE1.QRYAUTOLIQUIDACION.OPEN;
                           end;
        END;
end;

procedure TfrmConsulta.FormActivate(Sender: TObject);
begin
WindowState := wsNormal;
top := 0;
Left := 0;
end;

END.

