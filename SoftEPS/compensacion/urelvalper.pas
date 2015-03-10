unit urelvalper;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls;

type
  Tfrmrelvalacum = class(TForm)
    Panel1: TPanel;
    Label13: TLabel;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrelvalacum: Tfrmrelvalacum;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrmrelvalacum.MaskEdit1Exit(Sender: TObject);
var periodo : real;
    t : string;
begin
    try
    t := copy(maskedit1.Text,1,2);
    if t = '' then
       t:='15';
    periodo := strtofloat(t);
    if (periodo > 12) or (periodo = 0) then
    begin
      showmessage('Error en el Periodo');
      maskedit1.SetFocus;
    end;
  except
    on e:EDBEditerror do
    begin
      e.message :='Error en el Periodo';
      maskedit1.SetFocus;
      raise;
    end;
    on e:econverterror do
    begin
      e.message :='Error en el Periodo';
      maskedit1.SetFocus;
      raise;
    end;
  end;
end;

procedure Tfrmrelvalacum.MaskEdit2Exit(Sender: TObject);
var t : string;
    mes  : real;
    mes1 : real;
    ano  : real;
    ano1 : real;
begin
    try
    t := copy(maskedit2.Text,1,2);
    if t = '' then
       t:='15';
    mes := strtofloat(t);
    if (mes > 12) or (mes = 0) then
    begin
      showmessage('Error en el Periodo');
      maskedit2.SetFocus;
    end;
    ano := strtofloat(copy(maskedit2.Text,4,4));
    mes1 := strtofloat(copy(maskedit1.Text,1,2));
    ano1 := strtofloat(copy(maskedit1.Text,4,4));
    if ano < ano1 then
    begin
      showmessage('El Periodo Final Debe Ser Mayor Al Inicial');
      maskedit2.SetFocus;
    end;
    if (ano = ano1) and (mes < mes1) then
    begin
      showmessage('El Periodo Final Debe Ser Mayor Al Inicial');
      maskedit2.SetFocus;
    end;
  except
    on e:EDBEditerror do
    begin
      e.message :='Error en el Periodo';
      maskedit2.SetFocus;
      raise;
    end;
    on e:econverterror do
    begin
      e.message :='Error en el Periodo';
      maskedit2.SetFocus;
      raise;
    end;
  end;
end;

procedure Tfrmrelvalacum.Button1Click(Sender: TObject);
var outputfile : textfile;
    cot : real;
    solidp : real;
    compep : real;
    promop : real;
    solidn : real;
    compen : real;
    promon : real;
    per, per1, ano, mes :string;
begin
  savedialog1.Execute;
  if savedialog1.FileName <> '' then
  begin
    cot := 0;
    assignfile (outputfile, savedialog1.FileName);
    rewrite(outputfile);
    closefile (outputfile);
    append(outputfile);
    per := maskedit1.Text;
    per1 := maskedit2.Text;
    ano := copy(per1,4,4);
    if copy(per1,1,2) = '01' then
       mes := '02/';
    if copy(per1,1,2) = '02' then
       mes := '03/';
    if copy(per1,1,2) = '03' then
       mes := '04/';
    if copy(per1,1,2) = '04' then
       mes := '05/';
    if copy(per1,1,2) = '05' then
       mes := '06/';
    if copy(per1,1,2) = '06' then
       mes := '07/';
    if copy(per1,1,2) = '07' then
       mes := '08/';
    if copy(per1,1,2) = '08' then
       mes := '09/';
    if copy(per1,1,2) = '09' then
       mes := '10/';
    if copy(per1,1,2) = '10' then
       mes := '11/';
    if copy(per1,1,2) = '11' then
       mes := '12/';
    if copy(per1,1,2) = '12' then
    begin
      mes := '01/';
      ano := floattostr(strtofloat(copy(per1,4,4))+1)
    end;
    per1 := mes + ano;
    ano := copy(per,4,4);
    writeln(outputfile, 'RELACION DE VALORES ACUMULADO POR PERIODO DE COMPENSACION');
    write(outputfile,'MES ==>,');
    while per <> per1 do
    begin
      write(outputfile,per+',');
      ano := copy(per,4,4);
      if copy(per,1,2) = '01' then
         mes := '02/';
      if copy(per,1,2) = '02' then
         mes := '03/';
      if copy(per,1,2) = '03' then
         mes := '04/';
      if copy(per,1,2) = '04' then
         mes := '05/';
      if copy(per,1,2) = '05' then
         mes := '06/';
      if copy(per,1,2) = '06' then
         mes := '07/';
      if copy(per,1,2) = '07' then
         mes := '08/';
      if copy(per,1,2) = '08' then
         mes := '09/';
      if copy(per,1,2) = '09' then
         mes := '10/';
      if copy(per,1,2) = '10' then
         mes := '11/';
      if copy(per,1,2) = '11' then
         mes := '12/';
      if copy(per,1,2) = '12' then
      begin
        mes := '01/';
        ano := floattostr(strtofloat(copy(per,4,4))+1)
      end;
      per := mes + ano;
    end;
    writeln(outputfile,' ');
    writeln(outputfile,' ');
    per := maskedit1.Text;
    per1 := maskedit2.Text;
    ano := copy(per1,4,4);
    if copy(per1,1,2) = '01' then
       mes := '02/';
    if copy(per1,1,2) = '02' then
       mes := '03/';
    if copy(per1,1,2) = '03' then
       mes := '04/';
    if copy(per1,1,2) = '04' then
       mes := '05/';
    if copy(per1,1,2) = '05' then
       mes := '06/';
    if copy(per1,1,2) = '06' then
       mes := '07/';
    if copy(per1,1,2) = '07' then
       mes := '08/';
    if copy(per1,1,2) = '08' then
       mes := '09/';
    if copy(per1,1,2) = '09' then
       mes := '10/';
    if copy(per1,1,2) = '10' then
       mes := '11/';
    if copy(per1,1,2) = '11' then
       mes := '12/';
    if copy(per1,1,2) = '12' then
    begin
      mes := '01/';
      ano := floattostr(strtofloat(copy(per1,4,4))+1)
    end;
    per1 := mes + ano;
    ano := copy(per,4,4);
    write(outputfile,'Cotizantes,');
    while per <> per1 do
    begin
      dmcompensa.qrycot.Close;
      dmcompensa.qrycot.Prepare;
      dmcompensa.qrycot.Params[0].Value :=per;
      dmcompensa.qrycot.Open;
      dmcompensa.qrycot.First;
      while not dmcompensa.qrycot.Eof do
      begin
        cot := dmcompensa.qrycotMCN.Value+dmcompensa.qrycotMCE.Value+dmcompensa.qrycotMPN.Value+dmcompensa.qrycotMPE.Value;
        write(outputfile,floattostr(cot)+',');
        dmcompensa.qrycot.Next;
      end;
      cot := 0;
      dmcompensa.qrycot.Close;
      ano := copy(per,4,4);
      if copy(per,1,2) = '01' then
         mes := '02/';
      if copy(per,1,2) = '02' then
         mes := '03/';
      if copy(per,1,2) = '03' then
         mes := '04/';
      if copy(per,1,2) = '04' then
         mes := '05/';
      if copy(per,1,2) = '05' then
         mes := '06/';
      if copy(per,1,2) = '06' then
         mes := '07/';
      if copy(per,1,2) = '07' then
         mes := '08/';
      if copy(per,1,2) = '08' then
         mes := '09/';
      if copy(per,1,2) = '09' then
         mes := '10/';
      if copy(per,1,2) = '10' then
         mes := '11/';
      if copy(per,1,2) = '11' then
         mes := '12/';
      if copy(per,1,2) = '12' then
      begin
        mes := '01/';
        ano := floattostr(strtofloat(copy(per,4,4))+1)
      end;
      per := mes + ano;
    end;
    writeln(outputfile,' ');
    per := maskedit1.Text;
    per1 := maskedit2.Text;
    ano := copy(per1,4,4);
    if copy(per1,1,2) = '01' then
       mes := '02/';
    if copy(per1,1,2) = '02' then
       mes := '03/';
    if copy(per1,1,2) = '03' then
       mes := '04/';
    if copy(per1,1,2) = '04' then
       mes := '05/';
    if copy(per1,1,2) = '05' then
       mes := '06/';
    if copy(per1,1,2) = '06' then
       mes := '07/';
    if copy(per1,1,2) = '07' then
       mes := '08/';
    if copy(per1,1,2) = '08' then
       mes := '09/';
    if copy(per1,1,2) = '09' then
       mes := '10/';
    if copy(per1,1,2) = '10' then
       mes := '11/';
    if copy(per1,1,2) = '11' then
       mes := '12/';
    if copy(per1,1,2) = '12' then
    begin
      mes := '01/';
      ano := floattostr(strtofloat(copy(per1,4,4))+1)
    end;
    per1 := mes + ano;
    ano := copy(per,4,4);
    write(outputfile,'Beneficiarios,');
    while per <> per1 do
    begin
      dmcompensa.qryben.Close;
      dmcompensa.qryben.Prepare;
      dmcompensa.qryben.Params[0].Value :=per;
      dmcompensa.qryben.Open;
      dmcompensa.qryben.First;
      while not dmcompensa.qryben.Eof do
      begin
        cot := dmcompensa.qrybenMCN.Value+dmcompensa.qrybenMCE.Value+dmcompensa.qrybenMPN.Value+dmcompensa.qrybenMPE.Value;
        write(outputfile,floattostr(cot)+',');
        dmcompensa.qryben.Next;
      end;
      cot := 0;
      dmcompensa.qryben.Close;
      ano := copy(per,4,4);
      if copy(per,1,2) = '01' then
         mes := '02/';
      if copy(per,1,2) = '02' then
         mes := '03/';
      if copy(per,1,2) = '03' then
         mes := '04/';
      if copy(per,1,2) = '04' then
         mes := '05/';
      if copy(per,1,2) = '05' then
         mes := '06/';
      if copy(per,1,2) = '06' then
         mes := '07/';
      if copy(per,1,2) = '07' then
         mes := '08/';
      if copy(per,1,2) = '08' then
         mes := '09/';
      if copy(per,1,2) = '09' then
         mes := '10/';
      if copy(per,1,2) = '10' then
         mes := '11/';
      if copy(per,1,2) = '11' then
         mes := '12/';
      if copy(per,1,2) = '12' then
      begin
        mes := '01/';
        ano := floattostr(strtofloat(copy(per,4,4))+1)
      end;
      per := mes + ano;
    end;
    writeln(outputfile,' ');
    per := maskedit1.Text;
    per1 := maskedit2.Text;
    ano := copy(per1,4,4);
    if copy(per1,1,2) = '01' then
       mes := '02/';
    if copy(per1,1,2) = '02' then
       mes := '03/';
    if copy(per1,1,2) = '03' then
       mes := '04/';
    if copy(per1,1,2) = '04' then
       mes := '05/';
    if copy(per1,1,2) = '05' then
       mes := '06/';
    if copy(per1,1,2) = '06' then
       mes := '07/';
    if copy(per1,1,2) = '07' then
       mes := '08/';
    if copy(per1,1,2) = '08' then
       mes := '09/';
    if copy(per1,1,2) = '09' then
       mes := '10/';
    if copy(per1,1,2) = '10' then
       mes := '11/';
    if copy(per1,1,2) = '11' then
       mes := '12/';
    if copy(per1,1,2) = '12' then
    begin
      mes := '01/';
      ano := floattostr(strtofloat(copy(per1,4,4))+1)
    end;
    per1 := mes + ano;
    ano := copy(per,4,4);
    write(outputfile,'Adicionales,');
    while per <> per1 do
    begin
      dmcompensa.qrydep.Close;
      dmcompensa.qrydep.Prepare;
      dmcompensa.qrydep.Params[0].Value :=per;
      dmcompensa.qrydep.Open;
      dmcompensa.qrydep.First;
      while not dmcompensa.qrydep.Eof do
      begin
        cot := dmcompensa.qrydepDEP.Value;
        write(outputfile,floattostr(cot)+',');
        dmcompensa.qrydep.Next;
      end;
      if cot = 0 then
         write(outputfile,'0,');
      cot := 0;
      dmcompensa.qrydep.Close;
      ano := copy(per,4,4);
      if copy(per,1,2) = '01' then
         mes := '02/';
      if copy(per,1,2) = '02' then
         mes := '03/';
      if copy(per,1,2) = '03' then
         mes := '04/';
      if copy(per,1,2) = '04' then
         mes := '05/';
      if copy(per,1,2) = '05' then
         mes := '06/';
      if copy(per,1,2) = '06' then
         mes := '07/';
      if copy(per,1,2) = '07' then
         mes := '08/';
      if copy(per,1,2) = '08' then
         mes := '09/';
      if copy(per,1,2) = '09' then
         mes := '10/';
      if copy(per,1,2) = '10' then
         mes := '11/';
      if copy(per,1,2) = '11' then
         mes := '12/';
      if copy(per,1,2) = '12' then
      begin
        mes := '01/';
        ano := floattostr(strtofloat(copy(per,4,4))+1)
      end;
      per := mes + ano;
    end;
    writeln(outputfile,' ');
    writeln(outputfile,' ');
    per := maskedit1.Text;
    per1 := maskedit2.Text;
    ano := copy(per1,4,4);
    if copy(per1,1,2) = '01' then
       mes := '02/';
    if copy(per1,1,2) = '02' then
       mes := '03/';
    if copy(per1,1,2) = '03' then
       mes := '04/';
    if copy(per1,1,2) = '04' then
       mes := '05/';
    if copy(per1,1,2) = '05' then
       mes := '06/';
    if copy(per1,1,2) = '06' then
       mes := '07/';
    if copy(per1,1,2) = '07' then
       mes := '08/';
    if copy(per1,1,2) = '08' then
       mes := '09/';
    if copy(per1,1,2) = '09' then
       mes := '10/';
    if copy(per1,1,2) = '10' then
       mes := '11/';
    if copy(per1,1,2) = '11' then
       mes := '12/';
    if copy(per1,1,2) = '12' then
    begin
      mes := '01/';
      ano := floattostr(strtofloat(copy(per1,4,4))+1)
    end;
    per1 := mes + ano;
    ano := copy(per,4,4);
    write(outputfile,'Base de Liquidacion,');
    while per <> per1 do
    begin
      dmcompensa.qrysalbase.Close;
      dmcompensa.qrysalbase.Prepare;
      dmcompensa.qrysalbase.Params[0].Value :=per;
      dmcompensa.qrysalbase.Open;
      dmcompensa.qrysalbase.First;
      while not dmcompensa.qrysalbase.Eof do
      begin
        cot := dmcompensa.qrysalbaseb12.Value+dmcompensa.qrysalbaseb8.Value;
        write(outputfile,floattostr(cot)+',');
        dmcompensa.qrysalbase.Next;
      end;
      cot := 0;
      dmcompensa.qrysalbase.Close;
      ano := copy(per,4,4);
      if copy(per,1,2) = '01' then
         mes := '02/';
      if copy(per,1,2) = '02' then
         mes := '03/';
      if copy(per,1,2) = '03' then
         mes := '04/';
      if copy(per,1,2) = '04' then
         mes := '05/';
      if copy(per,1,2) = '05' then
         mes := '06/';
      if copy(per,1,2) = '06' then
         mes := '07/';
      if copy(per,1,2) = '07' then
         mes := '08/';
      if copy(per,1,2) = '08' then
         mes := '09/';
      if copy(per,1,2) = '09' then
         mes := '10/';
      if copy(per,1,2) = '10' then
         mes := '11/';
      if copy(per,1,2) = '11' then
         mes := '12/';
      if copy(per,1,2) = '12' then
      begin
        mes := '01/';
        ano := floattostr(strtofloat(copy(per,4,4))+1)
      end;
      per := mes + ano;
    end;
    writeln(outputfile,' ');
    per := maskedit1.Text;
    per1 := maskedit2.Text;
    ano := copy(per1,4,4);
    if copy(per1,1,2) = '01' then
       mes := '02/';
    if copy(per1,1,2) = '02' then
       mes := '03/';
    if copy(per1,1,2) = '03' then
       mes := '04/';
    if copy(per1,1,2) = '04' then
       mes := '05/';
    if copy(per1,1,2) = '05' then
       mes := '06/';
    if copy(per1,1,2) = '06' then
       mes := '07/';
    if copy(per1,1,2) = '07' then
       mes := '08/';
    if copy(per1,1,2) = '08' then
       mes := '09/';
    if copy(per1,1,2) = '09' then
       mes := '10/';
    if copy(per1,1,2) = '10' then
       mes := '11/';
    if copy(per1,1,2) = '11' then
       mes := '12/';
    if copy(per1,1,2) = '12' then
    begin
      mes := '01/';
      ano := floattostr(strtofloat(copy(per1,4,4))+1)
    end;
    per1 := mes + ano;
    ano := copy(per,4,4);
    write(outputfile,'Vr. Total del Recaudo,');
    while per <> per1 do
    begin
      dmcompensa.qryreca.Close;
      dmcompensa.qryreca.Prepare;
      dmcompensa.qryreca.Params[0].Value :=per;
      dmcompensa.qryreca.Open;
      dmcompensa.qryreca.First;
      while not dmcompensa.qryreca.Eof do
      begin
        cot := dmcompensa.qryrecar12.Value+dmcompensa.qryrecar8.Value;
        write(outputfile,floattostr(cot)+',');
        dmcompensa.qryreca.Next;
      end;
      cot := 0;
      dmcompensa.qryreca.Close;
      ano := copy(per,4,4);
      if copy(per,1,2) = '01' then
         mes := '02/';
      if copy(per,1,2) = '02' then
         mes := '03/';
      if copy(per,1,2) = '03' then
         mes := '04/';
      if copy(per,1,2) = '04' then
         mes := '05/';
      if copy(per,1,2) = '05' then
         mes := '06/';
      if copy(per,1,2) = '06' then
         mes := '07/';
      if copy(per,1,2) = '07' then
         mes := '08/';
      if copy(per,1,2) = '08' then
         mes := '09/';
      if copy(per,1,2) = '09' then
         mes := '10/';
      if copy(per,1,2) = '10' then
         mes := '11/';
      if copy(per,1,2) = '11' then
         mes := '12/';
      if copy(per,1,2) = '12' then
      begin
        mes := '01/';
        ano := floattostr(strtofloat(copy(per,4,4))+1)
      end;
      per := mes + ano;
    end;
    writeln(outputfile,' ');
    per := maskedit1.Text;
    per1 := maskedit2.Text;
    ano := copy(per1,4,4);
    if copy(per1,1,2) = '01' then
       mes := '02/';
    if copy(per1,1,2) = '02' then
       mes := '03/';
    if copy(per1,1,2) = '03' then
       mes := '04/';
    if copy(per1,1,2) = '04' then
       mes := '05/';
    if copy(per1,1,2) = '05' then
       mes := '06/';
    if copy(per1,1,2) = '06' then
       mes := '07/';
    if copy(per1,1,2) = '07' then
       mes := '08/';
    if copy(per1,1,2) = '08' then
       mes := '09/';
    if copy(per1,1,2) = '09' then
       mes := '10/';
    if copy(per1,1,2) = '10' then
       mes := '11/';
    if copy(per1,1,2) = '11' then
       mes := '12/';
    if copy(per1,1,2) = '12' then
    begin
      mes := '01/';
      ano := floattostr(strtofloat(copy(per1,4,4))+1)
    end;
    per1 := mes + ano;
    ano := copy(per,4,4);
    write(outputfile,'Vr. Deducido Autoliquidaciones,');
    while per <> per1 do
    begin
      dmcompensa.qryded.Close;
      dmcompensa.qryded.Prepare;
      dmcompensa.qryded.Params[0].Value :=per;
      dmcompensa.qryded.Open;
      dmcompensa.qryded.First;
      while not dmcompensa.qryded.Eof do
      begin
        cot := dmcompensa.qrydeda12.Value+dmcompensa.qrydeda8.Value;
        write(outputfile,floattostr(cot)+',');
        dmcompensa.qryded.Next;
      end;
      cot := 0;
      dmcompensa.qryded.Close;
      ano := copy(per,4,4);
      if copy(per,1,2) = '01' then
         mes := '02/';
      if copy(per,1,2) = '02' then
         mes := '03/';
      if copy(per,1,2) = '03' then
         mes := '04/';
      if copy(per,1,2) = '04' then
         mes := '05/';
      if copy(per,1,2) = '05' then
         mes := '06/';
      if copy(per,1,2) = '06' then
         mes := '07/';
      if copy(per,1,2) = '07' then
         mes := '08/';
      if copy(per,1,2) = '08' then
         mes := '09/';
      if copy(per,1,2) = '09' then
         mes := '10/';
      if copy(per,1,2) = '10' then
         mes := '11/';
      if copy(per,1,2) = '11' then
         mes := '12/';
      if copy(per,1,2) = '12' then
      begin
        mes := '01/';
        ano := floattostr(strtofloat(copy(per,4,4))+1)
      end;
      per := mes + ano;
    end;
    writeln(outputfile,' ');
    per := maskedit1.Text;
    per1 := maskedit2.Text;
    ano := copy(per1,4,4);
    if copy(per1,1,2) = '01' then
       mes := '02/';
    if copy(per1,1,2) = '02' then
       mes := '03/';
    if copy(per1,1,2) = '03' then
       mes := '04/';
    if copy(per1,1,2) = '04' then
       mes := '05/';
    if copy(per1,1,2) = '05' then
       mes := '06/';
    if copy(per1,1,2) = '06' then
       mes := '07/';
    if copy(per1,1,2) = '07' then
       mes := '08/';
    if copy(per1,1,2) = '08' then
       mes := '09/';
    if copy(per1,1,2) = '09' then
       mes := '10/';
    if copy(per1,1,2) = '10' then
       mes := '11/';
    if copy(per1,1,2) = '11' then
       mes := '12/';
    if copy(per1,1,2) = '12' then
    begin
      mes := '01/';
      ano := floattostr(strtofloat(copy(per1,4,4))+1)
    end;
    per1 := mes + ano;
    ano := copy(per,4,4);
    write(outputfile,'Vr. Total de Cotizaciones,');
    while per <> per1 do
    begin
      dmcompensa.qrycoti.Close;
      dmcompensa.qrycoti.Prepare;
      dmcompensa.qrycoti.Params[0].Value :=per;
      dmcompensa.qrycoti.Open;
      dmcompensa.qrycoti.First;
      while not dmcompensa.qrycoti.Eof do
      begin
        cot := dmcompensa.qrycotic12.Value+dmcompensa.qrycotic8.Value;
        write(outputfile,floattostr(cot)+',');
        dmcompensa.qrycoti.Next;
      end;
      cot := 0;
      dmcompensa.qrycoti.Close;
      ano := copy(per,4,4);
      if copy(per,1,2) = '01' then
         mes := '02/';
      if copy(per,1,2) = '02' then
         mes := '03/';
      if copy(per,1,2) = '03' then
         mes := '04/';
      if copy(per,1,2) = '04' then
         mes := '05/';
      if copy(per,1,2) = '05' then
         mes := '06/';
      if copy(per,1,2) = '06' then
         mes := '07/';
      if copy(per,1,2) = '07' then
         mes := '08/';
      if copy(per,1,2) = '08' then
         mes := '09/';
      if copy(per,1,2) = '09' then
         mes := '10/';
      if copy(per,1,2) = '10' then
         mes := '11/';
      if copy(per,1,2) = '11' then
         mes := '12/';
      if copy(per,1,2) = '12' then
      begin
        mes := '01/';
        ano := floattostr(strtofloat(copy(per,4,4))+1)
      end;
      per := mes + ano;
    end;
    writeln(outputfile,' ');
    per := maskedit1.Text;
    per1 := maskedit2.Text;
    ano := copy(per1,4,4);
    if copy(per1,1,2) = '01' then
       mes := '02/';
    if copy(per1,1,2) = '02' then
       mes := '03/';
    if copy(per1,1,2) = '03' then
       mes := '04/';
    if copy(per1,1,2) = '04' then
       mes := '05/';
    if copy(per1,1,2) = '05' then
       mes := '06/';
    if copy(per1,1,2) = '06' then
       mes := '07/';
    if copy(per1,1,2) = '07' then
       mes := '08/';
    if copy(per1,1,2) = '08' then
       mes := '09/';
    if copy(per1,1,2) = '09' then
       mes := '10/';
    if copy(per1,1,2) = '10' then
       mes := '11/';
    if copy(per1,1,2) = '11' then
       mes := '12/';
    if copy(per1,1,2) = '12' then
    begin
      mes := '01/';
      ano := floattostr(strtofloat(copy(per1,4,4))+1)
    end;
    per1 := mes + ano;
    ano := copy(per,4,4);
    write(outputfile,'Vr. A Reconocer Por el FOSYGA,');
    while per <> per1 do
    begin
      dmcompensa.qryrecu.Close;
      dmcompensa.qryrecu.Prepare;
      dmcompensa.qryrecu.Params[0].Value :=per;
      dmcompensa.qryrecu.Open;
      dmcompensa.qryrecu.First;
      while not dmcompensa.qryrecu.Eof do
      begin
        cot := dmcompensa.qryrecur12.Value+dmcompensa.qryrecur8.Value;
        write(outputfile,floattostr(cot)+',');
        dmcompensa.qryrecu.Next;
      end;
      cot := 0;
      dmcompensa.qryrecu.Close;
      ano := copy(per,4,4);
      if copy(per,1,2) = '01' then
         mes := '02/';
      if copy(per,1,2) = '02' then
         mes := '03/';
      if copy(per,1,2) = '03' then
         mes := '04/';
      if copy(per,1,2) = '04' then
         mes := '05/';
      if copy(per,1,2) = '05' then
         mes := '06/';
      if copy(per,1,2) = '06' then
         mes := '07/';
      if copy(per,1,2) = '07' then
         mes := '08/';
      if copy(per,1,2) = '08' then
         mes := '09/';
      if copy(per,1,2) = '09' then
         mes := '10/';
      if copy(per,1,2) = '10' then
         mes := '11/';
      if copy(per,1,2) = '11' then
         mes := '12/';
      if copy(per,1,2) = '12' then
      begin
        mes := '01/';
        ano := floattostr(strtofloat(copy(per,4,4))+1)
      end;
      per := mes + ano;
    end;
    writeln(outputfile,' ');
    per := maskedit1.Text;
    per1 := maskedit2.Text;
    ano := copy(per1,4,4);
    if copy(per1,1,2) = '01' then
       mes := '02/';
    if copy(per1,1,2) = '02' then
       mes := '03/';
    if copy(per1,1,2) = '03' then
       mes := '04/';
    if copy(per1,1,2) = '04' then
       mes := '05/';
    if copy(per1,1,2) = '05' then
       mes := '06/';
    if copy(per1,1,2) = '06' then
       mes := '07/';
    if copy(per1,1,2) = '07' then
       mes := '08/';
    if copy(per1,1,2) = '08' then
       mes := '09/';
    if copy(per1,1,2) = '09' then
       mes := '10/';
    if copy(per1,1,2) = '10' then
       mes := '11/';
    if copy(per1,1,2) = '11' then
       mes := '12/';
    if copy(per1,1,2) = '12' then
    begin
      mes := '01/';
      ano := floattostr(strtofloat(copy(per1,4,4))+1)
    end;
    per1 := mes + ano;
    ano := copy(per,4,4);
    write(outputfile,'Vr. Total Pag. mes Ant. por Lic de Maternidad,');
    while per <> per1 do
    begin
      dmcompensa.qrymat.Close;
      dmcompensa.qrymat.Prepare;
      dmcompensa.qrymat.Params[0].Value :=per;
      dmcompensa.qrymat.Open;
      dmcompensa.qrymat.First;
      while not dmcompensa.qrymat.Eof do
      begin
        cot := dmcompensa.qrymatm12.Value+dmcompensa.qrymatm8.Value;
        write(outputfile,floattostr(cot)+',');
        dmcompensa.qrymat.Next;
      end;
      cot := 0;
      dmcompensa.qrymat.Close;
      ano := copy(per,4,4);
      if copy(per,1,2) = '01' then
         mes := '02/';
      if copy(per,1,2) = '02' then
         mes := '03/';
      if copy(per,1,2) = '03' then
         mes := '04/';
      if copy(per,1,2) = '04' then
         mes := '05/';
      if copy(per,1,2) = '05' then
         mes := '06/';
      if copy(per,1,2) = '06' then
         mes := '07/';
      if copy(per,1,2) = '07' then
         mes := '08/';
      if copy(per,1,2) = '08' then
         mes := '09/';
      if copy(per,1,2) = '09' then
         mes := '10/';
      if copy(per,1,2) = '10' then
         mes := '11/';
      if copy(per,1,2) = '11' then
         mes := '12/';
      if copy(per,1,2) = '12' then
      begin
        mes := '01/';
        ano := floattostr(strtofloat(copy(per,4,4))+1)
      end;
      per := mes + ano;
    end;
    writeln(outputfile,' ');
    per := maskedit1.Text;
    per1 := maskedit2.Text;
    ano := copy(per1,4,4);
    if copy(per1,1,2) = '01' then
       mes := '02/';
    if copy(per1,1,2) = '02' then
       mes := '03/';
    if copy(per1,1,2) = '03' then
       mes := '04/';
    if copy(per1,1,2) = '04' then
       mes := '05/';
    if copy(per1,1,2) = '05' then
       mes := '06/';
    if copy(per1,1,2) = '06' then
       mes := '07/';
    if copy(per1,1,2) = '07' then
       mes := '08/';
    if copy(per1,1,2) = '08' then
       mes := '09/';
    if copy(per1,1,2) = '09' then
       mes := '10/';
    if copy(per1,1,2) = '10' then
       mes := '11/';
    if copy(per1,1,2) = '11' then
       mes := '12/';
    if copy(per1,1,2) = '12' then
    begin
      mes := '01/';
      ano := floattostr(strtofloat(copy(per1,4,4))+1)
    end;
    per1 := mes + ano;
    ano := copy(per,4,4);
    write(outputfile,'Vr. Total Pag. Incap.por enfer.General,');
    while per <> per1 do
    begin
      dmcompensa.qryinc.Close;
      dmcompensa.qryinc.Prepare;
      dmcompensa.qryinc.Params[0].Value :=per;
      dmcompensa.qryinc.Open;
      dmcompensa.qryinc.First;
      while not dmcompensa.qryinc.Eof do
      begin
        cot := dmcompensa.qryinci12.Value+dmcompensa.qryinci8.Value;
        write(outputfile,floattostr(cot)+',');
        dmcompensa.qryinc.Next;
      end;
      cot := 0;
      dmcompensa.qryinc.Close;
      ano := copy(per,4,4);
      if copy(per,1,2) = '01' then
         mes := '02/';
      if copy(per,1,2) = '02' then
         mes := '03/';
      if copy(per,1,2) = '03' then
         mes := '04/';
      if copy(per,1,2) = '04' then
         mes := '05/';
      if copy(per,1,2) = '05' then
         mes := '06/';
      if copy(per,1,2) = '06' then
         mes := '07/';
      if copy(per,1,2) = '07' then
         mes := '08/';
      if copy(per,1,2) = '08' then
         mes := '09/';
      if copy(per,1,2) = '09' then
         mes := '10/';
      if copy(per,1,2) = '10' then
         mes := '11/';
      if copy(per,1,2) = '11' then
         mes := '12/';
      if copy(per,1,2) = '12' then
      begin
        mes := '01/';
        ano := floattostr(strtofloat(copy(per,4,4))+1)
      end;
      per := mes + ano;
    end;
    writeln(outputfile,' ');
    per := maskedit1.Text;
    per1 := maskedit2.Text;
    ano := copy(per1,4,4);
    if copy(per1,1,2) = '01' then
       mes := '02/';
    if copy(per1,1,2) = '02' then
       mes := '03/';
    if copy(per1,1,2) = '03' then
       mes := '04/';
    if copy(per1,1,2) = '04' then
       mes := '05/';
    if copy(per1,1,2) = '05' then
       mes := '06/';
    if copy(per1,1,2) = '06' then
       mes := '07/';
    if copy(per1,1,2) = '07' then
       mes := '08/';
    if copy(per1,1,2) = '08' then
       mes := '09/';
    if copy(per1,1,2) = '09' then
       mes := '10/';
    if copy(per1,1,2) = '10' then
       mes := '11/';
    if copy(per1,1,2) = '11' then
       mes := '12/';
    if copy(per1,1,2) = '12' then
    begin
      mes := '01/';
      ano := floattostr(strtofloat(copy(per1,4,4))+1)
    end;
    per1 := mes + ano;
    ano := copy(per,4,4);
    write(outputfile,'Vr. a Pagar o Cobrar por el FOSYGA,');
    while per <> per1 do
    begin
      dmcompensa.qrypc.Close;
      dmcompensa.qrypc.Prepare;
      dmcompensa.qrypc.Params[0].Value :=per;
      dmcompensa.qrypc.Open;
      dmcompensa.qrypc.First;
      while not dmcompensa.qrypc.Eof do
      begin
        cot := dmcompensa.qrypcp12.Value+dmcompensa.qrypcp8.Value;
        write(outputfile,floattostr(cot)+',');
        dmcompensa.qrypc.Next;
      end;
      cot := 0;
      dmcompensa.qrypc.Close;
      ano := copy(per,4,4);
      if copy(per,1,2) = '01' then
         mes := '02/';
      if copy(per,1,2) = '02' then
         mes := '03/';
      if copy(per,1,2) = '03' then
         mes := '04/';
      if copy(per,1,2) = '04' then
         mes := '05/';
      if copy(per,1,2) = '05' then
         mes := '06/';
      if copy(per,1,2) = '06' then
         mes := '07/';
      if copy(per,1,2) = '07' then
         mes := '08/';
      if copy(per,1,2) = '08' then
         mes := '09/';
      if copy(per,1,2) = '09' then
         mes := '10/';
      if copy(per,1,2) = '10' then
         mes := '11/';
      if copy(per,1,2) = '11' then
         mes := '12/';
      if copy(per,1,2) = '12' then
      begin
        mes := '01/';
        ano := floattostr(strtofloat(copy(per,4,4))+1)
      end;
      per := mes + ano;
    end;
    writeln(outputfile,' ');
    per := maskedit1.Text;
    per1 := maskedit2.Text;
    ano := copy(per1,4,4);
    if copy(per1,1,2) = '01' then
       mes := '02/';
    if copy(per1,1,2) = '02' then
       mes := '03/';
    if copy(per1,1,2) = '03' then
       mes := '04/';
    if copy(per1,1,2) = '04' then
       mes := '05/';
    if copy(per1,1,2) = '05' then
       mes := '06/';
    if copy(per1,1,2) = '06' then
       mes := '07/';
    if copy(per1,1,2) = '07' then
       mes := '08/';
    if copy(per1,1,2) = '08' then
       mes := '09/';
    if copy(per1,1,2) = '09' then
       mes := '10/';
    if copy(per1,1,2) = '10' then
       mes := '11/';
    if copy(per1,1,2) = '11' then
       mes := '12/';
    if copy(per1,1,2) = '12' then
    begin
      mes := '01/';
      ano := floattostr(strtofloat(copy(per1,4,4))+1)
    end;
    per1 := mes + ano;
    ano := copy(per,4,4);
    write(outputfile,'Vr.de Cotiz.Destinado a Subcuenta de Promocion,');
    while per <> per1 do
    begin
      dmcompensa.qrypro.Close;
      dmcompensa.qrypro.Prepare;
      dmcompensa.qrypro.Params[0].Value :=per;
      dmcompensa.qrypro.Open;
      dmcompensa.qrypro.First;
      while not dmcompensa.qrypro.Eof do
      begin
        cot := dmcompensa.qrypropr.Value;
        write(outputfile,floattostr(cot)+',');
        dmcompensa.qrypro.Next;
      end;
      cot := 0;
      dmcompensa.qrypro.Close;
      ano := copy(per,4,4);
      if copy(per,1,2) = '01' then
         mes := '02/';
      if copy(per,1,2) = '02' then
         mes := '03/';
      if copy(per,1,2) = '03' then
         mes := '04/';
      if copy(per,1,2) = '04' then
         mes := '05/';
      if copy(per,1,2) = '05' then
         mes := '06/';
      if copy(per,1,2) = '06' then
         mes := '07/';
      if copy(per,1,2) = '07' then
         mes := '08/';
      if copy(per,1,2) = '08' then
         mes := '09/';
      if copy(per,1,2) = '09' then
         mes := '10/';
      if copy(per,1,2) = '10' then
         mes := '11/';
      if copy(per,1,2) = '11' then
         mes := '12/';
      if copy(per,1,2) = '12' then
      begin
        mes := '01/';
        ano := floattostr(strtofloat(copy(per,4,4))+1)
      end;
      per := mes + ano;
    end;
    writeln(outputfile,' ');
    per := maskedit1.Text;
    per1 := maskedit2.Text;
    ano := copy(per1,4,4);
    if copy(per1,1,2) = '01' then
       mes := '02/';
    if copy(per1,1,2) = '02' then
       mes := '03/';
    if copy(per1,1,2) = '03' then
       mes := '04/';
    if copy(per1,1,2) = '04' then
       mes := '05/';
    if copy(per1,1,2) = '05' then
       mes := '06/';
    if copy(per1,1,2) = '06' then
       mes := '07/';
    if copy(per1,1,2) = '07' then
       mes := '08/';
    if copy(per1,1,2) = '08' then
       mes := '09/';
    if copy(per1,1,2) = '09' then
       mes := '10/';
    if copy(per1,1,2) = '10' then
       mes := '11/';
    if copy(per1,1,2) = '11' then
       mes := '12/';
    if copy(per1,1,2) = '12' then
    begin
      mes := '01/';
      ano := floattostr(strtofloat(copy(per1,4,4))+1)
    end;
    per1 := mes + ano;
    ano := copy(per,4,4);
    write(outputfile,'Vr. UPC de Promocion y Prevencion,');
    while per <> per1 do
    begin
      dmcompensa.qryrpr.Close;
      dmcompensa.qryrpr.Prepare;
      dmcompensa.qryrpr.Params[0].Value :=per;
      dmcompensa.qryrpr.Open;
      dmcompensa.qryrpr.First;
      while not dmcompensa.qryrpr.Eof do
      begin
        cot := dmcompensa.qryrprrpr.Value;
        write(outputfile,floattostr(cot)+',');
        dmcompensa.qryrpr.Next;
      end;
      cot := 0;
      dmcompensa.qryrpr.Close;
      ano := copy(per,4,4);
      if copy(per,1,2) = '01' then
         mes := '02/';
      if copy(per,1,2) = '02' then
         mes := '03/';
      if copy(per,1,2) = '03' then
         mes := '04/';
      if copy(per,1,2) = '04' then
         mes := '05/';
      if copy(per,1,2) = '05' then
         mes := '06/';
      if copy(per,1,2) = '06' then
         mes := '07/';
      if copy(per,1,2) = '07' then
         mes := '08/';
      if copy(per,1,2) = '08' then
         mes := '09/';
      if copy(per,1,2) = '09' then
         mes := '10/';
      if copy(per,1,2) = '10' then
         mes := '11/';
      if copy(per,1,2) = '11' then
         mes := '12/';
      if copy(per,1,2) = '12' then
      begin
        mes := '01/';
        ano := floattostr(strtofloat(copy(per,4,4))+1)
      end;
      per := mes + ano;
    end;
    writeln(outputfile,' ');
    per := maskedit1.Text;
    per1 := maskedit2.Text;
    ano := copy(per1,4,4);
    if copy(per1,1,2) = '01' then
       mes := '02/';
    if copy(per1,1,2) = '02' then
       mes := '03/';
    if copy(per1,1,2) = '03' then
       mes := '04/';
    if copy(per1,1,2) = '04' then
       mes := '05/';
    if copy(per1,1,2) = '05' then
       mes := '06/';
    if copy(per1,1,2) = '06' then
       mes := '07/';
    if copy(per1,1,2) = '07' then
       mes := '08/';
    if copy(per1,1,2) = '08' then
       mes := '09/';
    if copy(per1,1,2) = '09' then
       mes := '10/';
    if copy(per1,1,2) = '10' then
       mes := '11/';
    if copy(per1,1,2) = '11' then
       mes := '12/';
    if copy(per1,1,2) = '12' then
    begin
      mes := '01/';
      ano := floattostr(strtofloat(copy(per1,4,4))+1)
    end;
    per1 := mes + ano;
    ano := copy(per,4,4);
    write(outputfile,'Vr. A Girar por Dif.por Apor.y Gast.en,');
    while per <> per1 do
    begin
      dmcompensa.qryspr.Close;
      dmcompensa.qryspr.Prepare;
      dmcompensa.qryspr.Params[0].Value :=per;
      dmcompensa.qryspr.Open;
      dmcompensa.qryspr.First;
      while not dmcompensa.qryspr.Eof do
      begin
        cot := dmcompensa.qrysprspr.Value;
        write(outputfile,floattostr(cot)+',');
        dmcompensa.qryspr.Next;
      end;
      cot := 0;
      dmcompensa.qryspr.Close;
      ano := copy(per,4,4);
      if copy(per,1,2) = '01' then
         mes := '02/';
      if copy(per,1,2) = '02' then
         mes := '03/';
      if copy(per,1,2) = '03' then
         mes := '04/';
      if copy(per,1,2) = '04' then
         mes := '05/';
      if copy(per,1,2) = '05' then
         mes := '06/';
      if copy(per,1,2) = '06' then
         mes := '07/';
      if copy(per,1,2) = '07' then
         mes := '08/';
      if copy(per,1,2) = '08' then
         mes := '09/';
      if copy(per,1,2) = '09' then
         mes := '10/';
      if copy(per,1,2) = '10' then
         mes := '11/';
      if copy(per,1,2) = '11' then
         mes := '12/';
      if copy(per,1,2) = '12' then
      begin
        mes := '01/';
        ano := floattostr(strtofloat(copy(per,4,4))+1)
      end;
      per := mes + ano;
    end;
    writeln(outputfile,' ');
    per := maskedit1.Text;
    per1 := maskedit2.Text;
    ano := copy(per1,4,4);
    if copy(per1,1,2) = '01' then
       mes := '02/';
    if copy(per1,1,2) = '02' then
       mes := '03/';
    if copy(per1,1,2) = '03' then
       mes := '04/';
    if copy(per1,1,2) = '04' then
       mes := '05/';
    if copy(per1,1,2) = '05' then
       mes := '06/';
    if copy(per1,1,2) = '06' then
       mes := '07/';
    if copy(per1,1,2) = '07' then
       mes := '08/';
    if copy(per1,1,2) = '08' then
       mes := '09/';
    if copy(per1,1,2) = '09' then
       mes := '10/';
    if copy(per1,1,2) = '10' then
       mes := '11/';
    if copy(per1,1,2) = '11' then
       mes := '12/';
    if copy(per1,1,2) = '12' then
    begin
      mes := '01/';
      ano := floattostr(strtofloat(copy(per1,4,4))+1)
    end;
    per1 := mes + ano;
    ano := copy(per,4,4);
    write(outputfile,'Vr. Promocion y Prevencion agregados,');
    while per <> per1 do
    begin
      dmcompensa.qryvpa.Close;
      dmcompensa.qryvpa.Prepare;
      dmcompensa.qryvpa.Params[0].Value :=per;
      dmcompensa.qryvpa.Open;
      dmcompensa.qryvpa.First;
      while not dmcompensa.qryvpa.Eof do
      begin
        cot := dmcompensa.qryvpavp.Value;
        write(outputfile,floattostr(cot)+',');
        dmcompensa.qryvpa.Next;
      end;
      if cot = 0 then
         write(outputfile,'0,');
      cot := 0;
      dmcompensa.qryvpa.Close;
      ano := copy(per,4,4);
      if copy(per,1,2) = '01' then
         mes := '02/';
      if copy(per,1,2) = '02' then
         mes := '03/';
      if copy(per,1,2) = '03' then
         mes := '04/';
      if copy(per,1,2) = '04' then
         mes := '05/';
      if copy(per,1,2) = '05' then
         mes := '06/';
      if copy(per,1,2) = '06' then
         mes := '07/';
      if copy(per,1,2) = '07' then
         mes := '08/';
      if copy(per,1,2) = '08' then
         mes := '09/';
      if copy(per,1,2) = '09' then
         mes := '10/';
      if copy(per,1,2) = '10' then
         mes := '11/';
      if copy(per,1,2) = '11' then
         mes := '12/';
      if copy(per,1,2) = '12' then
      begin
        mes := '01/';
        ano := floattostr(strtofloat(copy(per,4,4))+1)
      end;
      per := mes + ano;
    end;
    writeln(outputfile,' ');
    per := maskedit1.Text;
    per1 := maskedit2.Text;
    ano := copy(per1,4,4);
    if copy(per1,1,2) = '01' then
       mes := '02/';
    if copy(per1,1,2) = '02' then
       mes := '03/';
    if copy(per1,1,2) = '03' then
       mes := '04/';
    if copy(per1,1,2) = '04' then
       mes := '05/';
    if copy(per1,1,2) = '05' then
       mes := '06/';
    if copy(per1,1,2) = '06' then
       mes := '07/';
    if copy(per1,1,2) = '07' then
       mes := '08/';
    if copy(per1,1,2) = '08' then
       mes := '09/';
    if copy(per1,1,2) = '09' then
       mes := '10/';
    if copy(per1,1,2) = '10' then
       mes := '11/';
    if copy(per1,1,2) = '11' then
       mes := '12/';
    if copy(per1,1,2) = '12' then
    begin
      mes := '01/';
      ano := floattostr(strtofloat(copy(per1,4,4))+1)
    end;
    per1 := mes + ano;
    ano := copy(per,4,4);
    write(outputfile,'Vr. Total del Recaudo del Punto de Solidaridad,');
    while per <> per1 do
    begin
      dmcompensa.qrysol.Close;
      dmcompensa.qrysol.Prepare;
      dmcompensa.qrysol.Params[0].Value :=per;
      dmcompensa.qrysol.Open;
      dmcompensa.qrysol.First;
      while not dmcompensa.qrysol.Eof do
      begin
        cot := dmcompensa.qrysols12.Value+dmcompensa.qrysols8.Value;
        write(outputfile,floattostr(cot)+',');
        dmcompensa.qrysol.Next;
      end;
      cot := 0;
      dmcompensa.qrysol.Close;
      ano := copy(per,4,4);
      if copy(per,1,2) = '01' then
         mes := '02/';
      if copy(per,1,2) = '02' then
         mes := '03/';
      if copy(per,1,2) = '03' then
         mes := '04/';
      if copy(per,1,2) = '04' then
         mes := '05/';
      if copy(per,1,2) = '05' then
         mes := '06/';
      if copy(per,1,2) = '06' then
         mes := '07/';
      if copy(per,1,2) = '07' then
         mes := '08/';
      if copy(per,1,2) = '08' then
         mes := '09/';
      if copy(per,1,2) = '09' then
         mes := '10/';
      if copy(per,1,2) = '10' then
         mes := '11/';
      if copy(per,1,2) = '11' then
         mes := '12/';
      if copy(per,1,2) = '12' then
      begin
        mes := '01/';
        ano := floattostr(strtofloat(copy(per,4,4))+1)
      end;
      per := mes + ano;
    end;
    writeln(outputfile,' ');
    per := maskedit1.Text;
    per1 := maskedit2.Text;
    ano := copy(per1,4,4);
    if copy(per1,1,2) = '01' then
       mes := '02/';
    if copy(per1,1,2) = '02' then
       mes := '03/';
    if copy(per1,1,2) = '03' then
       mes := '04/';
    if copy(per1,1,2) = '04' then
       mes := '05/';
    if copy(per1,1,2) = '05' then
       mes := '06/';
    if copy(per1,1,2) = '06' then
       mes := '07/';
    if copy(per1,1,2) = '07' then
       mes := '08/';
    if copy(per1,1,2) = '08' then
       mes := '09/';
    if copy(per1,1,2) = '09' then
       mes := '10/';
    if copy(per1,1,2) = '10' then
       mes := '11/';
    if copy(per1,1,2) = '11' then
       mes := '12/';
    if copy(per1,1,2) = '12' then
    begin
      mes := '01/';
      ano := floattostr(strtofloat(copy(per1,4,4))+1)
    end;
    per1 := mes + ano;
    ano := copy(per,4,4);
    write(outputfile,'Vr. Solidaridad decreto 047,');
    while per <> per1 do
    begin
      dmcompensa.qrysola.Close;
      dmcompensa.qrysola.Prepare;
      dmcompensa.qrysola.Params[0].Value :=per;
      dmcompensa.qrysola.Open;
      dmcompensa.qrysola.First;
      while not dmcompensa.qrysola.Eof do
      begin
        cot := dmcompensa.qrysolavsa.Value;
        write(outputfile,floattostr(cot)+',');
        dmcompensa.qrysola.Next;
      end;
      if cot = 0 then
         write(outputfile,'0,');
      cot := 0;
      dmcompensa.qrysola.Close;
      ano := copy(per,4,4);
      if copy(per,1,2) = '01' then
         mes := '02/';
      if copy(per,1,2) = '02' then
         mes := '03/';
      if copy(per,1,2) = '03' then
         mes := '04/';
      if copy(per,1,2) = '04' then
         mes := '05/';
      if copy(per,1,2) = '05' then
         mes := '06/';
      if copy(per,1,2) = '06' then
         mes := '07/';
      if copy(per,1,2) = '07' then
         mes := '08/';
      if copy(per,1,2) = '08' then
         mes := '09/';
      if copy(per,1,2) = '09' then
         mes := '10/';
      if copy(per,1,2) = '10' then
         mes := '11/';
      if copy(per,1,2) = '11' then
         mes := '12/';
      if copy(per,1,2) = '12' then
      begin
        mes := '01/';
        ano := floattostr(strtofloat(copy(per,4,4))+1)
      end;
      per := mes + ano;
    end;
    writeln(outputfile,' ');
    per := maskedit1.Text;
    per1 := maskedit2.Text;
    ano := copy(per1,4,4);
    if copy(per1,1,2) = '01' then
       mes := '02/';
    if copy(per1,1,2) = '02' then
       mes := '03/';
    if copy(per1,1,2) = '03' then
       mes := '04/';
    if copy(per1,1,2) = '04' then
       mes := '05/';
    if copy(per1,1,2) = '05' then
       mes := '06/';
    if copy(per1,1,2) = '06' then
       mes := '07/';
    if copy(per1,1,2) = '07' then
       mes := '08/';
    if copy(per1,1,2) = '08' then
       mes := '09/';
    if copy(per1,1,2) = '09' then
       mes := '10/';
    if copy(per1,1,2) = '10' then
       mes := '11/';
    if copy(per1,1,2) = '11' then
       mes := '12/';
    if copy(per1,1,2) = '12' then
    begin
      mes := '01/';
      ano := floattostr(strtofloat(copy(per1,4,4))+1)
    end;
    per1 := mes + ano;
    ano := copy(per,4,4);
    write(outputfile,'Vr. UPC Otros Beneficiarios,');
    while per <> per1 do
    begin
      dmcompensa.qryupcd.Close;
      dmcompensa.qryupcd.Prepare;
      dmcompensa.qryupcd.Params[0].Value :=per;
      dmcompensa.qryupcd.Open;
      dmcompensa.qryupcd.First;
      while not dmcompensa.qryupcd.Eof do
      begin
        cot := dmcompensa.qryupcdupd.Value;
        write(outputfile,floattostr(cot)+',');
        dmcompensa.qryupcd.Next;
      end;
      if cot = 0 then
         write(outputfile,'0,');
      cot := 0;
      dmcompensa.qryupcd.Close;
      ano := copy(per,4,4);
      if copy(per,1,2) = '01' then
         mes := '02/';
      if copy(per,1,2) = '02' then
         mes := '03/';
      if copy(per,1,2) = '03' then
         mes := '04/';
      if copy(per,1,2) = '04' then
         mes := '05/';
      if copy(per,1,2) = '05' then
         mes := '06/';
      if copy(per,1,2) = '06' then
         mes := '07/';
      if copy(per,1,2) = '07' then
         mes := '08/';
      if copy(per,1,2) = '08' then
         mes := '09/';
      if copy(per,1,2) = '09' then
         mes := '10/';
      if copy(per,1,2) = '10' then
         mes := '11/';
      if copy(per,1,2) = '11' then
         mes := '12/';
      if copy(per,1,2) = '12' then
      begin
        mes := '01/';
        ano := floattostr(strtofloat(copy(per,4,4))+1)
      end;
      per := mes + ano;
    end;
    writeln(outputfile,' ');
    writeln(outputfile,' ');
    showmessage('Finalizada La Generacion');
    closefile(outputfile);
    frmrelvalacum.Close;
  end;
end;

procedure Tfrmrelvalacum.FormShow(Sender: TObject);
begin
  maskedit1.SetFocus;
end;

end.
