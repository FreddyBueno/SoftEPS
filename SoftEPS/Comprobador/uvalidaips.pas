unit uvalidaips;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Recaudo1;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
  form1.edit3.text := edit1.Text;
  form1.edit4.text := edit2.Text;
  form4.close;
end;

end.
