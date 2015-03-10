unit ucir005;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Gauges, StdCtrls, FileCtrl, ComCtrls;

type
  Tfrm005 = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Button1: TButton;
    DateTimePicker1: TDateTimePicker;
    GroupBox1: TGroupBox;
    DirectoryListBox1: TDirectoryListBox;
    GroupBox3: TGroupBox;
    Gauge1: TGauge;
    Panel1: TPanel;
    Label13: TLabel;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm005: Tfrm005;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrm005.Button1Click(Sender: TObject);
var
  fecini, fecfin : tdatetime;
  nom : string;
  dir : string;
  outputfile : textfile;
begin
  fecfin := datetimepicker1.Date;
  dir := directorylistbox1.Directory;
  nom := ('REPS035'+copy(datetostr(fecfin),9,2)+copy(datetostr(fecfin),4,2)+'.TXT');
  assignfile(outputfile,dir+'\'+nom);
  rewrite(outputfile);
  closefile(outputfile);
  append(outputfile);
  fecini := strtodate('01'+copy(datetostr(fecfin),3,8));
  dmcompensa.qrypla005.Close;
  dmcompensa.qrypla005.Prepare;
  dmcompensa.qrypla005.Params[0].Value := fecini;
  dmcompensa.qrypla005.Params[1].Value := fecfin;
  dmcompensa.qrypla005.Open;
  dmcompensa.qrypla005.First;
  gauge1.MinValue := 0;
  gauge1.MaxValue := dmcompensa.qrypla005.RecordCount;
  gauge1.Progress := 1;
  while not dmcompensa.qrypla005.Eof do
  begin
    dmcompensa.qryplac005.Close;
    dmcompensa.qryplac005.Prepare;
    dmcompensa.qryplac005.Params[0].Value := dmcompensa.qrypla005AFI_NUMERO_DOC.Value;
    dmcompensa.qryplac005.Params[1].Value := dmcompensa.qrypla005NUM_PLANILLA.Value;
    dmcompensa.qryplac005.Open;
    dmcompensa.qryaf005.Close;
    dmcompensa.qryaf005.Prepare;
    dmcompensa.qryaf005.Params[0].Value := dmcompensa.qrypla005AFI_TIPO_DOC.Value;
    dmcompensa.qryaf005.Params[1].Value := dmcompensa.qrypla005AFI_NUMERO_DOC.Value;
    dmcompensa.qryaf005.Open;
    dmcompensa.qryplac005.First;
    dmcompensa.qryaf005.First;
    if dmcompensa.qryplac005.RecordCount > 0 then
    begin
      write(outputfile,'EPS035');
      write(outputfile,','+dmcompensa.qryplac005PERIODO_COMPENSADO.Value);
      write(outputfile,','+datetostr(dmcompensa.qryplac005FECHA_DECLARACION.Value));
      write(outputfile,','+dmcompensa.qrypla005TIP_DOC_USUARIO.Value);
      write(outputfile,','+dmcompensa.qryplac005AFI_NUMERO_DOC.Value);
      write(outputfile,','+dmcompensa.qryaf005PRI_APELLIDO.Value);
      write(outputfile,','+dmcompensa.qryaf005SEG_APELLIDO.Value);
      write(outputfile,','+dmcompensa.qryaf005PRI_NOMBRE.Value);
      write(outputfile,','+dmcompensa.qryaf005SEG_NOMBRE.Value);
      write(outputfile,','+datetostr(dmcompensa.qryaf005FEC_NACIMIENTO.Value));
      write(outputfile,','+dmcompensa.qryaf005COD_SEXO.Value);
      if dmcompensa.qryaf005COD_MODALIDAD_TRA.Value = 'D' then
         write(outputfile,','+'01');
      if dmcompensa.qryaf005COD_MODALIDAD_TRA.Value = 'E' then
         write(outputfile,','+'02');
      if dmcompensa.qryaf005COD_MODALIDAD_TRA.Value = 'I' then
         write(outputfile,','+'03');
      if dmcompensa.qryaf005COD_MODALIDAD_TRA.Value = 'M' then
         write(outputfile,','+'04');
      if dmcompensa.qryaf005COD_MODALIDAD_TRA.Value = 'P' then
         write(outputfile,','+'10');
      write(outputfile,','+floattostr(dmcompensa.qryplac005SALARIO.Value));
      write(outputfile,','+floattostr(dmcompensa.qryplac005COTIZACION.Value));
      write(outputfile,','+floattostr(dmcompensa.qrypla005VAL_PAGO_UPC.Value));
      write(outputfile,','+dmcompensa.qryplac005EMP_TIPO_DOC.Value);
      write(outputfile,','+dmcompensa.qryplac005EMP_NUMERO_DOC.Value);
      write(outputfile,','+dmcompensa.qryplac005DIAS.Value);
      write(outputfile,','+dmcompensa.qryplac005DIAS.Value);
      write(outputfile,','+datetostr(dmcompensa.qrypla005FEC_PAGO.Value));
      write(outputfile,','+dmcompensa.qrypla005NUM_PLANILLA.Value);
      write(outputfile,','+dmcompensa.qrypla005COD_BANCO.Value);
      writeln(outputfile,','+dmcompensa.qrypla005NUM_CUENTA.Value);
    end;
    if dmcompensa.qryplac005.RecordCount = 0 then
    begin
      write(outputfile,'EPS035');
      write(outputfile,','+dmcompensa.qrypla005per_cotizacion.value);
      if dmcompensa.qryaf005.RecordCount = 0 then
         write(outputfile,',0000000000')
      else
         write(outputfile,',000000');
      if dmcompensa.qryaf005.RecordCount = 0 then
         write(outputfile,',SI')
      else
         write(outputfile,','+dmcompensa.qrypla005AFI_TIPO_DOC.Value);
      if dmcompensa.qryaf005.RecordCount = 0 then
         write(outputfile,',9999999999999999')
      else
        write(outputfile,','+dmcompensa.qrypla005AFI_NUMERO_DOC.Value);
      if dmcompensa.qryaf005.RecordCount = 0 then
         write(outputfile,',')
      else
        write(outputfile,','+dmcompensa.qryaf005PRI_APELLIDO.Value);
        if dmcompensa.qryaf005.RecordCount = 0 then
         write(outputfile,',')
      else
         write(outputfile,','+dmcompensa.qryaf005SEG_APELLIDO.Value);
      if dmcompensa.qryaf005.RecordCount = 0 then
         write(outputfile,',')
      else
        write(outputfile,','+dmcompensa.qryaf005PRI_NOMBRE.Value);
      if dmcompensa.qryaf005.RecordCount = 0 then
         write(outputfile,',')
      else
         write(outputfile,','+dmcompensa.qryaf005SEG_NOMBRE.Value);
         if dmcompensa.qryaf005.RecordCount = 0 then
         write(outputfile,',')
      else
         write(outputfile,','+datetostr(dmcompensa.qryaf005FEC_NACIMIENTO.Value));
         if dmcompensa.qryaf005.RecordCount = 0 then
         write(outputfile,',')
      else
         write(outputfile,','+dmcompensa.qryaf005COD_SEXO.Value);
      if dmcompensa.qryaf005.RecordCount = 0 then
         write(outputfile,',')
      else
      begin
        if dmcompensa.qryaf005COD_MODALIDAD_TRA.Value = 'D' then
           write(outputfile,','+'01');
        if dmcompensa.qryaf005COD_MODALIDAD_TRA.Value = 'E' then
           write(outputfile,','+'02');
        if dmcompensa.qryaf005COD_MODALIDAD_TRA.Value = 'I' then
           write(outputfile,','+'03');
        if dmcompensa.qryaf005COD_MODALIDAD_TRA.Value = 'M' then
           write(outputfile,','+'04');
        if dmcompensa.qryaf005COD_MODALIDAD_TRA.Value = 'P' then
           write(outputfile,','+'10');
      end;
      write(outputfile,','+floattostr(dmcompensa.qrypla005SAL_BASE.Value));
      write(outputfile,','+floattostr(dmcompensa.qrypla005COT_OBLIGATORIA.Value));
      write(outputfile,','+floattostr(dmcompensa.qrypla005VAL_PAGO_UPC.Value));
      write(outputfile,','+dmcompensa.qrypla005EMP_TIPO_DOC.Value);
      write(outputfile,','+dmcompensa.qrypla005EMP_NUMERO_DOC.Value);
      write(outputfile,','+dmcompensa.qrypla005DIA_COTIZADOS.Value);
      write(outputfile,','+dmcompensa.qrypla005DIA_COTIZADOS.Value);
      write(outputfile,','+datetostr(dmcompensa.qrypla005FEC_PAGO.Value));
      write(outputfile,','+dmcompensa.qrypla005NUM_PLANILLA.Value);
      write(outputfile,','+dmcompensa.qrypla005COD_BANCO.Value);
      writeln(outputfile,','+dmcompensa.qrypla005NUM_CUENTA.Value);
    end;
    dmcompensa.qryplac005.Close;
    dmcompensa.qryaf005.Close;
    dmcompensa.qrypla005.Next;
    gauge1.Progress := gauge1.Progress + 1;
    frm005.Refresh;
  end;
  closefile(outputfile);
  showmessage('Final de La Generacion');
  frm005.Close;
end;

end.
