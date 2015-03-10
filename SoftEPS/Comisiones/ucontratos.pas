unit ucontratos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DB;

type
  Tfrmconcomision = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconcomision: Tfrmconcomision;

implementation

uses dmcomisiones;

{$R *.dfm}

procedure Tfrmconcomision.FormShow(Sender: TObject);
begin
  dmcomision.qryconcomision.Open;
end;

procedure Tfrmconcomision.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmcomision.qryconcomision.Close;
end;

end.
