unit ucomisiones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, ToolWin, ComCtrls;

type
  Tuprincipal = class(TForm)
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    Procesos1: TMenuItem;
    Consultas1: TMenuItem;
    Acercade1: TMenuItem;
    ConfigurarImpresora1: TMenuItem;
    Salir1: TMenuItem;
    CalculodeComisiones1: TMenuItem;
    ComisionesPorAsesor1: TMenuItem;
    Image1: TImage;
    ToolBar1: TToolBar;
    PrinterSetupDialog1: TPrinterSetupDialog;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    LiquidacionComisiones1: TMenuItem;
    LiquidacionComisionesPorFechadeCorte1: TMenuItem;
    FechasdeCorte1: TMenuItem;
    N1: TMenuItem;
    ManejoAsesores1: TMenuItem;
    ContratosAsesores1: TMenuItem;
    procedure Salir1Click(Sender: TObject);
    procedure ConfigurarImpresora1Click(Sender: TObject);
    procedure CalculodeComisiones1Click(Sender: TObject);
    procedure ComisionesPorAsesor1Click(Sender: TObject);
    procedure LiquidacionComisiones1Click(Sender: TObject);
    procedure LiquidacionComisionesPorFechadeCorte1Click(Sender: TObject);
    procedure IngresodeAsesore1Click(Sender: TObject);
    procedure FechasdeCorte1Click(Sender: TObject);
    procedure ManejoAsesores1Click(Sender: TObject);
    procedure ContratosAsesores1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uprincipal: Tuprincipal;

implementation

uses ucalculo, ucfechacorte, uliqcomisiones, ucliquidacion, uasesores,
  ufeccorte, dmcomisiones, ucontratos;

{$R *.dfm}

procedure Tuprincipal.Salir1Click(Sender: TObject);
begin
  close;
end;

procedure Tuprincipal.ConfigurarImpresora1Click(Sender: TObject);
begin
 printersetupdialog1.Execute;
end;

procedure Tuprincipal.CalculodeComisiones1Click(Sender: TObject);
begin
  frmcalculo := tfrmcalculo.create(application);
  try
  frmcalculo.show;
  except
  frmcalculo.free;
  end;

end;

procedure Tuprincipal.ComisionesPorAsesor1Click(Sender: TObject);
begin
  frmcfechacorte := tfrmcfechacorte.create(application);
  try
  frmcfechacorte.show;
  except
  frmcfechacorte.free;
  end;
end;

procedure Tuprincipal.LiquidacionComisiones1Click(Sender: TObject);
begin
  frmliquidacion := tfrmliquidacion.create(application);
  try
  frmliquidacion.show;
  except
  frmliquidacion.free;
  end;
end;

procedure Tuprincipal.LiquidacionComisionesPorFechadeCorte1Click(
  Sender: TObject);
begin
  frmrliquidacion := tfrmrliquidacion.create(application);
  try
  frmrliquidacion.show;
  except
  frmrliquidacion.free;
  end;
end;

procedure Tuprincipal.IngresodeAsesore1Click(Sender: TObject);
begin
  frmasesores := tfrmasesores.create(application);
  try
  frmasesores.show;
  except
  frmasesores.free;
  end;
end;

procedure Tuprincipal.FechasdeCorte1Click(Sender: TObject);
begin
  frmfeccorte := tfrmfeccorte.create(application);
  try
  frmfeccorte.show;
  except
  frmfeccorte.free;
  end;
end;

procedure Tuprincipal.ManejoAsesores1Click(Sender: TObject);
begin
  frmasesores := tfrmasesores.create(application);
  try
  frmasesores.show;
  except
  frmasesores.free;
  end;
end;

procedure Tuprincipal.ContratosAsesores1Click(Sender: TObject);
begin
  frmconcomision := tfrmconcomision.create(application);
  try
  frmconcomision.show;
  except
  frmconcomision.free;
  end;
end;

end.
