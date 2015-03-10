unit uregcorrecion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, DB;

type
  Tfrmregcorrecion = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Button1: TButton;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmregcorrecion: Tfrmregcorrecion;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrmregcorrecion.Button1Click(Sender: TObject);
begin
  datasource1.DataSet := dmcompensa.qrymcmulsol1;
  dmcompensa.qrymcmulsol1.Close;
  dmcompensa.qrymcmulsol1.Prepare;
  dmcompensa.qrymcmulsol1.Params[0].Value := edit2.Text;
  dmcompensa.qrymcmulsol1.Params[1].Value := edit1.Text;
  dmcompensa.qrymcmulsol1.Params[2].Value := edit3.Text;
  dmcompensa.qrymcmulsol1.Open;
  dmcompensa.qrymcmulsol1.First;
end;

end.
