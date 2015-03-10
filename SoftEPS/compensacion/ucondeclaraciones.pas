unit ucondeclaraciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, DB, Mask;

type
  Tfrmcondecla = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    DataSource1: TDataSource;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit26: TEdit;
    Label15: TLabel;
    Edit28: TEdit;
    Label16: TLabel;
    Edit30: TEdit;
    Label17: TLabel;
    Edit32: TEdit;
    Label18: TLabel;
    Edit34: TEdit;
    Label19: TLabel;
    Edit36: TEdit;
    Edit37: TEdit;
    Label20: TLabel;
    Edit38: TEdit;
    Edit39: TEdit;
    Label21: TLabel;
    Edit40: TEdit;
    Edit41: TEdit;
    Label22: TLabel;
    Edit42: TEdit;
    Edit43: TEdit;
    Label23: TLabel;
    Edit44: TEdit;
    Label24: TLabel;
    Edit46: TEdit;
    Label25: TLabel;
    Edit48: TEdit;
    Edit15: TEdit;
    Edit50: TEdit;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    TabSheet3: TTabSheet;
    GroupBox4: TGroupBox;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    GroupBox5: TGroupBox;
    Label29: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Edit27: TEdit;
    Edit29: TEdit;
    Edit31: TEdit;
    Label35: TLabel;
    Label36: TLabel;
    GroupBox6: TGroupBox;
    Edit33: TEdit;
    Edit35: TEdit;
    Edit45: TEdit;
    Edit47: TEdit;
    Edit49: TEdit;
    Edit51: TEdit;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    GroupBox7: TGroupBox;
    Label42: TLabel;
    Image2: TImage;
    Label43: TLabel;
    Label44: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcondecla: Tfrmcondecla;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrmcondecla.Button1Click(Sender: TObject);
begin
  datasource1.DataSet := dmcompensa.qrymcbasesdecalculo1;
  dmcompensa.qrymcbasesdecalculo1.Close;
  dmcompensa.qrymcbasesdecalculo1.Prepare;
  dmcompensa.qrymcbasesdecalculo1.Params[0].Value := edit1.Text;
  dmcompensa.qrymcbasesdecalculo1.Open;
  datasource2.DataSet := dmcompensa.qrymcbasesdep2;
  dmcompensa.qrymcbasesdep2.Close;
  dmcompensa.qrymcbasesdep2.Prepare;
  dmcompensa.qrymcbasesdep2.Params[0].Value := edit1.Text;
  dmcompensa.qrymcbasesdep2.Open;
  dmcompensa.qrymcliquidacion.Close;
  dmcompensa.qrymcliquidacion.Prepare;
  dmcompensa.qrymcliquidacion.Params[0].Value := edit1.Text;
  dmcompensa.qrymcliquidacion.Open;
  edit2.Text := floattostr(dmcompensa.qrymcliquidacioning_salbase_cotiz12.Value);
  edit3.Text := floattostr(dmcompensa.qrymcliquidacionval_total_reca12.Value);
  edit4.Text := floattostr(dmcompensa.qrymcliquidacionval_deducido_aut12.Value);
  edit5.Text := floattostr(dmcompensa.qrymcliquidacionval_total_cotiz12.Value);
  edit6.Text := floattostr(dmcompensa.qrymcliquidacionval_solidaridad_12.Value);
  edit7.Text := floattostr(dmcompensa.qrymcliquidacionval_pyp12.Value);
  edit8.Text := floattostr(dmcompensa.qrymcliquidacionpro_incapacidades12.Value);
  edit9.Text := floattostr(dmcompensa.qrymcliquidacionval_cotizacion_net12.Value);
  edit10.Text := floattostr(dmcompensa.qrymcliquidacionval_lincencias_mat12.Value);
  edit11.Text := floattostr(dmcompensa.qrymcliquidacionval_reconocer_upc12.Value);
  edit12.Text := floattostr(dmcompensa.qrymcliquidacionval_pagcobrar_fsg12.Value);
  edit13.Text := floattostr(dmcompensa.qrymcliquidacionval_pagcobrar_fsg12.Value+ dmcompensa.qryliquidacionval_pagcobrar_fsg8.Value);
  edit14.Text := floattostr(dmcompensa.qrymcliquidacioning_salbase_cotiz8.Value);
  edit25.Text := floattostr(dmcompensa.qrymcliquidacionval_total_reca8.Value);
  edit24.Text := floattostr(dmcompensa.qrymcliquidacionval_deducido_aut8.Value);
  edit23.Text := floattostr(dmcompensa.qrymcliquidacionval_total_cotiz8.Value);
  edit22.Text := floattostr(dmcompensa.qrymcliquidacionval_solidaridad_8.Value);
  edit21.Text := floattostr(dmcompensa.qrymcliquidacionval_pyp8.Value);
  edit20.Text := floattostr(dmcompensa.qrymcliquidacionpro_incapacidades8.Value);
  edit19.Text := floattostr(dmcompensa.qrymcliquidacionval_cotizacion_net8.Value);
  edit18.Text := floattostr(dmcompensa.qrymcliquidacionval_licencias_mat8.Value);
  edit17.Text := floattostr(dmcompensa.qrymcliquidacionval_reconocer_upc8.Value);
  edit16.Text := floattostr(dmcompensa.qrymcliquidacionval_pagcobrar_fsg8.Value);
  edit26.Text := floattostr(dmcompensa.qrymcliquidacionnum_autoliquidaciones.Value);
  edit28.Text := floattostr(dmcompensa.qrymcliquidacionval_pago_incap.Value);
  edit30.Text := floattostr(dmcompensa.qrymcliquidaciontot_cotizaciones_noident.Value);
  edit32.Text := floattostr(dmcompensa.qrymcliquidacionnum_tot_afil.Value);
  edit34.Text := floattostr(dmcompensa.qrymcliquidacionnum_total_cotiz8.Value);
  edit36.Text := floattostr(dmcompensa.qrymcliquidaciontot_afiliados_ind.Value);
  edit37.Text := floattostr(dmcompensa.qrymcliquidacionibc_afiliados_ind.Value);
  edit38.Text := floattostr(dmcompensa.qrymcliquidaciontot_madres_comu.Value);
  edit39.Text := floattostr(dmcompensa.qrymcliquidacionibc_madres_comu.Value);
  edit40.Text := floattostr(dmcompensa.qrymcliquidaciontot_madrescomu_comp.Value);
  edit41.Text := floattostr(dmcompensa.qrymcliquidacionibc_madrescomu_comp.Value);
  edit42.Text := floattostr(dmcompensa.qrymcliquidaciontot_miembros_adicdep.Value);
  edit43.Text := floattostr(dmcompensa.qrymcliquidacionrec_miembros_adicdep.Value);
  edit44.Text := floattostr(dmcompensa.qrymcliquidaciontot_incapacidades_pag.Value);
  edit46.Text := floattostr(dmcompensa.qrymcliquidacionval_recaudo_brut.Value);
  edit48.Text := floattostr(dmcompensa.qrymcliquidacionval_licenciaas_pag.Value);
  edit15.Text := floattostr(dmcompensa.qrymcliquidacionval_aportes_neto.Value);
  edit50.Text := floattostr(dmcompensa.qrymcliquidacionrec_acumulado_per_comp.Value);
  edit27.Text := floattostr(dmcompensa.qrymcliquidacionval_promocion.Value);
  edit29.Text := floattostr(dmcompensa.qrymcliquidacionval_reconocer_pyp.Value);
  edit31.Text := floattostr(dmcompensa.qrymcliquidacionsal_compensar_prom.Value);
  edit33.Text := datetostr(dmcompensa.qrymcliquidacionfec_consignacion_solid.Value);
  edit35.Text := datetostr(dmcompensa.qrymcliquidacionfec_consignacion_pro.Value);
  edit45.Text := datetostr(dmcompensa.qrymcliquidacionfec_consignacion_pro.Value);
  edit47.Text := floattostr(dmcompensa.qrymcliquidacionval_consignacion_solid.Value);
  edit49.Text := floattostr(dmcompensa.qrymcliquidacionval_consignacion_promocion.Value);
  edit51.Text := floattostr(dmcompensa.qrymcliquidacionval_consignado_comp.Value);
end;

procedure Tfrmcondecla.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   dmcompensa.qrymcbasesdecalculo1.Close;
   dmcompensa.qrymcbasesdep2.Close;
   dmcompensa.qrymcliquidacion.Close;
  action := cafree;
end;

end.
