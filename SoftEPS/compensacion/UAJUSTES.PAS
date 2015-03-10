unit uajustes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, DB, DBTables, DBCtrls;

type
  Tfrmajustes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    Splitter2: TSplitter;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    Splitter3: TSplitter;
    DBNavigator1: TDBNavigator;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmajustes: Tfrmajustes;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrmajustes.Button1Click(Sender: TObject);
begin
  dmcompensa.qrymcbasesdecalculo1.Close;
  dmcompensa.qrymcbasesdecalculo1.Prepare;
  dmcompensa.qrymcbasesdecalculo1.Params[0].Value := edit1.Text;
  dmcompensa.qrymcbasesdecalculo1.Open;
  dmcompensa.qrymcbasesdep2.Close;
  dmcompensa.qrymcbasesdep2.Prepare;
  dmcompensa.qrymcbasesdep2.Params[0].Value := edit1.Text;
  dmcompensa.qrymcbasesdep2.Open;
  dmcompensa.qrymcliquidacion.Close;
  dmcompensa.qrymcliquidacion.RequestLive := true;
  dmcompensa.qrymcliquidacion.Prepare;
  dmcompensa.qrymcliquidacion.Params[0].Value := edit1.Text;
  dmcompensa.qrymcliquidacion.Open;
end;

procedure Tfrmajustes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   dmcompensa.qrymcbasesdecalculo1.Close;
   dmcompensa.qrymcbasesdep2.Close;
   dmcompensa.qrymcliquidacion.RequestLive := false;
   dmcompensa.qrymcliquidacion.Close;
   action:=cafree;
end;

end.
