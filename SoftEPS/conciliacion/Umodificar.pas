unit Umodificar;

interface

uses
  Windows, Messages, SysUtils,  Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids;

type
  Tfrmmodificar = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dbcbbancos: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmodificar: Tfrmmodificar;

implementation

uses Ubancos, dtmodulo;

{$R *.dfm}

procedure Tfrmmodificar.FormCreate(Sender: TObject);
begin
DataModule1.qrybancos.Open;
end;

procedure Tfrmmodificar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

end.
