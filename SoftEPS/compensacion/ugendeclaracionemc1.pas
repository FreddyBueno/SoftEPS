unit ugendeclaracionemc1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  Tformatomc1 = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formatomc1: Tformatomc1;

implementation

uses dmcompensacion;

{$R *.dfm}
function espacios(tamano:integer;cadena:string):string;
var i : integer;
    cadena2 : string;
begin
  cadena2 := '';
  for i:=1 to tamano-length(cadena) do
      cadena2 := ' '+cadena2;
  espacios := cadena2 + cadena;
end;


procedure Tformatomc1.Button1Click(Sender: TObject);
var filtro,dec: string;
    outputfile : textfile;
    a,b,c,d,e : string;
    ini,fin : string;
    cmcn,cmce,cmpn,cmpe : real;
    bmcn,bmce,bmpn,bmpe : real;
    amcn,amce,ampn,ampe : real;
    tcmcn,tcmce,tcmpn,tcmpe : real;
    tbmcn,tbmce,tbmpn,tbmpe : real;
    tamcn,tamce,tampn,tampe : real;
    tdzn, tdze, vuzn, vuze, vupc : real;
    ttdzn, ttdze, tvuzn, tvuze, tvupc : real;
    tna,tvu,tap,tas : real;
    anoestcos : string;
    estcos : string;
    upcdn, upcde : string;
    filtro1 : string;
    sexo : string;
    ano : tdatetime;
    cod, tel,fax,rep, nom,dir :string;
begin
  dmcompensa.qrymccompania.close;
  dmcompensa.qrymccompania.open;
  dmcompensa.qrymccompania.first;
  cod := dmcompensa.qrymccompaniaCOD_EPS.Value;
  tel := dmcompensa.qrymccompaniaTEL_EPS.Value;
  fax := dmcompensa.qrymccompaniaFAX_EPS.Value;
  rep := dmcompensa.qrymccompaniaREP_LEGAL.Value;
  nom := dmcompensa.qrymccompaniaNOM_EPS.Value;
  dir := dmcompensa.qrymccompaniaDIR_EPS.Value;
  dmcompensa.qrymccompania.Close;
  filtro1 := datetostr(DateTimePicker1.date);
  savedialog1.Execute;
  if savedialog1.FileName <> '' then
  begin
    assignfile (outputfile, savedialog1.FileName);
    rewrite(outputfile);
    closefile (outputfile);
    append(outputfile);
    dmcompensa.mcqrymcdeclaracion2.close;
    dmcompensa.mcqrymcdeclaracion2.Prepare;
    dmcompensa.mcqrymcdeclaracion2.Params[0].Value := strtodate(filtro1);
    dmcompensa.mcqrymcdeclaracion2.open;
    with dmcompensa.mcqrymcdeclaracion2 do
    begin
      dmcompensa.mcqrymcdeclaracion2.First;
      while not dmcompensa.mcqrymcdeclaracion2.Eof do
      begin
        tcmcn := 0;
        tcmce := 0;
        tcmpn := 0;
        tcmpe := 0;
        tbmcn := 0;
        tbmce := 0;
        tbmpn := 0;
        tbmpe := 0;
        tamcn := 0;
        tamce := 0;
        tampn := 0;
        tampe := 0;
        dec:= floattostr(dmcompensa.mcqrymcdeclaracion2num_declaracion.value);
        a:= '';
        b:= '';
        c:= '';
        d:= '';
        e:= '';
        if (dmcompensa.mcqrymcdeclaracion2cot_tipo_decla.Value = 0) and (dmcompensa.mcqrymcdeclaracion2TIPO_CIERRE.Value = 'D') then
        begin
          a := 'X';
          b := '';
        end;
        if (dmcompensa.mcqrymcdeclaracion2cot_tipo_decla.Value <> 0) or (dmcompensa.mcqrymcdeclaracion2TIPO_CIERRE.Value <> 'D') then
        begin
          b := 'X';
          a := '';
        end;
        anoestcos :=copy(dmcompensa.mcqrymcdeclaracion2periodo_compensado.value,4,4);
        anoestcos := anoestcos+'/01/01/' ;
        ano := strtodate('01/01/'+copy(dmcompensa.mcqrymcdeclaracion2periodo_compensado.value,4,4));
        filtro:=datetostr(DateTimePicker1.date);
        dmcompensa.qrymcvalores.close;
        dmcompensa.qrymcvalores.Prepare;
        dmcompensa.qrymcvalores.Params[0].Value :=ano;
        dmcompensa.qrymcvalores.open;
        upcdn := floattostr(dmcompensa.qrymcvaloresval_upc_dia_normal.Value);
        upcde := floattostr(dmcompensa.qrymcvaloresval_upc_dia_especial.Value);
        writeln(outputfile,'');
        writeln(outputfile,'1.IDENTIFICACION DE LA EPS:'+copy(nom,1,28)+'  2. DECLARACION                         3. PERIODOS');
        writeln(outputfile,'+-----------------------------------------------------+  +----------------------------------+   +---------------------------------------+');
        writeln(outputfile,'|1.1 Codigo               |'+cod+'                     |  |2.1 INICIAL              |   '+espacios(1,a)+'    |   |3.1 PERIODO COMPENSACION |   '+espacios(7,dmcompensa.mcqrymcdeclaracion2periodo_compensado.value)+'   |');
        writeln(outputfile,'|1.2 No. de la Declaracion|                  '+espacios(8,dec)+' |  |2.2 ADICION              |  '+espacios(1,b)+'     |   |         (MM/AAAA)       |             |');
        writeln(outputfile,'|1.3 Direc. Domicilio Prin|'+espacios(24,copy(dir,1,24))+'   |  |2.3 CORRECCION           |   '+espacios(1,c)+'    |   |-------------------------+-------------|');
        writeln(outputfile,'|1.4 Telefono/Fax         |'+espacios(24,copy((tel+'/'+fax),1,24))+'   |  |2.3.1 REEMPLAZA A        |        |   |3.2 FECHA DECLARACION    |'+espacios(12,datetostr(dmcompensa.mcqrymcdeclaracion2fecha_declaracion.value))+' |');
        writeln(outputfile,'+-----------------------------------------------------+  |2.4 SALDOS NO CONCILIADOS|   '+espacios(1,d)+'    |   |      (DD/MM/AAAA)       |             |');
        writeln(outputfile,'                                                         |                         |   '+espacios(1,d)+'    |   +---------------------------------------+');
        writeln(outputfile,'                                                         +----------------------------------+');
        writeln(outputfile,'4. AFILIADOS EN LA COMPENSACION DE MADRES COMUNITARIAS COTIZANTES');
        writeln(outputfile,'+------------+-------------------------------------------------------------------------------+');
        writeln(outputfile,'| 4.1 GRUPO  |                       4.2 NUMERO DE MADRES COMUNITARIAS                       |');
        writeln(outputfile,'| ETAREO     |-------------------------------------------------------------------------------|');
        writeln(outputfile,'|            |4.2.1 MES COMPLETO | 4.2.2 MES PARCIAL |4.2.3 TOT.AFILIADOS EN LA COMPENSACION |');
        writeln(outputfile,'|            |-------------------+-------------------+-------------------+-------------------+');
        writeln(outputfile,'|            |UPC NORM.|UPC ESPEC|UPC NORM.|UPC ESPEC|      UPC NORM.    |     UPC ESPEC     |');
        writeln(outputfile,'+------------+---------+---------+---------+---------+-------------------+-------------------+');
        dmcompensa.tbletareos.Open;
        with dmcompensa.tbletareos do
        begin
          dmcompensa.tbletareos.First;
          while not dmcompensa.tbletareos.Eof do
          begin
            dmcompensa.mcqrymcetabas.close;
            dmcompensa.mcqrymcetabas.Prepare;
            dmcompensa.mcqrymcetabas.Params[0].Value :=dmcompensa.mcqrymcdeclaracion2num_declaracion.value;
            dmcompensa.mcqrymcetabas.Params[1].Value :=dmcompensa.tbletareoscod_grupo_eta.value;
            dmcompensa.mcqrymcetabas.open;
            if dmcompensa.mcqrymcetabas.RecordCount = 0 then
            begin
              ini := floattostr(dmcompensa.tbletareosini_grupo_eta.Value);
              fin := floattostr(dmcompensa.tbletareosfin_grupo_eta.Value);
              sexo := ' ';
              if dmcompensa.tbletareossexo_grupo_eta.Value <> 'N' then
                 sexo :=dmcompensa.tbletareossexo_grupo_eta.Value;
              if dmcompensa.tbletareoscod_grupo_eta.Value <> 7 then
                 writeln(outputfile,'| '+espacios(2,ini)+' - '+espacios(2,fin)+' '+espacios(1,sexo)+'  |        0|        0|        0|        0|                  0|                  0|');
              if dmcompensa.tbletareoscod_grupo_eta.Value = 7 then
                 writeln(outputfile,'| '+espacios(2,ini)+' Y '+'Más'+' '+espacios(1,sexo)+' |        0|        0|        0|        0|                  0|                  0|');
            end;
            if dmcompensa.mcqrymcetabas.RecordCount > 0 then
            begin
              ini := floattostr(dmcompensa.tbletareosini_grupo_eta.Value);
              fin := floattostr(dmcompensa.tbletareosfin_grupo_eta.Value);
              sexo := ' ';
              if dmcompensa.tbletareossexo_grupo_eta.Value <> 'N' then
                 sexo :=dmcompensa.tbletareossexo_grupo_eta.Value;
              cmcn := dmcompensa.mcqrymcetabastot_cotizantes_mcn.value;
              cmce := dmcompensa.mcqrymcetabastot_cotizantes_mce.value;
              cmpn := dmcompensa.mcqrymcetabastot_cotizantes_mpn.value;
              cmpe := dmcompensa.mcqrymcetabastot_cotizantes_mpe.value;
//              bmcn := dmcompensa.mcqrymcetabastot_beneficiarios_mcn.value;
 //             bmce := dmcompensa.mcqrymcetabastot_beneficiarios_mce.value;
  //            bmpn := dmcompensa.mcqrymcetabastot_beneficiarios_mpnl.value;
   //           bmpe := dmcompensa.mcqrymcetabastot_beneficiarios_mpe.value;
              amcn := dmcompensa.mcqrymcetabastot_afiliados_mcn.value + dmcompensa.mcqrymcetabastot_afiliados_mpn.value;
              amce := dmcompensa.mcqrymcetabastot_afiliados_mce.value + dmcompensa.mcqrymcetabastot_afiliados_mpe.value;
//              ampn := dmcompensa.mcqrymcetabastot_afiliados_mpn.value;
  //            ampe := dmcompensa.mcqrymcetabastot_afiliados_mpe.value;
              if dmcompensa.tbletareoscod_grupo_eta.Value <> 7 then
                 writeln(outputfile,'| '+espacios(2,ini)+' - '+espacios(2,fin)+' '+espacios(1,sexo)+'  |'+espacios(9,floattostr(cmcn))+'|'+espacios(9,floattostr(cmce))+'|'+espacios(9,floattostr(cmpn))+'|'+espacios(9,floattostr(cmpe))+'|'+espacios(19,floattostr(amcn))+'|'+espacios(19,floattostr(amce))+'|');
              if dmcompensa.tbletareoscod_grupo_eta.Value = 7 then
                 writeln(outputfile,'| '+espacios(2,ini)+' Y '+'Más'+' '+espacios(1,sexo)+' |'+espacios(9,floattostr(cmcn))+'|'+espacios(9,floattostr(cmce))+'|'+espacios(9,floattostr(cmpn))+'|'+espacios(9,floattostr(cmpe))+'|'+espacios(19,floattostr(amcn))+'|'+espacios(19,floattostr(amce))+'|');
              tcmcn := tcmcn + cmcn;
              tcmce := tcmce + cmce;
              tcmpn := tcmpn + cmpn;
              tcmpe := tcmpe + cmpe;
//              tbmcn := tbmcn + bmcn;
//              tbmce := tbmce + bmce;
//              tbmpn := tbmpn + bmpn;
//              tbmpe := tbmpe + bmpe;
              tamcn := tamcn + amcn+ampn;
              tamce := tamce + amce+ampe;
//              tampn := tampn + ampn;
//              tampe := tampe + ampe;
            end;
          next;
          end;
          writeln(outputfile,'+------------+---------+---------+---------+---------+-------------------+-------------------+');
          writeln(outputfile,'|      TOTAL |'+espacios(9,floattostr(tcmcn))+'|'+espacios(9,floattostr(tcmce))+'|'+espacios(9,floattostr(tcmpn))+'|'+espacios(9,floattostr(tcmpe))+'|'+espacios(19,floattostr(tamcn))+'|'+espacios(19,floattostr(tamce))+'|');
          writeln(outputfile,'+------------+---------+---------+---------+---------+-------------------+-------------------+');
          writeln(outputfile,'                                    5. BASES DE CALCULO PARA LA COMPENSACION DE MADRES COMUNITARIAS COTIZANTES');
          writeln(outputfile,'+------------+-----------------------------------------------------------------------------------------------------------------------+');
          writeln(outputfile,'| 5.1 GRUPO  |  5.2. ESTRUCTURA  |   5.3 ZONA NORMAL | 5.4 ZONA ESPECIAL |5.5 UPC DIA ZON NOR|5.6 UPC DIA ZON ESP| 5.7 VALOR TOT UPC |');
          writeln(outputfile,'| ETAREO     |       DE COSTO    |---------------------------------------|   $ '+espacios(10,upcdn)+'    |   $ '+espacios(10,upcde)+ '    |      A RECONOCER  |');
          writeln(outputfile,'|            |                   | NUM. DIAS COTIZA. | NUM. DIAS COTIZA. | 5.5.1 VALOR TOTAL | 5.6.1 VALOR TOTAL |      A LA EPS     |');
          writeln(outputfile,'+------------+-------------------+-------------------+-------------------+-------------------+-------------------+-------------------+');
          dmcompensa.tbletareos.First;
          ttdzn := 0;
          ttdze := 0;
          tvuzn := 0;
          tvuze := 0;
          tvupc := 0;
          while not dmcompensa.tbletareos.Eof do
          begin
            ini := floattostr(dmcompensa.tbletareosini_grupo_eta.Value);
            fin := floattostr(dmcompensa.tbletareosfin_grupo_eta.Value);
            dmcompensa.qrymcestcos.close;
            dmcompensa.qrymcestcos.Prepare;
            dmcompensa.qrymcestcos.Params[0].Value :=ano;
            dmcompensa.qrymcestcos.Params[1].Value :=dmcompensa.tbletareoscod_grupo_eta.value;
            dmcompensa.qrymcestcos.open;
            estcos := floattostr(dmcompensa.qrymcestcosval_estructura_cost.value);
            dmcompensa.mcqrymcetabas.close;
            dmcompensa.mcqrymcetabas.Prepare;
            dmcompensa.mcqrymcetabas.Params[0].Value :=dmcompensa.mcqrymcdeclaracion2num_declaracion.value;
            dmcompensa.mcqrymcetabas.Params[1].Value :=dmcompensa.tbletareoscod_grupo_eta.value;
            dmcompensa.mcqrymcetabas.open;
            if dmcompensa.mcqrymcetabas.RecordCount = 0 then
            begin
              sexo := ' ';
              if dmcompensa.tbletareossexo_grupo_eta.Value <> 'N' then
                 sexo :=dmcompensa.tbletareossexo_grupo_eta.Value;
              ini := floattostr(dmcompensa.tbletareosini_grupo_eta.Value);
              fin := floattostr(dmcompensa.tbletareosfin_grupo_eta.Value);
              if dmcompensa.tbletareoscod_grupo_eta.Value <> 7 then
                 writeln(outputfile,'| '+espacios(2,ini)+' - '+espacios(2,fin)+' '+espacios(1,sexo)+'  |'+espacios(13,format('%n',[strtofloat(estcos)]))+'      |                  0|                  0|                  0|                  0|                  0|');
              if dmcompensa.tbletareoscod_grupo_eta.Value = 7 then
                 writeln(outputfile,'| '+espacios(2,ini)+' Y '+'Más'+' '+espacios(1,sexo)+' |'+espacios(13,format('%n',[strtofloat(estcos)]))+'      |                  0|                  0|                  0|                  0|                  0|');
            end;
            if dmcompensa.mcqrymcetabas.RecordCount > 0 then
            begin
              ini := floattostr(dmcompensa.tbletareosini_grupo_eta.Value);
              fin := floattostr(dmcompensa.tbletareosfin_grupo_eta.Value);
              sexo := ' ';
              if dmcompensa.tbletareossexo_grupo_eta.Value <> 'N' then
                 sexo :=dmcompensa.tbletareossexo_grupo_eta.Value;
              tdzn := dmcompensa.mcqrymcetabastot_dias_cotznn.value;
              tdze := dmcompensa.mcqrymcetabastot_dias_cotize.value;
              vuzn := dmcompensa.mcqrymcetabastot_upc_dzn.value;
              vuze := dmcompensa.mcqrymcetabastot_upc_dze.value;
              vupc := dmcompensa.mcqrymcetabastot_valor_upc.value;
              if dmcompensa.tbletareoscod_grupo_eta.Value <> 7 then
                 writeln(outputfile,'| '+espacios(2,ini)+' - '+espacios(2,fin)+' '+espacios(1,sexo)+'  |'+espacios(13,format('%n',[strtofloat(estcos)]))+'      |'+espacios(19,copy(format('%n',[tdzn]),1,length(format('%n',[tdzn]))-3))+'|'+espacios(19,copy(format('%n',[tdze]),1,length(format('%n',[tdze]))-3))+'|'+espacios(19,format('%n',[vuzn]))+'|'+espacios(19,format('%n',[vuze]))+'|'+espacios(19,format('%n',[vupc]))+'|');
              if dmcompensa.tbletareoscod_grupo_eta.Value = 7 then
                 writeln(outputfile,'| '+espacios(2,ini)+' Y '+'Más'+' '+espacios(1,sexo)+' |'+espacios(13,format('%n',[strtofloat(estcos)]))+'      |'+espacios(19,copy(format('%n',[tdzn]),1,length(format('%n',[tdzn]))-3))+'|'+espacios(19,copy(format('%n',[tdze]),1,length(format('%n',[tdze]))-3))+'|'+espacios(19,format('%n',[vuzn]))+'|'+espacios(19,format('%n',[vuze]))+'|'+espacios(19,format('%n',[vupc]))+'|');
              ttdzn := ttdzn + tdzn;
              ttdze := ttdze + tdze;
              tvuzn := tvuzn + vuzn;
              tvuze := tvuze + vuze;
              tvupc := tvupc + vupc;
            end;
          next;
          end;
        writeln(outputfile,'+------------+-------------------+-------------------+-------------------+-------------------+-------------------+-------------------+');
        writeln(outputfile,'|     TOTAL  |                   |'+espacios(19,copy(format('%n',[ttdzn]),1,length(format('%n',[ttdzn]))-3))+'|'+espacios(19,copy(format('%n',[ttdze]),1,length(format('%n',[ttdze]))-3))+'|'+espacios(19,format('%n',[tvuzn]))+'|'+espacios(19,format('%n',[tvuze]))+'|'+espacios(19,format('%n',[tvupc]))+'|');
        writeln(outputfile,'+------------+-------------------+-------------------+-------------------+-------------------+-------------------+-------------------+');
        writeln(outputfile,'6. LIQUIDACION PARA LA COMPENSACION');
        writeln(outputfile,'+------------------------------------------+---------------------+');
        writeln(outputfile,'|                                          |  Cotizantes del 8%  |');
        writeln(outputfile,'+------------------------------------------+---------------------+');
        dmcompensa.mcqrymcliquidacion.Close;
        dmcompensa.mcqrymcliquidacion.Prepare;
        dmcompensa.mcqrymcliquidacion.Params[0].Value :=dmcompensa.mcqrymcdeclaracion2num_declaracion.Value;
        dmcompensa.mcqrymcliquidacion.Open;
        writeln(outputfile,'|6.1 Suma Ingresos Bases de Liquidacion    |'+espacios(21,format('%n',[dmcompensa.mcqrymcliquidacioning_salbase_cotiz12.value]))+'|');
        writeln(outputfile,'|6.2 Valor Total del Recaudo               |'+espacios(21,format('%n',[dmcompensa.mcqrymcliquidacionval_total_reca12.value]))+'|');
        writeln(outputfile,'|6.3 Valor Deducido en Autoliquidaciones   |'+espacios(21,format('%n',[dmcompensa.mcqrymcliquidacionval_deducido_aut12.value]))+'|');
        writeln(outputfile,'|6.4 Valor Total de Cotizaciones           |'+espacios(21,format('%n',[dmcompensa.mcqrymcliquidacionval_total_cotiz12.value]))+'|');
        writeln(outputfile,'|6.5(-) Valor de Solidaridad               |'+espacios(21,format('%n',[dmcompensa.mcqrymcliquidacionval_solidaridad_12.value]))+'|');
        writeln(outputfile,'|6.6(-) Valor de Promocion Y Prevencion    |'+espacios(21,format('%n',[dmcompensa.mcqrymcliquidacionval_pyp12.value]))+'|');
        writeln(outputfile,'|6.7(-) Provision para Incapacidades       |'+espacios(21,format('%n',[dmcompensa.mcqrymcliquidacionpro_incapacidades12.value]))+'|');
        writeln(outputfile,'|6.8 Valor Total Cotizaciones Netas        |'+espacios(21,format('%n',[dmcompensa.mcqrymcliquidacionval_cotizacion_net12.value]))+'|');
        writeln(outputfile,'|6.9 Valor de Licencias por Maternidad     |'+espacios(21,format('%n',[dmcompensa.mcqrymcliquidacionval_lincencias_mat12.value]))+'|');
        writeln(outputfile,'|6.10(-) Valor a Reconocer por UPC         |'+espacios(21,format('%n',[dmcompensa.mcqrymcliquidacionval_reconocer_upc12.value]))+'|');
        writeln(outputfile,'|6.11 Total a Pagar o a Cobrar             |'+espacios(21,format('%n',[dmcompensa.mcqrymcliquidacionval_pagcobrar_fsg12.value]))+'|');
        writeln(outputfile,'+------------------------------------------+---------------------+');
        writeln(outputfile,'|6.12 Total Subcuenta de Compensacion      |'+espacios(21,format('%n',[dmcompensa.mcqrymcliquidacionval_pagcobrar_fsg12.value]))+'|');
        writeln(outputfile,'+------------------------------------------+---------------------+');
        writeln(outputfile,'      7. LIQUIDACION DE PROMOCION Y PREVENCION                                  8. CONSIGNACIONES');
        writeln(outputfile,'+--------------------------------------------------------------+ +-----------------------------------------------------------------+');
        writeln(outputfile,'|7.1 Valor de Promocion                |'+espacios(23,format('%n',[dmcompensa.mcqrymcliquidacionval_promocion.value]))+'| |   SUBCUENTA FOSYGA            |    FECHA   |     VALOR          |');
        writeln(outputfile,'|7.2 Valor a Reconocer por Promocion   |'+espacios(23,format('%n',[dmcompensa.mcqrymcliquidacionrec_promocion.value]))+'| |-------------------------------+------------+--------------------|');
        writeln(outputfile,'|7.3 Saldo a Compensar en Promocion    |'+espacios(23,format('%n',[dmcompensa.mcqrymcliquidacionsal_compensar_prom.value]))+'| |8.1 SOLIDARIDAD                | '+espacios(10,datetostr(dmcompensa.mcqrymcliquidacionfec_consignacion_solid.value))+' |'+espacios(20,format('%n',[dmcompensa.mcqrymcliquidacionval_consignacion_solid.value]))+'|');
        writeln(outputfile,'+--------------------------------------------------------------+ |8.2 PROMOCION                  | '+espacios(10,datetostr(dmcompensa.mcqrymcliquidacionfec_consignacion_pro.value))+' |'+espacios(20,format('%n',[dmcompensa.mcqrymcliquidacionval_consignacion_promocion.value]))+'|');
        writeln(outputfile,'                                                                 |8.3 COMPENSACION               | '+espacios(10,datetostr(dmcompensa.mcqrymcliquidacionfec_consignacion_pro.value))+' |'+espacios(20,format('%n',[dmcompensa.mcqrymcliquidacionval_consignado_comp.value]))+'|');
        writeln(outputfile,'                                                                 +-----------------------------------------------------------------+');
        writeln(outputfile,'       9. INFORMACION ADICIONAL');
        writeln(outputfile,'+----------------------------------------------------------------------+');
        writeln(outputfile,'|9.1 No de Autoliquidaciones                         |'+espacios(17,copy(format('%n',[dmcompensa.mcqrymcliquidacionnum_autoliquidaciones.value]),1,length(format('%n',[dmcompensa.mcqrymcliquidacionnum_autoliquidaciones.value]))-3))+'|');
        writeln(outputfile,'|9.2 Pago por Incapacidades en el mes                |'+espacios(17,format('%n',[dmcompensa.mcqrymcliquidaciontot_incapacidades_pag.value]))+'|');
        writeln(outputfile,'|9.3 Total Cotizaciones Recaudadas no Identificadas  |'+espacios(17,format('%n',[dmcompensa.mcqrymcliquidaciontot_cotizaciones_noident.value]))+'|');
        writeln(outputfile,'|9.4 No. Total de Afiliados A La EPS                 |'+espacios(17,copy(format('%n',[dmcompensa.mcqrymcliquidacionnum_tot_afil.value]),1,length(format('%n',[dmcompensa.mcqrymcliquidacionnum_tot_afil.value]))-3))+'|');
        writeln(outputfile,'|9.5 Total Madres Comunitarias                       |'+espacios(17,copy(format('%n',[dmcompensa.mcqrymcliquidaciontot_madres_comu.value]),1,length(format('%n',[dmcompensa.mcqrymcliquidaciontot_madres_comu.value]))-3))+'|');
        writeln(outputfile,'|9.5.1 Total Madres Comunitarias No Compensadas      |'+espacios(17,copy(format('%n',[dmcompensa.mcqrymcliquidaciontot_madres_comu.value-dmcompensa.mcqrymcliquidaciontot_madrescomu_comp.value]),1,length(format('%n',[dmcompensa.mcqrymcliquidaciontot_madres_comu.value-dmcompensa.mcqrymcliquidaciontot_madrescomu_comp.value]))-3))+'|');
        writeln(outputfile,'|9.6 Total Valor Aportes Netos Mes Anterior          |'+espacios(17,format('%n',[dmcompensa.mcqrymcliquidacionval_aportes_neto.value]))+'|');
        writeln(outputfile,'|9.7 Total Incapacidades Pagas                       |'+espacios(17,format('%n',[dmcompensa.mcqrymcliquidaciontot_incapacidades_pag.value]))+'|');
        writeln(outputfile,'|9.8 Total Licencias Maternidad Pagadas mes anterior |'+espacios(17,format('%n',[dmcompensa.mcqrymcliquidacionval_licenciaas_pag.value]))+'|');
        writeln(outputfile,'|9.9 Total Valor Aportes Netos Mes Anterior          |'+espacios(17,format('%n',[dmcompensa.mcqrymcliquidacionval_aportes_neto.value]))+'|');
        writeln(outputfile,'+----------------------------------------------------+-----------------+');
        writeln(outputfile,'');
        writeln(outputfile,'');
        writeln(outputfile,'11. FIRMA REPRESENTANTE LEGAL: ___________________________________________');
        writeln(outputfile,'');
        writeln(outputfile,'');
        writeln(outputfile,'12. NOMBRE                   : '+espacios(30,rep)+'                                   SOFTEPS VER 1.0');
        writeln(outputfile,'');
        writeln(outputfile,'');
        writeln(outputfile,'');
      end;
      next;
      end;
    end;
    closefile (outputfile);
  end;
end;

end.
