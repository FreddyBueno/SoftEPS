unit Uact_certificados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Buttons, Mask, Grids, DBGrids, ExtCtrls,
  DBCtrls;

type
  Tfrmact_certificados = class(TForm)
    qrynovedades: TQuery;
    qrynovedadesnov_codigo: TStringField;
    qrynovedadesnov_nombre: TStringField;
    dsnovedades: TDataSource;
    qryafiliados: TQuery;
    dsafiliados: TDataSource;
    qrynovedades_afiliados: TQuery;
    dstipos_documentos: TDataSource;
    dssexo: TDataSource;
    dsestratos: TDataSource;
    dsdiscapacidades: TDataSource;
    dsestadosciviles: TDataSource;
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
    Panel1: TPanel;
    GroupBox4: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label33: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label36: TLabel;
    Label39: TLabel;
    DBEdit23: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    dblsexo: TDBLookupComboBox;
    dblestrato: TDBLookupComboBox;
    dbldiscapacidad: TDBLookupComboBox;
    dblestadocivil: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    GroupBox7: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    GroupBox2: TGroupBox;
    dbgnovedades: TDBGrid;
    Panel2: TPanel;
    Label5: TLabel;
    GroupBox3: TGroupBox;
    gbdocumentos: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    dbltipos: TDBLookupComboBox;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label14: TLabel;
    mefecha_evento: TMaskEdit;
    Button1: TButton;
    Label48: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbltiposExit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmact_certificados: Tfrmact_certificados;

implementation

uses Uafiliaciones, Udmafiliaciones;

{$R *.dfm}

procedure Tfrmact_certificados.Button1Click(Sender: TObject);
var
fecha_evento:Tdatetime;
begin
//        qryafiliados.close;
//        qryafiliados.Params[0].AsString := cbtipos.text;
//        qryafiliados.Params[1].AsString := ednumero.text;
//        qryafiliados.ExecSql;
//        qryafiliados.open;

        if qryafiliados.eof then
            showmessage('El afiliado no existe o esta inactivo')
        else
            begin
                 if MessageDlg('Realmente desea ingresar el certificado de este afiliado?',
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
                               begin
                                    showmessage('Proceso Cancelado por el Usuario');
                                    exit;
                               end;
                        end;
                        dmafiliaciones.softeps.StartTransaction;
                        try
                         //execute qrynovedades_afiliados
                        qrynovedades_afiliados.Close;
                        qrynovedades_afiliados.Params[0].AsString := qrynovedadesnov_codigo.Text;
                        qrynovedades_afiliados.Params[1].AsString := dbltipos.text;
                        qrynovedades_afiliados.Params[2].AsString := edit2.text;
                        qrynovedades_afiliados.Params[3].AsString := gb_oficina;
                        qrynovedades_afiliados.Params[4].AsString := gb_regional;
                        qrynovedades_afiliados.Params[5].AsString := gb_tip_doc_usu;
                        qrynovedades_afiliados.Params[6].AsString := gb_num_doc_usu;
                        qrynovedades_afiliados.Params[7].AsDatetime := frmafiliaciones.fecha_actual();
                        qrynovedades_afiliados.Params[8].AsDatetime := fecha_evento;
                        qrynovedades_afiliados.Params[9].AsDatetime := frmafiliaciones.fecha_actual();
//                      qrynovedades_afiliados.Params[10].AsString := null;
//                      qrynovedades_afiliados.Params[11].AsString := null;
//                      qrynovedades_afiliados.Params[12].AsString := null;
                        qrynovedades_afiliados.ExecSql;
                        dmafiliaciones.softeps.Commit; {on success, commit the changes};
                        showMessage('Proceso Finalizado con Exito, Actulización de Certificado Finalizado');
                        except
                              dmafiliaciones.softeps.Rollback; {on failure, undo the changes};
                              raise;
                              showMessage('Error en Actualizacion de Certificados');
                        end;
                    end;

            end;

end;

procedure Tfrmact_certificados.BitBtn1Click(Sender: TObject);
begin
        qryafiliados.close;
        qryafiliados.Params[0].AsString := dbltipos.Text;
        qryafiliados.Params[1].AsString := Edit2.text;
        qryafiliados.ExecSql;
        qryafiliados.open;

        if qryafiliados.eof then
            showmessage('El afiliado no existe o esta inactivo');

end;

procedure Tfrmact_certificados.FormCreate(Sender: TObject);
begin
        dmafiliaciones.tbltipos_documentos.Open;
  dmafiliaciones.tblsexo.Open;
  dmafiliaciones.tblestratos.Open;
  dmafiliaciones.tbldiscapacidades.Open;
  dmafiliaciones.tblestadosciviles.Open;
end;

procedure Tfrmact_certificados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        action:=cafree;
end;

procedure Tfrmact_certificados.dbltiposExit(Sender: TObject);
begin
 if  dbltipos.Text = '' then
   begin
   ShowMessage('Selecione  el tipo de  documento');
   dbltipos.SetFocus;
   end

end;

procedure Tfrmact_certificados.Edit2Exit(Sender: TObject);
begin
if  Edit2.Text = '' then
   begin
   ShowMessage('Digite el tipo de Documento  el tipo de  documento');
   Edit2.SetFocus;
   end
end;

procedure Tfrmact_certificados.FormActivate(Sender: TObject);
begin
dbltipos.SetFocus;
end;

end.
