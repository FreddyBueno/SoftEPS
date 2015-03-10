unit usnsie49;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, FileCtrl, Gauges, ComCtrls, Dateutils;

type
  Tfrmcuf49 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    DirectoryListBox1: TDirectoryListBox;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Button1: TButton;
    GroupBox3: TGroupBox;
    Gauge1: TGauge;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcuf49: Tfrmcuf49;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrmcuf49.Button1Click(Sender: TObject);
var
  Ccc, dir : string;
  icc : real;
  fecha,estado,parent : string;
  outputfile : textfile;
  dpto1,dpto : string;
  edad : real;
  th,tm,ta,tc,h1,m1,h2,m2,h3,m3,h4,m4,h5,m5,h6,m6 : real;
  sex : string;
  mcpio :string;
begin
  dir := directorylistbox1.Directory;
  fecha := datetostr(datetimepicker1.Date);
  ccc := 'F49UF'+COPY(fecha,4,2)+COPY(fecha,7,4)+'.txt';
  dmcompensa.qrymcafif49.close;
  dmcompensa.qrymcafif49.Prepare;
  dmcompensa.qrymcafif49.Params[0].Value := datetimepicker1.date;
  dmcompensa.qrymcafif49.Open;
  dmcompensa.qrymcafif49.first;
  assignfile (outputfile,dir+'\'+Ccc);
  rewrite(outputfile);
  closefile(outputfile);
  append(outputfile);
  icc := 0;
  gauge1.MaxValue := dmcompensa.qrymcafif49.RecordCount;
  gauge1.MinValue := 0;
  gauge1.Progress := 1;
  frmcuf49.Refresh;
  while not dmcompensa.qrymcafif49.eof do
  begin
    write(outputfile,'');
    icc := icc + 1;
    dpto := dmcompensa.qrymcafif49COD_DEPARTAMENTO_RES.Value;
    mcpio := dmcompensa.qrymcafif49COD_CIUDAD_RES.Value;
    dpto1 := dmcompensa.qrymcafif49COD_DEPARTAMENTO_RES.Value;
    th := 0;
    tm := 0;
    ta := 0;
    tc := 0;
    h1 := 0;
    m1 := 0;
    h2 := 0;
    m2 := 0;
    h3 := 0;
    m3 := 0;
    h4 := 0;
    m4 := 0;
    h5 := 0;
    m5 := 0;
    h6 := 0;
    m6 := 0;
    while (dpto = dpto1) and not(dmcompensa.qrymcafif49.Eof) do
    begin
      edad := YearSpan(dmcompensa.qrymcafif49FEC_NACIMIENTO.Value,datetimepicker1.Date);
      sex := dmcompensa.qrymcafif49COD_SEXO.Value;
      if sex = 'M' then
         th := th + 1;
      if sex = 'F' then
         tm := tm + 1;
      ta := ta + 1;
      if dmcompensa.qrymcafif49COD_TIPO_AFIL.Value = 'C' then
         tc := tc + 1;
      if (sex = 'M') and (edad < 1) then
         h1 := h1 + 1;
      if (sex = 'F') and (edad < 1) then
         m1 := m1 + 1;
      if (sex = 'M') and (edad >= 1) and (edad < 5 ) then
         h2 := h2 + 1;
      if (sex = 'F') and (edad >= 1) and (edad < 5 ) then
         m2 := m2 + 1;
      if (sex = 'M') and (edad >= 5) and (edad < 15 ) then
         h3 := h3 + 1;
      if (sex = 'F') and (edad >= 5) and (edad < 15 ) then
         m3 := m3 + 1;
      if (sex = 'M') and (edad >= 15) and (edad < 45 ) then
         h4 := h4 + 1;
      if (sex = 'F') and (edad >= 15) and (edad < 45 ) then
         m4 := m4 + 1;
      if (sex = 'M') and (edad >= 45) and (edad < 60 ) then
         h5 := h5 + 1;
      if (sex = 'F') and (edad >= 45) and (edad < 60 ) then
         m5 := m5 + 1;
      if (sex = 'M') and (edad >= 60) then
         h6 := h6 + 1;
      if (sex = 'F') and (edad >= 60) then
         m6 := m6 + 1;
      gauge1.Progress := gauge1.Progress + 1;
      frmcuf49.Refresh;
      dmcompensa.qrymcafif49.Next;
      dpto1 := dmcompensa.qrymcafif49COD_DEPARTAMENTO_RES.Value;
    end;
    if ta > 0 then
    begin
      if dpto = '11' then
         writeln(outputfile,dpto+mcpio+','+floattostr(th)+','+floattostr(tm)+','+floattostr(ta)+','+floattostr(tc)+','+floattostr(h1)+','+floattostr(m1)+','+floattostr(h2)+','+floattostr(m2)+','+floattostr(h3)+','+floattostr(m3)+','+floattostr(h4)+','+floattostr(m4)+','+floattostr(h5)+','+floattostr(m5)+','+floattostr(h6)+','+floattostr(m6))
      else
      if (dpto = '08') and (mcpio = '001') then
         writeln(outputfile,dpto+mcpio+','+floattostr(th)+','+floattostr(tm)+','+floattostr(ta)+','+floattostr(tc)+','+floattostr(h1)+','+floattostr(m1)+','+floattostr(h2)+','+floattostr(m2)+','+floattostr(h3)+','+floattostr(m3)+','+floattostr(h4)+','+floattostr(m4)+','+floattostr(h5)+','+floattostr(m5)+','+floattostr(h6)+','+floattostr(m6))
      else
      if (dpto = '13') and (mcpio = '001') then
         writeln(outputfile,dpto+mcpio+','+floattostr(th)+','+floattostr(tm)+','+floattostr(ta)+','+floattostr(tc)+','+floattostr(h1)+','+floattostr(m1)+','+floattostr(h2)+','+floattostr(m2)+','+floattostr(h3)+','+floattostr(m3)+','+floattostr(h4)+','+floattostr(m4)+','+floattostr(h5)+','+floattostr(m5)+','+floattostr(h6)+','+floattostr(m6))
      else
      if (dpto = '47') and (mcpio = '001') then
         writeln(outputfile,dpto+mcpio+','+floattostr(th)+','+floattostr(tm)+','+floattostr(ta)+','+floattostr(tc)+','+floattostr(h1)+','+floattostr(m1)+','+floattostr(h2)+','+floattostr(m2)+','+floattostr(h3)+','+floattostr(m3)+','+floattostr(h4)+','+floattostr(m4)+','+floattostr(h5)+','+floattostr(m5)+','+floattostr(h6)+','+floattostr(m6))
      else
         writeln(outputfile,dpto+','+floattostr(th)+','+floattostr(tm)+','+floattostr(ta)+','+floattostr(tc)+','+floattostr(h1)+','+floattostr(m1)+','+floattostr(h2)+','+floattostr(m2)+','+floattostr(h3)+','+floattostr(m3)+','+floattostr(h4)+','+floattostr(m4)+','+floattostr(h5)+','+floattostr(m5)+','+floattostr(h6)+','+floattostr(m6));
    end;
  end;
  closefile(outputfile);
  showmessage('Finalizada la Generacion de los Archivos');
  frmcuf49.Close;
end;


end.
