unit Uarp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, DBCtrls, ExtCtrls, DB,
  DBTables;

type
  Tfrmarp = class(TForm)
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
    qrynom_arps: TStringField;
    qryfec_inclusion: TDateTimeField;
    ds: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmarp: Tfrmarp;

implementation

uses Uafiliaciones_empresas;

{$R *.dfm}

procedure Tfrmarp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        action:=cafree;
end;

procedure Tfrmarp.FormCreate(Sender: TObject);
begin
        qry.Open;
end;

procedure Tfrmarp.DBGrid1DblClick(Sender: TObject);
begin
        frmafiliacion_empresas.tblempresas.edit;
        frmafiliacion_empresas.tblempresastip_documento_arp.text:=qrytip_documento.text;
        frmafiliacion_empresas.tblempresasnum_documento_arp.text:=qrynum_documento.text;
        frmafiliacion_empresas.DBEdit16.SetFocus;
        frmarp.Free;
end;

procedure Tfrmarp.Button1Click(Sender: TObject);
var
filtro:string;
begin
  filtro:= char(039)+ edit1.Text+'%'+chr(039);
  qry.close;
  qry.sql.clear;
  qry.sql.add('SELECT arps.tip_documento,'+
                     'arps.num_documento,'+
                     'arps.nom_arps,'+
                     'arps.fec_inclusion '+
                'FROM arps');
  qry.sql.add('WHERE arps.nom_arps like '+filtro);
  qry.sql.add('Order By arps.nom_arps');
  qry.open;
end;
end.
