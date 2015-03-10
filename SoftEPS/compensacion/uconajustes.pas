unit uconajustes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB;

type
  Tfrmconajustes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconajustes: Tfrmconajustes;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrmconajustes.Button1Click(Sender: TObject);
begin
  {dmcompensa.qrymcconajustes.Close;
  dmcompensa.qrymcconajustes.Prepare;
  dmcompensa.qrymcconajustes.Params[0].Value := strtofloat(edit1.Text);
  dmcompensa.qrymcconajustes.Open;}
end;

procedure Tfrmconajustes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
