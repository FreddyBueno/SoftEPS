unit uincaplanillas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls;

type
  Tfrmincapacidadesdescontadas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    DBLookupListBox1: TDBLookupListBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmincapacidadesdescontadas: Tfrmincapacidadesdescontadas;

implementation

uses Uplanillas;

{$R *.dfm}

procedure Tfrmincapacidadesdescontadas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure Tfrmincapacidadesdescontadas.Button1Click(Sender: TObject);
begin
FRMPLANILLAS.edtnoautlicencia.Text := Edit1.text;
FRMPLANILLAS.edtvallicencia.Text := Edit2.text;
frmincapacidadesdescontadas.Close;

end;

end.
