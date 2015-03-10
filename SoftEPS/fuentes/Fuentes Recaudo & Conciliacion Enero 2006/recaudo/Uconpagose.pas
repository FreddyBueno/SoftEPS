UNIT UCONPAGOSE;

INTERFACE

USES
  WINDOWS, MESSAGES, SYSUTILS, VARIANTS, CLASSES, GRAPHICS, CONTROLS, FORMS,
  DIALOGS,shellapi, GRIDS, DBGRIDS, STDCTRLS, EXTCTRLS, DB, DBTABLES, MENUS, Buttons,
  ADODB;

TYPE
  TFRMPAGOSEMPRESA = CLASS(TFORM)
    PANEL2: TPANEL;
    EDTNUMERO: TEDIT;
    EDTNOMBRE: TEDIT;
    CBTIPO: TCOMBOBOX;
    dsqconsulta: TDataSource;
    LABEL1: TLABEL;
    LABEL2: TLABEL;
    LABEL3: TLABEL;
    Label5: TLabel;
    Label47: TLabel;
    GroupBox1: TGroupBox;
    btnbuscar: TBitBtn;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    opguardar: TSaveDialog;
    qryempresas: TADOQuery;
    qrylistapagos: TADOQuery;
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
    qrylistapagosNUM_PLANILLA: TStringField;
    qrylistapagosEMP_TIPO_DOC: TStringField;
    qrylistapagosEMP_NUMERO_DOC: TStringField;
    qrylistapagosCOD_SUCURSAL: TStringField;
    qrylistapagosTIP_DECLARACION: TStringField;
    qrylistapagosFEC_PAGO: TDateTimeField;
    qrylistapagosNUM_PLANILLA_CORR: TStringField;
    qrylistapagosPER_COTIZACION: TStringField;
    qrylistapagosPER_PRESENTACION: TStringField;
    qrylistapagosTOT_PLANILLA: TBCDField;
    qrylistapagosTOT_APORTE_PER: TBCDField;
    qrylistapagosTOT_INCAPACIDAD: TBCDField;
    qrylistapagosTOT_LICENCIAS: TBCDField;
    qrylistapagosTOT_APORTE: TBCDField;
    qrylistapagosINT_MORA: TBCDField;
    qrylistapagosTOT_APORTE_MMORA: TBCDField;
    qrylistapagosTOT_SALDO_FAV: TBCDField;
    qrylistapagosTOT_UPC: TBCDField;
    qrylistapagosTOT_PAGADO: TBCDField;
    qrylistapagosCOD_BANCO: TStringField;
    qrylistapagosNUM_CUENTA: TStringField;
    qrylistapagosVAL_EFECTIVO: TBCDField;
    qrylistapagosVAL_CHEQUE: TBCDField;
    qrylistapagosEST_PLANILLA: TStringField;
    qrylistapagosCOD_REGIONAL: TStringField;
    qrylistapagosCOD_OFICINA: TStringField;
    qrylistapagosNUM_DECLARACION: TBCDField;
    qrylistapagosCRU_CONCILIACION: TStringField;
    qrylistapagosFEC_DIGITACION: TDateTimeField;
    qrylistapagosTIP_DOC_USUARIO: TStringField;
    qrylistapagosNUM_DOC_USUARIO: TStringField;
    qrylistapagosFEC_MODIFICACION: TDateTimeField;
    qrylistapagosNO_INCAP_PAG: TStringField;
    qrylistapagosVAL_INCAP_PAG: TBCDField;
    qrylistapagosNO_LICEN_PAG: TStringField;
    qrylistapagosVAL_LICEN_PAG: TBCDField;
    qrylistapagosNO_MESES_MORA: TBCDField;
    qrylistapagosNO_PLANINILLA_ANT: TStringField;
    qrylistapagosVAL_NETO_UPC: TBCDField;
    qrylistapagosVAL_INTERES_UPC: TBCDField;
    qrylistapagosVAL_APORMASINT_UPC: TBCDField;
    qrylistapagosVAL_SALFAVOR_UPC: TBCDField;
    qrylistapagosVAL_PAGO_UPC: TBCDField;
    qrylistapagosNUM_LOTE: TStringField;
    qrylistapagosNOM_EMPRESA: TStringField;
    PROCEDURE EDTNUMEROEXIT(SENDER: TOBJECT);
    PROCEDURE BTNBUSCARCLICK(SENDER: TOBJECT);
    PROCEDURE FORMCLOSE(SENDER: TOBJECT; VAR ACTION: TCLOSEACTION);
    PROCEDURE CERRAR1CLICK(SENDER: TOBJECT);
    procedure FormCreate(Sender: TObject);
    PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);
    procedure cbtipoExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  PRIVATE
    { PRIVATE DECLARATIONS }
  PUBLIC
    { PUBLIC DECLARATIONS }
  END;

VAR
  FRMPAGOSEMPRESA: TFRMPAGOSEMPRESA;

IMPLEMENTATION

uses Uexcel, dtmodulo;



{$R *.DFM}

PROCEDURE TFRMPAGOSEMPRESA.EDTNUMEROEXIT(SENDER: TOBJECT);
BEGIN
    IF (CBTIPO.ITEMINDEX >= 0) AND (EDTNUMERO.TEXT > '0') THEN
      BEGIN
            EDTNOMBRE.TEXT := '';
                QRYEMPRESAS.CLOSE;
                QRYEMPRESAS.SQL.CLEAR;
                QRYEMPRESAS.SQL.ADD('SELECT * FROM  EMPRESAS  WHERE TIP_DOCUMENTO = :"TIPO" AND NUM_DOCUMENTO = :"NUMERO"');
                QRYEMPRESAS.Parameters[0].VALUE := TRIM(CBTIPO.TEXT);
                QRYEMPRESAS.Parameters[1].VALUE := TRIM(EDTNUMERO.TEXT);
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
                QRYLISTAPAGOS.SQL.CLEAR;
                QRYLISTAPAGOS.SQL.ADD('SELECT * FROM AUTOLIQUIDACION  WHERE EMP_TIPO_DOC = :"TIPO" AND EMP_NUMERO_DOC = :"NUMERO" ORDER BY  AUTOLIQUIDACION.PER_COTIZACION');
                QRYLISTAPAGOS.Parameters[0].VALUE := TRIM(CBTIPO.TEXT);
                QRYLISTAPAGOS.Parameters[1].VALUE := TRIM(EDTNUMERO.TEXT);
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

procedure TFRMPAGOSEMPRESA.FormActivate(Sender: TObject);
begin
WindowState := wsNormal;
top := 0;
Left := 0;
end;

procedure TFRMPAGOSEMPRESA.BitBtn2Click(Sender: TObject);
var i,j:integer;
     filestream:tfilestream;
begin
  opguardar.initialdir:='C:';
  opguardar.filename:='Sin Nombre.xls';
  opguardar.DefaultExt:='xls';

  if opguardar.execute then
  begin
    filestream:=tfilestream.create(opguardar.filename,fmcreate);
    try
      xlsbeginstream(filestream,0);
      with dsqconsulta.dataset do
      begin
        First;
        for i:=0 to fieldCount-1 do
          xlswritecelllabel(filestream,i,0,fields[i].displaylabel);
        j:=1;
        while (not eof) do
        begin
          for i:=0 to fieldCount-1 do

            if dsqconsulta.dataset.fields[i].DataType in [ftBCD,ftInteger,ftsmallint,ftword,ftfloat,ftcurrency,ftlargeint] then
              xlswritecellnumber(filestream,i,j,fields[i].Asfloat)
            else xlswritecelllabel(filestream,i,j,fields[i].VALUE);
          inc(j);
          next;
        end;
        xlsendstream(filestream);
      end;
    finally
      filestream.free;
      shellexecute(handle,'open',pchar(opguardar.FileName),'','',sw_shownormal);
    end;
  end;

end;

END.
  '
