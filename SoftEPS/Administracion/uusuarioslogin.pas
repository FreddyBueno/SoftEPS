unit uusuarioslogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, DB, DBTables;

type
  Tfrmusuarioslogin = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DataSource1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmusuarioslogin: Tfrmusuarioslogin;

implementation

uses dtmodulo, Uusuarios;

{$R *.dfm}

procedure Tfrmusuarioslogin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure Tfrmusuarioslogin.FormCreate(Sender: TObject);
begin
  DataModule1.qrylogin.SQL.Clear;
  DataModule1.qrylogin.SQL.Add('SELECT * FROM SYS.USER$');
  DataModule1.qrylogin.Open;
end;

procedure Tfrmusuarioslogin.DBGrid1DblClick(Sender: TObject);
begin
  DataModule1.qryusuariosCOD_USUARIO.Value :=  DataModule1.qryloginNAME.Value;
  frmusuarioslogin.Free;
end;

end.
