program Prrecaudo2;

uses
  Forms,
  prRecaudo1 in 'prRecaudo1.pas' {Form2},
  Recaudo1 in 'Recaudo1.pas' {Form1},
  Recaudo3 in 'Recaudo3.pas' {Form3},
  RASAPI in 'rasapi.pas',
  uvalidaips in 'uvalidaips.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
