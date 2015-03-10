unit Uplanillanrs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, DBCtrls;

type
  Tfrmplanillasnrs = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmplanillasnrs: Tfrmplanillasnrs;

implementation

uses dtmodulo, Uglobal;

{$R *.dfm}

procedure Tfrmplanillasnrs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := caFree;
end;

procedure Tfrmplanillasnrs.FormCreate(Sender: TObject);
begin
     DataModule1.qrydetalle.close;
     DataModule1.qrydetalle.Prepare;
     DataModule1.qrydetalle.sql.clear;
     DataModule1.qrydetalle.sql.add('SELECT det_planilla_autoliquidacion.* FROM det_planilla_autoliquidacion(index ixdet_estado),autoliquidacion( index ix_numero_periodo)');
     DataModule1.qrydetalle.sql.add('where det_planilla_autoliquidacion.per_presentacion = :"periodo"  and  det_planilla_autoliquidacion.det_estado = :"estado" and');
     DataModule1.qrydetalle.sql.add('autoliquidacion.num_planilla = det_planilla_autoliquidacion.num_planilla order by det_planilla_autoliquidacion.num_planilla');
     DataModule1.qrydetalle.Params[0].AsString := glpresentacion ;
     DataModule1.qrydetalle.Params[1].AsString := 'NRS';
     DataModule1.qrydetalle.RequestLive := false;
     DataModule1.qrydetalle.open;
        if DataModule1.qrydetalle.RecordCount = 1 then
        begin
        ShowMessage(' No Hay  Usuarios  Nrs  pendientes de  compensar');
       end;
end;

procedure Tfrmplanillasnrs.DBGrid2DblClick(Sender: TObject);
begin
        DataModule1.qryautoliquidacion.close;
        DataModule1.qryautoliquidacion.Prepare;
        DataModule1.qryautoliquidacion.RequestLive := false;
        DataModule1.qryautoliquidacion.sql.clear;
        DataModule1.qryautoliquidacion.sql.add('SELECT * FROM autoliquidacion(index ixnum_planilla)  WHERE  num_planilla = :"Planilla"');
        DataModule1.qryautoliquidacion.Params[0].AsString := DataModule1.qrydetallenum_planilla.value;
        DataModule1.qryautoliquidacion.open;

        DataModule1.qryafiliadosempresa.close;
        DataModule1.qryafiliadosempresa.Prepare;
        DataModule1.qryafiliadosempresa.RequestLive := false;
        DataModule1.qryafiliadosempresa.SQL.Clear;
        DataModule1.qryafiliadosempresa.SQL.Add('select * from afiliados_empresas(index ixtip_doc_num_doc) where tip_documento_afi+num_documento_afi not in (select afi_tipo_doc+afi_numero_doc from det_planilla_autoliquidacion where num_planilla = :"numplanilla")');
        DataModule1.qryafiliadosempresa.SQL.Add('and tip_documento_emp = :"NIT" and num_documento_emp = :"empresa" and  (fec_ingreso_uni <= :"fechai") and ((fec_egreso_uni >= :"fechaf") or fec_egreso_uni is null)');
        DataModule1.qryafiliadosempresa.Params[0].AsString := DataModule1.qrydetallenum_planilla.value;
        DataModule1.qryafiliadosempresa.Params[1].AsString := DataModule1.qryautoliquidacionemp_tipo_doc.value;
        DataModule1.qryafiliadosempresa.Params[2].AsString := DataModule1.qryautoliquidacionemp_numero_doc.value;
        DataModule1.qryafiliadosempresa.Params[3].Asdate := strtodate('01/' + DataModule1.qrydetalleper_cotizacion.value);
        DataModule1.qryafiliadosempresa.Params[4].Asdate := strtodate('01/' + DataModule1.qrydetalleper_cotizacion.value);
        DataModule1.qryafiliadosempresa.open;



end;

end.
