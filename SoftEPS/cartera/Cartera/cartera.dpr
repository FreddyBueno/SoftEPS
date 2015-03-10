program cartera;

uses
  Forms,
  ucartera in 'ucartera.pas' {frmcartera},
  uentrada in 'uentrada.pas' {frmentrada},
  ugcartera in 'ugcartera.pas' {frmgencartera};

{$R *.res}

begin
  Application.Initialize;
  frmentrada := tfrmentrada.create(application);
  try
  frmentrada.showmodal;
  except
    frmentrada.Free;
  end;
end.
