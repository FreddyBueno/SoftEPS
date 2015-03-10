unit Umodficacionnrs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBGrids, Grids, StdCtrls, DBCtrls, Mask, DB, Buttons,
  DBTables,Math, ADODB;

type
  Tfrmnoregistrados = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Splitter1: TSplitter;
    StringGrid1: TStringGrid;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label47: TLabel;
    Label48: TLabel;
    GroupBox2: TGroupBox;
    GroupBox5: TGroupBox;
    Label23: TLabel;
    Label25: TLabel;
    edtnombreafiliado: TEdit;
    GroupBox6: TGroupBox;
    cking: TCheckBox;
    ckret: TCheckBox;
    cktda: TCheckBox;
    cktaa: TCheckBox;
    ckvsp: TCheckBox;
    ckvst: TCheckBox;
    cksln: TCheckBox;
    ckige: TCheckBox;
    cklma: TCheckBox;
    ckvac: TCheckBox;
    GroupBox7: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    eddias: TEdit;
    edtsalariobase: TEdit;
    edtvalorneto: TEdit;
    edtigresobasecotizacion: TEdit;
    edtcotizacionobligatorio: TEdit;
    Button1: TButton;
    dtsdetalleautoliquidaciones: TDataSource;
    EDTPERIODO: TMaskEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    Label38: TLabel;
    Label22: TLabel;
    Edit1: TEdit;
    edtnumeroducafiliado: TEdit;
    Panel6: TPanel;
    Panel7: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    dtsmodalidadtrabajo: TDataSource;
    EDTPLANILLA: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    qrymodalidadtrabajo: TADOQuery;
    qrymodalidadtrabajoCOD_MODALIDAD_TRA: TStringField;
    qrymodalidadtrabajoNOM_MODALIDAD_TRA: TStringField;
    qrymodalidadtrabajoSALARIOS_MINIMOS: TBCDField;
    qrymodalidadtrabajoPOR_COTIZACION: TFloatField;
    qrydetalleplanilla: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure limpiar;
    procedure noregistrados;
    procedure BitBtn1Click(Sender: TObject);
    procedure EDTPERIODOExit(Sender: TObject);
    procedure noincluidoscotizacion;
    procedure StringGrid1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function  estado_usuario : string;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnoregistrados: Tfrmnoregistrados;

implementation

uses dtmodulo, Uprincipal, Uglobal;

{$R *.dfm}

procedure Tfrmnoregistrados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure Tfrmnoregistrados.limpiar;
var i : integer;
begin
    edtnumeroducafiliado.Text := '0';
    edtnombreafiliado.Text := '';
    Edit1.text := '0';
    Edit2.text := '0';
    Edit3.text := '0';
    edtnumeroducafiliado.text := '0';
    edtnombreafiliado.text := '0';
    DBLookupComboBox1.KeyValue := '0';
    cking.Checked := false;
    ckret.Checked := false;
    cktda.Checked := false;
    cktaa.Checked := false;
    ckvsp.Checked := false;
    ckvst.Checked := false;
    cksln.Checked := false;
    ckige.Checked := false;
    cklma.Checked := false;
    ckvac.Checked := false;
    eddias.text:= '0';
    edtsalariobase.text:= '0';
    edtvalorneto.text:= '0';
    edtigresobasecotizacion.text:= '0';
    edtcotizacionobligatorio.text:= '0';
    EDTPLANILLA.Text := '0';
        WITH StringGrid1 DO
        BEGIN
        CELLS[0,0]:='TIPO';
        CELLS[1,0]:='NUMERO';
        CELLS[2,0]:='NOMBRE';
        CELLS[3,0]:='MODALIDAD';
        END;
      StringGrid1.ROWCOUNT := 2;
      StringGrid1.FIXEDCOLS := 0;
      StringGrid1.FIXEDROWS := 1;

      FOR I := 1 TO StringGrid1.ROWCOUNT DO
       BEGIN
                   StringGrid1.CELLS[0,I]:='';
                   StringGrid1.CELLS[1,I]:='';
                   StringGrid1.CELLS[2,I]:='';
                   StringGrid1.CELLS[3,I]:='';

        END;




end;

procedure Tfrmnoregistrados.noregistrados;
begin
 DATAMODULE1.QRYDETALLE.CLOSE;
 DATAMODULE1.QRYDETALLE.SQL.CLEAR;
 DATAMODULE1.QRYDETALLE.SQL.ADD('SELECT * FROM DET_PLANILLA_AUTOLIQUIDACION  WHERE PER_COTIZACION  = :"PERIODO" AND DET_ESTADO = :"ESTADO"');
 DATAMODULE1.QRYDETALLE.Parameters[0].VALUE := TRIM(EDTPERIODO.TEXT);
 DATAMODULE1.QRYDETALLE.Parameters[1].VALUE := 'NRS';
 DATAMODULE1.QRYDETALLE.OPEN;
        IF DATAMODULE1.QRYDETALLE.RECORDCOUNT = 0 THEN
        BEGIN
        ShowMessage(LowerCase('No existe usuarios No  registrados  en este  periodo ' + EDTPERIODO.text));
        EDTPERIODO.SetFocus;
        end
        else
        begin
        FRMPRINCIPAL.Salariobase(TRIM(EDTPERIODO.TEXT));
        end;

end;

procedure Tfrmnoregistrados.BitBtn1Click(Sender: TObject);
VAR FECHACOMPENSA1 : TDATE;
BEGIN
TRY
  limpiar;
   FECHACOMPENSA1  := STRTODATE('01/' + EDTPERIODO.TEXT);
   qrymodalidadtrabajo.close;
   qrymodalidadtrabajo.Open;
   noregistrados;
   EXCEPT  // MENASJE  DE  LOS ERRORES
  //SHOWMESSAGE(LowerCase('ERROR AL CALCULAR LIQUIDACION');
   ON E: ECONVERTERROR DO
    BEGIN
     E.MESSAGE := 'EL PERIODO  ESTA MAL  DIGITADO O IMCOMPLETO';
       EDTPERIODO.SETFOCUS;
      RAISE;
    END;

   end;

end;

procedure Tfrmnoregistrados.EDTPERIODOExit(Sender: TObject);
VAR FECHACOMPENSA1 : TDATE;
BEGIN
TRY
  FECHACOMPENSA1  := STRTODATE('01/' + EDTPERIODO.TEXT);
  BitBtn1.Click;
   EXCEPT  // MENASJE  DE  LOS ERRORES
  //SHOWMESSAGE(LowerCase('ERROR AL CALCULAR LIQUIDACION');
   ON E: ECONVERTERROR DO
    BEGIN
     E.MESSAGE := 'EL PERIODO  ESTA MAL  DIGITADO O IMCOMPLETO';
       EDTPERIODO.SETFOCUS;
      RAISE;
    END;

   end;
 end;
procedure Tfrmnoregistrados.noincluidoscotizacion;
VAR I,X: integer;
begin
        WITH StringGrid1 DO
        BEGIN
        CELLS[0,0]:='TIPO';
        CELLS[1,0]:='NUMERO';
        CELLS[2,0]:='NOMBRE';
        CELLS[3,0]:='MODALIDAD';
        END;
      StringGrid1.ROWCOUNT := 2;
      StringGrid1.FIXEDCOLS := 0;
      StringGrid1.FIXEDROWS := 1;

  FOR I := 1 TO StringGrid1.ROWCOUNT DO
       BEGIN
                   StringGrid1.CELLS[0,I]:='';
                   StringGrid1.CELLS[1,I]:='';
                   StringGrid1.CELLS[2,I]:='';
                   StringGrid1.CELLS[3,I]:='';

        END;

  X := 0;
 DATAMODULE1.QRYAUTOLIQUIDACION.CLOSE;
 DATAMODULE1.QRYAUTOLIQUIDACION.SQL.CLEAR;
 DATAMODULE1.QRYAUTOLIQUIDACION.SQL.ADD('SELECT * FROM AUTOLIQUIDACION  WHERE  NUM_PLANILLA  = :"PLANILLA"');
 DATAMODULE1.QRYAUTOLIQUIDACION.Parameters[0].VALUE := DATAMODULE1.qrydetalleNUM_PLANILLA.VALUE;
 DATAMODULE1.QRYAUTOLIQUIDACION.OPEN;
   IF DATAMODULE1.QRYAUTOLIQUIDACION.RECORDCOUNT > 0 THEN
   BEGIN
                DATAMODULE1.QRYAFILIADOS.CLOSE;
                DATAMODULE1.QRYAFILIADOS.SQL.CLEAR;
                DATAMODULE1.QRYAFILIADOS.SQL.ADD('SELECT  TIP_DOCUMENTO_EMP, NUM_DOCUMENTO_EMP,TIP_DOCUMENTO_AFI, NUM_DOCUMENTO_AFI,PRI_APELLIDO,SEG_APELLIDO,PRI_NOMBRE,SEG_NOMBRE, VAL_SUELDO_AFIL,FEC_INGRESO_UNI,FEC_EGRESO_UNI,AFILIADOS_EMPRESAS.COD_ESTADO,FEC_NACIMIENTO,COD_SEXO,T1.COD_MODALIDAD_TRA');
                DATAMODULE1.QRYAFILIADOS.SQL.ADD('FROM AFILIADOS_EMPRESAS,AFILIADOS T1');
                DATAMODULE1.QRYAFILIADOS.SQL.ADD('WHERE TIP_DOCUMENTO_AFI = TIP_DOCUMENTO AND  NUM_DOCUMENTO_AFI = NUM_DOCUMENTO AND  TIP_DOCUMENTO_EMP = :"CC" AND NUM_DOCUMENTO_EMP = :"DOCUMENTO" AND ((FEC_INGRESO_UNI <= :"FECHAIN") OR (FEC_INGRESO_UNI <= :"FECHAINI")) AND ');
                DATAMODULE1.QRYAFILIADOS.SQL.ADD('(((FEC_EGRESO_UNI >= :"FECHAF") OR (FEC_EGRESO_UNI >= :"FECHAFI")) OR FEC_EGRESO_UNI IS NULL)');
                DATAMODULE1.QRYAFILIADOS.Parameters[0].VALUE := DATAMODULE1.qryautoliquidacionEMP_TIPO_DOC.Value;
                DATAMODULE1.QRYAFILIADOS.Parameters[1].VALUE := DATAMODULE1.qryautoliquidacionEMP_NUMERO_DOC.Value;
                DATAMODULE1.QRYAFILIADOS.Parameters[2].VALUE := STRTODATE('01/' + EDTPERIODO.TEXT);
                DATAMODULE1.QRYAFILIADOS.Parameters[3].VALUE := STRTODATE('28/' + EDTPERIODO.TEXT);
                DATAMODULE1.QRYAFILIADOS.Parameters[4].VALUE := STRTODATE('01/' + EDTPERIODO.TEXT);
                DATAMODULE1.QRYAFILIADOS.Parameters[5].VALUE := STRTODATE('28/' + EDTPERIODO.TEXT);
                DATAMODULE1.QRYAFILIADOS.OPEN;
                IF DATAMODULE1.QRYAFILIADOS.RecordCount > 0  THEN
                BEGIN
                       FOR I := 0 TO DATAMODULE1.QRYAFILIADOS.RecordCount -1 DO
                       BEGIN
                       qrydetalleplanilla.CLOSE;
                       qrydetalleplanilla.SQL.CLEAR;
                       qrydetalleplanilla.SQL.Add('SELECT EMP_TIPO_DOC, EMP_NUMERO_DOC,DET_PLANILLA_AUTOLIQUIDACION.* ');
                       qrydetalleplanilla.SQL.Add('FROM DET_PLANILLA_AUTOLIQUIDACION,AUTOLIQUIDACION ');
                       qrydetalleplanilla.SQL.Add(' WHERE DET_PLANILLA_AUTOLIQUIDACION.PER_COTIZACION  = :"PERIODO"');
                       qrydetalleplanilla.SQL.Add(' AND DET_PLANILLA_AUTOLIQUIDACION.NUM_PLANILLA = AUTOLIQUIDACION.NUM_PLANILLA');
                       qrydetalleplanilla.SQL.Add(' AND  EMP_TIPO_DOC = :"TIPOEMP" AND EMP_NUMERO_DOC = :"NUMEMPRESA"');
                       qrydetalleplanilla.SQL.Add(' AND  AFI_TIPO_DOC = :"TIPOAFILI" AND AFI_NUMERO_DOC = :"NUMAFILIADO"');
                       qrydetalleplanilla.Parameters[0].VALUE := TRIM(EDTPERIODO.TEXT);
                       qrydetalleplanilla.Parameters[1].VALUE := DATAMODULE1.QRYAFILIADOSTIP_DOCUMENTO_EMP.Value;
                       qrydetalleplanilla.Parameters[2].VALUE := DATAMODULE1.QRYAFILIADOSNUM_DOCUMENTO_EMP.Value;
                       qrydetalleplanilla.Parameters[3].VALUE := DATAMODULE1.QRYAFILIADOSTIP_DOCUMENTO_AFI.Value;
                       qrydetalleplanilla.Parameters[4].VALUE := DATAMODULE1.QRYAFILIADOSNUM_DOCUMENTO_AFI.Value;
                       qrydetalleplanilla.OPEN;
                           IF qrydetalleplanilla.RECORDCOUNT = 0 THEN
                           BEGIN
                            StringGrid1.CELLS[0,StringGrid1.ROWCOUNT-1]  := DATAMODULE1.QRYAFILIADOSTIP_DOCUMENTO_AFI.Value;
                            StringGrid1.CELLS[1,StringGrid1.ROWCOUNT-1]  := DATAMODULE1.QRYAFILIADOSNUM_DOCUMENTO_AFI.Value;
                            StringGrid1.CELLS[2,StringGrid1.ROWCOUNT-1]  := DATAMODULE1.QRYAFILIADOSPRI_APELLIDO.Value + ' ' + DATAMODULE1.QRYAFILIADOSSEG_APELLIDO.Value + ' ' + DATAMODULE1.QRYAFILIADOSPRI_NOMBRE.Value + ' ' + DATAMODULE1.QRYAFILIADOSSEG_NOMBRE.Value;
                            StringGrid1.CELLS[3,StringGrid1.ROWCOUNT-1]  := DATAMODULE1.QRYAFILIADOSCOD_MODALIDAD_TRA.Value ;
                            StringGrid1.ROWCOUNT := StringGrid1.ROWCOUNT +1;
                            INC (X)
                            END;
                       DATAMODULE1.QRYAFILIADOS.FindNext;
                       END;
                END;

   END;
  if x = 0 then
  begin
        ShowMessage('No existen  usuarios  pendiente de  pago para  este  periodo por esta empresa');
        limpiar;
        end;
  end;

procedure Tfrmnoregistrados.StringGrid1Click(Sender: TObject);
begin
     Edit2.Text := '0';
     Edit3.Text := '0';
     edtnombreafiliado.Text := '';
     DBLookupComboBox1.KeyValue := '0';
        if trim(StringGrid1.CELLS[0,StringGrid1.ROW ]) <> '' then
        begin
              IF MESSAGEDLG(LowerCase('Desea Selecionar  este afiliado para  asignar el pago ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
              BEGIN
              Edit2.Text := trim(StringGrid1.CELLS[0,StringGrid1.ROW ]);
              Edit3.Text := trim(StringGrid1.CELLS[1,StringGrid1.ROW ]);
              edtnombreafiliado.Text := trim(StringGrid1.CELLS[2,StringGrid1.ROW ]);
              DBLookupComboBox1.KeyValue := trim(StringGrid1.CELLS[3,StringGrid1.ROW ]);
              end;
        end;
end;

procedure Tfrmnoregistrados.FormCreate(Sender: TObject);
begin
limpiar
end;

function Tfrmnoregistrados.estado_usuario: string;
begin
 estado_usuario := 'CIE';
 IF (GLSALARIOMINIMO * 20) < strtofloat(edtigresobasecotizacion.TEXT) THEN
   begin
   SHOWMESSAGE(LowerCase('La  cotizacion Obligatoria No pude Ser Mayor a 20 salarios Minimos'));
   estado_usuario := 'IBC';
   exit;
   end;
      IF  DBLookupComboBox1.KeyValue= 'D' THEN
      BEGIN
           IF  ROUNDTO(((GLSALARIOMINIMO)/30)* STRTOINT(EDDIAS.TEXT),0) >  STRTOINT(EDTIGRESOBASECOTIZACION.TEXT) THEN
           BEGIN
                estado_usuario := 'IBC';
           END;
      END
      ELSE IF DBLookupComboBox1.KeyValue = 'E' THEN
           BEGIN
                IF  ROUNDTO(((GLSALARIOMINIMO/2)/30)* STRTOINT(EDDIAS.TEXT),0) >  STRTOINT(EDTIGRESOBASECOTIZACION.TEXT) THEN
                BEGIN
                     estado_usuario := 'IBC';
                END;
      END
      ELSE IF DBLookupComboBox1.KeyValue = 'P' THEN
           BEGIN
                IF  ROUNDTO(((GLSALARIOMINIMO)/30)* STRTOINT(EDDIAS.TEXT),0) >  STRTOINT(EDTIGRESOBASECOTIZACION.TEXT) THEN
                BEGIN
                     estado_usuario := 'IBC';
                END;
     END
     ELSE IF DBLookupComboBox1.KeyValue = 'I' THEN
           BEGIN
                IF  ROUNDTO((((GLSALARIOMINIMO*2))/30)* STRTOINT(EDDIAS.TEXT),0) >  STRTOINT(EDTIGRESOBASECOTIZACION.TEXT) THEN
                BEGIN
                     estado_usuario := 'IBC';
                END;
           END;



end;

procedure Tfrmnoregistrados.Button1Click(Sender: TObject);
begin
     if  (EDIT2.Text = '0') and (EDIT3.Text = '0')then
     begin
       ShowMessage(LowerCase('Debe Selecionar  el Afiliado  al que pertenece el pago'));
       StringGrid1.SetFocus;
       exit
     end;
     if  (EDIT1.Text = '0') and (edtnumeroducafiliado.Text = '0')then
     begin
       ShowMessage(LowerCase('Debe Selecionar el afiliado  que  esta como no Registrado'));
       DBGrid1.SetFocus;
       exit
     end;
           IF estado_usuario <> '' THEN;
           BEGIN
           TRY
           DATAMODULE1.DTBDATAMEC.BeginTrans;
           DATAMODULE1.QRYDETALLE.SQL.CLEAR;
           DATAMODULE1.QRYDETALLE.SQL.ADD('UPDATE  DET_PLANILLA_AUTOLIQUIDACION SET  AFI_TIPO_DOC = :"NCC",AFI_NUMERO_DOC = :"NUSUARIO",DET_ESTADO =:"ESTADO" WHERE  NUM_PLANILLA  = :"PLANILLA" AND AFI_TIPO_DOC = :"CC" AND AFI_NUMERO_DOC = :"USUARIO"');
           DATAMODULE1.QRYDETALLE.Parameters[0].VALUE := TRIM(EDIT2.TEXT);
           DATAMODULE1.QRYDETALLE.Parameters[1].VALUE := TRIM(EDIT3.TEXT);
           DATAMODULE1.QRYDETALLE.Parameters[2].VALUE := TRIM(estado_usuario);
           DATAMODULE1.QRYDETALLE.Parameters[3].VALUE := TRIM(EDTPLANILLA.TEXT);
           DATAMODULE1.QRYDETALLE.Parameters[4].VALUE := TRIM(EDIT1.TEXT);
           DATAMODULE1.QRYDETALLE.Parameters[5].VALUE := TRIM(edtnumeroducafiliado.TEXT);
           DATAMODULE1.QRYDETALLE.ExecSQL;
           //DATAMODULE1.QRYDETALLE.COMMITUPDATES;
           SHOWMESSAGE(LowerCase('El procesos  termino  correctamente'));
           DATAMODULE1.DTBDATAMEC.CommitTrans;
           limpiar;
           //RETIRAR_USUARIOS;
            EXCEPT
           DATAMODULE1.DTBDATAMEC.RollbackTrans;
           //PBRGRABARDETALLE.MIN := 0;
           //PBRGRABARDETALLE.POSITION := 0;
           //PBRGRABARDETALLE.MAX := SGDETALLE.ROWCOUNT -2;
           SHOWMESSAGE(LowerCase('NO SE PUEDE  GRABAR LA AUTOLIQUIDACION'));
           RAISE;
           END;
   END;
end;

procedure Tfrmnoregistrados.DBGrid1DblClick(Sender: TObject);
begin
limpiar;
EDTPLANILLA.Text := DATAMODULE1.qrydetalleNUM_PLANILLA.value;
Edit1.text := DATAMODULE1.qrydetalleAFI_TIPO_DOC.value;
edtnumeroducafiliado.Text := DATAMODULE1.qrydetalleAFI_NUMERO_DOC.value;
eddias.Text := DATAMODULE1.qrydetalleDIA_COTIZADOS.value;
        IF DATAMODULE1.qrydetalleNOV_ING.value = 'X' THEN
       BEGIN
       CKING.CHECKED := TRUE;
       END;
       IF DATAMODULE1.qrydetalleNOV_RET.value = 'X' THEN
       BEGIN
       CKRET.CHECKED := TRUE;
       END;
       IF DATAMODULE1.qrydetalleNOV_TDA.value = 'X' THEN
       BEGIN
       CKTDA.CHECKED := TRUE;
       END;
       IF DATAMODULE1.qrydetalleNOV_TAA.value = 'X' THEN
       BEGIN
       CKTAA.CHECKED := TRUE;
       END;
       IF DATAMODULE1.qrydetalleNOV_VSP.value = 'X' THEN
       BEGIN
       CKVSP.CHECKED := TRUE;
       END;
       IF DATAMODULE1.qrydetalleNOV_VST.value = 'X' THEN
       BEGIN
       CKVST.CHECKED := TRUE;
       END;
       IF DATAMODULE1.qrydetalleNOV_SLN.value = 'X' THEN
       BEGIN
       CKSLN.CHECKED := TRUE;
       END;
       IF DATAMODULE1.qrydetalleNOV_IGE.value = 'X' THEN
       BEGIN
       CKIGE.CHECKED := TRUE;
       END;
       IF DATAMODULE1.qrydetalleNOV_LMA.value = 'X' THEN
       BEGIN
       CKLMA.CHECKED := TRUE;
       END;
       IF DATAMODULE1.qrydetalleNOV_VAC.value = 'X' THEN
       BEGIN
       CKVAC.CHECKED := TRUE;
       END;
edtsalariobase.Text := DATAMODULE1.qrydetalleSAL_BASE.Text;
edtvalorneto.Text := DATAMODULE1.qrydetalleVAL_NETO_NOV.Text;
edtigresobasecotizacion.Text := DATAMODULE1.qrydetalleING_BASE_COT.Text;
edtcotizacionobligatorio.Text := DATAMODULE1.qrydetalleCOT_OBLIGATORIA.Text;
noincluidoscotizacion;

end;

procedure Tfrmnoregistrados.FormActivate(Sender: TObject);
begin
WindowState := wsNormal;
top := 0;
Left := 0;
end;

end.
