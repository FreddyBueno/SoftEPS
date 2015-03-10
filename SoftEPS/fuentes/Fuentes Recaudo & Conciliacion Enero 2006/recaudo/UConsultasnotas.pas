UNIT UCONSULTASNOTAS;

INTERFACE

USES
  WINDOWS, MESSAGES, SYSUTILS, VARIANTS, CLASSES, GRAPHICS, CONTROLS, FORMS,
  DIALOGS,shellapi, GRIDS, DBGRIDS, STDCTRLS, EXTCTRLS, DB, DBTABLES, MENUS, Buttons,
  ADODB;

TYPE
  TFRMCONSULTAS_NOTAS = CLASS(TFORM)
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
    qrynotas: TADOQuery;
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
    qrynotasNUM_INCAPACIDAD: TStringField;
    qrynotasVAL_PAGAR_INCAP: TBCDField;
    qrynotasTIP_MOVIMIENTO: TStringField;
    qrynotasNUM_PLANILLA: TStringField;
    qrynotasTIP_DOC_EMPRESA: TStringField;
    qrynotasNUM_DOC_EMPRESA: TStringField;
    qrynotasTIP_NOTA: TStringField;
    qrynotasVAL_NOTA: TBCDField;
    Label4: TLabel;
    DBGrid2: TDBGrid;
    Label6: TLabel;
    DBGrid3: TDBGrid;
    Label7: TLabel;
    DBGrid4: TDBGrid;
    Label8: TLabel;
    Edtsaldo: TEdit;
    Label9: TLabel;
    qryincapacidadesnodes: TADOQuery;
    DSQINCAPNODES: TDataSource;
    qryincapacidadesnodesNUM_INCAPACIDAD: TStringField;
    qryincapacidadesnodesPER_PAGO_INCAP: TDateTimeField;
    qryincapacidadesnodesNUM_COMPROBANTE: TStringField;
    qryincapacidadesnodesDIA_PAGAR_INCAP: TBCDField;
    qryincapacidadesnodesVAL_PAGAR_INCAP: TBCDField;
    qryincapacidadesnodesTIP_PAGO_INCAP: TStringField;
    qryincapacidadesnodesFEC_PAGO_INCAP: TDateTimeField;
    qryincapacidadesnodesPER_PRESENTADO: TStringField;
    qryincapacidadesnodesEST_DET_PLANILLA: TStringField;
    qryincapacidadesnodesVAL_DESCONTADO: TBCDField;
    qryincapacidadesnodesAFI_TIPO_DOC: TStringField;
    qryincapacidadesnodesAFI_NUMERO_DOC: TStringField;
    qrynotascredito: TADOQuery;
    DSQNOTASC: TDataSource;
    DSQNOTASD: TDataSource;
    qrynotasdebito: TADOQuery;
    qryincapacidades2: TADOQuery;
    qryincapacidades2VALORSALDO: TBCDField;
    qrynotascredito2: TADOQuery;
    qrynotascredito2VALNOTACREDITO: TBCDField;
    qrynotasdebito2: TADOQuery;
    qrynotasdebito2VALNOTADEBITO: TBCDField;
    qrynotascreditoNUM_PLANILLA: TStringField;
    qrynotascreditoTIP_DOC_EMPRESA: TStringField;
    qrynotascreditoNUM_DOC_EMPRESA: TStringField;
    qrynotascreditoTIP_NOTA: TStringField;
    qrynotascreditoVAL_NOTA: TBCDField;
    qrynotascreditoNUM_COMP_DES: TStringField;
    qrynotascreditoFEC_DESCUENTO: TDateTimeField;
    qrynotascreditoTIP_DESCUENTO: TStringField;
    qrynotascreditoTIP_NOTA2: TStringField;
    qrynotascreditoTIP_MOVIMIENTO: TStringField;
    qrynotascreditoNUM_INCAPACIDAD: TStringField;
    qrynotasdebitoNUM_PLANILLA: TStringField;
    qrynotasdebitoTIP_DOC_EMPRESA: TStringField;
    qrynotasdebitoNUM_DOC_EMPRESA: TStringField;
    qrynotasdebitoTIP_NOTA: TStringField;
    qrynotasdebitoVAL_NOTA: TBCDField;
    qrynotasdebitoNUM_COMP_DES: TStringField;
    qrynotasdebitoFEC_DESCUENTO: TDateTimeField;
    qrynotasdebitoTIP_DESCUENTO: TStringField;
    qrynotasdebitoTIP_NOTA2: TStringField;
    qrynotasdebitoTIP_MOVIMIENTO: TStringField;
    qrynotasdebitoNUM_INCAPACIDAD: TStringField;
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
  FRMCONSULTAS_NOTAS: TFRMCONSULTAS_NOTAS;

IMPLEMENTATION

uses Uexcel, dtmodulo;



{$R *.DFM}

PROCEDURE TFRMCONSULTAS_NOTAS.EDTNUMEROEXIT(SENDER: TOBJECT);
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

PROCEDURE TFRMCONSULTAS_NOTAS.BTNBUSCARCLICK(SENDER: TOBJECT);
VAR
INCAPACIDADES, NOTASCREDITO, NOTASDEBITO:INTEGER;

BEGIN
INCAPACIDADES:=0;
NOTASCREDITO :=0;
NOTASDEBITO  :=0;
        IF EDTNOMBRE.TEXT <> '' THEN
        BEGIN
                //INCAPACIDADES DESCONTADAS EN PLANILLA
                QRYNOTAS.CLOSE;
                QRYNOTAS.Parameters[0].VALUE := TRIM(CBTIPO.TEXT);
                QRYNOTAS.Parameters[1].VALUE := TRIM(EDTNUMERO.TEXT);
                QRYNOTAS.OPEN;
                       IF QRYNOTAS.RECORDCOUNT = 0 THEN
                        BEGIN
                        SHOWMESSAGE(Lowercase(' LA  EMPRESA NO HA DESCONTADO INCAPACIDADES'));
                        END;

                //INCAPACIDADES DE LA EMPRESAS NO DESCONTADAS
                QRYINCAPACIDADESNODES.Close;
                QRYINCAPACIDADESNODES.Parameters[0].Value := TRIM(CBTIPO.TEXT);
                QRYINCAPACIDADESNODES.Parameters[1].Value := TRIM(EDTNUMERO.TEXT);
                QRYINCAPACIDADESNODES.Open;
                IF QRYINCAPACIDADESNODES.RECORDCOUNT = 0 THEN
                        BEGIN
                        SHOWMESSAGE(Lowercase(' LA  EMPRESA NO TIENE INCAPACIDADES DIGITADAS'));
                        END;
                if QRYINCAPACIDADESNODES.RecordCount > 0 then
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
                INCAPACIDADES:= STRTOINT(QRYINCAPACIDADES2VALORSALDO.Text);

                END;
                //NOTAS CREDITO ACTIVAS DE LA EMPRESA
                qrynotasCREDITO.CLOSE;
                qrynotasCREDITO.Parameters[0].VALUE := TRIM(CBTIPO.TEXT);
                qrynotasCREDITO.Parameters[1].VALUE := TRIM(EDTNUMERO.TEXT);
                qrynotasCREDITO.Open;
                IF QRYNOTASCREDITO.RecordCount > 0 THEN
                BEGIN
                qrynotasCREDITO2.CLOSE;
                qrynotasCREDITO2.Parameters[0].VALUE := TRIM(CBTIPO.TEXT);
                qrynotasCREDITO2.Parameters[1].VALUE := TRIM(EDTNUMERO.TEXT);
                qrynotasCREDITO2.Open;
                NOTASCREDITO:= STRTOINT(QRYNOTASCREDITO2VALNOTACREDITO.TEXT);
                END;
                //NOTAS DEBITO  ACTIVAS DE LA EMPRESA
                qrynotasDEBITO.CLOSE;
                qrynotasDEBITO.Parameters[0].VALUE := TRIM(CBTIPO.TEXT);
                qrynotasDEBITO.Parameters[1].VALUE := TRIM(EDTNUMERO.TEXT);
                qrynotasDEBITO.Open;
                IF QRYNOTASDEBITO.RecordCount > 0 THEN
                BEGIN
                qrynotasDEBITO2.CLOSE;
                qrynotasDEBITO2.Parameters[0].VALUE := TRIM(CBTIPO.TEXT);
                qrynotasDEBITO2.Parameters[1].VALUE := TRIM(EDTNUMERO.TEXT);
                qrynotasDEBITO2.Open;
                NOTASDEBITO:= STRTOINT(QRYNOTASDEBITO2VALNOTADEBITO.TEXT);
                END;
                //******SALDO A FAVOR
                EDTSALDO.Text := '$ ' + INTTOSTR(INCAPACIDADES+NOTASCREDITO-NOTASDEBITO);
        END;

END;

PROCEDURE TFRMCONSULTAS_NOTAS.FORMCLOSE(SENDER: TOBJECT;
  VAR ACTION: TCLOSEACTION);
BEGIN
ACTION := CAFREE;
END;

PROCEDURE TFRMCONSULTAS_NOTAS.CERRAR1CLICK(SENDER: TOBJECT);
BEGIN
 FRMCONSULTAS_NOTAS.CLOSE;
END;

procedure TFRMCONSULTAS_NOTAS.FormCreate(Sender: TObject);
begin
APPLICATION.ONMESSAGE := APPMESSAGE;
Edtsaldo.Text:='0';
end;

procedure TFRMCONSULTAS_NOTAS.APPMESSAGE(var MSG: TMSG; var HANDLED: BOOLEAN);
begin
IF MSG.WPARAM = VK_RETURN THEN
       BEGIN
        IF ((SCREEN.ACTIVECONTROL) IS TCOMBOBOX) THEN
             MSG.WPARAM := VK_TAB;
            IF (((SCREEN.ACTIVECONTROL) IS TEDIT)) THEN
                 MSG.WPARAM := VK_TAB;
       END;

end;

procedure TFRMCONSULTAS_NOTAS.cbtipoExit(Sender: TObject);
begin
 IF CBTIPO.ItemIndex = -1 THEN
  BEGIN
  ShowMessage('Debe Selecionar  el tipo de documento');
  CBTIPO.SetFocus;
  END;
end;

procedure TFRMCONSULTAS_NOTAS.FormActivate(Sender: TObject);
begin
WindowState := wsNormal;
top := 0;
Left := 0;
end;

{procedure TFRMCONSULTAS_NOTAS.BitBtn2Click(Sender: TObject);
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
}

procedure TFRMCONSULTAS_NOTAS.BitBtn2Click(Sender: TObject);
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
      //
      with dsqconsulta.dataset do
      begin
        First;
        xlswritecelllabel(filestream,0,0,'INCAPACIDADES DESCONTADAS');
        for i:=0 to fieldCount-1 do
          xlswritecelllabel(filestream,i,1,fields[i].displaylabel);
        j:=1;
        while (not eof) do
        begin

          for i:=0 to fieldCount-1 do

            if dsqconsulta.dataset.fields[i].DataType in [ftBCD,ftInteger,ftsmallint,ftword,ftfloat,ftcurrency,ftlargeint] then
              xlswritecellnumber(filestream,i,j+1,fields[i].Asfloat)
            else xlswritecelllabel(filestream,i,j+1,fields[i].VALUE);
          inc(j);
          next;
        end;
        //xlsendstream(filestream);
      end;
      //}
      with dsqincapnodes.dataset do
      begin
        First;
        xlswritecelllabel(filestream,0,j+2,'INCAPACIDADES NO DESCONTADAS');
        for i:=0 to fieldCount-1 do
          xlswritecelllabel(filestream,i,j+3,fields[i].displaylabel);
        j:=j+4;
        while (not eof) do
        begin
          for i:=0 to fieldCount-1 do

            if dsqincapnodes.dataset.fields[i].DataType in [ftBCD,ftInteger,ftsmallint,ftword,ftfloat,ftcurrency,ftlargeint] then
              xlswritecellnumber(filestream,i,j,fields[i].Asfloat)
            else
            Begin
            if not dsqincapnodes.dataset.fields[i].IsNull then
            xlswritecelllabel(filestream,i,j,fields[i].VALUE);
            end;
          inc(j);
          next;
        end;
        //xlsendstream(filestream);
      end;//}
      with dsqnotasc.dataset do
      begin
        First;
        xlswritecelllabel(filestream,0,j+2,'NOTAS CREDITO');
        for i:=0 to fieldCount-1 do
          xlswritecelllabel(filestream,i,j+3,fields[i].displaylabel);
        j:=j+4;
        while (not eof) do
        begin
          for i:=0 to fieldCount-1 do

            if dsqnotasc.dataset.fields[i].DataType in [ftBCD,ftInteger,ftsmallint,ftword,ftfloat,ftcurrency,ftlargeint] then
              xlswritecellnumber(filestream,i,j,fields[i].Asfloat)
            else
            begin
            if not dsqnotasc.dataset.fields[i].IsNull then
            xlswritecelllabel(filestream,i,j,fields[i].VALUE);
            end;
          inc(j);
          next;
        end;
        //xlsendstream(filestream);
      end;//}
      with dsqnotasd.dataset do
      begin
        First;
        xlswritecelllabel(filestream,0,j+2,'NOTAS DEBITO');
        for i:=0 to fieldCount-1 do
          xlswritecelllabel(filestream,i,j+3,fields[i].displaylabel);
        j:=j+4;
        while (not eof) do
        begin
          for i:=0 to fieldCount-1 do

            if dsqnotasd.dataset.fields[i].DataType in [ftBCD,ftInteger,ftsmallint,ftword,ftfloat,ftcurrency,ftlargeint] then
              xlswritecellnumber(filestream,i,j,fields[i].Asfloat)
            else
            begin
            if not dsqnotasd.dataset.fields[i].IsNull then
            xlswritecelllabel(filestream,i,j,fields[i].VALUE);
            end;
          inc(j);
          next;
        end;
        xlsendstream(filestream);
      end;//}
    finally
      filestream.free;
      shellexecute(handle,'open',pchar(opguardar.FileName),'','',sw_shownormal);
    end;
  end;

end;
END.
