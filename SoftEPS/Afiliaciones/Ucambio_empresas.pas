unit Ucambio_empresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, DBCtrls, Buttons, StdCtrls, ExtCtrls, Mask, Grids,
  DBGrids;

type
  Tfrmcambio_empresas = class(TForm)
    Panel1: TPanel;
    dsafiliados: TDataSource;
    qryafiliados: TQuery;
    Panel2: TPanel;
    qryafiliados_empresas: TQuery;
    dsafiliados_empresas: TDataSource;
    dstipos_documentos: TDataSource;
    dssexo: TDataSource;
    dsestadosciviles: TDataSource;
    dsestratos: TDataSource;
    dsdiscapacidades: TDataSource;
    qryafiliados_empresasnom_tipo_sal: TStringField;
    qryafiliados_empresasnom_zona: TStringField;
    qryafiliados_empresasnom_depto: TStringField;
    qryafiliados_empresasnom_ciudad: TStringField;
    qryafiliados_empresascod_ocupacion: TStringField;
    qryafiliados_empresastip_documento_afi: TStringField;
    qryafiliados_empresasnum_documento_afi: TStringField;
    qryafiliados_empresastip_documento_emp: TStringField;
    qryafiliados_empresasnum_documento_emp: TStringField;
    qryafiliados_empresascod_sucursal: TStringField;
    qryafiliados_empresascod_estado: TStringField;
    qryafiliados_empresasval_sueldo_afil: TFloatField;
    qryafiliados_empresasfec_ingreso_uni: TDateTimeField;
    qryafiliados_empresasfec_egreso_uni: TDateTimeField;
    qryafiliados_empresascod_departamento_lab: TStringField;
    qryafiliados_empresascod_ciudad_lab: TStringField;
    qryafiliados_empresasdir_afiliado_lab: TStringField;
    qryafiliados_empresastel_afiliado_lab: TStringField;
    qryafiliados_empresastel_afiliado_lab2: TStringField;
    qryafiliados_empresascod_tipo_sal: TStringField;
    qryafiliados_empresascod_zona: TStringField;
    qryafiliados_empresasnom_ocupacion: TStringField;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    Label26: TLabel;
    DBNavigator: TDBNavigator;
    GroupBox16: TGroupBox;
    gbdocumentos: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    dbltipos: TDBLookupComboBox;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    GroupBox4: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label33: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label36: TLabel;
    Label39: TLabel;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    dblsexo: TDBLookupComboBox;
    dblestrato: TDBLookupComboBox;
    dbldiscapacidad: TDBLookupComboBox;
    dblestadocivil: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    Label48: TLabel;
    qryafiliadosTIP_DOCUMENTO: TStringField;
    qryafiliadosNUM_DOCUMENTO: TStringField;
    qryafiliadosCOD_SEXO: TStringField;
    qryafiliadosCOD_TIPO_AFIL: TStringField;
    qryafiliadosCOD_MODALIDAD_TRA: TStringField;
    qryafiliadosCOD_ESTADO_CIV: TStringField;
    qryafiliadosCOD_ESTRATO: TStringField;
    qryafiliadosCOD_ESCOLARIDAD: TStringField;
    qryafiliadosCOD_PROFESION: TStringField;
    qryafiliadosCOD_ESTADO: TStringField;
    qryafiliadosCOD_OFICINA: TStringField;
    qryafiliadosCOD_REGIONAL: TStringField;
    qryafiliadosPRI_NOMBRE: TStringField;
    qryafiliadosSEG_NOMBRE: TStringField;
    qryafiliadosPRI_APELLIDO: TStringField;
    qryafiliadosSEG_APELLIDO: TStringField;
    qryafiliadosFEC_NACIMIENTO: TDateTimeField;
    qryafiliadosFEC_AFILIACION_SIS: TDateTimeField;
    qryafiliadosFEC_AFILIACION_UNI: TDateTimeField;
    qryafiliadosEPS_TIP_DOC: TStringField;
    qryafiliadosEPS_NUM_DOC: TStringField;
    qryafiliadosCOD_DEPARTAMENTO_RES: TStringField;
    qryafiliadosCOD_CIUDAD_RES: TStringField;
    qryafiliadosCOD_BARRIO_RES: TStringField;
    qryafiliadosCOD_ZONA: TStringField;
    qryafiliadosACE_TIP_DOC: TStringField;
    qryafiliadosACE_NUMERO_DOC: TStringField;
    qryafiliadosCOD_DISCAPACIDAD: TStringField;
    qryafiliadosNUM_SEMANA_COTIZA: TFloatField;
    qryafiliadosFEC_RADICACION: TDateTimeField;
    qryafiliadosNUM_FORMATO_AFIL: TStringField;
    qryafiliadosDIR_AFILIADO_RES: TStringField;
    qryafiliadosTEL_AFILIADO_RES: TStringField;
    qryafiliadosTEL_AFILIADO_RES2: TStringField;
    qryafiliadosCEL_AFILIADO: TStringField;
    qryafiliadosEML_AFILIADO: TStringField;
    qryafiliadosFEC_ULTIMA_NOV: TDateTimeField;
    qryafiliadosTIP_DOCUMENTO_IPS: TStringField;
    qryafiliadosNUM_DOCUMENTO_IPS: TStringField;
    qryafiliadosTIP_DOCUMENTO_MED: TStringField;
    qryafiliadosNUM_DOCUMENTO_MED: TStringField;
    qryafiliadosTIP_DOCUMENTO_ODO: TStringField;
    qryafiliadosNUM_DOCUMENTO_ODO: TStringField;
    qryafiliadosSEM_COTIZACION: TFloatField;
    DBLookupComboBox1: TDBLookupComboBox;
    dtsmotrabajo: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    qryafiliados_empresasFEC_ING_EMPRESA: TDateTimeField;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Exit(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2ColEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcambio_empresas: Tfrmcambio_empresas;

implementation

uses Uafiliaciones_usuarios, Udmafiliaciones, Uing_afiliado_empresa,
  Uafiliaciones;

{$R *.dfm}

procedure Tfrmcambio_empresas.BitBtn1Click(Sender: TObject);
begin
if  (dbltipos.Text <> '') and (edit2.Text <> '') then
begin
            qryafiliados.close;
            qryafiliados.Params[0].AsString := dbltipos.Text;
            qryafiliados.Params[1].AsString := edit2.Text;
            qryafiliados.ExecSql;
            qryafiliados.Open;
            if qryafiliados.eof then
              begin
                   showmessage('Este afiliado no es cotizante, Por favor consulte el Comprobador de Derechos');
                   edit2.text:='';
                   dbltipos.Refresh;
                   dbltipos.SetFocus;
              end
            else
                qryafiliados_empresas.open;
end;
end;

procedure Tfrmcambio_empresas.DBGrid4DblClick(Sender: TObject);
begin
        frmafiliacion_usuarios:=Tfrmafiliacion_usuarios.create(Application);
              try
                      frmafiliacion_usuarios.formStyle:=fsMDIChild;
                      frmafiliacion_usuarios.WindowState:=wsNormal;
                      frmafiliacion_usuarios.DBNavigator.Visible:=false;
                      frmafiliacion_usuarios.DBNavigator2.Visible:=false;
                      frmafiliacion_usuarios.TabSheet1.Tabvisible:=false;
                      //frmafiliacion_usuarios.TabSheet2.Tabvisible:=false;
 //                     frmafiliacion_usuarios.TabSheet3.Tabvisible:=false;
 //                     frmafiliacion_usuarios.TabSheet4.Tabvisible:=false;
                      frmafiliacion_usuarios.TabSheet5.Tabvisible:=false;
                      frmafiliacion_usuarios.TabSheet3.Tabvisible:=true;
                      frmafiliacion_usuarios.qryafiliados_empresas.Insert;
                      frmafiliacion_usuarios.show;
              except
                      frmafiliacion_usuarios.close;
              end;
end;

procedure Tfrmcambio_empresas.FormCreate(Sender: TObject);
begin
        Application.OnMessage := AppMessage;
        dmafiliaciones.tbltipos_documentos.Open;
        dmafiliaciones.tblsexo.Open;
        dmafiliaciones.tblestratos.Open;
        dmafiliaciones.tbldiscapacidades.Open;
        dmafiliaciones.tblestadosciviles.Open;
        dmafiliaciones.tblmodalidadtrabajo.Open;
end;

procedure Tfrmcambio_empresas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Action:=cafree;
end;

procedure Tfrmcambio_empresas.DBGrid2DblClick(Sender: TObject);
begin
        frming_afiliado_empresa:=Tfrming_afiliado_empresa.create(Application);
              try
                      frming_afiliado_empresa.caption := 'Seleccion de Empresas';
                      frming_afiliado_empresa.show;
                      frming_afiliado_empresa.DBLookupComboBox7.SetFocus;
                      frming_afiliado_empresa.Edit5.text := Edit4.Text;
                      frming_afiliado_empresa.dblmodalidadtrabajo.KeyValue := qryafiliadosCOD_MODALIDAD_TRA.Value;
                      frming_afiliado_empresa.Edit2.text := qryafiliadosTIP_DOCUMENTO.Value;
                      frming_afiliado_empresa.Edit3.text := qryafiliadosNUM_DOCUMENTO.Value;
                      frming_afiliado_empresa.Edit4.text := qryafiliadosPRI_APELLIDO.Value + ' '+ qryafiliadosSEG_APELLIDO.Value + ' ' + qryafiliadosPRI_NOMBRE.Value + ' ' + qryafiliadosSEG_NOMBRE.Value;
              except
                      frming_afiliado_empresa.free;
              end;
end;

procedure Tfrmcambio_empresas.AppMessage(var Msg: TMsg;
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
        if ((Screen.ActiveControl) is TMaskEdit) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TDBLookupComboBox) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TGroupBox) then
             Msg.wParam := VK_TAB;

       end;
end;

procedure Tfrmcambio_empresas.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.numerosKeypress(edit2,Key);
end;

procedure Tfrmcambio_empresas.Edit2Exit(Sender: TObject);
begin
if  Edit2.Text = '' then
   begin
   ShowMessage('Digite el numero de documento');
   Edit2.SetFocus;
   end
   else
   BitBtn1.Click;

end;

procedure Tfrmcambio_empresas.DBGrid2CellClick(Column: TColumn);
begin
Edit1.Text := qryafiliados_empresastip_documento_emp.Value;
Edit3.Text := qryafiliados_empresasnum_documento_afi.Value;
Edit4.Text := datetostr(qryafiliados_empresasfec_ingreso_uni.Value);
Edit5.Text := FloatToStr(qryafiliados_empresasval_sueldo_afil.Value);
end;

procedure Tfrmcambio_empresas.DBGrid2ColEnter(Sender: TObject);
begin
Edit1.Text := qryafiliados_empresastip_documento_emp.Value;
Edit3.Text := qryafiliados_empresasnum_documento_afi.Value;
Edit4.Text := datetostr(qryafiliados_empresasfec_ingreso_uni.Value);
Edit5.Text := FloatToStr(qryafiliados_empresasval_sueldo_afil.Value);
end;

end.
