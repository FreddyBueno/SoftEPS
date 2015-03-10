unit Ucar_empresas;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBGrids, DBTables, Grids, Mask, ExtCtrls, Buttons,
  ComCtrls;

type
  Tfrmcar_empresas = class(TForm)
    Panel1: TPanel;
    Label26: TLabel;
    DBNavigator: TDBNavigator;
    GroupBox16: TGroupBox;
    gbdocumentos: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    dbltipos: TDBLookupComboBox;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox4: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label14: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit20: TDBEdit;
    dbltipoaportante: TDBLookupComboBox;
    dblpresentacioncompensacion: TDBLookupComboBox;
    dbltipodeempresa: TDBLookupComboBox;
    dbltipodepersona: TDBLookupComboBox;
    dblactividadeconomica: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    qryempresas: TQuery;
    qryempresastip_documento: TStringField;
    qryempresasnum_documento: TStringField;
    qryempresascod_sucursal: TStringField;
    qryempresascod_actividad_eco: TStringField;
    qryempresascod_departamento: TStringField;
    qryempresascod_ciudad: TStringField;
    qryempresastip_aportante: TStringField;
    qryempresasfec_afiliacion: TDateTimeField;
    qryempresascod_tipo_per: TStringField;
    qryempresascod_tip_empresa: TStringField;
    qryempresasnom_empresa: TStringField;
    qryempresascod_presentacion_com: TStringField;
    qryempresastot_empleados: TStringField;
    qryrelacion_afiliados: TQuery;
    dsempresas: TDataSource;
    dsrelacion_afiliados: TDataSource;
    dstiposdocumentos: TDataSource;
    dsactividadeconomica: TDataSource;
    dstipoaportante: TDataSource;
    dstipopersona: TDataSource;
    dstipodeempresa: TDataSource;
    dspresentacioncompensacion: TDataSource;
    dszonas: TDataSource;
    btncarnetizar: TButton;
    qryrelacion_afiliadosTIP_DOCUMENTO_BEN: TStringField;
    qryrelacion_afiliadosNUM_DOCUMENTO_BEN: TStringField;
    qryrelacion_afiliadosTIP_DOCUMENTO_COT: TStringField;
    qryrelacion_afiliadosNUM_DOCUMENTO_COT: TStringField;
    qryrelacion_afiliadosPRI_APELLIDO: TStringField;
    qryrelacion_afiliadosSEG_APELLIDO: TStringField;
    qryrelacion_afiliadosPRI_NOMBRE: TStringField;
    qryrelacion_afiliadosSEG_NOMBRE: TStringField;
    qryrelacion_afiliadosCOD_SEXO: TStringField;
    qryrelacion_afiliadosFEC_NACIMIENTO: TDateTimeField;
    qryrelacion_afiliadosCOD_PARENTESCO: TStringField;
    qryrelacion_afiliadosCOD_TIPO_AFIL: TStringField;
    qryrelacion_afiliadosFEC_AFILIACION_UNI: TDateTimeField;
    qryrelacion_afiliadosCOD_DEPARTAMENTO_RES: TStringField;
    qryrelacion_afiliadosCOD_CIUDAD_RES: TStringField;
    qryrelacion_afiliadosCOD_DISCAPACIDAD: TStringField;
    qryrelacion_afiliadosSYSDATE: TDateTimeField;
    qryrelacion_afiliadosCOD_ESTADO: TStringField;
    qrysalariominimo: TQuery;
    qrysalariominimosal_minimo: TFloatField;
    qryestratos_afiliados: TQuery;
    qryestratos_afiliadoscod_estrato_afiliado: TStringField;
    qryvalor_total_cot: TQuery;
    qryvalor_total_cotSUMVAL_SUELDO_AFIL: TFloatField;
    qryrelacion_afiliadosnom_parentesco: TStringField;
    qryrelacion_afiliadosnom_sexo: TStringField;
    qryrelacion_afiliadosnom_tipo: TStringField;
    qryrelacion_afiliadosnom_estado: TStringField;
    qryrelacion_afiliadosnom_afiliado: TStringField;
    qryrelacion_afiliadosnom_depto: TStringField;
    qryrelacion_afiliadosnom_ciudad: TStringField;
    qryrelacion_afiliadosnom_deptociudad: TStringField;
    qryrelacion_afiliadosdoc_ben: TStringField;
    qryrelacion_afiliadosdoc_cot: TStringField;
    qryrelacion_afiliadoscod_estrato: TStringField;
    qrynovedades_afiliados: TQuery;
    Button1: TButton;
    Label48: TLabel;
    qryrelacion_afiliadosMON_PRESTADOR: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure btncarnetizarClick(Sender: TObject);
    procedure qryrelacion_afiliadosCalcFields(DataSet: TDataSet);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmcar_empresas: Tfrmcar_empresas;

implementation

uses UEmpresas, Uafiliaciones, Udmafiliaciones, Ucarnets_grupo_familiar;

{$R *.DFM}

procedure Tfrmcar_empresas.FormCreate(Sender: TObject);
begin
//  qryempresas.Open;
//  qryrelacion_afiliados.Open;
     Application.OnMessage := AppMessage;
     dmafiliaciones.tbltipos_documentos.Open;
     dmafiliaciones.tblactividadeconomica.Open;
     dmafiliaciones.tbltipoaportante.Open;
     dmafiliaciones.tbltipopersona.Open;
     dmafiliaciones.tbltipopersona.Open;
     dmafiliaciones.tbltipoempresa.Open;
     dmafiliaciones.tblperiododecompensacion.Open;
end;

procedure Tfrmcar_empresas.Button1Click(Sender: TObject);
begin
        frmempresas:=Tfrmempresas.create(Application);
              try
                      frmempresas.caption := 'Seleccione la Empresa';
                      frmempresas.show;

              except
                      frmempresas.free;
              end;
end;

procedure Tfrmcar_empresas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        action:=cafree;
end;

procedure Tfrmcar_empresas.BitBtn1Click(Sender: TObject);
begin
      if  (dbltipos.Text <>'') and (edit2.Text <>'') and (edit3.Text <>'') then
        begin

        qryempresas.close;
        qryempresas.Params[0].AsString := dbltipos.Text;
        qryempresas.Params[1].AsString := edit2.Text;
        qryempresas.Params[2].AsString := edit3.Text;
        qryempresas.ExecSql;
        qryempresas.Open;
        if qryempresas.eof then
          begin
               showmessage('No existe esta empresa en la BD');
               edit2.text:='';
               dbltipos.refresh;
               edit3.Text:='';
               dbltipos.SetFocus;
          end
          else
              qryrelacion_afiliados.Open;

        end;
end;

procedure Tfrmcar_empresas.AppMessage(var Msg: TMsg; var Handled: Boolean);
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

procedure Tfrmcar_empresas.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
        frmafiliaciones.numerosKeypress(edit2,Key);
end;

procedure Tfrmcar_empresas.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
        frmafiliaciones.numerosKeypress(edit3,Key);
end;

procedure Tfrmcar_empresas.btncarnetizarClick(Sender: TObject);
begin
        frmcarnets_grupofamiliar:=Tfrmcarnets_grupofamiliar.create(Application);
          try
                  frmcarnets_grupofamiliar.QuickRep1.dataset:=qryrelacion_afiliados;
                  frmcarnets_grupofamiliar.QRDBText1.dataset:=qryrelacion_afiliados;
                  frmcarnets_grupofamiliar.QRDBText2.dataset:=qryrelacion_afiliados;
                  frmcarnets_grupofamiliar.QRDBText3.dataset:=qryrelacion_afiliados;
                  frmcarnets_grupofamiliar.QRDBText4.dataset:=qryrelacion_afiliados;
                  frmcarnets_grupofamiliar.QRDBText5.dataset:=qryrelacion_afiliados;
                  frmcarnets_grupofamiliar.QRDBText6.dataset:=qryrelacion_afiliados;
                  frmcarnets_grupofamiliar.QRDBText7.dataset:=qryrelacion_afiliados;
                  frmcarnets_grupofamiliar.QRDBText8.dataset:=qryrelacion_afiliados;
//                  frmcarnets_grupofamiliar.QRDBText11.dataset:=qryrelacion_afiliados;
                  frmcarnets_grupofamiliar.QRDBText12.dataset:=qryrelacion_afiliados;
//                  frmcarnets_grupofamiliar.QRDBText9.dataset:=qryrelacion_afiliados;
                  frmcarnets_grupofamiliar.QuickRep1.Preview;
                  frmcarnets_grupofamiliar.close;
          except
                  frmcarnets_grupofamiliar.close;
          end;
end;

procedure Tfrmcar_empresas.qryrelacion_afiliadosCalcFields(
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

end.
