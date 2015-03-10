unit umulti;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Math;

type
  Tfrmreproceso = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmreproceso: Tfrmreproceso;

implementation

uses dmcompensacion, ucierre;

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


procedure Tfrmreproceso.Button1Click(Sender: TObject);
var periodo : string;
  fecha : string;
  i : real;
  fecha_dec : string;
  decini : string;
  decfin : string;
  outputfile : textfile;
  fechacomp,fec_consignacion : tdatetime;
  num_declara : real;
  per_compensado : string;
  edad : integer;
  sicomp : string;
  ano : tdatetime;
  ano1 : string;
  ii : integer;
  upcdep,promdep : real;
  ibc12,ibc8 : real;
  tre12,tre8 : real;
  vde12,vde8 : real;
  vtc12,vtc8 : real;
  vso12,vso8 : real;
  vpp12,vpp8 : real;
  pri12,pri8 : real;
  cne12,cne8 : real;
  vlm12,vlm8 : real;
  vru12,vru8 : real;
  vpc12,vpc8 : real;
  tsu12,tsu8 : real;
  val_prom    : real;
  sal_com_pro : real;
  planillas   : integer;
  tot_inc_pag : real;
  tot_cot_nid : real;
  num_tot_afi : real;
  num_tot_cot8 : real;
  tot_afi_ind : real;
  ibc_afi_ind : real;
  tot_mad_com : real;
  ibc_mad_com : real;
  tot_mad_comp : real;
  ibc_mad_comp : real;
  tot_afi_agre : real;
  upc_afi_agre : real;
  tot_upc_afi_agre : real;
  tot_upc_dias_agre : real;
  tot_inc_pagas : real;
  val_rec_bruto : real;
  tot_lma_pagas : real;
  tot_apo_neto  : real;
  rec_acumulado : real;
  diasze : real;
  diaszn : real;
  val_rec_pyp : real;
  val_soli : real;
  fec_cons_sol : tdatetime;
  fec_cons_pro : tdatetime;
  fec_cons_comp : tdatetime;
  val_cons_sol : tdatetime;
  val_cons_pro : tdatetime;
  val_cons_comp : tdatetime;
  cot_no_id : real;
  mes : tdatetime;
  activos : real;
  num_total_cotiz8 : real;
  tot_rec_mes_ant : real;
  tot_lic_pagas : real;
  tot_aportes_netos : real;
  declarativa : real;
  fecha_dec1 : string;
  fecha_dec2 : string;
  altorie : string;
  upc : real;
  riesgo : real;
  est : real;
  upces : real;
  ano2 : string;
  fecrec : string;
  fecrecini : string;
  fecrecfin : string;
  fechainidig : string;
  fechafindig : string;
  fechainidig1 : string;
  fechafindig1 : string;
  per_cotizacion : string;
  mes1 : string;
  ano11 : string;
  fecagre : string;
  tip_declaracion : string;
begin
  fecha_dec := copy(datetostr(datetimepicker1.Date),7,4)+copy(datetostr(datetimepicker1.Date),3,4)+copy(datetostr(datetimepicker1.Date),1,2);
  dmcompensa.qrymcdeclaracion2.Close;
  dmcompensa.qrymcdeclaracion2.Prepare;
  dmcompensa.qrymcdeclaracion2.Params[0].Value := datetimepicker1.Date;
  dmcompensa.qrymcdeclaracion2.Open;
  with dmcompensa.qrymcdeclaracion2 do
  begin
    dmcompensa.qrymcdeclaracion2.First;
    decini := floattostr(dmcompensa.qrymcdeclaracion2num_declaracion.Value);
    dmcompensa.qrymcdeclaracion2.last;
    decfin :=floattostr(dmcompensa.qrymcdeclaracion2num_declaracion.Value);
  end;
  dmcompensa.qrymcdeclaracion2.Close;
  dmcompensa.qrymcbasesdecalculo3.Close;
  dmcompensa.qrymcbasesdecalculo3.Prepare;
  dmcompensa.qrymcbasesdecalculo3.Params[0].Value := decini;
  dmcompensa.qrymcbasesdecalculo3.Params[1].Value := decfin;
  dmcompensa.qrymcbasesdecalculo3.Open;
  with dmcompensa.qrymcbasesdecalculo3 do
  begin
    dmcompensa.qrymcbasesdecalculo3.First;
    while not dmcompensa.qrymcbasesdecalculo3.Eof do
    begin
      dmcompensa.qrymcbasesdecalculo3.Delete;
      dmcompensa.qrymcbasesdecalculo3.First;
    end;
  end;
  dmcompensa.qrymcbasesdep3.Close;
  dmcompensa.qrymcbasesdep3.Prepare;
  dmcompensa.qrymcbasesdep3.Params[0].Value :=decini;
  dmcompensa.qrymcbasesdep3.Params[1].Value :=decfin;
  dmcompensa.qrymcbasesdep3.Open;
  with dmcompensa.qrymcbasesdep3 do
  begin
    dmcompensa.qrymcbasesdep3.First;
    while not dmcompensa.qrymcbasesdep3.Eof do
    begin
      dmcompensa.qrymcbasesdep3.Delete;
      dmcompensa.qrymcbasesdep3.First;
    end;
  end;
  dmcompensa.qrymcliquidacion3.Close;
  dmcompensa.qrymcliquidacion3.Prepare;
  dmcompensa.qrymcliquidacion3.Params[0].Value := decini;
  dmcompensa.qrymcliquidacion3.Params[1].Value := decfin;
  dmcompensa.qrymcliquidacion3.Open;
  with dmcompensa.qrymcliquidacion3 do
  begin
    dmcompensa.qrymcliquidacion3.First;
    while not dmcompensa.qrymcliquidacion3.Eof do
    begin
      dmcompensa.qrymcliquidacion3.Delete;
      dmcompensa.qrymcliquidacion3.First;
    end;
  end;
  fecha_dec := datetostr(datetimepicker1.Date);
  fecha_dec1 := fecha_dec;
  fecha_dec2 := fecha_dec;
  dmcompensa.qrymcdeclaracion2.Close;
  dmcompensa.qrymcdeclaracion2.Prepare;
  dmcompensa.qrymcdeclaracion2.Params[0].Value :=datetimepicker1.Date;
  dmcompensa.qrymcdeclaracion2.Open;
  i:=0;
  edit1.Text := floattostr(dmcompensa.qrymcdeclaracion2.RecordCount);
  with dmcompensa.qrymcdeclaracion2 do
  begin
    dmcompensa.qrymcdeclaracion2.First;
    while not dmcompensa.qrymcdeclaracion2.Eof do
    begin
      ano1 :='01/01/'+copy(dmcompensa.qrymcdeclaracion2periodo_compensado.Value,4,4);
      dmcompensa.qrymcvalores.Close;
      dmcompensa.qrymcvalores.Prepare;
      dmcompensa.qrymcvalores.Params[0].Value := ano1;
      dmcompensa.qrymcvalores.Open;
      dmcompensa.qrymcvalores.first;
      dmcompensa.qrymcbases.Close;
      dmcompensa.qrymcbases.Prepare;
      dmcompensa.qrymcbases.Params[0].Value := dmcompensa.qrymcdeclaracion2num_declaracion.value;
      dmcompensa.qrymcbases.Open;
      dmcompensa.qrymcbases.First;
      while not dmcompensa.qrymcbases.Eof do
      begin
        dmcompensa.qrymcestcos.Close;
        dmcompensa.qrymcestcos.Prepare;
        dmcompensa.qrymcestcos.Params[0].Value :=ano1;
        dmcompensa.qrymcestcos.Params[1].Value :=dmcompensa.qrymcbasescod_grupo_etareo.Value;
        dmcompensa.qrymcestcos.Open;
        dmcompensa.qrymcestcos.first;
        dmcompensa.qrymcbasesdecalculo.Close;
        dmcompensa.qrymcbasesdecalculo.Prepare;
        dmcompensa.qrymcbasesdecalculo.Params[0].Value := dmcompensa.qrymcdeclaracion2num_declaracion.value;
        dmcompensa.qrymcbasesdecalculo.Params[1].Value := dmcompensa.qrymcbasescod_grupo_etareo.value;
        dmcompensa.qrymcbasesdecalculo.Open;
        if (dmcompensa.qrymcbasesTIP_BENEFICIARIO.Value <> 'A') AND (dmcompensa.qrymcbasesdecalculo.RecordCount = 0) then
        begin
          dmcompensa.DataSource5.DataSet := dmcompensa.tblbasesdecalculo;
          dmcompensa.tblbasesdecalculo.Close;
          dmcompensa.tblbasesdecalculo.Open;
          dmcompensa.tblbasesdecalculo.Insert;
          dmcompensa.tblbasesdecalculonum_declaracion.Value := dmcompensa.qrymcdeclaracion2num_declaracion.Value;
          dmcompensa.tblbasesdecalculocod_grupo_eta.Value := dmcompensa.qrymcbasescod_grupo_etareo.Value;
          if (dmcompensa.qrymcbasestip_beneficiario.Value = 'C') and (dmcompensa.qrymcbasesupc.Value = 'C') and (dmcompensa.qrymcbasestip_upc.Value = 'N') then
          begin
            dmcompensa.tblbasesdecalculotot_cotizantes_mcn.Value := dmcompensa.qrymcbasesNUMERO.Value;
            dmcompensa.tblbasesdecalculotot_dias_cotznn.Value := dmcompensa.qrymcbasesdias.Value;
            dmcompensa.tblbasesdecalculotot_afiliados_mcn.Value := dmcompensa.tblbasesdecalculotot_afiliados_mcn.Value+dmcompensa.qrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.qrymcbasestip_beneficiario.Value = 'C') and (dmcompensa.qrymcbasesupc.Value = 'C') and (dmcompensa.qrymcbasestip_upc.Value = 'E') then
          begin
            dmcompensa.tblbasesdecalculotot_cotizantes_mce.Value := dmcompensa.qrymcbasesNUMERO.Value;
            dmcompensa.tblbasesdecalculotot_dias_cotize.Value := dmcompensa.qrymcbasesdias.Value;
            dmcompensa.tblbasesdecalculotot_afiliados_mce.Value := dmcompensa.tblbasesdecalculotot_afiliados_mce.Value+dmcompensa.qrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.qrymcbasestip_beneficiario.Value = 'C') and (dmcompensa.qrymcbasesupc.Value = 'P') and (dmcompensa.qrymcbasestip_upc.Value = 'N') then
          begin
            dmcompensa.tblbasesdecalculotot_cotizantes_mpn.Value := dmcompensa.qrymcbasesNUMERO.Value;;
            dmcompensa.tblbasesdecalculotot_dias_cotznn.Value := dmcompensa.qrymcbasesdias.Value;
            dmcompensa.tblbasesdecalculotot_afiliados_mpn.Value := dmcompensa.tblbasesdecalculotot_afiliados_mpn.Value+dmcompensa.qrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.qrymcbasestip_beneficiario.Value = 'C') and (dmcompensa.qrymcbasesupc.Value = 'P') and (dmcompensa.qrymcbasestip_upc.Value = 'E') then
          begin
            dmcompensa.tblbasesdecalculotot_cotizantes_mpe.Value := dmcompensa.qrymcbasesNUMERO.Value;
            dmcompensa.tblbasesdecalculotot_dias_cotize.Value := dmcompensa.qrymcbasesdias.Value;
            dmcompensa.tblbasesdecalculotot_afiliados_mpe.Value := dmcompensa.tblbasesdecalculotot_afiliados_mpe.Value+dmcompensa.qrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.qrymcbasestip_beneficiario.Value = 'B') and (dmcompensa.qrymcbasesupc.Value = 'C') and (dmcompensa.qrymcbasestip_upc.Value = 'N') then
          begin
            dmcompensa.tblbasesdecalculotot_beneficiarios_mcn.Value := dmcompensa.qrymcbasesNUMERO.Value;
            dmcompensa.tblbasesdecalculotot_dias_cotznn.Value := dmcompensa.qrymcbasesdias.Value;
            dmcompensa.tblbasesdecalculotot_afiliados_mcn.Value := dmcompensa.tblbasesdecalculotot_afiliados_mcn.Value+dmcompensa.qrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.qrymcbasestip_beneficiario.Value = 'B') and (dmcompensa.qrymcbasesupc.Value = 'C') and (dmcompensa.qrymcbasestip_upc.Value = 'E') then
          begin
            dmcompensa.tblbasesdecalculotot_beneficiarios_mce.Value := dmcompensa.qrymcbasesNUMERO.Value;
            dmcompensa.tblbasesdecalculotot_dias_cotize.Value := dmcompensa.qrymcbasesdias.Value;
            dmcompensa.tblbasesdecalculotot_afiliados_mce.Value := dmcompensa.tblbasesdecalculotot_afiliados_mce.Value+dmcompensa.qrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.qrymcbasestip_beneficiario.Value = 'B') and (dmcompensa.qrymcbasesupc.Value = 'P') and (dmcompensa.qrymcbasestip_upc.Value = 'N') then
          begin
            dmcompensa.tblbasesdecalculotot_beneficiarios_mpnl.Value := dmcompensa.qrymcbasesNUMERO.Value;
            dmcompensa.tblbasesdecalculotot_dias_cotznn.Value := dmcompensa.qrymcbasesdias.Value;
            dmcompensa.tblbasesdecalculotot_afiliados_mpn.Value := dmcompensa.tblbasesdecalculotot_afiliados_mpn.Value+dmcompensa.qrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.qrymcbasestip_beneficiario.Value = 'B') and (dmcompensa.qrymcbasesupc.Value = 'P') and (dmcompensa.qrymcbasestip_upc.Value = 'E') then
          begin
            dmcompensa.tblbasesdecalculotot_beneficiarios_mpe.Value := dmcompensa.qrymcbasesNUMERO.Value;
            dmcompensa.tblbasesdecalculotot_dias_cotize.Value := dmcompensa.qrymcbasesdias.Value;
            dmcompensa.tblbasesdecalculotot_afiliados_mpe.Value := dmcompensa.tblbasesdecalculotot_afiliados_mpe.Value+dmcompensa.qrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.qrymcbasestip_upc.Value = 'N') and (dmcompensa.qrymcbasestip_beneficiario.Value <> 'A') then
          begin
            dmcompensa.tblbasesdecalculotot_upc_dzn.Value := dmcompensa.tblbasesdecalculotot_upc_dzn.Value+ dmcompensa.qrymcbasesval_upc.value;
            dmcompensa.tblbasesdecalculotot_valor_upc.Value := dmcompensa.tblbasesdecalculotot_valor_upc.Value+ dmcompensa.qrymcbasesval_upc.value;
          end;
          if (dmcompensa.qrymcbasestip_upc.Value = 'E') and (dmcompensa.qrymcbasestip_beneficiario.Value <> 'A') then
          begin
            dmcompensa.tblbasesdecalculotot_upc_dze.Value := dmcompensa.tblbasesdecalculotot_upc_dze.Value+dmcompensa.qrymcbasesval_upc.value;
            dmcompensa.tblbasesdecalculotot_valor_upc.Value :=dmcompensa.tblbasesdecalculotot_valor_upc.Value + dmcompensa.qrymcbasesval_upc.value;
          end;
          dmcompensa.tblbasesdecalculo.Post;
          dmcompensa.tblbasesdecalculo.Close;
        end;
        if (dmcompensa.qrymcbasesTIP_BENEFICIARIO.Value <> 'A') AND (dmcompensa.qrymcbasesdecalculo.RecordCount > 0) then
        begin
          dmcompensa.qrymcbasesdecalculo.First;
          dmcompensa.qrymcbasesdecalculo.Edit;
          if (dmcompensa.qrymcbasestip_beneficiario.Value = 'C') and (dmcompensa.qrymcbasesupc.Value = 'C') and (dmcompensa.qrymcbasestip_upc.Value = 'N') then
          begin
            dmcompensa.qrymcbasesdecalculotot_cotizantes_mcn.Value := dmcompensa.qrymcbasesdecalculotot_cotizantes_mcn.Value+dmcompensa.qrymcbasesNUMERO.Value;
            dmcompensa.qrymcbasesdecalculotot_dias_cotznn.Value    := dmcompensa.qrymcbasesdecalculotot_dias_cotznn.Value+ dmcompensa.qrymcbasesdias.value;
            dmcompensa.qrymcbasesdecalculotot_afiliados_mcn.Value  := dmcompensa.qrymcbasesdecalculotot_afiliados_mcn.Value+ dmcompensa.qrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.qrymcbasestip_beneficiario.Value = 'C') and (dmcompensa.qrymcbasesupc.Value = 'C') and (dmcompensa.qrymcbasestip_upc.Value = 'E') then
          begin
            dmcompensa.qrymcbasesdecalculotot_cotizantes_mce.Value := dmcompensa.qrymcbasesdecalculotot_cotizantes_mce.Value+dmcompensa.qrymcbasesNUMERO.Value;
            dmcompensa.qrymcbasesdecalculotot_dias_cotize.Value    := dmcompensa.qrymcbasesdecalculotot_dias_cotize.Value+dmcompensa.qrymcbasesdias.Value;
            dmcompensa.qrymcbasesdecalculotot_afiliados_mce.Value  := dmcompensa.qrymcbasesdecalculotot_afiliados_mce.Value+dmcompensa.qrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.qrymcbasestip_beneficiario.Value = 'C') and (dmcompensa.qrymcbasesupc.Value = 'P') and (dmcompensa.qrymcbasestip_upc.Value = 'N') then
          begin
            dmcompensa.qrymcbasesdecalculotot_cotizantes_mpn.Value := dmcompensa.qrymcbasesdecalculotot_cotizantes_mpn.Value+dmcompensa.qrymcbasesNUMERO.Value;
            dmcompensa.qrymcbasesdecalculotot_dias_cotznn.Value    := dmcompensa.qrymcbasesdecalculotot_dias_cotznn.Value+dmcompensa.qrymcbasesdias.Value;
            dmcompensa.qrymcbasesdecalculotot_afiliados_mpn.Value  := dmcompensa.qrymcbasesdecalculotot_afiliados_mpn.Value+dmcompensa.qrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.qrymcbasestip_beneficiario.Value = 'C') and (dmcompensa.qrymcbasesupc.Value = 'P') and (dmcompensa.qrymcbasestip_upc.Value = 'E') then
          begin
            dmcompensa.qrymcbasesdecalculotot_cotizantes_mpe.Value := dmcompensa.qrymcbasesdecalculotot_cotizantes_mpe.Value+dmcompensa.qrymcbasesNUMERO.Value;
            dmcompensa.qrymcbasesdecalculotot_dias_cotize.Value    := dmcompensa.qrymcbasesdecalculotot_dias_cotize.Value+dmcompensa.qrymcbasesdias.Value;
            dmcompensa.qrymcbasesdecalculotot_afiliados_mpe.Value  := dmcompensa.qrymcbasesdecalculotot_afiliados_mpe.Value+dmcompensa.qrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.qrymcbasestip_beneficiario.Value = 'B') and (dmcompensa.qrymcbasesupc.Value = 'C') and (dmcompensa.qrymcbasestip_upc.Value = 'N') then
          begin
            dmcompensa.qrymcbasesdecalculotot_beneficiarios_mcn.Value := dmcompensa.qrymcbasesdecalculotot_beneficiarios_mcn.Value+dmcompensa.qrymcbasesNUMERO.Value;
            dmcompensa.qrymcbasesdecalculotot_dias_cotznn.Value       := dmcompensa.qrymcbasesdecalculotot_dias_cotznn.Value+dmcompensa.qrymcbasesdias.Value;
            dmcompensa.qrymcbasesdecalculotot_afiliados_mcn.Value     := dmcompensa.qrymcbasesdecalculotot_afiliados_mcn.Value+dmcompensa.qrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.qrymcbasestip_beneficiario.Value = 'B') and (dmcompensa.qrymcbasesupc.Value = 'C') and (dmcompensa.qrymcbasestip_upc.Value = 'E') then
          begin
            dmcompensa.qrymcbasesdecalculotot_beneficiarios_mce.Value := dmcompensa.qrymcbasesdecalculotot_beneficiarios_mce.Value+dmcompensa.qrymcbasesNUMERO.Value;
            dmcompensa.qrymcbasesdecalculotot_dias_cotize.Value       := dmcompensa.qrymcbasesdecalculotot_dias_cotize.Value+dmcompensa.qrymcbasesdias.Value;
            dmcompensa.qrymcbasesdecalculotot_afiliados_mce.Value     := dmcompensa.qrymcbasesdecalculotot_afiliados_mce.Value+dmcompensa.qrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.qrymcbasestip_beneficiario.Value = 'B') and (dmcompensa.qrymcbasesupc.Value = 'P') and (dmcompensa.qrymcbasestip_upc.Value = 'N') then
          begin
            dmcompensa.qrymcbasesdecalculotot_beneficiarios_mpnl.Value := dmcompensa.qrymcbasesdecalculotot_beneficiarios_mpnl.Value+dmcompensa.qrymcbasesNUMERO.Value;
            dmcompensa.qrymcbasesdecalculotot_dias_cotznn.Value        := dmcompensa.qrymcbasesdecalculotot_dias_cotznn.Value+dmcompensa.qrymcbasesdias.Value;
            dmcompensa.qrymcbasesdecalculotot_afiliados_mpn.Value      := dmcompensa.qrymcbasesdecalculotot_afiliados_mpn.Value+dmcompensa.qrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.qrymcbasestip_beneficiario.Value = 'B') and (dmcompensa.qrymcbasesupc.Value = 'P') and (dmcompensa.qrymcbasestip_upc.Value = 'E') then
          begin
            dmcompensa.qrymcbasesdecalculotot_beneficiarios_mpe.Value := dmcompensa.qrymcbasesdecalculotot_beneficiarios_mpe.Value+dmcompensa.qrymcbasesNUMERO.Value;
            dmcompensa.qrymcbasesdecalculotot_dias_cotize.Value       := dmcompensa.qrymcbasesdecalculotot_dias_cotize.Value+dmcompensa.qrymcbasesdias.Value;
            dmcompensa.qrymcbasesdecalculotot_afiliados_mpe.Value     := dmcompensa.qrymcbasesdecalculotot_afiliados_mpe.Value+dmcompensa.qrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.qrymcbasestip_upc.Value = 'N') and (dmcompensa.qrymcbasestip_beneficiario.Value <> 'A') then
          begin
            dmcompensa.qrymcbasesdecalculotot_upc_dzn.Value := dmcompensa.qrymcbasesdecalculotot_upc_dzn.Value+ dmcompensa.qrymcbasesval_upc.value;
            dmcompensa.qrymcbasesdecalculotot_valor_upc.Value := dmcompensa.qrymcbasesdecalculotot_valor_upc.Value+ dmcompensa.qrymcbasesval_upc.value;
          end;
          if (dmcompensa.qrymcbasestip_upc.Value = 'E') and (dmcompensa.qrymcbasestip_beneficiario.Value <> 'A') then
          begin
            dmcompensa.qrymcbasesdecalculotot_upc_dze.Value := dmcompensa.qrymcbasesdecalculotot_upc_dze.Value+dmcompensa.qrymcbasesval_upc.value;
            dmcompensa.qrymcbasesdecalculotot_valor_upc.Value :=dmcompensa.qrymcbasesdecalculotot_valor_upc.Value + dmcompensa.qrymcbasesval_upc.value;
          end;
          dmcompensa.qrymcbasesdecalculo.Post;
          dmcompensa.qrymcbasesdecalculo.Close;
        end;
        if (dmcompensa.qrymcbasestip_beneficiario.Value = 'A') then
        begin
          fecagre := '01/'+dmcompensa.qrymcdeclaracion2periodo_compensado.Value;
          dmcompensa.qrymcbasesdep.Close;
          dmcompensa.qrymcbasesdep.Prepare;
          dmcompensa.qrymcbasesdep.Params[0].Value :=dmcompensa.qrymcbasesnum_declaracion.Value;
          dmcompensa.qrymcbasesdep.Params[1].Value :=dmcompensa.qrymcbasescod_grupo_etareo.Value;
          dmcompensa.qrymcbasesdep.Open;
          if dmcompensa.qrymcbasesdep.RecordCount = 0 then
          begin
            dmcompensa.DataSource1.DataSet := dmcompensa.tblbasesdep;
            dmcompensa.tblbasesdep.Close;
            dmcompensa.tblbasesdep.Open;
            dmcompensa.tblbasesdep.Insert;
            dmcompensa.tblbasesdepnum_declaracion.Value := dmcompensa.qrymcbasesnum_declaracion.Value;
            dmcompensa.tblbasesdepcod_grupo_eta.Value := dmcompensa.qrymcbasescod_grupo_etareo.Value;
            dmcompensa.tblbasesdeptot_dependientes.Value := dmcompensa.qrymcbasesnumero.Value;
            dmcompensa.qrymcupczon.close;
            dmcompensa.qrymcupczon.Prepare;
            dmcompensa.qrymcupczon.Params[0].Value :=ano1;
            dmcompensa.qrymcupczon.open;
            with dmcompensa.qrymcupczon do
            begin
              dmcompensa.qrymcupczon.First;
              while not dmcompensa.qrymcupczon.Eof do
              begin
                if dmcompensa.qrymcupczoncod_grupo_eta.Value = dmcompensa.qrymcbasescod_grupo_etareo.Value then
                begin
                  upc := dmcompensa.qrymcupczonupc.value;
                  riesgo := dmcompensa.qrymcupczonriesgo.value;
                  est := dmcompensa.qrymcupczonval_estructura_cost.value;
                  upces := (upc*riesgo)+upc;
                  if dmcompensa.qrymcbasestip_upc.Value = 'N' then
                  begin
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 6 then
                    begin
                      dmcompensa.tblbasesdepval_upc_dependientes.Value:= redondea((((upc)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 5 then
                    begin
                      dmcompensa.tblbasesdepval_upc_dependientes.Value:= redondea((((upc)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 4 then
                    begin
                      dmcompensa.tblbasesdepval_upc_dependientes.Value:= redondea((((upc)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    begin
                      dmcompensa.tblbasesdepval_upc_dependientes.Value:= redondea(((upc*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end;
                    if (strtodate(fecagre) >= strtodate('01/03/2000')) then
                    begin
                      dmcompensa.tblbasesdepval_promocion.Value := redondea(((dmcompensa.qrymcupczonpyp.Value/12)/30)*dmcompensa.qrymcbasesdias.value);
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 6 then
                    begin
                      upcdep:= redondea((((upc)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 5 then
                    begin
                      upcdep:= redondea((((upc)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 4 then
                    begin
                      upcdep:= redondea((((upc)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    begin
                      upcdep:= redondea(((upc*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end;
                    promdep :=roundto(((dmcompensa.qrymcupczonpyp.Value/12)/30)*dmcompensa.qrymcbasesdias.value,0);
                    dmcompensa.tblbasesdepval_solidaridad.Value :=redondea(((upcdep+promdep)*dmcompensa.qrymcupczonsol.Value));
                    end;
                    if (strtodate(fecagre) < strtodate('01/03/2000')) then
                    begin
                      dmcompensa.tblbasesdepval_promocion.Value := 0;
                      dmcompensa.tblbasesdepval_solidaridad.Value :=0;
                    end;
                  end;
                  if dmcompensa.qrymcbasestip_upc.Value = 'E' then
                  begin
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 6 then
                    begin
                      dmcompensa.tblbasesdepval_upc_dependientes.Value:= redondea((((upces)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 5 then
                    begin
                      dmcompensa.tblbasesdepval_upc_dependientes.Value:= redondea((((upces)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 4 then
                    begin
                      dmcompensa.tblbasesdepval_upc_dependientes.Value:= redondea((((upces)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    begin
                      dmcompensa.tblbasesdepval_upc_dependientes.Value:= redondea(((upces*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end;
                    if (strtodate(fecagre) >= strtodate('01/03/2000')) then
                    begin
                      dmcompensa.tblbasesdepval_promocion.Value := redondea(((dmcompensa.qrymcupczonpyp.Value/12)/30)*dmcompensa.qrymcbasesdias.value);
                      upcdep :=redondea((((upces)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      promdep :=redondea(((dmcompensa.qrymcupczonpyp.Value/12)/30)*dmcompensa.qrymcbasesdias.value);
                      dmcompensa.tblbasesdepval_solidaridad.Value := redondea(((upcdep+promdep)*dmcompensa.qrymcupczonsol.Value));
                    end;
                    if (strtodate(fecagre) < strtodate('01/03/2000')) then
                    begin
                      dmcompensa.tblbasesdepval_promocion.Value := 0;
                      dmcompensa.tblbasesdepval_solidaridad.Value :=0;
                    end;
                  end;
                end;
                next;
              end;
            end;
            dmcompensa.tblbasesdep.Post;
            dmcompensa.tblbasesdep.close;
          end;
          if dmcompensa.qrymcbasesdep.RecordCount > 0 then
          begin
            dmcompensa.qrymcbasesdep.First;
            dmcompensa.qrymcbasesdep.Edit;
            dmcompensa.qrymcupczon.close;
            dmcompensa.qrymcupczon.Prepare;
            dmcompensa.qrymcupczon.Params[0].Value :=ano1;
            dmcompensa.qrymcupczon.open;
            with dmcompensa.qrymcupczon do
            begin
              dmcompensa.qrymcupczon.First;
              while not dmcompensa.qrymcupczon.Eof do
              begin
                if dmcompensa.qrymcupczoncod_grupo_eta.Value = dmcompensa.qrymcbasescod_grupo_etareo.Value then
                begin
                  upc :=  dmcompensa.qrymcupczonupc.value;
                  riesgo :=  dmcompensa.qrymcupczonriesgo.value;
                  est := dmcompensa.qrymcupczonval_estructura_cost.value;
                  upces := (upc*riesgo)+upc;
                  if dmcompensa.qrymcbasestip_upc.Value = 'N' then
                  begin
                    dmcompensa.qrymcbasesdeptot_dependientes.Value := dmcompensa.qrymcbasesdeptot_dependientes.Value+1;
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 6 then
                    begin
                      dmcompensa.qrymcbasesdepval_upc_dependientes.Value:= dmcompensa.qrymcbasesdepval_upc_dependientes.Value+redondea((((upc*1.85)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 5 then
                    begin
                      dmcompensa.qrymcbasesdepval_upc_dependientes.Value:= dmcompensa.qrymcbasesdepval_upc_dependientes.Value+redondea((((upc*2.02)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 4 then
                    begin
                      dmcompensa.qrymcbasesdepval_upc_dependientes.Value:= dmcompensa.qrymcbasesdepval_upc_dependientes.Value+redondea((((upc*3)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    begin
                      dmcompensa.qrymcbasesdepval_upc_dependientes.Value:= dmcompensa.qrymcbasesdepval_upc_dependientes.Value+redondea(((upc*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end;
                    if (strtodate(fecagre) >= strtodate('01/03/2000')) then
                    begin
                      dmcompensa.qrymcbasesdepval_promocion.Value := dmcompensa.qrymcbasesdepval_promocion.Value+redondea(((dmcompensa.qrymcupczonpyp.Value/12)/30)*dmcompensa.qrymcbasesdias.value);
                      if dmcompensa.qrymcbasescod_grupo_etareo.Value = 6 then
                      begin
                        upcdep:= dmcompensa.qrymcbasesdepval_upc_dependientes.Value+redondea((((upc*1.85)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      end
                      else
                      if dmcompensa.qrymcbasescod_grupo_etareo.Value = 5 then
                      begin
                        upcdep:= dmcompensa.qrymcbasesdepval_upc_dependientes.Value+redondea((((upc*2.02)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      end
                      else
                      if dmcompensa.qrymcbasescod_grupo_etareo.Value = 4 then
                      begin
                        upcdep:= dmcompensa.qrymcbasesdepval_upc_dependientes.Value+redondea((((upc*3)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      end
                      else
                      begin
                       upcdep:= dmcompensa.qrymcbasesdepval_upc_dependientes.Value+redondea(((upc*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      end;
                      promdep:=roundto(((dmcompensa.qrymcupczonpyp.Value/12)/30)*dmcompensa.qrymcbasesdias.value,0);
                      dmcompensa.qrymcbasesdepval_solidaridad.Value :=dmcompensa.qrymcbasesdepval_solidaridad.Value+redondea(((upcdep+promdep)*dmcompensa.qrymcupczonsol.Value));
                    end;
                  end;
                  if dmcompensa.qrymcbasestip_upc.Value = 'E' then
                  begin
                    dmcompensa.qrymcbasesdeptot_dependientes.Value := dmcompensa.qrymcbasesdeptot_dependientes.Value+1;
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 6 then
                    begin
                      dmcompensa.qrymcbasesdepval_upc_dependientes.Value:= dmcompensa.qrymcbasesdepval_upc_dependientes.Value+redondea((((upces*1.85)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 5 then
                    begin
                      dmcompensa.qrymcbasesdepval_upc_dependientes.Value:= dmcompensa.qrymcbasesdepval_upc_dependientes.Value+redondea((((upces*2.02)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 4 then
                    begin
                      dmcompensa.qrymcbasesdepval_upc_dependientes.Value:= dmcompensa.qrymcbasesdepval_upc_dependientes.Value+redondea((((upces*3)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    begin
                      dmcompensa.qrymcbasesdepval_upc_dependientes.Value:= dmcompensa.qrymcbasesdepval_upc_dependientes.Value+redondea(((upces*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end;
                    if (strtodate(fecagre) >= strtodate('01/03/2000')) then
                    begin
                      dmcompensa.qrymcbasesdepval_promocion.Value := dmcompensa.qrymcbasesdepval_promocion.Value+redondea(((dmcompensa.qrymcupczonpyp.Value/12)/30)*dmcompensa.qrymcbasesdias.value);
                      upcdep :=redondea(((upces*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      promdep := roundto(((dmcompensa.qrymcupczonpyp.Value/12)/30)*dmcompensa.qrymcbasesdias.value,0);
                      dmcompensa.qrymcbasesdepval_solidaridad.Value := dmcompensa.qrymcbasesdepval_solidaridad.Value+redondea(((upcdep+promdep)* dmcompensa.qrymcupczonsol.Value));
                    end;
                  end;
                end;
                next;
              end;
            end;
            dmcompensa.qrymcbasesdep.Post;
            dmcompensa.qrymcbasesdep.Close;
          end;
        end;
      dmcompensa.qrymcbases.Next;
      end;
    dmcompensa.qrymcdeclaracion2.Next;
    i:=i+1;
    edit2.Text := floattostr(i);
    frmreproceso.Refresh;
    sicomp := 'S';
    end;
  end;
  if sicomp = 'S' then
  begin
    fecha_dec := datetostr(datetimepicker1.Date);
    fecha_dec1 := fecha_dec;
    fecha_dec2 := fecha_dec;
    try
     dmcompensa.qrymcdeclaracion2.Close;
     dmcompensa.qrymcdeclaracion2.Prepare;
     dmcompensa.qrymcdeclaracion2.Params[0].Value :=datetimepicker1.Date;
     dmcompensa.qrymcdeclaracion2.Open;
     i:=0;
     edit4.Text := floattostr(dmcompensa.qrymcdeclaracion2.RecordCount);
     with dmcompensa.qrymcdeclaracion2 do
     begin
       dmcompensa.qrymcdeclaracion2.First;
       while not dmcompensa.qrymcdeclaracion2.Eof do
       begin
         ano := strtodate('01/01/'+copy(dmcompensa.qrymcdeclaracion2periodo_compensado.value,4,4));
         mes := strtodate('01/'+copy(dmcompensa.qrymcdeclaracion2periodo_compensado.value,1,7));
         ano2 := '01/01/'+copy(dmcompensa.qrymcdeclaracion2periodo_compensado.value,4,4);
         if copy(dmcompensa.qrymcdeclaracion2periodo_compensado.Value,1,2) = '02' then
         begin
           fecrecini := '01/'+dmcompensa.qrymcdeclaracion2periodo_compensado.Value;
           fecrecfin := '28/'+dmcompensa.qrymcdeclaracion2periodo_compensado.Value;
         end;
         if copy(dmcompensa.qrymcdeclaracion2periodo_compensado.Value,1,2) <> '02' then
         begin
           fecrecini := '01/'+dmcompensa.qrymcdeclaracion2periodo_compensado.Value;
           fecrecfin := '30/'+dmcompensa.qrymcdeclaracion2periodo_compensado.Value;
         end;
         dmcompensa.qrymcvalores.Close;
         dmcompensa.qrymcvalores.Prepare;
         dmcompensa.qrymcvalores.Params[0].Value := ano2;
         dmcompensa.qrymcvalores.Open;
         dmcompensa.qrymcvalores.first;
         cot_no_id := 0;
       //  dmcompensa.qrymcconplanillas.Close;
       //  dmcompensa.qrymcconplanillas.Prepare;
        // dmcompensa.qrymcconplanillas.Params[0].Value :=dmcompensa.qrymcdeclaracion2periodo_compensado.Value;
        // dmcompensa.qrymcconplanillas.Open;
        // dmcompensa.qrymcconplanillas.First;
        // cot_no_id := dmcompensa.qrymcconplanillas.RecordCount;
         dmcompensa.qrymcconplanillas2.Close;
         dmcompensa.qrymcconplanillas2.Prepare;
         dmcompensa.qrymcconplanillas2.Params[0].Value :=dmcompensa.qrymcdeclaracion2num_declaracion.value;
         dmcompensa.qrymcconplanillas2.Open;
         planillas := dmcompensa.qrymcconplanillas2.RecordCount;
         dmcompensa.qrymcafilcomp1.Close;
         dmcompensa.qrymcafilcomp1.Prepare;
         dmcompensa.qrymcafilcomp1.Params[0].Value :=dmcompensa.qrymcdeclaracion2num_declaracion.Value;
         dmcompensa.qrymcafilcomp1.Params[1].Value :=ano2;
         dmcompensa.qrymcafilcomp1.Open;
         upc_afi_agre := 0;
         tot_upc_dias_agre := 0;
         with dmcompensa.qrymcafilcomp1 do
         begin
           dmcompensa.qrymcafilcomp1.First;
           while not dmcompensa.qrymcafilcomp1.Eof do
           begin
             if dmcompensa.qrymcafilcomp1tip_beneficiario.Value = 'C' then
             begin
               if dmcompensa.qrymcafilcomp1porcentaje.Value = '8' then
               begin
                 num_tot_cot8 := num_tot_cot8 + 1;
                 vde8 := vde8 + dmcompensa.qrymcafilcomp1val_deduccion.Value;
                 vtc8 := vtc8 + dmcompensa.qrymcafilcomp1cotizacion.Value;
                 if dmcompensa.qrymcdeclaraciontipo_cierre.Value = 'D' then
                 begin
                   if dmcompensa.qrymcafilcomp1tip_deduccion.Value = 'LMA' then
                      vlm8 := vlm8 + dmcompensa.qrymcafilcomp1val_deduccion.Value;
                 end;
               end;
               if dmcompensa.qrymcafilcomp1porcentaje.Value = '12' then
               begin
                 vde12 := vde12 + dmcompensa.qrymcafilcomp1val_deduccion.Value;
                 vtc12 := vtc12 + dmcompensa.qrymcafilcomp1cotizacion.Value;
                 ibc12 := ibc12 +dmcompensa.qrymcafilcomp1SALARIO.Value;
                 if dmcompensa.qrymcdeclaraciontipo_cierre.Value = 'D' then
                 begin
                   if dmcompensa.qrymcafilcomp1tip_deduccion.Value = 'LMA' then
                      vlm12 := vlm12 + dmcompensa.qrymcafilcomp1val_deduccion.Value;
                 end;
               end;
               if dmcompensa.qrymcafilcomp1tip_deduccion.Value = 'INC' then
                  tot_inc_pag := tot_inc_pag + dmcompensa.qrymcafilcomp1val_deduccion.Value;
               if dmcompensa.qrymcafilcomp1tip_afiliado.Value = 'M' then
               begin
                 tot_mad_comp := tot_mad_comp + 1;
                 ibc_mad_comp := ibc_mad_comp + dmcompensa.qrymcafilcomp1salario.Value;
               end;
               if dmcompensa.qrymcafilcomp1tip_afiliado.Value = 'I' then
               begin
                 tot_afi_ind := tot_afi_ind + 1;
                 ibc_afi_ind := ibc_afi_ind + dmcompensa.qrymcafilcomp1salario.Value;
               end;
             end;
             dmcompensa.qrymcafilcomp1.Next;
           end;
         end;
//         ibc12 := Redondea((vtc12)/0.12);
         ibc8  := Redondea((vtc8)/0.12);
         tre12 := vtc12-vde12;
         tre8  := vtc8-vde8;
         vso12 := Redondea((ibc12 * dmcompensa.qrymcvalorespor_solidaridad_liquidacion.Value)/100);
         vso8  := Redondea((ibc8  * dmcompensa.qrymcvalorespor_solidaridad_liquidacion.Value)/100);
         vpp12 := Redondea((ibc12 * dmcompensa.qrymcvalorespor_pyp_liquidacion.Value)/100);
         vpp8  := Redondea((ibc8  * dmcompensa.qrymcvalorespor_pyp_liquidacion.Value)/100);
         pri12 := Redondea((ibc12 * dmcompensa.qrymcvalorespor_provision_inc.Value)/100);
         pri8  := Redondea((ibc8  * dmcompensa.qrymcvalorespor_provision_inc.Value)/100);
         cne12 := vtc12 - vso12 - vpp12 - pri12;
         cne8  := vtc8  - vso8  - vpp8  - pri8;
         dmcompensa.qrymcbasesdecalculo1.Close;
         dmcompensa.qrymcbasesdecalculo1.Prepare;
         dmcompensa.qrymcbasesdecalculo1.Params[0].Value :=dmcompensa.qrymcdeclaracion2num_declaracion.Value;
         dmcompensa.qrymcbasesdecalculo1.Open;
         vru12 := 0;
         dmcompensa.qrymcbasesdecalculo1.First;
         while not dmcompensa.qrymcbasesdecalculo1.Eof do
         begin
           vru12 := vru12 + dmcompensa.qrymcbasesdecalculo1tot_valor_upc.Value;
           diasze := diasze + dmcompensa.qrymcbasesdecalculo1tot_dias_cotize.Value;
           diaszn := diaszn + dmcompensa.qrymcbasesdecalculo1tot_dias_cotznn.Value;
           dmcompensa.qrymcbasesdecalculo1.Next;
         end;
         vpc12 := cne12 - vlm12 - vru12;
         tsu12 := vpc12;
         val_prom := vpp12 + vpp8;
         val_rec_pyp := redondea((diasze + diaszn) * (dmcompensa.qrymcvalorespyp.Value / 360));
         sal_com_pro := val_prom - val_rec_pyp;
         dmcompensa.qrymcbasesdep2.Close;
         dmcompensa.qrymcbasesdep2.Prepare;
         dmcompensa.qrymcbasesdep2.Params[0].Value :=dmcompensa.qrymcdeclaracion2num_declaracion.Value;
         dmcompensa.qrymcbasesdep2.Open;
         with dmcompensa.qrymcbasesdep2 do
         begin
           dmcompensa.qrymcbasesdep2.First;
           while not dmcompensa.qrymcbasesdep2.Eof do
           begin
             tot_afi_agre := tot_afi_agre + dmcompensa.qrymcbasesdep2TOT_DEPENDIENTES.Value;
             val_soli := val_soli + dmcompensa.qrymcbasesdep2val_solidaridad.Value;
             upc_afi_agre := upc_afi_agre+ dmcompensa.qrymcbasesdep2VAL_UPC_DEPENDIENTES.Value;
             next;
           end;
         end;
         val_cons_sol  := val_soli + vso12 + vso8;
         val_cons_pro  := sal_com_pro;
         val_cons_comp := roundto(vpc12+vpc8,3);
         fec_cons_sol  := datetimepicker1.Date;
         fec_cons_pro  := datetimepicker1.Date;
         fec_cons_comp := datetimepicker1.Date;
         if dmcompensa.qrymcdeclaracion2tipo_cierre.Value = 'D' then
         begin
           dmcompensa.qrymcafiactivos.Close;
           dmcompensa.qrymcafiactivos.Prepare;
           dmcompensa.qrymcafiactivos.Params[0].Value :=mes;
           dmcompensa.qrymcafiactivos.Open;
           dmcompensa.qrymcafiactivos.First;
           while not dmcompensa.qrymcafiactivos.Eof do
           begin
             if dmcompensa.qrymcafiactivoscod_modalidad_tra.Value = 'M' then
             begin
               tot_mad_com := tot_mad_com + 1;
               dmcompensa.qrymcafiemp.Close;
               dmcompensa.qrymcafiemp.Prepare;
               dmcompensa.qrymcafiemp.Params[0].Value := dmcompensa.qrymcafiactivostip_documento.Value;
               dmcompensa.qrymcafiemp.Params[1].Value := dmcompensa.qrymcafiactivosnum_documento.Value;
               dmcompensa.qrymcafiemp.Params[2].Value := strtodate(fecrecfin);
               dmcompensa.qrymcafiemp.Params[3].Value := strtodate(fecrecini);
               dmcompensa.qrymcafiemp.Open;
               dmcompensa.qrymcafiemp.first;
               ibc_mad_com := dmcompensa.qrymcafiempval_sueldo_afil.Value;
               dmcompensa.qrymcafiemp.Close;
             end;
             activos := activos + 1;
             dmcompensa.qrymcafiactivos.Next;
           end;
         end;
         dmcompensa.DataSource5.DataSet := dmcompensa.tblliquidacion;
         dmcompensa.tblliquidacion.Close;
         dmcompensa.tblliquidacion.Open;
         dmcompensa.tblliquidacion.Insert;
         dmcompensa.tblliquidacionnum_declaracion.Value :=  dmcompensa.qrymcdeclaracion2num_declaracion.Value;
         dmcompensa.tblliquidacioning_salbase_cotiz12.Value := ibc12;
         dmcompensa.tblliquidacioning_salbase_cotiz8.Value := ibc8;
         dmcompensa.tblliquidacionval_total_reca12.Value := tre12;
         dmcompensa.tblliquidacionval_total_reca8.Value := tre8;
         dmcompensa.tblliquidacionval_deducido_aut12.Value := vde12;
         dmcompensa.tblliquidacionval_deducido_aut8.Value := vde8;
         dmcompensa.tblliquidacionval_total_cotiz12.Value := vtc12;
         dmcompensa.tblliquidacionval_total_cotiz8.Value := vtc8;
         dmcompensa.tblliquidacionval_solidaridad_12.Value := vso12;
         dmcompensa.tblliquidacionval_solidaridad_8.Value := vso8;
         dmcompensa.tblliquidacionval_pyp12.Value := vpp12;
         dmcompensa.tblliquidacionval_pyp8.Value := vpp8;
         dmcompensa.tblliquidacionpro_incapacidades12.Value := pri12;
         dmcompensa.tblliquidacionpro_incapacidades8.Value := pri8;
         dmcompensa.tblliquidacionval_cotizacion_net12.Value := cne12;
         dmcompensa.tblliquidacionval_cotizacion_net8.Value := cne8;
         dmcompensa.tblliquidacionval_lincencias_mat12.Value := vlm12;
         dmcompensa.tblliquidacionval_licencias_mat8.Value := vlm8;
         dmcompensa.tblliquidacionval_reconocer_upc12.Value := vru12;
         dmcompensa.tblliquidacionval_reconocer_upc8.Value := vru8;
         dmcompensa.tblliquidacionval_pagcobrar_fsg12.Value := vpc12;
         dmcompensa.tblliquidacionval_pagcobrar_fsg8.Value := vpc8;
         dmcompensa.tblliquidaciontot_subcuenta_comp12.Value := tsu12;
         dmcompensa.tblliquidaciontot_subcuenta_comp8.Value := tsu8;
         dmcompensa.tblliquidacionval_promocion.Value := val_prom;
         dmcompensa.tblliquidacionrec_promocion.Value := val_rec_pyp;
         dmcompensa.tblliquidacionsal_compensar_prom.Value := sal_com_pro;
         dmcompensa.tblliquidacionfec_consignacion_solid.Value := fec_cons_sol;
         dmcompensa.tblliquidacionval_consignacion_solid.Value := val_cons_sol;
         dmcompensa.tblliquidacionfec_consignacion_pro.Value := fec_cons_pro;
         dmcompensa.tblliquidacionval_consignacion_promocion.Value := val_cons_pro;
         dmcompensa.tblliquidacionval_consignado_comp.Value := val_cons_comp;
         dmcompensa.tblliquidacionnum_autoliquidaciones.Value := planillas;
         dmcompensa.tblliquidacionval_pago_incap.Value := tot_inc_pag;
         dmcompensa.tblliquidaciontot_cotizaciones_noident.Value := cot_no_id;
         dmcompensa.tblliquidacionnum_tot_afil.Value := activos;
         dmcompensa.tblliquidacionnum_total_cotiz8.Value := num_total_cotiz8;
         dmcompensa.tblliquidaciontot_afiliados_ind.Value := tot_afi_ind;
         dmcompensa.tblliquidacionibc_afiliados_ind.Value := ibc_afi_ind;
         dmcompensa.tblliquidaciontot_madres_comu.Value := tot_mad_com;
         dmcompensa.tblliquidacionibc_madres_comu.Value := ibc_mad_com;
         dmcompensa.tblliquidaciontot_madrescomu_comp.Value := tot_mad_comp;
         dmcompensa.tblliquidacionibc_madrescomu_comp.Value := ibc_mad_comp;
         dmcompensa.tblliquidaciontot_miembros_adicdep.Value := tot_afi_agre;
         dmcompensa.tblliquidacionrec_miembros_adicdep.Value :=upc_afi_agre;
         dmcompensa.tblliquidaciontot_incapacidades_pag.Value := tot_inc_pag;
         if dmcompensa.qrymcdeclaracion2tipo_cierre.Value = 'D' then
         begin
           dmcompensa.tblliquidacionval_recaudo_brut.Value := 0;
           dmcompensa.tblliquidacionval_licenciaas_pag.Value := vlm8 + vlm12;
           dmcompensa.tblliquidacionval_aportes_neto.Value := cne12+cne8;
           dmcompensa.tblliquidacionrec_acumulado_per_comp.Value := tre12+tre8;
         end;
         if dmcompensa.qrymcdeclaracion2tipo_cierre.Value <>'D' then
         begin
           dmcompensa.tblliquidacionval_recaudo_brut.Value := 0;
           dmcompensa.tblliquidacionval_licenciaas_pag.Value := 0;
           dmcompensa.tblliquidacionval_aportes_neto.Value := 0;
           dmcompensa.tblliquidacionrec_acumulado_per_comp.Value := 0;
         end;
         dmcompensa.tblliquidacion.Post;
         dmcompensa.tblliquidacion.Close;
         cot_no_id := 0;
         num_tot_cot8 := 0;
         ibc8 := 0;
         tre8 := 0;
         vde8 := 0;
         vtc8 := 0;
         vlm8 := 0;
         ibc12 := 0;
         tre12 := 0;
         vde12 := 0;
         vtc12 := 0;
         vlm12 := 0;
         tot_inc_pag := 0;
         tot_mad_comp := 0;
         ibc_mad_comp := 0;
         tot_afi_ind := 0;
         ibc_afi_ind := 0;
         tot_afi_agre := 0;
         vso12 := 0;
         vso8 := 0;
         vpp12 := 0;
         vpp8 := 0;
         pri12 := 0;
         pri8 := 0;
         cne12 := 0;
         cne8 := 0;
         vru12 := 0;
         diasze := 0;
         diaszn := 0;
         vpc12 := 0;
         tsu12 := 0;
         val_prom := 0;
         val_rec_pyp := 0;
         sal_com_pro := 0;
         val_soli := 0;
         val_cons_sol := 0;
         val_cons_pro := 0;
         val_cons_comp := 0;
         tot_mad_com := 0;
         ibc_mad_com := 0;
         activos := 0;
         upc_afi_agre := 0;
         tot_upc_dias_agre := 0;
         tot_afi_agre := 0;
         dmcompensa.qrymcvalores.Close;
         dmcompensa.qrymcestcos.Close;
         dmcompensa.qrymcbasesdecalculo.Close;
         dmcompensa.qrymcbasesdep.Close;
         dmcompensa.qrymcafiactivos.Close;
         dmcompensa.qrymcafiemp.Close;
         dmcompensa.tblliquidacion.Close;
         dmcompensa.qrymcdeclaracion2.Next;
         sicomp := 'S';
         i:=i+1;
         edit3.Text := floattostr(i);
         frmreproceso.Refresh;
       end;
     end;
     except
     dmcompensa.Database1.Rollback;
    end;
    showmessage('Felicitaciones ! Ha Finalizado del Proceso de Re-Compensacion');
    frmREPROCESO.Close;
  end;
end;

end.
