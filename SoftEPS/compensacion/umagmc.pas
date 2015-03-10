unit umagmc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tfrmmagmc = class(TForm)
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
  frmmagmc: Tfrmmagmc;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrmmagmc.Button1Click(Sender: TObject);
var outputfile : textfile;
    cot, ben : real;
    fecha : string;
    fechadec : tdatetime;
    cod, tel,fax,rep, nom,dir :string;
begin
  dmcompensa.qrymccompania.close;
  dmcompensa.qrymccompania.open;
  dmcompensa.qrymccompania.first;
  cod := dmcompensa.qrymccompaniaCOD_EPS.Value;
  dmcompensa.qrymccompania.Close;
  fecha := datetostr(date());
  fecha := copy(fecha,1,2)+copy(fecha,4,2)+copy(fecha,7,4);
  savedialog1.FileName := copy(cod,4,3)+'C.TXT';
  savedialog1.Execute;
  if savedialog1.FileName <> '' then
  begin
    dmcompensa.qrymc.Close;
    dmcompensa.qrymc.Prepare;
    dmcompensa.qrymc.Params[0].Value :=edit1.Text;
    dmcompensa.qrymc.Params[1].Value :=edit2.Text;
    dmcompensa.qrymc.Open;
    cot := dmcompensa.qrymc.RecordCount;
    dmcompensa.qrymc.First;
    fechadec := dmcompensa.qrymcFECHA_DECLARACION.Value;
    assignfile(outputfile, savedialog1.FileName);
    rewrite(outputfile);
    closefile(outputfile);
    append(outputfile);
    writeln(outputfile,cod+','+datetostr(dmcompensa.qrymcfecha_declaracion.value)+',1,TP,MMAAAA,'+floattostr(cot)+',1');
    writeln(outputfile,cod+',1,TP,MMAAAA'+','+floattostr(cot));
    while not dmcompensa.qrymc.Eof do
    begin
      write(outputfile,dmcompensa.qrymcPRI_APELLIDO.Value);
      write(outputfile,','+dmcompensa.qrymcSEG_APELLIDO.Value);
      write(outputfile,','+dmcompensa.qrymcPRI_NOMBRE.Value);
      write(outputfile,','+dmcompensa.qrymcSEG_NOMBRE.Value);
      write(outputfile,','+dmcompensa.qrymcNUM_DOCUMENTO.Value);
      write(outputfile,','+dmcompensa.qrymcTIP_DOCUMENTO.Value);
      write(outputfile,','+DATETOSTR(dmcompensa.qrymcFEC_NACIMIENTO.Value));
      write(outputfile,','+dmcompensa.qrymcCOD_SEXO.Value);
      write(outputfile,','+dmcompensa.qrymcCOD_DEPARTAMENTO_RES.Value);
      write(outputfile,','+dmcompensa.qrymcCOD_CIUDAD_RES.Value);
      write(outputfile,','+DATETOSTR(dmcompensa.qrymcFEC_AFILIACION_UNI.Value));
      write(outputfile,','+dmcompensa.qrymcCOD_MODALIDAD_TRA.Value);
      write(outputfile,','+dmcompensa.qrymcCOD_MODALIDAD_TRA.Value);
      write(outputfile,','+floattostr(dmcompensa.qrymcSALARIO.Value));
      write(outputfile,','+dmcompensa.qrymcDIAS.Value);
      write(outputfile,','+dmcompensa.qrymcPERIODO_COMPENSADO.Value);
      write(outputfile,','+DATETOSTR(dmcompensa.qrymcFEC_CONSIGNACION.Value));
      write(outputfile,','+dmcompensa.qrymcCOD_MODALIDAD_TRA.Value);
      write(outputfile,','+floattostr(dmcompensa.qrymcCOTIZACION.Value));
      write(outputfile,','+dmcompensa.qrymcEMP_NUMERO_DOC.Value);
      writeln(outputfile,','+dmcompensa.qrymcEMP_TIPO_DOC.Value);
      dmcompensa.qrymc.Next;
    end;
  end;
  closefile(outputfile);
end;

end.
