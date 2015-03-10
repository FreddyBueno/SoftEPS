UNIT UconsultaResagos;

INTERFACE

USES
  WINDOWS, MESSAGES, SYSUTILS, CLASSES, GRAPHICS, CONTROLS, FORMS,
  DIALOGS, GRIDS, DBGRIDS ,shellapi, DBCTRLS, EXTCTRLS, DB, DBTABLES, STDCTRLS,
  COMCTRLS, MENUS, Buttons, ADODB;

TYPE
  TfrmConsulta = CLASS(TFORM)
    PANEL1: TPANEL;
    PANEL3: TPANEL;
    PANEL2: TPANEL;
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
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    BitBtn1: TBitBtn;
    RadioGroup1: TRadioGroup;
    BitBtn2: TBitBtn;
    dsqconsulta: TDataSource;
    qryConsulta: TADOQuery;
    opguardar: TSaveDialog;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    cbestconciliacion: TComboBox;
    Label4: TLabel;
    cbtipoconsignacion: TComboBox;
    btntexto: TBitBtn;
    qryConsultaCOD_BANCO: TStringField;
    qryConsultaCOD_SUCURSAL: TStringField;
    qryConsultaNUM_DOCUMENTO: TStringField;
    qryConsultaNUM_PLANILLA: TStringField;
    qryConsultaFEC_RECAUDO: TDateTimeField;
    qryConsultaVAL_CONSIGNACION: TBCDField;
    qryConsultaTIP_MOVIMIENTO: TStringField;
    qryConsultaEST_CONCILIACION: TStringField;
    qryConsultaFEC_PLANILLA_CON: TDateTimeField;
    qryConsultaFEC_RECEPCION: TDateTimeField;
    qryConsultaMODIFICACION: TMemoField;
    qryConsultaEST_REGISTRO: TStringField;
    qryConsultaFEC_MOD: TDateTimeField;
    qryConsultaUSUARIO: TStringField;
    qryConsultaCOD_REGIONAL: TVariantField;
    AllBanks: TCheckBox;
    PROCEDURE FORMCREATE(SENDER: TOBJECT);
    PROCEDURE FORMCLOSE(SENDER: TOBJECT; VAR ACTION: TCLOSEACTION);
    PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btntextoClick(Sender: TObject);

  PRIVATE
    { PRIVATE DECLARATIONS }
  PUBLIC
    { PUBLIC DECLARATIONS }
  END;

VAR
  frmConsulta: TfrmConsulta;

IMPLEMENTATION

USES DTMODULO, UGLOBAL, Uexcel;

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

PROCEDURE TfrmConsulta.FORMCLOSE(SENDER: TOBJECT;
  VAR ACTION: TCLOSEACTION);
BEGIN
ACTION := CAFREE;
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

procedure TfrmConsulta.FormActivate(Sender: TObject);
begin
WindowState := wsNormal;
top := 0;
Left := 0;
end;

procedure TfrmConsulta.BitBtn2Click(Sender: TObject);
begin
IF TRIM(CBBANCOS.TEXT) = '' THEN
BEGIN
ShowMessage('Seleccione  el  banco  para  continuar');
END
ELSE
begin
if RadioGroup1.ItemIndex = 0 then
begin
  If Allbanks.Checked = false then
  Begin
    qryConsulta.CLOSE;
    qryConsulta.SQL.CLEAR;
    qryConsulta.SQL.ADD('Select T1.*,T2.COD_REGIONAL  from EST_BANCARIO_AUTO T1, SUCURSALES_BANCOS_CONTRV T2 where T1.COD_BANCO = :"banco" and T1.FEC_RECAUDO >= :"fechainical" and T1.FEC_RECAUDO <= :"fechaFinal" AND (T1.COD_BANCO*=T2.CODBANCO AND T1.COD_SUCURSAL*=T2.CODSUCURSAL)');
    //qryConsulta.Parameters[1].DataType := ftDateTime;
    //qryConsulta.Parameters[2].DataType := ftDateTime;
    qryConsulta.Parameters[0].Value := cbbancos.KeyValue;
    qryConsulta.Parameters[1].Value := FormatDateTime('dd/mm/yy',DTFINICIAL.DATE);
    qryConsulta.Parameters[2].Value := FormatDateTime('dd/mm/yy',DTFFINAL.DATE);
//    qryConsulta.Parameters[3].Value := 'S';
    qryConsulta.OPEN;
   End
   Else
   Begin
    qryConsulta.CLOSE;
    qryConsulta.SQL.CLEAR;
    qryConsulta.SQL.ADD('Select T1.*,T2.COD_REGIONAL  from EST_BANCARIO_AUTO T1, SUCURSALES_BANCOS_CONTRV T2 where T1.FEC_RECAUDO >= :"fechainical" and T1.FEC_RECAUDO <= :"fechaFinal" AND (T1.COD_BANCO*=T2.CODBANCO AND T1.COD_SUCURSAL*=T2.CODSUCURSAL)');
    qryConsulta.Parameters[0].Value := FormatDateTime('dd/mm/yy',DTFINICIAL.DATE);
    qryConsulta.Parameters[1].Value := FormatDateTime('dd/mm/yy',DTFFINAL.DATE);
    qryConsulta.OPEN;
   End

end;

if RadioGroup1.ItemIndex = 1 then
begin
    If Allbanks.Checked =false then
    begin
    qryConsulta.CLOSE;
    qryConsulta.SQL.CLEAR;
    qryConsulta.SQL.Text := 'Select T1.*,T2.COD_REGIONAL  from EST_BANCARIO_AUTO T1, SUCURSALES_BANCOS_CONTRV T2' +
                            ' where T1.COD_BANCO = :"banco" and T1.FEC_RECAUDO >= :"fechainical" and T1.FEC_RECAUDO <= :"fechaFinal" and (T1.EST_CONCILIACION = :"Etsado" or T1.EST_CONCILIACION is null)' +
                            ' and T1.TIP_MOVIMIENTO = :"TIPO" AND (T1.COD_BANCO*=T2.CODBANCO AND T1.COD_SUCURSAL*=T2.CODSUCURSAL)';
    //qryConsulta.Parameters[1].DataType := ftDateTime;
    //qryConsulta.Parameters[2].DataType := ftDateTime;
    qryConsulta.Parameters[0].Value := cbbancos.KeyValue;
    qryConsulta.Parameters[1].Value := FormatDateTime('dd/mm/yy',DTFINICIAL.DATE);
    qryConsulta.Parameters[2].Value := FormatDateTime('dd/mm/yy',DTFFINAL.DATE);
    qryConsulta.Parameters[3].Value :=  cbestconciliacion.text;//'S';
    qryConsulta.Parameters[4].Value :=  TRIM(cbtipoconsignacion.text);
    qryConsulta.OPEN;
    end
    else
    begin
    qryConsulta.CLOSE;
    qryConsulta.SQL.CLEAR;
    qryConsulta.SQL.Text := 'Select T1.*,T2.COD_REGIONAL  from EST_BANCARIO_AUTO T1, SUCURSALES_BANCOS_CONTRV T2' +
                            ' where T1.FEC_RECAUDO >= :"fechainical" and T1.FEC_RECAUDO <= :"fechaFinal" and (T1.EST_CONCILIACION = :"Etsado" or T1.EST_CONCILIACION is null)' +
                            ' and T1.TIP_MOVIMIENTO = :"TIPO" AND (T1.COD_BANCO*=T2.CODBANCO AND T1.COD_SUCURSAL*=T2.CODSUCURSAL)';
    qryConsulta.Parameters[0].Value := FormatDateTime('dd/mm/yy',DTFINICIAL.DATE);
    qryConsulta.Parameters[1].Value := FormatDateTime('dd/mm/yy',DTFFINAL.DATE);
    qryConsulta.Parameters[2].Value :=  cbestconciliacion.text;//'S';
    qryConsulta.Parameters[3].Value :=  TRIM(cbtipoconsignacion.text);
    qryConsulta.OPEN;
    end

end;
{if RadioGroup1.ItemIndex = 2 then
begin
    qryConsulta.CLOSE;
    qryConsulta.SQL.CLEAR;
    qryConsulta.SQL.ADD('Select *  from EST_BANCARIO_AUTO where COD_BANCO = :"banco" and FEC_RECAUDO >= :"fechainical" and FEC_RECAUDO <= :"fechaFinal" and (EST_CONCILIACION = :"Etsado" or EST_CONCILIACION is null)');
    qryConsulta.Parameters[1].DataType := ftDateTime;
    qryConsulta.Parameters[2].DataType := ftDateTime;
    qryConsulta.Parameters[0].Value := cbbancos.KeyValue;
    qryConsulta.Parameters[1].Value :=  (DTFINICIAL.DATE);
    qryConsulta.Parameters[2].Value := (DTFFINAL.DATE);
    qryConsulta.Parameters[3].Value := 'N';
    qryConsulta.OPEN;
end;}

end;
end;

procedure TfrmConsulta.BitBtn1Click(Sender: TObject);
var i,j:integer;
     filestream:tfilestream;
begin
  opguardar.initialdir:='C:';
  opguardar.filename:= RadioGroup1.Caption+ '.xls';
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
            else xlswritecelllabel(filestream,i,j,fields[i].asstring);
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

procedure TfrmConsulta.btntextoClick(Sender: TObject);
var
 F:System.text;
begin
    //*******************************
    System.assign(F, 'C:\Softeps\ConsultaConciliacion.TXT');
    Rewrite(F); //create new file or over-write one if already exists
    WriteLn(F,'Codigo_Banco',';','Sucursal',';','NIT',';','Planilla',';','Fecha Recaudo',';','Val_Consignacion',';','Tip_movimiento',';','Estado Conciliación',';','Fecha Planilla Con',';','Fecha Recepción',';','Modificación',';','Estado Registro',';','Fecha Modificación',';','Usuario');
    //*******************************
    qryconsulta.First;
    while not qryconsulta.Eof do
    begin
    WriteLn(F,trim(qryconsultaCOD_BANCO.Value),';',trim(qryconsultaCOD_SUCURSAL.Value),';',trim(qryconsultaNUM_DOCUMENTO.Value),';',trim(qryconsultaNUM_PLANILLA.Value),';',datetostr(qryconsultaFEC_RECAUDO.Value),';',INTTOSTR(qryconsultaVAL_CONSIGNACION.AsInteger),';',trim(qryconsultaTIP_MOVIMIENTO.Value),';',trim(qryconsultaEST_CONCILIACION.Value),';',datetostr(qryconsultaFEC_PLANILLA_CON.Value),';',datetostr(qryconsultaFEC_RECEPCION.Value),';',trim(qryconsultaMODIFICACION.Value),';',trim(qryconsultaEST_REGISTRO.Value),';',datetostr(qryconsultaFEC_MOD.Value),';',trim(qryconsultaUSUARIO.Value));
    qryconsulta.Next;
    end;
    System.Close(F); //free resources
    Showmessage('Consulte el Archivo C:\Softeps\ConsultaConciliacion.TXT');
end;

END.

