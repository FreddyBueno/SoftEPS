unit Uafiliaciones_empresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DBCtrls, ExtCtrls, StdCtrls, Mask, DB, DBTables, Menus,
  Buttons, ToolWin;

type
  Tfrmafiliacion_empresas = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    tblempresas: TTable;
    dsempresas: TDataSource;
    qryempresas: TQuery;
    dsdepartamentos: TDataSource;
    dsciudades: TDataSource;
    dsactividadeconomica: TDataSource;
    dstipoaportante: TDataSource;
    dstipopersona: TDataSource;
    dstipodeempresa: TDataSource;
    dspresentacioncompensacion: TDataSource;
    dszonas: TDataSource;
    dstiposdocumentos: TDataSource;
    dsciudades1: TDataSource;
    tblempresastip_documento: TStringField;
    tblempresasnum_documento: TStringField;
    tblempresascod_sucursal: TStringField;
    tblempresascod_actividad_eco: TStringField;
    tblempresascod_estado: TStringField;
    tblempresascod_oficina: TStringField;
    tblempresascod_regional: TStringField;
    tblempresastip_documento_arp: TStringField;
    tblempresasnum_documento_arp: TStringField;
    tblempresascod_departamento: TStringField;
    tblempresascod_ciudad: TStringField;
    tblempresastip_aportante: TStringField;
    tblempresasnom_empresa: TStringField;
    tblempresasfec_afiliacion: TDateTimeField;
    tblempresasdir_empresa: TStringField;
    tblempresastel_empresa: TStringField;
    tblempresastel_empresa2: TStringField;
    tblempresasurl_empresa: TStringField;
    tblempresaseml_empresa: TStringField;
    tblempresastot_empleados: TStringField;
    tblempresascod_tipo_per: TStringField;
    tblempresascod_zona: TStringField;
    tblempresascod_departamento_pag: TStringField;
    tblempresascod_ciudad_pag: TStringField;
    tblempresascod_presentacion_com: TStringField;
    tblempresascod_tip_empresa: TStringField;
    tblempresastip_documento_pen: TStringField;
    tblempresasnum_documento_pen: TStringField;
    dsestado: TDataSource;
    GroupBox4: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label18: TLabel;
    Label25: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit20: TDBEdit;
    dbltipoaportante: TDBLookupComboBox;
    dblpresentacioncompensacion: TDBLookupComboBox;
    dbltipodeempresa: TDBLookupComboBox;
    dbltipodepersona: TDBLookupComboBox;
    dblactividadeconomica: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit8: TDBEdit;
    dbldepartamentos: TDBLookupComboBox;
    dblciudades: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit15: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit24: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit16: TDBEdit;
    Button1: TButton;
    Edit1: TEdit;
    DBNavigator1: TDBNavigator;
    Label47: TLabel;
    Label48: TLabel;
    qryarp: TQuery;
    qryarpTIP_DOCUMENTO: TStringField;
    qryarpNUM_DOCUMENTO: TStringField;
    qryarpNOM_ARPS: TStringField;
    qryarpFEC_INCLUSION: TDateTimeField;
    msfecafiliacion: TMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure dbldepartamentosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure tblempresasBeforePost(DataSet: TDataSet);
    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure CrerrarPantalla1Click(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure dblactividadeconomicaExit(Sender: TObject);
    procedure dbltipoaportanteExit(Sender: TObject);
    procedure dbltipodepersonaExit(Sender: TObject);
    procedure dbltipodeempresaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure dbltipodeempresaExit(Sender: TObject);
    procedure DBEdit20Exit(Sender: TObject);
    procedure dbldepartamentosExit(Sender: TObject);
    procedure dblciudadesExit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBLookupComboBox5Exit(Sender: TObject);
    procedure DBLookupComboBox6Exit(Sender: TObject);
    procedure dblpresentacioncompensacionExit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure tblempresasAfterPost(DataSet: TDataSet);
    procedure msfecafiliacionExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmafiliacion_empresas: Tfrmafiliacion_empresas;

implementation

uses Udmafiliaciones, Uafiliaciones, Uarp, Upensiones;

{$R *.dfm}

procedure Tfrmafiliacion_empresas.FormShow(Sender: TObject);
begin
        tblempresas.open;
end;

procedure Tfrmafiliacion_empresas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        action:=cafree;
end;

procedure Tfrmafiliacion_empresas.DBEdit8Exit(Sender: TObject);
var
tipo_doc,num_doc,cod_sucursal:string;
begin
  if  TRIM(dbedit8.Text) <> '' then
  begin
        if (dbedit8.Text <>'') and (dbedit9.Text <>'') and (dbedit10.Text <>'') then
                begin
                tipo_doc:=dbedit8.Text;
                num_doc:=dbedit9.Text;
                cod_sucursal:=dbedit10.Text;

                qryempresas.Active:=false;
                qryempresas.Params[0].AsString := dbedit8.text;
                qryempresas.Params[1].AsString := dbedit9.text;
                qryempresas.Params[2].AsString := dbedit10.text;
                qryempresas.ExecSQL;
                qryempresas.open;
                DBEdit10.Text := '0';
                   if not qryempresas.eof  then
                    begin

                         tblempresas.cancel;
                         tblempresas.refresh;
                         tblempresas.Findkey([tipo_doc,num_doc,cod_sucursal]);
                         dmafiliaciones.Qryciudades.Active:=false;
                         dmafiliaciones.Qryciudades.Params[0].AsString := tblempresascod_departamento.text;
                         dmafiliaciones.Qryciudades.open;

                         dmafiliaciones.Qryciudades1.Active:=false;
                         dmafiliaciones.Qryciudades1.Params[0].AsString := tblempresascod_departamento_pag.text;
                         dmafiliaciones.Qryciudades1.open;
                         DBLookupComboBox3.Enabled := false;
                         if MessageDlg('Esta empresa ya existe desea modificar los datos ?',
                            mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                            begin
                                frmafiliacion_empresas.tblempresas.Edit;
                                DBNavigator1.Enabled := true;
                                DBLookupComboBox2.Enabled:=false;
                                DBEdit9.enabled:=false;
                                DBEdit10.enabled:=false;
                                msfecafiliacion.Text:=datetostr(tblempresasfec_afiliacion.Value);
                                DBLookupComboBox3.Enabled := true;
                            end
                            else
                                frmafiliacion_empresas.Close;

//                         tblempresas.Insert;
//                         frmafiliacion_empresas.DateTimePicker1.date:=frmafiliaciones.fecha_actual();
                         qryempresas.close;
                    end
                end
                else
                if dbedit9.Text = '' then
                begin
                ShowMessage('Digite  el numero de  documento de la  empresa');
                dbedit9.SetFocus;
                end
                else
                if dbedit10.Text = '' then
                begin
                ShowMessage('Digite  el numero de  sucursal de la   empresa');
                dbedit10.SetFocus;
                end;

  end
  else
  if dbedit8.Text = '' then
  begin
  ShowMessage('Selecione  el  tipo de  Documento de la  empresa para  continuar');
  DBLookupComboBox2.SetFocus;
  end;
end;

procedure Tfrmafiliacion_empresas.DateTimePicker1Change(Sender: TObject);
begin
        tblempresas.edit;
        tblempresasfec_afiliacion.Value:=strtodate(msfecafiliacion.Text);
end;

procedure Tfrmafiliacion_empresas.dbldepartamentosClick(Sender: TObject);
begin
        dmafiliaciones.Qryciudades.Active:=false;
        dmafiliaciones.Qryciudades.Params[0].AsString := tblempresascod_departamento.text;
        dmafiliaciones.Qryciudades.ExecSQL;
        dmafiliaciones.Qryciudades.Active:=true;
end;

procedure Tfrmafiliacion_empresas.FormCreate(Sender: TObject);
begin
        Application.OnMessage := AppMessage;
        dmafiliaciones.tbltipos_documentos.Open;
        dmafiliaciones.tblactividadeconomica.Open;
        dmafiliaciones.tbltipoaportante.Open;
        dmafiliaciones.tbltipopersona.Open;
        dmafiliaciones.tbltipopersona.Open;
        dmafiliaciones.tbltipoempresa.Open;
        dmafiliaciones.tblperiododecompensacion.Open;
        dmafiliaciones.tbldepartamentos.Open;
        dmafiliaciones.tblzonas.Open;
        dmafiliaciones.tblestados.Open;
end;

procedure Tfrmafiliacion_empresas.DBLookupComboBox5Click(Sender: TObject);
begin
        dmafiliaciones.Qryciudades1.Active:=false;
        dmafiliaciones.Qryciudades1.Params[0].AsString := tblempresascod_departamento_pag.text;
        dmafiliaciones.Qryciudades1.ExecSQL;
        dmafiliaciones.Qryciudades1.Active:=true;
end;

procedure Tfrmafiliacion_empresas.Button1Click(Sender: TObject);
begin
        frmarp:=Tfrmarp.create(Application);
              try
                      frmarp.show;

              except
                      frmarp.free;
              end;
end;

procedure Tfrmafiliacion_empresas.Button2Click(Sender: TObject);
begin
        frmpensiones:=Tfrmpensiones.create(Application);
              try
                      frmpensiones.show;

              except
                      frmpensiones.free;
              end;
end;

procedure Tfrmafiliacion_empresas.tblempresasBeforePost(DataSet: TDataSet);
begin
     tblempresas.edit;
     tblempresasfec_afiliacion.Value:=strtodate(msfecafiliacion.Text);
end;

procedure Tfrmafiliacion_empresas.AppMessage(var Msg: TMsg;
  var Handled: Boolean);
begin
        if Msg.wParam = VK_RETURN then
       begin
        if ((Screen.ActiveControl) is TComboBox) then
             Msg.wParam := VK_TAB;
        if (((Screen.ActiveControl) is TEdit)) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TDBEdit) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TDateTimePicker) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TMaskEdit) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TDateTimePicker) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TDBLookupComboBox) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TGroupBox) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TTabSheet) then
             Msg.wParam := VK_TAB;


       end;

end;

procedure Tfrmafiliacion_empresas.DBEdit9KeyPress(Sender: TObject;
  var Key: Char);
begin
     frmafiliaciones.numerosKeypress(dbedit9,Key);
end;

procedure Tfrmafiliacion_empresas.DBEdit18KeyPress(Sender: TObject;
  var Key: Char);
begin
     frmafiliaciones.letrasKeypress(dbedit18,Key);   
end;

procedure Tfrmafiliacion_empresas.DBEdit19KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.numerosKeypress(dbedit19,Key);
end;

procedure Tfrmafiliacion_empresas.DBEdit24KeyPress(Sender: TObject;
  var Key: Char);
begin
     frmafiliaciones.numerosKeypress(dbedit24,Key);   
end;

procedure Tfrmafiliacion_empresas.DBEdit16KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.numerosKeypress(dbedit16,Key);
end;

procedure Tfrmafiliacion_empresas.DBEdit20KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.numerosKeypress(dbedit20,Key);
end;

procedure Tfrmafiliacion_empresas.CrerrarPantalla1Click(Sender: TObject);
begin
 frmafiliacion_empresas.Close;
end;

procedure Tfrmafiliacion_empresas.DBEdit18Exit(Sender: TObject);
begin
  if  TRIM(DBEdit18.Text) = '' then
   begin
   ShowMessage('Digite la razon social de  Empresa');
   DBEdit18.SetFocus;
   end;
end;

procedure Tfrmafiliacion_empresas.dblactividadeconomicaExit(
  Sender: TObject);
begin
if  dblactividadeconomica.Text = '' then
   begin
   ShowMessage('Selecione  la Actividad Economica  de  la Empresa');
   dblactividadeconomica.SetFocus;
   end;
end;

procedure Tfrmafiliacion_empresas.dbltipoaportanteExit(Sender: TObject);
begin
if  dbltipoaportante.Text = '' then
   begin
   ShowMessage('Selecione  el tipo de aportante');
   dbltipoaportante.SetFocus;
   end;
end;

procedure Tfrmafiliacion_empresas.dbltipodepersonaExit(Sender: TObject);
begin
if  dbltipodepersona.Text = '' then
   begin
   ShowMessage('Selecione  el tipo de persona');
   dbltipodepersona.SetFocus;
   end;
end;

procedure Tfrmafiliacion_empresas.dbltipodeempresaClick(Sender: TObject);
begin
if  dbltipodeempresa.Text = '' then
   begin
   ShowMessage('Selecione  el tipo de  Empresa');
   dbltipodeempresa.SetFocus;
   end;

end;

procedure Tfrmafiliacion_empresas.FormActivate(Sender: TObject);
begin
if DBEdit9.Text = '' then
 begin
 DBLookupComboBox2.SetFocus;
 DBNavigator1.Enabled := FALSE;
end;

end;

procedure Tfrmafiliacion_empresas.DBEdit16Exit(Sender: TObject);
begin
if  DBEdit16.Text = '' then
   begin
   ShowMessage('Digite   el numero de documento de la Administradora  de Riesgos Profesionales ARP');
   DBEdit16.SetFocus;
   end
   else
   if  DBEdit16.Text <> '' then
   begin
    qryarp.Close;
    qryarp.PREPARE;
    qryarp.SQL.CLEAR;
    qryarp.SQL.ADD('SELECT *  FROM dbo.arps where tip_documento = :"Tipo" and  num_documento = :"Numero"');
    qryarp.PARAMS[0].ASSTRING := DBLookupComboBox1.KeyValue;
    qryarp.PARAMS[1].ASSTRING := DBEdit16.Text;
    qryarp.OPEN;
        if qryarp.RecordCount = 1 then
        begin
        EDIT1.Text := qryarpNOM_ARPS.Value;
        DBNavigator1.Enabled := true;
        DBNavigator1.SetFocus;
        end
        else
        if qryarp.RecordCount = 0 then
         begin
         ShowMessage('La Adminsitradora  de riesgos profesionales  no existe  Consulte  el la lista');
              frmarp:=Tfrmarp.create(Application);
              try
                      frmarp.show;


              except
                      frmarp.free;
              end;

         end;
   end;


DBNavigator1.Enabled := true;
end;

procedure Tfrmafiliacion_empresas.DBLookupComboBox2Exit(Sender: TObject);
begin
if dbedit8.Text = '' then
  begin
  ShowMessage('Selecione  el  tipo de  Documento de la  empresa para  continuar');
  DBLookupComboBox2.SetFocus;
  end;
end;

procedure Tfrmafiliacion_empresas.dbltipodeempresaExit(Sender: TObject);
begin
if  dbltipodeempresa.Text = '' then
   begin
   ShowMessage('Selecione  el tipo de Empresa');
   dbltipodeempresa.SetFocus;
   end;

end;

procedure Tfrmafiliacion_empresas.DBEdit20Exit(Sender: TObject);
begin
if  DBEdit20.Text = '' then
   begin
   ShowMessage('Digite  el numero de  Empleados  que  tiene  la Empresa');
   DBEdit20.SetFocus;
   end;

end;

procedure Tfrmafiliacion_empresas.dbldepartamentosExit(Sender: TObject);
begin
if  dbldepartamentos.Text = '' then
   begin
   ShowMessage('Selecione el departamento donde  esta  ubicada  la  Empresa');
   dbldepartamentos.SetFocus;
   end
   else
   if  dbldepartamentos.Text <> '' then
    begin
    tblempresas.edit;
    tblempresascod_departamento_pag.Value:=dbldepartamentos.KeyValue;
    dmafiliaciones.Qryciudades1.Active:=false;
    dmafiliaciones.Qryciudades1.Params[0].AsString := tblempresascod_departamento_pag.text;
    dmafiliaciones.Qryciudades1.ExecSQL;
    dmafiliaciones.Qryciudades1.Active:=true;
    end;

end;

procedure Tfrmafiliacion_empresas.dblciudadesExit(Sender: TObject);
begin
if  dblciudades.Text = '' then
   begin
   ShowMessage('Selecione el Municipio donde  esta  ubicada  la  Empresa');
   dblciudades.SetFocus;
   end
   else
   if  dblciudades.Text <> '' then
   begin
   tblempresas.edit;
   tblempresascod_ciudad_pag.Value:=dblciudades.KeyValue;
   end;

end;

procedure Tfrmafiliacion_empresas.DBEdit15Exit(Sender: TObject);
begin
if  TRIM(DBEdit15.Text) = '' then
   begin
   ShowMessage('Digite  la Direccion de  la Empresa donde  esta  Ubicada');
   DBEdit15.SetFocus;
   end;

end;

procedure Tfrmafiliacion_empresas.DBLookupComboBox4Exit(Sender: TObject);
begin
if  DBLookupComboBox4.Text = '' then
   begin
   ShowMessage('Selecione  La  zona  donde esta  ubicada  la Empresa');
   DBLookupComboBox4.SetFocus;
   end;
end;

procedure Tfrmafiliacion_empresas.DBEdit19Exit(Sender: TObject);
begin
if  DBEdit19.Text = '' then
   begin
   ShowMessage('Digite  el Numero Telefonico  de la  empresa  ');
   DBEdit19.SetFocus;
   end
   else
   if Length(DBEdit19.Text) <= 6 then
   begin
   ShowMessage('El numero Telefonico debe ser minimo de 6 digitos ¡Digitelo Nuevamente!');
    DBEdit19.SetFocus;
   end;

end;

procedure Tfrmafiliacion_empresas.DBLookupComboBox5Exit(Sender: TObject);
begin
if  DBLookupComboBox5.Text = '' then
   begin
   ShowMessage('Selecione  el Departamento  donde  realizara  los aportes  la Empresa');
   DBLookupComboBox5.SetFocus;
   end;

end;

procedure Tfrmafiliacion_empresas.DBLookupComboBox6Exit(Sender: TObject);
begin
if  DBLookupComboBox6.Text = '' then
   begin
   ShowMessage('Selecione  el Municipio  donde  realizara  los aportes  la Empresa');
   DBLookupComboBox6.SetFocus;
   end;

end;

procedure Tfrmafiliacion_empresas.dblpresentacioncompensacionExit(
  Sender: TObject);
begin
if  dblpresentacioncompensacion.Text = '' then
   begin
   ShowMessage('Selecione  El tipo  de Presentacion  de los aportes para Autoliquidaciones');
   dblpresentacioncompensacion.SetFocus;
   end;

end;

procedure Tfrmafiliacion_empresas.DBLookupComboBox1Exit(Sender: TObject);
begin
if  DBLookupComboBox1.Text = '' then
   begin
   ShowMessage('Selecione  el Tipo de documento de la Administradora  de Riesgos Profesionales ARP');
   DBLookupComboBox1.SetFocus;
   end;

end;

procedure Tfrmafiliacion_empresas.DBEdit30Exit(Sender: TObject);
var log,i : integer;
arroba : string;
encontro : Boolean;
begin
log := 0;
i := 0;
encontro := false;
if  DBEdit30.Text <> '' then
   begin
   log := Length(DBEdit30.Text);
     for i := 1 to log do
     begin

       arroba := copy(DBEdit30.Text,i,1);
        if copy(DBEdit30.Text,i,1) = '@' then
        begin
        encontro := true;
        end;
     end;
     if  encontro = false then
     begin
     ShowMessage('Esta  no es una  direccion de  correo Electronico ej : softeps@hotmail.com ');
     DBEdit30.SetFocus;
     end;
   end;
end;

procedure Tfrmafiliacion_empresas.tblempresasAfterPost(DataSet: TDataSet);
begin
      if MessageDlg('La  Empresa fue graba correctamente Desea Ingresar  una Nueva Empresa ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                begin
                frmafiliacion_empresas.DBNavigator1.VisibleButtons:=[nbPost];
                frmafiliacion_empresas.msfecafiliacion.Text:=datetostr(frmafiliaciones.fecha_actual());
                frmafiliacion_empresas.tblempresas.Insert;
//                frmafiliacion_empresas.tblempresas.Edit;
                frmafiliacion_empresas.tblempresascod_regional.Text:=gb_regional;
                frmafiliacion_empresas.tblempresascod_oficina.Text:=gb_oficina;
                frmafiliacion_empresas.tblempresascod_sucursal.Text:='0';
                frmafiliacion_empresas.tblempresascod_estado.Text:='A';
                DBLookupComboBox2.Enabled := true;
                DBEdit9.enabled:=true;
                DBEdit10.enabled:=true;
                DBLookupComboBox2.SetFocus;
                end
                else
                frmafiliacion_empresas.Close;

end;

procedure Tfrmafiliacion_empresas.msfecafiliacionExit(Sender: TObject);
begin
if gb_fec_eps > strtodate(msfecafiliacion.Text) then
        begin
        ShowMessage('La fecha  de afiliacion de la empresa  es mayor a a fecha de autorizacion de  la EPS');
        msfecafiliacion.SetFocus;
        end
        else
        if gb_fec_hoy < strtodate(msfecafiliacion.Text) then
        begin
        ShowMessage('fecha No Valida  debe ser menor al dia de Hoy');
        msfecafiliacion.SetFocus;
       end;
end;

end.
