UNIT UDIAGNOSTICOS;

INTERFACE

USES
  WINDOWS, MESSAGES, CLASSES, SYSUTILS, GRAPHICS, CONTROLS, STDCTRLS, FORMS,
  DIALOGS, DBCTRLS, DB, DBGRIDS, DBTABLES, GRIDS, EXTCTRLS;

TYPE
  TFRMDIAGNOSTICOS = CLASS(TFORM)
    DBGRID1: TDBGRID;
    DBNAVIGATOR: TDBNAVIGATOR;
    PANEL1: TPANEL;
    DATASOURCE1: TDATASOURCE;
    PANEL2: TPANEL;
    PROCEDURE FORMCREATE(SENDER: TOBJECT);
    PROCEDURE DBGRID1DBLCLICK(SENDER: TOBJECT);
  PRIVATE
    { PRIVATE DECLARATIONS }
  PUBLIC
    { PUBLIC DECLARATIONS }
  END;

VAR
  FRMDIAGNOSTICOS: TFRMDIAGNOSTICOS;

IMPLEMENTATION

USES UINCAPACIDADES, UGLOBAL, DTMODULO;

{$R *.DFM}

PROCEDURE TFRMDIAGNOSTICOS.FORMCREATE(SENDER: TOBJECT);
BEGIN
        DATAMODULE1.QRYDIAGNOSTICOS.CLOSE;
        DATAMODULE1.QRYDIAGNOSTICOS.PREPARE;
        DATAMODULE1.QRYDIAGNOSTICOS.SQL.CLEAR;
        DATAMODULE1.QRYDIAGNOSTICOS.SQL.ADD('SELECT * FROM DIGNOSTICOS WHERE ((RANGO_SEXO = :"SEXO") OR(RANGO_SEXO = :"SEXOF")) AND ((EDA_MININA <=:"EDAD") AND (EDA_MAXIMA >= :"EDAD"))');
        IF  FRMINCAPACIDADES.EDTSEXO.TEXT = 'M' THEN
         BEGIN
        DATAMODULE1.QRYDIAGNOSTICOS.PARAMS[0].ASSTRING := '1';
        END
        ELSE IF  FRMINCAPACIDADES.EDTSEXO.TEXT = 'F' THEN
             BEGIN
             DATAMODULE1.QRYDIAGNOSTICOS.PARAMS[0].ASSTRING := '2';
             END;
        DATAMODULE1.QRYDIAGNOSTICOS.PARAMS[1].ASSTRING := '3';
        DATAMODULE1.QRYDIAGNOSTICOS.PARAMS[2].AsInteger := STRTOINT(FRMINCAPACIDADES.EDTEDAD.TEXT);
        DATAMODULE1.QRYDIAGNOSTICOS.PARAMS[3].AsInteger := STRTOINT(FRMINCAPACIDADES.EDTEDAD.TEXT);
        DATAMODULE1.QRYDIAGNOSTICOS.OPEN;
        

END;

PROCEDURE TFRMDIAGNOSTICOS.DBGRID1DBLCLICK(SENDER: TOBJECT);
BEGIN
   FRMINCAPACIDADES.EDTCODDIAGNOSTICO.TEXT := DATAMODULE1.QRYDIAGNOSTICOSCOD_DIAGNOSTICO.TEXT;
   FRMINCAPACIDADES.EDTNOMBREDIAGNOSTICO.TEXT:= DATAMODULE1.QRYDIAGNOSTICOSNOM_DIAGNSOTICO.TEXT;
   FRMINCAPACIDADES.EDTCODDIAGNOSTICO.setfocus;
   FRMDIAGNOSTICOS.FREE;
END;

END.

