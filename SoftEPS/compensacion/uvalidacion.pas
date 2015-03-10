unit uvalidacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tfrmvalidacion = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    SaveDialog1: TSaveDialog;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvalidacion: Tfrmvalidacion;

implementation

uses dmcompensacion;

{$R *.dfm}
function espacios(tamano:integer;cadena:string):string;
var i : integer;
    cadena2 : string;
begin
  cadena2 := '';
  for i:=1 to tamano-length(cadena) do
      cadena2 := ' '+cadena2;
  espacios := cadena2 + cadena;
end;

procedure Tfrmvalidacion.Button1Click(Sender: TObject);
var outputfile : textfile;
    ESTADO : string;
begin
  savedialog1.Execute;
  if savedialog1.FileName <> '' then
  begin
    assignfile (outputfile, savedialog1.FileName);
    rewrite(outputfile);
    closefile (outputfile);
    append(outputfile);
    writeln(outputfile,'');
    writeln(outputfile,'Red Vida EPS                                                         SOFTEPS');
    writeln(outputfile,'');
    writeln(outputfile,'       VALIDACION DE LA AUTOLIQUIDACION PARA EL PROCESO DE COMPENSACION');
    writeln(outputfile,'');
    writeln(outputfile,'=============================================================================');
    writeln(outputfile,espacios(12,'NUM_PLANILLA')+' '+espacios(2,'TPDOC')+' '+espacios(15,'NUMERO_DOC')+' '+espacios(3,'ETD')+' '+espacios(15,'EMP_NUM_DOC')+' '+espacios(2,'CS'));
    writeln(outputfile,espacios(7,'PER_PRE')+' '+espacios(7,'PER_COT')+' '+espacios(2,'OFICINA'));
    writeln(outputfile,espacios(2,'DIAS')+' '+espacios(15,'SAL_BASE')+' '+espacios(15,'ING_BASE_COT')+' '+espacios(15,'COT_OBLI'));
    writeln(outputfile,'==============================================================================');
    dmcompensa.qrymcestplanillas.Open;
    dmcompensa.qrymcestplanillas.RecordCount;
    with dmcompensa.qrymcestplanillas do
    begin
      dmcompensa.qrymcestplanillas.First;
      while not dmcompensa.qrymcestplanillas.Eof do
      begin
        estado := dmcompensa.qrymcestplanillasCOD_ESTADO.Value;
        dmcompensa.qrymcvalidacion.Close;
        dmcompensa.qrymcvalidacion.Prepare;
        dmcompensa.qrymcvalidacion.Params[0].Value := estado;
        dmcompensa.qrymcvalidacion.Open;
        with dmcompensa.qrymcvalidacion do
        begin
          dmcompensa.qrymcvalidacion.First;
          dmcompensa.qrymcvalidacion.RecordCount;
          writeln(outputfile,'');
          writeln(outputfile,'');
          writeln(outputfile,'ESTADO : '+dmcompensa.qrymcestplanillasDES_ESTADO.Value);
          writeln(outputfile,'--------------------------------------------------');
          while not dmcompensa.qrymcvalidacion.Eof do
          begin
            writeln(outputfile,'');
            writeln(outputfile,espacios(12,dmcompensa.qrymcvalidacionNUM_PLANILLA.Value)+' '+espacios(2,dmcompensa.qrymcvalidacionAFI_TIPO_DOC.Value)+' '+espacios(15,dmcompensa.qrymcvalidacionAFI_NUMERO_DOC.Value)+' '+espacios(3,dmcompensa.qrymcvalidacionEMP_TIPO_DOC.Value)+' '+espacios(15,dmcompensa.qrymcvalidacionEMP_NUMERO_DOC.Value)+' '+espacios(2,dmcompensa.qrymcvalidacionCOD_SUCURSAL.Value));
            writeln(outputfile,espacios(7,dmcompensa.qrymcvalidacionPER_PRESENTACION.Value)+' '+espacios(7,dmcompensa.qrymcvalidacionPER_COTIZACION.Value)+' '+espacios(2,dmcompensa.qrymcvalidacionCOD_OFICINA.Value));
            writeln(outputfile,espacios(2,dmcompensa.qrymcvalidacionDIA_COTIZADOS.Value)+' '+espacios(15,format('%n',[dmcompensa.qrymcvalidacionSAL_BASE.value]))+' '+espacios(15,format('%n',[dmcompensa.qrymcvalidacionING_BASE_COT.Value]))+' '+espacios(15,format('%n',[dmcompensa.qrymcvalidacionCOT_OBLIGATORIA.Value])));
            writeln(outputfile,'');
            dmcompensa.qrymcvalidacion.Next;
          end;
        end;
        writeln(outputfile,'==============================================================================');
        dmcompensa.qrymcestplanillas.Next;
      end;
    end;
    showmessage('Finalizada La Generacion de la Validacion');
    closefile(outputfile);
  end;
  close;
end;

procedure Tfrmvalidacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
