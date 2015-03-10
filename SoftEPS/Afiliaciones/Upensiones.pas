unit Upensiones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ComCtrls, StdCtrls, DBCtrls, ExtCtrls,
  DBTables;

type
  Tfrmpensiones = class(TForm)
    Panel1: TPanel;
    DBNavigator: TDBNavigator;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    StatusBar1: TStatusBar;
    DBGrid1: TDBGrid;
    qry: TQuery;
    qrytip_documento: TStringField;
    qrynum_documento: TStringField;
    qrynom_pensiones: TStringField;
    qryfec_inclusion: TDateTimeField;
    ds: TDataSource;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpensiones: Tfrmpensiones;

implementation

uses Uafiliaciones_empresas;

{$R *.dfm}

procedure Tfrmpensiones.DBGrid1DblClick(Sender: TObject);
begin
        frmafiliacion_empresas.tblempresas.edit;
        frmafiliacion_empresas.tblempresastip_documento_pen.text:=qrytip_documento.text;
        frmafiliacion_empresas.tblempresasnum_documento_pen.text:=qrynum_documento.text;
        frmpensiones.Free;
end;

procedure Tfrmpensiones.FormCreate(Sender: TObject);
begin
        qry.Open;
end;

procedure Tfrmpensiones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        action:=cafree;
end;

procedure Tfrmpensiones.Button1Click(Sender: TObject);
var
filtro:string;
begin
  filtro:= char(039)+ edit1.Text+'%'+chr(039);
  qry.close;
  qry.sql.clear;
  qry.sql.add('SELECT pensiones.tip_documento,'+
                     'pensiones.num_documento,'+
                     'pensiones.nom_pensiones,'+
                     'pensiones.fec_inclusion '+
                     'FROM pensiones');
  qry.sql.add('WHERE pensiones.nom_pensiones like '+filtro);
  qry.sql.add('Order By pensiones.nom_pensiones');
  qry.open;
end;

end.
