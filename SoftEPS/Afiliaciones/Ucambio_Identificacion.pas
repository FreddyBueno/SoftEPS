unit Ucambio_Identificacion;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBTables, Mask, ExtCtrls, Grids, DBGrids, ComCtrls,
  Buttons;

type
  Tfrmacambio_identificacion = class(TForm)
    tblafiliadostip_documento: TStringField;
    tblafiliadosnum_documento: TStringField;
    tblafiliadospri_apellido: TStringField;
    tblafiliadosseg_apellido: TStringField;
    tblafiliadospri_nombre: TStringField;
    tblafiliadosseg_nombre: TStringField;
    tblafiliadoscod_sexo: TStringField;
    tblafiliadosfec_nacimiento: TDateTimeField;
    tblafiliadoscod_tipo_afil: TStringField;
    tblafiliadosfec_afiliacion_sis: TDateTimeField;
    tblafiliadosfec_afiliacion_uni: TDateTimeField;
    tblafiliadoscod_discapacidad: TStringField;
    tblafiliadosdir_afiliado_res: TStringField;
    tblafiliadostel_afiliado_res: TStringField;
    dsafiliados: TDataSource;
    tblafiliados: TTable;
    qryinsertafiliados: TQuery;
    qryupdatenovedades: TQuery;
    qryupdaterelacion_afiliados_cot: TQuery;
    qryupdaterelacion_afiliados_ben: TQuery;
    qryupdateafiliados_empresas: TQuery;
    qrydeleteafiliados: TQuery;
    tblafiliadoscod_modalidad_tra: TStringField;
    tblafiliadoscod_estado_civ: TStringField;
    tblafiliadoscod_estrato: TStringField;
    tblafiliadoscod_escolaridad: TStringField;
    tblafiliadoscod_profesion: TStringField;
    tblafiliadoscod_estado: TStringField;
    tblafiliadoscod_oficina: TStringField;
    tblafiliadoscod_regional: TStringField;
    tblafiliadoseps_tip_doc: TStringField;
    tblafiliadoseps_num_doc: TStringField;
    tblafiliadoscod_departamento_res: TStringField;
    tblafiliadoscod_ciudad_res: TStringField;
    tblafiliadoscod_barrio_res: TStringField;
    tblafiliadoscod_zona: TStringField;
    tblafiliadosace_tip_doc: TStringField;
    tblafiliadosace_numero_doc: TStringField;
    tblafiliadosfec_radicacion: TDateTimeField;
    tblafiliadosnum_formato_afil: TStringField;
    tblafiliadostel_afiliado_res2: TStringField;
    tblafiliadoscel_afiliado: TStringField;
    tblafiliadoseml_afiliado: TStringField;
    tblafiliadosfec_ultima_nov: TDateTimeField;
    qryinsertnovedades: TQuery;
    dstipos_documentos: TDataSource;
    dssexo: TDataSource;
    dsestratos: TDataSource;
    dsdiscapacidades: TDataSource;
    dsestadosciviles: TDataSource;
    Panel1: TPanel;
    Label5: TLabel;
    DBNavigator: TDBNavigator;
    GroupBox1: TGroupBox;
    gbdocumentos: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    dbltipos: TDBLookupComboBox;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    dbltiposdocumentos: TDBLookupComboBox;
    ednewnumero: TEdit;
    Button1: TButton;
    Panel4: TPanel;
    GroupBox4: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label33: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label36: TLabel;
    Label39: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    dblsexo: TDBLookupComboBox;
    dblestrato: TDBLookupComboBox;
    dbldiscapacidad: TDBLookupComboBox;
    dblestadocivil: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label48: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    dtstipoafiliado: TDataSource;
    qryautoliquicaciones: TQuery;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    dtszona: TDataSource;
    dtsdepartamento: TDataSource;
    dtsmunicipio: TDataSource;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
    procedure dbltiposExit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure dbltiposdocumentosExit(Sender: TObject);
    procedure ednewnumeroExit(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmacambio_identificacion: Tfrmacambio_identificacion;

implementation

uses Udmafiliaciones, Uafiliaciones;

{$R *.DFM}

procedure Tfrmacambio_identificacion.FormCreate(Sender: TObject);
begin
  Application.OnMessage := AppMessage;
  dmafiliaciones.tbltipos_documentos.Open;
  dmafiliaciones.tblsexo.Open;
  dmafiliaciones.tblestratos.Open;
  dmafiliaciones.tbldiscapacidades.Open;
  dmafiliaciones.tblestadosciviles.Open;
  dmafiliaciones.tbltiposafiliados.Open;
  dmafiliaciones.tblzonas.Open;
  dmafiliaciones.tbldepartamentos.Open;
  
end;

procedure Tfrmacambio_identificacion.Button1Click(Sender: TObject);
begin
        if MessageDlg('Realmente desea cambiar la identificacion del afiliado?',
           mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
                  dmafiliaciones.softeps.StartTransaction;
                  if (dbltiposdocumentos.Text <>'') and (ednewnumero.text <> '') then
                  begin
                  try
                  //execute insertafiliados
                  qryinsertafiliados.close;
                  qryinsertafiliados.Params[0].AsString := dbltiposdocumentos.Text;
                  qryinsertafiliados.Params[1].AsString := ednewnumero.text;
                  qryinsertafiliados.ExecSql;
//                  qryinsertafiliados.open;
                  //execute updatenovedades
                  qryupdatenovedades.close;
                  qryupdatenovedades.Params[0].AsString := dbltiposdocumentos.Text;
                  qryupdatenovedades.Params[1].AsString := ednewnumero.text;
                  qryupdatenovedades.ExecSql;
//                  qryupdatenovedades.open;
                  //execute updaterelacion_afiliados_cot
                  qryupdaterelacion_afiliados_cot.close;
                  qryupdaterelacion_afiliados_cot.Params[0].AsString := dbltiposdocumentos.Text;
                  qryupdaterelacion_afiliados_cot.Params[1].AsString := ednewnumero.text;
                  qryupdaterelacion_afiliados_cot.ExecSql;
//                  qryupdaterelacion_afiliados_cot.open;
                  //execute updaterelacion_afiliados_ben
                  qryupdaterelacion_afiliados_ben.close;
                  qryupdaterelacion_afiliados_ben.Params[0].AsString := dbltiposdocumentos.Text;
                  qryupdaterelacion_afiliados_ben.Params[1].AsString := ednewnumero.text;
                  qryupdaterelacion_afiliados_ben.ExecSql;
//                  qryupdaterelacion_afiliados_ben.open;
                  //execute updateafiliados_empresas
                  qryupdateafiliados_empresas.close;
                  qryupdateafiliados_empresas.Params[0].AsString := dbltiposdocumentos.Text;
                  qryupdateafiliados_empresas.Params[1].AsString := ednewnumero.text;
                  qryupdateafiliados_empresas.ExecSql;
//                  qryupdateafiliados_empresas.open;
                  //execute deleteafiliados
                  qrydeleteafiliados.close;
                  qrydeleteafiliados.ExecSql;
//                  qrydeleteafiliados.open;

// cambio de  documentos  en  autoliquidaciones y incapacidades

               qryautoliquicaciones.SQL.Clear;
               qryautoliquicaciones.SQL.Add('UPDATE DET_PLANILLA_AUTOLIQUIDACION SET AFI_TIPO_DOC = :"NTIPO", AFI_NUMERO_DOC = :"NNUMERO" WHERE AFI_TIPO_DOC = :"ATIPO" AND AFI_NUMERO_DOC = :"ANUMERO"');
               qryautoliquicaciones.Params[0].AsString := dbltipos.Text;
               qryautoliquicaciones.Params[1].AsString := Edit2.text;
               qryautoliquicaciones.Params[2].AsString := dbltiposdocumentos.Text;
               qryautoliquicaciones.Params[3].AsString := ednewnumero.text;
               qryautoliquicaciones.RequestLive := true;
               qryautoliquicaciones.ExecSql;


               qryautoliquicaciones.SQL.Clear;
               qryautoliquicaciones.SQL.Add('UPDATE INCAPACIDADES SET AFI_TIPO_DOC = :"NTIPO", AFI_NUMERO_DOC = :"NNUMERO" WHERE AFI_TIPO_DOC = :"ATIPO" AND AFI_NUMERO_DOC = :"ANUMERO"');
               qryautoliquicaciones.Params[0].AsString := dbltipos.Text;
               qryautoliquicaciones.Params[1].AsString := Edit2.text;
               qryautoliquicaciones.Params[2].AsString := dbltiposdocumentos.Text;
               qryautoliquicaciones.Params[3].AsString := ednewnumero.text;
               qryautoliquicaciones.RequestLive := true;
               qryautoliquicaciones.ExecSql;





                  //execute insertnovedades
                  qryinsertnovedades.Close;
                  qryinsertnovedades.Params[0].AsString := dbltiposdocumentos.Text;
                  qryinsertnovedades.Params[1].AsString := ednewnumero.text;
                  qryinsertnovedades.Params[2].AsString := gb_oficina;
                  qryinsertnovedades.Params[3].AsString := gb_regional;
                  qryinsertnovedades.Params[4].AsString := gb_tip_doc_usu;
                  qryinsertnovedades.Params[5].AsString := gb_num_doc_usu;
                  qryinsertnovedades.Params[6].AsDatetime := frmafiliaciones.fecha_actual();
                  qryinsertnovedades.Params[7].AsString := dbltipos.text+' '+edit2.text;
                  qryinsertnovedades.Params[8].Asstring := dbltiposdocumentos.Text+' '+ednewnumero.text;
                  qryinsertnovedades.Params[9].AsDatetime := frmafiliaciones.fecha_actual();
                  qryinsertnovedades.Params[10].AsDatetime := frmafiliaciones.fecha_actual();
                  qryinsertnovedades.ExecSql;
//                  qryinsertnovedades.open;



                    {try to write the updates to the database}
//                    qryinsertafiliados.ApplyUpdates;
//                    qryupdatenovedades.ApplyUpdates;
//                    qryupdaterelacion_afiliados_cot.ApplyUpdates;
//                    qryupdaterelacion_afiliados_ben.ApplyUpdates;
//                    qryupdateafiliados_empresas.ApplyUpdates;
//                    qrydeleteafiliados.ApplyUpdates;
//                    qryinsertnovedades.ApplyUpdates;
                    dmafiliaciones.softeps.Commit; {on success, commit the changes};
                    showMessage('El Cambio de documento se a realizado correctamento');
                    frmacambio_identificacion.close;
                  except
                        on e:EDBEngineError do
                        begin
                             dmafiliaciones.softeps.Rollback; {on failure, undo the changes};
                             e.message:='La identificacion Digitada ya existe en la Base de Datos, por favor digite otra identificación';
                             showMessage('Error actulizando la Identificación');
                             raise;
                        end
                        else
                        begin
                            dmafiliaciones.softeps.Rollback; {on failure, undo the changes};
                            raise;
                            showMessage('Error actulizando la Identificación');
                        end;
                  {raise the exception to prevent a call to CommitUpdates!}
                  end;

                  {on success, clear the cache}
//                  qryinsertafiliados.CommitUpdates;
//                  qryupdatenovedades.CommitUpdates;
//                  qryupdaterelacion_afiliados_cot.CommitUpdates;
//                  qryupdaterelacion_afiliados_ben.CommitUpdates;
//                  qryupdateafiliados_empresas.CommitUpdates;
//                  qrydeleteafiliados.CommitUpdates;
//                  qryinsertnovedades.CommitUpdates;
                  end
                  else
                        begin
                              dmafiliaciones.softeps.Rollback;
                              showMessage('No ha digitado la Nueva Identificación del Afiliado');
                        end;
            end
            else
             showMessage('Proceso Cancelado por el Usuario');

end;

procedure Tfrmacambio_identificacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        action:=cafree;
end;

procedure Tfrmacambio_identificacion.BitBtn1Click(Sender: TObject);
var
respuesta:boolean;
begin
        if  (dbltipos.Text <>'') and (edit2.Text <>'') then
        begin
             tblafiliados.open;
             respuesta:=tblafiliados.Findkey([dbltipos.text,edit2.text]);
             dmafiliaciones.Qryciudades.Active:=false;
             dmafiliaciones.Qryciudades.Params[0].AsString := tblafiliadoscod_departamento_res.Value;
             dmafiliaciones.Qryciudades.ExecSQL;
             dmafiliaciones.Qryciudades.Active:=true;
              if respuesta=false then
                begin
                tblafiliados.Close;
                     showmessage('No existe este afiliado en la Base de datos de la EPS');
                     edit2.text:='';

                     dbltipos.Refresh;
                     dbltipos.SetFocus;
                end;

        end;
end;



procedure Tfrmacambio_identificacion.AppMessage(var Msg: TMsg;
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


procedure Tfrmacambio_identificacion.dbltiposExit(Sender: TObject);
begin
if  dbltipos.Text = '' then
   begin
   ShowMessage('Selecione el tipo de  documento Antiguo');
   dbltipos.SetFocus;
   end;

end;

procedure Tfrmacambio_identificacion.Edit2Exit(Sender: TObject);
begin
if  Edit2.Text = '' then
   begin
   ShowMessage('Digite  el antiguo numero de  documento');
   Edit2.SetFocus;
   end
   else
   BitBtn1.Click;
end;

procedure Tfrmacambio_identificacion.dbltiposdocumentosExit(
  Sender: TObject);
begin
if  dbltiposdocumentos.Text = '' then
   begin
   ShowMessage('Selecione el tipo del Nuevo Documento');
   dbltiposdocumentos.SetFocus;
   end;


end;

procedure Tfrmacambio_identificacion.ednewnumeroExit(Sender: TObject);
begin
if  ednewnumero.Text = '' then
   begin
   ShowMessage('Digite  el Nuevo numero de  documento');
   ednewnumero.SetFocus;
   end
   else
   if   (ednewnumero.Text <> '')and (dbltiposdocumentos.text <> '') then
   begin
         qryautoliquicaciones.SQL.Clear;
         qryautoliquicaciones.SQL.Add('select * from afiliados where tip_documento = :"tipo" and num_documento = :"numero"');
         qryautoliquicaciones.Params[0].AsString := dbltiposdocumentos.Text;
         qryautoliquicaciones.Params[1].AsString := ednewnumero.text;
         qryautoliquicaciones.open;
         if  qryautoliquicaciones.RecordCount >0 then
           begin
           ShowMessage(' El Numero de documento ya Existe  con otro Afiliado Revise Nuevamente');
           dbltipos.SetFocus;
           end;
    end;
end;

end.
