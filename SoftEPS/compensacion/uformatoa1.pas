unit uformatoa1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Math;

type
  Tfrmformatoa1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label13: TLabel;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmformatoa1: Tfrmformatoa1;

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


procedure Tfrmformatoa1.Button1Click(Sender: TObject);
var ano1 :string;
    fecagre :string;
    upc : real;
    riesgo : real;
    est : real;
    upces : real;
    upcdep :real;
    promdep :real;
    i : real;
    filtro,dec: string;
    outputfile : textfile;
    a,b,c,d,e : string;
    ini,fin : string;
    tazn, taze, tuzn, tuze :real;
    tuznd, tuzed, tupc, tpyp, tsol : real;
    ttazn, ttaze, ttuzn, ttuze :real;
    ttuznd, ttuzed, ttupc, ttpyp, ttsol : real;
    anoestcos : string;
    estcos : string;
    upcdn, upcde : string;
    filtro1 : string;
    sexo : string;
    ano : tdatetime;
    cod, tel,fax,rep, nom,dir :string;
begin
  dmcompensa.qryformatoa1.close;
  dmcompensa.qryformatoa1.Open;
  while not dmcompensa.qryformatoa1.eof do
  begin
    dmcompensa.qryformatoa1.Delete;
    dmcompensa.qryformatoa1.first;
  end;
  i := 0;
  dmcompensa.qrydecfa1.close;
  dmcompensa.qrydecfa1.Prepare;
  dmcompensa.qrydecfa1.Params[0].Value := datetimepicker1.Date;
  dmcompensa.qrydecfa1.Open;
  if dmcompensa.qrydecfa1.RecordCount > 0 then
  begin
    edit1.Text := floattostr(dmcompensa.qrydecfa1.RecordCount);
    frmformatoa1.Refresh;
    dmcompensa.qrydecfa1.First;
    while not dmcompensa.qrydecfa1.Eof do
    begin
      i := i + 1;
      edit2.Text := floattostr(i);
      frmformatoa1.Refresh;
      ano1 :='01/01/'+copy(dmcompensa.qrydecfa1PERIODO_COMPENSADO.Value,4,4);
      dmcompensa.qrymcvalores.Close;
      dmcompensa.qrymcvalores.Prepare;
      dmcompensa.qrymcvalores.Params[0].Value := ano1;
      dmcompensa.qrymcvalores.Open;
      dmcompensa.qrymcvalores.first;
      dmcompensa.qrymcbases.Close;
      dmcompensa.qrymcbases.Prepare;
      dmcompensa.qrymcbases.Params[0].Value := dmcompensa.qrydecfa1NUM_DECLARACION.value;
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
        if (dmcompensa.qrymcbasestip_beneficiario.Value = 'A') then
        begin
          fecagre := '01/'+dmcompensa.qrydecfa1PERIODO_COMPENSADO.Value;
          dmcompensa.qrymcbasesdepa1.Close;
          dmcompensa.qrymcbasesdepa1.Prepare;
          dmcompensa.qrymcbasesdepa1.Params[0].Value :=dmcompensa.qrymcbasesnum_declaracion.Value;
          dmcompensa.qrymcbasesdepa1.Params[1].Value :=dmcompensa.qrymcbasescod_grupo_etareo.Value;
          dmcompensa.qrymcbasesdepa1.Open;
          if dmcompensa.qrymcbasesdepa1.RecordCount = 0 then
          begin
            dmcompensa.qrymcbasesdepa1.Insert;
            dmcompensa.qrymcbasesdepa1num_declaracion.Value := dmcompensa.qrymcbasesnum_declaracion.Value;
            dmcompensa.qrymcbasesdepa1cod_grupo_eta.Value := dmcompensa.qrymcbasescod_grupo_etareo.Value;
            if dmcompensa.qrymcbasesTIP_UPC.Value = 'N' then
               dmcompensa.qrymcbasesdepa1tot_afi_zn.Value := dmcompensa.qrymcbasesnumero.Value;
            if dmcompensa.qrymcbasesTIP_UPC.Value = 'E' then
               dmcompensa.qrymcbasesdepa1tot_afi_ze.Value := dmcompensa.qrymcbasesnumero.Value;
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
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZN.Value := redondea((((upc)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZND.Value := redondea((((upc*1.85)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 5 then
                    begin
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZN.Value := redondea((((upc)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZND.Value := redondea((((upc*2.02)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 4 then
                    begin
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZN.Value := redondea((((upc)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZND.Value := redondea((((upc*3)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    begin
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZN.Value := redondea((((upc)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZND.Value := redondea((((upc)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end;
                    if (strtodate(fecagre) >= strtodate('01/03/2000')) then
                    begin
                      dmcompensa.qrymcbasesdepa1TOT_PYP.Value := redondea(((dmcompensa.qrymcupczonpyp.Value/12)/30)*dmcompensa.qrymcbasesdias.value);
                      if dmcompensa.qrymcbasescod_grupo_etareo.Value = 6 then
                      begin
                        upcdep:= redondea((((upc*1.85)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      end
                      else
                      if dmcompensa.qrymcbasescod_grupo_etareo.Value = 5 then
                      begin
                        upcdep:= redondea((((upc*2.02)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      end
                      else
                      if dmcompensa.qrymcbasescod_grupo_etareo.Value = 4 then
                      begin
                        upcdep:= redondea((((upc*3)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      end
                      else
                      begin
                        upcdep:= redondea(((upc*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      end;
                      promdep :=roundto(((dmcompensa.qrymcupczonpyp.Value/12)/30)*dmcompensa.qrymcbasesdias.value,0);
                      dmcompensa.qrymcbasesdepa1TOT_UPC.Value := (dmcompensa.qrymcbasesdepa1TOT_UPC_ZND.Value - dmcompensa.qrymcbasesdepa1TOT_UPC_ZN.Value) + (dmcompensa.qrymcbasesdepa1TOT_UPC_ZED.Value - dmcompensa.qrymcbasesdepa1TOT_UPC_ZE.Value);
                      dmcompensa.qrymcbasesdepa1TOT_SOL.Value :=redondea(((upcdep+promdep)*dmcompensa.qrymcupczonsol.Value));
                    end;
                  end;
                  if dmcompensa.qrymcbasestip_upc.Value = 'E' then
                  begin
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 6 then
                    begin
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZE.Value := redondea((((upces)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZED.Value := redondea((((upces*1.85)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 5 then
                    begin
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZE.Value := redondea((((upces)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZED.Value := redondea((((upces*2.02)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 4 then
                    begin
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZE.Value := redondea((((upces)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZED.Value := redondea((((upces*3)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    begin
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZE.Value := redondea((((upces)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZED.Value := redondea((((upces)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end;
                    if (strtodate(fecagre) >= strtodate('01/03/2000')) then
                    begin
                      dmcompensa.qrymcbasesdepa1TOT_PYP.Value := redondea(((dmcompensa.qrymcupczonpyp.Value/12)/30)*dmcompensa.qrymcbasesdias.value);
                      if dmcompensa.qrymcbasescod_grupo_etareo.Value = 6 then
                      begin
                        upcdep:= redondea((((upces*1.85)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      end
                      else
                      if dmcompensa.qrymcbasescod_grupo_etareo.Value = 5 then
                      begin
                        upcdep:= redondea((((upces*2.02)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      end
                      else
                      if dmcompensa.qrymcbasescod_grupo_etareo.Value = 4 then
                      begin
                        upcdep:= redondea((((upces*3)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      end
                      else
                      begin
                        upcdep:= redondea(((upces*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      end;
                      promdep :=roundto(((dmcompensa.qrymcupczonpyp.Value/12)/30)*dmcompensa.qrymcbasesdias.value,0);
                      dmcompensa.qrymcbasesdepa1TOT_UPC.Value := (dmcompensa.qrymcbasesdepa1TOT_UPC_ZND.Value - dmcompensa.qrymcbasesdepa1TOT_UPC_ZN.Value) + (dmcompensa.qrymcbasesdepa1TOT_UPC_ZED.Value - dmcompensa.qrymcbasesdepa1TOT_UPC_ZE.Value);
                      dmcompensa.qrymcbasesdepa1TOT_SOL.Value :=redondea(((upcdep+promdep)*dmcompensa.qrymcupczonsol.Value));
                    end;
                  end;
                end;
                next;
              end;
            end;
            dmcompensa.qrymcbasesdepa1.Post;
          end;
          if dmcompensa.qrymcbasesdepa1.RecordCount > 0 then
          begin
            dmcompensa.qrymcbasesdepa1.Edit;
            if dmcompensa.qrymcbasesUPC.Value = 'N' then
               dmcompensa.qrymcbasesdepa1tot_afi_zn.Value := dmcompensa.qrymcbasesdepa1tot_afi_zn.Value + dmcompensa.qrymcbasesnumero.Value;
            if dmcompensa.qrymcbasesUPC.Value = 'E' then
               dmcompensa.qrymcbasesdepa1tot_afi_ze.Value := dmcompensa.qrymcbasesdepa1tot_afi_ze.Value + dmcompensa.qrymcbasesnumero.Value;
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
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZN.Value := dmcompensa.qrymcbasesdepa1TOT_UPC_ZN.Value+redondea((((upc)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZND.Value := dmcompensa.qrymcbasesdepa1TOT_UPC_ZND.Value+redondea((((upc*1.85)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 5 then
                    begin
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZN.Value := dmcompensa.qrymcbasesdepa1TOT_UPC_ZN.Value+redondea((((upc)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZND.Value := dmcompensa.qrymcbasesdepa1TOT_UPC_ZND.Value+redondea((((upc*2.02)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 4 then
                    begin
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZN.Value := dmcompensa.qrymcbasesdepa1TOT_UPC_ZN.Value+redondea((((upc)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZND.Value := dmcompensa.qrymcbasesdepa1TOT_UPC_ZND.Value+redondea((((upc*3)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    begin
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZN.Value := dmcompensa.qrymcbasesdepa1TOT_UPC_ZN.Value+redondea((((upc)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZND.Value := dmcompensa.qrymcbasesdepa1TOT_UPC_ZND.Value+redondea((((upc)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end;
                    if (strtodate(fecagre) >= strtodate('01/03/2000')) then
                    begin
                      dmcompensa.qrymcbasesdepa1TOT_PYP.Value := dmcompensa.qrymcbasesdepa1TOT_PYP.Value+redondea(((dmcompensa.qrymcupczonpyp.Value/12)/30)*dmcompensa.qrymcbasesdias.value);
                      if dmcompensa.qrymcbasescod_grupo_etareo.Value = 6 then
                      begin
                        upcdep:= redondea((((upc*1.85)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      end
                      else
                      if dmcompensa.qrymcbasescod_grupo_etareo.Value = 5 then
                      begin
                        upcdep:= redondea((((upc*2.02)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      end
                      else
                      if dmcompensa.qrymcbasescod_grupo_etareo.Value = 4 then
                      begin
                        upcdep:= redondea((((upc*3)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      end
                      else
                      begin
                        upcdep:= redondea(((upc*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      end;
                      promdep :=roundto(((dmcompensa.qrymcupczonpyp.Value/12)/30)*dmcompensa.qrymcbasesdias.value,0);
                      dmcompensa.qrymcbasesdepa1TOT_UPC.Value := (dmcompensa.qrymcbasesdepa1TOT_UPC_ZND.Value - dmcompensa.qrymcbasesdepa1TOT_UPC_ZN.Value) + (dmcompensa.qrymcbasesdepa1TOT_UPC_ZED.Value - dmcompensa.qrymcbasesdepa1TOT_UPC_ZE.Value);;
                      dmcompensa.qrymcbasesdepa1TOT_SOL.Value :=dmcompensa.qrymcbasesdepval_solidaridad.Value+redondea(((upcdep+promdep)*dmcompensa.qrymcupczonsol.Value));
                    end;
                  end;
                  if dmcompensa.qrymcbasestip_upc.Value = 'E' then
                  begin
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 6 then
                    begin
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZE.Value := dmcompensa.qrymcbasesdepa1TOT_UPC_ZE.Value+redondea((((upces)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZED.Value := dmcompensa.qrymcbasesdepa1TOT_UPC_ZED.Value+redondea((((upces*1.85)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 5 then
                    begin
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZE.Value := dmcompensa.qrymcbasesdepa1TOT_UPC_ZE.Value+redondea((((upces)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZED.Value := dmcompensa.qrymcbasesdepa1TOT_UPC_ZED.Value+redondea((((upces*2.02)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    if dmcompensa.qrymcbasescod_grupo_etareo.Value = 4 then
                    begin
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZE.Value := dmcompensa.qrymcbasesdepa1TOT_UPC_ZE.Value+redondea((((upces)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZED.Value := dmcompensa.qrymcbasesdepa1TOT_UPC_ZED.Value+redondea((((upces*3)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end
                    else
                    begin
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZE.Value := dmcompensa.qrymcbasesdepa1TOT_UPC_ZE.Value+redondea((((upces)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      dmcompensa.qrymcbasesdepa1TOT_UPC_ZED.Value := dmcompensa.qrymcbasesdepa1TOT_UPC_ZED.Value+redondea((((upces)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                    end;
                    if (strtodate(fecagre) >= strtodate('01/03/2000')) then
                    begin
                      dmcompensa.qrymcbasesdepa1TOT_PYP.Value := dmcompensa.qrymcbasesdepa1TOT_PYP.Value+redondea(((dmcompensa.qrymcupczonpyp.Value/12)/30)*dmcompensa.qrymcbasesdias.value);
                      if dmcompensa.qrymcbasescod_grupo_etareo.Value = 6 then
                      begin
                        upcdep:= redondea((((upces*1.85)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      end
                      else
                      if dmcompensa.qrymcbasescod_grupo_etareo.Value = 5 then
                      begin
                        upcdep:= redondea((((upces*2.02)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      end
                      else
                      if dmcompensa.qrymcbasescod_grupo_etareo.Value = 4 then
                      begin
                        upcdep:= redondea((((upces*3)*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      end
                      else
                      begin
                        upcdep:= redondea(((upces*est/12)/30)*dmcompensa.qrymcbasesdias.value);
                      end;
                      promdep :=roundto(((dmcompensa.qrymcupczonpyp.Value/12)/30)*dmcompensa.qrymcbasesdias.value,0);
                      dmcompensa.qrymcbasesdepa1TOT_UPC.Value := (dmcompensa.qrymcbasesdepa1TOT_UPC_ZND.Value - dmcompensa.qrymcbasesdepa1TOT_UPC_ZN.Value) + (dmcompensa.qrymcbasesdepa1TOT_UPC_ZED.Value - dmcompensa.qrymcbasesdepa1TOT_UPC_ZE.Value);
                      dmcompensa.qrymcbasesdepa1TOT_SOL.Value :=dmcompensa.qrymcbasesdepa1TOT_SOL.Value+redondea(((upcdep+promdep)*dmcompensa.qrymcupczonsol.Value));
                    end;
                  end;
                end;
                next;
              end;
            end;
            dmcompensa.qrymcbasesdepa1.Post;
            dmcompensa.qrymcbasesdepa1.Close;
          end;
        end;
        dmcompensa.qrymcbases.Next;
      end;
      dmcompensa.qrydecfa1.Next;
    end;
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
      dmcompensa.qrymcdeclaracion2a1.close;
      dmcompensa.qrymcdeclaracion2a1.Prepare;
      dmcompensa.qrymcdeclaracion2a1.Params[0].Value := strtodate(filtro1);
      dmcompensa.qrymcdeclaracion2a1.open;
      with dmcompensa.qrymcdeclaracion2a1 do
      begin
        dmcompensa.qrymcdeclaracion2a1.First;
        while not dmcompensa.qrymcdeclaracion2a1.Eof do
        begin
          dec:= floattostr(dmcompensa.qrymcdeclaracion2a1num_declaracion.value);
          a:= '';
          b:= '';
          c:= '';
          d:= '';
          e:= '';
          ttazn := 0;
          ttaze := 0;
          ttuzn := 0;
          ttuze := 0;
          ttuznd := 0;
          ttuzed := 0;
          ttupc := 0;
          ttpyp := 0;
          ttsol := 0;
          anoestcos :=copy(dmcompensa.qrymcdeclaracion2a1periodo_compensado.value,4,4);
          anoestcos := anoestcos+'/01/01/' ;
          ano := strtodate('01/01/'+copy(dmcompensa.qrymcdeclaracion2a1periodo_compensado.value,4,4));
          filtro:=datetostr(DateTimePicker1.date);
          dmcompensa.qrymcvalores.close;
          dmcompensa.qrymcvalores.Prepare;
          dmcompensa.qrymcvalores.Params[0].Value :=ano;
          dmcompensa.qrymcvalores.open;
          upcdn := floattostr(dmcompensa.qrymcvaloresval_upc_dia_normal.Value);
          upcde := floattostr(dmcompensa.qrymcvaloresval_upc_dia_especial.Value);
          writeln(outputfile,'');
          writeln(outputfile,'');
          writeln(outputfile,'');
          writeln(outputfile,'');
          writeln(outputfile,'');
          writeln(outputfile,'');
          writeln(outputfile,'');
          writeln(outputfile,'+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+');
          writeln(outputfile,'|                                                                        FORMATO A1                                                                                          |');
          writeln(outputfile,'|                                                        SISTEMA GENERAL DE SEGURIDAD SOCIAL EN SALUD                                                                        |');
          writeln(outputfile,'|                                                                                                                                                                            |');
          writeln(outputfile,'|                                         FORMULARIO DE GIRO DE RECURSOS POR APORTES MIEMBROS ADICIONALES DEL GRUPO FAMILIA                                                  |');
          writeln(outputfile,'|                                                                                                                                                                            |');
          writeln(outputfile,'|                                                            FONDO DE SOLIDARIDAD Y GARANTIA - FOSYGA                                                                        |');
          writeln(outputfile,'|                                                                                                                                                                            |');
          writeln(outputfile,'+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+');
          writeln(outputfile,'');
          writeln(outputfile,'');
          writeln(outputfile,'1.IDENTIFICACION DE LA EPS:'+copy(nom,1,28)+'  2. PERIODOS');
          writeln(outputfile,'+-----------------------------------------------------+  +---------------------------------------+');
          writeln(outputfile,'|1.1 Codigo               |'+cod+'                     |  |2.1 PERIODO COMPENSACION |   '+espacios(7,dmcompensa.qrymcdeclaracion2a1periodo_compensado.value)+'   |');
          writeln(outputfile,'|1.2 No. de la Declaracion|                  '+espacios(8,dec)+' |  |         (MM/AAAA)       |             |');
          writeln(outputfile,'|1.3 Direc. Domicilio Prin|'+espacios(24,copy(dir,1,24))+'   |  |-------------------------+-------------|');
          writeln(outputfile,'|1.4 Telefono/Fax         |'+espacios(24,copy((tel+'/'+fax),1,24))+'   |  |2.2 FECHA DECLARACION    |'+espacios(12,datetostr(dmcompensa.qrymcdeclaracion2a1fecha_declaracion.value))+' |');
          writeln(outputfile,'+-----------------------------------------------------+  |      (DD/MM/AAAA)       |             |');
          writeln(outputfile,'                                                         +---------------------------------------+') ;
          writeln(outputfile,'');
          writeln(outputfile,'');
          writeln(outputfile,'3. LIQUIDACION APORTES POR AFILIADOS MIEMBROS ADICIONALES AL GRUPO FAMILIAR');
          writeln(outputfile,'+------------+-----------------------+------------+----------------------+----------------+----------------------------------------------+-------------+---------------------+');
          writeln(outputfile,'| 3.1 GRUPO  | 3.2 NUMERO AFILIADOS  |            |     3.4 VALOR UPC    |                |  3.6 VALOR TOTAL UPC |                       |             |3.9 10% SOLIDARIDAD A|');
          writeln(outputfile,'| ETAREO     | MIEMBROS  ADICIONALES |     3.3    |                      | 3.5 NUMERO UPC |                      | 3.7 VALOR UPC A GIRAR |             |  GIRAR AL FOSYGA    |');
          writeln(outputfile,'|            |----------+------------+ ESTRUCTURA |----------+-----------+    PAGAR DEC.  |-----------+----------+AL FOSYGA SUBCUENTA DE | 3.8  APORTE |   SUBCUENTA  DE     |');
          writeln(outputfile,'|            |   ZONA   |    ZONA    |  DE COSTO  |   ZONA   |    ZONA   |    1703/02     |   ZONA    |   ZONA   |      COMPENSACION     |  PROMOCION  |    SOLIDARIDAD      |');
          writeln(outputfile,'|            |  NORMAL  |  ESPECIAL  |            |  NORMAL  |  ESPECIAL |                |  NORMAL   | ESPECIAL |                       |             |                     |');
          writeln(outputfile,'+------------+----------+------------+------------+----------+-----------+----------------+-----------+----------+-----------------------+-------------+---------------------+');
          dmcompensa.tbletareos.Open;
          with dmcompensa.tbletareos do
          begin
            dmcompensa.tbletareos.First;
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
              dmcompensa.qrymcetabasa1.close;
              dmcompensa.qrymcetabasa1.Prepare;
              dmcompensa.qrymcetabasa1.Params[0].Value :=dmcompensa.qrymcdeclaracion2a1num_declaracion.value;
              dmcompensa.qrymcetabasa1.Params[1].Value :=dmcompensa.tbletareoscod_grupo_eta.value;
              dmcompensa.qrymcetabasa1.open;
              if dmcompensa.qrymcetabasa1.RecordCount = 0 then
              begin
                sexo := ' ';
                if dmcompensa.tbletareossexo_grupo_eta.Value <> 'N' then
                   sexo :=dmcompensa.tbletareossexo_grupo_eta.Value;
                ini := floattostr(dmcompensa.tbletareosini_grupo_eta.Value);
                fin := floattostr(dmcompensa.tbletareosfin_grupo_eta.Value);
                if dmcompensa.tbletareoscod_grupo_eta.Value <= 3 then
                   writeln(outputfile,'| '+espacios(2,ini)+' - '+espacios(2,fin)+' '+espacios(1,sexo)+'  |         0|           0|'+espacios(8,format('%n',[strtofloat(estcos)]))+'    |         0|          0|       1        |          0|         0|                      0|            0|                    0|');
                if dmcompensa.tbletareoscod_grupo_eta.Value = 4 then
                   writeln(outputfile,'| '+espacios(2,ini)+' - '+espacios(2,fin)+' '+espacios(1,sexo)+'  |         0|           0|'+espacios(8,format('%n',[strtofloat(estcos)]))+'    |         0|          0|       3        |          0|         0|                      0|            0|                    0|');
                if dmcompensa.tbletareoscod_grupo_eta.Value = 5 then
                   writeln(outputfile,'| '+espacios(2,ini)+' - '+espacios(2,fin)+' '+espacios(1,sexo)+'  |         0|           0|'+espacios(8,format('%n',[strtofloat(estcos)]))+'    |         0|          0|      2.02      |          0|         0|                      0|            0|                    0|');
                if dmcompensa.tbletareoscod_grupo_eta.Value = 6 then
                   writeln(outputfile,'| '+espacios(2,ini)+' - '+espacios(2,fin)+' '+espacios(1,sexo)+'  |         0|           0|'+espacios(8,format('%n',[strtofloat(estcos)]))+'    |         0|          0|      1.85      |          0|         0|                      0|            0|                    0|');
                if dmcompensa.tbletareoscod_grupo_eta.Value = 7 then
                   writeln(outputfile,'| '+espacios(2,ini)+' Y '+'Más'+' '+espacios(1,sexo)+' |         0|           0|'+espacios(8,format('%n',[strtofloat(estcos)]))+'    |         0|          0|       1        |          0|         0|                      0|            0|                    0|');
              end;
              if dmcompensa.qrymcetabasa1.RecordCount > 0 then
              begin
                ini := floattostr(dmcompensa.tbletareosini_grupo_eta.Value);
                fin := floattostr(dmcompensa.tbletareosfin_grupo_eta.Value);
                sexo := ' ';
                if dmcompensa.tbletareossexo_grupo_eta.Value <> 'N' then
                   sexo :=dmcompensa.tbletareossexo_grupo_eta.Value;
                tazn := dmcompensa.qrymcetabasa1TOT_AFI_ZN.value;
                taze := dmcompensa.qrymcetabasa1TOT_AFI_ZE.Value;
                tuzn := dmcompensa.qrymcetabasa1TOT_UPC_ZN.Value;
                tuze := dmcompensa.qrymcetabasa1TOT_UPC_ZE.Value;
                tuznd := dmcompensa.qrymcetabasa1TOT_UPC_ZND.Value;
                tuzed := dmcompensa.qrymcetabasa1TOT_UPC_ZED.Value;
                tupc := dmcompensa.qrymcetabasa1TOT_UPC.Value;
                tpyp := dmcompensa.qrymcetabasa1TOT_PYP.Value;
                tsol := dmcompensa.qrymcetabasa1TOT_SOL.Value;
                if dmcompensa.tbletareoscod_grupo_eta.Value <= 3 then
                   writeln(outputfile,'| '+espacios(2,ini)+' - '+espacios(2,fin)+' '+espacios(1,sexo)+'  |'+espacios(10,format('%n',[tazn]))+'|'+espacios(12,format('%n%',[taze]))+'|'+espacios(8,format('%n',[strtofloat(estcos)]))+'    |'+espacios(10,format('%n',[tuzn]))+'|'+espacios(11,format('%n',[tuze]))+'|       1        |'+espacios(11,format('%n',[tuznd]))+'|'+espacios(10,format('%n',[tuzed]))+'|'+espacios(23,format('%n',[tupc]))+'|'+espacios(13,format('%n',[tpyp]))+'|'+espacios(21,format('%n',[tsol]))+'|');
                if dmcompensa.tbletareoscod_grupo_eta.Value = 4 then
                   writeln(outputfile,'| '+espacios(2,ini)+' - '+espacios(2,fin)+' '+espacios(1,sexo)+'  |'+espacios(10,format('%n',[tazn]))+'|'+espacios(12,format('%n%',[taze]))+'|'+espacios(8,format('%n',[strtofloat(estcos)]))+'    |'+espacios(10,format('%n',[tuzn]))+'|'+espacios(11,format('%n',[tuze]))+'|       3        |'+espacios(11,format('%n',[tuznd]))+'|'+espacios(10,format('%n',[tuzed]))+'|'+espacios(23,format('%n',[tupc]))+'|'+espacios(13,format('%n',[tpyp]))+'|'+espacios(21,format('%n',[tsol]))+'|');
                if dmcompensa.tbletareoscod_grupo_eta.Value = 5 then
                   writeln(outputfile,'| '+espacios(2,ini)+' - '+espacios(2,fin)+' '+espacios(1,sexo)+'  |'+espacios(10,format('%n',[tazn]))+'|'+espacios(12,format('%n%',[taze]))+'|'+espacios(8,format('%n',[strtofloat(estcos)]))+'    |'+espacios(10,format('%n',[tuzn]))+'|'+espacios(11,format('%n',[tuze]))+'|      2,02      |'+espacios(11,format('%n',[tuznd]))+'|'+espacios(10,format('%n',[tuzed]))+'|'+espacios(23,format('%n',[tupc]))+'|'+espacios(13,format('%n',[tpyp]))+'|'+espacios(21,format('%n',[tsol]))+'|');
                if dmcompensa.tbletareoscod_grupo_eta.Value = 6 then
                   writeln(outputfile,'| '+espacios(2,ini)+' - '+espacios(2,fin)+' '+espacios(1,sexo)+'  |'+espacios(10,format('%n',[tazn]))+'|'+espacios(12,format('%n%',[taze]))+'|'+espacios(8,format('%n',[strtofloat(estcos)]))+'    |'+espacios(10,format('%n',[tuzn]))+'|'+espacios(11,format('%n',[tuze]))+'|      1.85      |'+espacios(11,format('%n',[tuznd]))+'|'+espacios(10,format('%n',[tuzed]))+'|'+espacios(23,format('%n',[tupc]))+'|'+espacios(13,format('%n',[tpyp]))+'|'+espacios(21,format('%n',[tsol]))+'|');
                if dmcompensa.tbletareoscod_grupo_eta.Value = 7 then
                   writeln(outputfile,'| '+espacios(2,ini)+' Y '+'Más'+' '+espacios(1,sexo)+' |'+espacios(10,format('%n',[tazn]))+'|'+espacios(12,format('%n%',[taze]))+'|'+espacios(8,format('%n',[strtofloat(estcos)]))+'    |'+espacios(10,format('%n',[tuzn]))+'|'+espacios(11,format('%n',[tuze]))+'|       1        |'+espacios(11,format('%n',[tuznd]))+'|'+espacios(10,format('%n',[tuzed]))+'|'+espacios(23,format('%n',[tupc]))+'|'+espacios(13,format('%n',[tpyp]))+'|'+espacios(21,format('%n',[tsol]))+'|');
                ttazn := ttazn + tazn;
                ttaze := ttaze + taze;
                ttuzn := ttuzn + tuzn;
                ttuze := ttuze + tuze;
                ttuznd := ttuznd + tuznd;
                ttuzed := ttuzed + tuzed;
                ttupc := ttupc + tupc;
                ttpyp := ttpyp + tpyp;
                ttsol := ttsol + tsol;
              end;
            next;
            end;
            writeln(outputfile,'+------------+----------+------------+------------+----------+-----------+----------------+-----------+----------+-----------------------+-------------+---------------------+');
            writeln(outputfile,'| TOTAL      |'+espacios(10,format('%n',[ttazn]))+'|'+espacios(12,format('%n',[ttaze]))+'|            |'+espacios(10,format('%n',[ttuzn]))+'|'+espacios(11,format('%n',[ttuze]))+'|                |'+espacios(10,format('%n',[ttuznd]))+'|'+espacios(11,format('%n',[ttuzed]))+'|'+espacios(23,format('%n',[ttupc]))+'|'+espacios(13,format('%n',[ttpyp]))+'|'+espacios(21,format('%n',[ttsol]))+'|');
            writeln(outputfile,'+------------+----------+------------+------------+----------+-----------+----------------+-----------+----------+-----------------------+-------------+---------------------+');
            writeln(outputfile,'');
            writeln(outputfile,'');
            writeln(outputfile,'4. CONSIGNACIONES');
            writeln(outputfile,'+-----------------------+------------+------------+');
            writeln(outputfile,'| SUBCUENTA FOSYGA      |    FECHA   |    VALOR   |');
            writeln(outputfile,'+-----------------------+------------+------------+');
            writeln(outputfile,'| 4.1 SOLIDARIDAD       |'+espacios(12,datetostr(dmcompensa.qrymcdeclaracion2a1fecha_declaracion.value))+'|'+espacios(12,format('%n',[ttsol]))+'|');
            writeln(outputfile,'+-----------------------+------------+------------+');
            writeln(outputfile,'| 4.2 COMPENSACION      |'+espacios(12,datetostr(dmcompensa.qrymcdeclaracion2a1fecha_declaracion.value))+'|'+espacios(12,format('%n',[ttupc]))+'|');
            writeln(outputfile,'+-----------------------+------------+------------+');
            writeln(outputfile,'');
            writeln(outputfile,'');
            writeln(outputfile,'');
            writeln(outputfile,'');
            writeln(outputfile,'5. FIRMA REPRESENTANTE LEGAL: ___________________________________________');
            writeln(outputfile,'');
            writeln(outputfile,'');
            writeln(outputfile,'6. NOMBRE                   : '+espacios(30,rep)+'                                   SOFTEPS VER 1.0');
            writeln(outputfile,'');
            writeln(outputfile,'');
            writeln(outputfile,'');
            writeln(outputfile,'');
            writeln(outputfile,'');
            writeln(outputfile,'');
            writeln(outputfile,'');
            writeln(outputfile,'');
            writeln(outputfile,'');
            writeln(outputfile,'');
            writeln(outputfile,'');
            writeln(outputfile,'');
            writeln(outputfile,'');
            writeln(outputfile,'');
            writeln(outputfile,'');
          end;
          next;
        end;
      end;
      closefile (outputfile);
    end;
  end
  else
   showmessage('No Existen Usuarios Para Generar Formato A1');
  showmessage('Finalizada la Generacion');
end;



end.
