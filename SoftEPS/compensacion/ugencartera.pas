unit ugencartera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ComCtrls,math,dateutils, ExtCtrls, Gauges;

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
    Gauge1: TGauge;
    Gauge2: TGauge;
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

uses dmcompensacion;

{$R *.dfm}

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
    edad : integer;
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
      dmcompensa.qrymccartera1.Close;
      dmcompensa.qrymccartera1.Params[0].Value := per;
      dmcompensa.qrymccartera1.Open;
      if dmcompensa.qrymccartera1.RecordCount > 0 then
      begin
        yaper := 'NO';
        if messagedlg('Para el periodo '+per+' ya fue generada cartera, Desea Volver a Generar',mtconfirmation,[mbyes,mbno],0)=mryes then
        begin
          dmcompensa.qrymccartera1.Close;
          dmcompensa.qrymccartera2.Close;
          dmcompensa.qrymccartera2.Params[0].Value :=per;
          dmcompensa.qrymccartera2.Open;
          dmcompensa.qrymccartera2.First;
          yaper := 'SI';
          while not dmcompensa.qrymccartera2.Eof do
          begin
            dmcompensa.qrymccartera2.Delete;
            dmcompensa.qrymccartera2.First;
          end;
        end;
      end;
      if yaper = 'SI' then
      begin
        if copy(per,1,2) = '02' then

           fechacomp := strtodate('28/'+per);
        if copy(per,1,2) <> '02' then
           fechacomp := strtodate('30/'+per);
        dmcompensa.qrymcvalores.Close;
        dmcompensa.qrymcvalores.Params[0].Value :=fecha1;
        dmcompensa.qrymcvalores.Open;
        dmcompensa.qrymcintereses.Close;
        dmcompensa.qrymcintereses.Open;
        dmcompensa.qrymcintereses.Last;
        interes := dmcompensa.qrymcinteresesval_mensual.Value;
        dmcompensa.qrymcafiactivos.Close;
        dmcompensa.qrymcafiactivos.Params[0].Value :=fechaini;
        dmcompensa.qrymcafiactivos.Open;
        dmcompensa.qrymcafiactivos.First;
        i:=0;
        dmcompensa.tblcartera.Open;
        gauge1.MinValue :=0;
        gauge1.MaxValue := dmcompensa.qrymcafiactivos.RecordCount;
        gauge1.Progress :=0;
        while not dmcompensa.qrymcafiactivos.Eof do
        begin
          sicar:='S';
          dmcompensa.qrymcnovegre.Close;
          dmcompensa.qrymcnovegre.Params[0].Value:=dmcompensa.qrymcafiactivostip_documento.Value;
          dmcompensa.qrymcnovegre.Params[1].Value:=dmcompensa.qrymcafiactivosnum_documento.Value;
          dmcompensa.qrymcnovegre.Open;
          dmcompensa.qrymcnovegre.Last;
          if dmcompensa.qrymcnovegre.RecordCount > 0 then
          begin
            if dmcompensa.qrymcnovegrefec_evento.Value < fechacomp then
            begin
              dmcompensa.qrymcnoving.Close;
              dmcompensa.qrymcnoving.Params[0].Value:=dmcompensa.qrymcafiactivostip_documento.Value;
              dmcompensa.qrymcnoving.Params[1].Value:=dmcompensa.qrymcafiactivosnum_documento.Value;
              dmcompensa.qrymcnoving.Open;
              dmcompensa.qrymcnoving.Last;
              if dmcompensa.qrymcnoving.RecordCount > 0 then
              begin
                if (dmcompensa.qrymcnovegrefec_evento.Value > dmcompensa.qrymcnovingfec_evento.Value) then
                   sicar := 'N';
                if (dmcompensa.qrymcnovingfec_evento.Value > fechacomp) then
                   sicar := 'N';
              end;
            end;
          end;
          if sicar = 'S' then
          begin
            dmcompensa.qrymcafiemp.Close;
            dmcompensa.qrymcafiemp.Params[0].Value:=dmcompensa.qrymcafiactivostip_documento.Value;
            dmcompensa.qrymcafiemp.Params[1].Value:=dmcompensa.qrymcafiactivosnum_documento.Value;
            dmcompensa.qrymcafiemp.Params[2].Value:=fechafin;
            dmcompensa.qrymcafiemp.Params[2].Value:=fechaini;
            dmcompensa.qrymcafiemp.Open;
            if dmcompensa.qrymcafiemp.RecordCount > 0 then
            begin
              with dmcompensa.qrymcafiemp do
              begin
                dmcompensa.qrymcafiemp.First;
                while not dmcompensa.qrymcafiemp.Eof do
                begin
                  dmcompensa.qrymccartera.Close;
                  dmcompensa.qrymccartera.Prepare;
                  dmcompensa.qrymccartera.Params[0].Value :=dmcompensa.qrymcafiactivosnum_documento.Value;
                  dmcompensa.qrymccartera.Params[1].Value :=dmcompensa.qrymcafiactivostip_documento.Value;
                  dmcompensa.qrymccartera.Params[2].Value :=per;
                  dmcompensa.qrymccartera.Params[3].Value :=dmcompensa.qrymcafiemptip_documento_emp.Value;
                  dmcompensa.qrymccartera.Params[4].Value :=dmcompensa.qrymcafiempnum_documento_emp.Value;
                  dmcompensa.qrymccartera.Params[5].Value :=dmcompensa.qrymcafiempcod_sucursal.Value;
                  dmcompensa.qrymccartera.Open;
                  if dmcompensa.qrymccartera.RecordCount = 0 then
                  begin
                    dmcompensa.qrymcrelafiliados.Close;
                    dmcompensa.qrymcrelafiliados.Prepare;
                    dmcompensa.qrymcrelafiliados.Params[0].Value :=dmcompensa.qrymcafiemptip_documento_afi.Value;
                    dmcompensa.qrymcrelafiliados.Params[1].Value :=dmcompensa.qrymcafiempnum_documento_afi.Value;
                    dmcompensa.qrymcrelafiliados.Params[2].Value :=fechafin;
                    dmcompensa.qrymcrelafiliados.Params[3].Value :=fechaini;
                    dmcompensa.qrymcrelafiliados.Open;
                    if dmcompensa.qrymcrelafiliados.RecordCount > 0 then
                    begin
                      with dmcompensa.qrymcrelafiliados do
                      begin
                        dmcompensa.qrymcrelafiliados.First;
                        while not dmcompensa.qrymcrelafiliados.Eof do
                        begin
                          dmcompensa.qrymcaficiu.Close;
                          dmcompensa.qrymcaficiu.Prepare;
                          dmcompensa.qrymcaficiu.Params[0].Value :=dmcompensa.qrymcrelafiliadostip_documento_ben.Value;
                          dmcompensa.qrymcaficiu.Params[1].Value :=dmcompensa.qrymcrelafiliadosnum_documento_ben.Value;
                          dmcompensa.qrymcaficiu.Open;
                          if dmcompensa.qrymcaficiu.RecordCount > 0 then
                          begin
                            with dmcompensa.qrymcaficiu do
                            begin
                              dmcompensa.qrymcaficiu.First;
                              while not dmcompensa.qrymcaficiu.Eof do
                              begin
                                edad := MonthsBetween(dmcompensa.qrymcaficiufec_nacimiento.Value,fechacomp) div 12;
                                if (tp_doc <> dmcompensa.qrymcaficiutip_documento.Value) or (num_doc <> dmcompensa.qrymcaficiunum_documento.Value) then
                                begin
                                  dmcompensa.qrymcgrpeta.Close;
                                  dmcompensa.qrymcgrpeta.Params[0].Value :=edad;
                                  dmcompensa.qrymcgrpeta.Params[1].Value :=edad;
                                  dmcompensa.qrymcgrpeta.Params[2].Value :=dmcompensa.qrymcaficiucod_sexo.Value;
                                  dmcompensa.qrymcgrpeta.Open;
                                  dmcompensa.qrymcestcos1.Close;
                                  dmcompensa.qrymcestcos1.Prepare;
                                  dmcompensa.qrymcestcos1.Params[0].Value:=fecha1;
                                  dmcompensa.qrymcestcos1.Params[1].Value:=floattostr(dmcompensa.qrymcgrpetacod_grupo_eta.Value);
                                  dmcompensa.qrymcestcos1.Open;
                                  estcost := dmcompensa.qrymcestcosval_estructura_cost.Value;
                                  dmcompensa.DataSource5.DataSet := dmcompensa.tblcartera;
                                  tp_doc  := dmcompensa.qrymcaficiutip_documento.Value;
                                  num_doc := dmcompensa.qrymcaficiunum_documento.Value;
                                  dmcompensa.tblcartera.Insert;
                                  dmcompensa.tblcarteratip_documento.Value := dmcompensa.qrymcaficiutip_documento.Value;
                                  dmcompensa.tblcarteranum_documento.Value := dmcompensa.qrymcaficiunum_documento.Value;
                                  dmcompensa.tblcarteratip_documento_emp.Value := dmcompensa.qrymcafiemptip_documento_emp.Value;
                                  dmcompensa.tblcarteranum_documento_emp.Value := dmcompensa.qrymcafiempnum_documento_emp.Value;
                                  dmcompensa.tblcarteracod_sucursal_emp.Value := dmcompensa.qrymcafiempcod_sucursal.Value;
                                  dmcompensa.tblcarteraper_compensacion.Value := per;
                                  dmcompensa.tblcarteratipo_mora.Value := '1';
                                  dmcompensa.tblcarteracod_tipo_afil.Value := dmcompensa.qrymcaficiucod_tipo_afil.Value;
                                  if dmcompensa.qrymcaficiucod_tipo_afil.Value = 'C' then
                                  begin
                                    dmcompensa.tblcarteravalor_mora.Value := Roundto((dmcompensa.qrymcafiempval_sueldo_afil.Value*12)/100,0);
                                    dmcompensa.tblcarterainteres.Value := ((dmcompensa.qrymcafiempval_sueldo_afil.Value*12)/100)*(interes/100);
                                  end;
                                  if dmcompensa.qrymcaficiucod_tipo_afil.Value <> 'C' then
                                     dmcompensa.tblcarteravalor_mora.Value := 0;
                                  if (dmcompensa.qrymcaficiupor_alto_rie.Value = 'S') and (dmcompensa.qrymcaficiucod_tipo_afil.Value <> 'A') then
                                     dmcompensa.tblcarteravalor_upc.Value := Roundto(estcost * dmcompensa.qrymcvaloresval_upc_dia_especial.Value* 30,0);
                                  if (dmcompensa.qrymcaficiupor_alto_rie.Value <> 'S') and (dmcompensa.qrymcaficiucod_tipo_afil.Value <> 'A') then
                                     dmcompensa.tblcarteravalor_upc.Value := Roundto(estcost * dmcompensa.qrymcvaloresval_upc_dia_normal.Value * 30,0);
                                  if (dmcompensa.qrymcaficiupor_alto_rie.Value = 'S') and (dmcompensa.qrymcaficiucod_tipo_afil.Value = 'A') then
                                  begin
                                    dmcompensa.tblcarteravalor_upc.Value := Roundto(((((estcost * dmcompensa.qrymcvaloresupc.Value+(dmcompensa.qrymcvaloresupc.Value*dmcompensa.qrymcvaloresriesgo.Value))/12)+(dmcompensa.qrymcvalorespyp.Value/12))*dmcompensa.qrymcvaloressol.Value)+(((estcost*dmcompensa.qrymcvaloresupc.Value+(dmcompensa.qrymcvaloresupc.Value*dmcompensa.qrymcvaloresriesgo.Value))* 30)+(dmcompensa.qrymcvalorespyp.Value/12)),0);
                                    dmcompensa.tblcarteratipo_mora.Value := '2';
                                  end;
                                  if (dmcompensa.qrymcaficiupor_alto_rie.Value <> 'S') and (dmcompensa.qrymcaficiucod_tipo_afil.Value = 'A') then
                                  begin
                                    dmcompensa.tblcarteravalor_upc.Value := Roundto(((((estcost * dmcompensa.qrymcvaloresupc.Value)/12)+(dmcompensa.qrymcvalorespyp.Value/12))*dmcompensa.qrymcvaloressol.Value)+(((estcost*dmcompensa.qrymcvaloresupc.Value)/12)+(dmcompensa.qrymcvalorespyp.Value/12)),0);
                                    dmcompensa.tblcarteratipo_mora.Value := '2';
                                  end;
                                  dmcompensa.tblcarteratip_documento_cot.Value := dmcompensa.qrymcrelafiliadostip_documento_cot.Value;
                                  dmcompensa.tblcarteranum_documento_cot.Value := dmcompensa.qrymcrelafiliadosnum_documento_cot.Value;
                                  dmcompensa.tblcartera.Post;
                                end;
                                dmcompensa.qrymcaficiu.Next;
                              end;
                            end;
                          end;
                          dmcompensa.qrymcaficiu.Close;
                          dmcompensa.qrymcrelafiliados.Next;
                        end;
                      end;
                     dmcompensa.qrymcrelafiliados.Close;
                    end;
                  end;
                  dmcompensa.qrymcafiemp.Next;
                end;
              dmcompensa.qrymcafiemp.Close;
              end;
            end;
          end;
          gauge1.Progress := gauge1.Progress + 1;
          edit3.Text := per;
          frmgencartera.Refresh;
          dmcompensa.qrymcafiactivos.Next;
        end;
        dmcompensa.qrymcafiactivos.Close;
        dmcompensa.qrymccarafi.Close;
        dmcompensa.qrymccarafi.Params[0].Value :=per;
        dmcompensa.qrymccarafi.Open;
        dmcompensa.qrymccarafi.First;
        gauge2.MinValue := 0;
        gauge2.MaxValue := dmcompensa.qrymccarafi.RecordCount;
        gauge2.Progress := 0;
        while not dmcompensa.qrymccarafi.Eof do
        begin
          dmcompensa.qrymcaficar.Close;
          dmcompensa.qrymcaficar.Params[0].Value :=dmcompensa.qrymccarafitip_documento.Value;
          dmcompensa.qrymcaficar.Params[1].Value :=dmcompensa.qrymccarafinum_documento.Value;
          dmcompensa.qrymcaficar.Open;
          dmcompensa.qrymcaficar.First;
          if dmcompensa.qrymcaficar.RecordCount > 0 then
          begin
            dmcompensa.qrymcaficar.Edit;
            dmcompensa.qrymcaficarcod_estado.Value := 'S';
            dmcompensa.qrymcaficarfec_ultima_nov.Value := fechacomp;
            dmcompensa.qrymcaficar.Post;
          end;
          gauge2.Progress := gauge2.Progress + 1;
          frmgencartera.Refresh;
          dmcompensa.qrymccarafi.Next;
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
        ano := floattostr(strtofloat(copy(per,4,4))+1)
      end;
      per := mes + ano;
    end;
    showmessage('Finalizado el Proceso de Generacion de Cartera');
  except
    dmcompensa.Database1.Rollback;
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
   action:=cafree;
end;

end.
