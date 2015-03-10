unit ugcartera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ComCtrls,math,dateutils, ExtCtrls, Gauges, DB,
  DBTables;

type
  Tfrmgencartera = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    Panel2: TPanel;
    Button1: TButton;
    Label4: TLabel;
    MaskEdit2: TMaskEdit;
    Edit3: TEdit;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label2: TLabel;
    Gauge2: TGauge;
    qrymccartera1: TQuery;
    qrymccartera1TIP_DOCUMENTO: TStringField;
    qrymccartera1NUM_DOCUMENTO: TStringField;
    qrymccartera1TIP_DOCUMENTO_EMP: TStringField;
    qrymccartera1NUM_DOCUMENTO_EMP: TStringField;
    qrymccartera1COD_SUCURSAL_EMP: TStringField;
    qrymccartera1PER_COMPENSACION: TStringField;
    qrymccartera1TIPO_MORA: TStringField;
    qrymccartera1VALOR_MORA: TFloatField;
    qrymccartera1VALOR_UPC: TFloatField;
    qrymccartera1COD_TIPO_AFIL: TStringField;
    qrymccartera1TIP_DOCUMENTO_COT: TStringField;
    qrymccartera1NUM_DOCUMENTO_COT: TStringField;
    qrymccartera1INTERES: TFloatField;
    qrymcvalores: TQuery;
    qrymcvaloresANO: TDateTimeField;
    qrymcvaloresSAL_MINIMO: TFloatField;
    qrymcvaloresUPC: TFloatField;
    qrymcvaloresPYP: TFloatField;
    qrymcvaloresSOL: TFloatField;
    qrymcvaloresRIESGO: TFloatField;
    qrymcvaloresVAL_UPC_DIA_NORMAL: TFloatField;
    qrymcvaloresVAL_UPC_DIA_ESPECIAL: TFloatField;
    qrymcvaloresPOR_COTIZACION: TFloatField;
    qrymcvaloresPOR_ENFERMEDAD_GENERAL: TFloatField;
    qrymcvaloresPOR_PROVISION_INC: TFloatField;
    qrymcvaloresPOR_PYP_LIQUIDACION: TFloatField;
    qrymcvaloresPOR_SOLIDARIDAD_LIQUIDACION: TFloatField;
    qrymcintereses: TQuery;
    qrymcinteresesFEC_INTERESES: TDateTimeField;
    qrymcinteresesVAL_ANUL: TFloatField;
    qrymcinteresesVAL_MENSUAL: TFloatField;
    qrymcinteresesDESCRIPCION: TStringField;
    qrymcafiactivos: TQuery;
    qrymcafiactivosTIP_DOCUMENTO: TStringField;
    qrymcafiactivosNUM_DOCUMENTO: TStringField;
    qrymcafiactivosCOD_MODALIDAD_TRA: TStringField;
    tblcartera: TTable;
    tblcarteraTIP_DOCUMENTO: TStringField;
    tblcarteraNUM_DOCUMENTO: TStringField;
    tblcarteraTIP_DOCUMENTO_EMP: TStringField;
    tblcarteraNUM_DOCUMENTO_EMP: TStringField;
    tblcarteraCOD_SUCURSAL_EMP: TStringField;
    tblcarteraPER_COMPENSACION: TStringField;
    tblcarteraTIPO_MORA: TStringField;
    tblcarteraVALOR_MORA: TFloatField;
    tblcarteraVALOR_UPC: TFloatField;
    tblcarteraCOD_TIPO_AFIL: TStringField;
    tblcarteraTIP_DOCUMENTO_COT: TStringField;
    tblcarteraNUM_DOCUMENTO_COT: TStringField;
    tblcarteraINTERES: TFloatField;
    qrymcnovegre: TQuery;
    qrymcnoving: TQuery;
    qrymcnovingFEC_EVENTO: TDateTimeField;
    qrymcafiemp: TQuery;
    qrymccartera: TQuery;
    qrymccarteraPER_COTIZACION: TStringField;
    qrymcafiempCOD_OCUPACION: TStringField;
    qrymcafiempTIP_DOCUMENTO_AFI: TStringField;
    qrymcafiempNUM_DOCUMENTO_AFI: TStringField;
    qrymcafiempTIP_DOCUMENTO_EMP: TStringField;
    qrymcafiempNUM_DOCUMENTO_EMP: TStringField;
    qrymcafiempCOD_SUCURSAL: TStringField;
    qrymcafiempCOD_ESTADO: TStringField;
    qrymcafiempVAL_SUELDO_AFIL: TFloatField;
    qrymcafiempFEC_INGRESO_UNI: TDateTimeField;
    qrymcafiempFEC_EGRESO_UNI: TDateTimeField;
    qrymcafiempCOD_DEPARTAMENTO_LAB: TStringField;
    qrymcafiempCOD_CIUDAD_LAB: TStringField;
    qrymcafiempDIR_AFILIADO_LAB: TStringField;
    qrymcafiempTEL_AFILIADO_LAB: TStringField;
    qrymcafiempTEL_AFILIADO_LAB2: TStringField;
    qrymcafiempCOD_TIPO_SAL: TStringField;
    qrymcafiempCOD_ZONA: TStringField;
    qrymcrelafiliados: TQuery;
    qrymcrelafiliadosTIP_DOCUMENTO_COT: TStringField;
    qrymcrelafiliadosNUM_DOCUMENTO_COT: TStringField;
    qrymcrelafiliadosTIP_DOCUMENTO_BEN: TStringField;
    qrymcrelafiliadosNUM_DOCUMENTO_BEN: TStringField;
    qrymcrelafiliadosFEC_INCLUSION_NOV: TDateTimeField;
    qrymcrelafiliadosCOD_PARENTESCO: TStringField;
    qrymcrelafiliadosFEC_EXCLUSION_NOV: TDateTimeField;
    qrymcrelafiliadosCOD_ESTADO: TStringField;
    qrymcrelafiliadosCOD_RELACION_ADI: TStringField;
    qrymcaficiu: TQuery;
    qrymcaficiuTIP_DOCUMENTO: TStringField;
    qrymcaficiuNUM_DOCUMENTO: TStringField;
    qrymcaficiuCOD_SEXO: TStringField;
    qrymcaficiuCOD_TIPO_AFIL: TStringField;
    qrymcaficiuCOD_MODALIDAD_TRA: TStringField;
    qrymcaficiuCOD_ESTADO_CIV: TStringField;
    qrymcaficiuCOD_ESTRATO: TStringField;
    qrymcaficiuCOD_ESCOLARIDAD: TStringField;
    qrymcaficiuCOD_PROFESION: TStringField;
    qrymcaficiuCOD_ESTADO: TStringField;
    qrymcaficiuCOD_OFICINA: TStringField;
    qrymcaficiuCOD_REGIONAL: TStringField;
    qrymcaficiuPRI_NOMBRE: TStringField;
    qrymcaficiuSEG_NOMBRE: TStringField;
    qrymcaficiuPRI_APELLIDO: TStringField;
    qrymcaficiuSEG_APELLIDO: TStringField;
    qrymcaficiuFEC_NACIMIENTO: TDateTimeField;
    qrymcaficiuFEC_AFILIACION_SIS: TDateTimeField;
    qrymcaficiuFEC_AFILIACION_UNI: TDateTimeField;
    qrymcaficiuEPS_TIP_DOC: TStringField;
    qrymcaficiuEPS_NUM_DOC: TStringField;
    qrymcaficiuCOD_DEPARTAMENTO_RES: TStringField;
    qrymcaficiuCOD_CIUDAD_RES: TStringField;
    qrymcaficiuCOD_BARRIO_RES: TStringField;
    qrymcaficiuCOD_ZONA: TStringField;
    qrymcaficiuACE_TIP_DOC: TStringField;
    qrymcaficiuACE_NUMERO_DOC: TStringField;
    qrymcaficiuCOD_DISCAPACIDAD: TStringField;
    qrymcaficiuNUM_SEMANA_COTIZA: TFloatField;
    qrymcaficiuFEC_RADICACION: TDateTimeField;
    qrymcaficiuNUM_FORMATO_AFIL: TStringField;
    qrymcaficiuDIR_AFILIADO_RES: TStringField;
    qrymcaficiuTEL_AFILIADO_RES: TStringField;
    qrymcaficiuTEL_AFILIADO_RES2: TStringField;
    qrymcaficiuCEL_AFILIADO: TStringField;
    qrymcaficiuEML_AFILIADO: TStringField;
    qrymcaficiuFEC_ULTIMA_NOV: TDateTimeField;
    qrymcaficiuTIP_DOCUMENTO_IPS: TStringField;
    qrymcaficiuNUM_DOCUMENTO_IPS: TStringField;
    qrymcaficiuTIP_DOCUMENTO_MED: TStringField;
    qrymcaficiuNUM_DOCUMENTO_MED: TStringField;
    qrymcaficiuTIP_DOCUMENTO_ODO: TStringField;
    qrymcaficiuNUM_DOCUMENTO_ODO: TStringField;
    qrymcaficiuSEM_COTIZACION: TFloatField;
    qrymcaficiuCOD_DEPARTAMENTO: TStringField;
    qrymcaficiuCOD_CIUDAD: TStringField;
    qrymcaficiuNOM_CIUDAD: TStringField;
    qrymcaficiuPOR_ALTO_RIE: TStringField;
    qrymcaficiuCOD_REGIONAL_1: TStringField;
    qrymcaficiuVALOR_UPC: TFloatField;
    qrymcaficiuCEN_COSTO: TStringField;
    qrymcgrpeta: TQuery;
    qrymcgrpetaCOD_GRUPO_ETA: TFloatField;
    qrymcgrpetaINI_GRUPO_ETA: TFloatField;
    qrymcgrpetaFIN_GRUPO_ETA: TFloatField;
    qrymcgrpetaSEXO_GRUPO_ETA: TStringField;
    qrymcestcos1: TQuery;
    qrymcestcos1COD_GRUPO_ETA: TFloatField;
    qrymcestcos1VAL_ESTRUCTURA_COST: TFloatField;
    qrymcestcos1ANO_VAL_ESTRUCTURA_COST: TDateTimeField;
    qrymccarafi: TQuery;
    qrymccarafiTIP_DOCUMENTO: TStringField;
    qrymccarafiNUM_DOCUMENTO: TStringField;
    qrymccarafiTIP_DOCUMENTO_COT: TStringField;
    qrymccarafiNUM_DOCUMENTO_COT: TStringField;
    qrymcaficar: TQuery;
    qrymcaficarCOD_ESTADO: TStringField;
    qrymcaficarFEC_ULTIMA_NOV: TDateTimeField;
    qryrevcar: TQuery;
    qryrevcarTIP_DOCUMENTO: TStringField;
    qryrevcarNUM_DOCUMENTO: TStringField;
    qryrevcarTIP_DOCUMENTO_EMP: TStringField;
    qryrevcarNUM_DOCUMENTO_EMP: TStringField;
    qryrevcarCOD_SUCURSAL_EMP: TStringField;
    qryrevcarPER_COMPENSACION: TStringField;
    qryrevcarTIPO_MORA: TStringField;
    qryrevcarVALOR_MORA: TFloatField;
    qryrevcarVALOR_UPC: TFloatField;
    qryrevcarCOD_TIPO_AFIL: TStringField;
    qryrevcarTIP_DOCUMENTO_COT: TStringField;
    qryrevcarNUM_DOCUMENTO_COT: TStringField;
    qryrevcarINTERES: TFloatField;
    qrymeses: TQuery;
    qrymesesMESES: TFloatField;
    qrycartera: TQuery;
    qrycarteraTIP_DOCUMENTO: TStringField;
    qrycarteraNUM_DOCUMENTO: TStringField;
    qrycarteraTIP_DOCUMENTO_EMP: TStringField;
    qrycarteraNUM_DOCUMENTO_EMP: TStringField;
    qrycarteraCOD_SUCURSAL_EMP: TStringField;
    qrycarteraPER_COMPENSACION: TStringField;
    qrycarteraTIPO_MORA: TStringField;
    qrycarteraVALOR_MORA: TFloatField;
    qrycarteraVALOR_UPC: TFloatField;
    qrycarteraCOD_TIPO_AFIL: TStringField;
    qrycarteraTIP_DOCUMENTO_COT: TStringField;
    qrycarteraNUM_DOCUMENTO_COT: TStringField;
    qrycarteraINTERES: TFloatField;
    qrymcnovegreFEC_EVENTO: TDateTimeField;
    Edit1: TEdit;
    Label6: TLabel;
    Edit2: TEdit;
    procedure MaskEdit1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgencartera: Tfrmgencartera;

implementation

uses ucartera;

{$R *.dfm}


procedure LiberarMemoria;
begin
  if Win32Platform = VER_PLATFORM_WIN32_NT then
    SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);
end;


procedure Tfrmgencartera.MaskEdit1Exit(Sender: TObject);
var periodo : real;
    t : string;
begin
    try
    t := copy(maskedit1.Text,1,2);
    if t = '' then
       t:='15';
    periodo := strtofloat(t);
    if (periodo > 12) or (periodo = 0) then
    begin
      showmessage('Error en el Periodo');
      maskedit1.SetFocus;
    end;
  except
    on e:EDBEditerror do
    begin
      e.message :='Error en el Periodo';
      maskedit1.SetFocus;
      raise;
    end;
    on e:econverterror do
    begin
      e.message :='Error en el Periodo';
      maskedit1.SetFocus;
      raise;
    end;
  end;
end;


procedure Tfrmgencartera.Button1Click(Sender: TObject);
var fechaini : string;
    fechafin : string;
    fecha1 : string;
    fecha2 : string;
    interes : real;
    mora : real;
    fechacomp : tdatetime;
    edad : real;
    i : integer;
    estcost : real;
    per : string;
    per1 : string;
    mes : string;
    ano : string;
    tp_doc : string;
    num_doc : string;
    yaper : string;
    sicar : string;
begin
  try
    i := 0;
    liberarmemoria;
    yaper := 'SI';
    per := maskedit1.Text;
    per1 := maskedit2.Text;
    ano := copy(per1,4,4);
    if copy(per1,1,2) = '01' then
       mes := '02/';
    if copy(per1,1,2) = '02' then
       mes := '03/';
    if copy(per1,1,2) = '03' then
       mes := '04/';
    if copy(per1,1,2) = '04' then
       mes := '05/';
    if copy(per1,1,2) = '05' then
       mes := '06/';
    if copy(per1,1,2) = '06' then
       mes := '07/';
    if copy(per1,1,2) = '07' then
       mes := '08/';
    if copy(per1,1,2) = '08' then
       mes := '09/';
    if copy(per1,1,2) = '09' then
       mes := '10/';
    if copy(per1,1,2) = '10' then
       mes := '11/';
    if copy(per1,1,2) = '11' then
       mes := '12/';
    if copy(per1,1,2) = '12' then
    begin
      mes := '01/';
      ano := floattostr(strtofloat(copy(per1,4,4))+1)
    end;
    per1 := mes + ano;
    ano := copy(per,4,4);
    while per <> per1 do
    begin
      fecha1 := '01/01/'+copy(per,4,4);
      if copy(per,1,2) <> '02' then
      begin
        fechaini := '01/'+per;
        fechafin := '30/'+per;
      end;
      if copy(per,1,2) = '02' then
      begin
        fechaini := '01/'+per;
        fechafin := '28/'+per;
      end;
      fecha2 := '01/'+per;
      qrymccartera1.Close;
      qrymccartera1.Params[0].Value := per;
      qrymccartera1.Open;
      if qrymccartera1.RecordCount > 0 then
      begin
        yaper := 'NO';
        if messagedlg('Para el periodo '+per+' ya fue generada cartera, Desea Volver a Generar',mtconfirmation,[mbyes,mbno],0)=mryes then
        begin
          qrymccartera1.Close;
          qrymccartera1.Close;
          qrymccartera1.Params[0].Value :=per;
          qrymccartera1.Open;
          qrymccartera1.First;
          yaper := 'SI';
          while not qrymccartera1.Eof do
          begin
            frmcartera.Database1.StartTransaction;
            qrymccartera1.Delete;
            qrymccartera1.First;
            frmcartera.Database1.Commit;
          end;
        end;
      end;
      if yaper = 'SI' then
      begin
        if copy(per,1,2) = '02' then
           fechacomp := strtodate('01/'+per);
        if copy(per,1,2) <> '02' then
           fechacomp := strtodate('01/'+per);
        qrymcvalores.Close;
        qrymcvalores.Params[0].Value :=strtodate(fecha1);
        qrymcvalores.Open;
        qrymcvalores.RecordCount;
        qrymcintereses.Close;
        qrymcintereses.Open;
        qrymcintereses.Last;
        interes := qrymcinteresesval_mensual.Value;
        qrymcafiactivos.Close;
        qrymcafiactivos.Params[0].Value :=strtodate(fechaini);
        qrymcafiactivos.Params[1].Value :=strtodate(fechafin);
        qrymcafiactivos.Params[2].Value :=strtodate(fechaini);
        qrymcafiactivos.Open;
        qrymcafiactivos.First;
        i:=0;
//        gauge1.MinValue :=0;
        edit2.Text := floattostr(qrymcafiactivos.RecordCount);
    //    gauge1.Progress :=0;
        edit3.Text := per;
        frmgencartera.Refresh;
        while not qrymcafiactivos.Eof do
        begin
          i := i + 1;
          edit1.Text := floattostr(i);
          frmgencartera.refresh;
          sicar:='S';
          if sicar = 'S' then
          begin
            qrymcafiemp.Close;
            qrymcafiemp.Params[0].Value:=qrymcafiactivostip_documento.Value;
            qrymcafiemp.Params[1].Value:=qrymcafiactivosnum_documento.Value;
            qrymcafiemp.Params[2].Value:=strtodate(fechafin);
            qrymcafiemp.Params[3].Value:=strtodate(fechaini);
            qrymcafiemp.Open;
            if qrymcafiemp.RecordCount > 0 then
            begin
              qrymcafiemp.First;
              while not qrymcafiemp.Eof do
              begin
                qrymccartera.Close;
                qrymccartera.Prepare;
                qrymccartera.Params[0].Value :=qrymcafiactivosnum_documento.Value;
                qrymccartera.Params[1].Value :=qrymcafiactivostip_documento.Value;
                qrymccartera.Params[2].Value :=per;
                qrymccartera.Params[3].Value :=qrymcafiemptip_documento_emp.Value;
                qrymccartera.Params[4].Value :=qrymcafiempnum_documento_emp.Value;
                qrymccartera.Open;
                if qrymccartera.RecordCount = 0 then
                begin
                  qrymcrelafiliados.Close;
                  qrymcrelafiliados.Prepare;
                  qrymcrelafiliados.Params[0].Value :=qrymcafiemptip_documento_afi.Value;
                  qrymcrelafiliados.Params[1].Value :=qrymcafiempnum_documento_afi.Value;
                  qrymcrelafiliados.Params[2].Value :=strtodate(fechafin);
                  qrymcrelafiliados.Params[3].Value :=strtodate(fechaini);
                  qrymcrelafiliados.Open;
                  if qrymcrelafiliados.RecordCount > 0 then
                  begin
                    qrymcrelafiliados.First;
                    while not qrymcrelafiliados.Eof do
                    begin
                      qrymcaficiu.Close;
                      qrymcaficiu.Prepare;
                      qrymcaficiu.Params[0].Value :=qrymcrelafiliadostip_documento_ben.Value;
                      qrymcaficiu.Params[1].Value :=qrymcrelafiliadosnum_documento_ben.Value;
                      qrymcaficiu.Open;
                      if qrymcaficiu.RecordCount > 0 then
                      begin
                        qrymcaficiu.First;
                        qryrevcar.Close;
                        qryrevcar.Prepare;
                        qryrevcar.Params[0].Value := qrymcaficiutip_documento.Value;
                        qryrevcar.Params[1].Value := qrymcaficiunum_documento.Value;
                        qryrevcar.Params[2].Value := qrymcafiemptip_documento_emp.Value;
                        qryrevcar.Params[3].Value := qrymcafiempnum_documento_emp.Value;
                        qryrevcar.Params[4].Value := per;
                        qryrevcar.Open;
                        if qryrevcar.RecordCount = 0 then
                        begin
                          qrycartera.Close;
                          qrycartera.Prepare;
                          qrycartera.Params[0].Value := qrymcaficiutip_documento.Value;
                          qrycartera.Params[1].Value := qrymcaficiunum_documento.Value;
                          qrycartera.Params[2].Value := qrymcafiemptip_documento_emp.Value;
                          qrycartera.Params[3].Value := qrymcafiempnum_documento_emp.Value;
                          qrycartera.Params[4].Value := per;
                          qrycartera.Open;
                          if qrycartera.RecordCount = 0 then
                          begin
                            qrycartera.Insert;
                            qrycarteratip_documento.Value := qrymcaficiutip_documento.Value;
                            qrycarteranum_documento.Value := qrymcaficiunum_documento.Value;
                            qrycarteratip_documento_emp.Value := qrymcafiemptip_documento_emp.Value;
                            qrycarteranum_documento_emp.Value := qrymcafiempnum_documento_emp.Value;
                            qrycarteracod_sucursal_emp.Value := qrymcafiempcod_sucursal.Value;
                            qrycarteraper_compensacion.Value := per;
                            qrycarteratipo_mora.Value := '1';
                            qrycarteracod_tipo_afil.Value := qrymcaficiucod_tipo_afil.Value;
                            if qrymcaficiucod_tipo_afil.Value = 'C' then
                            begin
                              qrycarteravalor_mora.Value := Roundto(( qrymcafiempval_sueldo_afil.Value*12)/100,0);
                              qrycarterainteres.Value := Roundto((( qrymcafiempval_sueldo_afil.Value*12)/100)*(interes/100),0);
                            end;
                            if qrymcaficiucod_tipo_afil.Value <> 'C' then
                               qrycarteravalor_mora.Value := 0;
                            if qrymcaficiucod_tipo_afil.Value = 'A' then
                            begin
                              qrycarteratipo_mora.Value := '2';
                            end;
                            qrycarteravalor_upc.Value := qrymcvaloresupc.value/12;
                            qrycarteratip_documento_cot.Value := qrymcrelafiliadostip_documento_cot.Value;
                            qrycarteranum_documento_cot.Value := qrymcrelafiliadosnum_documento_cot.Value;
                            qrycartera.Post;
                          end;
                          qrycartera.Close;
                          qryrevcar.Close;
                        end;
                      end;
                      qrymcaficiu.Close;
                      qrymcrelafiliados.Next;
                    end;
                    qrymcrelafiliados.Close;
                  end;
                end;
                qrymcafiemp.Next;
              end;
            end;
            qrymcafiemp.Close;
          end;
//          gauge1.Progress := gauge1.Progress + 1;
  //        frmgencartera.Refresh;
          qrymcafiactivos.Next;
          if i mod 500 = 0 then
             liberarmemoria;
        end;
        qrymcafiactivos.Close;
        qrymccarafi.Close;
        qrymccarafi.Params[0].Value :=per;
        qrymccarafi.Open;
        qrymccarafi.First;
        gauge2.MinValue := 0;
        gauge2.MaxValue :=  qrymccarafi.RecordCount;
        gauge2.Progress := 0;
        while not qrymccarafi.Eof do
        begin
          qrymcaficar.Close;
          qrymcaficar.Params[0].Value := qrymccarafitip_documento.Value;
          qrymcaficar.Params[1].Value := qrymccarafinum_documento.Value;
          qrymcaficar.Open;
          qrymcaficar.First;
          if qrymcaficar.RecordCount > 0 then
          begin
            qrymeses.Close;
            qrymeses.Prepare;
            qrymeses.Params[0].Value := qrymccarafitip_documento.Value;
            qrymeses.Params[0].Value := qrymccarafinum_documento.Value;
            qrymeses.Open;
            qrymeses.First;
            if qrymesesmeses.Value >= 2 then
            begin
              qrymcaficar.Edit;
              qrymcaficarcod_estado.Value := 'S';
              qrymcaficarfec_ultima_nov.Value := fechacomp;
              qrymcaficar.Post;
            end;
          end;
          qrymeses.Close;
          qrymcaficar.Close;
          gauge2.Progress := gauge2.Progress + 1;
          frmgencartera.Refresh;
          qrymccarafi.Next;
        end;
      end;
      ano := copy(per,4,4);
      if copy(per,1,2) = '01' then
         mes := '02/';
      if copy(per,1,2) = '02' then
         mes := '03/';
      if copy(per,1,2) = '03' then
         mes := '04/';
      if copy(per,1,2) = '04' then
         mes := '05/';
      if copy(per,1,2) = '05' then
         mes := '06/';
      if copy(per,1,2) = '06' then
         mes := '07/';
      if copy(per,1,2) = '07' then
         mes := '08/';
      if copy(per,1,2) = '08' then
         mes := '09/';
      if copy(per,1,2) = '09' then
         mes := '10/';
      if copy(per,1,2) = '10' then
         mes := '11/';
      if copy(per,1,2) = '11' then
         mes := '12/';
      if copy(per,1,2) = '12' then
      begin
        mes := '01/';
        ano := floattostr(strtofloat(copy(per,4,4))+1);
      end;
      per := mes + ano;
    end;
    showmessage('Finalizado el Proceso de Generacion de Cartera');
    qrymccartera1.Close;
    qrymcvalores.Close;
    qrymcintereses.Close;
    qrymcafiactivos.Close;
    qrymcnovegre.Close;
    qrymcnoving.Close;
    qrymcaficar.Close;
    qrymccarafi.Close;
    qrymcestcos1.Close;
    qrymcgrpeta.Close;
    qrymcaficiu.Close;
    qrymcrelafiliados.Close;
    qrymcafiemp.Close;
    qrymccartera.Close
  except
    frmcartera.Database1.Rollback;
    showmessage('Error en la Base de Datos');
  end;
end;

procedure Tfrmgencartera.MaskEdit2Exit(Sender: TObject);
var t : string;
    mes  : real;
    mes1 : real;
    ano  : real;
    ano1 : real;
begin
    try
    t := copy(maskedit2.Text,1,2);
    if t = '' then
       t:='15';
    mes := strtofloat(t);
    if (mes > 12) or (mes = 0) then
    begin
      showmessage('Error en el Periodo');
      maskedit2.SetFocus;
    end;
    ano := strtofloat(copy(maskedit2.Text,4,4));
    mes1 := strtofloat(copy(maskedit1.Text,1,2));
    ano1 := strtofloat(copy(maskedit1.Text,4,4));
    if ano < ano1 then
    begin
      showmessage('El Periodo Final Debe Ser Mayor Al Inicial');
      maskedit2.SetFocus;
    end;
    if (ano = ano1) and (mes < mes1) then
    begin
      showmessage('El Periodo Final Debe Ser Mayor Al Inicial');
      maskedit2.SetFocus;
    end;
  except
    on e:EDBEditerror do
    begin
      e.message :='Error en el Periodo';
      maskedit2.SetFocus;
      raise;
    end;
    on e:econverterror do
    begin
      e.message :='Error en el Periodo';
      maskedit2.SetFocus;
      raise;
    end;
  end;
end;

procedure Tfrmgencartera.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   frmgencartera.Free;
end;

end.


{          qrymcnovegre.Close;
          qrymcnovegre.Params[0].Value:=qrymcafiactivostip_documento.Value;
          qrymcnovegre.Params[1].Value:=qrymcafiactivosnum_documento.Value;
          qrymcnovegre.Open;
          qrymcnovegre.Last;
          if qrymcnovegre.RecordCount > 0 then
          begin
            if qrymcnovegrefec_evento.Value < fechacomp then
            begin
              qrymcnoving.Close;
              qrymcnoving.Params[0].Value:=qrymcafiactivostip_documento.Value;
              qrymcnoving.Params[1].Value:=qrymcafiactivosnum_documento.Value;
              qrymcnoving.Open;
              qrymcnoving.Last;
              if qrymcnoving.RecordCount > 0 then
              begin
                if (qrymcnovegrefec_evento.Value > qrymcnovingfec_evento.Value) then
                   sicar := 'N';
                if (qrymcnovingfec_evento.Value > fechacomp) then
                   sicar := 'N';
              end;
            end;
          end;}

