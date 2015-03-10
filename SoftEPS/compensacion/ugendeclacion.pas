unit ugendeclacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tfrmgendecla = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgendecla: Tfrmgendecla;

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



procedure Tfrmgendecla.Button1Click(Sender: TObject);
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
  savedialog1.Execute;
  if savedialog1.FileName <> '' then
  begin
    assignfile (outputfile, savedialog1.FileName);
    rewrite(outputfile);
    closefile (outputfile);
    append(outputfile);
    dmcompensa.qrymcdeclaracion3.close;
    dmcompensa.qrymcdeclaracion3.Prepare;
    dmcompensa.qrymcdeclaracion3.Params[0].Value := edit1.text;
    dmcompensa.qrymcdeclaracion3.open;
    with dmcompensa.qrymcdeclaracion3 do
    begin
      dmcompensa.qrymcdeclaracion3.First;
      while not dmcompensa.qrymcdeclaracion3.Eof do
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
        dec:= floattostr(dmcompensa.qrymcdeclaracion3num_declaracion.value);
        a:= '';
        b:= '';
        c:= '';
        d:= '';
        e:= '';
        if (dmcompensa.qrymcdeclaracion3cot_tipo_decla.Value = 0) and (dmcompensa.qrymcdeclaracion3TIPO_CIERRE.Value = 'D') then
        begin
          a := 'X';
          b := '';
        end;
        if (dmcompensa.qrymcdeclaracion3cot_tipo_decla.Value <> 0) or (dmcompensa.qrymcdeclaracion3TIPO_CIERRE.Value <> 'D') then
        begin
          b := 'X';
          a := '';
        end;
//        if dmcompensa.qrymcdeclaracion3cot_tipo_decla.Value = 2 then
 //          c := 'X';
  //      if dmcompensa.qrymcdeclaracion3cot_tipo_decla.Value = 3 then
   //        d := 'X';
    //    if dmcompensa.qrymcdeclaracion3cot_tipo_decla.Value = 4 then
     //      e := 'X';
        anoestcos :=copy(dmcompensa.qrymcdeclaracion3periodo_compensado.value,4,4);
        anoestcos := anoestcos+'/01/01/' ;
        ano := strtodate('01/01/'+copy(dmcompensa.qrymcdeclaracion3periodo_compensado.value,4,4));
        dmcompensa.qrymcvalores.close;
        dmcompensa.qrymcvalores.Prepare;
        dmcompensa.qrymcvalores.Params[0].Value :=ano;
        dmcompensa.qrymcvalores.open;
        upcdn := floattostr(dmcompensa.qrymcvaloresval_upc_dia_normal.Value);
        upcde := floattostr(dmcompensa.qrymcvaloresval_upc_dia_especial.Value);
        writeln(outputfile,'');
        writeln(outputfile,'1.IDENTIFICACION DE LA EPS:'+copy(nom,1,28)+'  2. DECLARACION                         3. PERIODOS');
        writeln(outputfile,'+-----------------------------------------------------+  +----------------------------------+   +---------------------------------------+');
        writeln(outputfile,'|1.1 Codigo               |'+cod+'                     |  |2.1 INICIAL              |   '+espacios(1,a)+'    |   |3.1 PERIODO COMPENSACION |   '+espacios(7,dmcompensa.qrymcdeclaracion2periodo_compensado.value)+'   |');
        writeln(outputfile,'|1.2 No. de la Declaracion|                  '+espacios(8,dec)+' |  |2.2 ADICION              |  '+espacios(1,b)+'     |   |         (MM/AAAA)       |             |');
        writeln(outputfile,'|1.3 Direc. Domicilio Prin|'+espacios(24,copy(dir,1,24))+'   |  |2.3 CORRECCION           |   '+espacios(1,c)+'    |   |-------------------------+-------------|');
        writeln(outputfile,'|1.4 Telefono/Fax         |'+espacios(24,copy((tel+'/'+fax),1,24))+'   |  |2.3.1 REEMPLAZA A        |        |   |3.2 FECHA DECLARACION    |'+espacios(12,datetostr(dmcompensa.qrymcdeclaracion2fecha_declaracion.value))+' |');
        writeln(outputfile,'+-----------------------------------------------------+  |2.4 SALDOS NO CONCILIADOS|   '+espacios(1,d)+'    |   |      (DD/MM/AAAA)       |             |');
        writeln(outputfile,'                                                         |2.5 SALDOS NO CONCILIADOS|   '+espacios(1,d)+'    |   +---------------------------------------+');
        writeln(outputfile,'                                                         +----------------------------------+');
        writeln(outputfile,'                                                       4. AFILIADOS EN LA COMPENSACION');
        writeln(outputfile,'+------------+-----------------------------------------------------------------------------------------------------------------------+');
        writeln(outputfile,'| 4.1 GRUPO  |        4.2 NUMERO DE COTIZANTES       |       4.3 NUMERO DE BENEFICIARIOS     |  4.4. TOTAL AFILIADOS EN COMPENSACION |');
        writeln(outputfile,'| ETAREO     |-----------------------------------------------------------------------------------------------------------------------|');
        writeln(outputfile,'|            |4.2.1 MES COMPLETO | 4.2.2 MES PARCIAL |4.3.1 MES COMPLETO | 4.3.2 MES PARCIAL |4.4.1 MES COMPLETO |4.4.2 MES PARCIAL  |');
        writeln(outputfile,'|            |-------------------+-------------------+-------------------+-------------------+-------------------+-------------------+');
        writeln(outputfile,'|            |UPC NORM.|UPC ESPEC|UPC NORM.|UPC ESPEC|UPC NORM.|UPC ESPEC|UPC NORM.|UPC ESPEC|UPC NORM.|UPC ESPEC|UPC NORM.|UPC ESPEC|');
        writeln(outputfile,'+------------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+');
        dmcompensa.tbletareos.Open;
        with dmcompensa.tbletareos do
        begin
          dmcompensa.tbletareos.First;
          while not dmcompensa.tbletareos.Eof do
          begin
            dmcompensa.qrymcetabas.close;
            dmcompensa.qrymcetabas.Prepare;
            dmcompensa.qrymcetabas.Params[0].Value :=dmcompensa.qrymcdeclaracion3num_declaracion.value;
            dmcompensa.qrymcetabas.Params[1].Value :=dmcompensa.tbletareoscod_grupo_eta.value;
            dmcompensa.qrymcetabas.open;
            if dmcompensa.qrymcetabas.RecordCount = 0 then
            begin
              ini := floattostr(dmcompensa.tbletareosini_grupo_eta.Value);
              fin := floattostr(dmcompensa.tbletareosfin_grupo_eta.Value);
              sexo := ' ';
              if dmcompensa.tbletareossexo_grupo_eta.Value <> 'N' then
                 sexo :=dmcompensa.tbletareossexo_grupo_eta.Value;
              if dmcompensa.tbletareoscod_grupo_eta.Value <> 7 then
                 writeln(outputfile,'| '+espacios(2,ini)+' - '+espacios(2,fin)+' '+espacios(1,sexo)+'  |        0|        0|        0|        0|        0|        0|        0|        0|        0|        0|        0|        0|');
              if dmcompensa.tbletareoscod_grupo_eta.Value = 7 then
                 writeln(outputfile,'| '+espacios(2,ini)+' Y '+'Más'+' '+espacios(1,sexo)+' |        0|        0|        0|        0|        0|        0|        0|        0|        0|        0|        0|        0|');
            end;
            if dmcompensa.qrymcetabas.RecordCount > 0 then
            begin
              ini := floattostr(dmcompensa.tbletareosini_grupo_eta.Value);
              fin := floattostr(dmcompensa.tbletareosfin_grupo_eta.Value);
              sexo := ' ';
              if dmcompensa.tbletareossexo_grupo_eta.Value <> 'N' then
                 sexo :=dmcompensa.tbletareossexo_grupo_eta.Value;
              cmcn := dmcompensa.qrymcetabastot_cotizantes_mcn.value;
              cmce := dmcompensa.qrymcetabastot_cotizantes_mce.value;
              cmpn := dmcompensa.qrymcetabastot_cotizantes_mpn.value;
              cmpe := dmcompensa.qrymcetabastot_cotizantes_mpe.value;
              bmcn := dmcompensa.qrymcetabastot_beneficiarios_mcn.value;
              bmce := dmcompensa.qrymcetabastot_beneficiarios_mce.value;
              bmpn := dmcompensa.qrymcetabastot_beneficiarios_mpnl.value;
              bmpe := dmcompensa.qrymcetabastot_beneficiarios_mpe.value;
              amcn := dmcompensa.qrymcetabastot_afiliados_mcn.value;
              amce := dmcompensa.qrymcetabastot_afiliados_mce.value;
              ampn := dmcompensa.qrymcetabastot_afiliados_mpn.value;
              ampe := dmcompensa.qrymcetabastot_afiliados_mpe.value;
              if dmcompensa.tbletareoscod_grupo_eta.Value <> 7 then
                 writeln(outputfile,'| '+espacios(2,ini)+' - '+espacios(2,fin)+' '+espacios(1,sexo)+'  |'+espacios(9,floattostr(cmcn))+'|'+espacios(9,floattostr(cmce))+'|'+espacios(9,floattostr(cmpn))+'|'+espacios(9,floattostr(cmpe))+'|'+espacios(9,floattostr(bmcn))+'|'+espacios(9,floattostr(bmce))+'|'+espacios(9,floattostr(bmpn))+'|'+espacios(9,floattostr(bmpe))+'|'+espacios(9,floattostr(amcn))+'|'+espacios(9,floattostr(amce))+'|'+espacios(9,floattostr(ampn))+'|'+espacios(9,floattostr(ampe))+'|');
              if dmcompensa.tbletareoscod_grupo_eta.Value = 7 then
                 writeln(outputfile,'| '+espacios(2,ini)+' Y '+'Más'+' '+espacios(1,sexo)+' |'+espacios(9,floattostr(cmcn))+'|'+espacios(9,floattostr(cmce))+'|'+espacios(9,floattostr(cmpn))+'|'+espacios(9,floattostr(cmpe))+'|'+espacios(9,floattostr(bmcn))+'|'+espacios(9,floattostr(bmce))+'|'+espacios(9,floattostr(bmpn))+'|'+espacios(9,floattostr(bmpe))+'|'+espacios(9,floattostr(amcn))+'|'+espacios(9,floattostr(amce))+'|'+espacios(9,floattostr(ampn))+'|'+espacios(9,floattostr(ampe))+'|');
              tcmcn := tcmcn + cmcn;
              tcmce := tcmce + cmce;
              tcmpn := tcmpn + cmpn;
              tcmpe := tcmpe + cmpe;
              tbmcn := tbmcn + bmcn;
              tbmce := tbmce + bmce;
              tbmpn := tbmpn + bmpn;
              tbmpe := tbmpe + bmpe;
              tamcn := tamcn + amcn;
              tamce := tamce + amce;
              tampn := tampn + ampn;
              tampe := tampe + ampe;
            end;
          next;
          end;
          writeln(outputfile,'+------------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+');
          writeln(outputfile,'|      TOTAL |'+espacios(9,floattostr(tcmcn))+'|'+espacios(9,floattostr(tcmce))+'|'+espacios(9,floattostr(tcmpn))+'|'+espacios(9,floattostr(tcmpe))+'|'+espacios(9,floattostr(tbmcn))+'|'+espacios(9,floattostr(tbmce))+'|'+espacios(9,floattostr(tbmpn))+'|'+espacios(9,floattostr(tbmpe))+'|'+espacios(9,floattostr(tamcn))+'|'+espacios(9,floattostr(tamce))+'|'+espacios(9,floattostr(tampn))+'|'+espacios(9,floattostr(tampe))+'|');
          writeln(outputfile,'+------------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+');
          writeln(outputfile,'                                             5. BASES DE CALCULO PARA LA COMPENSACION');
          writeln(outputfile,'+------------+-----------------------------------------------------------------------------------------------------------------------+');
          writeln(outputfile,'| 5.1 GRUPO  |  5.2. ESTRUCTURA  |   5.3 ZONA NORMAL | 5.4 ZONA ESPECIAL |5.5 UPC DIA ZON NOR|5.6 UPC DIA ZON ESP| 5.7 VALOR TOT UPC |');
          writeln(outputfile,'| ETAREO     |       DE COSTO    |---------------------------------------|   $ '+espacios(10,upcdn)+'    |   $ '+espacios(10,upcde)+ '    |      A RECONOCER  |');
          writeln(outputfile,'|            |                   | NUM. DIAS AFILIA. | NUM. DIAS AFILIA. | 5.5.1 VALOR TOTAL | 5.6.1 VALOR TOTAL |      A LA EPS     |');
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
            dmcompensa.qrymcetabas.close;
            dmcompensa.qrymcetabas.Prepare;
            dmcompensa.qrymcetabas.Params[0].Value :=dmcompensa.qrymcdeclaracion3num_declaracion.value;
            dmcompensa.qrymcetabas.Params[1].Value :=dmcompensa.tbletareoscod_grupo_eta.value;
            dmcompensa.qrymcetabas.open;
            if dmcompensa.qrymcetabas.RecordCount = 0 then
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
            if dmcompensa.qrymcetabas.RecordCount > 0 then
            begin
              ini := floattostr(dmcompensa.tbletareosini_grupo_eta.Value);
              fin := floattostr(dmcompensa.tbletareosfin_grupo_eta.Value);
              sexo := ' ';
              if dmcompensa.tbletareossexo_grupo_eta.Value <> 'N' then
                 sexo :=dmcompensa.tbletareossexo_grupo_eta.Value;
              tdzn := dmcompensa.qrymcetabastot_dias_cotznn.value;
              tdze := dmcompensa.qrymcetabastot_dias_cotize.value;
              vuzn := dmcompensa.qrymcetabastot_upc_dzn.value;
              vuze := dmcompensa.qrymcetabastot_upc_dze.value;
              vupc := dmcompensa.qrymcetabastot_valor_upc.value;
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
        writeln(outputfile,'                                         6. LIQUIDACION PARA LA COMPENSACION');
        writeln(outputfile,'+------------------------------------------+---------------------+---------------------+');
        writeln(outputfile,'|                                          |  Cotizantes del 8%  |  Cotizantes del 12% |');
        writeln(outputfile,'+------------------------------------------+---------------------+---------------------+');
        dmcompensa.qrymcliquidacion.Close;
        dmcompensa.qrymcliquidacion.Prepare;
        dmcompensa.qrymcliquidacion.Params[0].Value :=dmcompensa.qrymcdeclaracion3num_declaracion.Value;
        dmcompensa.qrymcliquidacion.Open;
        writeln(outputfile,'|6.1 Suma Ingresos Bases de Liquidacion    |'+espacios(21,format('%n',[dmcompensa.qrymcliquidacioning_salbase_cotiz8.value]))+'|'+espacios(21,format('%n',[dmcompensa.qrymcliquidacioning_salbase_cotiz12.value]))+'|');
        writeln(outputfile,'|6.2 Valor Total del Recaudo               |'+espacios(21,format('%n',[dmcompensa.qrymcliquidacionval_total_reca8.value]))+'|'+espacios(21,format('%n',[dmcompensa.qrymcliquidacionval_total_reca12.value]))+'|');
        writeln(outputfile,'|6.3 Valor Deducido en Autoliquidaciones   |'+espacios(21,format('%n',[dmcompensa.qrymcliquidacionval_deducido_aut8.value]))+'|'+espacios(21,format('%n',[dmcompensa.qrymcliquidacionval_deducido_aut12.value]))+'|');
        writeln(outputfile,'|6.4 Valor Total de Cotizaciones           |'+espacios(21,format('%n',[dmcompensa.qrymcliquidacionval_total_cotiz8.value]))+'|'+espacios(21,format('%n',[dmcompensa.qrymcliquidacionval_total_cotiz12.value]))+'|');
        writeln(outputfile,'|6.5(-) Valor de Solidaridad               |'+espacios(21,format('%n',[dmcompensa.qrymcliquidacionval_solidaridad_8.value]))+'|'+espacios(21,format('%n',[dmcompensa.qrymcliquidacionval_solidaridad_12.value]))+'|');
        writeln(outputfile,'|6.6(-) Valor de Promocion Y Prevencion    |'+espacios(21,format('%n',[dmcompensa.qrymcliquidacionval_pyp8.value]))+'|'+espacios(21,format('%n',[dmcompensa.qrymcliquidacionval_pyp12.value]))+'|');
        writeln(outputfile,'|6.7(-) Provision para Incapacidades       |'+espacios(21,format('%n',[dmcompensa.qrymcliquidacionpro_incapacidades8.value]))+'|'+espacios(21,format('%n',[dmcompensa.qrymcliquidacionpro_incapacidades12.value]))+'|');
        writeln(outputfile,'|6.8 Valor Total Cotizaciones Netas        |'+espacios(21,format('%n',[dmcompensa.qrymcliquidacionval_cotizacion_net8.value]))+'|'+espacios(21,format('%n',[dmcompensa.qrymcliquidacionval_cotizacion_net12.value]))+'|');
        writeln(outputfile,'|6.9 Valor de Licencias por Maternidad     |'+espacios(21,format('%n',[dmcompensa.qrymcliquidacionval_licencias_mat8.value]))+'|'+espacios(21,format('%n',[dmcompensa.qrymcliquidacionval_lincencias_mat12.value]))+'|');
        writeln(outputfile,'|6.10(-) Valor a Reconocer por UPC         |'+espacios(21,format('%n',[dmcompensa.qrymcliquidacionval_reconocer_upc8.value]))+'|'+espacios(21,format('%n',[dmcompensa.qrymcliquidacionval_reconocer_upc12.value]))+'|');
        writeln(outputfile,'|6.11 Total a Pagar o a Cobrar             |'+espacios(21,format('%n',[dmcompensa.qrymcliquidacionval_pagcobrar_fsg8.value]))+'|'+espacios(21,format('%n',[dmcompensa.qrymcliquidacionval_pagcobrar_fsg12.value]))+'|');
        writeln(outputfile,'+------------------------------------------+-------------------------------------------+');
        writeln(outputfile,'|6.12 Total Subcuenta de Compensacion      |'+espacios(43,format('%n',[dmcompensa.qrymcliquidacionval_pagcobrar_fsg12.value]))+'|');
        writeln(outputfile,'+------------------------------------------+-------------------------------------------+');
        writeln(outputfile,'      7. LIQUIDACION DE PROMOCION Y PREVENCION                                  8. CONSIGNACIONES');
        writeln(outputfile,'+--------------------------------------------------------------+ +-----------------------------------------------------------------+');
        writeln(outputfile,'|7.1 Valor de Promocion                |'+espacios(23,format('%n',[dmcompensa.qrymcliquidacionval_promocion.value]))+'| |   SUBCUENTA FOSYGA            |    FECHA   |     VALOR          |');
        writeln(outputfile,'|7.2 Valor a Reconocer por Promocion   |'+espacios(23,format('%n',[dmcompensa.qrymcliquidacionrec_promocion.value]))+'| |-------------------------------+------------+--------------------|');
        writeln(outputfile,'|7.3 Saldo a Compensar en Promocion    |'+espacios(23,format('%n',[dmcompensa.qrymcliquidacionsal_compensar_prom.value]))+'| |8.1 SOLIDARIDAD                | '+espacios(10,datetostr(dmcompensa.qrymcliquidacionfec_consignacion_solid.value))+' |'+espacios(20,format('%n',[dmcompensa.qrymcliquidacionval_consignacion_solid.value]))+'|');
        writeln(outputfile,'+--------------------------------------------------------------+ |8.2 PROMOCION                  | '+espacios(10,datetostr(dmcompensa.qrymcliquidacionfec_consignacion_pro.value))+' |'+espacios(20,format('%n',[dmcompensa.qrymcliquidacionval_consignacion_promocion.value]))+'|');
        writeln(outputfile,'                                                                 |8.3 COMPENSACION               | '+espacios(10,datetostr(dmcompensa.qrymcliquidacionfec_consignacion_pro.value))+' |'+espacios(20,format('%n',[dmcompensa.qrymcliquidacionval_consignado_comp.value]))+'|');
        writeln(outputfile,'                                                                 +-----------------------------------------------------------------+');
        writeln(outputfile,'              9. LIQUIDACION DE APORTE DE SOLIDARIDAD AFILIADOS ADICIONALES');
        writeln(outputfile,'+-----------------------------------------------------------------------------------------------+');
        writeln(outputfile,'|9.1 GRUPO ETAREO |9.1.1 NUMERO |9.1.2 VALOR UPC |9.1.3 APORTES PROMOCION |9.1.4 10%SOLIDARIDAD |');
        writeln(outputfile,'+-----------------------------------------------------------------------------------------------+');
        dmcompensa.tbletareos.First;
        tna := 0;
        tvu := 0;
        tap := 0;
        tas := 0;
        while not dmcompensa.tbletareos.Eof do
        begin
          ini := floattostr(dmcompensa.tbletareosini_grupo_eta.Value);
          fin := floattostr(dmcompensa.tbletareosfin_grupo_eta.Value);
          sexo := ' ';
          if dmcompensa.tbletareossexo_grupo_eta.Value <> 'N' then
             sexo :=dmcompensa.tbletareossexo_grupo_eta.Value;
          dmcompensa.qrymcbasesdep.Close;
          dmcompensa.qrymcbasesdep.Prepare;
          dmcompensa.qrymcbasesdep.Params[0].Value :=dmcompensa.qrymcdeclaracion3num_declaracion.value;
          dmcompensa.qrymcbasesdep.Params[1].Value :=dmcompensa.tbletareoscod_grupo_eta.value;
          dmcompensa.qrymcbasesdep.Open;
          if dmcompensa.qrymcbasesdep.RecordCount = 0 then
          begin
             if dmcompensa.tbletareoscod_grupo_eta.Value <> 7 then
                writeln(outputfile,'|    '+espacios(2,ini)+' - '+espacios(2,fin)+' '+espacios(1,sexo)+'    |            0|               0|                       0|                    0|');
             if dmcompensa.tbletareoscod_grupo_eta.Value = 7 then
                writeln(outputfile,'|    '+espacios(2,ini)+' Y '+'Más'+' '+espacios(1,sexo)+'   |            0|               0|                       0|                    0|');
          end;
          if dmcompensa.qrymcbasesdep.RecordCount > 0 then
          begin
             if dmcompensa.tbletareoscod_grupo_eta.Value <> 7 then
                writeln(outputfile,'|    '+espacios(2,ini)+' - '+espacios(2,fin)+' '+espacios(1,sexo)+'    |'+espacios(13,floattostr(dmcompensa.qrymcbasesdeptot_dependientes.value))+'|'+espacios(16,format('%n',[dmcompensa.qrymcbasesdepval_upc_dependientes.value]))+'|'+espacios(24,format('%n',[dmcompensa.qrymcbasesdepval_promocion.value]))+'|'+espacios(21,format('%n',[dmcompensa.qrymcbasesdepval_solidaridad.value]))+'|');
             if dmcompensa.tbletareoscod_grupo_eta.Value = 7 then
                writeln(outputfile,'|    '+espacios(2,ini)+' Y '+'Más'+' '+espacios(1,sexo)+'   |'+espacios(13,floattostr(dmcompensa.qrymcbasesdeptot_dependientes.value))+'|'+espacios(16,format('%n',[dmcompensa.qrymcbasesdepval_upc_dependientes.value]))+'|'+espacios(24,format('%n',[dmcompensa.qrymcbasesdepval_promocion.value]))+'|'+espacios(21,format('%n',[dmcompensa.qrymcbasesdepval_solidaridad.value]))+'|');
          end;
        tna := tna + dmcompensa.qrymcbasesdeptot_dependientes.value;
        tvu := tvu + dmcompensa.qrymcbasesdepval_upc_dependientes.value;
        tap := tap + dmcompensa.qrymcbasesdepval_promocion.value;
        tas := tas + dmcompensa.qrymcbasesdepval_solidaridad.value;
        next
        end;
        writeln(outputfile,'+-----------------------------------------------------------------------------------------------+');
        writeln(outputfile,'|          TOTAL  |'+espacios(13,format('%n',[tna]))+'|'+espacios(16,format('%n',[tvu]))+'|'+espacios(24,format('%n',[tap]))+'|'+espacios(21,format('%n',[tas]))+'|');
        writeln(outputfile,'+-----------------------------------------------------------------------------------------------+');
        writeln(outputfile,'       10. INFORMACION ADICIONAL');
        writeln(outputfile,'+-----------------------------------------------------------------------+-------------+-------------------+');
        writeln(outputfile,'|10.1 No de Autoliquidaciones                         |'+espacios(17,floattostr(dmcompensa.qrymcliquidacionnum_autoliquidaciones.value))+'|             |                   |');
        writeln(outputfile,'|10.2 Pago por Incapacidades en el mes                |'+espacios(17,format('%n',[dmcompensa.qrymcliquidaciontot_incapacidades_pag.value]))+'|             |                   |');
        writeln(outputfile,'|10.3 Total Cotizaciones Recaudadas no Identificadas  |'+espacios(17,format('%n',[dmcompensa.qrymcliquidaciontot_cotizaciones_noident.value]))+'|             |                   |');
        writeln(outputfile,'|10.4 No. Total de Afiliados inscritos                |'+espacios(17,floattostr(dmcompensa.qrymcliquidacionnum_tot_afil.value))+'|             |                   |');
        writeln(outputfile,'|10.5 No. Total de Cotizantes 8%                      |'+espacios(17,format('%n',[dmcompensa.qrymcliquidacionnum_total_cotiz8.value]))+'|             |                   |');
        writeln(outputfile,'|10.6 Total Afiliados Independientes                  |'+espacios(17,copy(format('%n',[dmcompensa.qrymcliquidaciontot_afiliados_ind.value]),1,length(format('%n',[dmcompensa.qrymcliquidaciontot_afiliados_ind.value]))-3))+'|  IBC Total  |'+espacios(19,format('%n',[dmcompensa.qrymcliquidacionibc_afiliados_ind.value]))+'|');
        writeln(outputfile,'|10.7 Total Madres Comunitarias                       |'+espacios(17,copy(format('%n',[dmcompensa.qrymcliquidaciontot_madres_comu.value]),1,length(format('%n',[dmcompensa.qrymcliquidaciontot_madres_comu.value]))-3))+'|  IBC Total  |'+espacios(19,format('%n',[dmcompensa.qrymcliquidacionibc_madres_comu.value]))+'|');
        writeln(outputfile,'|10.8 Total Madres Comunitarias Compensadas           |'+espacios(17,copy(format('%n',[dmcompensa.qrymcliquidaciontot_madrescomu_comp.value]),1,length(format('%n',[dmcompensa.qrymcliquidaciontot_madrescomu_comp.value]))-3))+'|  IBC Total  |'+espacios(19,format('%n',[dmcompensa.qrymcliquidacionibc_madrescomu_comp.value]))+ '|');
        writeln(outputfile,'|10.9 Miembros Adicionales Dependientes Compensados   |'+espacios(17,floattostr(dmcompensa.qrymcliquidaciontot_miembros_adicdep.value))+'|  UPC Total  |'+espacios(19,format('%n',[dmcompensa.qrymcliquidacionrec_miembros_adicdep.value]))+'|');
        writeln(outputfile,'|10.10 Total Incapacidades Pagas                      |'+espacios(17,format('%n',[dmcompensa.qrymcliquidaciontot_incapacidades_pag.value]))+'|             |                   |');
        writeln(outputfile,'|10.11 Valor Total del Recaudo Bruto del Mes Anterior |'+espacios(17,format('%n',[dmcompensa.qrymcliquidacionval_recaudo_brut.value]))+'|             |                   |');
        writeln(outputfile,'|10.12 Total Licencias Maternidad Pagadas mes anterior|'+espacios(17,format('%n',[dmcompensa.qrymcliquidacionval_licenciaas_pag.value]))+'|             |                   |');
        writeln(outputfile,'|10.13 Total Valor Aportes Netos Mes Anterior         |'+espacios(17,format('%n',[dmcompensa.qrymcliquidacionval_aportes_neto.value]))+'|             |                   |');
        writeln(outputfile,'|10.14 Recaudo Acumulado Ciclo Periodo Compensacion   |'+espacios(17,format('%n',[dmcompensa.qrymcliquidacionrec_acumulado_per_comp.value]))+'|             |                   |');
        writeln(outputfile,'+-----------------------------------------------------+-----------------+-------------+-------------------+');
        writeln(outputfile,'');
        writeln(outputfile,'');
        writeln(outputfile,'11. FIRMA REPRESENTANTE LEGAL: ___________________________________________');
        writeln(outputfile,'');
        writeln(outputfile,'');
        writeln(outputfile,'12. NOMBRE                   : '+espacios(30,rep)+'                                   SOFTEPS VER 1.0');
        writeln(outputfile,'');
        writeln(outputfile,'');
        writeln(outputfile,'===================================================================================================================================================');
      end;
      next;
      end;
    end;
    closefile (outputfile);
  end;
end;

procedure Tfrmgendecla.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
