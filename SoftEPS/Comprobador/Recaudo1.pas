unit Recaudo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, WinInet, ExtCtrls,HTTPApp, DB, ADODB, Menus,rasapi,printers,DateUtils;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable1Consecutivo: TBCDField;
    ADOTable1Fecha: TDateTimeField;
    ADOTable1Tipo_Transaccion: TStringField;
    ADOTable1Valor: TBCDField;
    ADOTable1No_Planilla: TStringField;
    ADOTable1Nit: TStringField;
    ADOTable1Nombre_Aportante: TStringField;
    ADOTable1Periodo: TStringField;
    ADOTable1Usuario: TStringField;
    ADOTable1Municipio: TStringField;
    Label29: TLabel;
    ADOQuery1: TADOQuery;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel2: TPanel;
    Memo1: TMemo;
    qryconsecutivos: TADOQuery;
    qryconsecutivostip_radicacion: TStringField;
    qryconsecutivoscon_radicacion: TStringField;
    qryconsecutivosdes_radicacion: TStringField;
    qryregistrocomp: TADOQuery;
    qryregistrocompcos_comprobacion: TStringField;
    qryregistrocomptip_ident_usuar: TStringField;
    qryregistrocompnur_ident_usuar: TStringField;
    qryregistrocompnom_afiliado: TStringField;
    qryregistrocomptip_usuario: TStringField;
    qryregistrocomptip_afiliado: TStringField;
    qryregistrocompuni_medida_edad: TStringField;
    qryregistrocompfec_nacimiento: TDateTimeField;
    qryregistrocompval_edad: TStringField;
    qryregistrocompsexo: TStringField;
    qryregistrocompdpt_res_habitual: TStringField;
    qryregistrocompmun_res_habitual: TStringField;
    qryregistrocompdir_res_habitual: TStringField;
    qryregistrocompnum_carnet: TStringField;
    qryregistrocompcod_empresa: TStringField;
    qryregistrocompnom_empresa: TStringField;
    qryregistrocompfec_afiliacion: TDateTimeField;
    qryregistrocompcod_ips_capitado: TStringField;
    qryregistrocompnom_ips_capitado: TStringField;
    qryregistrocompcod_estrato: TStringField;
    qryregistrocompsem_cot_sistema: TBCDField;
    qryregistrocompsem_cot_eps: TBCDField;
    qryregistrocompper_mora: TStringField;
    qryregistrocompest_afilia: TStringField;
    qryregistrocompdes_pagos: TStringField;
    qryregistrocompnom_ips_comprueba: TStringField;
    qryregistrocompdpt_ips_comprueba: TStringField;
    qryregistrocompmun_ips_comprueba: TStringField;
    qryregistrocompnom_fun_comprueba: TStringField;
    qryregistrocompnum_fax_comprueba: TStringField;
    qryregistrocompdes_observacion: TStringField;
    qryregistrocompfec_comprobacion: TDateTimeField;
    qryregistrocomphora_comprobacion: TDateTimeField;
    qryregistrocompcod_usuario_comp: TStringField;
    qryregistrocomphoracomprobacion: TStringField;
    ADOQuery1COLUMN1: TStringField;
    ADOQuery1COLUMN2: TStringField;
    ADOQuery1COLUMN3: TStringField;
    ADOQuery1COLUMN4: TStringField;
    ADOQuery1COLUMN5: TStringField;
    ADOQuery1COLUMN6: TStringField;
    ADOQuery1COLUMN7: TStringField;
    ADOQuery1COLUMN8: TStringField;
    ADOQuery1COLUMN9: TIntegerField;
    ADOQuery1COLUMN10: TStringField;
    ADOQuery1COLUMN11: TStringField;
    ADOQuery1COLUMN12: TDateTimeField;
    ADOQuery1COLUMN13: TIntegerField;
    ADOQuery1COLUMN14: TStringField;
    ADOQuery1COLUMN15: TStringField;
    ADOQuery1COLUMN16: TStringField;
    ADOQuery1COLUMN17: TStringField;
    ADOQuery1COLUMN18: TStringField;
    ADOQuery1COLUMN19: TStringField;
    ADOQuery1COLUMN20: TStringField;
    ADOQuery1COLUMN21: TStringField;
    ADOQuery1COLUMN22: TStringField;
    ADOQuery1COLUMN23: TStringField;
    ADOQuery1COLUMN24: TIntegerField;
    ADOQuery1COLUMN25: TIntegerField;
    ADOQuery1COLUMN26: TDateTimeField;
    ADOQuery1COLUMN27: TStringField;
    ADOQuery1COLUMN28: TStringField;
    ADOQuery1COLUMN29: TStringField;
    ADOQuery1COLUMN30: TStringField;
    ADOQuery1COLUMN31: TStringField;
    ADOQuery1COLUMN32: TStringField;
    ADOQuery1COLUMN33: TDateTimeField;
    ADOQuery1COLUMN34: TStringField;
    ADOQuery1COLUMN35: TIntegerField;
    ADOQuery1COLUMN36: TStringField;
    ADOQuery1COLUMN37: TDateTimeField;
    ADOQuery1COLUMN38: TStringField;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    qryregistrocompservicio: TStringField;
    Panel3: TPanel;
    Panel4: TPanel;
    Memo2: TMemo;
    Edit3: TEdit;
    Edit4: TEdit;
    qryclave: TADOQuery;
    qryclavenom_usuario: TStringField;
    version: TADOQuery;
    versionaplicativo: TStringField;
    versionversion: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure RecaudoDiario1Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  sum1:real;
  opera:string;
  borra:integer;

implementation

uses prRecaudo1, Recaudo3, uvalidaips;


{$R *.dfm}
function quita_comas(cadena:string):string;
begin
  while pos(',',cadena) <> 0 do
  delete(cadena,pos(',',cadena),1);
  quita_comas:=cadena;
end;

function alinearcero(codigo: string;
  catidad: integer): string;
var largo,i : integer;
    valores : string;
begin
  valores :=  codigo;
   largo :=length(codigo);
        for i := largo to  catidad do
          begin
          valores := '0'+ valores ;
          end;
          alinearcero := valores;

end;


procedure total_xx();
begin
  //if opera = '+' then form1.label1.caption := floattostr(sum1 + strtoint(quita_comas(form1.label1.Caption)))
  //else if opera = '-' then form1.label1.caption := floattostr(sum1 - strtoint(quita_comas(form1.label1.Caption)))
  //else if opera = '*' then form1.label1.caption := floattostr(sum1 * strtoint(quita_comas(form1.label1.Caption)))
  //else if opera = '/' then form1.label1.caption := floattostr(sum1 / strtoint(quita_comas(form1.label1.Caption)));
end;

function iespacios(cadena:string):string;
var i:integer;
begin
  for i:=1 to 200-length(cadena)  do
   cadena:=cadena+' ';
  iespacios:=cadena;
end;


function OpenConnection( PhoneNumber: String; UserName: String; Password: String; EntryName: String; var rasConn:
HRASConn ): DWORD;
var
   lpRasDialParams : PRASDIALPARAMS;
begin
   GetMem( lpRasDialParams, SizeOf( lpRasDialParams^ ) );
   lpRasDialParams^.dwSize := SizeOf( lpRasDialParams^ );
   StrCopy( @(lpRasDialParams^.szEntryName ), PCHAR( EntryName ) );
   StrCopy( @(lpRasDialParams^.szUserName) , PCHAR( UserName ) );
   StrCopy( @(lpRasDialParams^.szPassword ), PCHAR( Password ) );
   StrCopy( @(lpRasDialParams^.szPhoneNumber ), PCHAR( PhoneNumber ) );
   StrCopy( @(lpRasDialParams^.szCallbackNumber ), PCHAR( '' ) );
   StrCopy( @(lpRasDialParams^.szDomain ), PCHAR( '' ) );

   Result := RasDial( nil { lpRasDialExtensions : PRASDIALEXTENSIONS ; pointer to function extensions data },
                      nil { lpszPhonebook: PChar;        pointer to full path and filename of phonebook file },
                      lpRasDialParams { pointer to calling parameters data},
                      0 { dwNotifierType : DWORD;       specifies type of RasDial event handler},
                      0 { lpvNotifier: DWORD;        specifies a handler for RasDial events},
                      rasConn { pointer to variable to receive connection handle}
                    );
   FreeMem( lpRasDialParams );
end;

function CloseConnection( rasConn: HRASConn ): Boolean;
begin
   if rasConn <> 0
   then Result := ( RasHangUp(rasConn) = 0 )
   else Result := True;
end;

procedure colgar();
 var
     bufsize: Cardinal;        //This part needed changing to Cardinal
     numEntries: Cardinal;     //but was set to LongInt.

     entries: Array[1..10] of TRasConn;
     stat: TRasConnStatus;
     hRas: HRasConn;
     conexion:pRasConn;

begin
   entries[1].dwSize := SizeOf(TRasConn);
   bufsize := SizeOf(TRasConn) * 10;
   FillChar(stat, Sizeof(TRasConnStatus), 0);
   stat.dwSize := Sizeof(TRasConnStatus);
   if RasEnumConnections(@entries[1], bufsize, numEntries) = 0 then
   begin
       if numEntries > 0 then
       with entries[1] do
       begin
         conexion:=Pointer(rasconn);
         hRas := Longint(conexion);
         if RasHangUp(hRas) <> 0 then ShowMessage('Fallo al ejecutar RasHangUp');
       end;
   end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var dwTiposConexion: DWORD;

    xx3,xx4:string;
    con:string;
    consant:integer;
    rasconn,rasconn2:hrasconn;
    time1,time2:tdatetime;
    i:integer;
    xx:thandle;
begin

borra:=1;
if EDIT1.Text <> '' then
begin
  time1:=time;
  memo1.Lines.Clear;
  memo1.Lines.Add('Estableciendo Coneccion...');
  if NOT (InternetGetConnectedState(@dwTiposConexion, 0)) then
  begin
      rasconn:= 0;
      rasconn2:= 0;
      memo1.Lines.Add('Marcando a Internet...');
      form1.Refresh;
      xx3:=inttostr(openconnection('019479472347','saludvida_prueba1','prueba1','Emtelco',rasconn));
      memo1.Lines.Add('Conectando a SALUDVIDA (VPN)...');
      form1.Refresh;
      xx4:=inttostr(openconnection('200.14.235.38','cjimenez','9713','VPN Emtelco',rasconn2));
  end;
  if NOT (InternetGetConnectedState(@dwTiposConexion, 0)) then
  Begin
    showmessage('ERROR: El acceso a la Red no fue Posible....');
    memo1.Lines.Add('NO AUTORIZADO');
  end
  else
  Begin
    adoconnection1.Connected := true;
    adoquery1.Close;
    adoquery1.Parameters[0].Value := edit1.Text;
    adoquery1.Parameters[1].Value := edit2.Text;
    adoquery1.Open;
    memo1.Lines.Add('Solicitando Autorización...');
    memo1.Clear;
    form1.Refresh;
    adoquery1.First;
    if adoquery1column28.Value <> '' then
    begin
      memo1.Lines.Add('                 DATOS DEL AFILIADO');
      memo1.Lines.Add('-----------------------------------------------------------------------------------');
      memo1.Lines.Add('Usuario : '+trim(adoquery1column3.Value)+' '+trim(adoquery1column4.Value)+' '+trim(adoquery1column5.Value)+' '+trim(adoquery1column6.Value));
      memo1.Lines.Add('Fecha Nacimiento: '+datetostr(adoquery1column12.Value));
      memo1.Lines.Add('Edad: '+inttostr(adoquery1column13.Value));
      memo1.Lines.Add('Sexo: '+adoquery1column14.Value);
      memo1.Lines.Add('Fecha Afiliacion: '+DATETOSTR(adoquery1column26.Value));
      memo1.Lines.Add('Direccion AFiliado: '+adoquery1column29.Value);
      memo1.Lines.Add('Periodos En Mora: '+adoquery1column34.Value);
      memo1.Lines.Add('Semanas Cotizadas SGSSS: '+inttostr(adoquery1column24.Value));
      memo1.Lines.Add('Estrato: '+adoquery1column23.Value);
      memo1.Lines.Add('Aportante: '+adoquery1column20.Value);
      memo1.Lines.Add('IPS Asignada: '+adoquery1column32.Value);
      memo1.Lines.Add('Codigo IPS: '+adoquery1column21.Value);
      memo2.Clear;
      if adoquery1column28.Value = 'A' then
      begin
        /// INICIO VALIDACION GINECOLOGIA
        if combobox1.ItemIndex = 0 then
        begin
          if adoquery1column14.Value <> 'F' then
          begin
             memo2.Lines.Add('             ***  NO AUTORIZADO  ***');
             memo2.Lines.Add('Usuario No es Poblacion Objeto del Servicio Solicitado');
          end
          else
          if adoquery1column24.Value < 4 then
          begin
             memo2.Lines.Add('                ***  NO AUTORIZADO  ***');
             memo2.Lines.Add('Usuario No Posee Las Semanas Cotizadas Necesarias');
          end
          else
          if adoquery1column13.Value < 14 then
          begin
             memo2.Lines.Add('                ***  NO AUTORIZADO  ***');
             memo2.Lines.Add('Usuario No es Poblacion Objeto del Servicio Solicitado');
          end
          else
          begin
            qryregistrocomp.Close;
            qryregistrocomp.sql.Clear;
            qryregistrocomp.sql.Add('select * from callcenter..tblcomprobacionesIPS where nur_ident_usuar = :"Consecutivo" and servicio = :"Servicio"');
            qryregistrocomp.Parameters[0].Value := trim(edit2.Text);
            qryregistrocomp.Parameters[1].Value := combobox1.Text;
            qryregistrocomp.Open;
            if qryregistrocomp.RecordCount >= 3 then
            begin
              memo2.Lines.Add('                ***  NO AUTORIZADO  ***');
              memo2.Lines.Add('Usuario Ya Sobrepaso Numero de Consultas Al Año');
            end
            else
            begin
              memo2.Lines.Add('                  ***  AUTORIZADO  ***');
              if MessageDlg('Usuario Autorizado, Confirma Solicitud? ',mtConfirmation, [mbYes, mbNo], 0) = mrYES then
              begin
                form4 := tform4.create(application);
                form4.showmodal;
                form4.Close;
                qryclave.Close;
                qryclave.Prepared;
                qryclave.Parameters[0].Value := edit3.Text;
                qryclave.Parameters[1].Value := edit4.Text;
                qryclave.Open;
                if qryclave.RecordCount > 0 then
                begin
                  qryconsecutivos.Close;
                  qryconsecutivos.sql.Clear;
                  qryconsecutivos.sql.Add('select * from callcenter..tblconsecutivos where tip_radicacion = :"NUMERO"');
                  qryconsecutivos.Parameters[0].Value := '3';
                  qryconsecutivos.Open;
                  IF  qryconsecutivos.RecordCount = 1 THEN
                  BEGIN
                    con := alinearcero(FLOATTOSTR(STRTOFLOAT(qryconsecutivoscon_radicacion.value) + 1),14);
                    qryconsecutivos.Edit;
                    qryconsecutivoscon_radicacion.Value := trim(con);
                    qryconsecutivos.POST;
                  END;
                  qryregistrocomp.Close;
                  qryregistrocomp.sql.Clear;
                  qryregistrocomp.sql.Add('select * from callcenter..tblcomprobacionesIPS where cos_comprobacion = :"Consecutivo"');
                  qryregistrocomp.Parameters[0].Value := trim(con);
                  qryregistrocomp.Open;
                  if qryregistrocomp.RecordCount = 0 then
                  begin
                    qryregistrocomp.Insert;
                    qryregistrocompcos_comprobacion.Value := trim(con);
                    qryregistrocomptip_ident_usuar.Value := trim(edit1.Text);
                    qryregistrocompnur_ident_usuar.Value := trim(edit2.Text);
                    qryregistrocompnom_afiliado.Value := trim(trim(adoquery1column3.Value)+' '+trim(adoquery1column4.Value)+' '+trim(adoquery1column5.Value)+' '+trim(adoquery1column6.Value));
                    qryregistrocomptip_usuario.Value  := '';
                    qryregistrocomptip_afiliado.Value := '';
                    qryregistrocompuni_medida_edad.Value := 'A';
                    qryregistrocompfec_nacimiento.Value := adoquery1column26.Value;
                    qryregistrocompval_edad.Value := inttostr(adoquery1column13.Value);
                    qryregistrocompsexo.Value := adoquery1column14.Value;
                    qryregistrocompnom_empresa.Value := adoquery1column20.Value;
                    qryregistrocompfec_afiliacion.Value := adoquery1column26.Value;
                    qryregistrocompcod_estrato.Value := adoquery1column23.Value;
                    qryregistrocompsem_cot_sistema.Value := adoquery1column24.Value;
                    qryregistrocompper_mora.Value := adoquery1column34.Value;
                    qryregistrocompest_afilia.Value := adoquery1column28.Value;
                    qryregistrocompfec_comprobacion.Value := date()+time();
                    qryregistrocomphora_comprobacion.Value := date()+time();
                    qryregistrocomphoracomprobacion.Value := timetostr(time());
                    qryregistrocompservicio.value := combobox1.text;
                    qryregistrocompnom_ips_capitado.Value := adoquery1column32.Value;
                    qryregistrocompcod_ips_capitado.Value := adoquery1column21.Value;
                    qryregistrocomp.post;
                  end
                  else
                  begin
                    MessageDlg('El numero de consecutivo de  comprobacion de  derechos  ya  existe  comuniquese  con el  administrador  de la  base de  datos ', mtWarning,[mbOk], 0);
                    exit;
                  end;
                  if MessageDlg('El numero de comprobación de  derechos  asignado es : ' + con + ' Desea  Imprimir  la comprobacion', MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
                  begin
                  end;
                end
                else
                  showmessage('Clave Incorrecta Imposible Autorizar Servicio');
              end;
            end;
            qryregistrocomp.Close;
          end
        end;
        /// FIN GINECOLOGIA

        /// INICIO VALIDACION PEDIATRIA
        if combobox1.ItemIndex = 1 then
        begin
          if adoquery1column13.Value >= 8 then
          begin
             memo2.Lines.Add('                ***  NO AUTORIZADO  ***');
             memo2.Lines.Add('Usuario No es Poblacion Objeto del Servicio Solicitado');
          end
          else
          begin
            qryregistrocomp.Close;
            qryregistrocomp.sql.Clear;
            qryregistrocomp.sql.Add('select * from callcenter..tblcomprobacionesIPS where nur_ident_usuar = :"Consecutivo" and servicio = :"Servicio"');
            qryregistrocomp.Parameters[0].Value := trim(edit2.Text);
            qryregistrocomp.Parameters[1].Value := combobox1.Text;
            qryregistrocomp.Open;
            if qryregistrocomp.RecordCount >= 4 then
            begin
              memo2.Lines.Add('                ***  NO AUTORIZADO  ***');
              memo2.Lines.Add('Usuario Ya Sobrepaso Numero de Consultas Al Año');
            end
            else
            if adoquery1column24.Value < 4 then
            begin
              memo2.Lines.Add('                ***  NO AUTORIZADO  ***');
              memo2.Lines.Add('Usuario No Posee Las Semanas Cotizadas Necesarias');
            end
            else
            begin
              memo2.Lines.Add('                  ***  AUTORIZADO  ***');
              if MessageDlg('Usuario Autorizado, Confirma Solicitud? ',mtConfirmation, [mbYes, mbNo], 0) = mrYES then
              begin
                form4 := tform4.create(application);
                form4.showmodal;
                form4.Close;
                qryclave.Close;
                qryclave.Prepared;
                qryclave.Parameters[0].Value := edit3.Text;
                qryclave.Parameters[1].Value := edit4.Text;
                qryclave.Open;
                if qryclave.RecordCount > 0 then
                begin
                  qryconsecutivos.Close;
                  qryconsecutivos.sql.Clear;
                  qryconsecutivos.sql.Add('select * from callcenter..tblconsecutivos where tip_radicacion = :"NUMERO"');
                  qryconsecutivos.Parameters[0].Value := '3';
                  qryconsecutivos.Open;
                  IF  qryconsecutivos.RecordCount = 1 THEN
                  BEGIN
                    con := alinearcero(FLOATTOSTR(STRTOFLOAT(qryconsecutivoscon_radicacion.value) + 1),14);
                    qryconsecutivos.Edit;
                    qryconsecutivoscon_radicacion.Value := trim(con);
                    qryconsecutivos.POST;
                  END;
                  qryregistrocomp.Close;
                  qryregistrocomp.sql.Clear;
                  qryregistrocomp.sql.Add('select * from callcenter..tblcomprobacionesIPS where cos_comprobacion = :"Consecutivo"');
                  qryregistrocomp.Parameters[0].Value := trim(con);
                  qryregistrocomp.Open;
                  if qryregistrocomp.RecordCount = 0 then
                  begin
                    qryregistrocomp.Insert;
                    qryregistrocompcos_comprobacion.Value := trim(con);
                    qryregistrocomptip_ident_usuar.Value := trim(edit1.Text);
                    qryregistrocompnur_ident_usuar.Value := trim(edit2.Text);
                    qryregistrocompnom_afiliado.Value := trim(trim(adoquery1column3.Value)+' '+trim(adoquery1column4.Value)+' '+trim(adoquery1column5.Value)+' '+trim(adoquery1column6.Value));
                    qryregistrocomptip_usuario.Value  := '';
                    qryregistrocomptip_afiliado.Value := '';
                    qryregistrocompuni_medida_edad.Value := 'A';
                    qryregistrocompfec_nacimiento.Value := adoquery1column26.Value;
                    qryregistrocompval_edad.Value := inttostr(adoquery1column13.Value);
                    qryregistrocompsexo.Value := adoquery1column14.Value;
                    qryregistrocompnom_empresa.Value := adoquery1column20.Value;
                    qryregistrocompfec_afiliacion.Value := adoquery1column26.Value;
                    qryregistrocompcod_estrato.Value := adoquery1column23.Value;
                    qryregistrocompsem_cot_sistema.Value := adoquery1column24.Value;
                    qryregistrocompper_mora.Value := adoquery1column34.Value;
                    qryregistrocompest_afilia.Value := adoquery1column28.Value;
                    qryregistrocompfec_comprobacion.Value := date()+time();
                    qryregistrocomphora_comprobacion.Value := date()+time();
                    qryregistrocomphoracomprobacion.Value := timetostr(time());
                    qryregistrocompservicio.value := combobox1.text;
                    qryregistrocompnom_ips_capitado.Value := adoquery1column32.Value;
                    qryregistrocompcod_ips_capitado.Value := adoquery1column21.Value;
                    qryregistrocomp.post;
                  end
                  else
                  begin
                    MessageDlg('El numero de consecutivo de  comprobacion de  derechos  ya  existe  comuniquese  con el  administrador  de la  base de  datos ', mtWarning,[mbOk], 0);
                    exit;
                  end;
                  if MessageDlg('El numero de comprobación de  derechos  asignado es : ' + con + ' Desea  Imprimir  la comprobacion', MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
                  begin
                  end;
                end
                else
                  showmessage('Clave Incorrecta Imposible Autorizar Servicio');
              end;
            end;
            qryregistrocomp.Close;
          end
        end;
        /// FIN PEDIATRIA

        /// INICIO VALIDACION MEDICINA INTERNA
        if combobox1.ItemIndex = 2 then
        begin
          if adoquery1column13.Value < 60 then
          begin
             memo2.Lines.Add('                ***  NO AUTORIZADO  ***');
             memo2.Lines.Add('Usuario No es Poblacion Objeto del Servicio Solicitado');
          end
          else
          if adoquery1column24.Value < 26 then
          begin
             memo2.Lines.Add('                ***  NO AUTORIZADO  ***');
             memo2.Lines.Add('Usuario No Posee Las Semanas Cotizadas Necesarias');
          end
          else
          begin
            qryregistrocomp.Close;
            qryregistrocomp.sql.Clear;
            qryregistrocomp.sql.Add('select * from callcenter..tblcomprobacionesIPS where nur_ident_usuar = :"Consecutivo" and servicio = :"Servicio"');
            qryregistrocomp.Parameters[0].Value := trim(edit2.Text);
            qryregistrocomp.Parameters[1].Value := combobox1.Text;
            qryregistrocomp.Open;
            if qryregistrocomp.RecordCount >= 2 then
            begin
              memo2.Lines.Add('                ***  NO AUTORIZADO  ***');
              memo2.Lines.Add('Usuario Ya Sobrepaso Numero de Consultas Al Año');
            end
            else
            begin
              memo2.Lines.Add('                  ***  AUTORIZADO  ***');
              if MessageDlg('Usuario Autorizado, Confirma Solicitud? ',mtConfirmation, [mbYes, mbNo], 0) = mrYES then
              begin
                form4 := tform4.create(application);
                form4.showmodal;
                form4.Close;
                qryclave.Close;
                qryclave.Prepared;
                qryclave.Parameters[0].Value := edit3.Text;
                qryclave.Parameters[1].Value := edit4.Text;
                qryclave.Open;
                if qryclave.RecordCount > 0 then
                begin
                  qryconsecutivos.Close;
                  qryconsecutivos.sql.Clear;
                  qryconsecutivos.sql.Add('select * from callcenter..tblconsecutivos where tip_radicacion = :"NUMERO"');
                  qryconsecutivos.Parameters[0].Value := '3';
                  qryconsecutivos.Open;
                  IF  qryconsecutivos.RecordCount = 1 THEN
                  BEGIN
                    con := alinearcero(FLOATTOSTR(STRTOFLOAT(qryconsecutivoscon_radicacion.value) + 1),14);
                    qryconsecutivos.Edit;
                    qryconsecutivoscon_radicacion.Value := trim(con);
                    qryconsecutivos.POST;
                  END;
                  qryregistrocomp.Close;
                  qryregistrocomp.sql.Clear;
                  qryregistrocomp.sql.Add('select * from callcenter..tblcomprobacionesIPS where cos_comprobacion = :"Consecutivo"');
                  qryregistrocomp.Parameters[0].Value := trim(con);
                  qryregistrocomp.Open;
                  if qryregistrocomp.RecordCount = 0 then
                  begin
                    qryregistrocomp.Insert;
                    qryregistrocompcos_comprobacion.Value := trim(con);
                    qryregistrocomptip_ident_usuar.Value := trim(edit1.Text);
                    qryregistrocompnur_ident_usuar.Value := trim(edit2.Text);
                    qryregistrocompnom_afiliado.Value := trim(trim(adoquery1column3.Value)+' '+trim(adoquery1column4.Value)+' '+trim(adoquery1column5.Value)+' '+trim(adoquery1column6.Value));
                    qryregistrocomptip_usuario.Value  := '';
                    qryregistrocomptip_afiliado.Value := '';
                    qryregistrocompuni_medida_edad.Value := 'A';
                    qryregistrocompfec_nacimiento.Value := adoquery1column26.Value;
                    qryregistrocompval_edad.Value := inttostr(adoquery1column13.Value);
                    qryregistrocompsexo.Value := adoquery1column14.Value;
                    qryregistrocompnom_empresa.Value := adoquery1column20.Value;
                    qryregistrocompfec_afiliacion.Value := adoquery1column26.Value;
                    qryregistrocompcod_estrato.Value := adoquery1column23.Value;
                    qryregistrocompsem_cot_sistema.Value := adoquery1column24.Value;
                    qryregistrocompper_mora.Value := adoquery1column34.Value;
                    qryregistrocompest_afilia.Value := adoquery1column28.Value;
                    qryregistrocompfec_comprobacion.Value := date()+time();
                    qryregistrocomphora_comprobacion.Value := date()+time();
                    qryregistrocomphoracomprobacion.Value := timetostr(time());
                    qryregistrocompservicio.value := combobox1.text;
                    qryregistrocompnom_ips_capitado.Value := adoquery1column32.Value;
                    qryregistrocompcod_ips_capitado.Value := adoquery1column21.Value;
                    qryregistrocomp.post;
                  end
                  else
                  begin
                    MessageDlg('El numero de consecutivo de  comprobacion de  derechos  ya  existe  comuniquese  con el  administrador  de la  base de  datos ', mtWarning,[mbOk], 0);
                    exit;
                  end;
                  if MessageDlg('El numero de comprobación de  derechos  asignado es : ' + con + ' Desea  Imprimir  la comprobacion', MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
                  begin
                  end;
                end
                else
                showmessage('Clave Incorrecta Imposible Autorizar Servicio');
              end;
            end;
            qryregistrocomp.Close;
          end
        end;
        /// FIN MEDICINA INTERNA

       /// INICIO VALIDACION UROLOGIA
        if combobox1.ItemIndex = 3 then
        begin
          if adoquery1column13.Value < 50 then
          begin
             memo2.Lines.Add('                ***  NO AUTORIZADO  ***');
             memo2.Lines.Add('Usuario No es Poblacion Objeto del Servicio Solicitado');
          end
          else
          if adoquery1column14.Value <> 'M' then
          begin
             memo2.Lines.Add('                ***  NO AUTORIZADO  ***');
             memo2.Lines.Add('Usuario No es Poblacion Objeto del Servicio Solicitado');
          end
          else
          if adoquery1column24.Value < 26 then
          begin
             memo2.Lines.Add('                ***  NO AUTORIZADO  ***');
             memo2.Lines.Add('Usuario No Posee Las Semanas Cotizadas Necesarias');
          end
          else
          begin
            qryregistrocomp.Close;
            qryregistrocomp.sql.Clear;
            qryregistrocomp.sql.Add('select * from callcenter..tblcomprobacionesIPS where nur_ident_usuar = :"Consecutivo" and servicio = :"Servicio"');
            qryregistrocomp.Parameters[0].Value := trim(edit2.Text);
            qryregistrocomp.Parameters[1].Value := combobox1.Text;
            qryregistrocomp.Open;
            if qryregistrocomp.RecordCount >= 1 then
            begin
              memo2.Lines.Add('                ***  NO AUTORIZADO  ***');
              memo2.Lines.Add('Usuario Ya Sobrepaso Numero de Consultas Al Año');
            end
            else
            begin
              memo2.Lines.Add('                  ***  AUTORIZADO  ***');
              if MessageDlg('Usuario Autorizado, Confirma Solicitud? ',mtConfirmation, [mbYes, mbNo], 0) = mrYES then
              begin
                form4 := tform4.create(application);
                form4.showmodal;
                form4.Close;
                qryclave.Close;
                qryclave.Prepared;
                qryclave.Parameters[0].Value := edit3.Text;
                qryclave.Parameters[1].Value := edit4.Text;
                qryclave.Open;
                if qryclave.RecordCount > 0 then
                begin
                  qryconsecutivos.Close;
                  qryconsecutivos.sql.Clear;
                  qryconsecutivos.sql.Add('select * from callcenter..tblconsecutivos where tip_radicacion = :"NUMERO"');
                  qryconsecutivos.Parameters[0].Value := '3';
                  qryconsecutivos.Open;
                  IF  qryconsecutivos.RecordCount = 1 THEN
                  BEGIN
                    con := alinearcero(FLOATTOSTR(STRTOFLOAT(qryconsecutivoscon_radicacion.value) + 1),14);
                    qryconsecutivos.Edit;
                    qryconsecutivoscon_radicacion.Value := trim(con);
                    qryconsecutivos.POST;
                  END;
                  qryregistrocomp.Close;
                  qryregistrocomp.sql.Clear;
                  qryregistrocomp.sql.Add('select * from callcenter..tblcomprobacionesIPS where cos_comprobacion = :"Consecutivo"');
                  qryregistrocomp.Parameters[0].Value := trim(con);
                  qryregistrocomp.Open;
                  if qryregistrocomp.RecordCount = 0 then
                  begin
                    qryregistrocomp.Insert;
                    qryregistrocompcos_comprobacion.Value := trim(con);
                    qryregistrocomptip_ident_usuar.Value := trim(edit1.Text);
                    qryregistrocompnur_ident_usuar.Value := trim(edit2.Text);
                    qryregistrocompnom_afiliado.Value := trim(trim(adoquery1column3.Value)+' '+trim(adoquery1column4.Value)+' '+trim(adoquery1column5.Value)+' '+trim(adoquery1column6.Value));
                    qryregistrocomptip_usuario.Value  := '';
                    qryregistrocomptip_afiliado.Value := '';
                    qryregistrocompuni_medida_edad.Value := 'A';
                    qryregistrocompfec_nacimiento.Value := adoquery1column26.Value;
                    qryregistrocompval_edad.Value := inttostr(adoquery1column13.Value);
                    qryregistrocompsexo.Value := adoquery1column14.Value;
                    qryregistrocompnom_empresa.Value := adoquery1column20.Value;
                    qryregistrocompfec_afiliacion.Value := adoquery1column26.Value;
                    qryregistrocompcod_estrato.Value := adoquery1column23.Value;
                    qryregistrocompsem_cot_sistema.Value := adoquery1column24.Value;
                    qryregistrocompper_mora.Value := adoquery1column34.Value;
                    qryregistrocompest_afilia.Value := adoquery1column28.Value;
                    qryregistrocompfec_comprobacion.Value := date()+time();
                    qryregistrocomphora_comprobacion.Value := date()+time();
                    qryregistrocomphoracomprobacion.Value := timetostr(time());
                    qryregistrocompservicio.value := combobox1.text;
                    qryregistrocompnom_ips_capitado.Value := adoquery1column32.Value;
                    qryregistrocompcod_ips_capitado.Value := adoquery1column21.Value;
                    qryregistrocomp.post;
                  end
                  else
                  begin
                    MessageDlg('El numero de consecutivo de  comprobacion de  derechos  ya  existe  comuniquese  con el  administrador  de la  base de  datos ', mtWarning,[mbOk], 0);
                    exit;
                  end;
                  if MessageDlg('El numero de comprobación de  derechos  asignado es : ' + con + ' Desea  Imprimir  la comprobacion', MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
                  begin
                  end;
                end
                else
                  showmessage('Clave Incorrecta Imposible Autorizar Servicio');
              end;
            end;
            qryregistrocomp.Close;
          end
        end;
        /// FIN MEDICINA UROLOGIA

       /// INICIO VALIDACION MEDICINA GENERAL
        if combobox1.ItemIndex = 4 then
        begin
          memo2.Lines.Add('                  ***  AUTORIZADO  ***');
          if MessageDlg('Usuario Autorizado, Confirma Solicitud? ',mtConfirmation, [mbYes, mbNo], 0) = mrYES then
          begin
            form4 := tform4.create(application);
            form4.showmodal;
            form4.Close;
            qryclave.Close;
            qryclave.Prepared;
            qryclave.Parameters[0].Value := edit3.Text;
            qryclave.Parameters[1].Value := edit4.Text;
            qryclave.Open;
            if qryclave.RecordCount > 0 then
            begin
              qryconsecutivos.Close;
              qryconsecutivos.sql.Clear;
              qryconsecutivos.sql.Add('select * from callcenter..tblconsecutivos where tip_radicacion = :"NUMERO"');
              qryconsecutivos.Parameters[0].Value := '3';
              qryconsecutivos.Open;
              if  qryconsecutivos.RecordCount = 1 then
              begin
                con := alinearcero(FLOATTOSTR(STRTOFLOAT(qryconsecutivoscon_radicacion.value) + 1),14);
                qryconsecutivos.Edit;
                qryconsecutivoscon_radicacion.Value := trim(con);
                qryconsecutivos.POST;
              end;
              qryregistrocomp.Close;
              qryregistrocomp.sql.Clear;
              qryregistrocomp.sql.Add('select * from callcenter..tblcomprobacionesIPS where cos_comprobacion = :"Consecutivo"');
              qryregistrocomp.Parameters[0].Value := trim(con);
              qryregistrocomp.Open;
              if qryregistrocomp.RecordCount = 0 then
              begin
                qryregistrocomp.Insert;
                qryregistrocompcos_comprobacion.Value := trim(con);
                qryregistrocomptip_ident_usuar.Value := trim(edit1.Text);
                qryregistrocompnur_ident_usuar.Value := trim(edit2.Text);
                qryregistrocompnom_afiliado.Value := trim(trim(adoquery1column3.Value)+' '+trim(adoquery1column4.Value)+' '+trim(adoquery1column5.Value)+' '+trim(adoquery1column6.Value));
                qryregistrocomptip_usuario.Value  := '';
                qryregistrocomptip_afiliado.Value := '';
                qryregistrocompuni_medida_edad.Value := 'A';
                qryregistrocompfec_nacimiento.Value := adoquery1column26.Value;
                qryregistrocompval_edad.Value := inttostr(adoquery1column13.Value);
                qryregistrocompsexo.Value := adoquery1column14.Value;
                qryregistrocompnom_empresa.Value := adoquery1column20.Value;
                qryregistrocompfec_afiliacion.Value := adoquery1column26.Value;
                qryregistrocompcod_estrato.Value := adoquery1column23.Value;
                qryregistrocompsem_cot_sistema.Value := adoquery1column24.Value;
                qryregistrocompper_mora.Value := adoquery1column34.Value;
                qryregistrocompest_afilia.Value := adoquery1column28.Value;
                qryregistrocompfec_comprobacion.Value := date()+time();
                qryregistrocomphora_comprobacion.Value := date()+time();
                qryregistrocomphoracomprobacion.Value := timetostr(time());
                qryregistrocompservicio.value := combobox1.text;
                qryregistrocompnom_ips_capitado.Value := adoquery1column32.Value;
                qryregistrocompcod_ips_capitado.Value := adoquery1column21.Value;
                qryregistrocomp.post;
              end
              else
              begin
                MessageDlg('El numero de consecutivo de  comprobacion de  derechos  ya  existe  comuniquese  con el  administrador  de la  base de  datos ', mtWarning,[mbOk], 0);
                exit;
              end;
              if MessageDlg('El numero de comprobación de  derechos  asignado es : ' + con + ' Desea  Imprimir  la comprobacion', MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
              begin
              end;
              qryregistrocomp.Close;
            end
            else
             showmessage('Clave Incorrecta Imposible Autorizar Servicio');
          end;
        end;
        /// FIN MEDICINA UROLOGIA
      end
      else
      begin
        memo2.Lines.Clear;
        memo2.Lines.Add('             ***  NO AUTORIZADO  ***');
        memo2.Lines.Add('Usuario No Activo En La Base de Datos.....');
      end;
    end
    else
    begin
      showmessage('USUARIO NO AFILIADO A SALUDVIDA');
    end;
  end;
  version.Close;
  version.Parameters[0].Value := '1';
  version.Parameters[1].Value := '1';
  version.Open;
  if version.RecordCount = 0 then
     showmessage('Existen Nuevas Actualizaciones del Comprobador, Favor Actualizar');
  adoquery1.Close;
  adotable1.Close;
  adoconnection1.Close;
  colgar;
  time2:=time;
//  memo1.Lines.Add('Comprobación Finalizada...(T:'+inttostr(secondsbetween(time2,time1))+'Sg.)');
end
else memo1.Lines.Add('Debe digitar un valor...');
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
{//  if borra=1 then label1.Caption:='';
//  label1.caption:=quita_comas(Label1.Caption);
//  Label1.Caption := formatcurr('###,###,###,###',strtocurr(Label1.Caption + '7'));
  borra:=0;
   button1.SetFocus;}
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
{  if borra=1 then label1.Caption:='';
  label1.caption:=quita_comas(Label1.Caption);
  Label1.Caption := formatcurr('###,###,###,###',strtocurr(Label1.Caption + '8'));
  borra:=0;
   button1.SetFocus;}
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
{  if borra=1 then label1.Caption:='';
  label1.caption:=quita_comas(Label1.Caption);
Label1.Caption := formatcurr('###,###,###,###',strtocurr(Label1.Caption + '9'));
borra:=0;
 button1.SetFocus;}
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
{  if borra=1 then label1.Caption:='';
  label1.caption:=quita_comas(Label1.Caption);
Label1.Caption := formatcurr('###,###,###,###',strtocurr(Label1.Caption + '4'));
borra:=0;
 button1.SetFocus;}
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
{  if borra=1 then label1.Caption:='';
  label1.caption:=quita_comas(Label1.Caption);
Label1.Caption := formatcurr('###,###,###,###',strtocurr(Label1.Caption + '5'));
borra:=0;
 button1.SetFocus;}
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
{  if borra=1 then label1.Caption:='';
  label1.caption:=quita_comas(Label1.Caption);
Label1.Caption := formatcurr('###,###,###,###',strtocurr(Label1.Caption + '6'));
borra:=0;
 button1.SetFocus;}
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
{  if borra=1 then label1.Caption:='';
  label1.caption:=quita_comas(Label1.Caption);
Label1.Caption := formatcurr('###,###,###,###',strtocurr(Label1.Caption + '1'));
borra:=0;
 button1.SetFocus;}
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
{  if borra=1 then label1.Caption:='';
  label1.caption:=quita_comas(Label1.Caption);
Label1.Caption := formatcurr('###,###,###,###',strtocurr(Label1.Caption + '2'));
borra:=0;
 button1.SetFocus;}
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
{  if borra=1 then label1.Caption:='';
  label1.caption:=quita_comas(Label1.Caption);
Label1.Caption := formatcurr('###,###,###,###',strtocurr(Label1.Caption + '3'));
borra:=0;
 button1.SetFocus;}
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
{  if borra=1 then label1.Caption:='';
  label1.caption:=quita_comas(Label1.Caption);
Label1.Caption := formatcurr('###,###,###,###',strtocurr(Label1.Caption + '0'));
borra:=0;
 button1.SetFocus;}
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
{ Label1.Caption := '';
 sum1:=0;
 button1.SetFocus;}
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
{//  if Button18.Caption = 'Efectivo' then Button18.Caption := 'Cheque'
 // else Button18.Caption := 'Efectivo';
 //  button1.SetFocus;}
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
{  Label1.Caption := Label1.Caption + '.';}
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  DecimalSeparator:='.';
  form1.Top := 5;
  form1.Left := 5;
end;

procedure TForm1.Salir1Click(Sender: TObject);
begin
  halt;
end;

procedure TForm1.RecaudoDiario1Click(Sender: TObject);
begin
  form3.top :=30;
  form3.Left:=30;
  form3.show;
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
  total_xx;
  sum1:=0;
  borra:=1;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
{  total_xx;
  sum1 := strtoint(label1.caption);
  opera:='-';
  borra:=1;}
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
{  total_xx;
  sum1 := strtoint(label1.caption);
  opera:='*';
  borra:=1;}
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
{  total_xx;
  sum1 := strtoint(label1.caption);
  opera:='/';
  borra:=1;}
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
{  total_xx;
  sum1 := strtoint(label1.caption);
  opera:='+';
  borra:=1;}
end;

procedure TForm1.Button1KeyPress(Sender: TObject; var Key: Char);
begin
{  if key = '1' then form1.Button13.Click
  else if key = '2' then form1.Button14.Click
  else if key = '3' then form1.Button15.Click
  else if key = '4' then form1.Button10.Click
  else if key = '5' then form1.Button11.Click
  else if key = '6' then form1.Button12.Click
  else if key = '7' then form1.Button6.Click
  else if key = '8' then form1.Button7.Click
  else if key = '9' then form1.Button8.Click
//  else if key = '+' then form1.Button9.Click
//  else if key = '-' then form1.Button5.Click
//  else if key = '*' then form1.Button4.Click
//  else if key = '/' then form1.Button3.Click
 // else if key = 'c' then form1.Button2.Click
//  else if key = 'C' then form1.Button2.Click;}
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  edit1.SetFocus;
end;

procedure TForm1.Edit2Exit(Sender: TObject);
begin
  button1.SetFocus;
end;

end.

