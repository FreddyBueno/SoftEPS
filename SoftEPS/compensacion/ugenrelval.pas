unit ugenrelval;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tfrmrelval = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    Label1: TLabel;
    Label2: TLabel;
    Label13: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrelval: Tfrmrelval;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrmrelval.Button1Click(Sender: TObject);
var outputfile : textfile;
    cot : real;
    solidp : real;
    compep : real;
    promop : real;
    solidn : real;
    compen : real;
    promon : real;

begin
  savedialog1.Execute;
  if savedialog1.FileName <> '' then
  begin
    assignfile (outputfile, savedialog1.FileName);
    rewrite(outputfile);
    closefile (outputfile);
    append(outputfile);
    dmcompensa.qrymcdeclaracion4.close;
    dmcompensa.qrymcdeclaracion4.prepare;
    dmcompensa.qrymcdeclaracion4.params[0].Value := edit1.Text;
    dmcompensa.qrymcdeclaracion4.params[1].Value := edit2.Text;
    dmcompensa.qrymcdeclaracion4.open;
    dmcompensa.qrymcdeclaracion4.First;
    write(outputfile,'MES ==>,');
    while not dmcompensa.qrymcdeclaracion4.Eof do
    begin
      write(outputfile,dmcompensa.qrymcdeclaracion4periodo_compensado.Value+',');
      dmcompensa.qrymcdeclaracion4.Next;
    end;
    writeln(outputfile,' ');
    writeln(outputfile,' ');
    dmcompensa.qrymcdeclaracion4.First;
    write(outputfile,'Fecha de Presentacion =>,');
    while not dmcompensa.qrymcdeclaracion4.Eof do
    begin
      write(outputfile,datetostr(dmcompensa.qrymcdeclaracion4fecha_declaracion.Value)+',');
      dmcompensa.qrymcdeclaracion4.Next;
    end;
    writeln(outputfile,' ');
    dmcompensa.qrymcdeclaracion4.First;
    write(outputfile,'Cotizantes,');
    while not dmcompensa.qrymcdeclaracion4.Eof do
    begin
      dmcompensa.qrymcbasesdecalculo1.Close;
      dmcompensa.qrymcbasesdecalculo1.Prepare;
      dmcompensa.qrymcbasesdecalculo1.Params[0].Value :=dmcompensa.qrymcdeclaracion4num_declaracion.Value;
      dmcompensa.qrymcbasesdecalculo1.Open;
      dmcompensa.qrymcbasesdecalculo1.First;
      while not dmcompensa.qrymcbasesdecalculo1.Eof do
      begin
         cot := cot + dmcompensa.qrymcbasesdecalculo1tot_cotizantes_mcn.Value+dmcompensa.qrymcbasesdecalculo1tot_cotizantes_mce.Value+dmcompensa.qrymcbasesdecalculo1tot_cotizantes_mpn.Value+dmcompensa.qrymcbasesdecalculo1tot_cotizantes_mpe.Value;
         dmcompensa.qrymcbasesdecalculo1.Next;
      end;
    write(outputfile,floattostr(cot)+',');
    cot := 0;
    dmcompensa.qrymcbasesdecalculo1.Close;
    dmcompensa.qrymcdeclaracion4.Next
    end;
    writeln(outputfile,' ');
    dmcompensa.qrymcdeclaracion4.First;
    write(outputfile,'Beneficiarios,');
    while not dmcompensa.qrymcdeclaracion4.Eof do
    begin
      dmcompensa.qrymcbasesdecalculo1.Close;
      dmcompensa.qrymcbasesdecalculo1.Prepare;
      dmcompensa.qrymcbasesdecalculo1.Params[0].Value :=dmcompensa.qrymcdeclaracion4num_declaracion.Value;
      dmcompensa.qrymcbasesdecalculo1.Open;
      dmcompensa.qrymcbasesdecalculo1.First;
      while not dmcompensa.qrymcbasesdecalculo1.Eof do
      begin
         cot := cot + dmcompensa.qrymcbasesdecalculo1tot_beneficiarios_mcn.Value+dmcompensa.qrymcbasesdecalculo1tot_beneficiarios_mce.Value+dmcompensa.qrymcbasesdecalculo1tot_beneficiarios_mpnl.Value+dmcompensa.qrymcbasesdecalculo1tot_beneficiarios_mpe.Value;
         dmcompensa.qrymcbasesdecalculo1.Next;
      end;
      write(outputfile,floattostr(cot)+',');
      cot := 0;
      dmcompensa.qrymcbasesdecalculo1.Close;
      dmcompensa.qrymcdeclaracion4.Next
    end;
    writeln(outputfile,' ');
    dmcompensa.qrymcdeclaracion4.First;
    write(outputfile,'Adicionales,');
    while not dmcompensa.qrymcdeclaracion4.Eof do
    begin
      dmcompensa.qrymcbasesdep2.Close;
      dmcompensa.qrymcbasesdep2.Prepare;
      dmcompensa.qrymcbasesdep2.Params[0].Value := dmcompensa.qrymcdeclaracion4num_declaracion.Value;
      dmcompensa.qrymcbasesdep2.Open;
      dmcompensa.qrymcbasesdep2.First;
      while not dmcompensa.qrymcbasesdep2.Eof do
      begin
         cot := cot + dmcompensa.qrymcbasesdep2tot_dependientes.Value;
         dmcompensa.qrymcbasesdep2.Next;
      end;
    write(outputfile,floattostr(cot)+',');
    cot := 0;
    dmcompensa.qrymcbasesdep2.Close;
    dmcompensa.qrymcdeclaracion4.Next
    end;
    dmcompensa.qrymcliquidacion3.Close;
    dmcompensa.qrymcliquidacion3.Prepare;
    dmcompensa.qrymcliquidacion3.Params[0].Value :=STRTOINT(edit1.Text);
    dmcompensa.qrymcliquidacion3.Params[1].Value :=STRTOINT(edit2.Text);
    dmcompensa.qrymcliquidacion3.Open;
    dmcompensa.qrymcliquidacion3.First;
    dmcompensa.qrymcliquidacion3.RecordCount;
    writeln(outputfile,' ');
    writeln(outputfile,' ');
    write(outputfile,'Base de Liquidacion,');
    while not dmcompensa.qrymcliquidacion3.Eof do
    begin
      write(outputfile,floattostr(dmcompensa.qrymcliquidacion3ing_salbase_cotiz12.Value+dmcompensa.qrymcliquidacion3ing_salbase_cotiz8.Value)+',');
      dmcompensa.qrymcliquidacion3.Next;
    end;
    writeln(outputfile,' ');
    write(outputfile,'Vr. Total del Recaudo,');
    dmcompensa.qrymcliquidacion3.First;
    while not dmcompensa.qrymcliquidacion3.Eof do
    begin
      write(outputfile,floattostr(dmcompensa.qrymcliquidacion3val_total_reca12.Value+dmcompensa.qrymcliquidacion3val_total_reca8.Value)+',');
      dmcompensa.qrymcliquidacion3.Next;
    end;
    writeln(outputfile,' ');
    write(outputfile,'Vr. Deducido Autoliquidaciones,');
    dmcompensa.qrymcliquidacion3.First;
    while not dmcompensa.qrymcliquidacion3.Eof do
    begin
      write(outputfile,floattostr(dmcompensa.qrymcliquidacion3val_deducido_aut12.Value+dmcompensa.qrymcliquidacion3val_deducido_aut8.Value)+',');
      dmcompensa.qrymcliquidacion3.Next;
    end;
    writeln(outputfile,' ');
    write(outputfile,'Vr. Total de Cotizaciones,');
    dmcompensa.qrymcliquidacion3.First;
    while not dmcompensa.qrymcliquidacion3.Eof do
    begin
      write(outputfile,floattostr(dmcompensa.qrymcliquidacion3val_total_cotiz12.Value+dmcompensa.qrymcliquidacion3val_total_cotiz8.Value)+',');
      dmcompensa.qrymcliquidacion3.Next;
    end;
    writeln(outputfile,' ');
    write(outputfile,'Vr. A Reconocer Por el FOSYGA,');
    dmcompensa.qrymcliquidacion3.First;
    while not dmcompensa.qrymcliquidacion3.Eof do
    begin
      write(outputfile,floattostr(dmcompensa.qrymcliquidacion3val_reconocer_upc12.Value+dmcompensa.qrymcliquidacion3val_reconocer_upc8.Value)+',');
      dmcompensa.qrymcliquidacion3.Next;
    end;
    writeln(outputfile,' ');
    write(outputfile,'Vr. Total Pag. mes Ant. por Lic de Maternidad,');
    dmcompensa.qrymcliquidacion3.First;
    while not dmcompensa.qrymcliquidacion3.Eof do
    begin
      write(outputfile,floattostr(dmcompensa.qrymcliquidacion3val_lincencias_mat12.Value+dmcompensa.qrymcliquidacion3val_licencias_mat8.Value)+',');
      dmcompensa.qrymcliquidacion3.Next;
    end;
    writeln(outputfile,' ');
    write(outputfile,'Vr. Total Pag. Incap.por enfer.General,');
    dmcompensa.qrymcliquidacion3.First;
    while not dmcompensa.qrymcliquidacion3.Eof do
    begin
      write(outputfile,floattostr(dmcompensa.qrymcliquidacion3pro_incapacidades12.Value+dmcompensa.qrymcliquidacion3pro_incapacidades8.Value)+',');
      dmcompensa.qrymcliquidacion3.Next;
    end;
    writeln(outputfile,' ');
    write(outputfile,'Vr. a Pagar o Cobrar por el FOSYGA,');
    dmcompensa.qrymcliquidacion3.First;
    while not dmcompensa.qrymcliquidacion3.Eof do
    begin
      write(outputfile,floattostr(dmcompensa.qrymcliquidacion3val_pagcobrar_fsg12.Value+dmcompensa.qrymcliquidacion3val_pagcobrar_fsg8.Value)+',');
      dmcompensa.qrymcliquidacion3.Next;
    end;
    writeln(outputfile,' ');
    write(outputfile,'Vr.de Cotiz.Destinado a Subcuenta de Promocion,');
    dmcompensa.qrymcliquidacion3.First;
    while not dmcompensa.qrymcliquidacion3.Eof do
    begin
      write(outputfile,floattostr(dmcompensa.qrymcliquidacion3val_promocion.Value)+',');
      dmcompensa.qrymcliquidacion3.Next;
    end;
    writeln(outputfile,' ');
    write(outputfile,'Vr. UPC de Promocion y Prevencion,');
    dmcompensa.qrymcliquidacion3.First;
    while not dmcompensa.qrymcliquidacion3.Eof do
    begin
      write(outputfile,floattostr(dmcompensa.qrymcliquidacion3rec_promocion.Value)+',');
      dmcompensa.qrymcliquidacion3.Next;
    end;
    writeln(outputfile,' ');
    write(outputfile,'Vr. A Girar por Dif.por Apor.y Gast.en,');
    dmcompensa.qrymcliquidacion3.First;
    while not dmcompensa.qrymcliquidacion3.Eof do
    begin
      write(outputfile,floattostr(dmcompensa.qrymcliquidacion3sal_compensar_prom.Value)+',');
      dmcompensa.qrymcliquidacion3.Next;
    end;
    writeln(outputfile,' ');
    dmcompensa.qrymcdeclaracion4.First;
    write(outputfile,'Vr. Promocion y Prevencion agregados,');
    dmcompensa.qrymcdeclaracion4.First;
    while not dmcompensa.qrymcdeclaracion4.Eof do
    begin
      dmcompensa.qrymcbasesdep2.Close;
      dmcompensa.qrymcbasesdep2.Prepare;
      dmcompensa.qrymcbasesdep2.Params[0].Value := dmcompensa.qrymcdeclaracion4num_declaracion.Value;
      dmcompensa.qrymcbasesdep2.Open;
      dmcompensa.qrymcbasesdep2.First;
      while not dmcompensa.qrymcbasesdep2.Eof do
      begin
         cot := cot + dmcompensa.qrymcbasesdep2val_promocion.Value;
         dmcompensa.qrymcbasesdep2.Next;
      end;
    write(outputfile,floattostr(cot)+',');
    cot := 0;
    dmcompensa.qrymcbasesdep2.Close;
    dmcompensa.qrymcdeclaracion4.Next
    end;
    writeln(outputfile,' ');
    write(outputfile,'Vr. Total del Recaudo del Punto de Solidaridad,');
    dmcompensa.qrymcliquidacion3.First;
    while not dmcompensa.qrymcliquidacion3.Eof do
    begin
      write(outputfile,floattostr(dmcompensa.qrymcliquidacion3val_solidaridad_12.Value+dmcompensa.qrymcliquidacion3val_solidaridad_8.Value)+',');
      dmcompensa.qrymcliquidacion3.Next;
    end;
    writeln(outputfile,' ');
    dmcompensa.qrymcdeclaracion4.First;
    write(outputfile,'Vr. Solidaridad decreto 047,');
    dmcompensa.qrymcdeclaracion4.First;
    while not dmcompensa.qrymcdeclaracion4.Eof do
    begin
      dmcompensa.qrymcbasesdep2.Close;
      dmcompensa.qrymcbasesdep2.Prepare;
      dmcompensa.qrymcbasesdep2.Params[0].Value := dmcompensa.qrymcdeclaracion4num_declaracion.Value;
      dmcompensa.qrymcbasesdep2.Open;
      dmcompensa.qrymcbasesdep2.First;
      while not dmcompensa.qrymcbasesdep2.Eof do
      begin
         cot := cot + dmcompensa.qrymcbasesdep2val_solidaridad.Value;
         dmcompensa.qrymcbasesdep2.Next;
      end;
      write(outputfile,floattostr(cot)+',');
      cot := 0;
      dmcompensa.qrymcbasesdep2.Close;
      dmcompensa.qrymcdeclaracion4.Next;
    end;
    writeln(outputfile,' ');
    dmcompensa.qrymcdeclaracion4.First;
    write(outputfile,'Vr. UPC Otros Beneficiarios,');
    dmcompensa.qrymcdeclaracion4.First;
    while not dmcompensa.qrymcdeclaracion4.Eof do
    begin
      dmcompensa.qrymcbasesdep2.Close;
      dmcompensa.qrymcbasesdep2.Prepare;
      dmcompensa.qrymcbasesdep2.Params[0].Value := dmcompensa.qrymcdeclaracion4num_declaracion.Value;
      dmcompensa.qrymcbasesdep2.Open;
      dmcompensa.qrymcbasesdep2.First;
      while not dmcompensa.qrymcbasesdep2.Eof do
      begin
         cot := cot + dmcompensa.qrymcbasesdep2val_upc_dependientes.Value;
         dmcompensa.qrymcbasesdep2.Next;
      end;
    write(outputfile,floattostr(cot)+',');
    cot := 0;
    dmcompensa.qrymcbasesdep2.Close;
    dmcompensa.qrymcdeclaracion4.Next;
    end;
    writeln(outputfile,' ');
    writeln(outputfile,'CONSIGNACIONES');
    writeln(outputfile,' ');
    writeln(outputfile,'SOLIDARIDAD');
    write(outputfile,'NETO A GIRAR,');
    dmcompensa.qrymcliquidacion3.First;
    solidp:=0;
    solidn:=0;
    while not dmcompensa.qrymcliquidacion3.Eof do
    begin
      write(outputfile,floattostr(dmcompensa.qrymcliquidacion3val_consignacion_solid.Value)+',');
      if dmcompensa.qrymcliquidacion3val_consignacion_solid.Value > 0 then
         solidp := solidp + dmcompensa.qrymcliquidacion3val_consignacion_solid.Value;
      if dmcompensa.qrymcliquidacion3val_consignacion_solid.Value < 0 then
         solidn := solidn + dmcompensa.qrymcliquidacion3val_consignacion_solid.Value;
      dmcompensa.qrymcliquidacion3.Next;
    end;
    writeln(outputfile,' ');
    writeln(outputfile,'COMPENSACION');
    write(outputfile,'NETO A GIRAR,');
    dmcompensa.qrymcliquidacion3.First;
    compep:=0;
    compen:=0;
    while not dmcompensa.qrymcliquidacion3.Eof do
    begin
      write(outputfile,floattostr(dmcompensa.qrymcliquidacion3val_consignado_comp.Value)+',');
      if dmcompensa.qrymcliquidacion3val_consignado_comp.Value > 0 then
         compep := compep + dmcompensa.qrymcliquidacion3val_consignado_comp.Value;
      if dmcompensa.qrymcliquidacion3val_consignado_comp.Value < 0 then
         compen := compen + dmcompensa.qrymcliquidacion3val_consignado_comp.Value;
      dmcompensa.qrymcliquidacion3.Next;
    end;
    writeln(outputfile,' ');
    writeln(outputfile,'PROMOCION');
    write(outputfile,'NETO A GIRAR,');
    dmcompensa.qrymcliquidacion3.First;
    promop:=0;
    promon:=0;
    while not dmcompensa.qrymcliquidacion3.Eof do
    begin
      write(outputfile,floattostr(dmcompensa.qrymcliquidacion3val_consignacion_promocion.Value)+',');
      if dmcompensa.qrymcliquidacion3val_consignacion_promocion.Value > 0 then
         promop := promop + dmcompensa.qrymcliquidacion3val_consignacion_promocion.Value;
      if dmcompensa.qrymcliquidacion3val_consignacion_promocion.Value < 0 then
         promon := promon + dmcompensa.qrymcliquidacion3val_consignacion_promocion.Value;
      dmcompensa.qrymcliquidacion3.Next;
    end;
    writeln(outputfile,' ');
    writeln(outputfile,' ');
    writeln(outputfile,' ');
    writeln(outputfile,' ');
    writeln(outputfile,'RELACION DE VALORES A GIRAR COBRAR ');
    writeln(outputfile,' ');
    writeln(outputfile,'CUENTAS, SALDO A GIRAR, SALDO A FAVOR ');
    writeln(outputfile,'Solidaridad,'+floattostr(solidp)+','+floattostr(solidn));
    writeln(outputfile,'Compensacion,'+floattostr(compep)+','+floattostr(compen));
    writeln(outputfile,'Promocion,'+floattostr(promop)+','+floattostr(promon));
    writeln(outputfile,'');
    writeln(outputfile,'TOTALES,'+floattostr(promop+compep+solidp)+','+floattostr(promon+compen+solidn));
    writeln(outputfile,' ');
    writeln(outputfile,' ');
    showmessage('Finalizada La Generacion');
    closefile(outputfile);
    frmrelval.Close;
  end;
end;


procedure Tfrmrelval.Edit2Exit(Sender: TObject);
begin
  if strtofloat(edit2.Text) < strtofloat(edit1.Text) then
  begin
    showmessage('La Declaracion Final No Puede Ser Mayor que La Incial');
    edit2.SetFocus;
  end;
end;

procedure Tfrmrelval.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

end.

