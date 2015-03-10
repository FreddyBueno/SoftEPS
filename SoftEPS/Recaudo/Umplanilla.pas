unit Umplanilla;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBGrids, DBTables, Grids, Mask, ExtCtrls;

type
  TfrmModificaruto = class(TForm)
    Query1num_planilla: TStringField;
    Query1emp_tipo_doc: TStringField;
    Query1emp_numero_doc: TStringField;
    Query1cod_sucursal: TStringField;
    Query1tip_declaracion: TStringField;
    Query1fec_pago: TDateTimeField;
    Query1num_planilla_corr: TStringField;
    Query1per_cotizacion: TStringField;
    Query1tot_planilla: TFloatField;
    Query1tot_aporte_per: TFloatField;
    Query1tot_incapacidad: TFloatField;
    Query1tot_licencias: TFloatField;
    Query1tot_aporte: TFloatField;
    Query1int_mora: TFloatField;
    Query1tot_aporte_mmora: TFloatField;
    Query1tot_saldo_fav: TFloatField;
    Query1tot_upc: TFloatField;
    Query1tot_pagado: TFloatField;
    Query1cod_banco: TStringField;
    Query1num_cuenta: TStringField;
    Query1val_efectivo: TFloatField;
    Query1vaL_cheque: TFloatField;
    Query1est_planilla: TStringField;
    Query1cod_oficina: TStringField;
    Query1cod_usuario: TStringField;
    Query2num_planilla: TStringField;
    Query2afi_tipo_doc: TStringField;
    Query2afi_numero_doc: TStringField;
    Query2nov_afiliado: TStringField;
    Query2dia_cotizados: TStringField;
    Query2Sal_base: TFloatField;
    Query2val_neto_nov: TFloatField;
    Query2ing_base_cot: TFloatField;
    Query2cot_obligatoria: TFloatField;
    Query2val_incapacidad_egr: TFloatField;
    Query2val_licencia_mat: TFloatField;
    Query2val_upc_adi: TFloatField;
    Query2val_total_cot: TFloatField;
    Query2det_estado: TStringField;
    ScrollBox: TScrollBox;
    Label1: TLabel;
    Editnum_planilla: TDBEdit;
    Label2: TLabel;
    Editemp_tipo_doc: TDBEdit;
    Label3: TLabel;
    Editemp_numero_doc: TDBEdit;
    Label4: TLabel;
    Editcod_sucursal: TDBEdit;
    Label5: TLabel;
    Edittip_declaracion: TDBEdit;
    Label6: TLabel;
    Editfec_pago: TDBEdit;
    Label7: TLabel;
    Editnum_planilla_corr: TDBEdit;
    Label8: TLabel;
    Editper_cotizacion: TDBEdit;
    Label9: TLabel;
    Edittot_planilla: TDBEdit;
    Label10: TLabel;
    Edittot_aporte_per: TDBEdit;
    Label11: TLabel;
    Edittot_incapacidad: TDBEdit;
    Label12: TLabel;
    Edittot_licencias: TDBEdit;
    Label13: TLabel;
    Edittot_aporte: TDBEdit;
    Label14: TLabel;
    Editint_mora: TDBEdit;
    Label15: TLabel;
    Edittot_aporte_mmora: TDBEdit;
    Label16: TLabel;
    Edittot_saldo_fav: TDBEdit;
    Label17: TLabel;
    Edittot_upc: TDBEdit;
    Label18: TLabel;
    Edittot_pagado: TDBEdit;
    Label19: TLabel;
    Editcod_banco: TDBEdit;
    Label20: TLabel;
    Editnum_cuenta: TDBEdit;
    Label21: TLabel;
    Editval_efectivo: TDBEdit;
    Label22: TLabel;
    EditvaL_cheque: TDBEdit;
    Label23: TLabel;
    Editest_planilla: TDBEdit;
    Label24: TLabel;
    Editcod_oficina: TDBEdit;
    Label25: TLabel;
    Editcod_usuario: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator: TDBNavigator;
    Panel1: TPanel;
    DataSource1: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    Query1: TQuery;
    Query2: TQuery;
    DataSource2: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmModificaruto: TfrmModificaruto;

implementation

{$R *.DFM}

procedure TfrmModificaruto.FormCreate(Sender: TObject);
begin
  Query1.Open;
  Query2.Open;
end;

end.