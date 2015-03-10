unit utablasbasicas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, DBCtrls, ExtCtrls, ComCtrls, Math;

type
  Tfrmtablasbasicas = class(TForm)
    dsqestcos: TDataSource;
    Panel12: TPanel;
    Panel13: TPanel;
    Button1: TButton;
    Label1: TLabel;
    dsvalores: TDataSource;
    dssal_min: TDataSource;
    dsupcs: TDataSource;
    dsupczon: TDataSource;
    dsetareos: TDataSource;
    dsinteres: TDataSource;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Image1: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    Panel10: TPanel;
    nagrueta: TDBNavigator;
    Panel11: TPanel;
    DBGrid2: TDBGrid;
    TabSheet3: TTabSheet;
    Panel5: TPanel;
    Panel14: TPanel;
    DBNavigator2: TDBNavigator;
    Panel15: TPanel;
    DBGrid3: TDBGrid;
    TabSheet7: TTabSheet;
    Panel9: TPanel;
    Panel22: TPanel;
    DBNavigator6: TDBNavigator;
    Panel23: TPanel;
    DBGrid6: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtablasbasicas: Tfrmtablasbasicas;

implementation

uses dtmodulo;



{$R *.dfm}

procedure Tfrmtablasbasicas.Button1Click(Sender: TObject);
var i,j : integer;
    upc,riesgo,est,upces : real;
begin

   datamodule1.qrymcestcos1.close;
   datamodule1.qrymcestcos1.Params[0].Value := strtodate(combobox1.Text);
   datamodule1.qrymcestcos1.Open;
   datamodule1.qrymcestcos1.RecordCount;
   datamodule1.tbletareos.Close;
   dsetareos.DataSet := datamodule1.tbletareos;
   datamodule1.tbletareos.open;
   dsvalores.DataSet := datamodule1.qrymcvalores;
   datamodule1.qrymcvalores.close;
   datamodule1.qrymcvalores.Params[0].Value := strtodate(combobox1.Text);
   datamodule1.qrymcvalores.open;
   datamodule1.tblinteres.Close;
   dsinteres.DataSet := datamodule1.tblinteres;
   datamodule1.tblinteres.open;
end;

procedure Tfrmtablasbasicas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  datamodule1.tblinteres.Close;
  datamodule1.tbletareos.Close;
     action:=cafree;
end;

end.
