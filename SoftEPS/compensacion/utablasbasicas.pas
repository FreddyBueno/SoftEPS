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
    TabSheet5: TTabSheet;
    Panel7: TPanel;
    Panel18: TPanel;
    DBNavigator4: TDBNavigator;
    Panel19: TPanel;
    DBGrid5: TDBGrid;
    TabSheet7: TTabSheet;
    Panel9: TPanel;
    Panel22: TPanel;
    DBNavigator6: TDBNavigator;
    Panel23: TPanel;
    DBGrid6: TDBGrid;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
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

uses dmcompensacion;

{$R *.dfm}

procedure Tfrmtablasbasicas.Button1Click(Sender: TObject);
var i,j : integer;
    upc,riesgo,est,upces : real;
begin
   dmcompensa.qrymcestcos1.close;
   dmcompensa.qrymcestcos1.Params[0].Value := strtodate(combobox1.Text);
   dmcompensa.qrymcestcos1.Open;
   dmcompensa.qrymcestcos1.RecordCount;
   dmcompensa.tbletareos.Close;
   dmcompensa.tbletareos.ReadOnly := true;
   dsetareos.DataSet := dmcompensa.tbletareos;
   dmcompensa.tbletareos.open;
   dsvalores.DataSet := dmcompensa.qrymcvalores;
   dmcompensa.qrymcvalores.close;
   dmcompensa.qrymcvalores.Params[0].Value := strtodate(combobox1.Text);
   dmcompensa.qrymcvalores.open;
   dmcompensa.tblinteres.Close;
   dmcompensa.tblinteres.ReadOnly := true;
   dsinteres.DataSet := dmcompensa.tblinteres;
   dmcompensa.tblinteres.open;
   dsupcs.DataSet := dmcompensa.qrymcupcs1;
   dmcompensa.qrymcupcs1.open;
end;

procedure Tfrmtablasbasicas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmcompensa.tblinteres.Close;
  dmcompensa.tbletareos.Close;
  dmcompensa.tblinteres.ReadOnly := false;
  dmcompensa.tblinteres.ReadOnly := false;
     action:=cafree;
end;

end.
