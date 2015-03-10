unit uasesores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, DB, Grids, DBGrids;

type
  Tfrmasesores = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label8: TLabel;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmasesores: Tfrmasesores;

implementation

uses dmcomisiones;

{$R *.dfm}

procedure Tfrmasesores.FormShow(Sender: TObject);
begin
  dmcomision.qryasesores.Open;
end;

end.
