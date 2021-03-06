UNIT UBANCOS;

INTERFACE

USES
  WINDOWS, MESSAGES, Variants,SYSUTILS, CLASSES, GRAPHICS, CONTROLS, FORMS,
  DIALOGS, GRIDS, DBGRIDS, DBCTRLS, STDCTRLS, EXTCTRLS, Buttons;

TYPE
  TFRMBANCOS = CLASS(TFORM)
    PANEL1: TPANEL;
    Image1: TImage;
    Label47: TLabel;
    Label48: TLabel;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    edtcodbanco: TEdit;
    Label2: TLabel;
    edtnombanco: TEdit;
    Label3: TLabel;
    edtnumcuenta: TEdit;
    Label4: TLabel;
    Label6: TLabel;
    edtnumerodoc: TEdit;
    Label9: TLabel;
    edtdireccion: TEdit;
    Label7: TLabel;
    dbcdepartamento: TDBLookupComboBox;
    Label8: TLabel;
    dbcciuadad: TDBLookupComboBox;
    Label10: TLabel;
    Label11: TLabel;
    cbestbanco: TComboBox;
    cbtiporecaudo: TComboBox;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    btnnuevo: TBitBtn;
    btncancelar: TBitBtn;
    btnCerrar: TBitBtn;
    CBTIPO: TDBLookupComboBox;
    PROCEDURE FORMCREATE(SENDER: TOBJECT);
    PROCEDURE DBCDEPARTAMENTOEXIT(SENDER: TOBJECT);
    FUNCTION VALIDAR : BOOLEAN;
    PROCEDURE FORMCLOSE(SENDER: TOBJECT; VAR ACTION: TCLOSEACTION);
    PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);
    procedure edtcodbancoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnombancoKeyPress(Sender: TObject; var Key: Char);
    procedure edtcodbancoExit(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnnuevoClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  PRIVATE
    { PRIVATE DECLARATIONS }
  PUBLIC
    { PUBLIC DECLARATIONS }
  END;

VAR
  FRMBANCOS: TFRMBANCOS;

IMPLEMENTATION

USES DTMODULO, Uprincipal;

{$R *.DFM}

PROCEDURE TFRMBANCOS.FORMCREATE(SENDER: TOBJECT);
BEGIN
 APPLICATION.ONMESSAGE := APPMESSAGE;
END;

PROCEDURE TFRMBANCOS.DBCDEPARTAMENTOEXIT(SENDER: TOBJECT);
BEGIN
IF DBCDEPARTAMENTO.KEYVALUE > 0 THEN
BEGIN
   DATAMODULE1.QRYCIUDADES.CLOSE;
    DATAMODULE1.QRYCIUDADES.PREPARE;
    DATAMODULE1.QRYCIUDADES.SQL.CLEAR;
    DATAMODULE1.QRYCIUDADES.SQL.ADD('SELECT * FROM  CIUDADES WHERE COD_DEPARTAMENTO = :"DEPARTAMENTO"');
    DATAMODULE1.QRYCIUDADES.PARAMS[0].ASSTRING := DBCDEPARTAMENTO.KEYVALUE;
    DATAMODULE1.QRYCIUDADES.OPEN;
END;
END;

FUNCTION TFRMBANCOS.VALIDAR: BOOLEAN;
BEGIN
VALIDAR := true;
IF EDTNOMBANCO.TEXT = '' THEN
 BEGIN
 SHOWMESSAGE('DIGITE  EL NOMBRE DEL BANCO');
 edtnombanco.SetFocus;
 exit;

 END;

 IF EDTNUMERODOC.TEXT = '' THEN
 BEGIN
 SHOWMESSAGE('DIGITE  EL NUMERO DEL  DOCUMENTO DEL  BANCO');
 edtnumerodoc.SetFocus;
 exit;

 END;

 IF EDTNUMCUENTA.TEXT = '' THEN
 BEGIN
 SHOWMESSAGE('DIGITE  EL NUMERO DE  LA  CUENTA  BANCO');
 EDTNUMCUENTA.SetFocus;
 exit;
 END;

 IF EDTDIRECCION.TEXT = '' THEN
 BEGIN
 SHOWMESSAGE('DIGITE  LA DIRECCION  PRINCIPAL  DEL BANCO ');
 EDTDIRECCION.SetFocus;
 exit;
 END;

 IF CBTIPO.TEXT = '' THEN
 BEGIN
 SHOWMESSAGE('SELECIONE EL TIPO DE  DOCUMENTO DEL BANCO');
 CBTIPO.SetFocus;
 exit;
 END;

 IF CBTIPORECAUDO.ITEMINDEX = -1 THEN
 BEGIN
 SHOWMESSAGE('SELECIONE EL TIPO DE  RECAUDO DEL  BANCO');
 CBTIPORECAUDO.SetFocus;
 exit;
 END;

 IF CBESTBANCO.ITEMINDEX = -1 THEN
 BEGIN
 SHOWMESSAGE('SELECIONE EL ESTADO DEL BANCO');
 CBESTBANCO.SetFocus;
 exit;
 END;

VALIDAR := false;


END;

PROCEDURE TFRMBANCOS.FORMCLOSE(SENDER: TOBJECT; VAR ACTION: TCLOSEACTION);
BEGIN
ACTION := CAFREE;

END;

procedure TFRMBANCOS.APPMESSAGE(var MSG: TMSG; var HANDLED: BOOLEAN);
begin
IF MSG.WPARAM = VK_RETURN THEN
       BEGIN
        IF ((SCREEN.ACTIVECONTROL) IS TCOMBOBOX) THEN
             MSG.WPARAM := VK_TAB;
            IF (((SCREEN.ACTIVECONTROL) IS TEDIT)) THEN
                 MSG.WPARAM := VK_TAB;
            IF (((SCREEN.ACTIVECONTROL) IS TDBLookupComboBox)) THEN
                 MSG.WPARAM := VK_TAB;
       END;

end;



procedure TFRMBANCOS.edtcodbancoKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9',#8])then
 begin
 Key := #0;
 ShowMessage('Digite solo numeros');
 end;
end;

procedure TFRMBANCOS.edtnombancoKeyPress(Sender: TObject; var Key: Char);
begin
if (Key in ['0'..'9',#8])then
 begin
 Key := #0;
 ShowMessage('Digite Solo Letras ');
 end;
end;

procedure TFRMBANCOS.edtcodbancoExit(Sender: TObject);
begin
    if EDTCODBANCO.Text <> '' then
    begin
    EDTCODBANCO.Text :=frmprincipal.espacios(2,EDTCODBANCO.Text);
    end;
end;

procedure TFRMBANCOS.btnCerrarClick(Sender: TObject);
begin
close;
end;

procedure TFRMBANCOS.DBGrid1CellClick(Column: TColumn);
begin
     btnnuevo.Caption := '&Actualizar';
     EDTCODBANCO.Enabled := FALSE;
      EDTNOMBANCO.Enabled := TRUE;
      EDTNUMERODOC.Enabled := TRUE;
      EDTNUMCUENTA.Enabled := TRUE;
      EDTDIRECCION.Enabled := TRUE;
      CBTIPO.Enabled := TRUE;
      CBTIPORECAUDO.Enabled := TRUE;
      CBESTBANCO.Enabled := TRUE;
      DBCDEPARTAMENTO.Enabled := TRUE;
      DBCCIUADAD.Enabled := TRUE;

     EDTCODBANCO.TEXT := DATAMODULE1.QRYBANCOSCOD_BANCO.VALUE;
     EDTNOMBANCO.TEXT := DATAMODULE1.QRYBANCOSNOM_BANCO.VALUE;
     EDTNUMERODOC.TEXT := DATAMODULE1.QRYBANCOSNUM_DOCUMENTO.VALUE;
     EDTNUMCUENTA.TEXT := DATAMODULE1.QRYBANCOSCTA_BANCO.VALUE;
     EDTDIRECCION.TEXT := DATAMODULE1.QRYBANCOSDIR_BANCO.VALUE;
     CBTIPO.KeyValue := DATAMODULE1.qrybancosTIP_DOCUMENTO.VALUE;
     // DEPARTAMENTO
    DBCDEPARTAMENTO.KEYVALUE := DATAMODULE1.QRYBANCOSCOD_DEPARTAMENTO.VALUE;
    // CIUDAD
    IF DBCDEPARTAMENTO.KEYVALUE <> NULL THEN
    DATAMODULE1.QRYCIUDADES.CLOSE;
    DATAMODULE1.QRYCIUDADES.PREPARE;
    DATAMODULE1.QRYCIUDADES.SQL.CLEAR;
    DATAMODULE1.QRYCIUDADES.SQL.ADD('SELECT * FROM  CIUDADES WHERE COD_DEPARTAMENTO = :"DEPARTAMENTO"');
    DATAMODULE1.QRYCIUDADES.PARAMS[0].ASSTRING := DBCDEPARTAMENTO.KEYVALUE;
    DATAMODULE1.QRYCIUDADES.OPEN;
             IF DATAMODULE1.QRYCIUDADES.RECORDCOUNT > 0 THEN
             BEGIN
             DBCCIUADAD.KEYVALUE := DATAMODULE1.QRYBANCOSCOD_CIUDAD.VALUE;
             END;

        //  TIPO RECAUDO
       IF DATAMODULE1.QRYBANCOSTIPO_RECAUDO.VALUE = 'N' THEN
                  BEGIN
                  CBTIPORECAUDO.ITEMINDEX := 0;
                  END
                  ELSE IF DATAMODULE1.QRYBANCOSTIPO_RECAUDO.VALUE = 'L' THEN
                       BEGIN
                       CBTIPORECAUDO.ITEMINDEX := 1;
                       END;
       // ESTADO DEL BANCO
       IF  DATAMODULE1.QRYBANCOSEST_BANCO.VALUE = 'A' THEN
                  BEGIN
                  CBESTBANCO.ITEMINDEX := 0;
                  END
                  ELSE IF DATAMODULE1.QRYBANCOSEST_BANCO.VALUE = 'I' THEN
                       BEGIN
                       CBESTBANCO.ITEMINDEX := 1;
                       END;


end;

procedure TFRMBANCOS.btnnuevoClick(Sender: TObject);
begin

IF btnnuevo.Caption = '&Nuevo' THEN
BEGIN
      EDTCODBANCO.Enabled := TRUE;
      EDTNOMBANCO.Enabled := TRUE;
      EDTNUMERODOC.Enabled := TRUE;
      EDTNUMCUENTA.Enabled := TRUE;
      EDTDIRECCION.Enabled := TRUE;
      CBTIPO.Enabled := TRUE;
      CBTIPORECAUDO.Enabled := TRUE;
      CBESTBANCO.Enabled := TRUE;
      DBCDEPARTAMENTO.Enabled := TRUE;
      DBCCIUADAD.Enabled := TRUE;
      btnnuevo.Caption := '&Grabar';
      EDTCODBANCO.SetFocus;
END
ELSE
IF (btnnuevo.Caption = '&Grabar') or (btnnuevo.Caption = '&Actualizar')then
begin
   IF  EDTCODBANCO.TEXT > '0' THEN
   BEGIN
   IF VALIDAR = FALSE THEN
    BEGIN
   TRY
   DATAMODULE1.DTBDATAMEC.STARTTRANSACTION;
   DATAMODULE1.QRYBANCOS.CLOSE;
   DATAMODULE1.QRYBANCOS.PREPARE;
   DATAMODULE1.QRYBANCOS.SQL.CLEAR;
   DATAMODULE1.QRYBANCOS.SQL.ADD('SELECT * FROM BANCOS WHERE COD_BANCO = :"BANCO"');
   DATAMODULE1.QRYBANCOS.PARAMS[0].ASSTRING := TRIM(EDTCODBANCO.TEXT);
   DATAMODULE1.QRYBANCOS.REQUESTLIVE := TRUE;
   DATAMODULE1.QRYBANCOS.OPEN;
        IF DATAMODULE1.QRYBANCOS.RECORDCOUNT > 0 THEN
        BEGIN
        DATAMODULE1.QRYBANCOS.EDIT;
        END
        ELSE
        IF DATAMODULE1.QRYBANCOS.RECORDCOUNT = 0 THEN
        BEGIN
        DATAMODULE1.QRYBANCOS.INSERT;
        DATAMODULE1.QRYBANCOSCOD_BANCO.VALUE := EDTCODBANCO.TEXT;
        END;
        DATAMODULE1.QRYBANCOSNOM_BANCO.VALUE := EDTNOMBANCO.TEXT;
        DATAMODULE1.QRYBANCOSCTA_BANCO.VALUE := EDTNUMCUENTA.TEXT;
        DATAMODULE1.QRYBANCOSDIR_BANCO.VALUE := EDTDIRECCION.TEXT;
        DATAMODULE1.QRYBANCOSTIP_DOCUMENTO.VALUE := CBTIPO.TEXT;
        DATAMODULE1.QRYBANCOSNUM_DOCUMENTO.VALUE := EDTNUMERODOC.TEXT;
        DATAMODULE1.QRYBANCOSCOD_DEPARTAMENTO.VALUE := DBCDEPARTAMENTO.KEYVALUE;
        DATAMODULE1.QRYBANCOSCOD_CIUDAD.VALUE := DBCCIUADAD.KEYVALUE;
              IF CBTIPORECAUDO.ITEMINDEX = 0 THEN
              BEGIN
               DATAMODULE1.QRYBANCOSTIPO_RECAUDO.VALUE := 'N';
               END
              ELSE IF CBTIPORECAUDO.ITEMINDEX = 1 THEN
                   BEGIN
                   DATAMODULE1.QRYBANCOSTIPO_RECAUDO.VALUE := 'L';
                   END;


              IF CBESTBANCO.ITEMINDEX = 0 THEN
              BEGIN
               DATAMODULE1.QRYBANCOSEST_BANCO.VALUE := 'A';
               END
              ELSE IF CBESTBANCO.ITEMINDEX = 1 THEN
                   BEGIN
                   DATAMODULE1.QRYBANCOSEST_BANCO.VALUE := 'I';
                   END;

   DATAMODULE1.QRYBANCOS.POST;
   DATAMODULE1.DTBDATAMEC.COMMIT;
   DATAMODULE1.QRYBANCOS.CLOSE;
   DATAMODULE1.QRYBANCOS.PREPARE;
   DATAMODULE1.QRYBANCOS.SQL.CLEAR;
   DATAMODULE1.QRYBANCOS.SQL.ADD('SELECT * FROM BANCOS ');
   DATAMODULE1.QRYBANCOS.REQUESTLIVE := FALSE;
   DATAMODULE1.QRYBANCOS.OPEN;
   btnnuevo.Caption := '&Nuevo';
   btncancelar.Click;

  EXCEPT
   DATAMODULE1.DTBDATAMEC.ROLLBACK;
   SHOWMESSAGE('NO SE PUEDE  GRABAR EL  BANCO PRESENTA  ERRORES VERIFIQUE');
   btnnuevo.Caption := '&Nuevo';
   RAISE;
end;
 END;
 END;
 END
 ELSE SHOWMESSAGE('NO EXISTE NINGUN BANCO PARA  GRABAR');
end;

procedure TFRMBANCOS.btncancelarClick(Sender: TObject);
begin
EDTCODBANCO.TEXT := '';
EDTNOMBANCO.TEXT := '';
EDTNUMERODOC.TEXT := '';
EDTNUMCUENTA.TEXT := '';
EDTDIRECCION.TEXT := '';
CBTIPO.KeyValue := '';
CBTIPORECAUDO.ITEMINDEX := -1;
CBESTBANCO.ITEMINDEX := -1;
DBCDEPARTAMENTO.KEYVALUE := '';
DBCCIUADAD.KEYVALUE := '';
btnnuevo.Caption := '&Nuevo';


EDTCODBANCO.Enabled := FALSE;
EDTNOMBANCO.Enabled := FALSE;
EDTNUMERODOC.Enabled := FALSE;
EDTNUMCUENTA.Enabled := FALSE;
EDTDIRECCION.Enabled := FALSE;
CBTIPO.Enabled := FALSE;
CBTIPORECAUDO.Enabled := FALSE;
CBESTBANCO.Enabled := FALSE;
DBCDEPARTAMENTO.Enabled := FALSE;
DBCCIUADAD.Enabled := FALSE;
btnnuevo.SetFocus

end;

procedure TFRMBANCOS.FormActivate(Sender: TObject);
begin
  DATAMODULE1.QRYBANCOS.CLOSE;
   DATAMODULE1.QRYBANCOS.PREPARE;
   DATAMODULE1.QRYBANCOS.SQL.CLEAR;
   DATAMODULE1.QRYBANCOS.SQL.ADD('SELECT * FROM BANCOS ');
   DATAMODULE1.QRYBANCOS.REQUESTLIVE := FALSE;
   DATAMODULE1.QRYBANCOS.OPEN;
   DATAMODULE1.QRYDEPARTAMENTOS.OPEN;
   DATAMODULE1.qrydocumentos.Open;
   btncancelar.Click;
end;

END.

