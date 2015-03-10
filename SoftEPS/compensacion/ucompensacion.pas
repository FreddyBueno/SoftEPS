unit ucompensacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, ComCtrls, ToolWin, ActnMan, ActnCtrls,
  ActnMenus, ActnList, ImgList;

type
  TModulo_Compensacion = class(TForm)
    MainMenu1: TMainMenu;
    ablasBasicas1: TMenuItem;
    Acercade1: TMenuItem;
    ToolBar1: TToolBar;
    ToolBar2: TToolBar;
    Archivo1: TMenuItem;
    Compensacion2: TMenuItem;
    Procesos1: TMenuItem;
    Cierres3: TMenuItem;
    PrecierreAutoliquidacion1: TMenuItem;
    CierreAutoliquidacion1: TMenuItem;
    ReversionCierreAutoliquidacion1: TMenuItem;
    Salir2: TMenuItem;
    ArchivosCompensacion1: TMenuItem;
    ConfigurarImpresora1: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    CambioAutomaticodePeriodo1: TMenuItem;
    ablasBasicas21: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ImageList1: TImageList;
    StatusBar1: TStatusBar;
    GeneraciondeIngresosUPC1: TMenuItem;
    ToolButton17: TToolButton;
    AjustesPorNumerodeDeclaracion1: TMenuItem;
    GeneracionContabilidad1: TMenuItem;
    GeneracionReporteValoresaGirarCobrar1: TMenuItem;
    CargueArchivodeMultiafiliadosFisalud1: TMenuItem;
    CruceAfiliadosCompensadosMultiafiliados1: TMenuItem;
    DatosPorDeclaracion1: TMenuItem;
    GeneracionFormatoDGCPorDeclaracion1: TMenuItem;
    GeneracionArchivo00711: TMenuItem;
    GeneracionArchivo00721: TMenuItem;
    GeneracionArchivo00731: TMenuItem;
    GeneracionArchivo00751: TMenuItem;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton22: TToolButton;
    ToolButton24: TToolButton;
    ToolButton7: TToolButton;
    ToolButton23: TToolButton;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolButton27: TToolButton;
    ToolButton28: TToolButton;
    Multiafiliados1: TMenuItem;
    CierreAutoliquidacionExclusionMultiafiliados2: TMenuItem;
    ToolButton30: TToolButton;
    ToolButton6: TToolButton;
    GeneracionArchivosRes89020021: TMenuItem;
    GeneracionArchivosCapitacionyRecapitacion1: TMenuItem;
    ToolButton5: TToolButton;
    ToolButton8: TToolButton;
    ToolButton14: TToolButton;
    ToolButton29: TToolButton;
    GeneracionAnexoTecnicoBNURC1: TMenuItem;
    ToolButton11: TToolButton;
    GeneracionFormatoSNSIE491: TMenuItem;
    N1: TMenuItem;
    MultiafiliadosSolucionados1: TMenuItem;
    CierreAutoliquidacionMultiafiliadosSolucionados1: TMenuItem;
    Correciones1: TMenuItem;
    CorreciondeInconsistenciasDeclaracion1: TMenuItem;
    GeneracionCorrecionDeclaracion1: TMenuItem;
    Impresion1: TMenuItem;
    CargueArchivodeErroresFisalud1: TMenuItem;
    ActualizacionEstadosPlanillasCompensadas1: TMenuItem;
    ArchivosResolucion23091: TMenuItem;
    GeneracionReporteValoresaGirarCobrarAcumuladoPorPeriodo1: TMenuItem;
    GeneracionCircularExterna0051: TMenuItem;
    GeneracionCifrasdeControl1: TMenuItem;
    CierredeCompensacion1: TMenuItem;
    ArchivosMagneticos1: TMenuItem;
    CifrasdeControl1: TMenuItem;
    MadresComunitarias2: TMenuItem;
    ImpresionFormatoMC11: TMenuItem;
    ReversionCompensacion1: TMenuItem;
    AnalisisMedioMagnetico1: TMenuItem;
    AnalisisGlosasRealizadasalaEPS1: TMenuItem;
    AnalisisValoresDeclaracionPorDeptoMcpio1: TMenuItem;
    GeneracionFormatoA11: TMenuItem;
    AdministracionDeclaraci: TMenuItem;
    procedure Salir1Click(Sender: TObject);
    procedure Salir2Click(Sender: TObject);
    procedure ArchivosCompensacion1Click(Sender: TObject);
    procedure CierreAutoliquidacion1Click(Sender: TObject);
    procedure PlanillasConNrs1Click(Sender: TObject);
    procedure IBCSalarioMinimodelAo1Click(Sender: TObject);
    procedure Cotizaciones121Click(Sender: TObject);
    procedure InconsistenciasenDeducciones1Click(Sender: TObject);
    procedure PlanillasconEmpresasNrs1Click(Sender: TObject);
    procedure InconsistenciasenTotales1Click(Sender: TObject);
    procedure InconsistenciasenSituadoFiscal1Click(Sender: TObject);
    procedure ConfigurarImpresora1Click(Sender: TObject);
    procedure PlanillasConInconsistenciaenPagosdeUPC1Click(
      Sender: TObject);
    procedure ReversionCierreAutoliquidacion1Click(Sender: TObject);
    procedure GeneracionCartera1Click(Sender: TObject);
    procedure CambioAutomaticodePeriodo1Click(Sender: TObject);
    procedure PlanillasConInconsistenciasenTipodeDeclaracion1Click(
      Sender: TObject);
    procedure ablasBasicas21Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure PrecierreAutoliquidacion1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GeneraciondeIngresosUPC1Click(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure CierreAutoliquidacionExclusionMultiafiliados1Click(
      Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure AjustesPorNumerodeDeclaracion1Click(Sender: TObject);
    procedure ToolButton19Click(Sender: TObject);
    procedure GeneracionContabilidad1Click(Sender: TObject);
    procedure ToolButton20Click(Sender: TObject);
    procedure GeneracionReporteValoresaGirarCobrar1Click(Sender: TObject);
    procedure ToolButton21Click(Sender: TObject);
    procedure ToolButton22Click(Sender: TObject);
    procedure CargueArchivodeMultiafiliadosFisalud1Click(Sender: TObject);
    procedure ToolButton24Click(Sender: TObject);
    procedure CruceAfiliadosCompensadosMultiafiliados1Click(
      Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure DatosPorDeclaracion1Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure AjustesRealizadosADeclaracion1Click(Sender: TObject);
    procedure ToolButton23Click(Sender: TObject);
    procedure GeneracionFormatoDGCPorDeclaracion1Click(Sender: TObject);
    procedure ToolButton25Click(Sender: TObject);
    procedure GeneracionArchivo00711Click(Sender: TObject);
    procedure ToolButton26Click(Sender: TObject);
    procedure GeneracionArchivo00721Click(Sender: TObject);
    procedure CierreAutoliquidacionExclusionMultiafiliados2Click(
      Sender: TObject);
    procedure ToolButton30Click(Sender: TObject);
    procedure GeneracionArchivo00731Click(Sender: TObject);
    procedure ToolButton27Click(Sender: TObject);
    procedure GeneracionArchivosRes89020021Click(Sender: TObject);
    procedure GeneracionArchivosCapitacionyRecapitacion1Click(
      Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton29Click(Sender: TObject);
    procedure GeneracionAnexoTecnicoBNURC1Click(Sender: TObject);
    procedure GeneracionFormatoSNSIE491Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure MultiafiliadosSolucionados1Click(Sender: TObject);
    procedure CierreAutoliquidacionMultiafiliadosSolucionados1Click(
      Sender: TObject);
    procedure CorreciondeInconsistenciasDeclaracion1Click(Sender: TObject);
    procedure GeneracionCorrecionDeclaracion1Click(Sender: TObject);
    procedure Impresion1Click(Sender: TObject);
    procedure CargueArchivodeErroresFisalud1Click(Sender: TObject);
    procedure ActualizacionEstadosPlanillasCompensadas1Click(
      Sender: TObject);
    procedure ArchivosResolucion23091Click(Sender: TObject);
    procedure GeneracionReporteValoresaGirarCobrarAcumuladoPorPeriodo1Click(
      Sender: TObject);
    procedure GeneracionCircularExterna0051Click(Sender: TObject);
    procedure GeneracionCifrasdeControl1Click(Sender: TObject);
    procedure CierredeCompensacion1Click(Sender: TObject);
    procedure CifrasdeControl1Click(Sender: TObject);
    procedure ImpresionFormatoMC11Click(Sender: TObject);
    procedure ReversionCompensacion1Click(Sender: TObject);
    procedure ArchivosMagneticos1Click(Sender: TObject);
    procedure AnalisisMedioMagnetico1Click(Sender: TObject);
    procedure AnalisisGlosasRealizadasalaEPS1Click(Sender: TObject);
    procedure AnalisisValoresDeclaracionPorDeptoMcpio1Click(
      Sender: TObject);
    procedure GeneracionFormatoA11Click(Sender: TObject);
    procedure AdministracionDeclaraciClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Modulo_Compensacion: TModulo_Compensacion;

implementation

uses dmcompensacion, ugendeclaraciones, ucierre,
     urevcierre, ugencartera, ucamperiodo,
     utablasbasicas, uvalidacion, ugenupcxmcpio, umulti, uajustes,
  ucuentascontables, ugenrelval, uarchmul, ucruce, ucondeclaraciones,
  uconajustes, ugendeclacion, ufgcg, ufgcdabc, ufgcdad, ures890, ucapita,
  unur, usnsie49, usolmul, uciemulsol, uregcorrecion, ugcorrecion,
  ugdcorrecion, uarcherr, uentrada, uactestado, uarch2309, urelvalper,
  ucir005, ucifras, ucierremc, ucifrasmc, ugendeclaracionemc1, urevcierremc,
  umagmc, uanamul, uanaglosas, uvaldec, uformatoa1, uadmdec;

{$R *.dfm}

procedure TModulo_Compensacion.Salir1Click(Sender: TObject);
begin
  close;
end;

procedure TModulo_Compensacion.Salir2Click(Sender: TObject);
begin
  dmcompensa.Database1.Connected := false;
  Application.Terminate;
end;

procedure TModulo_Compensacion.ArchivosCompensacion1Click(Sender: TObject);
begin
  frmgendeclara := tfrmgendeclara.create(application);
  try
  frmgendeclara.show;
  except
  frmgendeclara.free;
  end;
end;

procedure TModulo_Compensacion.CierreAutoliquidacion1Click(
  Sender: TObject);
begin
  frmcierre := tfrmcierre.create(application);
  try
  frmcierre.show;
  except
  frmcierre.free;
  end;
end;

procedure TModulo_Compensacion.PlanillasConNrs1Click(Sender: TObject);
var codigo: string;
begin
end;

procedure TModulo_Compensacion.IBCSalarioMinimodelAo1Click(
  Sender: TObject);
var codigo : string;
begin
end;

procedure TModulo_Compensacion.Cotizaciones121Click(Sender: TObject);
var codigo : string;
begin
end;

procedure TModulo_Compensacion.InconsistenciasenDeducciones1Click(
  Sender: TObject);
var codigo : string;
begin
end;

procedure TModulo_Compensacion.PlanillasconEmpresasNrs1Click(
  Sender: TObject);
var codigo : string;
begin
end;

procedure TModulo_Compensacion.InconsistenciasenTotales1Click(
  Sender: TObject);
var codigo : string;
begin
end;

procedure TModulo_Compensacion.InconsistenciasenSituadoFiscal1Click(
  Sender: TObject);
var codigo : string;
begin
end;

procedure TModulo_Compensacion.ConfigurarImpresora1Click(Sender: TObject);
begin
  printersetupdialog1.Execute;
end;

procedure TModulo_Compensacion.PlanillasConInconsistenciaenPagosdeUPC1Click(
  Sender: TObject);
var codigo : string;
begin
end;


procedure TModulo_Compensacion.ReversionCierreAutoliquidacion1Click(
  Sender: TObject);
begin
  frmrevcierre := tfrmrevcierre.create(application);
  try
  frmrevcierre.show;
  except
  frmrevcierre.free;
  end;
end;

procedure TModulo_Compensacion.GeneracionCartera1Click(Sender: TObject);
begin
  frmgencartera := tfrmgencartera.create(application);
  try
  frmgencartera.show;
  except
  frmgencartera.free;
  end;
end;

procedure TModulo_Compensacion.CambioAutomaticodePeriodo1Click(
  Sender: TObject);
begin
  frmcamperiodo := tfrmcamperiodo.create(application);
  try
  frmcamperiodo.show;
  except
  frmcamperiodo.free;
  end;
end;

procedure TModulo_Compensacion.PlanillasConInconsistenciasenTipodeDeclaracion1Click(
  Sender: TObject);
var tpdec : string;
    tpdec1 : string;

begin
end;

procedure TModulo_Compensacion.ablasBasicas21Click(Sender: TObject);
begin
  frmtablasbasicas := tfrmtablasbasicas.create(application);
  try
  frmtablasbasicas.show;
  except
  frmtablasbasicas.free;
  end;
end;

procedure TModulo_Compensacion.ToolButton2Click(Sender: TObject);
begin
  frmcierre := tfrmcierre.create(application);
  try
  frmcierre.show;
  except
  frmcierre.free;
  end;
end;

procedure TModulo_Compensacion.ToolButton3Click(Sender: TObject);
begin
  frmrevcierre := tfrmrevcierre.create(application);
  try
  frmrevcierre.show;
  except
  frmrevcierre.free;
  end;
end;

procedure TModulo_Compensacion.ToolButton6Click(Sender: TObject);
begin
  frmgencartera := tfrmgencartera.create(application);
  try
  frmgencartera.show;
  except
  frmgencartera.free;
  end;
end;

procedure TModulo_Compensacion.ToolButton9Click(Sender: TObject);
begin
  frmcamperiodo := tfrmcamperiodo.create(application);
  try
  frmcamperiodo.show;
  except
  frmcamperiodo.free;
  end;
end;

procedure TModulo_Compensacion.ToolButton13Click(Sender: TObject);
begin
  frmgendeclara := tfrmgendeclara.create(application);
  try
  frmgendeclara.show;
  except
  frmgendeclara.free;
  end;
end;

procedure TModulo_Compensacion.ToolButton16Click(Sender: TObject);
begin
  frmtablasbasicas := tfrmtablasbasicas.create(application);
  try
  frmtablasbasicas.show;
  except
  frmtablasbasicas.free;
  end;
end;

procedure TModulo_Compensacion.PrecierreAutoliquidacion1Click(
  Sender: TObject);
begin
  frmvalidacion := tfrmvalidacion.create(application);
  try
  frmvalidacion.show;
  except
  frmvalidacion.free;
  end;

end;

procedure TModulo_Compensacion.ToolButton1Click(Sender: TObject);
begin
  frmvalidacion := tfrmvalidacion.create(application);
  try
  frmvalidacion.show;
  except
  frmvalidacion.free;
  end;

end;

procedure TModulo_Compensacion.FormCreate(Sender: TObject);
begin
  dmcompensa.qrymcfecha.Open;
  statusbar1.Panels[0].Text := 'Usuario Modulo : '+dmcompensa.Database1.Params.Values['USER NAME'];
  statusbar1.Panels[3].Text := 'Fecha Actual : '+ datetostr(dmcompensa.qrymcfechaSYSDATE.Value);
end;

procedure TModulo_Compensacion.GeneraciondeIngresosUPC1Click(
  Sender: TObject);
begin
  frmgenupc := tfrmgenupc.create(application);
  try
  frmgenupc.show;
  except
  frmgenupc.free;
  end;
end;

procedure TModulo_Compensacion.ToolButton17Click(Sender: TObject);
begin
  frmgenupc := tfrmgenupc.create(application);
  try
  frmgenupc.show;
  except
  frmgenupc.free;
  end;
end;

procedure TModulo_Compensacion.CierreAutoliquidacionExclusionMultiafiliados1Click(
  Sender: TObject);
begin
  frmreproceso := tfrmreproceso.create(application);
  try
  frmreproceso.show;
  except
  frmreproceso.free;
  end;
end;

procedure TModulo_Compensacion.ToolButton18Click(Sender: TObject);
begin
  frmreproceso := tfrmreproceso.create(application);
  try
  frmreproceso.show;
  except
  frmreproceso.free;
  end;
end;

procedure TModulo_Compensacion.AjustesPorNumerodeDeclaracion1Click(
  Sender: TObject);
begin
  frmajustes := tfrmajustes.create(application);
  try
  frmajustes.show;
  except
  frmajustes.free;
  end;

end;

procedure TModulo_Compensacion.ToolButton19Click(Sender: TObject);
begin
  frmajustes := tfrmajustes.create(application);
  try
  frmajustes.show;
  except
  frmajustes.free;
  end;

end;

procedure TModulo_Compensacion.GeneracionContabilidad1Click(
  Sender: TObject);
begin
  frmcuentas := tfrmcuentas.create(application);
  try
  frmcuentas.show;
  except
  frmcuentas.free;
  end;

end;

procedure TModulo_Compensacion.ToolButton20Click(Sender: TObject);
begin
  frmcuentas := tfrmcuentas.create(application);
  try
  frmcuentas.show;
  except
  frmcuentas.free;
  end;

end;

procedure TModulo_Compensacion.GeneracionReporteValoresaGirarCobrar1Click(
  Sender: TObject);
begin
  frmrelval := tfrmrelval.create(application);
  try
  frmrelval.show;
  except
  frmrelval.free;
  end;

end;

procedure TModulo_Compensacion.ToolButton21Click(Sender: TObject);
begin
 frmrelval := tfrmrelval.create(application);
  try
  frmrelval.show;
  except
  frmrelval.free;
  end;

end;

procedure TModulo_Compensacion.ToolButton22Click(Sender: TObject);
begin
  frmmulti := tfrmmulti.create(application);
  try
  frmmulti.show;
  except
  frmmulti.free;
  end;
end;

procedure TModulo_Compensacion.CargueArchivodeMultiafiliadosFisalud1Click(
  Sender: TObject);
begin
  frmmulti := tfrmmulti.create(application);
  try
  frmmulti.show;
  except
  frmmulti.free;
  end;
end;

procedure TModulo_Compensacion.ToolButton24Click(Sender: TObject);
begin
  frmcruce := tfrmcruce.create(application);
  try
  frmcruce.show;
  except
  frmcruce.free;
  end;
end;

procedure TModulo_Compensacion.CruceAfiliadosCompensadosMultiafiliados1Click(
  Sender: TObject);
begin
  frmcruce := tfrmcruce.create(application);
  try
  frmcruce.show;
  except
  frmcruce.free;
  end;
end;

procedure TModulo_Compensacion.ToolButton7Click(Sender: TObject);
begin
  frmcondecla := tfrmcondecla.create(application);
  try
  frmcondecla.show;
  except
  frmcondecla.free;
  end;
end;

procedure TModulo_Compensacion.DatosPorDeclaracion1Click(Sender: TObject);
begin
  frmcondecla := tfrmcondecla.create(application);
  try
  frmcondecla.show;
  except
  frmcondecla.free;
  end;

end;

procedure TModulo_Compensacion.ToolButton8Click(Sender: TObject);
begin
  frm890 := tfrm890.create(application);
  try
  frm890.show;
  except
  frm890.free;
  end;
end;

procedure TModulo_Compensacion.AjustesRealizadosADeclaracion1Click(
  Sender: TObject);
begin
  frmconajustes := tfrmconajustes.create(application);
  try
  frmconajustes.show;
  except
  frmconajustes.free;
  end;
end;

procedure TModulo_Compensacion.ToolButton23Click(Sender: TObject);
begin
  frmgendecla := tfrmgendecla.create(application);
  try
  frmgendecla.show;
  except
  frmgendecla.free;
  end;
end;

procedure TModulo_Compensacion.GeneracionFormatoDGCPorDeclaracion1Click(
  Sender: TObject);
begin
  frmgendecla := tfrmgendecla.create(application);
  try
  frmgendecla.show;
  except
  frmgendecla.free;
  end;
end;

procedure TModulo_Compensacion.ToolButton25Click(Sender: TObject);
begin
  frm71 := tfrm71.create(application);
  try
  frm71.show;
  except
  frm71.free;
  end;
end;

procedure TModulo_Compensacion.GeneracionArchivo00711Click(
  Sender: TObject);
begin
  frm71 := tfrm71.create(application);
  try
  frm71.show;
  except
  frm71.free;
  end;
end;

procedure TModulo_Compensacion.ToolButton26Click(Sender: TObject);
begin
  frm72 := tfrm72.create(application);
  try
  frm72.show;
  except
  frm72.free;
  end;

end;

procedure TModulo_Compensacion.GeneracionArchivo00721Click(
  Sender: TObject);
begin
  frm72 := tfrm72.create(application);
  try
  frm72.show;
  except
  frm72.free;
  end;

end;

procedure TModulo_Compensacion.CierreAutoliquidacionExclusionMultiafiliados2Click(
  Sender: TObject);
begin
  frmreproceso := tfrmreproceso.create(application);
  try
  frmreproceso.show;
  except
  frmreproceso.free;
  end;
end;

procedure TModulo_Compensacion.ToolButton30Click(Sender: TObject);
begin
  frmrelval := tfrmrelval.create(application);
  try
  frmrelval.show;
  except
  frmrelval.free;
  end;
end;

procedure TModulo_Compensacion.GeneracionArchivo00731Click(
  Sender: TObject);
begin
  frm73 := tfrm73.create(application);
  try
  frm73.show;
  except
  frm73.free;
  end;
end;

procedure TModulo_Compensacion.ToolButton27Click(Sender: TObject);
begin
  frm73 := tfrm73.create(application);
  try
  frm73.show;
  except
  frm73.free;
  end;
end;

procedure TModulo_Compensacion.GeneracionArchivosRes89020021Click(
  Sender: TObject);
begin
  frm890 := tfrm890.create(application);
  try
  frm890.show;
  except
  frm890.free;
  end;
end;

procedure TModulo_Compensacion.GeneracionArchivosCapitacionyRecapitacion1Click(
  Sender: TObject);
begin
  frmcapita := tfrmcapita.create(application);
  try
  frmcapita.show;
  except
  frmcapita.free;
  end;
end;

procedure TModulo_Compensacion.ToolButton14Click(Sender: TObject);
begin
  frmcapita := tfrmcapita.create(application);
  try
  frmcapita.show;
  except
  frmcapita.free;
  end;
end;

procedure TModulo_Compensacion.ToolButton29Click(Sender: TObject);
begin
  frmnur := tfrmnur.create(application);
  try
  frmnur.show;
  except
  frmnur.free;
  end;
end;

procedure TModulo_Compensacion.GeneracionAnexoTecnicoBNURC1Click(
  Sender: TObject);
begin
  frmnur := tfrmnur.create(application);
  try
  frmnur.show;
  except
  frmnur.free;
  end;
end;

procedure TModulo_Compensacion.GeneracionFormatoSNSIE491Click(
  Sender: TObject);
begin
  frmcuf49 := tfrmcuf49.create(application);
  try
  frmcuf49.show;
  except
  frmcuf49.free;
  end;
end;

procedure TModulo_Compensacion.ToolButton11Click(Sender: TObject);
begin
  frmcuf49 := tfrmcuf49.create(application);
  try
  frmcuf49.show;
  except
  frmcuf49.free;
  end;
end;

procedure TModulo_Compensacion.MultiafiliadosSolucionados1Click(
  Sender: TObject);
begin
  frmmulsol := tfrmmulsol.create(application);
  try
  frmmulsol.show;
  except
  frmmulsol.free;
  end;
end;

procedure TModulo_Compensacion.CierreAutoliquidacionMultiafiliadosSolucionados1Click(
  Sender: TObject);
begin
  frmciemulsol := tfrmciemulsol.create(application);
  try
  frmciemulsol.show;
  except
  frmciemulsol.free;
  end;
end;

procedure TModulo_Compensacion.CorreciondeInconsistenciasDeclaracion1Click(
  Sender: TObject);
begin
  frmregcorrecion := tfrmregcorrecion.create(application);
  try
  frmregcorrecion.show;
  except
  frmregcorrecion.free;
  end;

end;

procedure TModulo_Compensacion.GeneracionCorrecionDeclaracion1Click(
  Sender: TObject);
begin
  frmcorrecion := tfrmcorrecion.create(application);
  try
  frmcorrecion.show;
  except
  frmcorrecion.free;
  end;

end;

procedure TModulo_Compensacion.Impresion1Click(Sender: TObject);
begin
  frmgdcorrecion := tfrmgdcorrecion.create(application);
  try
  frmgdcorrecion.show;
  except
  frmgdcorrecion.free;
  end;
end;

procedure TModulo_Compensacion.CargueArchivodeErroresFisalud1Click(
  Sender: TObject);
begin
  frmmulerr := tfrmmulerr.create(application);
  try
  frmmulerr.show;
  except
  frmmulerr.free;
  end;
end;

procedure TModulo_Compensacion.ActualizacionEstadosPlanillasCompensadas1Click(
  Sender: TObject);
begin
  frmactestado := tfrmactestado.create(application);
  try
  frmactestado.show;
  except
  frmactestado.free;
  end;
end;

procedure TModulo_Compensacion.ArchivosResolucion23091Click(
  Sender: TObject);
begin
  frm2309 := tfrm2309.create(application);
  try
  frm2309.show;
  except
  frm2309.free;
  end;
end;

procedure TModulo_Compensacion.GeneracionReporteValoresaGirarCobrarAcumuladoPorPeriodo1Click(
  Sender: TObject);
begin
  frmrelvalacum := tfrmrelvalacum.create(application);
  try
  frmrelvalacum.show;
  except
  frmrelvalacum.free;
  end;
end;

procedure TModulo_Compensacion.GeneracionCircularExterna0051Click(
  Sender: TObject);
begin
  frm005 := tfrm005.create(application);
  try
  frm005.show;
  except
  frm005.free;
  end;
end;

procedure TModulo_Compensacion.GeneracionCifrasdeControl1Click(
  Sender: TObject);
begin
  frmcifras := tfrmcifras.create(application);
  try
  frmcifras.show;
  except
  frmcifras.free;
  end;
end;

procedure TModulo_Compensacion.CierredeCompensacion1Click(Sender: TObject);
begin
  frmcierremc := tfrmcierremc.create(application);
  try
  frmcierremc.show;
  except
  frmcierremc.free;
  end;
end;

procedure TModulo_Compensacion.CifrasdeControl1Click(Sender: TObject);
begin
  frmcifrasmc := tfrmcifrasmc.create(application);
  try
  frmcifrasmc.show;
  except
  frmcifrasmc.free;
  end;
end;

procedure TModulo_Compensacion.ImpresionFormatoMC11Click(Sender: TObject);
begin
  formatomc1 := tformatomc1.create(application);
  try
  formatomc1.show;
  except
  formatomc1.free;
  end;
end;

procedure TModulo_Compensacion.ReversionCompensacion1Click(
  Sender: TObject);
begin
  frmrevcierremc1 := tfrmrevcierremc1.create(application);
  try
  frmrevcierremc1.show;
  except
  frmrevcierremc1.free;
  end;
end;

procedure TModulo_Compensacion.ArchivosMagneticos1Click(Sender: TObject);
begin
  frmmagmc := tfrmmagmc.create(application);
  try
  frmmagmc.show;
  except
  frmmagmc.free;
  end;
end;

procedure TModulo_Compensacion.AnalisisMedioMagnetico1Click(
  Sender: TObject);
begin
  frmanamul := tfrmanamul.create(application);
  try
  frmanamul.show;
  except
  frmanamul.free;
  end;
end;

procedure TModulo_Compensacion.AnalisisGlosasRealizadasalaEPS1Click(
  Sender: TObject);
begin
  frmanagloeps := tfrmanagloeps.create(application);
  try
  frmanagloeps.show;
  except
  frmanagloeps.free;
  end;
end;

procedure TModulo_Compensacion.AnalisisValoresDeclaracionPorDeptoMcpio1Click(
  Sender: TObject);
begin
  frmvaldec := tfrmvaldec.create(application);
  try
  frmvaldec.show;
  except
  frmvaldec.free;
  end;
end;

procedure TModulo_Compensacion.GeneracionFormatoA11Click(Sender: TObject);
begin
  frmformatoa1 := tfrmformatoa1.create(application);
  try
  frmformatoa1.show;
  except
  frmformatoa1.free;
  end;
end;

procedure TModulo_Compensacion.AdministracionDeclaraciClick(
  Sender: TObject);
begin
  frmadmindec := tfrmadmindec.create(application);
  try
  frmadmindec.show;
  except
  frmadmindec.free;
  end;
end;

end.
