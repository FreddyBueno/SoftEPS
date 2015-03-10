program RIPS;

uses
  Forms,
  urips1 in 'urips1.pas' {Form1},
  Uaf in 'Uaf.pas' {faf},
  Uacercade in 'Uacercade.pas' {Acercade};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tfaf, faf);
  Application.CreateForm(TAcercade, Acercade);
  Application.Run;
end.
