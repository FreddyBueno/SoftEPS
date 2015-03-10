unit Uafiliados_empresas;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBGrids, DBTables, Grids, ExtCtrls;

type
  Tfrmafiliados_empresas = class(TForm)
    Panel1: TPanel;
    DBNavigator: TDBNavigator;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    qryafiliados_empresas: TQuery;
    qryafiliados_empresastip_documento_emp: TStringField;
    qryafiliados_empresasnum_documento_emp: TStringField;
    qryafiliados_empresascod_sucursal: TStringField;
    qryafiliados_empresasnom_empresa: TStringField;
    qryafiliados_empresascod_ocupacion: TStringField;
    qryafiliados_empresasval_sueldo_afil: TFloatField;
    qryafiliados_empresascod_estado: TStringField;
    qryafiliados_empresasfec_ingreso_uni: TDateTimeField;
    qryafiliados_empresasfec_egreso_uni: TDateTimeField;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmafiliados_empresas: Tfrmafiliados_empresas;

implementation

uses Ugrupofamiliar;

{$R *.DFM}

procedure Tfrmafiliados_empresas.DBGrid1DblClick(Sender: TObject);
begin
        ii_tip_doc_emp:=qryafiliados_empresastip_documento_emp.text;
        ii_num_doc_emp:=qryafiliados_empresasnum_documento_emp.text;
        ii_cod_empresa:=qryafiliados_empresascod_sucursal.text;
        ii_fecha_ingreso:=qryafiliados_empresasfec_ingreso_uni.value;
        frmafiliados_empresas.close;
end;

procedure Tfrmafiliados_empresas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      action:=cafree;
end;

end.