unit Uconafiliados;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBGrids, DBTables, Grids, Mask, ExtCtrls, Buttons,
  ComCtrls,variants;

type
  Tfrmconfamiliar = class(TForm)
    qryafiliadostip_documento: TStringField;
    qryafiliadosnum_documento: TStringField;
    qryafiliadoscod_sexo: TStringField;
    qryafiliadospri_apellido: TStringField;
    qryafiliadosseg_apellido: TStringField;
    qryafiliadospri_nombre: TStringField;
    qryafiliadosseg_nombre: TStringField;
    qryafiliadosfec_nacimiento: TDateTimeField;
    qryafiliadoscod_estado_civ: TStringField;
    qryafiliadoscod_estrato: TStringField;
    qryafiliadosfec_afiliacion_sis: TDateTimeField;
    qryafiliadosfec_afiliacion_uni: TDateTimeField;
    qryrelacion_afiliadostip_documento_ben: TStringField;
    qryrelacion_afiliadosnum_documento_ben: TStringField;
    qryrelacion_afiliadoscod_parentesco: TStringField;
    DBGrid1: TDBGrid;
    DBNavigator: TDBNavigator;
    Panel1: TPanel;
    dsafiliados: TDataSource;
    Panel3: TPanel;
    qryafiliados: TQuery;
    qryrelacion_afiliados: TQuery;
    dsrelacion_afiliados: TDataSource;
    qryrelacion_afiliadospri_apellido: TStringField;
    qryrelacion_afiliadosseg_apellido: TStringField;
    qryrelacion_afiliadospri_nombre: TStringField;
    qryrelacion_afiliadosseg_nombre: TStringField;
    qryrelacion_afiliadoscod_sexo: TStringField;
    qryrelacion_afiliadosfec_nacimiento: TDateTimeField;
    qryrelacion_afiliadoscod_tipo_afil: TStringField;
    qryupdateafiliados: TQuery;
    qryupdaterelacion_afiliados: TQuery;
    qryafiliados_empresas: TQuery;
    qrynovedades_afiliados: TQuery;
    qrynovedades: TQuery;
    qrynovedadesnov_codigo: TStringField;
    qrynovedadesnov_nombre: TStringField;
    dsnovedades: TDataSource;
    dstipos_documentos: TDataSource;
    dssexo: TDataSource;
    dsestratos: TDataSource;
    dsdiscapacidades: TDataSource;
    dsestadosciviles: TDataSource;
    Panel4: TPanel;
    GroupBox4: TGroupBox;
    Label33: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label36: TLabel;
    Label39: TLabel;
    dblsexo: TDBLookupComboBox;
    dblestrato: TDBLookupComboBox;
    dbldiscapacidad: TDBLookupComboBox;
    dblestadocivil: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    qryafiliadoscod_discapacidad: TStringField;
    qrypermanencia_eps: TQuery;
    qrypermanencia_epsnov_codigo: TStringField;
    qrypermanencia_epspermanencia_EPS: TFloatField;
    qrypermanecias: TQuery;
    qrypermaneciasfec_periodo: TDateTimeField;
    qrypermaneciasper_permanencia: TFloatField;
    qrypermaneciasper_suspension: TFloatField;
    qrypermaneciasper_inactividad: TFloatField;
    qrynovedadesingresoegresos: TQuery;
    qrynovedadesingresoegresosnov_codigo: TStringField;
    qrynovedadesingresoegresosnov_nombre: TStringField;
    qrynovedadesingresoegresostip_documento: TStringField;
    qrynovedadesingresoegresosnum_documento: TStringField;
    qrynovedadesingresoegresosfec_novedad_afil: TDateTimeField;
    qrynovedadesingresoegresosfec_evento: TDateTimeField;
    qrynovedadesingresoegresosnom_empresa: TStringField;
    qryafiliadosnom_afiliado: TStringField;
    Qrytemporal: TQuery;
    Qrytemporalnom_afiliado: TStringField;
    Qrytemporalnom_parentesco: TStringField;
    Qrytemporalnom_sexo: TStringField;
    Qrytemporalnom_tipo: TStringField;
    Qrytemporalnom_estado: TStringField;
    Qrytemporaltip_documento: TStringField;
    Qrytemporalnum_documento: TStringField;
    Qrytemporalpri_nombre: TStringField;
    Qrytemporalseg_nombre: TStringField;
    Qrytemporalpri_apellido: TStringField;
    Qrytemporalseg_apellido: TStringField;
    Qrytemporalcod_sexo: TStringField;
    Qrytemporalfec_nacimiento: TDateTimeField;
    Qrytemporalcod_parentesco: TStringField;
    Qrytemporalcod_tipo_afil: TStringField;
    Qrytemporalnum_semanas: TFloatField;
    Qrytemporalcod_estado: TStringField;
    StoredProc1: TStoredProc;
    qryrelacion_afiliadosnom_afiliado: TStringField;
    qryrelacion_afiliadosfec_afiliacion_uni: TDateTimeField;
    qryrelacion_afiliadoscod_departamento_res: TStringField;
    qryrelacion_afiliadoscod_ciudad_res: TStringField;
    qryrelacion_afiliadosnom_depto: TStringField;
    qryrelacion_afiliadosnom_ciudad: TStringField;
    qryrelacion_afiliadostip_documento_cot: TStringField;
    qryrelacion_afiliadosnum_documento_cot: TStringField;
    qryrelacion_afiliadosnom_deptociudad: TStringField;
    qryrelacion_afiliadoscod_discapacidad: TStringField;
    qryrelacion_afiliadoscod_estrato: TStringField;
    qryrelacion_afiliadosdoc_ben: TStringField;
    qryrelacion_afiliadosdoc_cot: TStringField;
    qryestratos_afiliados: TQuery;
    qryvalor_total_cot: TQuery;
    qrysalariominimo: TQuery;
    qrysalariominimosal_minimo: TFloatField;
    qryestratos_afiliadoscod_estrato_afiliado: TStringField;
    qrycartera: TQuery;
    qrycarteratip_documento: TStringField;
    qrycarteranum_documento: TStringField;
    qrycarteratip_documento_emp: TStringField;
    qrycarteranum_documento_emp: TStringField;
    qrycarteracod_sucursal_emp: TStringField;
    qrycarteraper_compensacion: TStringField;
    qrycarteratipo_mora: TStringField;
    qrycarteravalor_mora: TFloatField;
    qrycarteravalor_upc: TFloatField;
    qrycarteracod_tipo_afil: TStringField;
    qrycarteranom_empresa: TStringField;
    qrycarteratip_documento_cot: TStringField;
    qrycarteranum_documento_cot: TStringField;
    qryrelacion_afiliadosnom_parentesco: TStringField;
    qryrelacion_afiliadosnom_sexo: TStringField;
    qryrelacion_afiliadosnom_tipo: TStringField;
    qryrelacion_afiliadosnom_estado: TStringField;
    qryrelacion_afiliadoscod_estado: TStringField;
    qrycotiza: TQuery;
    dscotiza: TDataSource;
    qrycotizaTIP_DOCUMENTO_COT: TStringField;
    qrycotizaNUM_DOCUMENTO_COT: TStringField;
    qryvalor_total_cotSUMVAL_SUELDO_AFIL: TFloatField;
    Label26: TLabel;
    Qrymaxfecha: TQuery;
    QrymaxfechaFEC_NOVEDAD: TDateTimeField;
    Image1: TImage;
    Label48: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    dbltipos: TDBLookupComboBox;
    Edit2: TEdit;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure qryrelacion_afiliadosCalcFields(DataSet: TDataSet);
    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure dbltiposExit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmconfamiliar: Tfrmconfamiliar;
  ii_tip_doc_emp:string;
  ii_num_doc_emp:string;
  ii_cod_empresa:string;
  ii_fecha_ingreso:tdatetime;
  arreglo: array[1..3,1..100] of string;
  totalrelacion,i:integer;
implementation

uses Uafiliaciones_usuarios, Udmafiliaciones, Uafiliados_empresas,
  Uafiliaciones, ureporte, Ucarnets_grupo_familiar, Ugrupofamiliar;

{$R *.DFM}

procedure Tfrmconfamiliar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     action:=cafree;
end;

procedure Tfrmconfamiliar.FormCreate(Sender: TObject);
begin
        Application.OnMessage := AppMessage;
        dmafiliaciones.tbltipos_documentos.Open;
        dmafiliaciones.tblsexo.Open;
        dmafiliaciones.tblestratos.Open;
        dmafiliaciones.tbldiscapacidades.Open;
        dmafiliaciones.tblestadosciviles.Open;

end;

procedure Tfrmconfamiliar.qryrelacion_afiliadosCalcFields(
  DataSet: TDataSet);
var
fecha:tdatetime;
begin
     qryrelacion_afiliadosnom_afiliado.text:=qryrelacion_afiliadospri_apellido.text+' '+qryrelacion_afiliadosseg_apellido.text+' '+qryrelacion_afiliadospri_nombre.text+' '+qryrelacion_afiliadosseg_nombre.text;
     qryrelacion_afiliadosnom_deptociudad.text:=qryrelacion_afiliadosnom_depto.text+' / '+qryrelacion_afiliadosnom_ciudad.text;
     qryrelacion_afiliadosdoc_ben.text:=qryrelacion_afiliadostip_documento_ben.text+' '+qryrelacion_afiliadosnum_documento_ben.text;
     qryrelacion_afiliadosdoc_cot.text:=qryrelacion_afiliadostip_documento_cot.text+' '+qryrelacion_afiliadosnum_documento_cot.text;
     qryvalor_total_cot.close;
     qryvalor_total_cot.Params[0].text:=qryrelacion_afiliadostip_documento_ben.text;
     qryvalor_total_cot.Params[1].text:=qryrelacion_afiliadosnum_documento_ben.text;
     qryvalor_total_cot.open;
     fecha:=strtodatetime('01/01/'+ formatdatetime('yyyy',gb_fec_hoy));
     qrysalariominimo.Params[0].Value:=fecha;
     qrysalariominimo.Open;
     qryestratos_afiliados.close;
     qryestratos_afiliados.Params[0].Value:=round(qryvalor_total_cotSUMVAL_SUELDO_AFIL.value/qrysalariominimosal_minimo.Value);
     qryestratos_afiliados.Params[1].Value:=round(qryvalor_total_cotSUMVAL_SUELDO_AFIL.value/qrysalariominimosal_minimo.Value);
     qryestratos_afiliados.open;
     qryrelacion_afiliadoscod_estrato.text:=qryestratos_afiliadoscod_estrato_afiliado.text;
end;

procedure Tfrmconfamiliar.AppMessage(var Msg: TMsg;
  var Handled: Boolean);
begin
       if Msg.wParam = VK_RETURN then
       begin
        if ((Screen.ActiveControl) is TComboBox) then
             Msg.wParam := VK_TAB;
        if (((Screen.ActiveControl) is TEdit)) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TDBEdit) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TDateTimePicker) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TMaskEdit) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TDateTimePicker) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TDBLookupComboBox) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TGroupBox) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TTabSheet) then
             Msg.wParam := VK_TAB;
       end;
end;

procedure Tfrmconfamiliar.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
        frmafiliaciones.numerosKeypress(edit2,Key);
end;

procedure Tfrmconfamiliar.dbltiposExit(Sender: TObject);
begin
if  dbltipos.Text = '' then
   begin
   ShowMessage('Selecion el tipo de  documento');
   dbltipos.SetFocus;
   end;

end;

procedure Tfrmconfamiliar.Edit2Exit(Sender: TObject);
begin
if  Edit2.Text = '' then
   begin
   ShowMessage('Digite el numero  de  documento del cotizante ');
   Edit2.SetFocus;
   end
   else
   BitBtn1.Click;
end;

procedure Tfrmconfamiliar.BitBtn1Click(Sender: TObject);
begin
 if (Edit2.Text <> '') and (dbltipos.Text <> '') then
 begin
      qryafiliados.Close;
      qryafiliados.Params[0].AsString := dbltipos.Text;
      qryafiliados.Params[1].AsString := edit2.Text;
      qryafiliados.Open;
      if qryafiliados.RecordCount = 1 then
      begin
      Edit1.Text := qryafiliadospri_apellido.Value + ' ' + qryafiliadosseg_apellido.Value + ' ' + qryafiliadospri_nombre.Value + ' ' + qryafiliadosseg_nombre.Value;
      qrycotiza.Open;
      qryrelacion_afiliados.open;

      end
      else
      begin
      ShowMessage('Afiliado No existe  en la base de Datos');
      dbltipos.SetFocus;
      end;
 end;

end;

end.
