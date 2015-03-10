unit ures890;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Gauges,Dateutils, FileCtrl;

type
  Tfrm890 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label13: TLabel;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Gauge1: TGauge;
    Gauge2: TGauge;
    Gauge3: TGauge;
    Button1: TButton;
    GroupBox3: TGroupBox;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    Label5: TLabel;
    Label7: TLabel;
    DirectoryListBox1: TDirectoryListBox;
    Label8: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure DateTimePicker3Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm890: Tfrm890;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrm890.Button1Click(Sender: TObject);
var
  Ccc, Cca, Cnc,Cna : string;
  Mcc, Mac : string;
  fecha,estado,parent : string;
  outputfile : textfile;
  icc,ima,inc,ina : integer;
  modtra :string;
  sec, tip : string;
  dir : string;
  act_eco : string;
begin
  dir := directorylistbox1.Directory;
  fecha := datetostr(datetimepicker1.Date);
  Ccc := 'CCEPS035'+COPY(fecha,1,2)+COPY(fecha,4,2)+COPY(fecha,7,4)+'1.txt';
  Cca := 'CAEPS035'+COPY(fecha,1,2)+COPY(fecha,4,2)+COPY(fecha,7,4)+'1.txt';
  Cnc := 'NCEPS035'+COPY(fecha,1,2)+COPY(fecha,4,2)+COPY(fecha,7,4)+'1.txt';
  Cna := 'NAEPS035'+COPY(fecha,1,2)+COPY(fecha,4,2)+COPY(fecha,7,4)+'1.txt';
  Mcc := 'MCEPS035'+COPY(fecha,1,2)+COPY(fecha,4,2)+COPY(fecha,7,4)+'.txt';
  Mac := 'MAEPS035'+COPY(fecha,1,2)+COPY(fecha,4,2)+COPY(fecha,7,4)+'.txt';
  dmcompensa.qrymcafi890.close;
  dmcompensa.qrymcafi890.Prepare;
  dmcompensa.qrymcafi890.Params[0].Value := datetimepicker3.date;
  dmcompensa.qrymcafi890.Open;
  dmcompensa.qrymcafi890.first;
  assignfile (outputfile,dir+'\'+Mcc);
  rewrite(outputfile);
  closefile(outputfile);
  append(outputfile);
  icc := 0;
  gauge1.MaxValue := dmcompensa.qrymcafi890.RecordCount;
  gauge1.MinValue := 0;
  gauge1.Progress := 1;
  frm890.Refresh;
  while not dmcompensa.qrymcafi890.eof do
  begin
    if dmcompensa.qrymcafi890COD_ESTADO.Value = 'A' then
       estado := 'AC';
    if dmcompensa.qrymcafi890COD_ESTADO.Value = 'S' then
       estado := 'SU';
    if dmcompensa.qrymcafi890COD_ESTADO.Value = 'I' then
       estado := 'RE';
    dmcompensa.qrymcrel890.Close;
    dmcompensa.qrymcrel890.Prepare;
    dmcompensa.qrymcrel890.Params[0].Value := dmcompensa.qrymcafi890TIP_DOCUMENTO.Value;
    dmcompensa.qrymcrel890.Params[1].Value := dmcompensa.qrymcafi890NUM_DOCUMENTO.Value;
    dmcompensa.qrymcrel890.open;
    dmcompensa.qrymcrel890.First;
    if dmcompensa.qrymcrel890COD_PARENTESCO.Value = 'C' then
       parent := '1';
    if dmcompensa.qrymcrel890COD_PARENTESCO.Value = 'H' then
       parent := '2';
    if dmcompensa.qrymcrel890COD_PARENTESCO.Value = 'P' then
       parent := '3';
    if dmcompensa.qrymcrel890COD_PARENTESCO.Value = 'O' then
       parent := dmcompensa.qrymcrel890COD_RELACION_ADI.Value;
    if dmcompensa.qrymcafi890COD_TIPO_AFIL.Value = 'C' then
    begin
      dmcompensa.qrymcafiemp890.Close;
      dmcompensa.qrymcafiemp890.Prepare;
      dmcompensa.qrymcafiemp890.Params[0].Value := dmcompensa.qrymcafi890TIP_DOCUMENTO.Value;
      dmcompensa.qrymcafiemp890.Params[1].Value := dmcompensa.qrymcafi890NUM_DOCUMENTO.Value;
      dmcompensa.qrymcafiemp890.open;
      dmcompensa.qrymcafiemp890.First;
      dmcompensa.qrymcempr890.Close;
      dmcompensa.qrymcempr890.Prepare;
      dmcompensa.qrymcempr890.Params[0].Value := dmcompensa.qrymcafi890TIP_DOCUMENTO.Value;
      dmcompensa.qrymcempr890.Params[1].Value := dmcompensa.qrymcafi890NUM_DOCUMENTO.Value;
      dmcompensa.qrymcempr890.open;
      dmcompensa.qrymcempr890.First;
    end;
    if dmcompensa.qrymcafi890COD_MODALIDAD_TRA.Value = 'D' then
       modtra := '1';
    act_eco := '';
    if dmcompensa.qrymcafi890COD_MODALIDAD_TRA.Value = 'I' then
    begin
      if dmcompensa.qrymcafi890COD_TIPO_AFIL.Value = 'C' then
      begin
        act_eco := COPY(dmcompensa.qrymcempr890COD_ACTIVIDAD_ECO.Value,1,3);
        modtra := '3';
      end;
    end;
    if dmcompensa.qrymcafi890COD_MODALIDAD_TRA.Value = 'E' then
        modtra := '2';
    if dmcompensa.qrymcafi890COD_MODALIDAD_TRA.Value = 'P' then
       modtra := '10';
    if dmcompensa.qrymcafi890cod_tipo_afil.Value = 'C' then
    begin
      write(outputfile,'EPS035,'+dmcompensa.qrymcafi890tip_documento.value+','+dmcompensa.qrymcafi890num_documento.value+','+dmcompensa.qrymcafi890tip_documento.value+','+dmcompensa.qrymcafi890num_documento.value+','+dmcompensa.qrymcafi890pri_apellido.value+','+dmcompensa.qrymcafi890seg_apellido.value+','+dmcompensa.qrymcafi890pri_nombre.value+','+dmcompensa.qrymcafi890SEG_nombre.Value+','+copy(datetostr(dmcompensa.qrymcafi890FEC_NACIMIENTO.Value),1,10)+','+dmcompensa.qrymcafi890COd_SEXO.Value+','+modtra+',C,,,,');
      writeln(outputfile,dmcompensa.qrymcafi890cod_discapacidad.Value+','+dmcompensa.qrymcafi890cod_departamento_res.value+','+dmcompensa.qrymcafi890cod_ciudad_res.Value+','+dmcompensa.qrymcafi890cod_zona.value+','+copy(datetostr(dmcompensa.qrymcafi890FEC_afiliacion_sis.Value),1,10)+','+copy(datetostr(dmcompensa.qrymcafi890FEC_afiliacion_uni.Value),1,10)+','+estado+','+copy(dmcompensa.qrymcafiemp890tip_documento_emp.Value,1,2)+','+dmcompensa.qrymcafiemp890num_documento_emp.Value+',,'+floattostr(dmcompensa.qrymcafiemp890val_sueldo_afil.value)+','+act_eco);
    end
    else
    begin
      write(outputfile,'EPS035,'+dmcompensa.qrymcrel890tip_documento_cot.value+','+dmcompensa.qrymcrel890num_documento_cot.value+','+dmcompensa.qrymcafi890tip_documento.value+','+dmcompensa.qrymcafi890num_documento.value+','+dmcompensa.qrymcafi890pri_apellido.value+','+dmcompensa.qrymcafi890seg_apellido.value+','+dmcompensa.qrymcafi890pri_nombre.value+','+dmcompensa.qrymcafi890SEG_nombre.Value+','+copy(datetostr(dmcompensa.qrymcafi890FEC_NACIMIENTO.Value),1,10)+','+dmcompensa.qrymcafi890COd_SEXO.Value+',,'+dmcompensa.qrymcafi890cod_tipo_afil.Value+','+parent+',,,');
      writeln(outputfile,dmcompensa.qrymcafi890cod_discapacidad.Value+','+dmcompensa.qrymcafi890cod_departamento_res.value+','+dmcompensa.qrymcafi890cod_ciudad_res.Value+','+dmcompensa.qrymcafi890cod_zona.value+','+copy(datetostr(dmcompensa.qrymcafi890FEC_afiliacion_sis.Value),1,10)+','+copy(datetostr(dmcompensa.qrymcafi890FEC_afiliacion_uni.Value),1,10)+','+estado+',,,,');
    end;
    icc := icc + 1;
    gauge1.Progress := gauge1.Progress + 1;
    frm890.Refresh;
    dmcompensa.qrymcafi890.Next;
  end;
  closefile(outputfile);
  assignfile (outputfile,dir+'\'+Ccc);
  rewrite(outputfile);
  closefile(outputfile);
  append(outputfile);
  writeln(outputfile,'1,EPS035,'+datetostr(datetimepicker2.Date)+','+datetostr(datetimepicker3.Date)+',1,'+inttostr(icc)+','+Mcc+',,,');
  closefile(outputfile);
  assignfile (outputfile,dir+'\'+Mac);
  rewrite(outputfile);
  closefile(outputfile);
  append(outputfile);
  ima := 0;
  dmcompensa.qrymcemp890.close;
  dmcompensa.qrymcemp890.prepare;
  dmcompensa.qrymcemp890.Params[0].value := datetimepicker3.date;
  dmcompensa.qrymcemp890.open;
  dmcompensa.qrymcemp890.first;
  gauge2.MaxValue := dmcompensa.qrymcemp890.RecordCount;
  gauge2.MinValue := 0;
  gauge2.Progress := 1;
  while not dmcompensa.qrymcemp890.eof do
  begin
    if dmcompensa.qrymcemp890COD_ACTIVIDAD_ECO.Value <> '1' then
       tip := '1'
    else
       tip := '4';
    if dmcompensa.qrymcemp890COD_TIP_EMPRESA.Value = 'P' then
       sec := '1';
    if dmcompensa.qrymcemp890COD_TIP_EMPRESA.Value = 'R' then
       sec := '2';
    if dmcompensa.qrymcemp890COD_TIP_EMPRESA.Value = 'M' then
       sec := '3';
    writeln(outputfile,copy(dmcompensa.qrymcemp890TIP_DOCUMENTO.Value,1,2)+','+dmcompensa.qrymcemp890num_documento.value+',,'+copy(dmcompensa.qrymcemp890NOM_EMPRESA.Value,1,40)+','+tip+','+sec+','+dmcompensa.qrymcemp890NUM_DOCUMENTO_ARP.Value+','+COPY(dmcompensa.qrymcemp890COD_ACTIVIDAD_ECO.value,1,3));
    ima :=ima + 1;
    gauge2.Progress := gauge2.Progress +1;
    frm890.Refresh;
    dmcompensa.qrymcemp890.Next;
  end;
  closefile(outputfile);
  assignfile (outputfile,dir+'\'+Cca);
  rewrite(outputfile);
  closefile(outputfile);
  append(outputfile);
  writeln(outputfile,'1,EPS035,'+datetostr(datetimepicker2.Date)+','+datetostr(datetimepicker3.Date)+',1,'+inttostr(ima)+','+Mac+',,,');
  closefile(outputfile);
  showmessage('Finalizada la Generacion de los Archivos');
  frm890.Close;
end;


procedure Tfrm890.DateTimePicker3Exit(Sender: TObject);
begin
  if datetimepicker3.Date < datetimepicker2.Date then
  begin
    showmessage('Fecha Final Debe Ser Mayor Que la Fecha Inicial');
    datetimepicker3.SetFocus;
  end;
end;

end.
