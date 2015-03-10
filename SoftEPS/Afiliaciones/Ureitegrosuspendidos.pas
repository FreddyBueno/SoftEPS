unit Ureitegrosuspendidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Mask, DBCtrls, StdCtrls, Buttons, ExtCtrls, DB,
  DBTables;

type
  Tfrmreintegrossuspendidos = class(TForm)
    qryafiliados: TQuery;
    qryafiliadostip_documento: TStringField;
    qryafiliadosnum_documento: TStringField;
    qryafiliadoscod_sexo: TStringField;
    qryafiliadospri_apellido: TStringField;
    qryafiliadosseg_apellido: TStringField;
    qryafiliadospri_nombre: TStringField;
    qryafiliadosseg_nombre: TStringField;
    qryafiliadosfec_nacimiento: TDateTimeField;
    qryafiliadoscod_estado_civ: TStringField;
    qryafiliadoscod_estrato: TStringField;
    qryafiliadosfec_afiliacion_sis: TDateTimeField;
    qryafiliadosfec_afiliacion_uni: TDateTimeField;
    qryafiliadoscod_discapacidad: TStringField;
    qryafiliadosnom_afiliado: TStringField;
    dsafiliados: TDataSource;
    qryrelacion_afiliados: TQuery;
    qryrelacion_afiliadoscod_tipo_afil: TStringField;
    qryrelacion_afiliadoscod_parentesco: TStringField;
    qryrelacion_afiliadostip_documento_ben: TStringField;
    qryrelacion_afiliadosnum_documento_ben: TStringField;
    qryrelacion_afiliadospri_apellido: TStringField;
    qryrelacion_afiliadosseg_apellido: TStringField;
    qryrelacion_afiliadospri_nombre: TStringField;
    qryrelacion_afiliadosseg_nombre: TStringField;
    qryrelacion_afiliadoscod_sexo: TStringField;
    qryrelacion_afiliadosfec_nacimiento: TDateTimeField;
    dsrelacion_afiliados: TDataSource;
    Panel1: TPanel;
    DBNavigator: TDBNavigator;
    btnsuspencion: TBitBtn;
    dsnovedades: TDataSource;
    qrynovedades: TQuery;
    qrynovedadesnov_codigo: TStringField;
    qrynovedadesnov_nombre: TStringField;
    Panel4: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    qryupdaterelacion_afiliados: TQuery;
    qryupdateafiliados: TQuery;
    qrynovedades_afiliados: TQuery;
    dstipos_documentos: TDataSource;
    dssexo: TDataSource;
    dsestratos: TDataSource;
    dsdiscapacidades: TDataSource;
    dsestadosciviles: TDataSource;
    GroupBox16: TGroupBox;
    gbdocumentos: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    dbltipos: TDBLookupComboBox;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    Label13: TLabel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    mefecha_evento: TMaskEdit;
    ednumero_planilla: TEdit;
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
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    dblsexo: TDBLookupComboBox;
    dblestrato: TDBLookupComboBox;
    dbldiscapacidad: TDBLookupComboBox;
    dblestadocivil: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    dbgnovedades: TDBGrid;
    Label26: TLabel;
    Label48: TLabel;
    procedure btnsuspencionClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmreintegrossuspendidos: Tfrmreintegrossuspendidos;

implementation

uses Uafiliaciones, Udmafiliaciones;

{$R *.dfm}

procedure Tfrmreintegrossuspendidos.btnsuspencionClick(Sender: TObject);
var
fecha_evento:Tdatetime;
begin
        if MessageDlg('Realmente desea reintegrar este(os) afiliado(s)?',
           mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
                  try
                     fecha_evento:=strtodate(mefecha_evento.Text);
                  except
                     showmessage('La fecha de evento es erronea');
                     if MessageDlg('Desea Remplazar la fecha de evento por la del fecha del sistema',
                        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                        fecha_evento:=frmafiliaciones.fecha_actual()
                     else
                        exit;

                  end;
                  qryrelacion_afiliados.First;
                  dmafiliaciones.softeps.StartTransaction;
                  if (qryrelacion_afiliadoscod_tipo_afil.text = 'C') { and (qryrelacion_afiliados.RecordCount = 1)} then
                                begin
                                      try
                                         while not qryrelacion_afiliados.eof do
                                                begin
                                                      //execute updateafiliados
                                                      qryupdateafiliados.close;
                                                      qryupdateafiliados.Params[0].AsString := 'A';
                                                      qryupdateafiliados.Params[1].AsDatetime := frmafiliaciones.fecha_actual();
                                                      qryupdateafiliados.Params[2].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                                      qryupdateafiliados.Params[3].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                                      qryupdateafiliados.ExecSql;

                                                      //execute updatenovedades
                                                      qryupdaterelacion_afiliados.close;
                                                      qryupdaterelacion_afiliados.Params[0].AsString := 'A';
                                                      qryupdaterelacion_afiliados.Params[1].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                                      qryupdaterelacion_afiliados.Params[2].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                                      qryupdaterelacion_afiliados.ExecSql;

                                                      //execute qrynovedades_afiliados
                                                      qrynovedades_afiliados.Close;
                                                      qrynovedades_afiliados.Params[0].AsString := '87';
                                                      qrynovedades_afiliados.Params[1].AsString := qryrelacion_afiliadostip_documento_ben.Text;
                                                      qrynovedades_afiliados.Params[2].AsString := qryrelacion_afiliadosnum_documento_ben.Text;
                                                      qrynovedades_afiliados.Params[3].AsString := gb_oficina;
                                                      qrynovedades_afiliados.Params[4].AsString := gb_regional;
                                                      qrynovedades_afiliados.Params[5].AsString := gb_tip_doc_usu;
                                                      qrynovedades_afiliados.Params[6].AsString := gb_num_doc_usu;
                                                      qrynovedades_afiliados.Params[7].AsDatetime := frmafiliaciones.fecha_actual();
                                                      qrynovedades_afiliados.Params[8].AsDatetime := fecha_evento;
                                                      qrynovedades_afiliados.Params[9].AsDatetime := frmafiliaciones.fecha_actual();
//                                                                        qrynovedades_afiliados.Params[10].AsString := null;
//                                                                        qrynovedades_afiliados.Params[11].AsString := null;
//                                                                        qrynovedades_afiliados.Params[12].AsString := null;
                                                      if ednumero_planilla.text <> '' then
                                                                qrynovedades_afiliados.Params[13].AsString := ednumero_planilla.text;
                                                      qrynovedades_afiliados.ExecSql;
                                                      qryrelacion_afiliados.next;
                                                end;
                                                dmafiliaciones.softeps.Commit; {on success, commit the changes};
                                                showMessage('Proceso Finalizado con Exito,Afiliado Reintegrado por Interrupcion de la Afiliacion por Salida del Pais');
                                      except
                                                dmafiliaciones.softeps.Rollback; {on failure, undo the changes};
                                                raise;
                                                showMessage('Error en el el reintegro del Afiliado');
                                      end;
                                end
                                else
                                    showMessage('Error');
            end;
end;

procedure Tfrmreintegrossuspendidos.FormCreate(Sender: TObject);
begin
        Application.OnMessage := AppMessage;
        dmafiliaciones.tbltipos_documentos.Open;
        dmafiliaciones.tblsexo.Open;
        dmafiliaciones.tblestratos.Open;
        dmafiliaciones.tbldiscapacidades.Open;
        dmafiliaciones.tblestadosciviles.Open;
end;

procedure Tfrmreintegrossuspendidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        action:=cafree;
end;

procedure Tfrmreintegrossuspendidos.BitBtn1Click(Sender: TObject);

begin
        if  (dbltipos.Text <>'') and (edit2.Text <>'') then
        begin
            qryafiliados.close;
            qryafiliados.Params[0].AsString := dbltipos.Text;
            qryafiliados.Params[1].AsString := edit2.Text;
            qryafiliados.ExecSql;
            qryafiliados.Open;
            if qryafiliados.eof then
              begin
                   showmessage('No existe este afiliado en la BD');
                   edit2.text:='';
                   dbltipos.Refresh;
                   dbltipos.SetFocus;
              end
            else
              qryrelacion_afiliados.open;
        end;
end;

procedure Tfrmreintegrossuspendidos.AppMessage(var Msg: TMsg;
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
        if ((Screen.ActiveControl) is TMaskEdit) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TDBLookupComboBox) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TGroupBox) then
             Msg.wParam := VK_TAB;
       end;
end;

procedure Tfrmreintegrossuspendidos.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.numerosKeypress(edit2,Key);

end;
procedure Tfrmreintegrossuspendidos.Edit2Exit(Sender: TObject);
begin
     if  (Edit2.Text = '') and (dbltipos.KeyValue ='') then
         begin
         ShowMessage('Debe Digitar el numero de documento del Afiliado');
         Edit2.SetFocus;
         end
         else
         BitBtn1.Click;
end;

end.
