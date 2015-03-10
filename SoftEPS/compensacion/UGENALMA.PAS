unit ugenalma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tfrm75 = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm75: Tfrm75;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrm75.Edit1Exit(Sender: TObject);
begin
  if edit1.text = '0' then
  begin
    showmessage('Error en Numero de Declaracion');
    edit1.SetFocus;
  end;
end;

procedure Tfrm75.Edit2Exit(Sender: TObject);
begin
  if strtofloat(edit2.Text) < strtofloat(edit1.Text) then
  begin
    showmessage('La Declaracion Final Debe Ser Menor a La Inicial');
    edit2.SetFocus;
  end;
end;

procedure Tfrm75.FormCreate(Sender: TObject);
begin
  edit1.Text := '0';
end;

procedure Tfrm75.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrm75.Button1Click(Sender: TObject);
var outputfile : textfile;
    nombre : string;
    ya : string;
begin
  savedialog1.Execute;
  if savedialog1.FileName <> '' then
  begin
    dmcompensa.qrymcdeclaracion.Close;
    dmcompensa.qrymcdeclaracion.Prepare;
    dmcompensa.qrymcdeclaracion.Params[0].Value :=edit1.Text;
    dmcompensa.qrymcdeclaracion.Params[1].Value :=edit2.Text;
    //select * from declaraciones where num_declaracion >='+edit1.Text+' and num_declaracion <='+edit2.Text+' order by num_declaracion');
    dmcompensa.qrymcdeclaracion.Open;
    dmcompensa.qrymcdeclaracion.First;
    assignfile(outputfile, savedialog1.FileName);
    rewrite(outputfile);
    closefile(outputfile);
    append(outputfile);
    while not dmcompensa.qrymcdeclaracion.Eof do
    begin
      if dmcompensa.qrymcdeclaraciontipo_cierre.Value = 'D' then
      begin
        dmcompensa.qrymcafilcomp.Close;
        dmcompensa.qrymcafilcomp.Prepare;
        dmcompensa.qrymcafilcomp.Params[0].Value :=dmcompensa.qrymcdeclaracionnum_declaracion.Value;
        //select * from afiliados_compensados where num_declaracion = '+floattostr(dmcompensa.qrydeclaracionnum_declaracion.Value)+' and tip_deduccion = "LMA"');
        dmcompensa.qrymcafilcomp.Open;
        dmcompensa.qrymcafilcomp.First;
        while not dmcompensa.qrymcafilcomp.Eof do
        begin
          dmcompensa.qrymcdetplanillas.Close;
          dmcompensa.qrymcdetplanillas.Prepare;
          dmcompensa.qrymcdetplanillas.Params[0].value :=dmcompensa.qrymcafilcompnum_planilla.Value;
          dmcompensa.qrymcdetplanillas.Params[1].value :=dmcompensa.qrymcafilcompafi_numero_doc.Value;
          //select * from det_planilla_autoliquidacion where num_planilla = "'+dmcompensa.qryafilcompnum_planilla.Value+'" and afi_numero_doc = "'+dmcompensa.qryafilcompafi_numero_doc.Value+'"');
          dmcompensa.qrymcdetplanillas.Open;
          dmcompensa.qrymcplanillas.Close;
          dmcompensa.qrymcplanillas.Prepare;
          dmcompensa.qrymcplanillas.Params[0].Value :=dmcompensa.qryafilcompnum_planilla.Value;
          //select * from autoliquidacion where num_planilla = "'+dmcompensa.qryafilcompnum_planilla.Value+'"');
          dmcompensa.qrymcplanillas.Open;
          dmcompensa.qrymcempresas.Close;
          dmcompensa.qrymcempresas.Prepare;
          dmcompensa.qrymcempresas.Params[0].Value := dmcompensa.qrymcplanillasemp_tipo_doc.Value;
          dmcompensa.qrymcempresas.Params[0].Value := dmcompensa.qrymcplanillasemp_numero_doc.Value;
          //select * from empresas where tip_documento ="'+dmcompensa.qryplanillasemp_tipo_doc.Value+'" and num_documento = "'+dmcompensa.qryplanillasemp_numero_doc.Value+'" and cod_sucursal = "'+dmcompensa.qryplanillascod_sucursal.Value+'"');
          dmcompensa.qrymcempresas.Open;
          dmcompensa.qrymcafiliados.Close;
          dmcompensa.qrymcafiliados.Prepare;
          dmcompensa.qrymcafiliados.Params[0].Value :=dmcompensa.qrymcafilcompafi_numero_doc.Value;
          dmcompensa.qrymcafiliados.Params[1].Value :=dmcompensa.qrymcafilcompafi_tipo_doc.Value;
          //select * from afiliados where num_documento ="'+dmcompensa.qryafilcompafi_numero_doc.Value+'" and tip_documento = "'+dmcompensa.qryafilcompafi_tipo_doc.Value+'"');
          dmcompensa.qrymcafiliados.Open;
          dmcompensa.qrymcincapa.Close;
          dmcompensa.qrymcincapa.Prepare;
          dmcompensa.qrymcincapa.Params[0].Value :=dmcompensa.qrymcdetplanillasnum_licencia_mat.Value;
          //select * from incapacidades where num_incapacidad = "'+dmcompensa.qrydetplanillasnum_licencia_mat.Value+'"');
          dmcompensa.qrymcincapa.Open;
          dmcompensa.qrymcincapa.First;
          dmcompensa.qrymcincapa.First;
          while not dmcompensa.qrymcincapa.Eof do
          begin
            nombre := dmcompensa.qrymcafiliadospri_apellido.Value+' '+dmcompensa.qrymcafiliadosseg_apellido.Value+' '+dmcompensa.qrymcafiliadospri_nombre.Value+' '+dmcompensa.qrymcafiliadosseg_nombre.Value;
            write(outputfile,'0007'+CHR(9)+floattostr(dmcompensa.qrymcdeclaracionnum_declaracion.Value)+CHR(9)+dmcompensa.qrymcincapanum_incapacidad.Value+CHR(9)+nombre+CHR(9)+copy(dmcompensa.qrymcincapaafi_tipo_doc.Value,1,1)+CHR(9)+dmcompensa.qrymcincapaafi_numero_doc.Value+CHR(9)+datetostr(dmcompensa.qrymcafiliadosfec_afiliacion_uni.Value)+CHR(9)+datetostr(dmcompensa.qrymcincapafec_inicio.Value)+CHR(9)+datetostr(dmcompensa.qrymcincapafec_inicio.Value+strtofloat(dmcompensa.qrymcincapadia_incapacidad.Value))+CHR(9)+dmcompensa.qrymcafilcompdias.Value);
            writeln(outputfile,CHR(9)+floattostr(dmcompensa.qrymcincapasal_base.Value)+CHR(9)+floattostr(dmcompensa.qrymcincapaval_incapacidad.Value)+CHR(9)+datetostr(dmcompensa.qrymcplanillasfec_pago.Value)+CHR(9)+dmcompensa.qrymcafilcompnum_planilla.Value+CHR(9)+datetostr(dmcompensa.qrymcdeclaracionfecha_declaracion.Value)+CHR(9)+dmcompensa.qrymcempresasnom_empresa.Value+CHR(9)+copy(dmcompensa.qrymcempresastip_documento.Value,1,1)+CHR(9)+dmcompensa.qrymcempresasnum_documento.Value);
            dmcompensa.qrymcincapa.Next;
          end;
        dmcompensa.qrymcafilcomp.Next;
        end;
      end;
    dmcompensa.qrymcdeclaracion.Next;
    end;
    closefile(outputfile);
    showmessage('Finalizada la Generacion del Archivo');
    frm75.Close;
  end;
end;

end.
