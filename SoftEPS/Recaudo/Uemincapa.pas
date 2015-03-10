unit Uemincapa;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBGrids, Grids, ExtCtrls;

type
  Tfrmempresas = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator: TDBNavigator;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmempresas: Tfrmempresas;

implementation

uses Uglobal, dtmodulo, Uplanillas;

{$R *.DFM}

procedure Tfrmempresas.FormCreate(Sender: TObject);
begin
DataModule1.dtsempresas.DataSet := DataModule1.qrylistaempresas;
DataModule1.qrylistaempresas.Active := true;
end;

procedure Tfrmempresas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure Tfrmempresas.DBGrid1DblClick(Sender: TObject);
var tipo : string;
begin
  // DataModule1.qrylistaempresas.Edit;
    if DataModule1.qrylistaempresastip_documento.text = 'NIT' THEN
    begin
    frmplanillas.cbtipodocempresa.ItemIndex := 1;
    end
    else if DataModule1.qrylistaempresastip_documento.text = 'CC' THEN
         begin
         frmplanillas.cbtipodocempresa.ItemIndex := 0;
         end
         else if DataModule1.qrylistaempresastip_documento.text = 'CE' THEN
              begin
              frmplanillas.cbtipodocempresa.ItemIndex := 2;
              end
              else if DataModule1.qrylistaempresastip_documento.text = 'TI' THEN
                   begin
                   frmplanillas.cbtipodocempresa.ItemIndex := 3;
                   end;

   frmplanillas.ednumero.text := DataModule1.qrylistaempresasnum_documento.text;
   frmplanillas.edtsucursal.text:= DataModule1.qrylistaempresascod_sucursal.text;
   frmempresas.Free;

end;

end.
