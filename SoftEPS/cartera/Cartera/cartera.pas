unit cartera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, ComCtrls, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Database1: TDatabase;
    Query1: TQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    Query1tip_documento: TStringField;
    Query1num_documento: TStringField;
    Query1pri_nombre: TStringField;
    Query1pri_apellido: TStringField;
    Query1nom_empresa: TStringField;
    Query1per_compensacion: TStringField;
    Query1tipo_mora: TStringField;
    Query1valor_mora: TFloatField;
    Query1valor_upc: TFloatField;
    Query1interes: TFloatField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
   mora: real;
   upc : real;
begin
  query1.Close;
  query1.Prepare;
  query1.Params[0].Value := edit1.Text;
  query1.Params[1].Value := edit2.Text;
  query1.Open;
  query1.First;
  mora := 0;
  upc := 0;
  while not query1.Eof do
  begin
    if query1valor_mora.value >0 then
       mora := mora + query1valor_mora.value + query1interes.Value;
    if query1valor_upc.value >0 then
       upc  := upc + query1valor_upc.value;
    query1.Next;
  end;
  edit3.Text := floattostr(mora);
  edit4.Text := floattostr(upc);
end;

end.
