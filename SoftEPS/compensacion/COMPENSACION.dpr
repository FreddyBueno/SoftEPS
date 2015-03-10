program COMPENSACION;

uses
  Forms,
  ucompensacion in 'ucompensacion.pas' {Modulo_Compensacion},
  dmcompensacion in 'dmcompensacion.pas' {dmcompensa: TDataModule},
  ugendeclaraciones in 'ugendeclaraciones.pas' {frmgendeclara},
  ucierre in 'ucierre.pas' {frmcierre},
  uentrada in 'uentrada.pas' {frmentrada},
  urevcierre in 'urevcierre.pas' {frmrevcierre},
  ugencartera in 'ugencartera.pas' {frmgencartera},
  ucamperiodo in 'ucamperiodo.pas' {frmcamperiodo},
  utablasbasicas in 'utablasbasicas.pas' {frmtablasbasicas},
  uvalidacion in 'uvalidacion.pas' {frmvalidacion},
  ugenupcxmcpio in 'ugenupcxmcpio.pas' {frmgenupc},
  umulti in 'umulti.pas' {frmreproceso},
  uajustes in 'UAJUSTES.PAS' {frmajustes},
  ucuentascontables in 'ucuentascontables.pas' {frmcuentas},
  ugenconxdepto in 'ugenconxdepto.pas' {frmgenconxdpto},
  ugenrelval in 'ugenrelval.pas' {frmrelval},
  uarchmul in 'uarchmul.pas' {frmmulti},
  ucruce in 'ucruce.pas' {frmcruce},
  ucondeclaraciones in 'ucondeclaraciones.pas' {frmcondecla},
  uconajustes in 'uconajustes.pas' {frmconajustes},
  ugendeclacion in 'ugendeclacion.pas' {frmgendecla},
  ufgcg in 'ufgcg.pas' {frm71},
  ufgcdabc in 'ufgcdabc.pas' {frm72},
  ufgcdad in 'ufgcdad.pas' {frm73},
  ures890 in 'ures890.pas' {frm890},
  ucapita in 'ucapita.pas' {frmcapita},
  unur in 'unur.pas' {frmnur},
  usnsie49 in 'usnsie49.pas' {frmcuf49},
  usolmul in 'usolmul.pas' {frmmulsol},
  uciemulsol in 'uciemulsol.pas' {frmciemulsol},
  uregcorrecion in 'uregcorrecion.pas' {frmregcorrecion},
  ugcorrecion in 'ugcorrecion.pas' {frmcorrecion},
  ugdcorrecion in 'ugdcorrecion.pas' {frmgdcorrecion},
  uarcherr in 'uarcherr.pas' {frmmulerr},
  uactestado in 'uactestado.pas' {frmactestado},
  uarch2309 in 'uarch2309.pas' {frm2309},
  urelvalper in 'urelvalper.pas' {frmrelvalacum},
  ucir005 in 'ucir005.pas' {frm005},
  ucifras in 'ucifras.pas' {frmcifras},
  Uexcel in 'Uexcel.pas',
  ucierremc in 'ucierremc.pas' {frmcierremc},
  ucifrasmc in 'ucifrasmc.pas' {frmcifrasmc},
  ugendeclaracionemc1 in 'ugendeclaracionemc1.pas' {formatomc1},
  urevcierremc in 'urevcierremc.pas' {frmrevcierremc1},
  umagmc in 'umagmc.pas' {frmmagmc},
  uanamul in 'uanamul.pas' {frmanamul},
  uanaglosas in 'uanaglosas.pas' {frmanagloeps},
  uvaldec in 'uvaldec.pas' {frmvaldec},
  uformatoa1 in 'uformatoa1.pas' {frmformatoa1},
  uadmdec in 'uadmdec.pas' {frmadmindec};

{$R *.res}

begin
  Application.Initialize;
  frmentrada := tfrmentrada.create(application);
  try
  frmentrada.showmodal;
  except
    frmentrada.Free;
  end;
  //Application.Terminate;
end.

