unit UCompoder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Mask, DBCtrls, ComCtrls, Buttons,
  ExtCtrls, DB, DBTables, Menus, Dateutils, MAth;

type
  Tfrmcompoder = class(TForm)
    Panel1: TPanel;
    Label26: TLabel;
    GroupBox16: TGroupBox;
    gbdocumentos: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    dbltipos: TDBLookupComboBox;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PageControl2: TPageControl;
    TabSheet7: TTabSheet;
    GroupBox7: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
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
    TabSheet8: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    TabSheet5: TTabSheet;
    DBGrid5: TDBGrid;
    TabSheet4: TTabSheet;
    DBGrid4: TDBGrid;
    TabSheet6: TTabSheet;
    DBGrid6: TDBGrid;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dblestados: TDBLookupComboBox;
    edmeses: TEdit;
    edperiodos: TEdit;
    edtotal: TEdit;
    qryafiliados: TQuery;
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
    qryafiliadoscod_discapacidad: TStringField;
    qryafiliadoscod_estado: TStringField;
    qryafiliadoscod_tipo_afil: TStringField;
    dsafiliados: TDataSource;
    qryrelacion_afiliados: TQuery;
    qryrelacion_afiliadoscod_tipo_afil: TStringField;
    qryrelacion_afiliadoscod_parentesco: TStringField;
    qryrelacion_afiliadostip_documento_ben: TStringField;
    qryrelacion_afiliadosnum_documento_ben: TStringField;
    qryrelacion_afiliadospri_apellido: TStringField;
    qryrelacion_afiliadosseg_apellido: TStringField;
    qryrelacion_afiliadospri_nombre: TStringField;
    qryrelacion_afiliadosseg_nombre: TStringField;
    qryrelacion_afiliadoscod_sexo: TStringField;
    qryrelacion_afiliadosfec_nacimiento: TDateTimeField;
    dsrelacion_afiliados: TDataSource;
    dsestadosciviles: TDataSource;
    dsdiscapacidades: TDataSource;
    dsestratos: TDataSource;
    dssexo: TDataSource;
    dstipos_documentos: TDataSource;
    qrynovedades_afiliados: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    qryafiliadosnov_codigo: TStringField;
    qryafiliadosnov_nombre: TStringField;
    qryafiliadosfec_novedad_afil: TDateTimeField;
    qryafiliadosdat_campo_ant: TStringField;
    qryafiliadosdat_campo_des: TStringField;
    qryafiliadosfec_evento: TDateTimeField;
    qryafiliadosfec_aplicativo: TDateTimeField;
    qryafiliadostip_documento_emp: TStringField;
    qryafiliadosnum_documento_emp: TStringField;
    qryafiliadoscod_sucursal: TStringField;
    qryafiliadosnum_planilla: TStringField;
    qryafiliadosusu_tipo_doc: TStringField;
    qryafiliadosusu_numero_doc: TStringField;
    qryafiliadoscod_oficina: TStringField;
    qryafiliadoscod_regional: TStringField;
    qrynovedades_afiliadosnom_empresa: TStringField;
    dsnovedades_afiliados: TDataSource;
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
    dscartera: TDataSource;
    dsestados: TDataSource;
    qryafiliados_empresas: TQuery;
    qryafiliados_empresastip_documento_emp: TStringField;
    qryafiliados_empresasnum_documento_emp: TStringField;
    qryafiliados_empresascod_sucursal: TStringField;
    qryafiliados_empresasfec_ingreso_uni: TDateTimeField;
    qryafiliados_empresasfec_egreso_uni: TDateTimeField;
    qryafiliados_empresascodocupacion: TStringField;
    qryafiliados_empresascod_tipo_sal: TStringField;
    qryafiliados_empresasval_sueldo_afil: TFloatField;
    qryafiliados_empresascod_estado: TStringField;
    qryafiliados_empresascod_departamento_lab: TStringField;
    qryafiliados_empresascod_ciudad_lab: TStringField;
    qryafiliados_empresasdir_afiliado_lab: TStringField;
    qryafiliados_empresascod_zona: TStringField;
    qryafiliados_empresastel_afiliado_lab: TStringField;
    qryafiliados_empresastel_afiliado_lab2: TStringField;
    qryafiliados_empresascod_ocupacion: TStringField;
    qryafiliados_empresasnom_empresa: TStringField;
    dsafiliados_empresas: TDataSource;
    qrycartera_cotizante: TQuery;
    qrycartera_cotizantetip_documento: TStringField;
    qrycartera_cotizantenum_documento: TStringField;
    qrycartera_cotizantetip_documento_emp: TStringField;
    qrycartera_cotizantenum_documento_emp: TStringField;
    qrycartera_cotizantecod_sucursal_emp: TStringField;
    qrycartera_cotizanteper_compensacion: TStringField;
    qrycartera_cotizantetipo_mora: TStringField;
    qrycartera_cotizantevalor_mora: TFloatField;
    qrycartera_cotizantevalor_upc: TFloatField;
    qrycartera_cotizantecod_tipo_afil: TStringField;
    qrycartera_cotizantenom_empresa: TStringField;
    qrycartera_cotizantetip_documento_cot: TStringField;
    qrycartera_cotizantenum_documento_cot: TStringField;
    qrycotizantes_mora: TQuery;
    qrycotizantes_moratip_documento_cot: TStringField;
    qrycotizantes_moranum_documento_cot: TStringField;
    PopupMenu1: TPopupMenu;
    Cartera1: TMenuItem;
    dscartera_cotizante: TDataSource;
    qryregistrodecomprobaciones: TQuery;
    qryregistro: TQuery;
    dsregistro: TDataSource;
    qrycotiza: TQuery;
    qrycotizatip_documento_cot: TStringField;
    qrycotizanum_documento_cot: TStringField;
    dscotiza: TDataSource;
    qryregistroTIP_DOCUMENTO: TStringField;
    qryregistroNUM_DOCUMENTO: TStringField;
    qryregistroCOD_TIPO_AFIL: TStringField;
    qryregistroCOD_ESTADO: TStringField;
    qryregistroFEC_COMPROBACION: TDateTimeField;
    qryregistroNUM_MESES_MORA: TFloatField;
    qryregistroPER_MORA: TStringField;
    qryregistroVAL_TOTAL: TFloatField;
    qryregistroVAL_TOTAL_UPC: TFloatField;
    qryregistroDOC_COTIZANTE_MORA: TStringField;
    qryregistroNUM_MESES_MORA_COT: TFloatField;
    qryregistroPER_MORA_COT: TStringField;
    qryregistroVAT_TOTAL_COT: TFloatField;
    qryregistroCOD_ESTADO_CON: TStringField;
    qryregistroTIP_DOCUMENTO_USU: TStringField;
    qryregistroNUM_DOCUMENTO_USU: TStringField;
    Image1: TImage;
    Label48: TLabel;
    Label5: TLabel;
    TabSheet9: TTabSheet;
    DBGrid7: TDBGrid;
    qrypagos: TQuery;
    dspagos: TDataSource;
    qrypagosNUM_PLANILLA: TStringField;
    qrypagosAFI_TIPO_DOC: TStringField;
    qrypagosAFI_NUMERO_DOC: TStringField;
    qrypagosNOV_ING: TStringField;
    qrypagosNOV_RET: TStringField;
    qrypagosNOV_TDA: TStringField;
    qrypagosNOV_TAA: TStringField;
    qrypagosNOV_VSP: TStringField;
    qrypagosNOV_VST: TStringField;
    qrypagosNOV_SLN: TStringField;
    qrypagosNOV_IGE: TStringField;
    qrypagosNOV_LMA: TStringField;
    qrypagosNOV_VAC: TStringField;
    qrypagosDIA_COTIZADOS: TStringField;
    qrypagosSAL_BASE: TFloatField;
    qrypagosVAL_NETO_NOV: TFloatField;
    qrypagosING_BASE_COT: TFloatField;
    qrypagosCOT_OBLIGATORIA: TFloatField;
    qrypagosNUM_INCAPACIDAD_EGR: TStringField;
    qrypagosVAL_INCAPACIDAD_EGR: TFloatField;
    qrypagosNUM_LICENCIA_MAT: TStringField;
    qrypagosVAL_LICENCIA_MAT: TFloatField;
    qrypagosVAL_UPC_ADI: TFloatField;
    qrypagosVAL_TOTAL_COT: TFloatField;
    qrypagosDET_ESTADO: TStringField;
    qrypagosPER_COTIZACION: TStringField;
    qrypagosPER_PRESENTACION: TStringField;
    qrypagosCOD_OFICINA: TStringField;
    qrypagosNUM_DECLARACION: TFloatField;
    Label6: TLabel;
    Edit1: TEdit;
    qryips: TQuery;
    qryipsMON_PRESTADOR: TStringField;
    qryafiliadosNUM_DOCUMENTO_IPS: TStringField;
    Label9: TLabel;
    Label10: TLabel;
    Edit3: TEdit;
    Label11: TLabel;
    qryrelacion_afiliadosFEC_EXCLUSION_NOV: TDateTimeField;
    TabSheet10: TTabSheet;
    DBGrid8: TDBGrid;
    qrypagoupc: TQuery;
    dtpagoupc: TDataSource;
    qrypagoupcNUM_PLANILLA: TStringField;
    qrypagoupcAFI_TIP_DOCUMENTO: TStringField;
    qrypagoupcAFI_NUM_DOCUMENTO: TStringField;
    qrypagoupcAFI_TIP_DOC_ADICIONAL: TStringField;
    qrypagoupcAFI_NUM_DOC_ADICIONAL: TStringField;
    qrypagoupcPER_COTIZACION: TStringField;
    qrypagoupcPER_PRESENTACION: TStringField;
    qrypagoupcVAL_PAGADO: TFloatField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Cartera1Click(Sender: TObject);
    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Exit(Sender: TObject);
    procedure dbltiposExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcompoder: Tfrmcompoder;

implementation

uses Udmafiliaciones, Ucartera, Uafiliaciones;

{$R *.dfm}

procedure Tfrmcompoder.BitBtn1Click(Sender: TObject);
var
   total_mora,total_mora_cot,total_mora_ben,total_upc:real;
   periodos_mora,periodos_mora_cot,periodos_mora_ben:string;
   meses_mora,meses_mora_cot,meses_mora_ben:integer;
   documentos:string;
begin
        if  (dbltipos.Text <>'') and (edit2.Text <>'') then
        begin
             try
                dmafiliaciones.softeps.StartTransaction;
                        ////
            qryafiliados.close;
            qryafiliados.Params[0].AsString := dbltipos.Text;
                qryafiliados.Params[1].AsString := edit2.Text;
                qryafiliados.ExecSql;
                qryafiliados.Open;
                if qryafiliados.eof then
                  begin
                       showmessage('No existe este afiliado en la BD');
                       edit2.text:='';
                       dbltipos.Refresh;
                       dbltipos.SetFocus;
                  end
                else
                    begin
                          qrycotiza.Open;
                          qryrelacion_afiliados.open;
                          qrynovedades_afiliados.Open;
                          qrycartera.Open;
                          qrycotizantes_mora.Open;
                          qryafiliados_empresas.Open;
                          qrypagos.close;
                          qrypagos.Prepare;
                          qrypagos.Params[0].AsString := dbltipos.Text;
                          qrypagos.Params[1].AsString := edit2.Text;
                          qrypagos.ExecSql;
                          QRYPAGOS.Open;
                          if qrypagos.RecordCount > 0 then
                             edit1.Text := floattostr(roundto(weeksBetween(qryafiliadosfec_afiliacion_sis.Value,frmafiliaciones.fecha_actual()),0))
                           else
                             if qryafiliadosfec_afiliacion_sis.Value <> qryafiliadosfec_afiliacion_uni.Value then
                                edit1.Text := floattostr(roundto(weeksBetween(qryafiliadosfec_afiliacion_sis.Value,qryafiliadosfec_afiliacion_uni.Value),0))
                              else
                                edit1.Text := '0';

                          qrypagoupc.Close;
                          qrypagoupc.Prepare;
                          qrypagoupc.Params[0].AsString := dbltipos.Text;
                          qrypagoupc.Params[1].AsString := edit2.Text;
                          qrypagoupc.ExecSql;
                          qrypagoupc.Open;
                          qryips.Close;
                          qryips.Prepare;
                          qryips.Params[0].value := qryafiliadosnum_documento_ips.Value;
                          qryips.Open;
                          qryips.First;
                          edit3.Text := qryipsmon_prestador.Value;
                          qryips.Close;
                          qrypagos.Open;
                          qrycartera.first;
                          total_mora:=0;
                          periodos_mora:='';
                          meses_mora:=0;
                          total_mora_ben:=0;
                          periodos_mora_ben:='';
                          meses_mora_ben:=0;
                          total_mora_cot:=0;
                          periodos_mora_cot:='';
                          meses_mora_cot:=0;
                          total_upc:=0;
                          while not qrycartera.eof do
                          begin
                               total_mora:=total_mora + qrycarteravalor_mora.Value;
                               total_mora_ben:=total_mora_ben + qrycarteravalor_mora.Value;
                               periodos_mora:=periodos_mora+qrycarteraper_compensacion.Text + ' ';
                               periodos_mora_ben:=periodos_mora_ben+qrycarteraper_compensacion.Text + ' ';
                               meses_mora:=meses_mora + 1 ;
                               meses_mora_ben:=meses_mora_ben + 1 ;
                               total_upc:= total_upc + qrycarteravalor_upc.value;
                               qrycartera.next;
                          end;
                          qrycotizantes_mora.first;
                          while not qrycotizantes_mora.eof do
                          begin
                               qrycartera_cotizante.close;
                               qrycartera_cotizante.Params[0].Text:=qrycotizantes_moratip_documento_cot.Text;
                               qrycartera_cotizante.Params[1].Text:=qrycotizantes_moranum_documento_cot.Text;
                               qrycartera_cotizante.open;
                               qrycartera_cotizante.first;
                               while not qrycartera_cotizante.eof do
                                  begin
                                       if (qrycartera_cotizantetip_documento.Text <> qrycarteratip_documento.Text) and
                                          (qrycartera_cotizantenum_documento.Text <> qrycarteranum_documento.Text) then
                                          begin
                                               documentos:=documentos+qrycartera_cotizantetip_documento.Text+' '+qrycartera_cotizantenum_documento.Text+';';
                                               total_mora:=total_mora + qrycartera_cotizantevalor_mora.Value;
                                               total_mora_cot:=total_mora_cot + qrycartera_cotizantevalor_mora.Value;
                                               periodos_mora:=periodos_mora+qrycartera_cotizanteper_compensacion.Text + ' ';
                                               periodos_mora_cot:=periodos_mora_cot+qrycartera_cotizanteper_compensacion.Text + ' ';
                                               meses_mora:=meses_mora + 1 ;
                                               meses_mora_cot:=meses_mora_cot + 1 ;
                                               qrycartera_cotizante.next;
                                          end;
                                       qrycartera_cotizante.next;
                                  end;
                               qrycotizantes_mora.next;
                          end;
                         if qryafiliadoscod_tipo_afil.text <> 'C' then
                            begin
                                   qryrelacion_afiliados.First;
                                   TabSheet5.TabVisible:=true;
                                   qrycartera_cotizante.close;
                                   qrycartera_cotizante.Params[0].Text:=qryrelacion_afiliadostip_documento_ben.Text;
                                   qrycartera_cotizante.Params[1].Text:=qryrelacion_afiliadosnum_documento_ben.Text;
                                   qrycartera_cotizante.open;
                            end
                            else
                               TabSheet5.TabVisible:=false;
                         qryregistrodecomprobaciones.Close;
    //                     qryregistrodecomprobaciones.Params[0].AsString := ;
    //                     qryregistrodecomprobaciones.Params[1].AsString := ;
                         qryregistrodecomprobaciones.Params[2].AsString := qryafiliadoscod_tipo_afil.text;
                         qryregistrodecomprobaciones.Params[3].AsString := qryafiliadoscod_estado.text;
                         qryregistrodecomprobaciones.Params[4].AsDateTime := frmafiliaciones.fecha_actual();
                         qryregistrodecomprobaciones.Params[5].AsInteger := meses_mora_ben;
                         qryregistrodecomprobaciones.Params[6].AsString := periodos_mora_ben;
                         qryregistrodecomprobaciones.Params[7].AsFloat := total_mora_ben;
                         qryregistrodecomprobaciones.Params[8].AsFloat := total_upc;
                         qryregistrodecomprobaciones.Params[9].AsString := documentos;
                         qryregistrodecomprobaciones.Params[10].AsInteger := meses_mora_cot;
                         qryregistrodecomprobaciones.Params[11].AsString := periodos_mora_cot;
                         qryregistrodecomprobaciones.Params[12].Asfloat := total_mora_cot;
                         qryregistrodecomprobaciones.Params[13].AsString := ' ';
                         qryregistrodecomprobaciones.Params[14].AsString := gb_tip_doc_usu;
                         qryregistrodecomprobaciones.Params[15].AsString := gb_num_doc_usu;
                         qryregistrodecomprobaciones.execsql;
                         edmeses.text:=inttostr(meses_mora);
                         edperiodos.Text:=periodos_mora;
                         edtotal.Text:=floattostr(total_mora);
                         qryregistro.close;
                         qryregistro.Params[0].Text:=qryafiliadostip_documento.text;
                         qryregistro.Params[1].Text:=qryafiliadosnum_documento.Text;
                         qryregistro.Open;
                    end;
                      dmafiliaciones.softeps.Commit;
                except
                      dmafiliaciones.softeps.Rollback; {on failure, undo the changes};
                      raise;
                      showMessage('Error en la seleccion de datos para los Resultados de la Comprobación de derechos');
                end;
        end;
end;

procedure Tfrmcompoder.FormCreate(Sender: TObject);
begin
        Application.OnMessage := AppMessage;
        dmafiliaciones.tbltipos_documentos.Open;
        dmafiliaciones.tblsexo.Open;
        dmafiliaciones.tblestratos.Open;
        dmafiliaciones.tbldiscapacidades.Open;
        dmafiliaciones.tblestadosciviles.Open;
        dmafiliaciones.tblestados.Open;
end;

procedure Tfrmcompoder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        action:=cafree;
end;

procedure Tfrmcompoder.Cartera1Click(Sender: TObject);
begin
      frmcartera:=Tfrmcartera.create(Application);
        try
                frmcartera.qrycartera_cotizante.close;
                frmcartera.qrycartera_cotizante.Params[0].Text:=qrycarteratip_documento_cot.Text;
                frmcartera.qrycartera_cotizante.Params[1].Text:=qrycarteranum_documento_cot.Text;
                frmcartera.qrycartera_cotizante.open;
                frmcartera.show;
        except
                frmcartera.free;
        end;
end;



procedure Tfrmcompoder.AppMessage(var Msg: TMsg; var Handled: Boolean);
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

procedure Tfrmcompoder.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
     frmafiliaciones.numerosKeypress(edit2,Key);   
end;

procedure Tfrmcompoder.Edit2Exit(Sender: TObject);
begin
    if Edit2.Text = '' then
    begin
    ShowMessage('Debe Digitar el numero de  documento del afiliado');
    end
    else
    begin
    BitBtn1.Click;
    end;
end;

procedure Tfrmcompoder.dbltiposExit(Sender: TObject);
begin
    if dbltipos.KeyValue = '' then
    begin
    ShowMessage('Debe selecionar el tipo de  documento del afiliado');
    end;

end;

end.
