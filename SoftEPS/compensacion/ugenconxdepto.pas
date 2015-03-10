unit ugenconxdepto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Math;

type
  Tfrmgenconxdpto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    Edit5: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgenconxdpto: Tfrmgenconxdpto;

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

procedure Tfrmgenconxdpto.Button1Click(Sender: TObject);
var i : real;
    ano1 : string;
    valorupc : real;
    outputfile : textfile;
    colu1 : real;
    colu2 : real;
    colu3 : real;
    colu4 : real;
    colu5 : real;
    colu6 : real;
    colu7 : real;
    colu8 : real;
    colu9 : real;
    colu10 : real;
    colu11 : real;
    colu12 : real;
    colu13 : real;
    colu14 : real;
begin
 { savedialog1.Execute;
  if savedialog1.FileName <> '' then
  begin
    dmcompensa.qrymcconcomp.Close;
    dmcompensa.qrymcconcomp.Open;
    dmcompensa.qrymcconcomp.First;
    while not dmcompensa.qrymcconcomp.Eof do
    begin
      dmcompensa.qrymcconcomp.Edit;
      dmcompensa.qrymcconcomp.Delete;
      dmcompensa.qrymcconcomp.First;
    end;
    dmcompensa.qrymcingupc.Close;
    dmcompensa.qrymcingupc.Prepare;
    dmcompensa.qrymcingupc.Paramas[0].Value := edit1.Text;
    dmcompensa.qrymcingupc.Paramas[1].Value := edit5.Text;
    //select * from afiliados_compensados, afiliados where num_declaracion >='+edit1.Text+' and num_declaracion <='+edit5.Text+' and afiliados_compensados.afi_numero_doc = afiliados.num_documento and afiliados_compensados.afi_tipo_doc = afiliados.tip_documento');
    dmcompensa.qrymcingupc.Open;
    dmcompensa.qrymcingupc.First;
    i := 0;
    while not dmcompensa.qrymcingupc.Eof do
    begin
      i := i +1;
      edit2.Text := floattostr(i);
      frmgenconxdpto.Refresh;
      dmcompensa.qrymcdeclaracion.close;
      dmcompensa.qrymcdeclaracion.Prepare;
      dmcompensa.qrymcdeclaracion.Params[0].Value := dmcompensa.qryingupcnum_declaracion.value;
      //select * from declaraciones where num_declaracion ='+floattostr(dmcompensa.qryingupcnum_declaracion.value));
      dmcompensa.qrymcdeclaracion.open;
      ano1 :=copy(dmcompensa.qrymcdeclaracionperiodo_compensado.Value,4,4)+'/01/01';
      dmcompensa.qrymcvalores.Close;
      dmcompensa.qrymcvalores.prepare;
      dmcompensa.qrymcvalores.params[0].Value := ano1;
      //select * from valoresanulescomp where ano = "'+ano1+'"');
      dmcompensa.qrymcvalores.Open;
      dmcompensa.qrymcvalores.first;
      dmcompensa.qrymcestcos.Close;
      dmcompensa.qrymcestcos.Prepare;
      dmcompensa.qrymcestcos.Params[0].Value := ano1;
      dmcompensa.qrymcestcos.Params[1].Value := dmcompensa.qrymcingupccod_grupo_etareo.Value;
      dmcompensa.qrymcestcos.Open;
      dmcompensa.qrymcestcos.first;
      colu1 := 0;
      colu2 := 0;
      colu3 := 0;
      colu4 := 0;
      colu5 := 0;
      colu6 := 0;
      colu7 := 0;
      colu8 := 0;
      colu9 := 0;
      colu10 := 0;
      colu11 := 0;
      colu12 := 0;
      colu13 := 0;
      colu14 := 0;
      if dmcompensa.qrymcingupctip_beneficiario.Value = 'C' then
         colu1 := 1;
      if dmcompensa.qrymcingupctip_beneficiario.Value = 'B' then
         colu2 := 1;
      if dmcompensa.qrymcingupctip_beneficiario.Value = 'A' then
         colu3 := 1;
      colu4 := 1;
      colu5 := dmcompensa.qrymcingupccotizacion.Value/0.12;
      colu6 := dmcompensa.qrymcingupccotizacion.Value - dmcompensa.qrymcingupcval_deduccion.Value;
      colu7 := dmcompensa.qrymcingupcval_deduccion.Value;
      colu8 := dmcompensa.qrymcingupccotizacion.Value;
      colu9 := dmcompensa.qrymcingupcval_upc.value;
      if dmcompensa.qrymcingupctip_beneficiario.Value = 'A' then
         colu10 := ((dmcompensa.qrymcvalorespyp.Value/12)/30)*strtofloat(dmcompensa.qrymcingupcdias.value);
      if dmcompensa.qrymcingupctip_beneficiario.Value <> 'A' then
         colu10 := (strtofloat(dmcompensa.qrymcingupcdias.Value)*dmcompensa.qrymcvalorespyp.Value)/360;
      colu11 := (colu5 * dmcompensa.qrymcvalorespor_provision_inc.Value)/100;
      if dmcompensa.qrymcingupctip_deduccion.Value = 'LMA' then
         colu12 := dmcompensa.qrymcingupcval_deduccion.Value;
      colu13 := 0;
      colu14 := colu9+colu10+colu11+colu12+colu13;
      dmcompensa.qrymcconxdpto.Close;
      dmcompensa.qrymcconxdpto.Prepare;
      dmcompensa.qrymcconxdpto.Params[0].Value := dmcompensa.qryingupccod_departamento_res.Value;
      //select * from consolidacion_compensacion where departamento = "'+dmcompensa.qryingupccod_departamento_res.Value+'"');
      dmcompensa.qrymcconxdpto.Open;
      dmcompensa.qrymcconxdpto.First;
      dmcompensa.qrymcconxdpto.Edit;
      dmcompensa.qrymcconxdptodepartamento.Value := dmcompensa.qrymcingupccod_departamento_res.Value;
      dmcompensa.qrymcconxdptocol1.Value := dmcompensa.qrymcconxdptocol1.Value + colu1;
      dmcompensa.qrymcconxdptocol2.Value := dmcompensa.qrymcconxdptocol2.Value + colu2;
      dmcompensa.qrymcconxdptocol3.Value := dmcompensa.qrymcconxdptocol3.Value + colu3;
      dmcompensa.qrymcconxdptocol4.Value := dmcompensa.qrymcconxdptocol4.Value + colu4;
      dmcompensa.qrymcconxdptocol5.Value := dmcompensa.qrymcconxdptocol5.Value + 1;
      dmcompensa.qrymcconxdptocol6.Value := dmcompensa.qrymcconxdptocol6.Value + colu6;
      dmcompensa.qrymcconxdptocol7.Value := dmcompensa.qrymcconxdptocol7.Value + colu7;
      dmcompensa.qrymcconxdptocol8.Value := dmcompensa.qrymcconxdptocol8.Value + colu8;
      dmcompensa.qrymcconxdptocol9.Value := dmcompensa.qrymcconxdptocol9.Value + colu9;
      dmcompensa.qrymcconxdptocol10.Value := dmcompensa.qrymcconxdptocol10.Value + colu10;
      dmcompensa.qrymcconxdptocol11.Value := dmcompensa.qrymcconxdptocol11.Value + colu11;
      dmcompensa.qrymcconxdptocol12.Value := dmcompensa.qrymcconxdptocol12.Value + colu12;
      dmcompensa.qrymcconxdptocol13.Value := dmcompensa.qrymcconxdptocol13.Value + colu13;
      dmcompensa.qrymcconxdptocol14.Value := dmcompensa.qrycmconxdptocol14.Value + colu14;
      dmcompensa.qrymcconxdpto.Post;
      dmcompensa.qrymcconxdpto.Close;
      dmcompensa.qrymcingupc.Next;
    end;
    dmcompensa.qrymcconcomp.Close;
    //select * from consolidacion_compensacion');
    dmcompensa.qrymcconcomp.Open;
    dmcompensa.qrymcconcomp.First;
    assignfile (outputfile, savedialog1.FileName);
    rewrite(outputfile);
    closefile (outputfile);
    append(outputfile);
    while not dmcompensa.qrymcconcomp.Eof do
    begin
      dmcompensa.qrymcconcomp.Edit;
      dmcompensa.qrymcconcompcol5.Value := 0;
      dmcompensa.qrymcconcompcol5.Value := dmcompensa.qrymcconcompcol8.Value / 0.12;
      dmcompensa.qrymcconcomp.Post;
      writeln(outputfile,dmcompensa.qrymcconcompdepartamento.Value+','+floattostr(dmcompensa.qrymcconcompcol1.Value)+','+floattostr(dmcompensa.qrymcconcompcol2.Value)+','+floattostr(dmcompensa.qrymcconcompcol3.Value)+','+floattostr(dmcompensa.qrymcconcompcol4.Value)+','+floattostr(Redondea(dmcompensa.qrymcconcompcol5.Value))+','+floattostr(Redondea(dmcompensa.qrymcconcompcol6.Value))+','+floattostr(Redondea(dmcompensa.qrymcconcompcol7.Value))+','+floattostr(Redondea(dmcompensa.qrymcconcompcol8.Value))+','+floattostr(dmcompensa.qrymcconcompcol9.Value)+','+floattostr(dmcompensa.qrymcconcompcol10.Value)+','+floattostr(dmcompensa.qrymcconcompcol11.Value)+','+floattostr(dmcompensa.qrymcconcompcol12.Value)+','+floattostr(dmcompensa.qrymcconcompcol13.Value)+','+floattostr(redondea(dmcompensa.qrymcconcompcol14.Value)));
      dmcompensa.qrymcconcomp.Next;
    end;
    showmessage('Finalizada la Generacion del Consolidado Por Departamento');
    closefile(outputfile)
  end;}
end;

procedure Tfrmgenconxdpto.Edit5Exit(Sender: TObject);
begin
if strtofloat(edit1.Text) > strtofloat(edit5.Text) then
begin
   showmessage('La Declaracion Inicial Debe Ser Menor que la Final');
   edit2.SetFocus;
end;

end;

end.
