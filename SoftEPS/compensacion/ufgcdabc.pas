unit ufgcdabc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tfrm72 = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm72: Tfrm72;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrm72.Button1Click(Sender: TObject);
var outputfile : textfile;
begin
  savedialog1.Execute;
  if savedialog1.FileName <> '' then
  begin
    dmcompensa.qrymcdeclaracion4.Close;
    dmcompensa.qrymcdeclaracion4.Prepare;
    dmcompensa.qrymcdeclaracion4.Params[0].Value :=edit1.Text;
    dmcompensa.qrymcdeclaracion4.Params[1].Value :=edit2.Text;
    dmcompensa.qrymcdeclaracion4.Open;
    dmcompensa.qrymcdeclaracion4.First;
    assignfile(outputfile, savedialog1.FileName);
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
        dmcompensa.qrymcbasesdecalculo.Close;
        dmcompensa.qrymcbasesdecalculo.Prepare;
        dmcompensa.qrymcbasesdecalculo.Params[0].Value := dmcompensa.qrymcdeclaracion4num_declaracion.Value;
        dmcompensa.qrymcbasesdecalculo.Params[1].Value := dmcompensa.qrymcgrpeta1cod_grupo_eta.Value;
        dmcompensa.qrymcbasesdecalculo.Open;
        if dmcompensa.qrymcbasesdecalculo.RecordCount >0 then
        begin
          dmcompensa.qrymcbasesdecalculo.First;
          write(outputfile,'0035'+CHR(9)+floattostr(dmcompensa.qrymcbasesdecalculonum_declaracion.Value)+CHR(9)+floattostr(dmcompensa.qrymcbasesdecalculocod_grupo_eta.Value)+CHR(9)+floattostr(dmcompensa.qrymcbasesdecalculotot_cotizantes_mcn.Value)+CHR(9)+floattostr(dmcompensa.qrymcbasesdecalculotot_cotizantes_mce.Value)+CHR(9)+floattostr(dmcompensa.qrymcbasesdecalculotot_cotizantes_mpn.Value)+CHR(9)+floattostr(dmcompensa.qrymcbasesdecalculotot_cotizantes_mpe.Value)+CHR(9)+floattostr(dmcompensa.qrymcbasesdecalculotot_beneficiarios_mcn.Value)+CHR(9)+floattostr(dmcompensa.qrymcbasesdecalculotot_beneficiarios_mce.Value)+CHR(9)+floattostr(dmcompensa.qrymcbasesdecalculotot_beneficiarios_mpnl.Value)+CHR(9)+floattostr(dmcompensa.qrymcbasesdecalculotot_beneficiarios_mpe.Value)+CHR(9)+floattostr(dmcompensa.qrymcbasesdecalculotot_afiliados_mcn.Value)+CHR(9)+floattostr(dmcompensa.qrymcbasesdecalculotot_afiliados_mce.Value));
          writeln(outputfile,CHR(9)+floattostr(dmcompensa.qrymcbasesdecalculotot_afiliados_mpn.Value)+CHR(9)+floattostr(dmcompensa.qrymcbasesdecalculotot_afiliados_mpe.Value)+CHR(9)+'0'+CHR(9)+'0'+CHR(9)+floattostr(dmcompensa.qrymcbasesdecalculotot_dias_cotznn.Value)+CHR(9)+floattostr(dmcompensa.qrymcbasesdecalculotot_dias_cotize.Value)+CHR(9)+floattostr(dmcompensa.qrymcbasesdecalculotot_upc_dzn.Value)+CHR(9)+floattostr(dmcompensa.qrymcbasesdecalculotot_upc_dze.Value)+CHR(9)+floattostr(dmcompensa.qrymcbasesdecalculotot_valor_upc.Value));
        end;
        if dmcompensa.qrymcbasesdecalculo.RecordCount = 0 then
           writeln(outputfile,'0035'+CHR(9)+floattostr(dmcompensa.qrymcdeclaracion4num_declaracion.Value)+CHR(9)+floattostr(dmcompensa.qrymcgrpeta1cod_grupo_eta.Value)+CHR(9)+'0'+CHR(9)+'0'+CHR(9)+'0'+CHR(9)+'0'+CHR(9)+'0'+CHR(9)+'0'+CHR(9)+'0'+CHR(9)+'0'+CHR(9)+'0'+CHR(9)+'0'+CHR(9)+'0'+CHR(9)+'0'+CHR(9)+'0'+CHR(9)+'0'+CHR(9)+'0'+CHR(9)+'0'+CHR(9)+'0'+CHR(9)+'0'+CHR(9)+'0');
        dmcompensa.qrymcgrpeta1.Next;
      end;
      dmcompensa.qrymcdeclaracion4.Next;
    end;
    closefile(outputfile);
    showmessage('Finalizada la Generacion del Archivo');
    frm72.Close;
  end;
end;

procedure Tfrm72.FormCreate(Sender: TObject);
begin
  edit1.Text := '0';
end;

procedure Tfrm72.Edit1Exit(Sender: TObject);
begin
  if edit1.text = '0' then
  begin
    showmessage('Error en Numero de Declaracion');
    edit1.SetFocus;
  end;
end;

procedure Tfrm72.Edit2Exit(Sender: TObject);
begin
  if strtofloat(edit2.Text) < strtofloat(edit1.Text) then
  begin
    showmessage('La Declaracion Final Debe Ser Menor a La Inicial');
    edit2.SetFocus;
  end;
end;

procedure Tfrm72.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

end.
