unit urepradicacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  Tfrmrepradicado = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label26: TLabel;
    Label48: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrepradicado: Tfrmrepradicado;

implementation

uses Udmafiliaciones, ureporterad;

{$R *.dfm}

procedure Tfrmrepradicado.Button1Click(Sender: TObject);
begin
  dmafiliaciones.qryrepradicado.Close;
  dmafiliaciones.qryrepradicado.Prepare;
  dmafiliaciones.qryrepradicado.Params[0].Value := datetimepicker1.Date;
  dmafiliaciones.qryrepradicado.Open;
  repradicado.QuickRep1.Preview;
  repradicado.Close;
end;

end.
