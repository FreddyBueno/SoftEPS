unit UinformacionAfiliado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Buttons, ComCtrls, DB, DBTables,
  Grids, DBGrids, DBCtrls, ADODB;

type
  TfrmInformacionAfiliados = class(TForm)
    Panel2: TPanel;
    Label47: TLabel;
    Label48: TLabel;
    Label4: TLabel;
    dtsAfiliados: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Panel1: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    dtsAfiliadosEmpresa: TDataSource;
    dtsGrupoFamiliar: TDataSource;
    dtsPagos: TDataSource;
    dtsCartera: TDataSource;
    TabSheet7: TTabSheet;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label30: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit11: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit8: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit24: TDBEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox3: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    Edit3: TEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox4: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    DBGrid3: TDBGrid;
    DBGrid7: TDBGrid;
    dtsNovedades: TDataSource;
    dtsIncapacidades: TDataSource;
    dtsDetalleincapacidades: TDataSource;
    qryAfilliados: TADOQuery;
    qryIncapacidades: TADOQuery;
    qryDetallePagos: TADOQuery;
    qryGrupoFamiliar: TADOQuery;
    qryAfiliadosEmpresa: TADOQuery;
    qryCartera: TADOQuery;
    qryNovedades: TADOQuery;
    qryAfilliadosTIP_DOCUMENTO: TStringField;
    qryAfilliadosNUM_DOCUMENTO: TStringField;
    qryAfilliadosCOD_SEXO: TStringField;
    qryAfilliadosCOD_TIPO_AFIL: TStringField;
    qryAfilliadosCOD_MODALIDAD_TRA: TStringField;
    qryAfilliadosCOD_ESTADO_CIV: TStringField;
    qryAfilliadosCOD_ESTRATO: TStringField;
    qryAfilliadosCOD_ESCOLARIDAD: TStringField;
    qryAfilliadosCOD_PROFESION: TStringField;
    qryAfilliadosCOD_ESTADO: TStringField;
    qryAfilliadosCOD_OFICINA: TStringField;
    qryAfilliadosCOD_REGIONAL: TStringField;
    qryAfilliadosPRI_NOMBRE: TStringField;
    qryAfilliadosSEG_NOMBRE: TStringField;
    qryAfilliadosPRI_APELLIDO: TStringField;
    qryAfilliadosSEG_APELLIDO: TStringField;
    qryAfilliadosFEC_NACIMIENTO: TDateTimeField;
    qryAfilliadosFEC_AFILIACION_SIS: TDateTimeField;
    qryAfilliadosFEC_AFILIACION_UNI: TDateTimeField;
    qryAfilliadosEPS_TIP_DOC: TStringField;
    qryAfilliadosEPS_NUM_DOC: TStringField;
    qryAfilliadosCOD_DEPARTAMENTO_RES: TStringField;
    qryAfilliadosCOD_CIUDAD_RES: TStringField;
    qryAfilliadosCOD_BARRIO_RES: TStringField;
    qryAfilliadosCOD_ZONA: TStringField;
    qryAfilliadosACE_TIP_DOC: TStringField;
    qryAfilliadosACE_NUMERO_DOC: TStringField;
    qryAfilliadosCOD_DISCAPACIDAD: TStringField;
    qryAfilliadosNUM_SEMANA_COTIZA: TBCDField;
    qryAfilliadosFEC_RADICACION: TDateTimeField;
    qryAfilliadosNUM_FORMATO_AFIL: TStringField;
    qryAfilliadosDIR_AFILIADO_RES: TStringField;
    qryAfilliadosTEL_AFILIADO_RES: TStringField;
    qryAfilliadosTEL_AFILIADO_RES2: TStringField;
    qryAfilliadosCEL_AFILIADO: TStringField;
    qryAfilliadosEML_AFILIADO: TStringField;
    qryAfilliadosFEC_ULTIMA_NOV: TDateTimeField;
    qryAfilliadosTIP_DOCUMENTO_IPS: TStringField;
    qryAfilliadosNUM_DOCUMENTO_IPS: TStringField;
    qryAfilliadosTIP_DOCUMENTO_MED: TStringField;
    qryAfilliadosNUM_DOCUMENTO_MED: TStringField;
    qryAfilliadosTIP_DOCUMENTO_ODO: TStringField;
    qryAfilliadosNUM_DOCUMENTO_ODO: TStringField;
    qryAfilliadosSEM_COTIZACION: TBCDField;
    qryAfiliadosEmpresaTIP_DOCUMENTO_EMP: TStringField;
    qryAfiliadosEmpresaNUM_DOCUMENTO_EMP: TStringField;
    qryAfiliadosEmpresaNOM_EMPRESA: TStringField;
    qryAfiliadosEmpresaCOD_SUCURSAL: TStringField;
    qryAfiliadosEmpresaFEC_INGRESO_UNI: TDateTimeField;
    qryAfiliadosEmpresaVAL_SUELDO_AFIL: TBCDField;
    qryAfiliadosEmpresaCOD_DEPARTAMENTO_LAB: TStringField;
    qryAfiliadosEmpresaCOD_CIUDAD_LAB: TStringField;
    qryAfiliadosEmpresaDIR_AFILIADO_LAB: TStringField;
    qryAfiliadosEmpresaTEL_AFILIADO_LAB: TStringField;
    qryAfiliadosEmpresaTEL_AFILIADO_LAB2: TStringField;
    qryAfiliadosEmpresaCOD_ESTADO: TStringField;
    qryAfiliadosEmpresaFEC_EGRESO_UNI: TDateTimeField;
    qryAfiliadosEmpresaCOD_TIPO_SAL: TStringField;
    qryGrupoFamiliarTIP_DOCUMENTO_BEN: TStringField;
    qryGrupoFamiliarNUM_DOCUMENTO_BEN: TStringField;
    qryGrupoFamiliarPRI_APELLIDO: TStringField;
    qryGrupoFamiliarSEG_APELLIDO: TStringField;
    qryGrupoFamiliarPRI_NOMBRE: TStringField;
    qryGrupoFamiliarSEG_NOMBRE: TStringField;
    qryGrupoFamiliarFEC_NACIMIENTO: TDateTimeField;
    qryGrupoFamiliarFEC_INCLUSION_NOV: TDateTimeField;
    qryGrupoFamiliarCOD_PARENTESCO: TStringField;
    qryGrupoFamiliarCOD_ESTADO: TStringField;
    qryGrupoFamiliarFEC_EXCLUSION_NOV: TDateTimeField;
    qryDetallePagosEMP_TIPO_DOC: TStringField;
    qryDetallePagosEMP_NUMERO_DOC: TStringField;
    qryDetallePagosFEC_PAGO: TDateTimeField;
    qryDetallePagosNUM_PLANILLA: TStringField;
    qryDetallePagosAFI_TIPO_DOC: TStringField;
    qryDetallePagosAFI_NUMERO_DOC: TStringField;
    qryDetallePagosNOV_ING: TStringField;
    qryDetallePagosNOV_RET: TStringField;
    qryDetallePagosNOV_TDA: TStringField;
    qryDetallePagosNOV_TAA: TStringField;
    qryDetallePagosNOV_VSP: TStringField;
    qryDetallePagosNOV_VST: TStringField;
    qryDetallePagosNOV_SLN: TStringField;
    qryDetallePagosNOV_IGE: TStringField;
    qryDetallePagosNOV_LMA: TStringField;
    qryDetallePagosNOV_VAC: TStringField;
    qryDetallePagosDIA_COTIZADOS: TStringField;
    qryDetallePagosSAL_BASE: TBCDField;
    qryDetallePagosVAL_NETO_NOV: TBCDField;
    qryDetallePagosING_BASE_COT: TBCDField;
    qryDetallePagosCOT_OBLIGATORIA: TBCDField;
    qryDetallePagosNUM_INCAPACIDAD_EGR: TStringField;
    qryDetallePagosVAL_INCAPACIDAD_EGR: TBCDField;
    qryDetallePagosNUM_LICENCIA_MAT: TStringField;
    qryDetallePagosVAL_LICENCIA_MAT: TBCDField;
    qryDetallePagosVAL_UPC_ADI: TBCDField;
    qryDetallePagosVAL_TOTAL_COT: TBCDField;
    qryDetallePagosDET_ESTADO: TStringField;
    qryDetallePagosPER_COTIZACION: TStringField;
    qryDetallePagosPER_PRESENTACION: TStringField;
    qryDetallePagosCOD_OFICINA: TStringField;
    qryDetallePagosNUM_DECLARACION: TBCDField;
    qryDetallePagosNOM_AFILIADO: TStringField;
    qryDetallePagosCOD_REGIONAL: TStringField;
    qryDetallePagosCOD_OFICINA_1: TStringField;
    qryDetallePagosTIP_DOC_USUARIO: TStringField;
    qryDetallePagosNUM_DOC_USUARIO: TStringField;
    qryCarteraTIP_DOCUMENTO: TStringField;
    qryCarteraNUM_DOCUMENTO: TStringField;
    qryCarteraTIP_DOCUMENTO_EMP: TStringField;
    qryCarteraNUM_DOCUMENTO_EMP: TStringField;
    qryCarteraCOD_SUCURSAL_EMP: TStringField;
    qryCarteraPER_COMPENSACION: TStringField;
    qryCarteraTIPO_MORA: TStringField;
    qryCarteraVALOR_MORA: TBCDField;
    qryCarteraVALOR_UPC: TBCDField;
    qryCarteraCOD_TIPO_AFIL: TStringField;
    qryCarteraTIP_DOCUMENTO_COT: TStringField;
    qryCarteraNUM_DOCUMENTO_COT: TStringField;
    qryCarteraINTERES: TBCDField;
    qryNovedadesCOD_NOVEDAD_AFIL: TBCDField;
    qryNovedadesNOV_CODIGO: TStringField;
    qryNovedadesNOV_NOMBRE: TStringField;
    qryNovedadesTIP_DOCUMENTO: TStringField;
    qryNovedadesNUM_DOCUMENTO: TStringField;
    qryNovedadesCOD_OFICINA: TStringField;
    qryNovedadesCOD_REGIONAL: TStringField;
    qryNovedadesUSU_TIPO_DOC: TStringField;
    qryNovedadesUSU_NUMERO_DOC: TStringField;
    qryNovedadesFEC_NOVEDAD_AFIL: TDateTimeField;
    qryNovedadesNOM_CAMPO: TStringField;
    qryNovedadesDAT_CAMPO_ANT: TStringField;
    qryNovedadesNOM_TABLA: TStringField;
    qryNovedadesDAT_CAMPO_DES: TStringField;
    qryNovedadesFEC_EVENTO: TDateTimeField;
    qryNovedadesFEC_APLICATIVO: TDateTimeField;
    qryNovedadesTIP_DOCUMENTO_EMP: TStringField;
    qryNovedadesNUM_DOCUMENTO_EMP: TStringField;
    qryNovedadesCOD_SUCURSAL: TStringField;
    qryNovedadesNUM_PLANILLA: TStringField;
    qryNovedadesNOV890: TStringField;
    qryIncapacidadesNUM_INCAPACIDAD: TStringField;
    qryIncapacidadesTIP_INCAPACIDAD: TStringField;
    qryIncapacidadesFEC_EXPEDICION: TDateTimeField;
    qryIncapacidadesTIP_DOCEMPRESA: TStringField;
    qryIncapacidadesNUM_DOCEMPRESA: TStringField;
    qryIncapacidadesCOD_DIAGNOSTICO: TStringField;
    qryIncapacidadesAFI_TIPO_DOC: TStringField;
    qryIncapacidadesAFI_NUMERO_DOC: TStringField;
    qryIncapacidadesCOD_PRESTADOR: TStringField;
    qryIncapacidadesNOM_PRESTADOR: TStringField;
    qryIncapacidadesDIA_INCAPACIDAD: TStringField;
    qryIncapacidadesDIA_LIQUIDADOS: TStringField;
    qryIncapacidadesFEC_INICIO: TDateTimeField;
    qryIncapacidadesPRO_INCAPACIDAD: TStringField;
    qryIncapacidadesSAL_BASE: TBCDField;
    qryIncapacidadesPRO_SALARIO_LIQUI: TBCDField;
    qryIncapacidadesVAL_INCAPACIDAD: TBCDField;
    qryIncapacidadesEST_INCAPACIDAD: TStringField;
    qryIncapacidadesCOD_REGIONAL: TStringField;
    qryIncapacidadesCOD_OFICINA: TStringField;
    qryIncapacidadesFEC_DIGITACION: TDateTimeField;
    qryIncapacidadesTIP_DOC_USUARIO: TStringField;
    qryIncapacidadesTIP_NUM_USUARIO: TStringField;
    qryIncapacidadesFEC_TERMINACION: TDateTimeField;
    qryIncapacidadesFEC_MODIFICACION: TDateTimeField;
    qryIncapacidadesNO_PRORROGA: TStringField;
    qryIncapacidadesTOT_DIAS_PRORROGA: TStringField;
    qryIncapacidadesNUM_RECEPCION: TStringField;
    qryPrestadores: TADOQuery;
    qryPrestadoresNOMBRE: TStringField;
    cbtipodocafiliado: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit2Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid4CellClick(Column: TColumn);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInformacionAfiliados: TfrmInformacionAfiliados;

implementation

uses dtmodulo, Uprincipal, Uglobal;

{$R *.dfm}

procedure TfrmInformacionAfiliados.Edit2Exit(Sender: TObject);
begin
 if {(trim(Edit1.Text) <> '')} (trim(cbtipodocafiliado.Text) <> '') and (trim(Edit2.Text) <> '' ) then
        begin
        qryAfilliados.Close;
        qryAfilliados.Parameters[0].Value := trim(cbtipodocafiliado.Text);//trim(Edit1.Text);
        qryAfilliados.Parameters[1].Value := trim(Edit2.Text);
        qryAfilliados.Open;
        IF qryAfilliados.RecordCount = 0 THEN
        BEGIN
        SHOWMESSAGE(LowerCase('El  afiliado  no existe  en  la base de  datos'));
        cbtipodocafiliado.ItemIndex:=-1;//Edit1.Text := '';
        Edit2.Text := '';
        EXIT;
        END;

       DBLookupComboBox1.KeyValue :=  qryAfilliadosCOD_DEPARTAMENTO_RES.VALUE;

       DATAMODULE1.qryciudades.CLOSE;
       DATAMODULE1.qryciudades.SQL.CLEAR;
       DATAMODULE1.qryciudades.SQL.ADD('SELECT * FROM CIUDADES WHERE COD_DEPARTAMENTO = :"DEPAR"');
       DATAMODULE1.qryciudades.Parameters[0].VALUE := qryAfilliadosCOD_DEPARTAMENTO_RES.VALUE;
       DATAMODULE1.qryciudades.OPEN;
       DBLookupComboBox2.KeyValue :=  qryAfilliadosCOD_CIUDAD_RES.VALUE;

        qryAfiliadosEmpresa.Close;
        qryAfiliadosEmpresa.Parameters[0].Value := trim(cbtipodocafiliado.Text);//trim(Edit1.Text);
        qryAfiliadosEmpresa.Parameters[1].Value := trim(Edit2.Text);
        qryAfiliadosEmpresa.Open;
        qryGrupoFamiliar.Close;
        qryGrupoFamiliar.Parameters[0].Value := trim(cbtipodocafiliado.Text);//trim(Edit1.Text);
        qryGrupoFamiliar.Parameters[1].Value := trim(Edit2.Text);
        qryGrupoFamiliar.Open;
        qryDetallePagos.Close;
        qryDetallePagos.Parameters[0].Value := trim(cbtipodocafiliado.Text);//trim(Edit1.Text);
        qryDetallePagos.Parameters[1].Value := trim(Edit2.Text);
        qryDetallePagos.Open;

        qryCartera.Close;
        qryCartera.Parameters[0].Value := trim(cbtipodocafiliado.Text);//trim(Edit1.Text);
        qryCartera.Parameters[1].Value := trim(Edit2.Text);
        qryCartera.Open;

        qryNovedades.Close;
        qryNovedades.Parameters[0].Value := trim(cbtipodocafiliado.Text);//trim(Edit1.Text);
        qryNovedades.Parameters[1].Value := trim(Edit2.Text);
        qryNovedades.Open;

        qryIncapacidades.Close;
        qryIncapacidades.Parameters[0].Value := trim(cbtipodocafiliado.Text);//trim(Edit1.Text);
        qryIncapacidades.Parameters[1].Value := trim(Edit2.Text);
        qryIncapacidades.Open;

        qryPrestadores.Close;
        qryPrestadores.SQL.Clear;
        qryPrestadores.SQL.Add('SELECT  NOM_PRESTADOR AS NOMBRE  FROM PRESTADORES WHERE TIP_IDENTIFICACION = :"CODIGO"  AND NIT_PRESTADOR = :"NUMERO" ');
        qryPrestadores.Parameters[1].Value := qryAfilliadosNUM_DOCUMENTO_IPS.Value;
        qryPrestadores.Parameters[0].Value := qryAfilliadosTIP_DOCUMENTO_IPS.Value;
        qryPrestadores.Open;
        Edit4.Text := qryPrestadoresNOMBRE.Value;

        qryPrestadores.Close;
        qryPrestadores.SQL.Clear;
        qryPrestadores.SQL.Add('SELECT  NOM_PRESTADOR AS NOMBRE  FROM PRESTADORES WHERE TIP_IDENTIFICACION = :"CODIGO"  AND NIT_PRESTADOR = :"NUMERO"');
        qryPrestadores.Parameters[1].Value := qryAfilliadosNUM_DOCUMENTO_MED.Value;
        qryPrestadores.Parameters[0].Value := qryAfilliadosTIP_DOCUMENTO_MED.Value;
        qryPrestadores.Open;
        Edit5.Text := qryPrestadoresNOMBRE.Value;

        qryPrestadores.Close;
        qryPrestadores.SQL.Clear;
        qryPrestadores.SQL.Add('SELECT  NOM_PRESTADOR AS NOMBRE  FROM PRESTADORES WHERE TIP_IDENTIFICACION = :"CODIGO"  AND NIT_PRESTADOR = :"NUMERO"');
        qryPrestadores.Parameters[1].Value := qryAfilliadosNUM_DOCUMENTO_ODO.Value;
        qryPrestadores.Parameters[0].Value := qryAfilliadosTIP_DOCUMENTO_ODO.Value;
        qryPrestadores.Open;
        Edit6.Text := qryPrestadoresNOMBRE.Value;

        qryPrestadores.Close;
        qryPrestadores.SQL.Clear;
        qryPrestadores.SQL.Add('SELECT  NOM_EPS AS NOMBRE  FROM EPS WHERE TIP_DOCUMENTO = :"CODIGO" AND NUM_DOCUMENTO = :"NUMERO"');
        qryPrestadores.Parameters[0].Value := qryAfilliadosEPS_TIP_DOC.Value;
        qryPrestadores.Parameters[1].Value := qryAfilliadosEPS_NUM_DOC.Value;
        qryPrestadores.Open;
        Edit3.Text := qryPrestadoresNOMBRE.Value;

        end;
end;

procedure TfrmInformacionAfiliados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TfrmInformacionAfiliados.FormActivate(Sender: TObject);
begin
WindowState := wsNormal;
top := 0;
Left := 0;
end;

procedure TfrmInformacionAfiliados.APPMESSAGE(var MSG: TMSG;
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
                IF ((SCREEN.ACTIVECONTROL) IS TDBLOOKUPCOMBOBOX) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TStringGrid) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TCheckBox) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TDateTimePicker) THEN
                MSG.WPARAM := VK_TAB;


       END;

end;

procedure TfrmInformacionAfiliados.FormCreate(Sender: TObject);
begin
APPLICATION.ONMESSAGE := APPMESSAGE;
end;

procedure TfrmInformacionAfiliados.DBGrid4CellClick(Column: TColumn);
begin
             DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
             DATAMODULE1.QRYDETINCAPACIDAD.SQL.CLEAR;
             DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('SELECT * FROM DET_INCAPACIDAD WHERE NUM_INCAPACIDAD = :"INCAP"');
             DATAMODULE1.QRYDETINCAPACIDAD.Parameters[0].VALUE := qryIncapacidadesNUM_INCAPACIDAD.VALUE;
             DATAMODULE1.QRYDETINCAPACIDAD.OPEN;

end;

end.
