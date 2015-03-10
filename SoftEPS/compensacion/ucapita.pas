unit ucapita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Gauges, StdCtrls, Mask, ExtCtrls, FileCtrl, ComCtrls,dateutils,Math,
  DB, DBTables, DBCtrls;

type
  Tfrmcapita = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label13: TLabel;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    GroupBox1: TGroupBox;
    Gauge1: TGauge;
    DirectoryListBox1: TDirectoryListBox;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    GroupBox3: TGroupBox;
    Gauge2: TGauge;
    Edit1: TEdit;
    DataSource1: TDataSource;
    Table1: TTable;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox1Exit(Sender: TObject);
    procedure CheckBox2Exit(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcapita: Tfrmcapita;

implementation

uses dmcompensacion;

{$R *.dfm}
function redondea(numero:real):real;
var i:real;
    d : real;
begin
    i := numero;
    d := i - int(i);
    if d >= 0.5 then
       redondea := roundto(i+0.1,0)
    else
       redondea := roundto(i,0);
 end;

procedure Tfrmcapita.Button1Click(Sender: TObject);
var
  nips,nips1 : string;
  nomarch,nomarch1,nomarch2,nomarch3 : string;
  outputfile : textfile;
  outputfile1 : textfile;
  p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19 : integer;
  p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37 : integer;
  p38,p39,p40,p41 : integer;
  edad  : real;
  edad1 : real;
  afil :real;
  fecini,fecfin : Tdatetime;
  mes,ano,per,per1 : string;
  salario :real;
  rge1,rge2,rge3,rge4,rge5,rge6,rge7 : real;
  rdi1,rdi2,rdi3,rdi4,rdi5,rdi6,rdi7 : real;
  rup1,rup2,rup3,rup4,rup5,rup6,rup7 : real;
  dias : real;
  ano1 :string;
  upc : real;
  riesgo : real;
  est : real;
  upces : real;
  rupc : real;
  i : real;
begin
  if checkbox1.Checked = true then
  begin
    i := 0;
    dmcompensa.qrymcregional.Close;
    dmcompensa.qrymcregional.Open;
    dmcompensa.qrymcregional.First;
    while not dmcompensa.qrymcregional.Eof do
    begin
      i := i+1;
      edit1.Text := floattostr(i);
      frmcapita.Refresh;
      if i = 24 then
      begin
        i := i + 1;
      end;

    dmcompensa.qrycappres.Close;
    dmcompensa.qrycappres.Prepare;
    dmcompensa.qrycappres.Params[0].Value :=dmcompensa.qrymcregionalCOD_REGIONAL.Value;
    dmcompensa.qrycappres.Open;
    dmcompensa.qrycappres.First;
    gauge2.MaxValue := dmcompensa.qrycappres.RecordCount;
    gauge2.MinValue := 0;
    gauge2.Progress := 1;
    if dmcompensa.qrycappres.RecordCount > 0 then
    begin
    while not dmcompensa.qrycappres.Eof do
    begin
      nips := dmcompensa.qrycappresNUM_IDENTIFICACION.Value;
      nips1 := dmcompensa.qrycappresNUM_IDENTIFICACION.Value;
      ano := copy(maskedit1.text,4,4);
      if copy(maskedit1.text,1,2) = '01' then
         mes := '02/';
      if copy(maskedit1.text,1,2) = '02' then
         mes := '03/';
      if copy(maskedit1.text,1,2) = '03' then
         mes := '04/';
      if copy(maskedit1.text,1,2) = '04' then
         mes := '05/';
      if copy(maskedit1.text,1,2) = '05' then
         mes := '06/';
      if copy(maskedit1.text,1,2) = '06' then
         mes := '07/';
      if copy(maskedit1.text,1,2) = '07' then
         mes := '08/';
      if copy(maskedit1.text,1,2) = '08' then
         mes := '09/';
      if copy(maskedit1.text,1,2) = '09' then
         mes := '10/';
      if copy(maskedit1.text,1,2) = '10' then
         mes := '11/';
      if copy(maskedit1.text,1,2) = '11' then
         mes := '12/';
      if copy(maskedit1.text,1,2) = '12' then
      begin
        mes := '01/';
        ano := floattostr(strtofloat(copy(maskedit1.text,4,4))+1)
      end;
      per := mes + ano;
      per1 := COPY(mes,1,2)+ano;
      if copy(per,1,2) = '02' then
      begin
        fecini := strtodate('01/'+per);
        fecfin := strtodate('28/'+per);
      end;
      if copy(per,1,2) <> '02' then
      begin
        fecini := strtodate('01/'+per);
        fecfin := strtodate('30/'+per);
      end;
      nomarch := directorylistbox1.Directory+'\'+per1+ copy(dmcompensa.qrycappresMON_PRESTADOR.Value,1,25) + '.txt';
      nomarch1 := directorylistbox1.Directory+'\PYP'+per1+copy(dmcompensa.qrycappresMON_PRESTADOR.Value,1,25) + '.txt';
      nomarch2 := directorylistbox1.Directory+'\OTR'+per1+copy(dmcompensa.qrycappresMON_PRESTADOR.Value,1,25) + '.txt';
      nomarch3 := directorylistbox1.Directory+'\TOTALES'+per1+copy(dmcompensa.qrycappresMON_PRESTADOR.Value,1,25) + '.txt';
      p1 := 0;
      p2 := 0;
      p3 := 0;
      p4 := 0;
      p5 := 0;
      p6 := 0;
      p7 := 0;
      p8 := 0;
      p9 := 0;
      p10 := 0;
      p11 := 0;
      p12 := 0;
      p13 := 0;
      p14 := 0;
      p15 := 0;
      p16 := 0;
      p17 := 0;
      p18 := 0;
      p19 := 0;
      p20 := 0;
      p21 := 0;
      p22 := 0;
      p23 := 0;
      p24 := 0;
      p25 := 0;
      p26 := 0;
      p27 := 0;
      p28 := 0;
      p29 := 0;
      p30 := 0;
      p31 := 0;
      p32 := 0;
      p33 := 0;
      p34 := 0;
      p35 := 0;
      p36 := 0;
      p37 := 0;
      p38 := 0;
      p39 := 0;
      p40 := 0;
      p41 := 0;
      afil := 0;
      assignfile (outputfile,nomarch);
      rewrite(outputfile);
      closefile(outputfile);
      append(outputfile);
      writeln(outputfile,'LISTADO DE CAPITACION PERIODO '+per);
      writeln(outputfile,'GENERADO CON CORTE AL '+datetostr(datetimepicker1.Date));
      writeln(outputfile,'IPS '+dmcompensa.qrycappresMON_PRESTADOR.Value);
      dmcompensa.qrycapita.Close;
      dmcompensa.qrycapita.Prepare;
      dmcompensa.qrycapita.Params[0].Value := maskedit1.text;
      dmcompensa.qrycapita.Params[1].Value := datetimepicker1.Date;
      dmcompensa.qrycapita.Params[2].Value := dmcompensa.qrycappresNUM_IDENTIFICACION.Value;
      dmcompensa.qrycapita.Params[3].Value := dmcompensa.qrymcregionalCOD_REGIONAL.Value;
      dmcompensa.qrycapita.Open;
      dmcompensa.qrycapita.First;
      gauge1.MinValue := 0;
      gauge1.MaxValue :=dmcompensa.qrycapita.RecordCount;
      gauge1.Progress := 1;
      frmcapita.Refresh;
      while not dmcompensa.qrycapita.Eof do
      begin
        edad := INT(yearspan(dmcompensa.qrycapitaFEC_NACIMIENTO.Value,datetimepicker1.Date));
        edad1 := INT(monthspan(dmcompensa.qrycapitaFEC_NACIMIENTO.Value,datetimepicker1.Date));
        dmcompensa.qrymcafiemp.Close;
        dmcompensa.qrymcafiemp.Params[0].Value:=dmcompensa.qrycapitaTIP_DOCUMENTO_COT.Value;
        dmcompensa.qrymcafiemp.Params[1].Value:=dmcompensa.qrycapitaNUM_DOCUMENTO_COT.Value;
        dmcompensa.qrymcafiemp.Params[2].Value:=fecfin;
        dmcompensa.qrymcafiemp.Params[3].Value:=fecini;
        dmcompensa.qrymcafiemp.Open;
        dmcompensa.qrymcafiemp.First;
        salario := dmcompensa.qrymcafiempVAL_SUELDO_AFIL.Value;
        afil := afil+1;
        if edad1 < 2 then
           p1 := p1 + 1;
        if (edad1 >= 3) and (edad1 <= 4) then
           p2 := p2 + 1;
        if (edad1 = 5) and (edad1 = 6) then
           p3 := p3 + 1;
        if (edad1 >= 7) and (edad1 <= 11) then
           p4 := p4 + 1;
        if edad1 = 12 then
           p5 := p5 + 1;
        if edad1 = 18 then
           p6 := p6 + 1;
        if edad1 <= 3 then
           p7 := p7 + 1;
        if (edad1 >= 4) and (edad1 <= 6) then
           p8 := p8 + 1;
        if (edad1 >= 7) and (edad1 <= 9) then
           p9 := p9 + 1;
        if (edad1 >= 10) and (edad1 <= 12) then
           p10 := p10 + 1;
        if (edad1 >= 13) and (edad1 <= 23) then
           p11 := p11 + 1;
        if (edad1 >= 13) and (edad1 <= 16) then
           p12 := p12 + 1;
        if (edad1 >= 17) and (edad1 <= 20) then
           p13 := p13 + 1;
        if (edad1 >= 21) and (edad1 <= 24) then
           p14 := p14 + 1;
        if edad = 2 then
           p15 := p15 + 1;
        if (edad1 >= 25) and (edad1 <= 30) then
           p16 := p16 + 1;
        if (edad1 >= 31) and (edad1 <= 36) then
           p17 := p17 + 1;
        if edad = 5 then
           p18 := p18 + 1;
        if (edad >= 9) and (edad <= 11) then
           p19 := p19 + 1;
        if edad = 10 then
           p20 := p20 + 1;
        if (edad >= 10) and (edad1 <= 49) and (dmcompensa.qrycapitaCOD_SEXO.Value = 'F') then
           p21 := p21 + 1;
        if (edad >= 2) and (edad1 <= 19) then
           p22 := p22 + 1;
        if edad >= 20 then
           p23 := p23 + 1;
        if edad >= 12 then
           p24 := p24 + 1;
        if (edad >= 5) and (edad <= 19) then
           p25 := p25 + 1;
        if (edad >= 3) and (edad <= 5) then
           p26 := p26 + 1;
        if (edad >= 6) and (edad <= 8) then
           p27 := p27 + 1;
        if (edad >= 12) and (edad <= 15) then
           p28 := p28 + 1;
        if (edad >= 30) and (edad <= 70) and (dmcompensa.qrycapitaCOD_SEXO.Value = 'M') then
           p29 := p29 + 1;
        if (edad >= 3) and (edad <= 9) then
           p30 := p30 + 1;
        if (edad >= 10) and (edad <= 13) then
           p31 := p31 + 1;
        if (edad >= 10) and (edad <= 13) and (dmcompensa.qrycapitaCOD_SEXO.Value = 'F') then
           p32 := p32 + 1;
        if (edad >= 16) and (edad <= 14) then
           p33 := p33 + 1;
        if (edad >= 17) and (edad <= 21) then
           p34 := p34 + 1;
        if (edad >= 22) and (edad <= 24) then
           p35 := p35 + 1;
        if (edad >= 25) and (edad <= 29) then
           p36 := p36 + 1;
        if (edad = 45) or (edad = 50) or (edad = 55) or (edad = 60) or (edad = 65) or (edad = 70) or (edad = 75) or (edad >= 80) then
           p37 := p37 + 1;
        if (edad >= 25) and (edad <= 69) and (dmcompensa.qrycapitaCOD_SEXO.Value = 'F') then
           p38 := p38 + 1;
        if (edad >= 50) and (dmcompensa.qrycapitaCOD_SEXO.Value = 'F') then
           p39 := p39 + 1;
        if (edad = 4) or (edad = 11) or (edad = 16) or (edad = 45) then
           p40 := p40 + 1;
        if (edad = 55) or (edad = 65) or (edad = 70) or (edad = 75) or (edad = 80) or (edad >= 85) then
           p41 := p41 + 1;
        write(outputfile,dmcompensa.qrycapitaTIP_DOCUMENTO_COT.Value);
        write(outputfile,','+dmcompensa.qrycapitaNUM_DOCUMENTO_COT.Value);
        write(outputfile,','+dmcompensa.qrycapitaAFI_TIPO_DOC.Value);
        write(outputfile,','+dmcompensa.qrycapitaAFI_NUMERO_DOC.Value);
        write(outputfile,','+dmcompensa.qrycapitaCOD_PARENTESCO.Value);
        write(outputfile,','+dmcompensa.qrycapitaPRI_NOMBRE.Value);
        write(outputfile,','+dmcompensa.qrycapitaSEG_NOMBRE.Value);
        write(outputfile,','+dmcompensa.qrycapitaPRI_APELLIDO.Value);
        write(outputfile,','+dmcompensa.qrycapitaSEG_APELLIDO.Value);
        write(outputfile,','+dmcompensa.qrycapitaCOD_SEXO.Value);
        write(outputfile,','+datetostr(dmcompensa.qrycapitaFEC_AFILIACION_UNI.Value));
        write(outputfile,','+datetostr(dmcompensa.qrycapitaFEC_AFILIACION_SIS.Value));
        write(outputfile,','+datetostr(dmcompensa.qrycapitaFEC_NACIMIENTO.Value));
        write(outputfile,','+floattostr(edad));
        write(outputfile,','+floattostr(edad1));
        write(outputfile,','+dmcompensa.qrycapitaDIR_AFILIADO_RES.Value);
        write(outputfile,','+dmcompensa.qrycapitaTEL_AFILIADO_RES.Value);
        write(outputfile,','+dmcompensa.qrycapitaNOM_CIUDAD.Value);
        write(outputfile,','+floattostr(salario));
        writeln(outputfile,',,'+dmcompensa.qrycapitaID_MULTIAFILIADO.Value);
        gauge1.Progress := gauge1.Progress+ 1;
        frmcapita.Refresh;
        dmcompensa.qrycapita.Next;
        nips1 := dmcompensa.qrycapitaNUM_DOCUMENTO_IPS.Value;
      end;
      dmcompensa.qrycapita.Close;
      dmcompensa.qrymcafiemp.Close;
      per := maskedit1.Text;
      fecini := strtodate('01/'+per);
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
      if copy(per,1,2) = '02' then
      begin
        fecfin := strtodate('28/'+per);
      end;
      if copy(per,1,2) <> '02' then
      begin
        fecfin := strtodate('30/'+per);
      end;
      dmcompensa.qrymccapafi.Close;
      dmcompensa.qrymccapafi.Prepare;
      dmcompensa.qrymccapafi.Params[0].Value := fecini;
      dmcompensa.qrymccapafi.Params[1].Value := fecfin;
      dmcompensa.qrymccapafi.Params[2].Value := dmcompensa.qrycappresNUM_IDENTIFICACION.Value;
      dmcompensa.qrymccapafi.Params[3].Value := dmcompensa.qrymcregionalCOD_REGIONAL.Value;
      dmcompensa.qrymccapafi.Params[4].Value := maskedit1.Text;
      dmcompensa.qrymccapafi.Open;
      dmcompensa.qrymccapafi.First;
      if dmcompensa.qrymccapafi.RecordCount > 0 then
      begin
        gauge1.MinValue := 0;
        gauge1.MaxValue := dmcompensa.qrymccapafi.RecordCount;
        gauge1.Progress := 1;
        while not dmcompensa.qrymccapafi.Eof do
        begin
          dmcompensa.qrymcrelafiliados.Close;
          dmcompensa.qrymcrelafiliados.Prepare;
          dmcompensa.qrymcrelafiliados.Params[0].Value :=dmcompensa.qrymccapafiTIP_DOCUMENTO.Value;
          dmcompensa.qrymcrelafiliados.Params[1].Value :=dmcompensa.qrymccapafiNUM_DOCUMENTO.Value;
          dmcompensa.qrymcrelafiliados.Params[2].Value :=fecfin;
          dmcompensa.qrymcrelafiliados.Params[3].Value :=fecini;
          dmcompensa.qrymcrelafiliados.Open;
          dmcompensa.qrymcrelafiliados.First;
          if dmcompensa.qrymcrelafiliados.RecordCount > 0 then
          begin
            while not dmcompensa.qrymcrelafiliados.Eof do
            begin
              dmcompensa.qrymcaficiu.Close;
              dmcompensa.qrymcaficiu.Prepare;
              dmcompensa.qrymcaficiu.Params[0].Value:= dmcompensa.qrymcrelafiliadosTIP_DOCUMENTO_BEN.Value;
              dmcompensa.qrymcaficiu.Params[1].Value:= dmcompensa.qrymcrelafiliadosNUM_DOCUMENTO_BEN.Value;
              dmcompensa.qrymcaficiu.Open;
              dmcompensa.qrymcaficiu.First;
              edad := INT(yearspan(dmcompensa.qrymcaficiuFEC_NACIMIENTO.Value,datetimepicker1.Date));
              edad1 := INT(monthspan(dmcompensa.qrymcaficiuFEC_NACIMIENTO.Value,datetimepicker1.Date));
              dmcompensa.qrymcafiemp.Close;
              dmcompensa.qrymcafiemp.Params[0].Value:=dmcompensa.qrymcrelafiliadosTIP_DOCUMENTO_COT.Value;
              dmcompensa.qrymcafiemp.Params[1].Value:=dmcompensa.qrymcrelafiliadosNUM_DOCUMENTO_COT.Value;
              dmcompensa.qrymcafiemp.Params[2].Value:=fecfin;
              dmcompensa.qrymcafiemp.Params[3].Value:=fecini;
              dmcompensa.qrymcafiemp.Open;
              dmcompensa.qrymcafiemp.First;
              salario := dmcompensa.qrymcafiempVAL_SUELDO_AFIL.Value;
              afil := afil+1;
              if edad1 < 2 then
                 p1 := p1 + 1;
              if (edad1 >= 3) and (edad1 <= 4) then
                 p2 := p2 + 1;
              if (edad1 = 5) and (edad1 = 6) then
                 p3 := p3 + 1;
              if (edad1 >= 7) and (edad1 <= 11) then
                 p4 := p4 + 1;
              if edad1 = 12 then
                 p5 := p5 + 1;
              if edad1 = 18 then
                 p6 := p6 + 1;
              if edad1 <= 3 then
                 p7 := p7 + 1;
              if (edad1 >= 4) and (edad1 <= 6) then
                 p8 := p8 + 1;
              if (edad1 >= 7) and (edad1 <= 9) then
                 p9 := p9 + 1;
              if (edad1 >= 10) and (edad1 <= 12) then
                 p10 := p10 + 1;
              if (edad1 >= 13) and (edad1 <= 23) then
                 p11 := p11 + 1;
              if (edad1 >= 13) and (edad1 <= 16) then
                 p12 := p12 + 1;
              if (edad1 >= 17) and (edad1 <= 20) then
                 p13 := p13 + 1;
              if (edad1 >= 21) and (edad1 <= 24) then
                 p14 := p14 + 1;
              if edad = 2 then
                 p15 := p15 + 1;
              if (edad1 >= 25) and (edad1 <= 30) then
                 p16 := p16 + 1;
              if (edad1 >= 31) and (edad1 <= 36) then
                 p17 := p17 + 1;
              if edad = 5 then
                 p18 := p18 + 1;
              if (edad >= 9) and (edad <= 11) then
                 p19 := p19 + 1;
              if edad = 10 then
                 p20 := p20 + 1;
              if (edad >= 10) and (edad1 <= 49) and (dmcompensa.qrymccapafiCOD_SEXO.Value = 'F') then
                 p21 := p21 + 1;
              if (edad >= 2) and (edad1 <= 19) then
                 p22 := p22 + 1;
              if edad >= 20 then
                 p23 := p23 + 1;
              if edad >= 12 then
                 p24 := p24 + 1;
              if (edad >= 5) and (edad <= 19) then
                 p25 := p25 + 1;
              if (edad >= 3) and (edad <= 5) then
                 p26 := p26 + 1;
              if (edad >= 6) and (edad <= 8) then
                 p27 := p27 + 1;
              if (edad >= 12) and (edad <= 15) then
                 p28 := p28 + 1;
              if (edad >= 30) and (edad <= 70) and (dmcompensa.qrymccapafiCOD_SEXO.Value = 'M') then
                 p29 := p29 + 1;
              if (edad >= 3) and (edad <= 9) then
                 p30 := p30 + 1;
              if (edad >= 10) and (edad <= 13) then
                 p31 := p31 + 1;
              if (edad >= 10) and (edad <= 13) and (dmcompensa.qrymccapafiCOD_SEXO.Value = 'F') then
                 p32 := p32 + 1;
              if (edad >= 16) and (edad <= 14) then
                 p33 := p33 + 1;
              if (edad >= 17) and (edad <= 21) then
                 p34 := p34 + 1;
              if (edad >= 22) and (edad <= 24) then
                 p35 := p35 + 1;
              if (edad >= 25) and (edad <= 29) then
                 p36 := p36 + 1;
              if (edad = 45) or (edad = 50) or (edad = 55) or (edad = 60) or (edad = 65) or (edad = 70) or (edad = 75) or (edad >= 80) then
                 p37 := p37 + 1;
              if (edad >= 25) and (edad <= 69) and (dmcompensa.qrymccapafiCOD_SEXO.Value = 'F') then
                 p38 := p38 + 1;
              if (edad >= 50) and (dmcompensa.qrymccapafiCOD_SEXO.Value = 'F') then
                 p39 := p39 + 1;
              if (edad = 4) or (edad = 11) or (edad = 16) or (edad = 45) then
                 p40 := p40 + 1;
              if (edad = 55) or (edad = 65) or (edad = 70) or (edad = 75) or (edad = 80) or (edad >= 85) then
                 p41 := p41 + 1;
              write(outputfile,dmcompensa.qrymcrelafiliadosTIP_DOCUMENTO_COT.Value);
              write(outputfile,','+dmcompensa.qrymcrelafiliadosNUM_DOCUMENTO_COT.Value);
              write(outputfile,','+dmcompensa.qrymcrelafiliadosTIP_DOCUMENTO_BEN.Value);
              write(outputfile,','+dmcompensa.qrymcrelafiliadosNUM_DOCUMENTO_BEN.Value);
              write(outputfile,','+dmcompensa.qrymcrelafiliadosCOD_PARENTESCO.Value);
              write(outputfile,','+dmcompensa.qrymcaficiuPRI_NOMBRE.Value);
              write(outputfile,','+dmcompensa.qrymcaficiuSEG_NOMBRE.Value);
              write(outputfile,','+dmcompensa.qrymcaficiuPRI_APELLIDO.Value);
              write(outputfile,','+dmcompensa.qrymcaficiuSEG_APELLIDO.Value);
              write(outputfile,','+dmcompensa.qrymcaficiuCOD_SEXO.Value);
              write(outputfile,','+datetostr(dmcompensa.qrymcaficiuFEC_AFILIACION_UNI.Value));
              write(outputfile,','+datetostr(dmcompensa.qrymcaficiuFEC_AFILIACION_SIS.Value));
              write(outputfile,','+datetostr(dmcompensa.qrymcaficiuFEC_NACIMIENTO.Value));
              write(outputfile,','+floattostr(edad));
              write(outputfile,','+floattostr(edad1));
              write(outputfile,','+dmcompensa.qrymcaficiuDIR_AFILIADO_RES.Value);
              write(outputfile,','+dmcompensa.qrymcaficiuTEL_AFILIADO_RES.Value);
              write(outputfile,','+dmcompensa.qrymcaficiuNOM_CIUDAD.Value);
              write(outputfile,','+floattostr(salario));
              if dmcompensa.qrymcaficiuEPS_TIP_DOC.Value = '' then
                 writeln(outputfile,','+'URGENCIAS')
              else
                 writeln(outputfile,'');
              gauge1.Progress := gauge1.Progress+ 1;
              frmcapita.Refresh;
              dmcompensa.qrymcrelafiliados.Next;
            end;
          end;
          dmcompensa.qrymccapafi.Next;
        end;
      end;
      dmcompensa.qrymccapafi.Close;
      dmcompensa.qrymcrelafiliados.Close;
      dmcompensa.qrymcaficiu.Close;
      dmcompensa.qrymcafiemp.Close;
      dmcompensa.qrymcdepto.Close;
      writeln(outputfile,' ');
      writeln(outputfile,'TOTAL AFILIADOS CAPITADOS '+floattostr(afil));
      closefile(outputfile);
      assignfile (outputfile,nomarch1);
      rewrite(outputfile);
      closefile(outputfile);
      append(outputfile);
      writeln(outputfile,'Total de niños de dos meses de edad y menos,'+inttostr(p1));
      writeln(outputfile,'Total de niños de tres y cuatro meses de edad,'+inttostr(p2));
      writeln(outputfile,'Total de niños de 5 y 6 meses de edad,'+inttostr(p3));
      writeln(outputfile,'Total de niños de 7 a 11 meses de edad,'+inttostr(p4));
      writeln(outputfile,'Total de niños de 12 meses de edad,'+inttostr(p5));
      writeln(outputfile,'Total de niños de 18 meses de edad,'+inttostr(p6));
      writeln(outputfile,'Total niños de 3 meses o menos de edad,'+inttostr(p7));
      writeln(outputfile,'Total niños de 4 a 6 meses de edad,'+inttostr(p8));
      writeln(outputfile,'Total niños de 7 a 9 meses de edad,'+inttostr(p9));
      writeln(outputfile,'Total niños de 10 a 12 meses de edad,'+inttostr(p10));
      writeln(outputfile,'Total niños de 13 a 23 meses de edad,'+inttostr(p11));
      writeln(outputfile,'Total niños de 13 a 16 meses de edad,'+inttostr(p12));
      writeln(outputfile,'Total niños de 17 a 20 meses de edad,'+inttostr(p13));
      writeln(outputfile,'Total niños de 21 a 24 meses de edad,'+inttostr(p14));
      writeln(outputfile,'Total niños de 2 años de edad,'+inttostr(p15));
      writeln(outputfile,'Total niños de 25 a 30 meses de edad,'+inttostr(p16));
      writeln(outputfile,'Total niños de 31 a 36 meses de edad,'+inttostr(p17));
      writeln(outputfile,'Total de niños de 5 años de edad,'+inttostr(p18));
      writeln(outputfile,'Total de personas de 9 a 11 años,'+inttostr(p19));
      writeln(outputfile,'Total de niños de 10 años de edad,'+inttostr(p20));
      writeln(outputfile,'Total de mujeres de 10 a 49 años,'+inttostr(p21));
      writeln(outputfile,'Total personas de 2 a 19 años,'+inttostr(p22));
      writeln(outputfile,'Total de personas de 20 años y mas,'+inttostr(p23));
      writeln(outputfile,'Total de personas de 12 años y más,'+inttostr(p24));
      writeln(outputfile,'Total de personas de 5 a 19 años,'+inttostr(p25));
      writeln(outputfile,'Total de personas de 3 a 5 años,'+inttostr(p26));
      writeln(outputfile,'Total de personas de 6 a 8 años,'+inttostr(p27));
      writeln(outputfile,'Total de personas de 12 a 15 años,'+inttostr(p28));
      writeln(outputfile,'Total de hombres de 30 a 70 años,'+inttostr(p29));
      writeln(outputfile,'Total niños de 3 a 9 años de edad,'+inttostr(p30));
      writeln(outputfile,'Total personas de 10 a 13 años de edad,'+inttostr(p31));
      writeln(outputfile,'Total mujeres de 10 a 13 años de edad,'+inttostr(p32));
      writeln(outputfile,'Total personas de 14 a 16 años de edad,'+inttostr(p33));
      writeln(outputfile,'Total personas de 17 a 21 años de edad,'+inttostr(p34));
      writeln(outputfile,'Total personas de 22 a 24 años de edad,'+inttostr(p35));
      writeln(outputfile,'Total personas de 25 a 29 años de edad,'+inttostr(p36));
      writeln(outputfile,'Total personas de 45, 50, 55, 60, 65, 70, 75, 80 y más años de edad,'+inttostr(p37));
      writeln(outputfile,'Total mujeres de 25 a 69 años de edad,'+inttostr(p38));
      writeln(outputfile,'Total mujeres de 50 o más años de edad,'+inttostr(p39));
      writeln(outputfile,'Total personas de 4, 11, 16 y 45 años de edad,'+inttostr(p40));
      writeln(outputfile,'Total personas de 55, 65, 70, 75, 80, 85 y más años de edad,'+inttostr(p41));
      closefile(outputfile);
      dmcompensa.qrycappres.Next;
      gauge2.Progress := gauge2.Progress + 1;
      frmcapita.Refresh;
    end;
    dmcompensa.qrycappres.Close;
  end;
    dmcompensa.qrymcregional.Next;

  end;
  showmessage('Finalizada la Generacion de los Archivos de Capitacion');
  frmcapita.Close;
  end;

//// Archivos Recapitacion   /

  if checkbox2.Checked = true then
  begin
    dmcompensa.qrycappres.Close;
    dmcompensa.qrycappres.Prepare;
    dmcompensa.qrycappres.Open;
    dmcompensa.qrycappres.First;
    gauge2.MaxValue := dmcompensa.qrycappres.RecordCount;
    gauge2.MinValue := 0;
    gauge2.Progress := 1;
    while not dmcompensa.qrycappres.Eof do
    begin
      nips := dmcompensa.qrycappresNUM_IDENTIFICACION.Value;
      nips1 := dmcompensa.qrycappresNUM_IDENTIFICACION.Value;
      ano := copy(maskedit1.text,4,4);
      if copy(maskedit1.text,1,2) = '01' then
         mes := '02/';
      if copy(maskedit1.text,1,2) = '02' then
         mes := '03/';
      if copy(maskedit1.text,1,2) = '03' then
         mes := '04/';
      if copy(maskedit1.text,1,2) = '04' then
         mes := '05/';
      if copy(maskedit1.text,1,2) = '05' then
         mes := '06/';
      if copy(maskedit1.text,1,2) = '06' then
         mes := '07/';
      if copy(maskedit1.text,1,2) = '07' then
         mes := '08/';
      if copy(maskedit1.text,1,2) = '08' then
         mes := '09/';
      if copy(maskedit1.text,1,2) = '09' then
         mes := '10/';
      if copy(maskedit1.text,1,2) = '10' then
         mes := '11/';
      if copy(maskedit1.text,1,2) = '11' then
         mes := '12/';
      if copy(maskedit1.text,1,2) = '12' then
      begin
        mes := '01/';
        ano := floattostr(strtofloat(copy(maskedit1.text,4,4))+1)
      end;
      per := mes + ano;
      per1 := COPY(mes,1,2)+ano;
      if copy(per,1,2) = '02' then
      begin
        fecini := strtodate('01/'+per);
        fecfin := strtodate('28/'+per);
      end;
      if copy(per,1,2) <> '02' then
      begin
        fecini := strtodate('01/'+per);
        fecfin := strtodate('30/'+per);
      end;
      nomarch := directorylistbox1.Directory+'\'+per1+ copy(dmcompensa.qrycappresMON_PRESTADOR.Value,1,25) + '.txt';
      nomarch1 := directorylistbox1.Directory+'\PYP'+per1+copy(dmcompensa.qrycappresMON_PRESTADOR.Value,1,25) + '.txt';
      nomarch2 := directorylistbox1.Directory+'\OTR'+per1+copy(dmcompensa.qrycappresMON_PRESTADOR.Value,1,25) + '.txt';
      nomarch3 := directorylistbox1.Directory+'\TOTALES'+per1+copy(dmcompensa.qrycappresMON_PRESTADOR.Value,1,25) + '.txt';
      p1 := 0;
      p2 := 0;
      p3 := 0;
      p4 := 0;
      p5 := 0;
      p6 := 0;
      p7 := 0;
      p8 := 0;
      p9 := 0;
      p10 := 0;
      p11 := 0;
      p12 := 0;
      p13 := 0;
      p14 := 0;
      p15 := 0;
      p16 := 0;
      p17 := 0;
      p18 := 0;
      p19 := 0;
      p20 := 0;
      p21 := 0;
      p22 := 0;
      p23 := 0;
      p24 := 0;
      p25 := 0;
      p26 := 0;
      p27 := 0;
      p28 := 0;
      p29 := 0;
      p30 := 0;
      p31 := 0;
      p32 := 0;
      p33 := 0;
      p34 := 0;
      p35 := 0;
      p36 := 0;
      p37 := 0;
      p38 := 0;
      p39 := 0;
      p40 := 0;
      p41 := 0;
      afil := 0;
      assignfile (outputfile,nomarch);
      rewrite(outputfile);
      closefile(outputfile);
      append(outputfile);
      writeln(outputfile,'LISTADO DE CAPITACION PERIODO '+per);
      writeln(outputfile,'GENERADO CON CORTE AL '+datetostr(datetimepicker1.Date));
      writeln(outputfile,'IPS '+dmcompensa.qrycappresMON_PRESTADOR.Value);
      dmcompensa.qrycapita.Close;
      dmcompensa.qrycapita.Prepare;
      dmcompensa.qrycapita.Params[0].Value := maskedit1.text;
      dmcompensa.qrycapita.Params[1].Value := datetimepicker1.Date;
      dmcompensa.qrycapita.Params[2].Value := dmcompensa.qrycappresNUM_IDENTIFICACION.Value;
      dmcompensa.qrycapita.Open;
      dmcompensa.qrycapita.First;
      gauge1.MinValue := 0;
      gauge1.MaxValue :=dmcompensa.qrycapita.RecordCount;
      gauge1.Progress := 1;
      frmcapita.Refresh;
      rge1 := 0;
      rge2 := 0;
      rge3 := 0;
      rge4 := 0;
      rge5 := 0;
      rge6 := 0;
      rge7 := 0;
      rdi1 := 0;
      rdi2 := 0;
      rdi3 := 0;
      rdi4 := 0;
      rdi5 := 0;
      rdi6 := 0;
      rdi7 := 0;
      rup1 := 0;
      rup2 := 0;
      rup3 := 0;
      rup4 := 0;
      rup5 := 0;
      rup6 := 0;
      rup7 := 0;
      while not dmcompensa.qrycapita.Eof do
      begin
        edad := INT(yearspan(dmcompensa.qrycapitaFEC_NACIMIENTO.Value,datetimepicker1.Date));
        edad1 := INT(monthspan(dmcompensa.qrycapitaFEC_NACIMIENTO.Value,datetimepicker1.Date));
        dmcompensa.qrymcafiemp.Close;
        dmcompensa.qrymcafiemp.Params[0].Value:=dmcompensa.qrycapitaTIP_DOCUMENTO_COT.Value;
        dmcompensa.qrymcafiemp.Params[1].Value:=dmcompensa.qrycapitaNUM_DOCUMENTO_COT.Value;
        dmcompensa.qrymcafiemp.Params[2].Value:=fecfin;
        dmcompensa.qrymcafiemp.Params[3].Value:=fecini;
        dmcompensa.qrymcafiemp.Open;
        dmcompensa.qrymcafiemp.First;
        salario := dmcompensa.qrymcafiempVAL_SUELDO_AFIL.Value;
        afil := afil+1;
        if edad1 < 2 then
           p1 := p1 + 1;
        if (edad1 >= 3) and (edad1 <= 4) then
           p2 := p2 + 1;
        if (edad1 = 5) and (edad1 = 6) then
           p3 := p3 + 1;
        if (edad1 >= 7) and (edad1 <= 11) then
           p4 := p4 + 1;
        if edad1 = 12 then
           p5 := p5 + 1;
        if edad1 = 18 then
           p6 := p6 + 1;
        if edad1 <= 3 then
           p7 := p7 + 1;
        if (edad1 >= 4) and (edad1 <= 6) then
           p8 := p8 + 1;
        if (edad1 >= 7) and (edad1 <= 9) then
           p9 := p9 + 1;
        if (edad1 >= 10) and (edad1 <= 12) then
           p10 := p10 + 1;
        if (edad1 >= 13) and (edad1 <= 23) then
           p11 := p11 + 1;
        if (edad1 >= 13) and (edad1 <= 16) then
           p12 := p12 + 1;
        if (edad1 >= 17) and (edad1 <= 20) then
           p13 := p13 + 1;
        if (edad1 >= 21) and (edad1 <= 24) then
          p14 := p14 + 1;
        if edad = 2 then
           p15 := p15 + 1;
        if (edad1 >= 25) and (edad1 <= 30) then
           p16 := p16 + 1;
        if (edad1 >= 31) and (edad1 <= 36) then
           p17 := p17 + 1;
        if edad = 5 then
           p18 := p18 + 1;
        if (edad >= 9) and (edad <= 11) then
           p19 := p19 + 1;
        if edad = 10 then
           p20 := p20 + 1;
        if (edad >= 10) and (edad1 <= 49) and (dmcompensa.qrycapitaCOD_SEXO.Value = 'F') then
           p21 := p21 + 1;
        if (edad >= 2) and (edad1 <= 19) then
           p22 := p22 + 1;
        if edad >= 20 then
           p23 := p23 + 1;
        if edad >= 12 then
           p24 := p24 + 1;
        if (edad >= 5) and (edad <= 19) then
           p25 := p25 + 1;
        if (edad >= 3) and (edad <= 5) then
           p26 := p26 + 1;
        if (edad >= 6) and (edad <= 8) then
           p27 := p27 + 1;
        if (edad >= 12) and (edad <= 15) then
           p28 := p28 + 1;
        if (edad >= 30) and (edad <= 70) and (dmcompensa.qrycapitaCOD_SEXO.Value = 'M') then
           p29 := p29 + 1;
        if (edad >= 3) and (edad <= 9) then
           p30 := p30 + 1;
        if (edad >= 10) and (edad <= 13) then
           p31 := p31 + 1;
        if (edad >= 10) and (edad <= 13) and (dmcompensa.qrycapitaCOD_SEXO.Value = 'F') then
           p32 := p32 + 1;
        if (edad >= 16) and (edad <= 14) then
           p33 := p33 + 1;
        if (edad >= 17) and (edad <= 21) then
           p34 := p34 + 1;
        if (edad >= 22) and (edad <= 24) then
           p35 := p35 + 1;
        if (edad >= 25) and (edad <= 29) then
           p36 := p36 + 1;
        if (edad = 45) or (edad = 50) or (edad = 55) or (edad = 60) or (edad = 65) or (edad = 70) or (edad = 75) or (edad >= 80) then
           p37 := p37 + 1;
        if (edad >= 25) and (edad <= 69) and (dmcompensa.qrycapitaCOD_SEXO.Value = 'F') then
           p38 := p38 + 1;
        if (edad >= 50) and (dmcompensa.qrycapitaCOD_SEXO.Value = 'F') then
           p39 := p39 + 1;
        if (edad = 4) or (edad = 11) or (edad = 16) or (edad = 45) then
           p40 := p40 + 1;
        if (edad = 55) or (edad = 65) or (edad = 70) or (edad = 75) or (edad = 80) or (edad >= 85) then
           p41 := p41 + 1;
        write(outputfile,dmcompensa.qrycapitaTIP_DOCUMENTO_COT.Value);
        write(outputfile,','+dmcompensa.qrycapitaNUM_DOCUMENTO_COT.Value);
        write(outputfile,','+dmcompensa.qrycapitaAFI_TIPO_DOC.Value);
        write(outputfile,','+dmcompensa.qrycapitaAFI_NUMERO_DOC.Value);
        write(outputfile,','+dmcompensa.qrycapitaCOD_PARENTESCO.Value);
        write(outputfile,','+dmcompensa.qrycapitaPRI_NOMBRE.Value);
        write(outputfile,','+dmcompensa.qrycapitaSEG_NOMBRE.Value);
        write(outputfile,','+dmcompensa.qrycapitaPRI_APELLIDO.Value);
        write(outputfile,','+dmcompensa.qrycapitaSEG_APELLIDO.Value);
        write(outputfile,','+dmcompensa.qrycapitaCOD_SEXO.Value);
        write(outputfile,','+datetostr(dmcompensa.qrycapitaFEC_AFILIACION_UNI.Value));
        write(outputfile,','+datetostr(dmcompensa.qrycapitaFEC_AFILIACION_SIS.Value));
        write(outputfile,','+datetostr(dmcompensa.qrycapitaFEC_NACIMIENTO.Value));
        write(outputfile,','+floattostr(edad));
        write(outputfile,','+floattostr(edad1));
        write(outputfile,','+dmcompensa.qrycapitaDIR_AFILIADO_RES.Value);
        write(outputfile,','+dmcompensa.qrycapitaTEL_AFILIADO_RES.Value);
        write(outputfile,','+dmcompensa.qrycapitaDIAS.Value);
        write(outputfile,','+dmcompensa.qrycapitaNOM_CIUDAD.Value);
        write(outputfile,','+dmcompensa.qrycapitaNOM_DEPARTAMENTO.Value);
        writeln(outputfile,','+floattostr(salario));
        gauge1.Progress := gauge1.Progress+ 1;
        frmcapita.Refresh;
        if dmcompensa.qrycapitaCOD_GRUPO_ETAREO.Value = 1 then
        begin
          rge1 := rge1 + 1;
          rdi1 := rdi1 + strtofloat(dmcompensa.qrycapitaDIAS.value);
          rup1 := rup1 + dmcompensa.qrycapitaVAL_UPC.Value;
        end;
        if dmcompensa.qrycapitaCOD_GRUPO_ETAREO.Value = 2 then
        begin
          rge2 := rge2 + 1;
          rdi2 := rdi2 + strtofloat(dmcompensa.qrycapitaDIAS.value);
          rup2 := rup2 + dmcompensa.qrycapitaVAL_UPC.Value;
        end;
        if dmcompensa.qrycapitaCOD_GRUPO_ETAREO.Value = 3 then
        begin
          rge3 := rge3 + 1;
          rdi3 := rdi3 + strtofloat(dmcompensa.qrycapitaDIAS.value);
          rup3 := rup3 + dmcompensa.qrycapitaVAL_UPC.Value;
        end;
        if dmcompensa.qrycapitaCOD_GRUPO_ETAREO.Value = 4 then
        begin
          rge4 := rge4 + 1;
          rdi4 := rdi4 + strtofloat(dmcompensa.qrycapitaDIAS.value);
          rup4 := rup4 + dmcompensa.qrycapitaVAL_UPC.Value;
        end;
        if dmcompensa.qrycapitaCOD_GRUPO_ETAREO.Value = 5 then
        begin
          rge5 := rge5 + 1;
          rdi5 := rdi5 + strtofloat(dmcompensa.qrycapitaDIAS.value);
          rup5 := rup5 + dmcompensa.qrycapitaVAL_UPC.Value;
        end;
        if dmcompensa.qrycapitaCOD_GRUPO_ETAREO.Value = 6 then
        begin
          rge6 := rge6 + 1;
          rdi6 := rdi6 + strtofloat(dmcompensa.qrycapitaDIAS.value);
          rup6 := rup6 + dmcompensa.qrycapitaVAL_UPC.Value;
        end;
        if dmcompensa.qrycapitaCOD_GRUPO_ETAREO.Value = 7 then
        begin
          rge7 := rge7 + 1;
          rdi7 := rdi7 + strtofloat(dmcompensa.qrycapitaDIAS.value);
          rup7 := rup7 + dmcompensa.qrycapitaVAL_UPC.Value;
        end;
        dmcompensa.qrycapita.Next;
        nips1 := dmcompensa.qrycapitaNUM_DOCUMENTO_IPS.Value;
      end;
      per := maskedit1.Text;
      if copy(per,1,2) = '02' then
      begin
        fecini := strtodate('01/'+per);
        fecfin := strtodate('28/'+per);
      end;
      if copy(per,1,2) <> '02' then
      begin
        fecini := strtodate('01/'+per);
        fecfin := strtodate('30/'+per);
      end;
      ////Afiliados Dependientes Con fecha de Afiliacion Mes Anterior a Capitacion No Compensados
      dmcompensa.qrymccapafi.Close;
      dmcompensa.qrymccapafi.Prepare;
      dmcompensa.qrymccapafi.Params[0].Value := fecini;
      dmcompensa.qrymccapafi.Params[1].Value := fecfin;
      dmcompensa.qrymccapafi.Params[2].Value := dmcompensa.qrycappresNUM_IDENTIFICACION.Value;
      dmcompensa.qrymccapafi.Params[3].Value := maskedit1.Text;
      dmcompensa.qrymccapafi.Open;
      dmcompensa.qrymccapafi.First;
      if dmcompensa.qrymccapafi.RecordCount > 0 then
      begin
        gauge1.MinValue := 0;
        gauge1.MaxValue := dmcompensa.qrymccapafi.RecordCount;
        gauge1.Progress := 1;
        while not dmcompensa.qrymccapafi.Eof do
        begin
          dmcompensa.qrymcrelafiliados.Close;
          dmcompensa.qrymcrelafiliados.Prepare;
          dmcompensa.qrymcrelafiliados.Params[0].Value :=dmcompensa.qrymccapafiTIP_DOCUMENTO.Value;
          dmcompensa.qrymcrelafiliados.Params[1].Value :=dmcompensa.qrymccapafiNUM_DOCUMENTO.Value;
          dmcompensa.qrymcrelafiliados.Params[2].Value :=fecfin;
          dmcompensa.qrymcrelafiliados.Params[3].Value :=fecini;
          dmcompensa.qrymcrelafiliados.Open;
          dmcompensa.qrymcrelafiliados.First;
          if dmcompensa.qrymcrelafiliados.RecordCount > 0 then
          begin
            while not dmcompensa.qrymcrelafiliados.Eof do
            begin
              dmcompensa.qrymcaficiu.Close;
              dmcompensa.qrymcaficiu.Prepare;
              dmcompensa.qrymcaficiu.Params[0].Value:= dmcompensa.qrymcrelafiliadosTIP_DOCUMENTO_BEN.Value;
              dmcompensa.qrymcaficiu.Params[1].Value:= dmcompensa.qrymcrelafiliadosNUM_DOCUMENTO_BEN.Value;
              dmcompensa.qrymcaficiu.Open;
              dmcompensa.qrymcaficiu.First;
              edad := INT(yearspan(dmcompensa.qrymcaficiuFEC_NACIMIENTO.Value,datetimepicker1.Date));
              edad1 := INT(monthspan(dmcompensa.qrymcaficiuFEC_NACIMIENTO.Value,datetimepicker1.Date));
              dmcompensa.qrymcafiemp.Close;
              dmcompensa.qrymcafiemp.Params[0].Value:=dmcompensa.qrymcrelafiliadosTIP_DOCUMENTO_COT.Value;
              dmcompensa.qrymcafiemp.Params[1].Value:=dmcompensa.qrymcrelafiliadosNUM_DOCUMENTO_COT.Value;
              dmcompensa.qrymcafiemp.Params[2].Value:=fecfin;
              dmcompensa.qrymcafiemp.Params[3].Value:=fecini;
              dmcompensa.qrymcafiemp.Open;
              dmcompensa.qrymcafiemp.First;
              salario := dmcompensa.qrymcafiempVAL_SUELDO_AFIL.Value;
{              afil := afi
              if edad1 < 2 then
                 p1 := p1 + 1;
              if (edad1 >= 3) and (edad1 <= 4) then
                 p2 := p2 + 1;
              if (edad1 = 5) and (edad1 = 6) then
                 p3 := p3 + 1;
              if (edad1 >= 7) and (edad1 <= 11) then
                 p4 := p4 + 1;
              if edad1 = 12 then
                 p5 := p5 + 1;
              if edad1 = 18 then
                 p6 := p6 + 1;
              if edad1 <= 3 then
                 p7 := p7 + 1;
              if (edad1 >= 4) and (edad1 <= 6) then
                 p8 := p8 + 1;
              if (edad1 >= 7) and (edad1 <= 9) then
                 p9 := p9 + 1;
              if (edad1 >= 10) and (edad1 <= 12) then
                 p10 := p10 + 1;
              if (edad1 >= 13) and (edad1 <= 23) then
                 p11 := p11 + 1;
              if (edad1 >= 13) and (edad1 <= 16) then
                 p12 := p12 + 1;
              if (edad1 >= 17) and (edad1 <= 20) then
                 p13 := p13 + 1;
              if (edad1 >= 21) and (edad1 <= 24) then
                 p14 := p14 + 1;
              if edad = 2 then
                 p15 := p15 + 1;
              if (edad1 >= 25) and (edad1 <= 30) then
                 p16 := p16 + 1;
              if (edad1 >= 31) and (edad1 <= 36) then
                 p17 := p17 + 1;
              if edad = 5 then
                 p18 := p18 + 1;
              if (edad >= 9) and (edad <= 11) then
                 p19 := p19 + 1;
              if edad = 10 then
                 p20 := p20 + 1;
              if (edad >= 10) and (edad1 <= 49) and (dmcompensa.qrymccapafiCOD_SEXO.Value = 'F') then
                 p21 := p21 + 1;
              if (edad >= 2) and (edad1 <= 19) then
                 p22 := p22 + 1;
              if edad >= 20 then
                 p23 := p23 + 1;
              if edad >= 12 then
                 p24 := p24 + 1;
              if (edad >= 5) and (edad <= 19) then
                 p25 := p25 + 1;
              if (edad >= 3) and (edad <= 5) then
                 p26 := p26 + 1;
              if (edad >= 6) and (edad <= 8) then
                 p27 := p27 + 1;
              if (edad >= 12) and (edad <= 15) then
                 p28 := p28 + 1;
              if (edad >= 30) and (edad <= 70) and (dmcompensa.qrymccapafiCOD_SEXO.Value = 'M') then
                 p29 := p29 + 1;
              if (edad >= 3) and (edad <= 9) then
                 p30 := p30 + 1;
              if (edad >= 10) and (edad <= 13) then
                 p31 := p31 + 1;
              if (edad >= 10) and (edad <= 13) and (dmcompensa.qrymccapafiCOD_SEXO.Value = 'F') then
                 p32 := p32 + 1;
              if (edad >= 16) and (edad <= 14) then
                 p33 := p33 + 1;
              if (edad >= 17) and (edad <= 21) then
                 p34 := p34 + 1;
              if (edad >= 22) and (edad <= 24) then
                 p35 := p35 + 1;
              if (edad >= 25) and (edad <= 29) then
                 p36 := p36 + 1;
              if (edad = 45) or (edad = 50) or (edad = 55) or (edad = 60) or (edad = 65) or (edad = 70) or (edad = 75) or (edad >= 80) then
                 p37 := p37 + 1;
              if (edad >= 25) and (edad <= 69) and (dmcompensa.qrymccapafiCOD_SEXO.Value = 'F') then
                 p38 := p38 + 1;
              if (edad >= 50) and (dmcompensa.qrymccapafiCOD_SEXO.Value = 'F') then
                 p39 := p39 + 1;
              if (edad = 4) or (edad = 11) or (edad = 16) or (edad = 45) then
                 p40 := p40 + 1;
              if (edad = 55) or (edad = 65) or (edad = 70) or (edad = 75) or (edad = 80) or (edad >= 85) then
                 p41 := p41 + 1; }
              write(outputfile,dmcompensa.qrymcrelafiliadosTIP_DOCUMENTO_COT.Value);
              write(outputfile,','+dmcompensa.qrymcrelafiliadosNUM_DOCUMENTO_COT.Value);
              write(outputfile,','+dmcompensa.qrymcrelafiliadosTIP_DOCUMENTO_BEN.Value);
              write(outputfile,','+dmcompensa.qrymcrelafiliadosNUM_DOCUMENTO_BEN.Value);
              write(outputfile,','+dmcompensa.qrymcrelafiliadosCOD_PARENTESCO.Value);
              write(outputfile,','+dmcompensa.qrymcaficiuPRI_NOMBRE.Value);
              write(outputfile,','+dmcompensa.qrymcaficiuSEG_NOMBRE.Value);
              write(outputfile,','+dmcompensa.qrymcaficiuPRI_APELLIDO.Value);
              write(outputfile,','+dmcompensa.qrymcaficiuSEG_APELLIDO.Value);
              write(outputfile,','+dmcompensa.qrymcaficiuCOD_SEXO.Value);
              write(outputfile,','+datetostr(dmcompensa.qrymcaficiuFEC_AFILIACION_UNI.Value));
              write(outputfile,','+datetostr(dmcompensa.qrymcaficiuFEC_AFILIACION_SIS.Value));
              write(outputfile,','+datetostr(dmcompensa.qrymcaficiuFEC_NACIMIENTO.Value));
              write(outputfile,','+floattostr(edad));
              write(outputfile,','+floattostr(edad1));
              write(outputfile,','+dmcompensa.qrymcaficiuDIR_AFILIADO_RES.Value);
              write(outputfile,','+dmcompensa.qrymcaficiuTEL_AFILIADO_RES.Value);
              write(outputfile,','+floattostr(int(dayspan(dmcompensa.qrymcaficiuFEC_AFILIACION_UNI.Value,fecfin))+1));
              write(outputfile,','+dmcompensa.qrymcaficiuNOM_CIUDAD.Value);
              dmcompensa.qrymcdepto.close;
              dmcompensa.qrymcdepto.Prepare;
              dmcompensa.qrymcdepto.Params[0].Value := dmcompensa.qrymcaficiuCOD_DEPARTAMENTO_RES.Value;
              dmcompensa.qrymcdepto.Open;
              dmcompensa.qrymcdepto.first;
              write(outputfile,','+dmcompensa.qrymcdeptoNOM_DEPARTAMENTO.Value);
              write(outputfile,','+floattostr(salario));
              if dmcompensa.qrymcaficiuEPS_TIP_DOC.Value = '' then
                 writeln(outputfile,','+'URGENCIAS')
              else
                 writeln(outputfile,'');
              gauge1.Progress := gauge1.Progress+ 1;
              frmcapita.Refresh;
              edad := INT(yearspan(dmcompensa.qrymcaficiuFEC_NACIMIENTO.Value,datetimepicker1.Date));
              dmcompensa.qrymcgrpeta.Close;
              dmcompensa.qrymcgrpeta.Prepare;
              dmcompensa.qrymcgrpeta.Params[0].Value :=edad;
              dmcompensa.qrymcgrpeta.Params[1].Value :=edad;
              dmcompensa.qrymcgrpeta.Params[2].Value :=dmcompensa.qrymcaficiucod_sexo.Value;
              dmcompensa.qrymcgrpeta.Open;
              dmcompensa.qrymcgrpeta.first;
              if dmcompensa.qrymcgrpeta.RecordCount = 2 then
                 dmcompensa.qrymcgrpeta.Next;
              dias := dayspan(dmcompensa.qrymcaficiuFEC_AFILIACION_UNI.Value,fecfin)+1;
              ano1 := '01/01/'+copy(datetostr(fecfin),7,4);
              dmcompensa.qrymcvalores.Close;
              dmcompensa.qrymcvalores.Prepare;
              dmcompensa.qrymcvalores.Params[0].Value := ano1;
              dmcompensa.qrymcvalores.Open;
              dmcompensa.qrymcvalores.first;
              dmcompensa.qrymcestcos.Close;
              dmcompensa.qrymcestcos.Prepare;
              dmcompensa.qrymcestcos.Params[0].Value :=ano1;
              dmcompensa.qrymcestcos.Params[1].Value :=dmcompensa.qrymcgrpetacod_grupo_eta.Value;
              dmcompensa.qrymcestcos.Open;
              dmcompensa.qrymcestcos.first;
              if dmcompensa.qrymcaficiuCOD_TIPO_AFIL.Value <> 'A' then
              begin
                if dmcompensa.qrymcaficiuPOR_ALTO_RIE.Value = 'N' then
                   rupc := Redondea(dmcompensa.qrymcvaloresval_upc_dia_normal.Value * dmcompensa.qrymcestcosval_estructura_cost.Value * dias);
                if dmcompensa.qrymcaficiuPOR_ALTO_RIE.Value = 'S' then
                   rupc := Redondea(dmcompensa.qrymcvaloresval_upc_dia_especial.Value * dmcompensa.qrymcestcosval_estructura_cost.Value * dias);
              end;
              if dmcompensa.qrymcaficiuCOD_TIPO_AFIL.Value = 'A' then
              begin
                dmcompensa.qrymcupczon.close;
                dmcompensa.qrymcupczon.Prepare;
                dmcompensa.qrymcupczon.Params[0].Value :=ano1;
                dmcompensa.qrymcupczon.open;
                with dmcompensa.qrymcupczon do
                begin
                  dmcompensa.qrymcupczon.First;
                  while not dmcompensa.qrymcupczon.Eof do
                  begin
                    if dmcompensa.qrymcupczoncod_grupo_eta.Value = dmcompensa.qrymcgrpetaCOD_GRUPO_ETA.Value  then
                    begin
                      upc := dmcompensa.qrymcupczonupc.value;
                      riesgo := dmcompensa.qrymcupczonriesgo.value;
                      est := dmcompensa.qrymcupczonval_estructura_cost.value;
                      upces := (upc*riesgo)+upc;
                      if dmcompensa.qrymcaficiuPOR_ALTO_RIE.Value = 'N' then
                      begin
                        if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 6 then
                        begin
                          rupc := redondea((((upc*1.85)*est/12)/30)*dias);
                        end
                        else
                        if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 5 then
                        begin
                          rupc := redondea((((upc*2.02)*est/12)/30)*dias);
                        end
                        else
                        if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 4 then
                        begin
                          rupc := redondea((((upc*3)*est/12)/30)*dias);
                        end
                        else
                        begin
                          rupc := redondea(((upc*est/12)/30)*dias);
                        end;
                      end;
                      if dmcompensa.qrymcaficiuPOR_ALTO_RIE.Value = 'S' then
                      begin
                        if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 6 then
                        begin
                          rupc := redondea((((upces*1.85)*est/12)/30)*dias);
                        end
                        else
                        if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 5 then
                        begin
                          rupc := redondea((((upces*2.02)*est/12)/30)*dias);
                        end
                        else
                        if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 4 then
                        begin
                          rupc := redondea((((upces*3)*est/12)/30)*dias);
                        end
                        else
                        begin
                          rupc := redondea(((upces*est/12)/30)*dias);
                        end;
                      end;
                    end;
                    dmcompensa.qrymcupczon.Next;
                  end;
                end;
              end;
              if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 1 then
              begin
                rge1 := rge1 + 1;
                rdi1 := rdi1 + DIAS;
                rup1 := rup1 + rupc;
              end;
              if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 2 then
              begin
                rge2 := rge2 + 1;
                rdi2 := rdi2 + DIAS;
                rup2 := rup2 + rupc;
              end;
              if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 3 then
              begin
                rge3 := rge3 + 1;
                rdi3 := rdi3 + DIAS;
                rup3 := rup3 + rupc;
              end;
              if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 4 then
              begin
                rge4 := rge4 + 1;
                rdi4 := rdi4 + DIAS;
                rup4 := rup4 + rupc;
              end;
              if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 5 then
              begin
                rge5 := rge5 + 1;
                rdi5 := rdi5 + DIAS;
                rup5 := rup5 + rupc;
              end;
              if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 6 then
              begin
                rge6 := rge6 + 1;
                rdi6 := rdi6 + DIAS;
                rup6 := rup6 + rupc;
              end;
              if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 7 then
              begin
                rge7 := rge7 + 1;
                rdi7 := rdi7 + dias;
                rup7 := rup7 + rupc;
              end;
             dmcompensa.qrymcrelafiliados.Next;
            end;
          end;
          dmcompensa.qrymccapafi.Next;
        end;
      end;
      /////Afiliados con Fecha de Afiliacion Mes de Capitacion
      per := maskedit1.Text;
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
      if copy(per,1,2) = '02' then
      begin
        fecini := strtodate('01/'+per);
        fecfin := strtodate('28/'+per);
      end;
      if copy(per,1,2) <> '02' then
      begin
        fecini := strtodate('01/'+per);
        fecfin := strtodate('30/'+per);
      end;
      dmcompensa.qrymccapafi.Close;
      dmcompensa.qrymccapafi.Prepare;
      dmcompensa.qrymccapafi.Params[0].Value := fecini;
      dmcompensa.qrymccapafi.Params[1].Value := fecfin;
      dmcompensa.qrymccapafi.Params[2].Value := dmcompensa.qrycappresNUM_IDENTIFICACION.Value;
      dmcompensa.qrymccapafi.Params[3].Value := maskedit1.Text;
      dmcompensa.qrymccapafi.Open;
      dmcompensa.qrymccapafi.First;
      if dmcompensa.qrymccapafi.RecordCount > 0 then
      begin
        gauge1.MinValue := 0;
        gauge1.MaxValue := dmcompensa.qrymccapafi.RecordCount;
        gauge1.Progress := 1;
        while not dmcompensa.qrymccapafi.Eof do
        begin
          dmcompensa.qrymcrelafiliados.Close;
          dmcompensa.qrymcrelafiliados.Prepare;
          dmcompensa.qrymcrelafiliados.Params[0].Value :=dmcompensa.qrymccapafiTIP_DOCUMENTO.Value;
          dmcompensa.qrymcrelafiliados.Params[1].Value :=dmcompensa.qrymccapafiNUM_DOCUMENTO.Value;
          dmcompensa.qrymcrelafiliados.Params[2].Value :=fecfin;
          dmcompensa.qrymcrelafiliados.Params[3].Value :=fecini;
          dmcompensa.qrymcrelafiliados.Open;
          dmcompensa.qrymcrelafiliados.First;
          if dmcompensa.qrymcrelafiliados.RecordCount > 0 then
          begin
            while not dmcompensa.qrymcrelafiliados.Eof do
            begin
              dmcompensa.qrymcaficiu.Close;
              dmcompensa.qrymcaficiu.Prepare;
              dmcompensa.qrymcaficiu.Params[0].Value:= dmcompensa.qrymcrelafiliadosTIP_DOCUMENTO_BEN.Value;
              dmcompensa.qrymcaficiu.Params[1].Value:= dmcompensa.qrymcrelafiliadosNUM_DOCUMENTO_BEN.Value;
              dmcompensa.qrymcaficiu.Open;
              dmcompensa.qrymcaficiu.First;
              edad := INT(yearspan(dmcompensa.qrymcaficiuFEC_NACIMIENTO.Value,datetimepicker1.Date));
              edad1 := INT(monthspan(dmcompensa.qrymcaficiuFEC_NACIMIENTO.Value,datetimepicker1.Date));
              dmcompensa.qrymcafiemp.Close;
              dmcompensa.qrymcafiemp.Params[0].Value:=dmcompensa.qrymcrelafiliadosTIP_DOCUMENTO_COT.Value;
              dmcompensa.qrymcafiemp.Params[1].Value:=dmcompensa.qrymcrelafiliadosNUM_DOCUMENTO_COT.Value;
              dmcompensa.qrymcafiemp.Params[2].Value:=fecfin;
              dmcompensa.qrymcafiemp.Params[3].Value:=fecini;
              dmcompensa.qrymcafiemp.Open;
              dmcompensa.qrymcafiemp.First;
              salario := dmcompensa.qrymcafiempVAL_SUELDO_AFIL.Value;
              afil := afil+1;
{              if edad1 < 2 then
                 p1 := p1 + 1;
              if (edad1 >= 3) and (edad1 <= 4) then
                 p2 := p2 + 1;
              if (edad1 = 5) and (edad1 = 6) then
                 p3 := p3 + 1;
              if (edad1 >= 7) and (edad1 <= 11) then
                 p4 := p4 + 1;
              if edad1 = 12 then
                 p5 := p5 + 1;
              if edad1 = 18 then
                 p6 := p6 + 1;
              if edad1 <= 3 then
                 p7 := p7 + 1;
              if (edad1 >= 4) and (edad1 <= 6) then
                 p8 := p8 + 1;
              if (edad1 >= 7) and (edad1 <= 9) then
                 p9 := p9 + 1;
              if (edad1 >= 10) and (edad1 <= 12) then
                 p10 := p10 + 1;
              if (edad1 >= 13) and (edad1 <= 23) then
                 p11 := p11 + 1;
              if (edad1 >= 13) and (edad1 <= 16) then
                 p12 := p12 + 1;
              if (edad1 >= 17) and (edad1 <= 20) then
                 p13 := p13 + 1;
              if (edad1 >= 21) and (edad1 <= 24) then
                 p14 := p14 + 1;
              if edad = 2 then
                 p15 := p15 + 1;
              if (edad1 >= 25) and (edad1 <= 30) then
                 p16 := p16 + 1;
              if (edad1 >= 31) and (edad1 <= 36) then
                 p17 := p17 + 1;
              if edad = 5 then
                 p18 := p18 + 1;
              if (edad >= 9) and (edad <= 11) then
                 p19 := p19 + 1;
              if edad = 10 then
                 p20 := p20 + 1;
              if (edad >= 10) and (edad1 <= 49) and (dmcompensa.qrymccapafiCOD_SEXO.Value = 'F') then
                 p21 := p21 + 1;
              if (edad >= 2) and (edad1 <= 19) then
                 p22 := p22 + 1;
              if edad >= 20 then
                 p23 := p23 + 1;
              if edad >= 12 then
                 p24 := p24 + 1;
              if (edad >= 5) and (edad <= 19) then
                 p25 := p25 + 1;
              if (edad >= 3) and (edad <= 5) then
                 p26 := p26 + 1;
              if (edad >= 6) and (edad <= 8) then
                 p27 := p27 + 1;
              if (edad >= 12) and (edad <= 15) then
                 p28 := p28 + 1;
              if (edad >= 30) and (edad <= 70) and (dmcompensa.qrymccapafiCOD_SEXO.Value = 'M') then
                 p29 := p29 + 1;
              if (edad >= 3) and (edad <= 9) then
                 p30 := p30 + 1;
              if (edad >= 10) and (edad <= 13) then
                 p31 := p31 + 1;
              if (edad >= 10) and (edad <= 13) and (dmcompensa.qrymccapafiCOD_SEXO.Value = 'F') then
                 p32 := p32 + 1;
              if (edad >= 16) and (edad <= 14) then
                 p33 := p33 + 1;
              if (edad >= 17) and (edad <= 21) then
                 p34 := p34 + 1;
              if (edad >= 22) and (edad <= 24) then
                 p35 := p35 + 1;
              if (edad >= 25) and (edad <= 29) then
                 p36 := p36 + 1;
              if (edad = 45) or (edad = 50) or (edad = 55) or (edad = 60) or (edad = 65) or (edad = 70) or (edad = 75) or (edad >= 80) then
                 p37 := p37 + 1;
              if (edad >= 25) and (edad <= 69) and (dmcompensa.qrymccapafiCOD_SEXO.Value = 'F') then
                 p38 := p38 + 1;
              if (edad >= 50) and (dmcompensa.qrymccapafiCOD_SEXO.Value = 'F') then
                 p39 := p39 + 1;
              if (edad = 4) or (edad = 11) or (edad = 16) or (edad = 45) then
                 p40 := p40 + 1;
              if (edad = 55) or (edad = 65) or (edad = 70) or (edad = 75) or (edad = 80) or (edad >= 85) then
                 p41 := p41 + 1;}
              write(outputfile,dmcompensa.qrymcrelafiliadosTIP_DOCUMENTO_COT.Value);
              write(outputfile,','+dmcompensa.qrymcrelafiliadosNUM_DOCUMENTO_COT.Value);
              write(outputfile,','+dmcompensa.qrymcrelafiliadosTIP_DOCUMENTO_BEN.Value);
              write(outputfile,','+dmcompensa.qrymcrelafiliadosNUM_DOCUMENTO_BEN.Value);
              write(outputfile,','+dmcompensa.qrymcrelafiliadosCOD_PARENTESCO.Value);
              write(outputfile,','+dmcompensa.qrymcaficiuPRI_NOMBRE.Value);
              write(outputfile,','+dmcompensa.qrymcaficiuSEG_NOMBRE.Value);
              write(outputfile,','+dmcompensa.qrymcaficiuPRI_APELLIDO.Value);
              write(outputfile,','+dmcompensa.qrymcaficiuSEG_APELLIDO.Value);
              write(outputfile,','+dmcompensa.qrymcaficiuCOD_SEXO.Value);
              write(outputfile,','+datetostr(dmcompensa.qrymcaficiuFEC_AFILIACION_UNI.Value));
              write(outputfile,','+datetostr(dmcompensa.qrymcaficiuFEC_AFILIACION_SIS.Value));
              write(outputfile,','+datetostr(dmcompensa.qrymcaficiuFEC_NACIMIENTO.Value));
              write(outputfile,','+floattostr(edad));
              write(outputfile,','+floattostr(edad1));
              write(outputfile,','+dmcompensa.qrymcaficiuDIR_AFILIADO_RES.Value);
              write(outputfile,','+dmcompensa.qrymcaficiuTEL_AFILIADO_RES.Value);
              write(outputfile,','+floattostr(int(dayspan(dmcompensa.qrymcaficiuFEC_AFILIACION_UNI.Value,fecfin))+1));
              write(outputfile,','+dmcompensa.qrymcaficiuNOM_CIUDAD.Value);
              dmcompensa.qrymcdepto.close;
              dmcompensa.qrymcdepto.Prepare;
              dmcompensa.qrymcdepto.Params[0].Value := dmcompensa.qrymcaficiuCOD_DEPARTAMENTO_RES.Value;
              dmcompensa.qrymcdepto.Open;
              dmcompensa.qrymcdepto.first;
              write(outputfile,','+dmcompensa.qrymcdeptoNOM_DEPARTAMENTO.Value);
              write(outputfile,','+floattostr(salario));
              if dmcompensa.qrymcaficiuEPS_TIP_DOC.Value = '' then
                 writeln(outputfile,','+'URGENCIAS')
              else
                 writeln(outputfile,'');
              gauge1.Progress := gauge1.Progress+ 1;
              frmcapita.Refresh;
              edad := INT(yearspan(dmcompensa.qrymcaficiuFEC_NACIMIENTO.Value,datetimepicker1.Date));
              dmcompensa.qrymcgrpeta.Close;
              dmcompensa.qrymcgrpeta.Prepare;
              dmcompensa.qrymcgrpeta.Params[0].Value :=edad;
              dmcompensa.qrymcgrpeta.Params[1].Value :=edad;
              dmcompensa.qrymcgrpeta.Params[2].Value :=dmcompensa.qrymcaficiucod_sexo.Value;
              dmcompensa.qrymcgrpeta.Open;
              dmcompensa.qrymcgrpeta.first;
              if dmcompensa.qrymcgrpeta.RecordCount = 2 then
                 dmcompensa.qrymcgrpeta.Next;
              dias := dayspan(dmcompensa.qrymcaficiuFEC_AFILIACION_UNI.Value,fecfin)+1;
              ano1 := '01/01/'+copy(datetostr(fecfin),7,4);
              dmcompensa.qrymcvalores.Close;
              dmcompensa.qrymcvalores.Prepare;
              dmcompensa.qrymcvalores.Params[0].Value := ano1;
              dmcompensa.qrymcvalores.Open;
              dmcompensa.qrymcvalores.first;
              dmcompensa.qrymcestcos.Close;
              dmcompensa.qrymcestcos.Prepare;
              dmcompensa.qrymcestcos.Params[0].Value :=ano1;
              dmcompensa.qrymcestcos.Params[1].Value :=dmcompensa.qrymcgrpetacod_grupo_eta.Value;
              dmcompensa.qrymcestcos.Open;
              dmcompensa.qrymcestcos.first;
              if dmcompensa.qrymcaficiuCOD_TIPO_AFIL.Value <> 'A' then
              begin
                if dmcompensa.qrymcaficiuPOR_ALTO_RIE.Value = 'N' then
                   rupc := Redondea(dmcompensa.qrymcvaloresval_upc_dia_normal.Value * dmcompensa.qrymcestcosval_estructura_cost.Value * dias);
                if dmcompensa.qrymcaficiuPOR_ALTO_RIE.Value = 'S' then
                   rupc := Redondea(dmcompensa.qrymcvaloresval_upc_dia_especial.Value * dmcompensa.qrymcestcosval_estructura_cost.Value * dias);
              end;
              if dmcompensa.qrymcaficiuCOD_TIPO_AFIL.Value = 'A' then
              begin
                dmcompensa.qrymcupczon.close;
                dmcompensa.qrymcupczon.Prepare;
                dmcompensa.qrymcupczon.Params[0].Value :=ano1;
                dmcompensa.qrymcupczon.open;
                with dmcompensa.qrymcupczon do
                begin
                  dmcompensa.qrymcupczon.First;
                  while not dmcompensa.qrymcupczon.Eof do
                  begin
                    if dmcompensa.qrymcupczoncod_grupo_eta.Value = dmcompensa.qrymcgrpetaCOD_GRUPO_ETA.Value  then
                    begin
                      upc := dmcompensa.qrymcupczonupc.value;
                      riesgo := dmcompensa.qrymcupczonriesgo.value;
                      est := dmcompensa.qrymcupczonval_estructura_cost.value;
                      upces := (upc*riesgo)+upc;
                      if dmcompensa.qrymcaficiuPOR_ALTO_RIE.Value = 'N' then
                      begin
                        if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 6 then
                        begin
                          rupc := redondea((((upc*1.85)*est/12)/30)*dias);
                        end
                        else
                        if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 5 then
                        begin
                          rupc := redondea((((upc*2.02)*est/12)/30)*dias);
                        end
                        else
                        if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 4 then
                        begin
                          rupc := redondea((((upc*3)*est/12)/30)*dias);
                        end
                        else
                        begin
                          rupc := redondea(((upc*est/12)/30)*dias);
                        end;
                      end;
                      if dmcompensa.qrymcaficiuPOR_ALTO_RIE.Value = 'S' then
                      begin
                        if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 6 then
                        begin
                          rupc := redondea((((upces*1.85)*est/12)/30)*dias);
                        end
                        else
                        if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 5 then
                        begin
                          rupc := redondea((((upces*2.02)*est/12)/30)*dias);
                        end
                        else
                        if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 4 then
                        begin
                          rupc := redondea((((upces*3)*est/12)/30)*dias);
                        end
                        else
                        begin
                          rupc := redondea(((upces*est/12)/30)*dias);
                        end;
                      end;
                    end;
                    dmcompensa.qrymcupczon.Next;
                  end;
                end;
              end;
              if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 1 then
              begin
                rge1 := rge1 + 1;
                rdi1 := rdi1 + DIAS;
                rup1 := rup1 + rupc;
              end;
              if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 2 then
              begin
                rge2 := rge2 + 1;
                rdi2 := rdi2 + DIAS;
                rup2 := rup2 + rupc;
              end;
              if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 3 then
              begin
                rge3 := rge3 + 1;
                rdi3 := rdi3 + DIAS;
                rup3 := rup3 + rupc;
              end;
              if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 4 then
              begin
                rge4 := rge4 + 1;
                rdi4 := rdi4 + DIAS;
                rup4 := rup4 + rupc;
              end;
              if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 5 then
              begin
                rge5 := rge5 + 1;
                rdi5 := rdi5 + DIAS;
                rup5 := rup5 + rupc;
              end;
              if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 6 then
              begin
                rge6 := rge6 + 1;
                rdi6 := rdi6 + DIAS;
                rup6 := rup6 + rupc;
              end;
              if dmcompensa.qrymcgrpetacod_grupo_eta.Value = 7 then
              begin
                rge7 := rge7 + 1;
                rdi7 := rdi7 + dias;
                rup7 := rup7 + rupc;
              end;
              dmcompensa.qrymcrelafiliados.Next;
            end;
          end;
          dmcompensa.qrymccapafi.Next;
        end;
      end;
      writeln(outputfile,' ');
      writeln(outputfile,'TOTAL AFILIADOS CAPITADOS '+floattostr(afil));
      closefile(outputfile);
{      assignfile (outputfile,nomarch1);
      rewrite(outputfile);
      closefile(outputfile);
      append(outputfile);
      writeln(outputfile,'Total de niños de dos meses de edad y menos,'+inttostr(p1));
      writeln(outputfile,'Total de niños de tres y cuatro meses de edad,'+inttostr(p2));
      writeln(outputfile,'Total de niños de 5 y 6 meses de edad,'+inttostr(p3));
      writeln(outputfile,'Total de niños de 7 a 11 meses de edad,'+inttostr(p4));
      writeln(outputfile,'Total de niños de 12 meses de edad,'+inttostr(p5));
      writeln(outputfile,'Total de niños de 18 meses de edad,'+inttostr(p6));
      writeln(outputfile,'Total niños de 3 meses o menos de edad,'+inttostr(p7));
      writeln(outputfile,'Total niños de 4 a 6 meses de edad,'+inttostr(p8));
      writeln(outputfile,'Total niños de 7 a 9 meses de edad,'+inttostr(p9));
      writeln(outputfile,'Total niños de 10 a 12 meses de edad,'+inttostr(p10));
      writeln(outputfile,'Total niños de 13 a 23 meses de edad,'+inttostr(p11));
      writeln(outputfile,'Total niños de 13 a 16 meses de edad,'+inttostr(p12));
      writeln(outputfile,'Total niños de 17 a 20 meses de edad,'+inttostr(p13));
      writeln(outputfile,'Total niños de 21 a 24 meses de edad,'+inttostr(p14));
      writeln(outputfile,'Total niños de 2 años de edad,'+inttostr(p15));
      writeln(outputfile,'Total niños de 25 a 30 meses de edad,'+inttostr(p16));
      writeln(outputfile,'Total niños de 31 a 36 meses de edad,'+inttostr(p17));
      writeln(outputfile,'Total de niños de 5 años de edad,'+inttostr(p18));
      writeln(outputfile,'Total de personas de 9 a 11 años,'+inttostr(p19));
      writeln(outputfile,'Total de niños de 10 años de edad,'+inttostr(p20));
      writeln(outputfile,'Total de mujeres de 10 a 49 años,'+inttostr(p21));
      writeln(outputfile,'Total personas de 2 a 19 años,'+inttostr(p22));
      writeln(outputfile,'Total de personas de 20 años y mas,'+inttostr(p23));
      writeln(outputfile,'Total de personas de 12 años y más,'+inttostr(p24));
      writeln(outputfile,'Total de personas de 5 a 19 años,'+inttostr(p25));
      writeln(outputfile,'Total de personas de 3 a 5 años,'+inttostr(p26));
      writeln(outputfile,'Total de personas de 6 a 8 años,'+inttostr(p27));
      writeln(outputfile,'Total de personas de 12 a 15 años,'+inttostr(p28));
      writeln(outputfile,'Total de hombres de 30 a 70 años,'+inttostr(p29));
      writeln(outputfile,'Total niños de 3 a 9 años de edad,'+inttostr(p30));
      writeln(outputfile,'Total personas de 10 a 13 años de edad,'+inttostr(p31));
      writeln(outputfile,'Total mujeres de 10 a 13 años de edad,'+inttostr(p32));
      writeln(outputfile,'Total personas de 14 a 16 años de edad,'+inttostr(p33));
      writeln(outputfile,'Total personas de 17 a 21 años de edad,'+inttostr(p34));
      writeln(outputfile,'Total personas de 22 a 24 años de edad,'+inttostr(p35));
      writeln(outputfile,'Total personas de 25 a 29 años de edad,'+inttostr(p36));
      writeln(outputfile,'Total personas de 45, 50, 55, 60, 65, 70, 75, 80 y más años de edad,'+inttostr(p37));
      writeln(outputfile,'Total mujeres de 25 a 69 años de edad,'+inttostr(p38));
      writeln(outputfile,'Total mujeres de 50 o más años de edad,'+inttostr(p39));
      writeln(outputfile,'Total personas de 4, 11, 16 y 45 años de edad,'+inttostr(p40));
      writeln(outputfile,'Total personas de 55, 65, 70, 75, 80, 85 y más años de edad,'+inttostr(p41));
      closefile(outputfile);}
      assignfile(outputfile,nomarch3);
      rewrite(outputfile);
      closefile(outputfile);
      append(outputfile);
      writeln(outputfile,'Grupo Etareo 1,'+floattostr(rge1)+','+floattostr(rdi1)+','+floattostr(rup1)+','+floattostr(rup1*0.68));
      writeln(outputfile,'Grupo Etareo 2,'+floattostr(rge2)+','+floattostr(rdi2)+','+floattostr(rup2)+','+floattostr(rup1*0.68));
      writeln(outputfile,'Grupo Etareo 3,'+floattostr(rge3)+','+floattostr(rdi3)+','+floattostr(rup3)+','+floattostr(rup1*0.68));
      writeln(outputfile,'Grupo Etareo 4,'+floattostr(rge4)+','+floattostr(rdi4)+','+floattostr(rup4)+','+floattostr(rup1*0.68));
      writeln(outputfile,'Grupo Etareo 5,'+floattostr(rge5)+','+floattostr(rdi5)+','+floattostr(rup5)+','+floattostr(rup1*0.68));
      writeln(outputfile,'Grupo Etareo 6,'+floattostr(rge6)+','+floattostr(rdi6)+','+floattostr(rup6)+','+floattostr(rup1*0.68));
      writeln(outputfile,'Grupo Etareo 7,'+floattostr(rge7)+','+floattostr(rdi7)+','+floattostr(rup7)+','+floattostr(rup1*0.68));
      writeln(outputfile,'');
      closefile(outputfile);
      dmcompensa.qrycappres.Next;
      gauge2.Progress := gauge2.Progress + 1;
      frmcapita.Refresh;
    end;
  showmessage('Finalizada la Generacion de los Archivos de Re-Capitacion');
  frmcapita.Close;
  end;


end;

procedure Tfrmcapita.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcapita.CheckBox1Exit(Sender: TObject);
begin
  if checkbox1.Checked = true then
  begin
    checkbox2.Enabled := false;
    checkbox2.Checked := false;
  end;
  if checkbox1.Checked = false then
     checkbox2.Enabled := true;
end;

procedure Tfrmcapita.CheckBox2Exit(Sender: TObject);
begin
if checkbox2.Checked = true then
  begin
    checkbox1.Enabled := false;
    checkbox1.Checked := false;
  end;
  if checkbox2.Checked = false then
     checkbox1.Enabled := true;
end;

procedure Tfrmcapita.CheckBox2Click(Sender: TObject);
begin
if checkbox2.Checked = true then
  begin
    checkbox1.Enabled := false;
    checkbox1.Checked := false;
  end;
  if checkbox2.Checked = false then
     checkbox1.Enabled := true;

end;

procedure Tfrmcapita.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.Checked = true then
  begin
    checkbox2.Enabled := false;
    checkbox2.Checked := false;
  end;
  if checkbox1.Checked = false then
     checkbox2.Enabled := true;

end;

procedure Tfrmcapita.FormCreate(Sender: TObject);
begin
  table1.Open;
end;

end.
