unit URetiroAfiliados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Buttons, ComCtrls, DB, DBTables, ADODB;

type
  TfrmRetiroAfiliados = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label47: TLabel;
    Label48: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    ProgressBar2: TProgressBar;
    Label3: TLabel;
    Label4: TLabel;
    EDTPLANILLA: TEdit;
    RadioGroup1: TRadioGroup;
    edtperiodo: TMaskEdit;
    Query1: TADOQuery;
    QryPlanillas: TADOQuery;
    QryPlanillasNUM_PLANILLA: TStringField;
    QryPlanillasAFI_TIPO_DOC: TStringField;
    QryPlanillasAFI_NUMERO_DOC: TStringField;
    QryPlanillasNOV_ING: TStringField;
    QryPlanillasNOV_RET: TStringField;
    QryPlanillasNOV_TDA: TStringField;
    QryPlanillasNOV_TAA: TStringField;
    QryPlanillasNOV_VSP: TStringField;
    QryPlanillasNOV_VST: TStringField;
    QryPlanillasNOV_SLN: TStringField;
    QryPlanillasNOV_IGE: TStringField;
    QryPlanillasNOV_LMA: TStringField;
    QryPlanillasNOV_VAC: TStringField;
    QryPlanillasDIA_COTIZADOS: TStringField;
    QryPlanillasSAL_BASE: TBCDField;
    QryPlanillasVAL_NETO_NOV: TBCDField;
    QryPlanillasING_BASE_COT: TBCDField;
    QryPlanillasCOT_OBLIGATORIA: TBCDField;
    QryPlanillasNUM_INCAPACIDAD_EGR: TStringField;
    QryPlanillasVAL_INCAPACIDAD_EGR: TBCDField;
    QryPlanillasNUM_LICENCIA_MAT: TStringField;
    QryPlanillasVAL_LICENCIA_MAT: TBCDField;
    QryPlanillasVAL_UPC_ADI: TBCDField;
    QryPlanillasVAL_TOTAL_COT: TBCDField;
    QryPlanillasDET_ESTADO: TStringField;
    QryPlanillasPER_COTIZACION: TStringField;
    QryPlanillasPER_PRESENTACION: TStringField;
    QryPlanillasCOD_OFICINA: TStringField;
    QryPlanillasNUM_DECLARACION: TBCDField;
    QryPlanillasNOM_AFILIADO: TStringField;
    qryRetiro: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure excluirafiliados(tipo,numero : string;fecharetiro : tdate);
    PROCEDURE RETIROAFIALIDOS(PLANILLA : STRING);
    procedure RadioGroup1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRetiroAfiliados: TfrmRetiroAfiliados;

implementation

uses dtmodulo, Uprincipal, Uglobal, Uproceso;

{$R *.dfm}

procedure TfrmRetiroAfiliados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TfrmRetiroAfiliados.BitBtn1Click(Sender: TObject);
var I: integer;
 estado : string;
 x : Integer;
begin
IF RadioGroup1.ItemIndex = 0 THEN
BEGIN
if   trim(EDTPLANILLA.Text) <> '' then
begin

    frmproceso:=Tfrmproceso.create(application);
    frmproceso.show;
    RETIROAFIALIDOS(TRIM(EDTPLANILLA.Text));
    frmproceso.close;

END;
end
ELSE
IF RadioGroup1.ItemIndex = 0 THEN
BEGIN
QryPlanillas.Close;
QryPlanillas.Parameters[0].VALUE := trim(edtperiodo.TEXT);
QryPlanillas.open;
while QryPlanillas.Eof = false  do
 begin
    frmproceso:=Tfrmproceso.create(application);
    frmproceso.show;
    RETIROAFIALIDOS(TRIM(QryPlanillasNUM_PLANILLA.Value));
    frmproceso.close;
    QryPlanillas.Next;
end;
END;
end;
procedure TfrmRetiroAfiliados.FormActivate(Sender: TObject);
begin
WindowState := wsNormal;
top := 0;
Left := 0;
    ProgressBar2.Min := 0;
    ProgressBar2.Max := 100;
    ProgressBar2.Position := 0;

end;

procedure TfrmRetiroAfiliados.excluirafiliados(tipo, numero: string;
  fecharetiro: tdate);
begin
   try
     DataModule1.DTBDATAMEC.BeginTrans;
     qryRetiro.Close;
     qryRetiro.sql.Clear;
     qryRetiro.sql.add ('UPDATE  AFILIADOS SET  COD_ESTADO = :"ESTADO",FEC_ULTIMA_NOV = :"FECHA" WHERE TIP_DOCUMENTO = :"TIPO" AND NUM_DOCUMENTO = :"NUMERO"');
     qryRetiro.Parameters[0].VALUE := 'I';
     qryRetiro.Parameters[1].VALUE := fecharetiro;
     qryRetiro.Parameters[2].VALUE :=tipo;
     qryRetiro.Parameters[3].VALUE :=numero;
     qryRetiro.ExecSQL;
     DataModule1.dtbdatamec.CommitTrans;

     except
    DataModule1.dtbdatamec.RollbackTrans;
    SHOWMESSAGE(LowerCase('No se puede Retirar el afiliado'));
    raise;
    end;

end;

procedure TfrmRetiroAfiliados.RETIROAFIALIDOS(PLANILLA: STRING);
var i,x : Integer;
    fecharetiro,fecharetiro1 : tdate;
begin
DataModule1.qrydetalle.Close;
DataModule1.qrydetalle.sql.Clear;
DataModule1.qrydetalle.sql.add ('SELECT * FROM DET_PLANILLA_AUTOLIQUIDACION WHERE (NOV_RET = :"RET" OR NOV_TAA = :"TAA") AND NUM_PLANILLA = :"NUM_PLANILLA"');
DataModule1.qrydetalle.Parameters[0].VALUE :=  'X';
DataModule1.qrydetalle.Parameters[1].VALUE :=  'X';
DataModule1.qrydetalle.Parameters[2].VALUE := trim(EDTPLANILLA.TEXT);
DataModule1.qrydetalle.open;
DataModule1.qryautoliquidacion.Close;
DataModule1.qryautoliquidacion.sql.Clear;
DataModule1.qryautoliquidacion.sql.add ('SELECT * FROM AUTOLIQUIDACION WHERE NUM_PLANILLA = :"PLANILLA"');
DataModule1.qryautoliquidacion.Parameters[0].VALUE := DataModule1.qrydetallenum_planilla.Value;
DataModule1.qryautoliquidacion.open;
    ProgressBar2.Min := 0;
    ProgressBar2.Max := DataModule1.QRYDETALLE.RecordCount;
    ProgressBar2.Position := 0;

  WHILE DataModule1.qrydetalle.Eof = false do
  begin
  fecharetiro := strtodate(inttostr(frmprincipal.DiasMes(strtodate('01/' + DataModule1.qrydetallePER_COTIZACION.Value)))+ '/' + DataModule1.qrydetallePER_COTIZACION.Value);
  fecharetiro1 := strtodate('01/' + DataModule1.qrydetallePER_COTIZACION.Value)+30;
// Fecha  de  Retiro
ProgressBar2.Position := ProgressBar2.Position + 1;
    if DataModule1.qrydetallenov_ret.value = 'X' then
    begin
    fecharetiro :=  fecharetiro
    end
    else
    if DataModule1.qrydetallenov_taa.Value = 'X' then
    begin
    fecharetiro := fecharetiro1
    end;

         frmproceso.Label1.Caption := 'Retiro de afiliados por planilla';
         frmproceso.Refresh;
            DataModule1.qryafiliadosempresa.Close;
            DataModule1.qryafiliadosempresa.sql.Clear;
            DataModule1.qryafiliadosempresa.sql.add ('SELECT * FROM AFILIADOS_EMPRESAS WHERE TIP_DOCUMENTO_AFI = :"TIPO" AND NUM_DOCUMENTO_AFI = :"NUMERO" AND FEC_EGRESO_UNI IS NULL ');
            DataModule1.qryafiliadosempresa.Parameters[0].VALUE := DataModule1.qrydetalleafi_tipo_doc.Value;
            DataModule1.qryafiliadosempresa.Parameters[1].VALUE := DataModule1.qrydetalleafi_numero_doc.Value;
            DataModule1.qryafiliadosempresa.open;
                 if   DataModule1.qryafiliadosempresa.RecordCount = 1 then
                 begin



                 frmproceso.Label1.Caption := 'Retirando afiliado  '  + DataModule1.qrydetalleafi_tipo_doc.Value + ' - ' + DataModule1.qrydetalleafi_numero_doc.Value;
                 frmproceso.Refresh;
                 // cuando esta  en una   empresa
                 DataModule1.qryrelacion_afiliados.Close;
                 DataModule1.qryrelacion_afiliados.sql.Clear;
                 DataModule1.qryrelacion_afiliados.sql.add ('SELECT * FROM RELACION_AFILIADOS WHERE TIP_DOCUMENTO_COT = :"TIPO" AND NUM_DOCUMENTO_COT = :"NUMERO" AND FEC_EXCLUSION_NOV IS NULL');
                 DataModule1.qryrelacion_afiliados.Parameters[0].VALUE := DataModule1.qrydetalleafi_tipo_doc.Value;
                 DataModule1.qryrelacion_afiliados.Parameters[1].VALUE := DataModule1.qrydetalleafi_numero_doc.Value;
                 DataModule1.qryrelacion_afiliados.open;
                         while  DataModule1.qryrelacion_afiliados.Eof = false do
                         begin
                         frmproceso.Label1.Caption := 'Retirando y Generando Novedad de  '  + DataModule1.qryrelacion_afiliadosTIP_DOCUMENTO_BEN.Value + ' - ' + DataModule1.qryrelacion_afiliadosNUM_DOCUMENTO_BEN.Value;
                         frmproceso.Refresh;
                             try
                              DataModule1.dtbdatamec.BeginTrans;
                              DataModule1.qrynovafiliados.Close;
                              DataModule1.qrynovafiliados.sql.Clear;
                              DataModule1.qrynovafiliados.sql.add ('INSERT INTO NOVEDADES_AFILIADOS ( NOV_CODIGO,TIP_DOCUMENTO,NUM_DOCUMENTO,COD_OFICINA,COD_REGIONAL,USU_TIPO_DOC,USU_NUMERO_DOC,FEC_NOVEDAD_AFIL,');
                              DataModule1.qrynovafiliados.sql.add ('NOM_CAMPO,DAT_CAMPO_ANT,NOM_TABLA,DAT_CAMPO_DES,FEC_EVENTO,FEC_APLICATIVO,TIP_DOCUMENTO_EMP,NUM_DOCUMENTO_EMP,COD_SUCURSAL,NUM_PLANILLA,COD_NOVEDAD_AFIL)');
                              DataModule1.qrynovafiliados.sql.add ('VALUES ( :"NOVEDAD",:"TIP_DOCUMENTO_BEN",:"NUM_DOCUMENTO_BEN",:"OFICINA",:"REGIONAL",:"TIPO_USUARIO",:"NUMERO_USUAIRO",:"FECHA_NOVEDAD",');
                              DataModule1.qrynovafiliados.sql.add (':"NOMBRE_CAMPO ",:"DATO_ANTERIOR",:"TABLA",:"CAMPO",:"FECHA_NOVEDAD",:"FECHA_SISTEMA",:"TIP_DOC_EMP",:"NUM_DOC_EMP",:"COD_SUCURSAL",:"NUM_PLANILLA",'+'nov_afiliados.nextval'+')');
                              DataModule1.qrynovafiliados.Parameters[0].VALUE := '15';
                              DataModule1.qrynovafiliados.Parameters[1].VALUE := DataModule1.qryrelacion_afiliadosTIP_DOCUMENTO_BEN.Value;
                              DataModule1.qrynovafiliados.Parameters[2].VALUE := DataModule1.qryrelacion_afiliadosNUM_DOCUMENTO_BEN.Value;
                              DataModule1.qrynovafiliados.Parameters[3].VALUE := DataModule1.qryautoliquidacioncod_oficina.value;
                              DataModule1.qrynovafiliados.Parameters[4].VALUE := DataModule1.qryautoliquidacioncod_regional.value;
                              DataModule1.qrynovafiliados.Parameters[5].VALUE := DataModule1.qryautoliquidaciontip_doc_usuario.value;
                              DataModule1.qrynovafiliados.Parameters[6].VALUE := DataModule1.qryautoliquidacionnum_doc_usuario.value;
                              DataModule1.qrynovafiliados.Parameters[7].VALUE := fecharetiro;
                              DataModule1.qrynovafiliados.Parameters[8].VALUE := '';
                              DataModule1.qrynovafiliados.Parameters[9].VALUE := '';
                              DataModule1.qrynovafiliados.Parameters[10].VALUE := 'AFILIADOS';
                              DataModule1.qrynovafiliados.Parameters[11].VALUE := 'ESTADO';
                              DataModule1.qrynovafiliados.Parameters[12].VALUE := fecharetiro;
                              DataModule1.qrynovafiliados.Parameters[13].VALUE := strtodate(GLDATE);
                              DataModule1.qrynovafiliados.Parameters[14].VALUE := DataModule1.qryautoliquidacionemp_tipo_doc.value;
                              DataModule1.qrynovafiliados.Parameters[15].VALUE := DataModule1.qryautoliquidacionemp_numero_doc.value;
                              DataModule1.qrynovafiliados.Parameters[16].VALUE := DataModule1.qryautoliquidacioncod_sucursal.value;
                              DataModule1.qrynovafiliados.Parameters[17].VALUE := DataModule1.qryautoliquidacionnum_planilla.value;
    //                        DataModule1.qrynovafiliados.Parameters[18].VALUE := 'NOV_AFILIADOS.NEXTVAL';
                              DataModule1.qrynovafiliados.ExecSQL;
                              DataModule1.dtbdatamec.CommitTrans;
                              except
                              DataModule1.dtbdatamec.RollbackTrans;
                              SHOWMESSAGE(LowerCase('No se puede generar la novedad'));
                              raise;
                              end;
                              excluirafiliados(DataModule1.qryrelacion_afiliadosTIP_DOCUMENTO_BEN.Value,DataModule1.qryrelacion_afiliadosNUM_DOCUMENTO_BEN.Value,fecharetiro);
                           DataModule1.qryrelacion_afiliados.Next;
                         end;
    //******************* Retiro  de Afiliado contizante  y novedad********************************************************************
                       frmproceso.Label1.Caption := 'Retirando y Generando Novedad del cotizante Por la Empresa  '  + DataModule1.QRYAFILIADOSTIP_DOCUMENTO_AFI.Value + ' - ' + DataModule1.QRYAFILIADOSNUM_DOCUMENTO_AFI.Value;
                       frmproceso.Refresh;

                        DataModule1.qrynovafiliados.close;
                        DataModule1.qrynovafiliados.sql.Clear;
                        DataModule1.qrynovafiliados.sql.add ('INSERT INTO NOVEDADES_AFILIADOS ( NOV_CODIGO,TIP_DOCUMENTO,NUM_DOCUMENTO,COD_OFICINA,COD_REGIONAL,USU_TIPO_DOC,USU_NUMERO_DOC,FEC_NOVEDAD_AFIL,');
                        DataModule1.qrynovafiliados.sql.add ('NOM_CAMPO,DAT_CAMPO_ANT,NOM_TABLA,DAT_CAMPO_DES,FEC_EVENTO,FEC_APLICATIVO,TIP_DOCUMENTO_EMP,NUM_DOCUMENTO_EMP,COD_SUCURSAL,NUM_PLANILLA,COD_NOVEDAD_AFIL)');
                        DataModule1.qrynovafiliados.sql.add ('VALUES ( :"NOVEDAD",:"TIP_DOCUMENTO_BEN",:"NUM_DOCUMENTO_BEN",:"OFICINA",:"REGIONAL",:"TIPO_USUARIO",:"NUMERO_USUAIRO",:"FECHA_NOVEDAD",');
                        DataModule1.qrynovafiliados.sql.add (':"NOMBRE_CAMPO ",:"DATO_ANTERIOR",:"TABLA",:"CAMPO",:"FECHA_NOVEDAD",:"FECHA_SISTEMA",:"TIP_DOC_EMP",:"NUM_DOC_EMP",:"COD_SUCURSAL",:"NUM_PLANILLA",'+'nov_afiliados.nextval'+')');
                        if DataModule1.qrydetallenov_ret.value = 'X' then
                        begin
                        DataModule1.qrynovafiliados.Parameters[0].VALUE := '11';
                        end
                        else
                        if DataModule1.qrydetallenov_taa.Value = 'X' then
                        begin
                        DataModule1.qrynovafiliados.Parameters[0].VALUE := '10';
                        end;
                        DataModule1.qrynovafiliados.Parameters[1].VALUE := DataModule1.qrydetalleafi_tipo_doc.Value;
                        DataModule1.qrynovafiliados.Parameters[2].VALUE := DataModule1.qrydetalleafi_numero_doc.Value;
                        DataModule1.qrynovafiliados.Parameters[3].VALUE := DataModule1.qryautoliquidacioncod_oficina.value;
                        DataModule1.qrynovafiliados.Parameters[4].VALUE := DataModule1.qryautoliquidacioncod_regional.value;
                        DataModule1.qrynovafiliados.Parameters[5].VALUE := DataModule1.qryautoliquidaciontip_doc_usuario.value;
                        DataModule1.qrynovafiliados.Parameters[6].VALUE := DataModule1.qryautoliquidacionnum_doc_usuario.value;
                        DataModule1.qrynovafiliados.Parameters[7].VALUE := fecharetiro;
                        DataModule1.qrynovafiliados.Parameters[8].VALUE := '';
                        DataModule1.qrynovafiliados.Parameters[9].VALUE := '';
                        DataModule1.qrynovafiliados.Parameters[10].VALUE := 'AFILIADOS_EMPRESAS';
                        DataModule1.qrynovafiliados.Parameters[11].VALUE := 'ESTADO';
                        DataModule1.qrynovafiliados.Parameters[12].VALUE := fecharetiro;
                        DataModule1.qrynovafiliados.Parameters[13].VALUE := strtodate(GLDATE);
                        DataModule1.qrynovafiliados.Parameters[14].VALUE := DataModule1.qryautoliquidacionemp_tipo_doc.value;
                        DataModule1.qrynovafiliados.Parameters[15].VALUE := DataModule1.qryautoliquidacionemp_numero_doc.value;
                        DataModule1.qrynovafiliados.Parameters[16].VALUE := DataModule1.qryautoliquidacioncod_sucursal.value;
                        DataModule1.qrynovafiliados.Parameters[17].VALUE := DataModule1.qryautoliquidacionnum_planilla.value;
                        DataModule1.qrynovafiliados.ExecSQL;
                        DataModule1.qrynovafiliados.close;

        // Retiro de Los bebeficiarios  y cotizantes de Relacion Afiliados
                       frmproceso.Label1.Caption := 'Retirando Grupo Familiar de Relacion  '  + DataModule1.QRYAFILIADOSTIP_DOCUMENTO_AFI.Value + ' - ' + DataModule1.QRYAFILIADOSNUM_DOCUMENTO_AFI.Value;
                       frmproceso.Refresh;

                        DataModule1.qryrelacion_afiliados.Close;
                        DataModule1.qryrelacion_afiliados.sql.Clear;
                        DataModule1.qryrelacion_afiliados.sql.add ('UPDATE RELACION_AFILIADOS  SET COD_ESTADO = :"ESTADO",FEC_EXCLUSION_NOV = :"FECHA" WHERE TIP_DOCUMENTO_COT = :"TIPO" AND NUM_DOCUMENTO_COT = :"NUMERO" AND FEC_EXCLUSION_NOV IS NULL');
                        DataModule1.qryrelacion_afiliados.Parameters[0].VALUE :='I';
                        DataModule1.qryrelacion_afiliados.Parameters[1].VALUE := fecharetiro;
                        DataModule1.qryrelacion_afiliados.Parameters[2].VALUE := DataModule1.qrydetalleafi_tipo_doc.Value;
                        DataModule1.qryrelacion_afiliados.Parameters[3].VALUE := DataModule1.qrydetalleafi_numero_doc.Value;
                        DataModule1.qryrelacion_afiliados.ExecSQL;
                        DataModule1.qryrelacion_afiliados.Close;

                        DataModule1.qryafiliadosempresa.Close;
                        DataModule1.qryafiliadosempresa.sql.Clear;
                        DataModule1.qryafiliadosempresa.sql.add ('UPDATE  AFILIADOS_EMPRESAS SET COD_ESTADO = :"ESTADO",FEC_EGRESO_UNI = :"FECHA" WHERE TIP_DOCUMENTO_EMP = :"TIPOE" AND NUM_DOCUMENTO_EMP = :"EMPRESA" AND TIP_DOCUMENTO_AFI = :"TIPO" AND NUM_DOCUMENTO_AFI = :"NUMERO" AND FEC_EGRESO_UNI IS NULL');
                        DataModule1.qryafiliadosempresa.Parameters[0].VALUE := 'I';
                        DataModule1.qryafiliadosempresa.Parameters[1].VALUE := fecharetiro;
                        DataModule1.qryafiliadosempresa.Parameters[2].VALUE := DataModule1.qryautoliquidacionEMP_TIPO_DOC.Value;
                        DataModule1.qryafiliadosempresa.Parameters[3].VALUE := DataModule1.qryautoliquidacionemp_numero_doc.Value;
                        DataModule1.qryafiliadosempresa.Parameters[4].VALUE := DataModule1.qrydetalleafi_tipo_doc.Value;
                        DataModule1.qryafiliadosempresa.Parameters[5].VALUE := DataModule1.qrydetalleafi_numero_doc.Value;
                        DataModule1.qryafiliadosempresa.ExecSQL;

                 end
                 else
                   if   DataModule1.qryafiliadosempresa.RecordCount > 1 then
                   begin
                       // Multiempresa
                         DataModule1.qryafiliadosempresa.Close;
                         DataModule1.qryafiliadosempresa.sql.Clear;
                         DataModule1.qryafiliadosempresa.sql.add ('SELECT * FROM AFILIADOS_EMPRESAS WHERE TIP_DOCUMENTO_EMP = :"TIPOE" AND NUM_DOCUMENTO_EMP = :"EMPRESA" AND TIP_DOCUMENTO_AFI = :"TIPO" AND NUM_DOCUMENTO_AFI = :"NUMERO" AND FEC_EGRESO_UNI IS NULL');
                         DataModule1.qryafiliadosempresa.Parameters[0].VALUE := DataModule1.qryautoliquidacionemp_tipo_doc.Value;
                         DataModule1.qryafiliadosempresa.Parameters[1].VALUE := DataModule1.qryautoliquidacionemp_numero_doc.Value;
                         DataModule1.qryafiliadosempresa.Parameters[2].VALUE := DataModule1.qrydetalleafi_tipo_doc.Value;
                         DataModule1.qryafiliadosempresa.Parameters[3].VALUE := DataModule1.qrydetalleafi_numero_doc.Value;
                         DataModule1.qryafiliadosempresa.Open;
                         if DataModule1.qryafiliadosempresa.RecordCount = 1 then
                         begin
                         frmproceso.Label1.Caption := 'Retirando afiliado Multiempresa '  + DataModule1.qrydetalleafi_tipo_doc.Value + ' - ' + DataModule1.qrydetalleafi_numero_doc.Value;
                         frmproceso.Refresh;
                              DataModule1.qrynovafiliados.close;
                              DataModule1.qrynovafiliados.sql.Clear;
                              DataModule1.qrynovafiliados.sql.add ('INSERT INTO NOVEDADES_AFILIADOS ( NOV_CODIGO,TIP_DOCUMENTO,NUM_DOCUMENTO,COD_OFICINA,COD_REGIONAL,USU_TIPO_DOC,USU_NUMERO_DOC,FEC_NOVEDAD_AFIL,');
                              DataModule1.qrynovafiliados.sql.add ('NOM_CAMPO,DAT_CAMPO_ANT,NOM_TABLA,DAT_CAMPO_DES,FEC_EVENTO,FEC_APLICATIVO,TIP_DOCUMENTO_EMP,NUM_DOCUMENTO_EMP,COD_SUCURSAL,NUM_PLANILLA,COD_NOVEDAD_AFIL)');
                              DataModule1.qrynovafiliados.sql.add ('VALUES ( :"NOVEDAD",:"TIP_DOCUMENTO_BEN",:"NUM_DOCUMENTO_BEN",:"OFICINA",:"REGIONAL",:"TIPO_USUARIO",:"NUMERO_USUAIRO",:"FECHA_NOVEDAD",');
                              DataModule1.qrynovafiliados.sql.add (':"NOMBRE_CAMPO ",:"DATO_ANTERIOR",:"TABLA",:"CAMPO",:"FECHA_NOVEDAD",:"FECHA_SISTEMA",:"TIP_DOC_EMP",:"NUM_DOC_EMP",:"COD_SUCURSAL",:"NUM_PLANILLA",'+'nov_afiliados.nextval'+')');
                              if DataModule1.qrydetallenov_ret.value = 'X' then
                              begin
                              DataModule1.qrynovafiliados.Parameters[0].VALUE := '11';
                              end
                              else
                              if DataModule1.qrydetallenov_taa.Value = 'X' then
                              begin
                              DataModule1.qrynovafiliados.Parameters[0].VALUE := '10';
                              end;
                              DataModule1.qrynovafiliados.Parameters[1].VALUE := DataModule1.qrydetalleafi_tipo_doc.Value;
                              DataModule1.qrynovafiliados.Parameters[2].VALUE := DataModule1.qrydetalleafi_numero_doc.Value;
                              DataModule1.qrynovafiliados.Parameters[3].VALUE := DataModule1.qryautoliquidacioncod_oficina.value;
                              DataModule1.qrynovafiliados.Parameters[4].VALUE := DataModule1.qryautoliquidacioncod_regional.value;
                              DataModule1.qrynovafiliados.Parameters[5].VALUE := DataModule1.qryautoliquidaciontip_doc_usuario.value;
                              DataModule1.qrynovafiliados.Parameters[6].VALUE := DataModule1.qryautoliquidacionnum_doc_usuario.value;
                              DataModule1.qrynovafiliados.Parameters[7].VALUE := fecharetiro;
                              DataModule1.qrynovafiliados.Parameters[8].VALUE := '';
                              DataModule1.qrynovafiliados.Parameters[9].VALUE := '';
                              DataModule1.qrynovafiliados.Parameters[10].VALUE := 'AFILIADOS_EMPRESAS';
                              DataModule1.qrynovafiliados.Parameters[11].VALUE := 'ESTADO';
                              DataModule1.qrynovafiliados.Parameters[12].VALUE := fecharetiro;
                              DataModule1.qrynovafiliados.Parameters[13].VALUE := strtodate(GLDATE);
                              DataModule1.qrynovafiliados.Parameters[14].VALUE := DataModule1.qryautoliquidacionemp_tipo_doc.value;
                              DataModule1.qrynovafiliados.Parameters[15].VALUE := DataModule1.qryautoliquidacionemp_numero_doc.value;
                              DataModule1.qrynovafiliados.Parameters[16].VALUE := DataModule1.qryautoliquidacioncod_sucursal.value;
                              DataModule1.qrynovafiliados.Parameters[17].VALUE := DataModule1.qryautoliquidacionnum_planilla.value;
                              DataModule1.qrynovafiliados.ExecSQL;
                              DataModule1.qrynovafiliados.close;

                              DataModule1.qryafiliadosempresa.Close;
                              DataModule1.qryafiliadosempresa.sql.Clear;
                              DataModule1.qryafiliadosempresa.sql.add ('UPDATE  AFILIADOS_EMPRESAS SET COD_ESTADO = :"ESTADO",FEC_EGRESO_UNI = :"FECHA" WHERE TIP_DOCUMENTO_EMP = :"TIPOE" AND NUM_DOCUMENTO_EMP = :"EMPRESA" AND TIP_DOCUMENTO_AFI = :"TIPO" AND NUM_DOCUMENTO_AFI = :"NUMERO" AND FEC_EGRESO_UNI IS NULL');
                              DataModule1.qryafiliadosempresa.Parameters[0].VALUE := 'I';
                              DataModule1.qryafiliadosempresa.Parameters[1].VALUE := fecharetiro;
                              DataModule1.qryafiliadosempresa.Parameters[2].VALUE := DataModule1.qryautoliquidacionEMP_TIPO_DOC.Value;
                              DataModule1.qryafiliadosempresa.Parameters[3].VALUE := DataModule1.qryautoliquidacionemp_numero_doc.Value;
                              DataModule1.qryafiliadosempresa.Parameters[4].VALUE := DataModule1.qrydetalleafi_tipo_doc.Value;
                              DataModule1.qryafiliadosempresa.Parameters[5].VALUE := DataModule1.qrydetalleafi_numero_doc.Value;
                              DataModule1.qryafiliadosempresa.ExecSQL;

                         end;

                   end;
                   DataModule1.qrydetalle.Next;
      end;
end;

procedure TfrmRetiroAfiliados.RadioGroup1Click(Sender: TObject);
begin
IF RadioGroup1.ItemIndex = 0 THEN
BEGIN
  EDTPLANILLA.Visible := true;
  edtperiodo.Visible := false;
  Label3.Caption := 'Numero de  Planilla'
END;
IF RadioGroup1.ItemIndex = 1 THEN
BEGIN
  EDTPLANILLA.Visible := FALSE;
  edtperiodo.Visible := true;
  Label3.Caption := 'Periodo de  Cotización'
END;

end;

end.
