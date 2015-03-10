unit UEmpresas;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBGrids, DBTables, Grids, ExtCtrls, ComCtrls;

type
  Tfrmempresas = class(TForm)
    Panel1: TPanel;
    DBNavigator: TDBNavigator;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    qry: TQuery;
    qrytip_documento: TStringField;
    qrynum_documento: TStringField;
    qrycod_sucursal: TStringField;
    qrynom_empresa: TStringField;
    qrycod_actividad_eco: TStringField;
    qrycod_departamento: TStringField;
    qrycod_ciudad: TStringField;
    qrytip_aportante: TStringField;
    qrydir_empresa: TStringField;
    qrytel_empresa: TStringField;
    qrytel_empresa2: TStringField;
    ds: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmempresas: Tfrmempresas;

implementation

uses Uafiliaciones_usuarios, Ucambio_empresas, Udmafiliaciones,
  Ucar_empresas, Uafiliaciones_independientes;

{$R *.DFM}

procedure Tfrmempresas.FormCreate(Sender: TObject);
begin
  qry.Open;
end;

procedure Tfrmempresas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        action:=cafree;
end;

procedure Tfrmempresas.DBGrid1DblClick(Sender: TObject);
begin
  // empresas  de  dependientes
        if frmempresas.caption = 'Empresas Activas dependientes' then
        begin
        frmafiliacion_usuarios.qryafiliados_empresas.edit;
        frmafiliacion_usuarios.qryafiliados_empresastip_documento_emp.text:=qrytip_documento.text;
        frmafiliacion_usuarios.qryafiliados_empresasnum_documento_emp.text:=qrynum_documento.text;
        frmafiliacion_usuarios.qryafiliados_empresascod_sucursal.text:=qrycod_sucursal.text;
        frmafiliacion_usuarios.qryafiliados_empresascod_departamento_lab.text:=qrycod_departamento.text;
        frmafiliacion_usuarios.qryafiliados_empresascod_ciudad_lab.text:=qrycod_ciudad.text;
        frmafiliacion_usuarios.qryafiliados_empresasdir_afiliado_lab.text:=qrydir_empresa.text;
        frmafiliacion_usuarios.qryafiliados_empresastel_afiliado_lab.text:=qrytel_empresa.text;
        frmafiliacion_usuarios.qryafiliados_empresastel_afiliado_lab2.text:=qrytel_empresa2.text;
        frmempresas.close;
        end;

         // empresas  de  dependientes
        if frmempresas.caption = 'Empresas Activas Independientes' then
        begin
        frmafiliacion_independientes.qryafiliados_empresas.edit;
        frmafiliacion_independientes.qryafiliados_empresastip_documento_emp.text:=qrytip_documento.text;
        frmafiliacion_independientes.qryafiliados_empresasnum_documento_emp.text:=qrynum_documento.text;
        frmafiliacion_independientes.qryafiliados_empresascod_sucursal.text:=qrycod_sucursal.text;
        frmafiliacion_independientes.qryafiliados_empresascod_departamento_lab.text:=qrycod_departamento.text;
        frmafiliacion_independientes.qryafiliados_empresascod_ciudad_lab.text:=qrycod_ciudad.text;
        frmafiliacion_independientes.qryafiliados_empresasdir_afiliado_lab.text:=qrydir_empresa.text;
        frmafiliacion_independientes.qryafiliados_empresastel_afiliado_lab.text:=qrytel_empresa.text;
        frmafiliacion_independientes.qryafiliados_empresastel_afiliado_lab2.text:=qrytel_empresa2.text;
        frmempresas.close;
        end;


        if frmempresas.caption = 'Seleccion de la Nueva empresa' then
        begin
            frmcambio_empresas.qryafiliados_empresas.Edit;
            frmcambio_empresas.qryafiliados_empresastip_documento_emp.text:=qrytip_documento.text;
            frmcambio_empresas.qryafiliados_empresasnum_documento_emp.text:=qrynum_documento.text;
            frmcambio_empresas.qryafiliados_empresascod_sucursal.text:=qrycod_sucursal.text;
            frmcambio_empresas.qryafiliados_empresascod_departamento_lab.text:=qrycod_departamento.text;
            frmcambio_empresas.qryafiliados_empresascod_ciudad_lab.text:=qrycod_ciudad.text;
            frmcambio_empresas.qryafiliados_empresasdir_afiliado_lab.text:=qrydir_empresa.text;
            frmcambio_empresas.qryafiliados_empresastel_afiliado_lab.text:=qrytel_empresa.text;
            frmcambio_empresas.qryafiliados_empresastel_afiliado_lab2.text:=qrytel_empresa2.text;
            dmafiliaciones.Qryciudades.Active:=false;
            dmafiliaciones.Qryciudades.Params[0].AsString := frmcambio_empresas.qryafiliados_empresascod_departamento_lab.text;
            dmafiliaciones.Qryciudades.ExecSQL;
            dmafiliaciones.Qryciudades.Active:=true;
            frmempresas.close;
        end;
        if frmempresas.caption = 'Seleccione la Empresa' then
        begin
//              frmcar_empresas.dbltipos.text:=qrytip_documento.text;
              frmcar_empresas.Edit2.Text:=qrynum_documento.text;
              frmcar_empresas.Edit3.Text:=qrycod_sucursal.text;
              frmempresas.close;
        end;
end;

procedure Tfrmempresas.Button1Click(Sender: TObject);
var
filtro:string;
begin
  filtro:= #039+ edit1.Text+'%'+#039;
  qry.close;
  qry.sql.clear;
  qry.sql.add('Select empresas.tip_documento,'+
  'empresas.num_documento,'+
  'empresas.cod_sucursal,'+
  'empresas.nom_empresa,'+
  'empresas.cod_actividad_eco,'+
  'empresas.cod_departamento,'+
  'empresas.cod_ciudad,'+
  'empresas.tip_aportante,'+
  'empresas.dir_empresa,'+
  'empresas.tel_empresa,'+
  'empresas.tel_empresa2 '+
  'From empresas');
  qry.sql.add('Where empresas.cod_estado = '+#039+'A'+#039+' and empresas.nom_empresa like '+filtro);
  qry.sql.add('Order By empresas.tip_aportante,empresas.nom_empresa');
  qry.open; (**)
end;

end.
