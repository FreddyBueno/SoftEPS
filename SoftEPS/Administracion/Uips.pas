unit Uips;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBGrids, DBTables, Grids, ExtCtrls;

type
  Tfrmips = class(TForm)
    Query1COD_PRESTADOR: TStringField;
    Query1MON_PRESTADOR: TStringField;
    Query1NUM_ACREDITACION: TStringField;
    Query1COD_DEPARTAMENTO: TStringField;
    Query1COD_CIUDAD: TStringField;
    Query1DIR_PRESTADOR: TStringField;
    Query1TEL_PRESTADOR: TStringField;
    Query1REP_LEGAL: TStringField;
    Query1NIV_ATEN_PRESTADOR: TStringField;
    Query1TIP_PRESTADOR: TStringField;
    Query1TIP_IDENTIFICACION: TStringField;
    Query1NUM_IDENTIFICACION: TStringField;
    Query1CLA_PRESTADOR: TStringField;
    Query1REC_COPAGO: TStringField;
    Query1REC_CUOTA: TStringField;
    Query1EST_PRESTADOR: TStringField;
    Query1FEC_ULTIMA_AUTO: TDateTimeField;
    Query1EST_CONTRATO: TStringField;
    Query1COD_REGINAL: TStringField;
    Query1COD_OFICINA: TStringField;
    Query1FEC_INGRESO: TDateTimeField;
    Query1DIR_ELECTRONICA: TStringField;
    DBGrid1: TDBGrid;
    DBNavigator: TDBNavigator;
    Panel1: TPanel;
    DataSource1: TDataSource;
    Panel2: TPanel;
    Query1: TQuery;
    Panel3: TPanel;
    Image1: TImage;
    Label47: TLabel;
    Label48: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmips: Tfrmips;

implementation

{$R *.DFM}

procedure Tfrmips.FormCreate(Sender: TObject);
begin
  Query1.Open;
end;

procedure Tfrmips.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
end;

end.