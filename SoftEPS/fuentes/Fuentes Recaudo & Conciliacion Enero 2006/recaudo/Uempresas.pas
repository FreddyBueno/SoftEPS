UNIT UEMPRESAS;

INTERFACE

USES
  WINDOWS, MESSAGES, CLASSES, SYSUTILS, GRAPHICS, CONTROLS, STDCTRLS, FORMS,
  DIALOGS, DBCTRLS, DB, DBGRIDS, GRIDS, EXTCTRLS, Buttons;

TYPE
  TFRMEMPRESAS = CLASS(TFORM)
    DBGRID1: TDBGRID;
    DBNAVIGATOR: TDBNAVIGATOR;
    PANEL1: TPANEL;
    PANEL2: TPANEL;
    LABEL1: TLABEL;
    EDTBUSCAR: TEDIT;
    btnbuscar: TBitBtn;
    PROCEDURE FORMCLOSE(SENDER: TOBJECT; VAR ACTION: TCLOSEACTION);
    PROCEDURE DBGRID1DBLCLICK(SENDER: TOBJECT);
    PROCEDURE BTNBUSCARCLICK(SENDER: TOBJECT);
    PROCEDURE CORRECION_AUTOLIQUIDACIONES;
    PROCEDURE AUTOLIQUIDACIONES_SINANEXOS;
    PROCEDURE AUTOLIQUIDACIONES;
    PROCEDURE INCAPACIDADES;
    procedure FormActivate(Sender: TObject);

  PRIVATE
    { PRIVATE DECLARATIONS }
  PUBLIC
    { PUBLIC DECLARATIONS }
  END;

VAR
  FRMEMPRESAS: TFRMEMPRESAS;

IMPLEMENTATION

USES UGLOBAL, DTMODULO, UPLANILLAS, UINCAPACIDADES, Uplanillacorreciones,
  UincapacidadesTUTELA, Uplanillas_sinanexos;

{$R *.DFM}

PROCEDURE TFRMEMPRESAS.FORMCLOSE(SENDER: TOBJECT;
  VAR ACTION: TCLOSEACTION);
BEGIN
ACTION:=CAFREE;
END;

PROCEDURE TFRMEMPRESAS.AUTOLIQUIDACIONES;
VAR TIPO : STRING;
BEGIN

    IF DATAMODULE1.QRYLISTAEMPRESASTIP_DOCUMENTO.TEXT = 'NIT' THEN
    BEGIN
    FRMPLANILLAS.CBTIPODOCEMPRESA.ITEMINDEX := 1;
    END
    ELSE IF DATAMODULE1.QRYLISTAEMPRESASTIP_DOCUMENTO.TEXT = 'CC' THEN
         BEGIN
         FRMPLANILLAS.CBTIPODOCEMPRESA.ITEMINDEX := 0;
         END
         ELSE IF DATAMODULE1.QRYLISTAEMPRESASTIP_DOCUMENTO.TEXT = 'CE' THEN
              BEGIN
              FRMPLANILLAS.CBTIPODOCEMPRESA.ITEMINDEX := 2;
              END
              ELSE IF DATAMODULE1.QRYLISTAEMPRESASTIP_DOCUMENTO.TEXT = 'TI' THEN
                   BEGIN
                   FRMPLANILLAS.CBTIPODOCEMPRESA.ITEMINDEX := 3;
                   END
                   ELSE IF DATAMODULE1.QRYLISTAEMPRESASTIP_DOCUMENTO.TEXT= 'PS' THEN
                        BEGIN
                        FRMPLANILLAS.CBTIPODOCEMPRESA.ITEMINDEX := 4;
                        END;

   FRMPLANILLAS.EDNUMERO.TEXT := DATAMODULE1.QRYLISTAEMPRESASNUM_DOCUMENTO.TEXT;
   //FRMPLANILLAS.EDTSUCURSAL.TEXT:= DATAMODULE1.QRYLISTAEMPRESASCOD_SUCURSAL.TEXT;
   FRMPLANILLAS.EDTNOMBREEMPRESA.TEXT:= DATAMODULE1.QRYLISTAEMPRESASNOM_EMPRESA.TEXT;
   FRMEMPRESAS.FREE;
   FRMPLANILLAS.EDNUMERO.SetFocus;


END;

PROCEDURE TFRMEMPRESAS.AUTOLIQUIDACIONES_SINANEXOS;

BEGIN

    IF DATAMODULE1.QRYLISTAEMPRESASTIP_DOCUMENTO.TEXT = 'NIT' THEN
    BEGIN
    FRMPLANILLAS_SINANEXOS.CBTIPODOCEMPRESA.ITEMINDEX := 1;
    END
    ELSE IF DATAMODULE1.QRYLISTAEMPRESASTIP_DOCUMENTO.TEXT = 'CC' THEN
         BEGIN
         FRMPLANILLAS_SINANEXOS.CBTIPODOCEMPRESA.ITEMINDEX := 0;
         END
         ELSE IF DATAMODULE1.QRYLISTAEMPRESASTIP_DOCUMENTO.TEXT = 'CE' THEN
              BEGIN
              FRMPLANILLAS_SINANEXOS.CBTIPODOCEMPRESA.ITEMINDEX := 2;
              END
              ELSE IF DATAMODULE1.QRYLISTAEMPRESASTIP_DOCUMENTO.TEXT = 'TI' THEN
                   BEGIN
                   FRMPLANILLAS_SINANEXOS.CBTIPODOCEMPRESA.ITEMINDEX := 3;
                   END
                   ELSE IF DATAMODULE1.QRYLISTAEMPRESASTIP_DOCUMENTO.TEXT= 'PS' THEN
                        BEGIN
                        FRMPLANILLAS_SINANEXOS.CBTIPODOCEMPRESA.ITEMINDEX := 4;
                        END;

   FRMPLANILLAS_SINANEXOS.EDNUMERO.TEXT := DATAMODULE1.QRYLISTAEMPRESASNUM_DOCUMENTO.TEXT;
   //FRMPLANILLAS.EDTSUCURSAL.TEXT:= DATAMODULE1.QRYLISTAEMPRESASCOD_SUCURSAL.TEXT;
   FRMPLANILLAS_SINANEXOS.EDTNOMBREEMPRESA.TEXT:= DATAMODULE1.QRYLISTAEMPRESASNOM_EMPRESA.TEXT;
   FRMEMPRESAS.FREE;
   FRMPLANILLAS_SINANEXOS.EDNUMERO.SetFocus;


END;

PROCEDURE TFRMEMPRESAS.INCAPACIDADES;
VAR TIPO : STRING;
BEGIN
  IF FRMEMPRESAS.Caption='Empresas con Afiliados en SALUDVIDA EPS' THEN
  BEGIN
 // DATAMODULE1.QRYLISTAEMPRESAS.EDIT;
    IF DATAMODULE1.QRYLISTAEMPRESASTIP_DOCUMENTO.TEXT = 'NIT' THEN
    BEGIN
    FRMINCAPACIDADES.CBTIPODOCEMPRESA.ITEMINDEX := 1;
    END
    ELSE IF DATAMODULE1.QRYLISTAEMPRESASTIP_DOCUMENTO.TEXT = 'CC' THEN
         BEGIN
         FRMINCAPACIDADES.CBTIPODOCEMPRESA.ITEMINDEX := 0;
         END
         ELSE IF DATAMODULE1.QRYLISTAEMPRESASTIP_DOCUMENTO.TEXT = 'CE' THEN
              BEGIN
              FRMINCAPACIDADES.CBTIPODOCEMPRESA.ITEMINDEX := 2;
              END
              ELSE IF DATAMODULE1.QRYLISTAEMPRESASTIP_DOCUMENTO.TEXT = 'TI' THEN
                   BEGIN
                   FRMINCAPACIDADES.CBTIPODOCEMPRESA.ITEMINDEX := 3;
                   END;

   FRMINCAPACIDADES.EDTNUMDOCEMPRESA.TEXT := DATAMODULE1.QRYLISTAEMPRESASNUM_DOCUMENTO.TEXT;
   FRMINCAPACIDADES.EDTNOMBREEMPRESA.TEXT:= DATAMODULE1.QRYLISTAEMPRESASNOM_EMPRESA.TEXT;
   FRMEMPRESAS.FREE;
   FRMINCAPACIDADES.EDTNUMDOCEMPRESA.SetFocus;
   END
   ELSE IF FRMEMPRESAS.Caption='Empresas con Afiliados en SALUDVIDA EPS TUTELAS' THEN
   BEGIN
    // DATAMODULE1.QRYLISTAEMPRESAS.EDIT;
    IF DATAMODULE1.QRYLISTAEMPRESASTIP_DOCUMENTO.TEXT = 'NIT' THEN
    BEGIN
    FRMINCAPACIDADESTUTELA.CBTIPODOCEMPRESA.ITEMINDEX := 1;
    END
    ELSE IF DATAMODULE1.QRYLISTAEMPRESASTIP_DOCUMENTO.TEXT = 'CC' THEN
         BEGIN
         FRMINCAPACIDADESTUTELA.CBTIPODOCEMPRESA.ITEMINDEX := 0;
         END
         ELSE IF DATAMODULE1.QRYLISTAEMPRESASTIP_DOCUMENTO.TEXT = 'CE' THEN
              BEGIN
              FRMINCAPACIDADESTUTELA.CBTIPODOCEMPRESA.ITEMINDEX := 2;
              END
              ELSE IF DATAMODULE1.QRYLISTAEMPRESASTIP_DOCUMENTO.TEXT = 'TI' THEN
                   BEGIN
                   FRMINCAPACIDADESTUTELA.CBTIPODOCEMPRESA.ITEMINDEX := 3;
                   END;

   FRMINCAPACIDADESTUTELA.EDTNUMDOCEMPRESA.TEXT := DATAMODULE1.QRYLISTAEMPRESASNUM_DOCUMENTO.TEXT;
   FRMINCAPACIDADESTUTELA.EDTNOMBREEMPRESA.TEXT:= DATAMODULE1.QRYLISTAEMPRESASNOM_EMPRESA.TEXT;
   FRMEMPRESAS.FREE;
   FRMINCAPACIDADESTUTELA.EDTNUMDOCEMPRESA.SetFocus;
   END
END;

PROCEDURE TFRMEMPRESAS.DBGRID1DBLCLICK(SENDER: TOBJECT);
BEGIN
 IF GLPROCESO = 'AUTOLIQUIDACIONES' THEN
   BEGIN
   AUTOLIQUIDACIONES;
   END
   ELSE IF GLPROCESO = 'INCAPACIDADES' THEN
   BEGIN
   INCAPACIDADES;
   END
   ELSE IF GLPROCESO = 'CORRECIONES' THEN
   BEGIN
    CORRECION_AUTOLIQUIDACIONES;
   END
   ELSE IF GLPROCESO = 'AUTOLIQUIDACIONES_SINANEXOS' THEN
   BEGIN
    AUTOLIQUIDACIONES_SINANEXOS;
   END;

END;

PROCEDURE TFRMEMPRESAS.BTNBUSCARCLICK(SENDER: TOBJECT);
BEGIN
  IF EDTBUSCAR.TEXT <> '' THEN
  BEGIN
    DATAMODULE1.DTSEMPRESAS.DATASET := DATAMODULE1.QRYLISTAEMPRESAS;
    DATAMODULE1.QRYLISTAEMPRESAS.CLOSE;
    DATAMODULE1.QRYLISTAEMPRESAS.SQL.CLEAR;
    DATAMODULE1.QRYLISTAEMPRESAS.SQL.ADD('SELECT * FROM EMPRESAS WHERE NOM_EMPRESA LIKE  :"EMPRESA" AND COD_ESTADO = :"ESTADO" ORDER BY NOM_EMPRESA');
    DATAMODULE1.QRYLISTAEMPRESAS.Parameters[0].VALUE := '%' + TRIM(EDTBUSCAR.TEXT) + '%';
    DATAMODULE1.QRYLISTAEMPRESAS.Parameters[1].VALUE := 'A';
    DATAMODULE1.QRYLISTAEMPRESAS.OPEN;
    IF  DATAMODULE1.QRYLISTAEMPRESAS.RECORDCOUNT = 0 THEN
    BEGIN
    SHOWMESSAGE('NO  HAY  EMPRESAS  CON ESTE  NOMBRE');
    END;
  END;
  //ELSE SHOWMESSAGE('DIGITE  LA  PALABRA  A BUSCAR');
END;

procedure TFRMEMPRESAS.CORRECION_AUTOLIQUIDACIONES;
VAR TIPO : STRING;
BEGIN
  // DATAMODULE1.QRYLISTAEMPRESAS.EDIT;
    IF DATAMODULE1.QRYLISTAEMPRESASTIP_DOCUMENTO.TEXT = 'NIT' THEN
    BEGIN
    FRMCORRECIONES.CBTIPODOCEMPRESA.ITEMINDEX := 1;
    END
    ELSE IF DATAMODULE1.QRYLISTAEMPRESASTIP_DOCUMENTO.TEXT = 'CC' THEN
         BEGIN
         FRMCORRECIONES.CBTIPODOCEMPRESA.ITEMINDEX := 0;
         END
         ELSE IF DATAMODULE1.QRYLISTAEMPRESASTIP_DOCUMENTO.TEXT = 'CE' THEN
              BEGIN
              FRMCORRECIONES.CBTIPODOCEMPRESA.ITEMINDEX := 2;
              END
              ELSE IF DATAMODULE1.QRYLISTAEMPRESASTIP_DOCUMENTO.TEXT = 'TI' THEN
                   BEGIN
                   FRMCORRECIONES.CBTIPODOCEMPRESA.ITEMINDEX := 3;
                   END;

   FRMCORRECIONES.EDNUMERO.TEXT := DATAMODULE1.QRYLISTAEMPRESASNUM_DOCUMENTO.TEXT;
   //FRMCORRECIONES.EDTSUCURSAL.TEXT:= DATAMODULE1.QRYLISTAEMPRESASCOD_SUCURSAL.TEXT;
   FRMCORRECIONES.EDTNOMBREEMPRESA.TEXT:= DATAMODULE1.QRYLISTAEMPRESASNOM_EMPRESA.TEXT;
   FRMEMPRESAS.FREE;
   FRMCORRECIONES.EDNUMERO.SetFocus;


end;

procedure TFRMEMPRESAS.FormActivate(Sender: TObject);
begin
DATAMODULE1.qryempresas.Close;
top := 7;
end;

END.
