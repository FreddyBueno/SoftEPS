unit ucliquidacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  Tfrmrliquidacion = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
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
  frmrliquidacion: Tfrmrliquidacion;

implementation

uses urepliquidacion;

{$R *.dfm}

procedure Tfrmrliquidacion.Button1Click(Sender: TObject);
begin
  urepliquidacion.frmrepliquidacion.Query1.Close;
  urepliquidacion.frmrepliquidacion.query1.prepare;
  urepliquidacion.frmrepliquidacion.Query1.Params[0].Value := datetimepicker1.Date;
  urepliquidacion.frmrepliquidacion.query1.Open;
  urepliquidacion.frmrepliquidacion.QuickRep1.Preview;
  urepliquidacion.frmrepliquidacion.query1.close;
end;

end.
