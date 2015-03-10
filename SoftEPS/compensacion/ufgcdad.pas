unit ufgcdad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tfrm73 = class(TForm)
    Panel1: TPanel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm73: Tfrm73;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrm73.Button1Click(Sender: TObject);
var outputfile : textfile;
begin
  savedialog1.Execute;
  if savedialog1.FileName <> '' then
  begin
    dmcompensa.qrymcdeclaracion4.Close;
    dmcompensa.qrymcdeclaracion4.Prepare;
    dmcompensa.qrymcdeclaracion4.Params[0].Value := edit1.text;
    dmcompensa.qrymcdeclaracion4.Params[1].Value := edit2.text;
    //select * from declaraciones where num_declaracion >= '+edit1.text+' and num_declaracion <= '+edit2.Text);
    dmcompensa.qrymcdeclaracion4.Open;
    dmcompensa.qrymcdeclaracion4.First;
    assignfile (outputfile, savedialog1.FileName);
    rewrite(outputfile);
    closefile(outputfile);
    append(outputfile);
    while not dmcompensa.qrymcdeclaracion4.Eof do
    begin
      dmcompensa.qrymcgrpeta1.Close;
      dmcompensa.qrymcgrpeta1.Open;
      dmcompensa.qrymcgrpeta1.First;
      while not dmcompensa.qrymcgrpeta1.Eof do
      begin
        dmcompensa.qrymcbasesdep.Close;
        dmcompensa.qrymcbasesdep.Prepare;
        dmcompensa.qrymcbasesdep.Params[0].Value := dmcompensa.qrymcdeclaracion4num_declaracion.Value;
        dmcompensa.qrymcbasesdep.Params[1].Value := dmcompensa.qrymcgrpeta1cod_grupo_eta.Value;
        dmcompensa.qrymcbasesdep.Open;
        if dmcompensa.qrymcbasesdep.RecordCount > 0 then
        begin
           dmcompensa.qrymcbasesdep.First;
           write(outputfile,'0035'+CHR(9)+floattostr(dmcompensa.qrymcbasesdepnum_declaracion.Value));
           writeln(outputfile,CHR(9)+floattostr(dmcompensa.qrymcbasesdepcod_grupo_eta.Value)+CHR(9)+floattostr(dmcompensa.qrymcbasesdeptot_dependientes.Value)+CHR(9)+floattostr(dmcompensa.qrymcbasesdepval_upc_dependientes.Value)+CHR(9)+floattostr(dmcompensa.qrymcbasesdepval_promocion.Value)+CHR(9)+floattostr(dmcompensa.qrymcbasesdepval_solidaridad.Value));
        end;
        if dmcompensa.qrymcbasesdep.RecordCount = 0 then
           writeln(outputfile,'0035'+CHR(9)+floattostr(dmcompensa.qrymcdeclaracion4num_declaracion.Value)+CHR(9)+floattostr(dmcompensa.qrymcgrpeta1cod_grupo_eta.Value)+CHR(9)+'0'+CHR(9)+'0'+CHR(9)+'0'+CHR(9)+'0');
        dmcompensa.qrymcgrpeta1.Next;
      end;
      dmcompensa.qrymcdeclaracion4.Next;
    end;
    closefile(outputfile);
    showmessage('Finalizada la Generación del Archivo');
    frm73.Close;
  end;
end;

procedure Tfrm73.Edit2Exit(Sender: TObject);
begin
  if strtofloat(edit2.Text) < strtofloat(edit1.Text) then
  begin
    showmessage('La Declaracion Final Debe Ser Menor a La Inicial');
    edit2.SetFocus;
  end;
end;

procedure Tfrm73.Edit1Exit(Sender: TObject);
begin
  if edit1.text = '0' then
  begin
    showmessage('Error en Numero de Declaracion');
    edit1.SetFocus;
  end;
end;

procedure Tfrm73.FormCreate(Sender: TObject);
begin
   edit1.Text := '0';
end;

procedure Tfrm73.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
