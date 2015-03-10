UNIT UAFILIAEMPRESA;

INTERFACE

USES
  WINDOWS, MESSAGES, SYSUTILS, VARIANTS, CLASSES, GRAPHICS, CONTROLS, FORMS,
  DIALOGS, GRIDS, DBGRIDS, EXTCTRLS, MENUS, STDCTRLS, MASK, DB,shellapi, DBTABLES,
  Buttons, ADODB;

TYPE
  TFRMAFILIEMPRESA = CLASS(TFORM)
    PANEL1: TPANEL;
    EDTNUMERO: TEDIT;
    CBTIPO: TCOMBOBOX;
    MSMES: TMASKEDIT;
    EDTNOMBRE: TEDIT;
    dsqconsulta: TDataSource;
    LABEL1: TLABEL;
    LABEL2: TLABEL;
    LABEL3: TLABEL;
    LABEL4: TLABEL;
    Label5: TLabel;
    Label47: TLabel;
    GroupBox1: TGroupBox;
    btnbuscar: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
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
    qrylistapagosTIP_DOCUMENTO_AFI: TStringField;
    qrylistapagosNUM_DOCUMENTO_AFI: TStringField;
    qrylistapagosPRI_APELLIDO: TStringField;
    qrylistapagosSEG_APELLIDO: TStringField;
    qrylistapagosPRI_NOMBRE: TStringField;
    qrylistapagosSEG_NOMBRE: TStringField;
    qrylistapagosCOD_MODALIDAD_TRA: TStringField;
    qrylistapagosFEC_NACIMIENTO: TDateTimeField;
    qrylistapagosVAL_SUELDO_AFIL: TBCDField;
    qrylistapagosCOD_ESTADO: TStringField;
    PROCEDURE CERRAR1CLICK(SENDER: TOBJECT);
    PROCEDURE FORMCLOSE(SENDER: TOBJECT; VAR ACTION: TCLOSEACTION);
    PROCEDURE EDTNUMEROEXIT(SENDER: TOBJECT);
    PROCEDURE MSMESEXIT(SENDER: TOBJECT);
    PROCEDURE BTNBUSCARCLICK(SENDER: TOBJECT);
    PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);
    procedure FormCreate(Sender: TObject);
    procedure cbtipoExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  PRIVATE
    { PRIVATE DECLARATIONS }
  PUBLIC
    { PUBLIC DECLARATIONS }
  END;

VAR
  FRMAFILIEMPRESA: TFRMAFILIEMPRESA;

IMPLEMENTATION

uses Uglobal, Uexcel, dtmodulo;

{$R *.DFM}

PROCEDURE TFRMAFILIEMPRESA.CERRAR1CLICK(SENDER: TOBJECT);
BEGIN
FRMAFILIEMPRESA.CLOSE
END;

PROCEDURE TFRMAFILIEMPRESA.FORMCLOSE(SENDER: TOBJECT;
  VAR ACTION: TCLOSEACTION);
BEGIN
ACTION := CAFREE;
END;

PROCEDURE TFRMAFILIEMPRESA.EDTNUMEROEXIT(SENDER: TOBJECT);
BEGIN
 if trim(EDTNUMERO.Text) = '' then
 begin
 ShowMessage('Digite  el numero de Documento del Afiliado');
 EDTNUMERO.SetFocus;
 exit;
 end;
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
                        msmes.Text := GLPRESENTACION;
                        END
                        else
                        IF QRYEMPRESAS.RECORDCOUNT = 0 THEN
                        BEGIN
                        ShowMessage(' LA EMPRESA  NO ESTA REGISTRADA VERIFIQUE NUEVAMENTE');
                        FRMAFILIEMPRESA.Close;
                        END


      END;


END;

PROCEDURE TFRMAFILIEMPRESA.MSMESEXIT(SENDER: TOBJECT);
VAR FECHACOMPENSA: TDATE;
 BEGIN
      TRY
      FECHACOMPENSA  := STRTODATE('01/' + MSMES.TEXT);
      EXCEPT  // MENASJE  DE  LOS ERRORES
      //SHOWMESSAGE('ERROR AL CALCULAR LIQUIDACION');
      ON E: ECONVERTERROR DO
         BEGIN
         E.MESSAGE := 'EL PERIODO  ESTA MAL  DIGITADO O IMCOMPLETO';
         MSMES.SETFOCUS;
         RAISE;
         END;
      END;
 END;
PROCEDURE TFRMAFILIEMPRESA.BTNBUSCARCLICK(SENDER: TOBJECT);
VAR FECHACOMPENSA: TDATE;
BEGIN
      TRY
      FECHACOMPENSA  := STRTODATE('01/' + MSMES.TEXT);
                QRYLISTAPAGOS.CLOSE;
                QRYLISTAPAGOS.SQL.CLEAR;
                QRYLISTAPAGOS.SQL.ADD('SELECT TIP_DOCUMENTO_AFI,NUM_DOCUMENTO_AFI,PRI_APELLIDO,SEG_APELLIDO,PRI_NOMBRE,SEG_NOMBRE, T1.COD_MODALIDAD_TRA,FEC_NACIMIENTO,VAL_SUELDO_AFIL,AFILIADOS_EMPRESAS.COD_ESTADO');
                QRYLISTAPAGOS.SQL.ADD('FROM AFILIADOS_EMPRESAS,AFILIADOS T1 WHERE TIP_DOCUMENTO_EMP = :"NIT" AND NUM_DOCUMENTO_EMP = :"EMPRESA" ');
                QRYLISTAPAGOS.SQL.ADD('AND ((FEC_INGRESO_UNI <= :"FECHAI") OR (FEC_INGRESO_UNI <= :"FECHAIN")) AND (((FEC_EGRESO_UNI >= :"FECHAF") OR (FEC_EGRESO_UNI >= :"FECHAFI")) OR FEC_EGRESO_UNI IS NULL) AND ');
                QRYLISTAPAGOS.SQL.ADD('TIP_DOCUMENTO_AFI = TIP_DOCUMENTO AND NUM_DOCUMENTO_AFI = NUM_DOCUMENTO ');
                QRYLISTAPAGOS.Parameters[0].VALUE := TRIM(CBTIPO.TEXT);
                QRYLISTAPAGOS.Parameters[1].VALUE := TRIM(EDTNUMERO.TEXT);
                QRYLISTAPAGOS.Parameters[2].VALUE := STRTODATE('01/' + MSMES.TEXT);
                QRYLISTAPAGOS.Parameters[3].VALUE := STRTODATE('28/' + MSMES.TEXT);
                QRYLISTAPAGOS.Parameters[4].VALUE := STRTODATE('01/' + MSMES.TEXT);
                QRYLISTAPAGOS.Parameters[5].VALUE := STRTODATE('28/' + MSMES.TEXT);

                QRYLISTAPAGOS.OPEN;
                       IF QRYLISTAPAGOS.RECORDCOUNT = 0 THEN
                        BEGIN
                        SHOWMESSAGE(' EMPRESA  NO TENIA  USUARIOS  AFILIADOS  EN EL  MES  DE ' + MSMES.TEXT);
                        END;
                EXCEPT  // MENASJE  DE  LOS ERRORES
      //SHOWMESSAGE('ERROR AL CALCULAR LIQUIDACION');
      ON E: ECONVERTERROR DO
         BEGIN
         E.MESSAGE := 'EL PERIODO  ESTA MAL  DIGITADO O IMCOMPLETO';
         MSMES.SETFOCUS;
         RAISE;
         END;
      END;

END;

procedure TFRMAFILIEMPRESA.APPMESSAGE(var MSG: TMSG; var HANDLED: BOOLEAN);
begin
IF MSG.WPARAM = VK_RETURN THEN
       BEGIN
        IF ((SCREEN.ACTIVECONTROL) IS TCOMBOBOX) THEN
             MSG.WPARAM := VK_TAB;
            IF (((SCREEN.ACTIVECONTROL) IS TEDIT)) THEN
                 MSG.WPARAM := VK_TAB;
       END;

end;

procedure TFRMAFILIEMPRESA.FormCreate(Sender: TObject);
begin
APPLICATION.ONMESSAGE := APPMESSAGE;
end;

procedure TFRMAFILIEMPRESA.cbtipoExit(Sender: TObject);
begin
 if cbtipo.ItemIndex = -1 then
 begin
 ShowMessage('Seleccione el tipo de la Empresa');
 cbtipo.SetFocus;
 end;
end;

procedure TFRMAFILIEMPRESA.FormActivate(Sender: TObject);
begin
top := 0;
Left := 0;
end;

procedure TFRMAFILIEMPRESA.BitBtn1Click(Sender: TObject);
var i,j:integer;
     filestream:tfilestream;
begin
  opguardar.initialdir:='C:';
  opguardar.filename:='Archivo Sin Nombre.xls';
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
            else xlswritecelllabel(filestream,i,j,fields[i].ASSTRING);
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

