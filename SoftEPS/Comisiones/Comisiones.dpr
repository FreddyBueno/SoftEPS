program Comisiones;

uses
  Forms,
  ucomisiones in 'ucomisiones.pas' {uprincipal},
  uentrada in 'uentrada.pas' {frmentrada},
  dmcomisiones in 'dmcomisiones.pas' {dmcomision: TDataModule},
  ucalculo in 'ucalculo.pas' {frmcalculo},
  ucfechacorte in 'ucfechacorte.pas' {frmcfechacorte},
  concomision in 'concomision.pas' {Form1},
  uliqcomisiones in 'uliqcomisiones.pas' {frmliquidacion},
  urepliquidacion in 'urepliquidacion.pas' {frmrepliquidacion},
  ucliquidacion in 'ucliquidacion.pas' {frmrliquidacion},
  uasesores in 'uasesores.pas' {frmasesores},
  ufeccorte in 'ufeccorte.pas' {frmfeccorte},
  ucontratos in 'ucontratos.pas' {frmconcomision};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrmentrada, frmentrada);
  Application.CreateForm(Tfrmcfechacorte, frmcfechacorte);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tfrmliquidacion, frmliquidacion);
  Application.CreateForm(Tfrmrepliquidacion, frmrepliquidacion);
  Application.CreateForm(Tfrmrliquidacion, frmrliquidacion);
  Application.CreateForm(Tfrmasesores, frmasesores);
  Application.CreateForm(Tfrmfeccorte, frmfeccorte);
  Application.CreateForm(Tfrmconcomision, frmconcomision);
  Application.Run;
end.
