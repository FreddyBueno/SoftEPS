unit ucierremc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Gauges, ComCtrls, Buttons, Mask, ExtCtrls, Math, Dateutils;

type
  Tfrmcierremc = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    RadioGroup1: TRadioGroup;
    MaskEdit2: TMaskEdit;
    BitBtn1: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Gauge1: TGauge;
    Gauge2: TGauge;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure MaskEdit2Exit(Sender: TObject);
    procedure DateTimePicker1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcierremc: Tfrmcierremc;

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


procedure LiberarMemoria;
begin
  if Win32Platform = VER_PLATFORM_WIN32_NT then
    SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);
end;


procedure Tfrmcierremc.MaskEdit2Exit(Sender: TObject);
var periodo : real;
    t : string;
begin
  try
    t := copy(maskedit2.Text,1,2);
    if t = '' then
       t:='15';
    periodo := strtofloat(t);
    if (periodo > 12) or (periodo = 0) then
    begin
      showmessage('Error en el Periodo de Compensacion');
      maskedit2.SetFocus;
    end
  except
    on e:EDBEditerror do
    begin
      e.message :='Error en el Periodo De Compensacion';
      maskedit2.SetFocus;
      raise;
    end;
    on e:econverterror do
    begin
      e.message :='Error en el Periodo De Compensacion';
      maskedit2.SetFocus;
      raise;

    end;
  end;
end;

procedure Tfrmcierremc.DateTimePicker1Exit(Sender: TObject);
begin
  if datetimepicker2.Date > datetimepicker1.Date then
  begin
     showmessage('La Fecha de Iniciacion Digitacion, No Puede ser Mayor que la Final');
     datetimepicker1.SetFocus;
  end;
end;

procedure Tfrmcierremc.BitBtn1Click(Sender: TObject);
var
  outputfile : textfile;
  fechacomp,fec_consignacion : tdatetime;
  num_declara : real;
  per_compensado : string;
  edad : real;
  sicomp : string;
  ano : tdatetime;
  ano1 : string;
  ii : integer;
  i : integer;
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
  fecha_dec : string;
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
  control : real;
  tip_declaracion : string;
  modi : real;
  hora1, hora2, hora3 : tdatetime;
  decini, decfin :string;
begin
  liberarmemoria;
  I := 0;
  control := 0;
  gauge2.MinValue := 0;
  gauge2.MaxValue := 3;
  gauge2.Progress := 0;
  if datetimepicker2.Date > datetimepicker1.Date then
     showmessage('La Fecha de Iniciacion Digitacion, No Puede ser Mayor que la Final');
  datetimepicker1.SetFocus;
  if (messagedlg('Esta seguro(a) de iniciar proceso de cierre',mtconfirmation,[mbyes,mbno],0)=mryes) and (datetimepicker2.Date <= datetimepicker1.Date) then
  begin
    hora1 := time();
    dmcompensa.mcqrymccierres.close;
    dmcompensa.mcqrymccierres.Prepare;
    dmcompensa.mcqrymccierres.Params[0].Value :=floattostr(radiogroup1.ItemIndex);
    dmcompensa.mcqrymccierres.Params[1].Value :=maskedit2.Text;
    dmcompensa.mcqrymccierres.open;
    sicomp := 'N';
    if dmcompensa.mcqrymccierres.RecordCount = 0 then
    begin
      fechainidig := datetostr(datetimepicker2.Date);
      fechainidig1 := fechainidig;
      fechafindig := datetostr(datetimepicker1.Date);
      fechafindig1 := fechafindig;
      fecha_dec := datetostr(datetimepicker1.Date);
      fecha_dec1 := fecha_dec;
      fecha_dec2 := fecha_dec;
      dmcompensa.DataSource1.DataSet := dmcompensa.mctblcierres;
      dmcompensa.mctblcierres.Open;
      dmcompensa.mctblcierres.Insert;
      dmcompensa.mctblcierrestip_cierre.Value := inttostr(radiogroup1.ItemIndex);
      dmcompensa.mctblcierresper_compensacion.value :=maskedit2.Text;
      dmcompensa.mctblcierresfec_digitacion.Value := strtodate(fecha_dec2);
      dmcompensa.mctblcierres.Post;
      dmcompensa.mctblcierres.Close;
      dmcompensa.mcqrymcpladet.Close;
      dmcompensa.mcqrymcpladet.Prepare;
      dmcompensa.mcqrymcpladet.Params[0].Value := maskedit2.Text;
      dmcompensa.mcqrymcpladet.Params[1].Value :=datetimepicker2.Date;
      dmcompensa.mcqrymcpladet.Params[2].Value :=datetimepicker1.Date;
      dmcompensa.mcqrymcpladet.open;
      with dmcompensa.mcqrymcpladet do
      begin
        if dmcompensa.mcqrymcpladet.RecordCount > 0 then
        begin
          dmcompensa.mcqrymcpladet.First;
          i := 0;
          gauge1.MinValue := 0;
          gauge1.MaxValue := dmcompensa.mcqrymcpladet.RecordCount;
          gauge1.Progress := gauge1.Progress + 1;
          while not dmcompensa.mcqrymcpladet.Eof do
          begin
            if copy(dmcompensa.mcqrymcpladetper_cotizacion.Value,1,2) = '02' then
            begin
              fecrecini := '01/'+dmcompensa.mcqrymcpladetper_cotizacion.Value;
              fecrecfin := '28/'+dmcompensa.mcqrymcpladetper_cotizacion.Value;
            end;
            if copy(dmcompensa.mcqrymcpladetper_cotizacion.Value,1,2) <> '02' then
            begin
              fecrecini := '01/'+dmcompensa.mcqrymcpladetper_cotizacion.Value;
              fecrecfin := '30/'+dmcompensa.mcqrymcpladetper_cotizacion.Value;
            end;
            if dmcompensa.mcqrymcpladetfec_inclusion_nov.value <= strtodate(fecrecfin) then
            begin
              dmcompensa.mcqrymcyacom.close;
              dmcompensa.mcqrymcyacom.Prepare;
              dmcompensa.mcqrymcyacom.Params[0].Value := dmcompensa.mcqrymcpladetNUM_DOCUMENTO_BEN.Value;
              dmcompensa.mcqrymcyacom.Params[1].Value := dmcompensa.mcqrymcpladetNUM_PLANILLA.Value;
              dmcompensa.mcqrymcyacom.Open;
              if dmcompensa.mcqrymcyacom.RecordCount = 0 then
              begin
                per_cotizacion := dmcompensa.mcqrymcpladetPER_COTIZACION.Value;
                tip_declaracion := dmcompensa.mcqrymcpladetTIP_DECLARACION.Value;
                ano := strtodate('01/01/'+copy(per_cotizacion,4,4));
                ano1 := '01/01/'+copy(per_cotizacion,4,4);
                fecrec := '01/'+per_cotizacion;
                frmcierremc.Refresh;
                per_compensado := per_cotizacion;
                fec_consignacion:=dmcompensa.mcqrymcpladetfec_pago.Value;
                dmcompensa.mcqrymcdeclaracion.Close;
                dmcompensa.mcqrymcdeclaracion.Prepare;
                dmcompensa.mcqrymcdeclaracion.Params[0].Value :=per_compensado;
                dmcompensa.mcqrymcdeclaracion.Params[1].Value :=datetimepicker1.Date;
                dmcompensa.mcqrymcdeclaracion.Open;
                if dmcompensa.mcqrymcdeclaracion.RecordCount > 0 then
                begin
                  dmcompensa.mcqrymcdeclaracion.first;
                  num_declara := strtoint(floattostr(dmcompensa.mcqrymcdeclaracionnum_declaracion.Value));
                end;
                if dmcompensa.mcqrymcdeclaracion.RecordCount = 0 then
                begin
                  dmcompensa.mcqrymcdeclaracion1.Close;
                  dmcompensa.mcqrymcdeclaracion1.Prepare;
                  dmcompensa.mcqrymcdeclaracion1.Open;
                  if dmcompensa.mcqrymcdeclaracion1.RecordCount > 0 then
                  begin
                    dmcompensa.mcqrymcdeclaracion1.Last;
                    num_declara := dmcompensa.mcqrymcdeclaracion1num_declaracion.value;
                    num_declara := num_declara+1;
                  end
                  else
                  begin
                    num_declara := 1;
                  end;
                  dmcompensa.DataSource1.DataSet := dmcompensa.mctbldeclaraciones;
                  dmcompensa.mctbldeclaraciones.Open;
                  dmcompensa.mctbldeclaraciones.Insert;
                  dmcompensa.mctbldeclaracionesnum_declaracion.Value := num_declara;
                  dmcompensa.mctbldeclaracionescot_tipo_decla.Value := radiogroup1.ItemIndex;
                  dmcompensa.mctbldeclaracionesperiodo_compensado.value := per_compensado;
                  dmcompensa.mctbldeclaracionesfecha_declaracion.Value := strtodate(fecha_dec2);
                  if tip_declaracion = 'D' then
                  begin
                    dmcompensa.mctbldeclaracionestipo_cierre.Value := 'D';
                  end;
                  if tip_declaracion = 'A' then
                  begin
                    dmcompensa.mctbldeclaracionestipo_cierre.Value := 'A';
                  end;
                  dmcompensa.mctbldeclaraciones.Post;
                  dmcompensa.mctbldeclaraciones.Close;
                  dmcompensa.mcqrymcdeclaracion.Close;
                  dmcompensa.mcqrymcdeclaracion1.Close;
                end;
              end
              else
              begin
                num_declara := dmcompensa.mcqrymcyacomNUM_DECLARACION.Value;
                per_compensado := dmcompensa.mcqrymcpladetPER_COTIZACION.Value;
              end;
            end;
            if dmcompensa.mcqrymcpladetfec_inclusion_nov.value <= strtodate(fecrecfin) then
            begin
              sicomp:='X';
              fechacomp := strtodate('01/'+copy(per_compensado,1,2)+'/'+copy(per_compensado,4,4));
              edad := INT(YearSpan(dmcompensa.mcqrymcpladetfec_nacimiento.Value,fechacomp));
              dmcompensa.qrymcgrpeta.Close;
              dmcompensa.qrymcgrpeta.Prepare;
              dmcompensa.qrymcgrpeta.Params[0].Value :=edad;
              dmcompensa.qrymcgrpeta.Params[1].Value :=edad;
              dmcompensa.qrymcgrpeta.Params[2].Value :=dmcompensa.mcqrymcpladetcod_sexo.Value;
              dmcompensa.qrymcgrpeta.Open;
              dmcompensa.qrymcgrpeta.first;
              if dmcompensa.qrymcgrpeta.RecordCount = 2 then
                 dmcompensa.qrymcgrpeta.Next;
              dmcompensa.mcqrymcidduplica.Close;
              dmcompensa.mcqrymcidduplica.Prepare;
              dmcompensa.mcqrymcidduplica.Params[0].Value :=dmcompensa.mcqrymcpladettip_documento_ben.Value;
              dmcompensa.mcqrymcidduplica.Params[1].Value :=dmcompensa.mcqrymcpladetnum_documento_ben.Value;
              dmcompensa.mcqrymcidduplica.Params[2].Value :=num_declara;
              dmcompensa.mcqrymcidduplica.Open;
              dmcompensa.mcqrymcidduplica.First;
              if dmcompensa.mcqrymcidduplica.RecordCount > 0 then
              begin
                if (dmcompensa.mcqrymcidduplicaemp_tipo_doc.Value <> dmcompensa.mcqrymcpladetemp_tipo_doc.Value) or (dmcompensa.mcqrymcidduplicaemp_numero_doc.Value <> dmcompensa.mcqrymcpladetemp_numero_doc.Value) then
                begin
                  dmcompensa.mcqrymcidduplica.Edit;
                  dmcompensa.mcqrymcidduplicacotizacion.Value := dmcompensa.mcqrymcidduplicacotizacion.Value + dmcompensa.mcqrymcpladetcot_obligatoria.Value;
                  dmcompensa.mcqrymcidduplicasalario.Value := Redondea(dmcompensa.mcqrymcidduplicacotizacion.Value + dmcompensa.mcqrymcpladetcot_obligatoria.Value)/0.12;
                  if strtofloat(dmcompensa.mcqrymcidduplicadias.Value) < strtofloat(dmcompensa.mcqrymcpladetdia_cotizados.Value) then
                  begin
                    dmcompensa.mcqrymcidduplicadias.Value := dmcompensa.mcqrymcpladetdia_cotizados.Value;
                    dmcompensa.mcqrymcidduplicaemp_numero_doc.Value := dmcompensa.mcqrymcpladetemp_numero_doc.Value;
                    dmcompensa.mcqrymcidduplicaemp_tipo_doc.Value := dmcompensa.mcqrymcpladetemp_tipo_doc.Value;
                  end;
                  dmcompensa.mcqrymcidduplica.Post;
                end;
                dmcompensa.qrymcdnumpla.close;
                dmcompensa.qrymcdnumpla.Prepare;
                dmcompensa.qrymcdnumpla.Params[0].Value :=dmcompensa.mcqrymcpladetnum_planilla.Value;
                dmcompensa.qrymcdnumpla.Params[1].Value :=dmcompensa.mcqrymcpladetafi_tipo_doc.Value;
                dmcompensa.qrymcdnumpla.Params[2].Value :=dmcompensa.mcqrymcpladetafi_numero_doc.Value;
                dmcompensa.qrymcdnumpla.Open;
                dmcompensa.qrymcdnumpla.First;
                dmcompensa.qrymcdnumpla.edit;
                dmcompensa.qrymcdnumpladet_estado.value := 'COM';
                dmcompensa.qrymcdnumplanum_declaracion.Value := num_declara;
                dmcompensa.qrymcdnumpla.Post;
                dmcompensa.qrymcdnumpla.Close;
              end;
              if dmcompensa.mcqrymcidduplica.RecordCount = 0 then
              begin
                dmcompensa.mcqrycompensa.Close;
                dmcompensa.mcqrycompensa.Open;
                dmcompensa.mcqrycompensa.Insert;
                dmcompensa.mcqrycompensanum_declaracion.Value :=  strtoint(floattostr(num_declara));
                dmcompensa.mcqrycompensaafi_numero_doc.Value := dmcompensa.mcqrymcpladetnum_documento_ben.Value;
                dmcompensa.mcqrycompensaafi_tipo_doc.Value := dmcompensa.mcqrymcpladettip_documento_ben.Value;
                dmcompensa.mcqrycompensacod_grupo_etareo.Value := dmcompensa.qrymcgrpetacod_grupo_eta.Value;
                if dmcompensa.mcqrymcpladetCOD_TIPO_AFIL.Value <> 'A' then
                   dmcompensa.mcqrycompensacod_parentesco.Value := dmcompensa.mcqrymcpladetcod_parentesco.Value
                else
                   dmcompensa.mcqrycompensacod_parentesco.Value := 'A';
                dmcompensa.mcqrycompensatip_upc.Value := 'N';
                if dmcompensa.mcqrymcpladetpor_alto_rie.Value = 'S' then
                   dmcompensa.mcqrycompensatip_upc.Value := 'E';
                if dmcompensa.mcqrymcpladetpor_alto_rie.Value = 'N' then
                   dmcompensa.mcqrycompensatip_upc.Value := 'N';
                if dmcompensa.mcqrymcpladetdia_cotizados.Value <> '30' then
                begin
                  dmcompensa.mcqrycompensatip_pago.Value := 'P';
                end;
                if dmcompensa.mcqrymcpladetdia_cotizados.Value = '30' then
                begin
                  dmcompensa.mcqrycompensatip_pago.Value := 'C';
                end;
                dmcompensa.mcqrycompensatip_beneficiario.Value := dmcompensa.mcqrymcpladetcod_tipo_afil.Value;
                dmcompensa.mcqrycompensadias.Value := dmcompensa.mcqrymcpladetdia_cotizados.Value;
                dmcompensa.mcqrycompensasalario.Value := 0;
                if dmcompensa.mcqrymcpladetcod_tipo_afil.Value = 'C' then
                   dmcompensa.mcqrycompensasalario.Value := dmcompensa.mcqrymcpladeting_base_cot.Value;
                if dmcompensa.mcqrymcpladetnov_sln.Value = 'X' then
                   dmcompensa.mcqrycompensaporcentaje.Value := '8'
                else
                   dmcompensa.mcqrycompensaporcentaje.Value := '12';
                dmcompensa.mcqrycompensacotizacion.Value := 0;
                if dmcompensa.mcqrymcpladetcod_tipo_afil.Value = 'C' then
                   dmcompensa.mcqrycompensacotizacion.Value := dmcompensa.mcqrymcpladetcot_obligatoria.Value;
                dmcompensa.mcqrycompensaval_deduccion.Value := 0;
                dmcompensa.mcqrycompensatip_deduccion.Value := 'NO';
                dmcompensa.mcqrycompensanum_planilla.Value := dmcompensa.mcqrymcpladetnum_planilla.Value;
                if (dmcompensa.mcqrymcpladetnov_lma.Value = 'X') and (dmcompensa.mcqrymcpladetcod_tipo_afil.Value = 'C') then
                begin
                  dmcompensa.mcqrycompensaval_deduccion.Value := dmcompensa.mcqrymcpladetval_licencia_mat.Value;
                  dmcompensa.mcqrycompensatip_deduccion.Value := 'LMA';
                end;
                if (dmcompensa.mcqrymcpladetnov_ige.Value = 'X') and (dmcompensa.mcqrymcpladetcod_tipo_afil.Value = 'C') then
                begin
                  dmcompensa.mcqrycompensaval_deduccion.Value := dmcompensa.mcqrymcpladetval_incapacidad_egr.Value;
                  dmcompensa.mcqrycompensatip_deduccion.Value := 'INC';
                end;
                dmcompensa.mcqrycompensavalor_upc.Value := 0;
                if dmcompensa.mcqrymcpladetcod_tipo_afil.Value = 'A' then
                   dmcompensa.mcqrycompensavalor_upc.Value := dmcompensa.mcqrymcpladetval_upc_adi.Value;
                if dmcompensa.mcqrymcpladetcod_tipo_afil.Value = 'C' then
                   dmcompensa.mcqrycompensatip_afiliado.Value := dmcompensa.mcqrymcpladetcod_modalidad_tra.Value
                else
                   dmcompensa.mcqrycompensatip_afiliado.Value := 'B';
                dmcompensa.mcqrycompensafec_consignacion.Value := fec_consignacion;
                dmcompensa.mcqrycompensatip_documento_cot.Value := dmcompensa.mcqrymcpladetafi_tipo_doc.Value;
                dmcompensa.mcqrycompensanum_documento_cot.Value := dmcompensa.mcqrymcpladetafi_numero_doc.Value;
                dmcompensa.mcqrycompensaemp_tipo_doc.Value := dmcompensa.mcqrymcpladetemp_tipo_doc.Value;
                dmcompensa.mcqrycompensaemp_numero_doc.Value := dmcompensa.mcqrymcpladetemp_numero_doc.Value;
                ano1 :='01/01/'+copy(per_compensado,4,4);
                dmcompensa.qrymcvalores.Close;
                dmcompensa.qrymcvalores.Prepare;
                dmcompensa.qrymcvalores.Params[0].Value := ano1;
                dmcompensa.qrymcvalores.Open;
                dmcompensa.qrymcvalores.first;
                dmcompensa.qrymcestcos.Close;
                dmcompensa.qrymcestcos.Prepare;
                dmcompensa.qrymcestcos.Params[0].Value :=ano1;
                dmcompensa.qrymcestcos.Params[1].Value :=dmcompensa.qrymcgrpetacod_grupo_eta.Value;
                dmcompensa.qrymcestcos.Open;
                dmcompensa.qrymcestcos.first;
                if (dmcompensa.mcqrymcpladetpor_alto_rie.Value = 'N') and (dmcompensa.mcqrymcpladetCOD_TIPO_AFIL.Value <> 'A') then
                begin
                  dmcompensa.mcqrycompensaval_upc.Value :=Redondea(dmcompensa.qrymcvaloresval_upc_dia_normal.Value * dmcompensa.qrymcestcosval_estructura_cost.Value * strtofloat(dmcompensa.mcqrymcpladetdia_cotizados.Value));
                end;
                if (dmcompensa.mcqrymcpladetpor_alto_rie.Value = 'S') and (dmcompensa.mcqrymcpladetCOD_TIPO_AFIL.Value <> 'A') then
                begin
                  dmcompensa.mcqrycompensaval_upc.Value :=Redondea(dmcompensa.qrymcvaloresval_upc_dia_especial.Value * dmcompensa.qrymcestcosval_estructura_cost.Value * strtofloat(dmcompensa.mcqrymcpladetdia_cotizados.Value));
                end;
                dmcompensa.mcqrycompensa.Post;
                dmcompensa.mcqrycompensa.Close;
                dmcompensa.qrymcgrpeta.Close;
                dmcompensa.qrymcvalores.Close;
                dmcompensa.qrymcestcos.Close;
              end;
              dmcompensa.mcqrymcidduplica.Close;
            end;
            i := i + 1;
            dmcompensa.mcqrymcyacom.Close;
            liberarmemoria;
            dmcompensa.mcqrymcpladet.Next;
            gauge1.Progress := gauge1.Progress + 1;
            edit3.Text := floattostr(i);
            frmcierremc.Refresh;
          end;
          dmcompensa.mcqrymcpladet.Close;
          if sicomp = 'X' then
          begin
            sicomp := 'S';
            frmcierremc.Refresh;
          end;
        end
        else
        begin
          showmessage('No Existen Planillas Para Ser Compensadas en el Periodo');
        end;
      end;
    end;
  if sicomp = 'S' then
  begin
  dmcompensa.mcqrycompensa.Close;
  fecha_dec := datetostr(datetimepicker1.Date);
  fecha_dec1 := fecha_dec;
  fecha_dec2 := fecha_dec;
  dmcompensa.mcqrymcdeclaracion2.Close;
  dmcompensa.mcqrymcdeclaracion2.Prepare;
  dmcompensa.mcqrymcdeclaracion2.Params[0].Value :=datetimepicker1.Date;
  dmcompensa.mcqrymcdeclaracion2.Open;
  i:=0;
  gauge1.MinValue := 0;
  gauge1.MaxValue := dmcompensa.mcqrymcdeclaracion2.RecordCount;
  gauge1.Progress := gauge1.Progress + 1;
  edit1.Text := 'Realizando Bases de Calculo';
  with dmcompensa.mcqrymcdeclaracion2 do
  begin
    dmcompensa.mcqrymcdeclaracion2.First;
    while not dmcompensa.mcqrymcdeclaracion2.Eof do
    begin
      ano1 :='01/01/'+copy(dmcompensa.mcqrymcdeclaracion2periodo_compensado.Value,4,4);
      dmcompensa.qrymcvalores.Close;
      dmcompensa.qrymcvalores.Prepare;
      dmcompensa.qrymcvalores.Params[0].Value := ano1;
      dmcompensa.qrymcvalores.Open;
      dmcompensa.qrymcvalores.first;
      dmcompensa.mcqrymcbases.Close;
      dmcompensa.mcqrymcbases.Prepare;
      dmcompensa.mcqrymcbases.Params[0].Value := dmcompensa.mcqrymcdeclaracion2num_declaracion.value;
      dmcompensa.mcqrymcbases.Open;
      dmcompensa.mcqrymcbases.First;
      while not dmcompensa.mcqrymcbases.Eof do
      begin
        dmcompensa.qrymcestcos.Close;
        dmcompensa.qrymcestcos.Prepare;
        dmcompensa.qrymcestcos.Params[0].Value :=ano1;
        dmcompensa.qrymcestcos.Params[1].Value :=dmcompensa.mcqrymcbasescod_grupo_etareo.Value;
        dmcompensa.qrymcestcos.Open;
        dmcompensa.qrymcestcos.first;
        dmcompensa.mcqrymcbasesdecalculo.Close;
        dmcompensa.mcqrymcbasesdecalculo.Prepare;
        dmcompensa.mcqrymcbasesdecalculo.Params[0].Value := dmcompensa.mcqrymcdeclaracion2num_declaracion.value;
        dmcompensa.mcqrymcbasesdecalculo.Params[1].Value := dmcompensa.mcqrymcbasescod_grupo_etareo.value;
        dmcompensa.mcqrymcbasesdecalculo.Open;
        if (dmcompensa.mcqrymcbasesTIP_BENEFICIARIO.Value <> 'A') AND (dmcompensa.mcqrymcbasesdecalculo.RecordCount = 0) then
        begin
          dmcompensa.DataSource5.DataSet := dmcompensa.mctblbasesdecalculo;
          dmcompensa.mctblbasesdecalculo.Close;
          dmcompensa.mctblbasesdecalculo.Open;
          dmcompensa.mctblbasesdecalculo.Insert;
          dmcompensa.mctblbasesdecalculonum_declaracion.Value := dmcompensa.mcqrymcdeclaracion2num_declaracion.Value;
          dmcompensa.mctblbasesdecalculocod_grupo_eta.Value := dmcompensa.mcqrymcbasescod_grupo_etareo.Value;
          if (dmcompensa.mcqrymcbasestip_beneficiario.Value = 'C') and (dmcompensa.mcqrymcbasesupc.Value = 'C') and (dmcompensa.mcqrymcbasestip_upc.Value = 'N') then
          begin
            dmcompensa.mctblbasesdecalculotot_cotizantes_mcn.Value := dmcompensa.mcqrymcbasesNUMERO.Value;
            dmcompensa.mctblbasesdecalculotot_dias_cotznn.Value := dmcompensa.mcqrymcbasesdias.Value;
            dmcompensa.mctblbasesdecalculotot_afiliados_mcn.Value := dmcompensa.mctblbasesdecalculotot_afiliados_mcn.Value+dmcompensa.mcqrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.mcqrymcbasestip_beneficiario.Value = 'C') and (dmcompensa.mcqrymcbasesupc.Value = 'C') and (dmcompensa.mcqrymcbasestip_upc.Value = 'E') then
          begin
            dmcompensa.mctblbasesdecalculotot_cotizantes_mce.Value := dmcompensa.mcqrymcbasesNUMERO.Value;
            dmcompensa.mctblbasesdecalculotot_dias_cotize.Value := dmcompensa.mcqrymcbasesdias.Value;
            dmcompensa.mctblbasesdecalculotot_afiliados_mce.Value := dmcompensa.mctblbasesdecalculotot_afiliados_mce.Value+dmcompensa.mcqrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.mcqrymcbasestip_beneficiario.Value = 'C') and (dmcompensa.mcqrymcbasesupc.Value = 'P') and (dmcompensa.mcqrymcbasestip_upc.Value = 'N') then
          begin
            dmcompensa.mctblbasesdecalculotot_cotizantes_mpn.Value := dmcompensa.mcqrymcbasesNUMERO.Value;;
            dmcompensa.mctblbasesdecalculotot_dias_cotznn.Value := dmcompensa.mcqrymcbasesdias.Value;
            dmcompensa.mctblbasesdecalculotot_afiliados_mpn.Value := dmcompensa.mctblbasesdecalculotot_afiliados_mpn.Value+dmcompensa.mcqrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.mcqrymcbasestip_beneficiario.Value = 'C') and (dmcompensa.mcqrymcbasesupc.Value = 'P') and (dmcompensa.mcqrymcbasestip_upc.Value = 'E') then
          begin
            dmcompensa.mctblbasesdecalculotot_cotizantes_mpe.Value := dmcompensa.mcqrymcbasesNUMERO.Value;
            dmcompensa.mctblbasesdecalculotot_dias_cotize.Value := dmcompensa.mcqrymcbasesdias.Value;
            dmcompensa.mctblbasesdecalculotot_afiliados_mpe.Value := dmcompensa.mctblbasesdecalculotot_afiliados_mpe.Value+dmcompensa.mcqrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.mcqrymcbasestip_beneficiario.Value = 'B') and (dmcompensa.mcqrymcbasesupc.Value = 'C') and (dmcompensa.mcqrymcbasestip_upc.Value = 'N') then
          begin
            dmcompensa.mctblbasesdecalculotot_beneficiarios_mcn.Value := dmcompensa.mcqrymcbasesNUMERO.Value;
            dmcompensa.mctblbasesdecalculotot_dias_cotznn.Value := dmcompensa.mcqrymcbasesdias.Value;
            dmcompensa.mctblbasesdecalculotot_afiliados_mcn.Value := dmcompensa.mctblbasesdecalculotot_afiliados_mcn.Value+dmcompensa.mcqrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.mcqrymcbasestip_beneficiario.Value = 'B') and (dmcompensa.mcqrymcbasesupc.Value = 'C') and (dmcompensa.mcqrymcbasestip_upc.Value = 'E') then
          begin
            dmcompensa.mctblbasesdecalculotot_beneficiarios_mce.Value := dmcompensa.mcqrymcbasesNUMERO.Value;
            dmcompensa.mctblbasesdecalculotot_dias_cotize.Value := dmcompensa.mcqrymcbasesdias.Value;
            dmcompensa.mctblbasesdecalculotot_afiliados_mce.Value := dmcompensa.mctblbasesdecalculotot_afiliados_mce.Value+dmcompensa.mcqrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.mcqrymcbasestip_beneficiario.Value = 'B') and (dmcompensa.mcqrymcbasesupc.Value = 'P') and (dmcompensa.mcqrymcbasestip_upc.Value = 'N') then
          begin
            dmcompensa.mctblbasesdecalculotot_beneficiarios_mpnl.Value := dmcompensa.mcqrymcbasesNUMERO.Value;
            dmcompensa.mctblbasesdecalculotot_dias_cotznn.Value := dmcompensa.mcqrymcbasesdias.Value;
            dmcompensa.mctblbasesdecalculotot_afiliados_mpn.Value := dmcompensa.mctblbasesdecalculotot_afiliados_mpn.Value+dmcompensa.mcqrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.mcqrymcbasestip_beneficiario.Value = 'B') and (dmcompensa.mcqrymcbasesupc.Value = 'P') and (dmcompensa.mcqrymcbasestip_upc.Value = 'E') then
          begin
            dmcompensa.mctblbasesdecalculotot_beneficiarios_mpe.Value := dmcompensa.mcqrymcbasesNUMERO.Value;
            dmcompensa.mctblbasesdecalculotot_dias_cotize.Value := dmcompensa.mcqrymcbasesdias.Value;
            dmcompensa.mctblbasesdecalculotot_afiliados_mpe.Value := dmcompensa.mctblbasesdecalculotot_afiliados_mpe.Value+dmcompensa.mcqrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.mcqrymcbasestip_upc.Value = 'N') and (dmcompensa.mcqrymcbasestip_beneficiario.Value <> 'A') then
          begin
            dmcompensa.mctblbasesdecalculotot_upc_dzn.Value := dmcompensa.mctblbasesdecalculotot_upc_dzn.Value+ dmcompensa.mcqrymcbasesval_upc.value;
            dmcompensa.mctblbasesdecalculotot_valor_upc.Value := dmcompensa.mctblbasesdecalculotot_valor_upc.Value+ dmcompensa.mcqrymcbasesval_upc.value;
          end;
          if (dmcompensa.mcqrymcbasestip_upc.Value = 'E') and (dmcompensa.mcqrymcbasestip_beneficiario.Value <> 'A') then
          begin
            dmcompensa.mctblbasesdecalculotot_upc_dze.Value := dmcompensa.mctblbasesdecalculotot_upc_dze.Value+dmcompensa.mcqrymcbasesval_upc.value;
            dmcompensa.mctblbasesdecalculotot_valor_upc.Value :=dmcompensa.mctblbasesdecalculotot_valor_upc.Value + dmcompensa.mcqrymcbasesval_upc.value;
          end;
          dmcompensa.mctblbasesdecalculo.Post;
          dmcompensa.mctblbasesdecalculo.Close;
        end;
        if (dmcompensa.mcqrymcbasesTIP_BENEFICIARIO.Value <> 'A') AND (dmcompensa.mcqrymcbasesdecalculo.RecordCount > 0) then
        begin
          dmcompensa.mcqrymcbasesdecalculo.First;
          dmcompensa.mcqrymcbasesdecalculo.Edit;
          if (dmcompensa.mcqrymcbasestip_beneficiario.Value = 'C') and (dmcompensa.mcqrymcbasesupc.Value = 'C') and (dmcompensa.mcqrymcbasestip_upc.Value = 'N') then
          begin
            dmcompensa.mcqrymcbasesdecalculotot_cotizantes_mcn.Value := dmcompensa.mcqrymcbasesdecalculotot_cotizantes_mcn.Value+dmcompensa.mcqrymcbasesNUMERO.Value;
            dmcompensa.mcqrymcbasesdecalculotot_dias_cotznn.Value    := dmcompensa.mcqrymcbasesdecalculotot_dias_cotznn.Value+ dmcompensa.mcqrymcbasesdias.value;
            dmcompensa.mcqrymcbasesdecalculotot_afiliados_mcn.Value  := dmcompensa.mcqrymcbasesdecalculotot_afiliados_mcn.Value+ dmcompensa.mcqrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.mcqrymcbasestip_beneficiario.Value = 'C') and (dmcompensa.mcqrymcbasesupc.Value = 'C') and (dmcompensa.mcqrymcbasestip_upc.Value = 'E') then
          begin
            dmcompensa.mcqrymcbasesdecalculotot_cotizantes_mce.Value := dmcompensa.mcqrymcbasesdecalculotot_cotizantes_mce.Value+dmcompensa.mcqrymcbasesNUMERO.Value;
            dmcompensa.mcqrymcbasesdecalculotot_dias_cotize.Value    := dmcompensa.mcqrymcbasesdecalculotot_dias_cotize.Value+dmcompensa.mcqrymcbasesdias.Value;
            dmcompensa.mcqrymcbasesdecalculotot_afiliados_mce.Value  := dmcompensa.mcqrymcbasesdecalculotot_afiliados_mce.Value+dmcompensa.mcqrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.mcqrymcbasestip_beneficiario.Value = 'C') and (dmcompensa.mcqrymcbasesupc.Value = 'P') and (dmcompensa.mcqrymcbasestip_upc.Value = 'N') then
          begin
            dmcompensa.mcqrymcbasesdecalculotot_cotizantes_mpn.Value := dmcompensa.mcqrymcbasesdecalculotot_cotizantes_mpn.Value+dmcompensa.mcqrymcbasesNUMERO.Value;
            dmcompensa.mcqrymcbasesdecalculotot_dias_cotznn.Value    := dmcompensa.mcqrymcbasesdecalculotot_dias_cotznn.Value+dmcompensa.mcqrymcbasesdias.Value;
            dmcompensa.mcqrymcbasesdecalculotot_afiliados_mpn.Value  := dmcompensa.mcqrymcbasesdecalculotot_afiliados_mpn.Value+dmcompensa.mcqrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.mcqrymcbasestip_beneficiario.Value = 'C') and (dmcompensa.mcqrymcbasesupc.Value = 'P') and (dmcompensa.mcqrymcbasestip_upc.Value = 'E') then
          begin
            dmcompensa.mcqrymcbasesdecalculotot_cotizantes_mpe.Value := dmcompensa.mcqrymcbasesdecalculotot_cotizantes_mpe.Value+dmcompensa.mcqrymcbasesNUMERO.Value;
            dmcompensa.mcqrymcbasesdecalculotot_dias_cotize.Value    := dmcompensa.mcqrymcbasesdecalculotot_dias_cotize.Value+dmcompensa.mcqrymcbasesdias.Value;
            dmcompensa.mcqrymcbasesdecalculotot_afiliados_mpe.Value  := dmcompensa.mcqrymcbasesdecalculotot_afiliados_mpe.Value+dmcompensa.mcqrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.mcqrymcbasestip_beneficiario.Value = 'B') and (dmcompensa.mcqrymcbasesupc.Value = 'C') and (dmcompensa.mcqrymcbasestip_upc.Value = 'N') then
          begin
            dmcompensa.mcqrymcbasesdecalculotot_beneficiarios_mcn.Value := dmcompensa.mcqrymcbasesdecalculotot_beneficiarios_mcn.Value+dmcompensa.mcqrymcbasesNUMERO.Value;
            dmcompensa.mcqrymcbasesdecalculotot_dias_cotznn.Value       := dmcompensa.mcqrymcbasesdecalculotot_dias_cotznn.Value+dmcompensa.mcqrymcbasesdias.Value;
            dmcompensa.mcqrymcbasesdecalculotot_afiliados_mcn.Value     := dmcompensa.mcqrymcbasesdecalculotot_afiliados_mcn.Value+dmcompensa.mcqrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.mcqrymcbasestip_beneficiario.Value = 'B') and (dmcompensa.mcqrymcbasesupc.Value = 'C') and (dmcompensa.mcqrymcbasestip_upc.Value = 'E') then
          begin
            dmcompensa.mcqrymcbasesdecalculotot_beneficiarios_mce.Value := dmcompensa.mcqrymcbasesdecalculotot_beneficiarios_mce.Value+dmcompensa.mcqrymcbasesNUMERO.Value;
            dmcompensa.mcqrymcbasesdecalculotot_dias_cotize.Value       := dmcompensa.mcqrymcbasesdecalculotot_dias_cotize.Value+dmcompensa.mcqrymcbasesdias.Value;
            dmcompensa.mcqrymcbasesdecalculotot_afiliados_mce.Value     := dmcompensa.mcqrymcbasesdecalculotot_afiliados_mce.Value+dmcompensa.mcqrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.mcqrymcbasestip_beneficiario.Value = 'B') and (dmcompensa.mcqrymcbasesupc.Value = 'P') and (dmcompensa.mcqrymcbasestip_upc.Value = 'N') then
          begin
            dmcompensa.mcqrymcbasesdecalculotot_beneficiarios_mpnl.Value := dmcompensa.mcqrymcbasesdecalculotot_beneficiarios_mpnl.Value+dmcompensa.mcqrymcbasesNUMERO.Value;
            dmcompensa.mcqrymcbasesdecalculotot_dias_cotznn.Value        := dmcompensa.mcqrymcbasesdecalculotot_dias_cotznn.Value+dmcompensa.mcqrymcbasesdias.Value;
            dmcompensa.mcqrymcbasesdecalculotot_afiliados_mpn.Value      := dmcompensa.mcqrymcbasesdecalculotot_afiliados_mpn.Value+dmcompensa.mcqrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.mcqrymcbasestip_beneficiario.Value = 'B') and (dmcompensa.mcqrymcbasesupc.Value = 'P') and (dmcompensa.mcqrymcbasestip_upc.Value = 'E') then
          begin
            dmcompensa.mcqrymcbasesdecalculotot_beneficiarios_mpe.Value := dmcompensa.mcqrymcbasesdecalculotot_beneficiarios_mpe.Value+dmcompensa.mcqrymcbasesNUMERO.Value;
            dmcompensa.mcqrymcbasesdecalculotot_dias_cotize.Value       := dmcompensa.mcqrymcbasesdecalculotot_dias_cotize.Value+dmcompensa.mcqrymcbasesdias.Value;
            dmcompensa.mcqrymcbasesdecalculotot_afiliados_mpe.Value     := dmcompensa.mcqrymcbasesdecalculotot_afiliados_mpe.Value+dmcompensa.mcqrymcbasesNUMERO.Value;
          end;
          if (dmcompensa.mcqrymcbasestip_upc.Value = 'N') and (dmcompensa.mcqrymcbasestip_beneficiario.Value <> 'A') then
          begin
            dmcompensa.mcqrymcbasesdecalculotot_upc_dzn.Value := dmcompensa.mcqrymcbasesdecalculotot_upc_dzn.Value+ dmcompensa.mcqrymcbasesval_upc.value;
            dmcompensa.mcqrymcbasesdecalculotot_valor_upc.Value := dmcompensa.mcqrymcbasesdecalculotot_valor_upc.Value+ dmcompensa.mcqrymcbasesval_upc.value;
          end;
          if (dmcompensa.mcqrymcbasestip_upc.Value = 'E') and (dmcompensa.mcqrymcbasestip_beneficiario.Value <> 'A') then
          begin
            dmcompensa.mcqrymcbasesdecalculotot_upc_dze.Value := dmcompensa.mcqrymcbasesdecalculotot_upc_dze.Value+dmcompensa.mcqrymcbasesval_upc.value;
            dmcompensa.mcqrymcbasesdecalculotot_valor_upc.Value :=dmcompensa.mcqrymcbasesdecalculotot_valor_upc.Value + dmcompensa.mcqrymcbasesval_upc.value;
          end;
          dmcompensa.mcqrymcbasesdecalculo.Post;
          dmcompensa.mcqrymcbasesdecalculo.Close;
        end;
      dmcompensa.mcqrymcbases.Next;
      end;
      liberarmemoria;
      dmcompensa.mcqrymcdeclaracion2.Next;
      gauge1.Progress := gauge1.Progress + 1;
      i:=i+1;
      edit3.Text := floattostr(i);
      frmcierremc.Refresh;
      sicomp := 'S';
      end;
    end;
    end
    else if dmcompensa.mcqrymccierres.RecordCount >0 then
    begin
      showmessage('El Cierre Para Este Periodo Ya Fue Realizado');
    end;
    if sicomp = 'S' then
    begin
      dmcompensa.mcqrymcbases.Close;
      i := 0;
      gauge2.Progress := gauge2.Progress + 1;
      gauge2.Progress := gauge2.Progress + 1;
      fecha_dec := datetostr(datetimepicker1.Date);
      fecha_dec1 := fecha_dec;
      fecha_dec2 := fecha_dec;
      try
        dmcompensa.mcqrymcdeclaracion2.Close;
        dmcompensa.mcqrymcdeclaracion2.Prepare;
        dmcompensa.mcqrymcdeclaracion2.Params[0].Value :=datetimepicker1.Date;
        dmcompensa.mcqrymcdeclaracion2.Open;
        gauge1.Progress := 0;
        gauge1.MaxValue := dmcompensa.mcqrymcdeclaracion2.RecordCount;
        gauge1.MinValue := 0;
        edit1.Text := 'Liquidacion de la Compensacion';
     with dmcompensa.mcqrymcdeclaracion2 do
     begin
       dmcompensa.mcqrymcdeclaracion2.First;
       while not dmcompensa.mcqrymcdeclaracion2.Eof do
       begin
         ano := strtodate('01/01/'+copy(dmcompensa.mcqrymcdeclaracion2periodo_compensado.value,4,4));
         mes := strtodate('01/'+copy(dmcompensa.mcqrymcdeclaracion2periodo_compensado.value,1,7));
         ano2 := '01/01/'+copy(dmcompensa.mcqrymcdeclaracion2periodo_compensado.value,4,4);
         if copy(dmcompensa.mcqrymcdeclaracion2periodo_compensado.Value,1,2) = '02' then
         begin
           fecrecini := '01/'+dmcompensa.mcqrymcdeclaracion2periodo_compensado.Value;
           fecrecfin := '28/'+dmcompensa.mcqrymcdeclaracion2periodo_compensado.Value;
         end;
         if copy(dmcompensa.mcqrymcdeclaracion2periodo_compensado.Value,1,2) <> '02' then
         begin
           fecrecini := '01/'+dmcompensa.mcqrymcdeclaracion2periodo_compensado.Value;
           fecrecfin := '30/'+dmcompensa.mcqrymcdeclaracion2periodo_compensado.Value;
         end;
         dmcompensa.qrymcvalores.Close;
         dmcompensa.qrymcvalores.Prepare;
         dmcompensa.qrymcvalores.Params[0].Value := ano2;
         dmcompensa.qrymcvalores.Open;
         dmcompensa.qrymcvalores.first;
         cot_no_id := 0;
         dmcompensa.mcqrymcconplanillas2.Close;
         dmcompensa.mcqrymcconplanillas2.Prepare;
         dmcompensa.mcqrymcconplanillas2.Params[0].Value :=dmcompensa.mcqrymcdeclaracion2num_declaracion.value;
         dmcompensa.mcqrymcconplanillas2.Open;
         planillas := dmcompensa.mcqrymcconplanillas2.RecordCount;
         dmcompensa.mcqrymcafilcomp1.Close;
         dmcompensa.mcqrymcafilcomp1.Prepare;
         dmcompensa.mcqrymcafilcomp1.Params[0].Value :=dmcompensa.mcqrymcdeclaracion2num_declaracion.Value;
         dmcompensa.mcqrymcafilcomp1.Params[1].Value :=ano2;
         dmcompensa.mcqrymcafilcomp1.Open;
         upc_afi_agre := 0;
         tot_upc_dias_agre := 0;
         with dmcompensa.mcqrymcafilcomp1 do
         begin
           dmcompensa.mcqrymcafilcomp1.First;
           while not dmcompensa.mcqrymcafilcomp1.Eof do
           begin
             if dmcompensa.mcqrymcafilcomp1tip_beneficiario.Value = 'C' then
             begin
               if dmcompensa.mcqrymcafilcomp1porcentaje.Value = '8' then
               begin
                 num_tot_cot8 := num_tot_cot8 + 1;
                 vde8 := vde8 + dmcompensa.mcqrymcafilcomp1val_deduccion.Value;
                 vtc8 := vtc8 + dmcompensa.mcqrymcafilcomp1cotizacion.Value;
                 if dmcompensa.mcqrymcdeclaracion2tipo_cierre.Value = 'D' then
                 begin
                   if dmcompensa.mcqrymcafilcomp1tip_deduccion.Value = 'LMA' then
                      vlm8 := vlm8 + dmcompensa.mcqrymcafilcomp1val_deduccion.Value;
                 end;
               end;
               if dmcompensa.mcqrymcafilcomp1porcentaje.Value = '12' then
               begin
                 vde12 := vde12 + dmcompensa.mcqrymcafilcomp1val_deduccion.Value;
                 vtc12 := vtc12 + dmcompensa.mcqrymcafilcomp1cotizacion.Value;
                 ibc12 := ibc12 +dmcompensa.mcqrymcafilcomp1SALARIO.Value;
                 if dmcompensa.mcqrymcdeclaracion2tipo_cierre.Value = 'D' then
                 begin
                   if dmcompensa.mcqrymcafilcomp1tip_deduccion.Value = 'LMA' then
                      vlm12 := vlm12 + dmcompensa.mcqrymcafilcomp1val_deduccion.Value;
                 end;
               end;
               if dmcompensa.mcqrymcafilcomp1tip_deduccion.Value = 'INC' then
                  tot_inc_pag := tot_inc_pag + dmcompensa.mcqrymcafilcomp1val_deduccion.Value;
               if dmcompensa.mcqrymcafilcomp1tip_afiliado.Value = 'M' then
               begin
                 tot_mad_comp := tot_mad_comp + 1;
                 ibc_mad_comp := ibc_mad_comp + dmcompensa.mcqrymcafilcomp1salario.Value;
               end;
               if dmcompensa.mcqrymcafilcomp1tip_afiliado.Value = 'I' then
               begin
                 tot_afi_ind := tot_afi_ind + 1;
                 ibc_afi_ind := ibc_afi_ind + dmcompensa.mcqrymcafilcomp1salario.Value;
               end;
             end;
             dmcompensa.mcqrymcafilcomp1.Next;
           end;
         end;
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
         dmcompensa.mcqrymcbasesdecalculo1.Close;
         dmcompensa.mcqrymcbasesdecalculo1.Prepare;
         dmcompensa.mcqrymcbasesdecalculo1.Params[0].Value :=dmcompensa.mcqrymcdeclaracion2num_declaracion.Value;
         dmcompensa.mcqrymcbasesdecalculo1.Open;
         vru12 := 0;
         dmcompensa.mcqrymcbasesdecalculo1.First;
         while not dmcompensa.mcqrymcbasesdecalculo1.Eof do
         begin
           vru12 := vru12 + dmcompensa.mcqrymcbasesdecalculo1tot_valor_upc.Value;
           diasze := diasze + dmcompensa.mcqrymcbasesdecalculo1tot_dias_cotize.Value;
           diaszn := diaszn + dmcompensa.mcqrymcbasesdecalculo1tot_dias_cotznn.Value;
           dmcompensa.mcqrymcbasesdecalculo1.Next;
         end;
         vpc12 := cne12 - vlm12 - vru12;
         tsu12 := vpc12;
         val_prom := vpp12 + vpp8;
         val_rec_pyp := redondea((diasze + diaszn) * (dmcompensa.qrymcvalorespyp.Value / 360));
         sal_com_pro := val_prom - val_rec_pyp;
         val_cons_sol  := val_soli + vso12 + vso8;
         val_cons_pro  := sal_com_pro;
         val_cons_comp := roundto(vpc12+vpc8,3);
         fec_cons_sol  := datetimepicker1.Date;
         fec_cons_pro  := datetimepicker1.Date;
         fec_cons_comp := datetimepicker1.Date;
         if dmcompensa.mcqrymcdeclaracion2tipo_cierre.Value = 'D' then
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
         dmcompensa.DataSource5.DataSet := dmcompensa.mctblliquidacion;
         dmcompensa.mctblliquidacion.Close;
         dmcompensa.mctblliquidacion.Open;
         dmcompensa.mctblliquidacion.Insert;
         dmcompensa.mctblliquidacionnum_declaracion.Value :=  dmcompensa.mcqrymcdeclaracion2num_declaracion.Value;
         dmcompensa.mctblliquidacioning_salbase_cotiz12.Value := ibc12;
         dmcompensa.mctblliquidacioning_salbase_cotiz8.Value := ibc8;
         dmcompensa.mctblliquidacionval_total_reca12.Value := tre12;
         dmcompensa.mctblliquidacionval_total_reca8.Value := tre8;
         dmcompensa.mctblliquidacionval_deducido_aut12.Value := vde12;
         dmcompensa.mctblliquidacionval_deducido_aut8.Value := vde8;
         dmcompensa.mctblliquidacionval_total_cotiz12.Value := vtc12;
         dmcompensa.mctblliquidacionval_total_cotiz8.Value := vtc8;
         dmcompensa.mctblliquidacionval_solidaridad_12.Value := vso12;
         dmcompensa.mctblliquidacionval_solidaridad_8.Value := vso8;
         dmcompensa.mctblliquidacionval_pyp12.Value := vpp12;
         dmcompensa.mctblliquidacionval_pyp8.Value := vpp8;
         dmcompensa.mctblliquidacionpro_incapacidades12.Value := pri12;
         dmcompensa.mctblliquidacionpro_incapacidades8.Value := pri8;
         dmcompensa.mctblliquidacionval_cotizacion_net12.Value := cne12;
         dmcompensa.mctblliquidacionval_cotizacion_net8.Value := cne8;
         dmcompensa.mctblliquidacionval_lincencias_mat12.Value := vlm12;
         dmcompensa.mctblliquidacionval_licencias_mat8.Value := vlm8;
         dmcompensa.mctblliquidacionval_reconocer_upc12.Value := vru12;
         dmcompensa.mctblliquidacionval_reconocer_upc8.Value := vru8;
         dmcompensa.mctblliquidacionval_pagcobrar_fsg12.Value := vpc12;
         dmcompensa.mctblliquidacionval_pagcobrar_fsg8.Value := vpc8;
         dmcompensa.mctblliquidaciontot_subcuenta_comp12.Value := tsu12;
         dmcompensa.mctblliquidaciontot_subcuenta_comp8.Value := tsu8;
         dmcompensa.mctblliquidacionval_promocion.Value := val_prom;
         dmcompensa.mctblliquidacionrec_promocion.Value := val_rec_pyp;
         dmcompensa.mctblliquidacionsal_compensar_prom.Value := sal_com_pro;
         dmcompensa.mctblliquidacionfec_consignacion_solid.Value := fec_cons_sol;
         dmcompensa.mctblliquidacionval_consignacion_solid.Value := val_cons_sol;
         dmcompensa.mctblliquidacionfec_consignacion_pro.Value := fec_cons_pro;
         dmcompensa.mctblliquidacionval_consignacion_promocion.Value := val_cons_pro;
         dmcompensa.mctblliquidacionval_consignado_comp.Value := val_cons_comp;
         dmcompensa.mctblliquidacionnum_autoliquidaciones.Value := planillas;
         dmcompensa.mctblliquidacionval_pago_incap.Value := tot_inc_pag;
         dmcompensa.mctblliquidaciontot_cotizaciones_noident.Value := cot_no_id;
         dmcompensa.mctblliquidacionnum_tot_afil.Value := activos;
         dmcompensa.mctblliquidacionnum_total_cotiz8.Value := num_total_cotiz8;
         dmcompensa.mctblliquidaciontot_afiliados_ind.Value := tot_afi_ind;
         dmcompensa.mctblliquidacionibc_afiliados_ind.Value := ibc_afi_ind;
         dmcompensa.mctblliquidaciontot_madres_comu.Value := tot_mad_com;
         dmcompensa.mctblliquidacionibc_madres_comu.Value := ibc_mad_com;
         dmcompensa.mctblliquidaciontot_madrescomu_comp.Value := tot_mad_comp;
         dmcompensa.mctblliquidacionibc_madrescomu_comp.Value := ibc_mad_comp;
         dmcompensa.mctblliquidaciontot_miembros_adicdep.Value := tot_afi_agre;
         dmcompensa.mctblliquidacionrec_miembros_adicdep.Value :=upc_afi_agre;
         dmcompensa.mctblliquidaciontot_incapacidades_pag.Value := tot_inc_pag;
         if dmcompensa.mcqrymcdeclaracion2tipo_cierre.Value = 'D' then
         begin
           dmcompensa.mctblliquidacionval_recaudo_brut.Value := 0;
           dmcompensa.mctblliquidacionval_licenciaas_pag.Value := vlm8 + vlm12;
           dmcompensa.mctblliquidacionval_aportes_neto.Value := cne12+cne8;
           dmcompensa.mctblliquidacionrec_acumulado_per_comp.Value := tre12+tre8;
         end;
         if dmcompensa.mcqrymcdeclaracion2tipo_cierre.Value <>'D' then
         begin
           dmcompensa.mctblliquidacionval_recaudo_brut.Value := 0;
           dmcompensa.mctblliquidacionval_licenciaas_pag.Value := 0;
           dmcompensa.mctblliquidacionval_aportes_neto.Value := 0;
           dmcompensa.mctblliquidacionrec_acumulado_per_comp.Value := 0;
         end;
         dmcompensa.mctblliquidacion.Post;
         dmcompensa.mctblliquidacion.Close;
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
         dmcompensa.mcqrymcbasesdecalculo.Close;
         dmcompensa.qrymcafiactivos.Close;
         dmcompensa.qrymcafiemp.Close;
         dmcompensa.mctblliquidacion.Close;
         liberarmemoria;
         dmcompensa.mcqrymcdeclaracion2.Next;
         gauge1.Progress := gauge1.Progress + 1;
         sicomp := 'S';
         i:=i+1;
         edit3.Text := floattostr(i);
         frmcierremc.Refresh;
       end;
     end;
      except
        dmcompensa.Database1.Rollback;
      end;
    end;
    if sicomp = 'S' then
    begin
      i:=0;
      edit1.Text := 'Actualizando Estado de Planillas Por Declaracion';
      fecha_dec := datetostr(datetimepicker1.Date);
      fecha_dec1 := fecha_dec;
      fecha_dec2 := fecha_dec;
      dmcompensa.mcqrymcdeclaracion2.Close;
      dmcompensa.mcqrymcdeclaracion2.Prepare;
      dmcompensa.mcqrymcdeclaracion2.Params[0].Value :=strtodate(fecha_dec);
      dmcompensa.mcqrymcdeclaracion2.Open;
      dmcompensa.mcqrymcdeclaracion2.RecordCount;
      with dmcompensa.mcqrymcdeclaracion2 do
      begin
        dmcompensa.mcqrymcdeclaracion2.First;
        while not dmcompensa.mcqrymcdeclaracion2.Eof do
        begin
          dmcompensa.mcqrymcaficompla.Close;
          dmcompensa.mcqrymcaficompla.Prepare;
          dmcompensa.mcqrymcaficompla.Params[0].Value :=floattostr(dmcompensa.mcqrymcdeclaracion2num_declaracion.Value);
          dmcompensa.mcqrymcaficompla.Open;
          dmcompensa.mcqrymcaficompla.First;
          while not dmcompensa.mcqrymcaficompla.Eof do
          begin
            dmcompensa.qrymcdnumpla.close;
            dmcompensa.qrymcdnumpla.Prepare;
            dmcompensa.qrymcdnumpla.Params[0].Value :=dmcompensa.mcqrymcaficomplanum_planilla.Value;
            dmcompensa.qrymcdnumpla.Params[1].Value :=dmcompensa.mcqrymcaficomplaafi_tipo_doc.Value;
            dmcompensa.qrymcdnumpla.Params[2].Value :=dmcompensa.mcqrymcaficomplaafi_numero_doc.Value;
            dmcompensa.qrymcdnumpla.Open;
            dmcompensa.qrymcdnumpla.First;
            gauge1.MinValue := 0;
            gauge1.MaxValue := dmcompensa.qrymcdnumpla.RecordCount;
            while not dmcompensa.qrymcdnumpla.Eof do
            begin
              gauge1.Progress := gauge1.Progress + 1;
              i:=i+1;
              edit3.Text := floattostr(i);
              frmcierremc.Refresh;
              dmcompensa.qrymcdnumpla.edit;
              dmcompensa.qrymcdnumpladet_estado.value := 'COM';
              dmcompensa.qrymcdnumplanum_declaracion.Value := dmcompensa.mcqrymcdeclaracion2num_declaracion.Value;
              dmcompensa.qrymcdnumpla.Post;
              dmcompensa.qrymcdnumpla.Next;
            end;
          dmcompensa.mcqrymcaficompla.Next;
          end;
        frmcierremc.Refresh;
        liberarmemoria;
        dmcompensa.mcqrymcdeclaracion2.Next;
        end;
      end;
      dmcompensa.mcqrymcdeclaracion2.Close;
      dmcompensa.mcqrymcdeclaracion2.Prepare;
      dmcompensa.mcqrymcdeclaracion2.Params[0].Value := datetimepicker1.Date;
      dmcompensa.mcqrymcdeclaracion2.Open;
      with dmcompensa.mcqrymcdeclaracion2 do
      begin
        dmcompensa.mcqrymcdeclaracion2.First;
        decini := floattostr(dmcompensa.mcqrymcdeclaracion2num_declaracion.Value);
        dmcompensa.mcqrymcdeclaracion2.last;
        decfin :=floattostr(dmcompensa.mcqrymcdeclaracion2num_declaracion.Value);
      end;
      dmcompensa.mcqrymcdeclaracion2.Close;
      gauge2.Progress := gauge2.Progress + 1;
      hora2 := time();
      hora3 := hora2 - hora1;
      showmessage('Felicitaciones ! Ha Finalizado del Proceso de Compensacion,Hora de Inicio : '+timetostr(hora1)+ 'Hora de Finalizacion : '+timetostr(hora2)+'Duracion Total del Proceso : ' + timetostr(hora3)+' Se generaron declaraciones de la '+decini+' a la '+decfin);
      frmcierremc.Close;
    end;
  end;
end;

end.
