unit ugenupcxmcpio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Math;

type
  Tfrmgenupc = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SaveDialog1: TSaveDialog;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label7: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgenupc: Tfrmgenupc;

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

procedure Tfrmgenupc.Button1Click(Sender: TObject);
var ano1 : string;
    valorupc : real;
    outputfile : textfile;
begin
  savedialog1.Execute;
  if savedialog1.FileName <> '' then
  begin
    dmcompensa.qrymcciudades.Close;
    dmcompensa.qrymcciudades.Open;
    dmcompensa.qrymcciudades.First;
    while not dmcompensa.qrymcciudades.Eof do
    begin
      dmcompensa.qrymcciudades.Edit;
      dmcompensa.qrymcciudadesvalor_upc.Value := 0;
      dmcompensa.qrymcciudades.Next;
    end;
    dmcompensa.qrymcingupc.Close;
    dmcompensa.qrymcingupc.Prepare;
    dmcompensa.qrymcingupc.Params[0].Value := edit1.Text;
    dmcompensa.qrymcingupc.Params[1].Value := edit5.Text;
    dmcompensa.qrymcingupc.Open;
    dmcompensa.qrymcingupc.First;
    if dmcompensa.qrymcingupc.RecordCount =0 then
    begin
      showmessage('Numero de Declaraciones No Generados');
      frmgenupc.Close;
    end;
    if dmcompensa.qrymcingupc.RecordCount >0 then
    begin
      while not dmcompensa.qrymcingupc.Eof do
      begin
        dmcompensa.qrymcdeclaracion3.close;
        dmcompensa.qrymcdeclaracion3.Prepare;
        dmcompensa.qrymcdeclaracion3.Params[0].Value :=dmcompensa.qrymcingupcnum_declaracion.value;
        dmcompensa.qrymcdeclaracion3.open;
        dmcompensa.qrymcdeclaracion3.First;
        if dmcompensa.qrymcdeclaracion3.RecordCount =0 then
        begin
          showmessage('Numero de Declaraciones No Generados');
          frmgenupc.Close;
        end;
        edit2.Text := dmcompensa.qrymcingupccod_departamento_res.Value;
        edit3.Text := dmcompensa.qrymcingupccod_ciudad_res.Value;
        edit4.Text := floattostr(DMCOMPENSA.qrymcingupcval_upc.value);
        valorupc :=DMCOMPENSA.qrymcingupcval_upc.value;
        frmgenupc.Refresh;
        frmgenupc.Refresh;
        dmcompensa.qrymcingciu.Close;
        dmcompensa.qrymcingciu.Prepare;
        dmcompensa.qrymcingciu.Params[0].Value :=dmcompensa.qrymcingupccod_departamento_res.Value;
        dmcompensa.qrymcingciu.Params[1].Value :=dmcompensa.qrymcingupccod_ciudad_res.Value;
        dmcompensa.qrymcingciu.Open;
        dmcompensa.qrymcingciu.First;
        dmcompensa.qrymcingciu.Edit;
        dmcompensa.qrymcingciuvalor_upc.Value := redondea(dmcompensa.qrymcingciuvalor_upc.Value+ valorupc);
        dmcompensa.qrymcingciu.Post;
        dmcompensa.qrymcingciu.Close;
        edit6.Text := dmcompensa.qrymcingupcAFI_NUMERO_DOC.Value;
        frmgenupc.Refresh;
        dmcompensa.qrymcingupc.Next;
      end;
      dmcompensa.qrymcciudades.Close;
      dmcompensa.qrymcciudades.Open;
      dmcompensa.qrymcciudades.First;
      assignfile (outputfile, savedialog1.FileName);
      rewrite(outputfile);
      closefile (outputfile);
      append(outputfile);
      while not dmcompensa.qrymcciudades.Eof do
      begin
        if dmcompensa.qrymcciudadesVALOR_UPC.Value > 0 then
        begin
          writeln(outputfile,'41659540101,'+dmcompensa.qrymcciudadescen_costo.Value+','+floattostr(dmcompensa.qrymcciudadesvalor_upc.Value));
        end;
        edit2.Text := dmcompensa.qrymcciudadesCOD_DEPARTAMENTO.Value;
        edit3.Text := dmcompensa.qrymcciudadesCOD_CIUDAD.Value;
        edit4.Text := floattostr(dmcompensa.qrymcciudadesVALOR_UPC.value);
        frmgenupc.Refresh;
        dmcompensa.qrymcciudades.Next;
      end;
      showmessage('Finalizada la Generacion de Ingresos de UPC por Municipio');
      closefile(outputfile);
      frmgenupc.Close;
    end;
  end;
end;

procedure Tfrmgenupc.Edit5Exit(Sender: TObject);
begin
if strtofloat(edit1.Text) > strtofloat(edit5.Text) then
begin
   showmessage('La Declaracion Inicial Debe Ser Menor que la Final');
   edit2.SetFocus;
end;

end;

procedure Tfrmgenupc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

end.
