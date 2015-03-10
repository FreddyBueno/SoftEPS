unit ufgcg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,math;

type
  Tfrm71 = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm71: Tfrm71;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrm71.Button1Click(Sender: TObject);
var
   cmcn,cmce,cmpn,cmpe : real;
   bmcn,bmce,bmpn,bmpe : real;
   amcn,amce,ampn,ampe : real;
   tazn,taze : real;
   tdmn,tdme : real;
   tuzn,tuze : real;
   tupc : real;
   atot,aupc,apro,asol : real;
   outputfile : textfile;
   tdec : string;
   peri : string;
begin
  savedialog1.Execute;
  if savedialog1.FileName <> '' then
  begin
    dmcompensa.qrymcdeclaracion4.Close;
    dmcompensa.qrymcdeclaracion4.Prepare;
    dmcompensa.qrymcdeclaracion4.Params[0].Value := edit1.text;
    dmcompensa.qrymcdeclaracion4.Params[1].Value := edit2.Text;
    dmcompensa.qrymcdeclaracion4.Open;
    dmcompensa.qrymcdeclaracion4.First;
    assignfile (outputfile, savedialog1.FileName);
    rewrite(outputfile);
    closefile(outputfile);
    append(outputfile);
    while not dmcompensa.qrymcdeclaracion4.Eof do
    begin
      if dmcompensa.qrymcdeclaracion4cot_tipo_decla.Value = 0 then
         tdec := '1';
      if dmcompensa.qrymcdeclaracion4cot_tipo_decla.Value = 1 then
         tdec := '2';
      if dmcompensa.qrymcdeclaracion4cot_tipo_decla.Value = 2 then
         tdec := '2';
      peri := '01/'+dmcompensa.qrymcdeclaracion4periodo_compensado.Value;
      dmcompensa.qrymcliquidacion.Close;
      dmcompensa.qrymcliquidacion.Prepare;
      dmcompensa.qrymcliquidacion.Params[0].Value :=dmcompensa.qrymcdeclaracion4num_declaracion.Value;
      dmcompensa.qrymcliquidacion.Open;
      dmcompensa.qrymcliquidacion.First;
      dmcompensa.qrymcbasesdecalculo1.Close;
      dmcompensa.qrymcbasesdecalculo1.Prepare;
      dmcompensa.qrymcbasesdecalculo1.Params[0].Value := dmcompensa.qrymcdeclaracion4num_declaracion.Value;
      dmcompensa.qrymcbasesdecalculo1.Open;
      dmcompensa.qrymcbasesdecalculo1.First;
      cmcn := 0;
      cmce := 0;
      cmpn := 0;
      cmpe := 0;
      bmcn := 0;
      bmce := 0;
      bmpn := 0;
      bmpe := 0;
      amcn := 0;
      amce := 0;
      ampn := 0;
      ampe := 0;
      tdmn := 0;
      tdme := 0;
      tupc := 0;
      tuzn := 0;
      tuze := 0;
      while not dmcompensa.qrymcbasesdecalculo1.Eof do
      begin
        cmcn := cmcn + dmcompensa.qrymcbasesdecalculo1tot_cotizantes_mcn.Value;
        cmce := cmce + dmcompensa.qrymcbasesdecalculo1tot_cotizantes_mce.Value;
        cmpn := cmpn + dmcompensa.qrymcbasesdecalculo1tot_cotizantes_mpn.Value;
        cmpe := cmpe + dmcompensa.qrymcbasesdecalculo1tot_cotizantes_mpe.Value;
        bmcn := bmcn + dmcompensa.qrymcbasesdecalculo1tot_beneficiarios_mcn.Value;
        bmce := bmce + dmcompensa.qrymcbasesdecalculo1tot_beneficiarios_mce.Value;
        bmpn := bmpn + dmcompensa.qrymcbasesdecalculo1tot_beneficiarios_mpnl.Value;
        bmpe := bmpe + dmcompensa.qrymcbasesdecalculo1tot_beneficiarios_mpe.Value;
        amcn := amcn + dmcompensa.qrymcbasesdecalculo1tot_afiliados_mcn.Value;
        amce := amce + dmcompensa.qrymcbasesdecalculo1tot_afiliados_mce.Value;
        ampn := ampn + dmcompensa.qrymcbasesdecalculo1tot_afiliados_mpn.Value;
        ampe := ampe + dmcompensa.qrymcbasesdecalculo1tot_afiliados_mpe.Value;
        tdmn := tdmn + dmcompensa.qrymcbasesdecalculo1tot_dias_cotznn.Value;
        tdme := tdme + dmcompensa.qrymcbasesdecalculo1tot_dias_cotize.Value;
        tuzn := tuzn + dmcompensa.qrymcbasesdecalculo1tot_upc_dzn.Value;
        tuze := tuze + dmcompensa.qrymcbasesdecalculo1tot_upc_dze.Value;
        tupc := tupc + dmcompensa.qrymcbasesdecalculo1tot_valor_upc.Value;
        dmcompensa.qrymcbasesdecalculo1.Next;
      end;
      dmcompensa.qrymcbasesdep2.Close;
      dmcompensa.qrymcbasesdep2.Prepare;
      dmcompensa.qrymcbasesdep2.Params[0].Value :=dmcompensa.qrymcdeclaracion4num_declaracion.Value;
      dmcompensa.qrymcbasesdep2.Open;
      dmcompensa.qrymcbasesdep2.First;
      atot := 0;
      aupc := 0;
      apro := 0;
      asol := 0;
      while not dmcompensa.qrymcbasesdep2.Eof do
      begin
        atot := atot + dmcompensa.qrymcbasesdep2tot_dependientes.Value;
        aupc := aupc + dmcompensa.qrymcbasesdep2val_upc_dependientes.Value;
        apro := apro + dmcompensa.qrymcbasesdep2val_promocion.Value;
        asol := asol + dmcompensa.qrymcbasesdep2val_solidaridad.Value;
        dmcompensa.qrymcbasesdep2.Next;
      end;
      write(outputfile,'0035'+CHR(9)+'1'+CHR(9)+tdec+CHR(9)+floattostr(dmcompensa.qrymcdeclaracion4num_declaracion.Value)+CHR(9)+peri+CHR(9)+datetostr(dmcompensa.qrymcdeclaracion4fecha_declaracion.Value)+CHR(9)+floattostr(cmcn)+CHR(9)+floattostr(cmce)+CHR(9)+floattostr(cmpn)+CHR(9)+floattostr(cmpe)+CHR(9)+floattostr(bmcn)+CHR(9)+floattostr(bmce)+CHR(9)+floattostr(bmpn)+CHR(9)+floattostr(bmpe)+CHR(9)+floattostr(amcn)+CHR(9)+floattostr(amce)+CHR(9)+floattostr(ampn)+CHR(9)+floattostr(ampe)+CHR(9)+'0'+CHR(9)+'0'+CHR(9)+floattostr(tdmn)+CHR(9)+floattostr(tdme)+CHR(9)+floattostr(tuzn)+CHR(9)+floattostr(tuze)+CHR(9)+floattostr(tupc));
      write(outputfile,CHR(9)+floattostr(dmcompensa.qrymcliquidacioning_salbase_cotiz12.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacioning_salbase_cotiz8.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_total_reca12.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_total_reca8.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_deducido_aut12.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_deducido_aut8.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_total_cotiz12.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_total_cotiz8.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_solidaridad_12.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_solidaridad_8.Value));
      write(outputfile,CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_pyp12.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_pyp8.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionpro_incapacidades12.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionpro_incapacidades8.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_cotizacion_net12.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_cotizacion_net8.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_lincencias_mat12.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_licencias_mat8.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_reconocer_upc12.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_reconocer_upc8.Value));
      write(outputfile,CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_pagcobrar_fsg12.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_pagcobrar_fsg8.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidaciontot_subcuenta_comp12.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidaciontot_subcuenta_comp8.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_promocion.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionrec_promocion.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionsal_compensar_prom.Value)+CHR(9)+datetostr(dmcompensa.qrymcliquidacionfec_consignacion_solid.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_consignacion_solid.Value)+CHR(9)+datetostr(dmcompensa.qrymcliquidacionfec_consignacion_pro.Value));
      write(outputfile,CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_consignacion_promocion.Value)+CHR(9)+datetostr(dmcompensa.qrymcliquidacionfec_consignacion_comp.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_consignado_comp.Value)+CHR(9)+floattostr(atot)+CHR(9)+floattostr(aupc)+CHR(9)+floattostr(apro)+CHR(9)+floattostr(asol)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionnum_autoliquidaciones.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_pago_incap.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidaciontot_cotizaciones_noident.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionnum_tot_afil.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionnum_total_cotiz8.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidaciontot_afiliados_ind.Value));
      write(outputfile,CHR(9)+floattostr(dmcompensa.qrymcliquidacionibc_afiliados_ind.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidaciontot_madres_comu.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionibc_madres_comu.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidaciontot_madrescomu_comp.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionibc_madrescomu_comp.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidaciontot_miembros_adicdep.Value)+CHR(9)+floattostr(roundto(dmcompensa.qrymcliquidacionrec_miembros_adicdep.Value,0))+CHR(9)+'0'+CHR(9)+'0'+CHR(9)+floattostr(dmcompensa.qrymcliquidaciontot_incapacidades_pag.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_recaudo_brut.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_licenciaas_pag.Value));
      writeln(outputfile,CHR(9)+floattostr(dmcompensa.qrymcliquidacionval_aportes_neto.Value)+CHR(9)+floattostr(dmcompensa.qrymcliquidacionrec_acumulado_per_comp.Value)+CHR(9)+'0');
      dmcompensa.qrymcdeclaracion4.Next;
    end;
    closefile(outputfile);
    showmessage('Finalizada la Generacion del Archivo');
    frm71.Close;
  end;
end;

procedure Tfrm71.Edit2Exit(Sender: TObject);
begin
  if strtofloat(edit2.Text) < strtofloat(edit1.Text) then
  begin
    showmessage('La Declaracion Final Debe Ser Menor a La Inicial');
    edit2.SetFocus;
  end;

end;

procedure Tfrm71.Edit1Exit(Sender: TObject);
begin
  if edit1.text = '0' then
  begin
    showmessage('Error en Numero de Declaracion');
    edit1.SetFocus;
  end;
end;

procedure Tfrm71.FormCreate(Sender: TObject);
begin
  edit1.Text := '0';
end;

procedure Tfrm71.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

end.
