unit unur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, FileCtrl, Gauges;

type
  Tfrmnur = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    DirectoryListBox1: TDirectoryListBox;
    GroupBox3: TGroupBox;
    Gauge1: TGauge;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnur: Tfrmnur;

implementation

uses dmcompensacion, ures890;

{$R *.dfm}

procedure Tfrmnur.Button1Click(Sender: TObject);
var
  Ccc, Cca, Cnc,Cna : string;
  Mcc, Mac : string;
  fecha,estado,parent : string;
  outputfile : textfile;
  icc,ima,inc,ina : integer;
  modtra :string;
  sec, tip : string;
  dir : string;
  mora :integer;
  periodo :string;
  sumper :real;
  summor :real;
begin
  dir := directorylistbox1.Directory;
  fecha := datetostr(datetimepicker1.Date);
  Ccc := 'VEPS035'+COPY(fecha,9,2)+COPY(fecha,4,2)+'.txt';
  Mcc := 'TVEPS035'+COPY(fecha,9,2)+COPY(fecha,4,2)+'.txt';
  dmcompensa.qrymcafi890.close;
  dmcompensa.qrymcafi890.Prepare;
  dmcompensa.qrymcafi890.Params[0].Value := datetimepicker1.datetime;
  dmcompensa.qrymcafi890.Open;
  dmcompensa.qrymcafi890.first;
  assignfile (outputfile,dir+'\'+Ccc);
  rewrite(outputfile);
  closefile(outputfile);
  append(outputfile);
  icc := 0;
  sumper :=0;
  summor :=0;
  gauge1.MaxValue := dmcompensa.qrymcafi890.RecordCount;
  gauge1.MinValue := 0;
  gauge1.Progress := 1;
  frmnur.Refresh;
  while not dmcompensa.qrymcafi890.eof do
  begin
    dmcompensa.qrymcrelafiliados1.Close;
    dmcompensa.qrymcrelafiliados1.Prepare;
    dmcompensa.qrymcrelafiliados1.Params[0].Value :=dmcompensa.qrymcafi890tip_documento.Value;
    dmcompensa.qrymcrelafiliados1.Params[1].Value :=dmcompensa.qrymcafi890num_documento.Value;
    dmcompensa.qrymcrelafiliados1.Params[2].Value :=datetimepicker1.Date;;
    dmcompensa.qrymcrelafiliados1.Params[3].Value :=datetimepicker1.Date;
    dmcompensa.qrymcrelafiliados1.Open;
    if dmcompensa.qrymcrelafiliados1.RecordCount > 0 then
    begin
      dmcompensa.qrymcrelafiliados1.First;
      while not dmcompensa.qrymcrelafiliados1.Eof do
      begin
        dmcompensa.qrymcafiemp.Close;
        dmcompensa.qrymcafiemp.Params[0].Value:=dmcompensa.qrymcrelafiliados1tip_documento_cot.Value;
        dmcompensa.qrymcafiemp.Params[1].Value:=dmcompensa.qrymcrelafiliados1num_documento_cot.Value;
        dmcompensa.qrymcafiemp.Params[2].Value:=datetimepicker1.Date;
        dmcompensa.qrymcafiemp.Params[3].Value:=datetimepicker1.Date;
        dmcompensa.qrymcafiemp.Open;
        if dmcompensa.qrymcafiemp.RecordCount > 0 then
        begin
          dmcompensa.qrymcafiemp.First;
          dmcompensa.qrymccarnur.Close;
          dmcompensa.qrymccarnur.Prepare;
          dmcompensa.qrymccarnur.Params[0].Value:= dmcompensa.qrymcafiempTIP_DOCUMENTO_AFI.Value;
          dmcompensa.qrymccarnur.Params[1].Value:= dmcompensa.qrymcafiempNUM_DOCUMENTO_AFI.Value;
          dmcompensa.qrymccarnur.Params[2].Value:= dmcompensa.qrymcafiempTIP_DOCUMENTO_EMP.Value;
          dmcompensa.qrymccarnur.Params[3].Value:= dmcompensa.qrymcafiempNUM_DOCUMENTO_EMP.Value;
          dmcompensa.qrymccarnur.Open;
          dmcompensa.qrymccarnur.First;
          mora := dmcompensa.qrymccarnur.Recordcount;
          dmcompensa.qrymcpernur.close;
          dmcompensa.qrymcpernur.Prepare;
          dmcompensa.qrymcpernur.Params[0].Value :=dmcompensa.qrymcrelafiliados1NUM_DOCUMENTO_BEN.Value;
          dmcompensa.qrymcpernur.Params[1].Value :=dmcompensa.qrymcrelafiliados1TIP_DOCUMENTO_BEN.Value;
          dmcompensa.qrymcpernur.Open;
          if dmcompensa.qrymcpernur.RecordCount > 0 then
          begin
            dmcompensa.qrymcpernur.Last;
            periodo := copy(dmcompensa.qrymcpernurPERIODO_COMPENSADO.Value,4,4)+copy(dmcompensa.qrymcpernurPERIODO_COMPENSADO.Value,1,2);
          end
          else
            periodo := '';
          while not dmcompensa.qrymcafiemp.Eof do
          begin
            if dmcompensa.qrymcafi890COD_ESTADO.Value = 'A' then
               estado := 'A';
            if dmcompensa.qrymcafi890COD_ESTADO.Value = 'S' then
               estado := 'S';
            if dmcompensa.qrymcafi890COD_MODALIDAD_TRA.Value = 'D' then
                modtra := 'D';
            if dmcompensa.qrymcafi890COD_MODALIDAD_TRA.Value = 'I' then
               modtra := 'I';
            if dmcompensa.qrymcafi890COD_MODALIDAD_TRA.Value = 'E' then
               modtra := 'D';
            if dmcompensa.qrymcafi890COD_MODALIDAD_TRA.Value = 'P' then
               modtra := 'P';
            if dmcompensa.qrymcafi890cod_tipo_afil.Value = 'C' then
            begin
              write(outputfile,'EPS035,'+dmcompensa.qrymcrelafiliados1tip_documento_cot.value+','+dmcompensa.qrymcrelafiliados1num_documento_cot.value+','+dmcompensa.qrymcafi890tip_documento.value+','+dmcompensa.qrymcafi890num_documento.value+','+dmcompensa.qrymcafi890pri_apellido.value+','+dmcompensa.qrymcafi890seg_apellido.value+','+dmcompensa.qrymcafi890pri_nombre.value+','+dmcompensa.qrymcafi890SEG_nombre.Value+','+dmcompensa.qrymcafi890COD_SEXO.Value+','+copy(datetostr(dmcompensa.qrymcafi890FEC_NACIMIENTO.Value),1,10)+','+dmcompensa.qrymcafi890COD_TIPO_AFIL.Value+',');
              writeln(outputfile,floattostr(dmcompensa.qrymcafiempVAL_SUELDO_AFIL.Value)+','+copy(datetostr(dmcompensa.qrymcafi890FEC_afiliacion_uni.Value),1,10)+','+modtra+','+dmcompensa.qrymcafiemptip_documento_emp.Value+','+dmcompensa.qrymcafiempnum_documento_emp.Value+','+dmcompensa.qrymcafi890cod_departamento_res.value+','+dmcompensa.qrymcafi890cod_ciudad_res.Value+','+estado+','+periodo+','+inttostr(mora));
            end
            else
            begin
              write(outputfile,'EPS035,'+dmcompensa.qrymcrelafiliados1tip_documento_cot.value+','+dmcompensa.qrymcrelafiliados1num_documento_cot.value+','+dmcompensa.qrymcafi890tip_documento.value+','+dmcompensa.qrymcafi890num_documento.value+','+dmcompensa.qrymcafi890pri_apellido.value+','+dmcompensa.qrymcafi890seg_apellido.value+','+dmcompensa.qrymcafi890pri_nombre.value+','+dmcompensa.qrymcafi890SEG_nombre.Value+','+dmcompensa.qrymcafi890COD_SEXO.Value+','+copy(datetostr(dmcompensa.qrymcafi890FEC_NACIMIENTO.Value),1,10)+','+dmcompensa.qrymcafi890COD_TIPO_AFIL.Value+',');
              writeln(outputfile,','+copy(datetostr(dmcompensa.qrymcafi890FEC_afiliacion_uni.Value),1,10)+',,,,'+dmcompensa.qrymcafi890cod_departamento_res.value+','+dmcompensa.qrymcafi890cod_ciudad_res.Value+','+estado+','+periodo+','+inttostr(mora));
            end;
            icc := icc + 1;
            if periodo = '' then
               periodo := floattostr(0);
            sumper := sumper + strtofloat(periodo);
            summor := summor + mora;
            gauge1.Progress := gauge1.Progress + 1;
            frmnur.Refresh;
            dmcompensa.qrymcafiemp.Next;
          end;
          dmcompensa.qrymcafiemp.close;
        end;
      dmcompensa.qrymcrelafiliados1.Next;
      end;
    dmcompensa.qrymcrelafiliados1.Close;
    end;
  dmcompensa.qrymcafi890.Next;
  end;
  dmcompensa.qrymcafi890.close;
  closefile(outputfile);
  assignfile (outputfile,dir+'\'+Mcc);
  rewrite(outputfile);
  closefile(outputfile);
  append(outputfile);
  writeln(outputfile,floattostr(icc)+','+floattostr(sumper)+','+floattostr(summor));
  closefile(outputfile);
  showmessage('Finalizada la Generacion de los Archivos');
  frmnur.Close;
end;

end.
