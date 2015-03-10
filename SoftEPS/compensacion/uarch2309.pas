unit uarch2309;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tfrm2309 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm2309: Tfrm2309;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrm2309.Button1Click(Sender: TObject);
var outputfile : textfile;
    cot, ben : real;
    fecha : string;
    fechadec : tdatetime;
begin
  fecha := datetostr(date());
  fecha := copy(fecha,1,2)+copy(fecha,4,2)+copy(fecha,7,4);
  savedialog1.FileName := 'EPS035AC'+fecha+'.TXT';
  savedialog1.Execute;
  if savedialog1.FileName <> '' then
  begin
    dmcompensa.epsac.Close;
    dmcompensa.epsac.Prepare;
    dmcompensa.epsac.Params[0].Value :=edit1.Text;
    dmcompensa.epsac.Params[1].Value :=edit2.Text;
    dmcompensa.epsac.Open;
    cot := dmcompensa.epsac.RecordCount;
    dmcompensa.epsac.First;
    fechadec := dmcompensa.epsacFECHA_DECLARACION.Value;
    assignfile(outputfile, savedialog1.FileName);
    rewrite(outputfile);
    closefile(outputfile);
    append(outputfile);
    writeln(outputfile,'EPS035,'+datetostr(dmcompensa.epsacfecha_declaracion.value)+',1,'+floattostr(cot));
    writeln(outputfile,'EPS035,'+datetostr(dmcompensa.epsacfecha_declaracion.value)+','+floattostr(cot)+',1');
    while not dmcompensa.epsac.Eof do
    begin
      write(outputfile,floattostr(dmcompensa.epsacNUM_DECLARACION.Value));
      write(outputfile,','+dmcompensa.epsacCOD_EPS.Value);
      write(outputfile,','+DATETOSTR(dmcompensa.epsacFECHA_DECLARACION.Value));
      write(outputfile,','+dmcompensa.epsacTIPO_DECLARACION.Value);
      write(outputfile,','+dmcompensa.epsacPERIODO_COMPENSADO.Value);
      write(outputfile,','+dmcompensa.epsacAFI_TIPO_DOC.Value);
      write(outputfile,','+dmcompensa.epsacAFI_NUMERO_DOC.Value);
      write(outputfile,','+dmcompensa.epsacPRI_APELLIDO.Value);
      write(outputfile,','+dmcompensa.epsacSEG_APELLIDO.Value);
      write(outputfile,','+dmcompensa.epsacPRI_NOMBRE.Value);
      write(outputfile,','+dmcompensa.epsacSEG_NOMBRE.Value);
      write(outputfile,','+DATETOSTR(dmcompensa.epsacFEC_NACIMIENTO.Value));
      write(outputfile,','+dmcompensa.epsacCOD_SEXO.Value);
      write(outputfile,','+dmcompensa.epsacTP_CONYUGE.Value);
      write(outputfile,','+dmcompensa.epsacCOD_CONYUGE.Value);
      write(outputfile,','+dmcompensa.epsacCOD_DEPARTAMENTO_RES.Value);
      write(outputfile,','+dmcompensa.epsacCOD_CIUDAD_RES.Value);
      write(outputfile,','+DATETOSTR(dmcompensa.epsacFEC_AFILIACION_UNI.Value));
      write(outputfile,','+dmcompensa.epsacTIP_COTIZANTE.Value);
      write(outputfile,','+dmcompensa.epsacTIP_EMPRESA.Value);
      write(outputfile,','+dmcompensa.epsacEMP_NUMERO_DOC.Value);
      write(outputfile,','+floattostr(dmcompensa.epsacCOTIZACION.Value));
      write(outputfile,','+floattostr(dmcompensa.epsacSALARIO.Value));
      write(outputfile,','+dmcompensa.epsacDIAS.Value);
      write(outputfile,','+floattostr(dmcompensa.epsacCOT_8.Value));
      write(outputfile,','+datetostr(dmcompensa.epsacFEC_PAGO.Value));
      write(outputfile,','+dmcompensa.epsacDIAS_1.Value);
      writeln(outputfile,','+floattostr(dmcompensa.epsacCOTIZACION.Value));
      dmcompensa.epsac.Next;
    end;
    closefile(outputfile);
    savedialog1.FileName := 'EPS035AB'+fecha+'.TXT';
    savedialog1.Execute;
    if savedialog1.FileName <> '' then
    begin
      dmcompensa.epsab.Close;
      dmcompensa.epsab.Prepare;
      dmcompensa.epsab.Params[0].Value :=edit1.Text;
      dmcompensa.epsab.Params[1].Value :=edit2.Text;
      dmcompensa.epsab.Open;
      ben := dmcompensa.epsab.RecordCount;
      dmcompensa.epsab.First;
      assignfile(outputfile, savedialog1.FileName);
      rewrite(outputfile);
      closefile(outputfile);
      append(outputfile);
      writeln(outputfile,'EPS035,'+datetostr(fechadec)+',2,'+floattostr(ben));
      writeln(outputfile,'EPS035,'+datetostr(fechadec)+','+floattostr(ben)+',2');
      while not dmcompensa.epsab.Eof do
      begin
        write(outputfile,floattostr(dmcompensa.epsabNUM_DECLARACION.Value));
        write(outputfile,','+dmcompensa.epsabCOD_EPS.Value);
        write(outputfile,','+dmcompensa.epsabPERIODO_COMPENSADO.Value);
        write(outputfile,','+dmcompensa.epsabTIP_DOCUMENTO_COT.Value);
        write(outputfile,','+dmcompensa.epsabNUM_DOCUMENTO_COT.Value);
        write(outputfile,','+dmcompensa.epsabAFI_TIPO_DOC.Value);
        write(outputfile,','+dmcompensa.epsabAFI_NUMERO_DOC.Value);
        write(outputfile,','+dmcompensa.epsabPRI_APELLIDO.Value);
        write(outputfile,','+dmcompensa.epsabSEG_APELLIDO.Value);
        write(outputfile,','+dmcompensa.epsabPRI_NOMBRE.Value);
        write(outputfile,','+dmcompensa.epsabSEG_NOMBRE.Value);
        write(outputfile,','+dmcompensa.epsabTIPO_AFILIADO.Value);
        write(outputfile,','+dmcompensa.epsabREL_COTIZANTE.Value);
        write(outputfile,','+dmcompensa.epsabCOD_DEPARTAMENTO_RES.Value);
        write(outputfile,','+dmcompensa.epsabCOD_CIUDAD_RES.Value);
        write(outputfile,','+datetostr(dmcompensa.epsabFEC_NACIMIENTO.Value));
        write(outputfile,','+dmcompensa.epsabCOD_SEXO.Value);
        write(outputfile,','+datetostr(dmcompensa.epsabFEC_AFILIACION_UNI.Value));
        writeln(outputfile,','+dmcompensa.epsabDIAS.Value);
        dmcompensa.epsab.Next;
      end;
    end;
    closefile(outputfile);
    showmessage('Finalizada la Generacion del Archivo');
  end;
end;

end.
