unit ucuentascontables;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Math, ComCtrls;

type
  Tfrmcuentas = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Label1: TLabel;
    Panel2: TPanel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit7: TEdit;
    Label7: TLabel;
    SaveDialog1: TSaveDialog;
    Label13: TLabel;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    DateTimePicker1: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcuentas: Tfrmcuentas;

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


procedure Tfrmcuentas.Button1Click(Sender: TObject);
var
  ano1 : string;
  valorupc : real;
  cuenta1 : real;
  cuenta2 : real;
  cuenta3 : real;
  cuenta4 : real;
  cuenta5 : real;
  cuenta6 : real;
  cuenta7 : real;
  cuenta8 : real;
  cuenta9 : real;
  cuenta10 : real;
  cuenta11 : real;
  cuenta12 : real;
  cuenta13 : real;
  cuenta14 : real;
  cuenta15 : real;
  cuenta16 : real;
  cuenta17 : real;
  cuenta18 : real;
  i : integer;
  outputfile : textfile;
  documento : string;
  ano : string;
  mes : string;
  inicio : string;
  fecha : string;
  concepto : string;
  medio : string;
  fin : string;
  declarativa : real;
begin
  dmcompensa.qrymcdeclaracion5.Close;
  dmcompensa.qrymcdeclaracion5.Prepare;
  dmcompensa.qrymcdeclaracion5.Params[0].Value := datetimepicker1.Date;
  dmcompensa.qrymcdeclaracion5.Open;
  dmcompensa.qrymcdeclaracion5.RecordCount;
  if dmcompensa.qrymcdeclaracion5cot_tipo_decla.Value = 0 then
  begin
    documento := 'K'+copy(dmcompensa.qrymcdeclaracion5periodo_compensado.Value,1,2)+'001';
    concepto := 'Compensacion Inicial del Periodo '+dmcompensa.qrymcdeclaracion5periodo_compensado.Value;
  end;
  if dmcompensa.qrymcdeclaracion5cot_tipo_decla.Value = 1 then
  begin
    documento := 'K'+copy(dmcompensa.qrymcdeclaracion5periodo_compensado.Value,1,2)+'002';
    concepto := 'Compensacion Media del Periodo '+dmcompensa.qrymcdeclaracion5periodo_compensado.Value;
  end;
  if dmcompensa.qrymcdeclaracion5cot_tipo_decla.Value = 2 then
  begin
    documento := '00000000'+dmcompensa.qrymcdeclaracion5periodo_compensado.Value;
    concepto := 'Compensacion Final del Periodo '+dmcompensa.qrymcdeclaracion5periodo_compensado.Value;
  end;
  ano := copy(dmcompensa.qrymcdeclaracion5periodo_compensado.Value,4,4);
  mes := copy(dmcompensa.qrymcdeclaracion5periodo_compensado.Value,1,2);
  inicio := 'L001'+documento+ano+mes+fecha;
  medio := '830079672,'+concepto+',';
  fin := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
  savedialog1.Execute;
  if savedialog1.FileName <> '' then
  begin
    cuenta1 :=0;
    cuenta2 :=0;
    cuenta3 :=0;
    cuenta4 :=0;
    cuenta5 :=0;
    cuenta6 :=0;
    cuenta7 :=0;
    cuenta8 :=0;
    cuenta9 :=0;
    cuenta10 :=0;
    cuenta11 :=0;
    cuenta12 :=0;
    cuenta13 :=0;
    cuenta14 :=0;
    cuenta16 :=0;
    cuenta17 :=0;
    cuenta18 :=0;
    assignfile (outputfile, savedialog1.FileName);
    rewrite(outputfile);
    closefile (outputfile);
    append(outputfile);
    dmcompensa.qrymcdeclaracion5.close;
    dmcompensa.qrymcdeclaracion5.Close;
    dmcompensa.qrymcdeclaracion5.Prepare;
    dmcompensa.qrymcdeclaracion5.Params[0].Value := datetimepicker1.Date;
    dmcompensa.qrymcdeclaracion5.Open;
    dmcompensa.qrymcdeclaracion5.RecordCount;
    with dmcompensa.qrymcdeclaracion5 do
    begin
      dmcompensa.qrymcdeclaracion5.First;
      while not dmcompensa.qrymcdeclaracion5.Eof do
      begin
        frmcuentas.Refresh;
        dmcompensa.qrymcliquidacion.Close;
        dmcompensa.qrymcliquidacion.prepare;
        dmcompensa.qrymcliquidacion.Params[0].Value :=dmcompensa.qrymcdeclaracion5num_declaracion.Value;
        dmcompensa.qrymcliquidacion.Open;
        dmcompensa.qrymcliquidacion.RecordCount;
        with dmcompensa.qrymcliquidacion do
        begin
          dmcompensa.qrymcliquidacion.First;
          while not dmcompensa.qrymcliquidacion.Eof do
          begin
            dmcompensa.qrymccuentas.Close;
            dmcompensa.qrymccuentas.Open;
            dmcompensa.qrymccuentas.First;
            edit3.Text := dmcompensa.qrymccuentasnom_cuenta_contable.Value;
            edit4.Text := floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value);
            edit5.Text := dmcompensa.qrymccuentascentro_de_costo.Value;
            edit7.Text := dmcompensa.qrymccuentastipo_asientp.Value;
            cuenta1 := cuenta1 + dmcompensa.qrymcliquidacionval_consignado_comp.Value;
            edit6.Text := floattostr(cuenta1);
            frmcuentas.Refresh;
            dmcompensa.qrymccuentas.Next;
            edit3.Text := dmcompensa.qrymccuentasnom_cuenta_contable.Value;
            edit4.Text := floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value);
            edit5.Text := dmcompensa.qrymccuentascentro_de_costo.Value;
            edit7.Text := dmcompensa.qrymccuentastipo_asientp.Value;
            if dmcompensa.qrymcliquidacionval_consignacion_promocion.Value < 0 then
               cuenta2 := cuenta2 + dmcompensa.qrymcliquidacionval_consignacion_promocion.Value;
            edit6.Text := floattostr(cuenta2);
            frmcuentas.Refresh;
            dmcompensa.qrymccuentas.Next;
            edit3.Text := dmcompensa.qrymccuentasnom_cuenta_contable.Value;
            edit4.Text := floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value);
            edit5.Text := dmcompensa.qrymccuentascentro_de_costo.Value;
            edit7.Text := dmcompensa.qrymccuentastipo_asientp.Value;
            cuenta3 := cuenta3 + dmcompensa.qrymcliquidacionval_total_reca12.Value + dmcompensa.qryliquidacionval_total_reca8.Value;
            edit6.Text := floattostr(cuenta3);
            frmcuentas.Refresh;
            dmcompensa.qrymccuentas.Next;
            edit3.Text := dmcompensa.qrymccuentasnom_cuenta_contable.Value;
            edit4.Text := floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value);
            edit5.Text := dmcompensa.qrymccuentascentro_de_costo.Value;
            edit7.Text := dmcompensa.qrymccuentastipo_asientp.Value;
            cuenta4 := cuenta4 + dmcompensa.qrymcliquidacionval_pago_incap.Value;
            edit6.Text := floattostr(cuenta4);
            frmcuentas.Refresh;
            dmcompensa.qrymccuentas.Next;
            edit3.Text := dmcompensa.qrymccuentasnom_cuenta_contable.Value;
            edit4.Text := floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value);
            edit5.Text := dmcompensa.qrymccuentascentro_de_costo.Value;
            edit7.Text := dmcompensa.qrymccuentastipo_asientp.Value;
            cuenta5 := cuenta5 + dmcompensa.qrymcliquidacionval_lincencias_mat12.Value + dmcompensa.qryliquidacionval_licencias_mat8.Value;
            cuenta10 := cuenta10+dmcompensa.qrymcliquidacionval_solidaridad_12.Value+dmcompensa.qryliquidacionval_solidaridad_8.Value;
            if dmcompensa.qrymcliquidacionval_consignado_comp.Value > 0 then
               cuenta12 := cuenta12 + dmcompensa.qrymcliquidacionval_consignado_comp.Value;
            if dmcompensa.qrymcliquidacionval_consignacion_promocion.Value > 0 then
               cuenta13 := cuenta13 + dmcompensa.qrymcliquidacionval_consignacion_promocion.Value;
            cuenta14 := cuenta14 + dmcompensa.qrymcliquidacionpro_incapacidades12.Value + dmcompensa.qryliquidacionpro_incapacidades8.Value;
            cuenta15 := cuenta15 + dmcompensa.qrymcliquidacionval_lincencias_mat12.Value + dmcompensa.qryliquidacionval_licencias_mat8.Value;
            cuenta16 := cuenta16 + dmcompensa.qrymcliquidacionrec_promocion.Value;
            edit6.Text := floattostr(cuenta5);
            frmcuentas.Refresh;
            dmcompensa.qrymcliquidacion.Next;
          end;
        end;
        dmcompensa.qrymccuentas.Next;
        edit3.Text := dmcompensa.qrymccuentasnom_cuenta_contable.Value;
        edit4.Text := floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value);
        edit5.Text := dmcompensa.qrymccuentascentro_de_costo.Value;
        edit7.Text := dmcompensa.qrymccuentastipo_asientp.Value;
        dmcompensa.qrymccuentas.Next;
        edit3.Text := dmcompensa.qrymccuentasnom_cuenta_contable.Value;
        edit4.Text := floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value);
        edit5.Text := dmcompensa.qrymccuentascentro_de_costo.Value;
        edit7.Text := dmcompensa.qrymccuentastipo_asientp.Value;
{        dmcompensa.qrymcbasesdep.Close;
        dmcompensa.qrymcbasesdep.prepare;
        dmcompensa.qrymcbasesdep.params[0].value := dmcompensa.qrydeclaracionnum_declaracion.Value;
        dmcompensa.qrymcbasesdep.Open;
        with dmcompensa.qrymcbasesdep do
        begin
          dmcompensa.qrymcbasesdep.First;
          while not dmcompensa.qrymcbasesdep.Eof do
          begin
            cuenta7 := cuenta7 + dmcompensa.qrymcbasesdepval_upc_dependientes.Value + dmcompensa.qrybasesdepval_promocion.Value + dmcompensa.qrymcbasesdepval_solidaridad.Value;
            edit6.Text := floattostr(cuenta7);
            cuenta11 := cuenta11 + dmcompensa.qrymcbasesdepval_solidaridad.Value;
            cuenta17 := cuenta17 + dmcompensa.qrymcbasesdepval_promocion.Value;
            dmcompensa.qrymcbasesdep.Next;
          end;
        end; }
        dmcompensa.qrymccuentas.Next;
        edit6.Text := floattostr(cuenta8);
        edit3.Text := dmcompensa.qrymccuentasnom_cuenta_contable.Value;
        edit4.Text := floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value);
        edit5.Text := dmcompensa.qrymccuentascentro_de_costo.Value;
        edit7.Text := dmcompensa.qrymccuentastipo_asientp.Value;
        frmcuentas.Refresh;
{        dmcompensa.qrymctotint_mora.Close;
        dmcompensa.qrymctotint_mora.prepare;
        dmcompensa.qrymctotint_mora.params[0].value := dmcompensa.qrydeclaracionnum_declaracion.Value;
//select int_mora from det_planilla_autoliquidacion (index ix_numpla_numdec), autoliquidacion (index ix_num_planilla_int_mora) where det_planilla_autoliquidacion.num_declaracion = '+floattostr(dmcompensa.qrydeclaracionnum_declaracion.Value)+' and int_mora <> 0 and det_planilla_autoliquidacion.num_planilla = autoliquidacion.num_planilla');
        dmcompensa.qrymctotint_mora.Open;
        with dmcompensa.qrymctotint_mora do
        begin
          dmcompensa.qrymctotint_mora.First;
          while not dmcompensa.qrymctotint_mora.Eof do
          begin
            frmcuentas.Refresh;
            cuenta8 := cuenta8 + dmcompensa.qrymctotint_moraint_mora.Value;
            edit6.Text := floattostr(cuenta8);
            frmcuentas.Refresh;
            dmcompensa.qrymctotint_mora.Next;
          end;
        end;}
      dmcompensa.qrymcdeclaracion5.Next;
      end;
    end;
    dmcompensa.qrymccuentas.Close;
    dmcompensa.qrymccuentas.Open;
    dmcompensa.qrymccuentas.First;
    writeln(outputfile,inicio+'000010000000000000000'+floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value)+'0000830079672'+datetostr(datetimepicker1.Date)+dmcompensa.qrymccuentascentro_de_costo.Value+'000'+dmcompensa.qrymccuentasnom_cuenta_contable.Value+dmcompensa.qrymccuentastipo_asientp.Value+floattostr(abs(cuenta1))+fin);
    dmcompensa.qrymccuentas.Next;
    writeln(outputfile,inicio+'000020000000000000000'+floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value)+'0000830079672'+datetostr(datetimepicker1.Date)+dmcompensa.qrymccuentascentro_de_costo.Value+'000'+dmcompensa.qrymccuentasnom_cuenta_contable.Value+dmcompensa.qrymccuentastipo_asientp.Value+floattostr(abs(cuenta2))+fin);
    dmcompensa.qrymccuentas.Next;
    writeln(outputfile,inicio+'000030000000000000000'+floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value)+'0000830079672'+datetostr(datetimepicker1.Date)+dmcompensa.qrymccuentascentro_de_costo.Value+'000'+dmcompensa.qrymccuentasnom_cuenta_contable.Value+dmcompensa.qrymccuentastipo_asientp.Value+floattostr(abs(cuenta3))+fin);
    dmcompensa.qrymccuentas.Next;
    writeln(outputfile,inicio+'000040000000000000000'+floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value)+'0000830079672'+datetostr(datetimepicker1.Date)+dmcompensa.qrymccuentascentro_de_costo.Value+'000'+dmcompensa.qrymccuentasnom_cuenta_contable.Value+dmcompensa.qrymccuentastipo_asientp.Value+floattostr(abs(cuenta4))+fin);
    dmcompensa.qrymccuentas.Next;
    writeln(outputfile,inicio+'000050000000000000000'+floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value)+'0000830079672'+datetostr(datetimepicker1.Date)+dmcompensa.qrymccuentascentro_de_costo.Value+'000'+dmcompensa.qrymccuentasnom_cuenta_contable.Value+dmcompensa.qrymccuentastipo_asientp.Value+floattostr(abs(cuenta5))+fin);
    dmcompensa.qrymccuentas.Next;
    writeln(outputfile,inicio+'000060000000000000000'+floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value)+'0000830079672'+datetostr(datetimepicker1.Date)+dmcompensa.qrymccuentascentro_de_costo.Value+'000'+dmcompensa.qrymccuentasnom_cuenta_contable.Value+dmcompensa.qrymccuentastipo_asientp.Value+'0'+fin);
    dmcompensa.qrymccuentas.Next;
    writeln(outputfile,inicio+'000070000000000000000'+floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value)+'0000830079672'+datetostr(datetimepicker1.Date)+dmcompensa.qrymccuentascentro_de_costo.Value+'000'+dmcompensa.qrymccuentasnom_cuenta_contable.Value+dmcompensa.qrymccuentastipo_asientp.Value+floattostr(abs(cuenta7))+fin);
    dmcompensa.qrymccuentas.Next;
    writeln(outputfile,inicio+'000080000000000000000'+floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value)+'0000830079672'+datetostr(datetimepicker1.Date)+dmcompensa.qrymccuentascentro_de_costo.Value+'000'+dmcompensa.qrymccuentasnom_cuenta_contable.Value+dmcompensa.qrymccuentastipo_asientp.Value+floattostr(abs(cuenta8))+fin);
    dmcompensa.qrymccuentas.Next;
    writeln(outputfile,inicio+'000090000000000000000'+floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value)+'0000830079672'+datetostr(datetimepicker1.Date)+dmcompensa.qrymccuentascentro_de_costo.Value+'000'+dmcompensa.qrymccuentasnom_cuenta_contable.Value+dmcompensa.qrymccuentastipo_asientp.Value+floattostr(abs(cuenta9))+fin);
    dmcompensa.qrymccuentas.Next;
    writeln(outputfile,inicio+'000100000000000000000'+floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value)+'0000830079672'+datetostr(datetimepicker1.Date)+dmcompensa.qrymccuentascentro_de_costo.Value+'000'+dmcompensa.qrymccuentasnom_cuenta_contable.Value+dmcompensa.qrymccuentastipo_asientp.Value+floattostr(abs(cuenta10))+fin);
    dmcompensa.qrymccuentas.Next;
    writeln(outputfile,inicio+'000110000000000000000'+floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value)+'0000830079672'+datetostr(datetimepicker1.Date)+dmcompensa.qrymccuentascentro_de_costo.Value+'000'+dmcompensa.qrymccuentasnom_cuenta_contable.Value+dmcompensa.qrymccuentastipo_asientp.Value+floattostr(abs(cuenta11))+fin);
    dmcompensa.qrymccuentas.Next;
    writeln(outputfile,inicio+'000120000000000000000'+floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value)+'0000830079672'+datetostr(datetimepicker1.Date)+dmcompensa.qrymccuentascentro_de_costo.Value+'000'+dmcompensa.qrymccuentasnom_cuenta_contable.Value+dmcompensa.qrymccuentastipo_asientp.Value+floattostr(abs(cuenta12))+fin);
    dmcompensa.qrymccuentas.Next;
    writeln(outputfile,inicio+'000130000000000000000'+floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value)+'0000830079672'+datetostr(datetimepicker1.Date)+dmcompensa.qrymccuentascentro_de_costo.Value+'000'+dmcompensa.qrymccuentasnom_cuenta_contable.Value+dmcompensa.qrymccuentastipo_asientp.Value+floattostr(abs(cuenta13))+fin);
    dmcompensa.qrymccuentas.Next;
    writeln(outputfile,inicio+'000140000000000000000'+floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value)+'0000830079672'+datetostr(datetimepicker1.Date)+dmcompensa.qrymccuentascentro_de_costo.Value+'000'+dmcompensa.qrymccuentasnom_cuenta_contable.Value+dmcompensa.qrymccuentastipo_asientp.Value+floattostr(abs(cuenta14))+fin);
    dmcompensa.qrymccuentas.Next;
    writeln(outputfile,inicio+'000150000000000000000'+floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value)+'0000830079672'+datetostr(datetimepicker1.Date)+dmcompensa.qrymccuentascentro_de_costo.Value+'000'+dmcompensa.qrymccuentasnom_cuenta_contable.Value+dmcompensa.qrymccuentastipo_asientp.Value+floattostr(abs(cuenta15))+fin);
    dmcompensa.qrymccuentas.Next;
    writeln(outputfile,inicio+'000160000000000000000'+floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value)+'0000830079672'+datetostr(datetimepicker1.Date)+dmcompensa.qrymccuentascentro_de_costo.Value+'000'+dmcompensa.qrymccuentasnom_cuenta_contable.Value+dmcompensa.qrymccuentastipo_asientp.Value+floattostr(abs(cuenta16))+fin);
{    dmcompensa.qrymccuentas.Next;
    writeln(outputfile,inicio+'00017'+floattostr(dmcompensa.qrymccuentasnum_cuenta_contable.Value)+','+dmcompensa.qrymccuentascentro_de_costo.Value+','+medio+dmcompensa.qrymccuentastipo_asientp.Value+','+floattostr(abs(cuenta17))+','+fin);
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
    dmcompensa.qrymcingupc.Params[0].Value :=edit1.Text;
    dmcompensa.qrymcingupc.Params[1].Value :=edit2.Text;
    //select * from afiliados_compensados, afiliados where num_declaracion >='+edit1.Text+' and num_declaracion <='+edit2.Text+' and afiliados_compensados.afi_numero_doc = afiliados.num_documento and afiliados_compensados.afi_tipo_doc = afiliados.tip_documento');
    dmcompensa.qrymcingupc.Open;
    dmcompensa.qrymcingupc.First;
    while not dmcompensa.qrymcingupc.Eof do
    begin
      dmcompensa.qrymcdeclaracion.close;
      dmcompensa.qrymcdeclaracion.prepare;
      dmcompensa.qrymcdeclaracion.params[0].Value :=dmcompensa.qrymcingupcnum_declaracion.value;
      //select * from declaraciones  where num_declaracion >='+floattostr(dmcompensa.qryingupcnum_declaracion.value));
      dmcompensa.qrymcdeclaracion.open;
      ano1 :=copy(dmcompensa.qrymcdeclaracionperiodo_compensado.Value,4,4)+'/01/01';
      dmcompensa.qrymcvalores.Close;
      dmcompensa.qrymcvalores.prepare;
      dmcompensa.qrymcvalores.params[0].Value := ano1;
      //select * from valoresanulescomp where ano = "'+ano1+'"');
      dmcompensa.qrymcvalores.Open;
      dmcompensa.qrymcvalores.first;
      edit3.Text := dmcompensa.qrymcingupccod_departamento_res.Value +dmcompensa.qrymcingupccod_ciudad_res.Value;
      edit4.Text := '41659540101';
      edit5.Text := '0';
      edit6.Text := floattostr(valorupc);
      edit7.Text := ' ';
      frmcuentas.Refresh;
      dmcompensa.qrymcestcos.Close;
      dmcompensa.qrymcestcos.Prepare;
      dmcompensa.qrymcestcos.Params[0].Value := ano1;
      dmcompensa.qrymcestcos.Params[1].Value := dmcompensa.qrymcingupccod_grupo_etareo.Value;
      dmcompensa.qrymcestcos.Open;
      dmcompensa.qrymcestcos.first;
      valorupc := 0;
      if (dmcompensa.qrymcingupctip_upc.Value = 'N') and (dmcompensa.qrymcingupctip_beneficiario.Value <> 'A') then
      begin
        valorupc := (dmcompensa.qrymcvaloresval_upc_dia_normal.Value * dmcompensa.qrymcestcosval_estructura_cost.Value) * strtofloat(dmcompensa.qrymcingupcdias.Value);
      end;
      if (dmcompensa.qrymcingupctip_upc.Value = 'E') and (dmcompensa.qrymcingupctip_beneficiario.Value <> 'A') then
      begin
        valorupc := (dmcompensa.qrymcvaloresval_upc_dia_especial.Value * dmcompensa.qrymcestcosval_estructura_cost.Value) * strtofloat(dmcompensa.qrymcingupcdias.Value);
      end;
      edit6.Text := floattostr(valorupc);
      frmcuentas.Refresh;
      dmcompensa.qrymcingciu.Close;
      dmcompensa.qrymcingciu.Prepare;
      dmcompensa.qrymcingciu.Params[0].Value :=dmcompensa.qrymcingupccod_departamento_res.Value;
      dmcompensa.qrymcingciu.Params[1].Value :=dmcompensa.qrymcingupccod_ciudad_res.Value;;
      //select valor_upc from ciudades where cod_departamento = "'+dmcompensa.qryingupccod_departamento_res.Value+'" and cod_ciudad = "'+dmcompensa.qryingupccod_ciudad_res.Value+'"');
      dmcompensa.qrymcingciu.Open;
      dmcompensa.qrymcingciu.First;
      dmcompensa.qrymcingciu.Edit;
      dmcompensa.qrymcingciuvalor_upc.Value := redondea(dmcompensa.qrymcingciuvalor_upc.Value+ valorupc);
      dmcompensa.qrymcingciu.Post;
      dmcompensa.qrymcingciu.Close;
      dmcompensa.qrymcingupc.Next;
    end;
    dmcompensa.qrymcciudades.Close;
    dmcompensa.qrymcciudades.prepare;
    dmcompensa.qrymcciudades.Params[0].Value := 0;
    //select * from ciudades where valor_upc <> 0');
    dmcompensa.qrymcciudades.Open;
    dmcompensa.qrymcciudades.First;
    while not dmcompensa.qrymcciudades.Eof do
    begin
      writeln(outputfile,inicio+'41659540101,'+dmcompensa.qrymcciudadescen_costo.Value+','+medio+'2,'+floattostr(dmcompensa.qrymcciudadesvalor_upc.Value)+','+fin);
      dmcompensa.qrymcciudades.Next;
    end;
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
    dmcompensa.qrymcingupc.Params[1].Value := edit2.Text;
    //select * from afiliados_compensados, afiliados where num_declaracion >='+edit1.Text+' and num_declaracion <='+edit2.Text+' and afiliados_compensados.afi_numero_doc = afiliados.num_documento and afiliados_compensados.afi_tipo_doc = afiliados.tip_documento and afiliados_compensados.tip_beneficiario = "A"');
    dmcompensa.qrymcingupc.Open;
    dmcompensa.qrymcingupc.First;
    while not dmcompensa.qrymcingupc.Eof do
    begin
      dmcompensa.qrymcdeclaracion.close;
      dmcompensa.qrymcdeclaracion.Prepare;
      dmcompensa.qrymcdeclaracion.Params[0].Value := dmcompensa.qrymcingupcnum_declaracion.value;
      //select * from declaraciones  where num_declaracion >='+floattostr(dmcompensa.qryingupcnum_declaracion.value));
      dmcompensa.qrymcdeclaracion.open;
      ano1 :=copy(dmcompensa.qrymcdeclaracionperiodo_compensado.Value,4,4)+'/01/01';
      dmcompensa.qrymcvalores.Close;
      dmcompensa.qrymcvalores.prepare;
      dmcompensa.qrymcvalores.params[0].Value := ano1;
      //select * from valoresanulescomp where ano = "'+ano1+'"');
      dmcompensa.qrymcvalores.Open;
      dmcompensa.qrymcvalores.first;
      edit3.Text := dmcompensa.qrymcingupccod_departamento_res.Value +dmcompensa.qrymcingupccod_ciudad_res.Value;
      edit4.Text := '41659540201';
      edit5.Text := '0';
      edit6.Text := floattostr(valorupc);
      edit7.Text := ' ';
      frmcuentas.Refresh;
      dmcompensa.qrymcestcos.Close;
      dmcompensa.qrymcestcos.Prepare;
      dmcompensa.qrymcestcos.Params[0].Value := ano1;
      dmcompensa.qrymcestcos.Params[1].Value := dmcompensa.qrymcingupccod_grupo_etareo.Value;
      dmcompensa.qrymcestcos.Open;
      dmcompensa.qrymcestcos.first;
      valorupc := 0;
      if (dmcompensa.qrymcingupctip_upc.Value = 'N') and (dmcompensa.qrymcingupctip_beneficiario.Value = 'A') then
      begin
        valorupc := (((dmcompensa.qrymcvaloresupc.Value*dmcompensa.qrymcestcosval_estructura_cost.Value)/12)/30)*strtofloat(dmcompensa.qrymcingupcdias.Value);
      end;
      if (dmcompensa.qrymcingupctip_upc.Value = 'E') and (dmcompensa.qrymcingupctip_beneficiario.Value = 'A') then
      begin
        valorupc := (((((dmcompensa.qrymcvaloresupc.Value*dmcompensa.qrymcvaloresriesgo.Value)+dmcompensa.qrymcvaloresupc.Value)*dmcompensa.qrymcestcosval_estructura_cost.Value)/12)/30)*strtofloat(dmcompensa.qrymcingupcdias.Value)
      end;
      edit6.Text := floattostr(valorupc);
      frmcuentas.Refresh;
      dmcompensa.qrymcingupc.Close;
      dmcompensa.qrymcingupc.Prepare;
      dmcompensa.qrymcingupc.Params[0].Value := edit1.Text;
      dmcompensa.qrymcingupc.Params[1].Value := edit2.Text;
      //select * from afiliados_compensados, afiliados where num_declaracion >='+edit1.Text+' and num_declaracion <='+edit2.Text+' and afiliados_compensados.afi_numero_doc = afiliados.num_documento and afiliados_compensados.afi_tipo_doc = afiliados.tip_documento and afiliados_compensados.tip_beneficiario = "A"');
      dmcompensa.qrymcingupc.Open;
      dmcompensa.qrymcingupc.First;
      dmcompensa.qrymcingciu.Edit;
      dmcompensa.qrymcingciuvalor_upc.Value := redondea(dmcompensa.qryingciuvalor_upc.Value+ valorupc);
      dmcompensa.qrymcingciu.Post;
      dmcompensa.qrymcingciu.Close;
      dmcompensa.qrymcingupc.Next;
    end;
    dmcompensa.qrymcciudades.Close;
    dmcompensa.qrymcciudades.Prepare;
    dmcompensa.qrymcciudades.Params[0].Value := 0;
    //select * from ciudades where valor_upc <> 0');
    dmcompensa.qrymcciudades.Open;
    dmcompensa.qrymcciudades.First;
    while not dmcompensa.qrymcciudades.Eof do
    begin
      writeln(outputfile,inicio+'41659540201,'+dmcompensa.qrymcciudadescen_costo.Value+','+medio+'2,'+floattostr(dmcompensa.qrymcciudadesvalor_upc.Value)+','+fin);
      dmcompensa.qrymcciudades.Next;
    end;
    dmcompensa.qrymcciudades.Close;
    dmcompensa.qrymcciudades.Prepare;
    dmcompensa.qrymcciudades.Params[0].Value := 0;
    //select * from ciudades where valor_upc <> 0');
    dmcompensa.qrymcciudades.Open;
    dmcompensa.qrymcciudades.First;
    while not dmcompensa.qrymcciudades.Eof do
    begin
      dmcompensa.qrymcciudades.Edit;
      dmcompensa.qrymcciudadesvalor_upc.Value := 0;
      dmcompensa.qrymcciudades.Post;
      dmcompensa.qrymcciudades.Next;
    end;
    dmcompensa.qrymcdeclaracion.close;
    dmcompensa.qrymcdeclaracion.Prepare;
    dmcompensa.qrymcdeclaracion.Params[0].Value :=edit1.Text;
    dmcompensa.qrymcdeclaracion.Params[1].Value :=edit2.Text;
    //select * from declaraciones  where num_declaracion >='+edit1.Text+' and num_declaracion <='+edit2.Text+' order by num_declaracion');
    dmcompensa.qrymcdeclaracion.open;
    with dmcompensa.qrymcdeclaracion do
    begin
      dmcompensa.qrymcdeclaracion.First;
      while not dmcompensa.qrymcdeclaracion.Eof do
      begin
        dmcompensa.qrymctotint1.Close;
        dmcompensa.qrymctotint1.Prepare;
        dmcompensa.qrymctotint1.Params[0].Value :=dmcompensa.qrydeclaracionnum_declaracion.Value;
//select int_mora, cod_departamento, cod_ciudad from det_planilla_autoliquidacion (index ix_numpla_numdec), autoliquidacion (index ix_num_planilla_int_mora), empresas where det_planilla_autoliquidacion.num_declaracion = '+floattostr(dmcompensa.qrydeclaracionnum_declaracion.Value));
//and int_mora <> 0 and det_planilla_autoliquidacion.num_planilla = autoliquidacion.num_planilla and autoliquidacion.emp_tipo_doc = empresas.tip_documento');
// and autoliquidacion.emp_numero_doc = empresas.num_documento and autoliquidacion.cod_sucursal=empresas.cod_sucursal');
        dmcompensa.qrymctotint1.Open;
        with dmcompensa.qrytotint1 do
        begin
          dmcompensa.qrymctotint1.First;
          edit3.Text := 'Ingreso Intereses de Mora Por Municipio';
          edit4.Text := '41659540116';
          edit5.Text := '0';
          edit6.Text := '0';
          edit7.Text := '2';
          frmcuentas.Refresh;
          while not dmcompensa.qrymctotint1.Eof do
          begin
            dmcompensa.qrymcingupc.Close;
            dmcompensa.qrymcingupc.Prepare;
            dmcompensa.qrymcingupc.Params[0].Value := dmcompensa.qrymctotint1cod_departamento.Value;
            dmcompensa.qrymcingupc.Params[1].Value := dmcompensa.qrytotint1cod_ciudad.Value;
//select valor_upc from ciudades where cod_departamento = "'+dmcompensa.qrytotint1cod_departamento.Value+'" and cod_ciudad = "'+dmcompensa.qrytotint1cod_ciudad.Value+'"');
            dmcompensa.qrymcingciu.Open;
            dmcompensa.qrymcingciu.First;
            dmcompensa.qrymcingciu.Edit;
            dmcompensa.qrymcingciuvalor_upc.Value := dmcompensa.qrymcingciuvalor_upc.Value + dmcompensa.qrymctotint1int_mora.Value;
            dmcompensa.qrymcingciu.Post;
            dmcompensa.qrymcingciu.Close;
            edit6.Text := floattostr(dmcompensa.qrymctotint1int_mora.Value);
            dmcompensa.qrymctotint1.Next;
          end;
        end;
      dmcompensa.qrymcdeclaracion.Next;
      end;
    end;
    dmcompensa.qrymcciudades.Close;
    dmcompensa.qrymcciudades.Prepare;
    dmcompensa.qrymcciudades.Params[0].Value := 0;
    //select * from ciudades where valor_upc <> 0');
    dmcompensa.qrymcciudades.Open;
    dmcompensa.qrymcciudades.First;
    while not dmcompensa.qrymcciudades.Eof do
    begin
      writeln(outputfile,inicio+'41659540116,'+dmcompensa.qrymcciudadescen_costo.Value+','+medio+'2,'+floattostr(dmcompensa.qrymcciudadesvalor_upc.Value)+','+fin);
      dmcompensa.qrymcciudades.Next;
    end;}
    showmessage('Finalizado Proceso de Generacion de Cuentas Contables');
    closefile (outputfile);
    frmcuentas.Close;
  end;
end;

procedure Tfrmcuentas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

end.
