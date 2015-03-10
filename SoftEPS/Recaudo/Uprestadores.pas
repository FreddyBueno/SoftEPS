unit Uprestadores;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBGrids, DBTables, Grids, ExtCtrls;

type
  Tfrmprestadores = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator: TDBNavigator;
    Panel1: TPanel;
    DataSource1: TDataSource;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmprestadores: Tfrmprestadores;

implementation

uses Uincapacidades, dtmodulo;

{$R *.DFM}

procedure Tfrmprestadores.FormCreate(Sender: TObject);
begin
DATAMODULE1.QRYPRESTADORES.Open
end;

procedure Tfrmprestadores.DBGrid1DblClick(Sender: TObject);
begin
    frmincapacidades.edtcodprestador.text := DATAMODULE1.qryprestadoresCOD_PRESTADOR.Value;
    frmincapacidades.edtnombreprestador.text := DATAMODULE1.qryprestadoresMON_PRESTADOR.Value;
    frmincapacidades.edtcodprestador.setfocus;
    frmprestadores.Free;
end;

procedure Tfrmprestadores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=cafree;
end;

end.