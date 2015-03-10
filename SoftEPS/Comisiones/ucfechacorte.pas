unit ucfechacorte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  Tfrmcfechacorte = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcfechacorte: Tfrmcfechacorte;

implementation

uses dmcomisiones, urfeccorte, concomision;

{$R *.dfm}

procedure Tfrmcfechacorte.Button1Click(Sender: TObject);
begin
  concomision.Form1.Query1.Open;
  concomision.Form1.Query2.prepare;
  concomision.Form1.Query2.Params[2].Value := datetimepicker1.Date;
  concomision.Form1.Query2.Open;
  concomision.Form1.QuickRep1.Preview;
  concomision.Form1.Query1.close;
  concomision.Form1.Query2.close;
end;

end.
