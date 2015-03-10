unit ufeccorte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  Tfrmfeccorte = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfeccorte: Tfrmfeccorte;

implementation

uses dmcomisiones;

{$R *.dfm}

procedure Tfrmfeccorte.FormShow(Sender: TObject);
begin
    dmcomisiones.dmcomision.qryfeccorte.Open;
end;

end.
