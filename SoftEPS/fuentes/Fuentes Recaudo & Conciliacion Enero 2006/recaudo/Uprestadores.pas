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
    edtbuscar: TEdit;
    Label1: TLabel;
    btnbuscar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnbuscarClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmprestadores: Tfrmprestadores;

implementation

uses Uincapacidades, dtmodulo, UincapacidadesTUTELA;

{$R *.DFM}

procedure Tfrmprestadores.FormCreate(Sender: TObject);
begin
DATAMODULE1.qryprestadores.Close;
DATAMODULE1.QRYPRESTADORES.Open;
end;

procedure Tfrmprestadores.DBGrid1DblClick(Sender: TObject);
begin
IF FRMPRESTADORES.Caption='Prestadores de Salud' then
begin
    frmincapacidades.edtcodprestador.text := DATAMODULE1.qryprestadoresNIT_PRESTADOR.Value;
    frmincapacidades.edtnombreprestador.text := DATAMODULE1.qryprestadoresNOM_PRESTADOR.Value;
    frmincapacidades.edtcodprestador.setfocus;
    //frmincapacidades.edtdiasincapacidad.setfocus;
    frmprestadores.Free;
end
else if FRMPRESTADORES.Caption='Prestadores de Salud Tutela' then
begin
    frmincapacidadestutela.edtcodprestador.text := DATAMODULE1.qryprestadoresNIT_PRESTADOR.Value;
    frmincapacidadestutela.edtnombreprestador.text := DATAMODULE1.qryprestadoresNOM_PRESTADOR.Value;
    frmincapacidadestutela.edtcodprestador.setfocus;
    //frmincapacidades.edtdiasincapacidad.setfocus;
    frmprestadores.Free;
end
end;

procedure Tfrmprestadores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure Tfrmprestadores.btnbuscarClick(Sender: TObject);
begin
  IF EDTBUSCAR.TEXT <> '' THEN
  BEGIN
    DATASOURCE1.DataSet := DATAMODULE1.QRYPRESTADORES;
    DATAMODULE1.QRYPRESTADORES.CLOSE;
    DATAMODULE1.QRYPRESTADORES.SQL.CLEAR;
    DATAMODULE1.QRYPRESTADORES.SQL.ADD('SELECT * FROM PRESTADORES WHERE NOM_PRESTADOR LIKE  :"PRESTADOR" ORDER BY NOM_PRESTADOR');
    DATAMODULE1.QRYPRESTADORES.Parameters[0].VALUE := '%' + EDTBUSCAR.TEXT + '%';
    DATAMODULE1.QRYPRESTADORES.OPEN;
    IF  DATAMODULE1.QRYPRESTADORES.RECORDCOUNT = 0 THEN
    BEGIN
    SHOWMESSAGE('NO  HAY  PRESTADORES  CON ESTE  NOMBRE');
    END;
  END;

end;

end.