unit Uhistoria_afiliado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, Grids, DBGrids, DBCtrls, StdCtrls,
  Buttons;

type
  Tfrmhistoria_afiliado = class(TForm)
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Panel1: TPanel;
    Label26: TLabel;
    GroupBox16: TGroupBox;
    gbdocumentos: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    dbltipos: TDBLookupComboBox;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    qryafiliados: TQuery;
    qryafiliadostip_documento: TStringField;
    qryafiliadosnum_documento: TStringField;
    qryafiliadosnov_codigo: TStringField;
    qryafiliadosnov_nombre: TStringField;
    qryafiliadosfec_novedad_afil: TDateTimeField;
    qryafiliadosdat_campo_ant: TStringField;
    qryafiliadosdat_campo_des: TStringField;
    qryafiliadosfec_evento: TDateTimeField;
    qryafiliadosfec_aplicativo: TDateTimeField;
    qryafiliadostip_documento_emp: TStringField;
    qryafiliadosnum_documento_emp: TStringField;
    qryafiliadoscod_sucursal: TStringField;
    qryafiliadosnum_planilla: TStringField;
    qryafiliadosusu_tipo_doc: TStringField;
    qryafiliadosusu_numero_doc: TStringField;
    qryafiliadoscod_oficina: TStringField;
    qryafiliadoscod_regional: TStringField;
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
    dstipos_documentos: TDataSource;
    qrycotiza: TQuery;
    qrycotizatip_documento_cot: TStringField;
    qrycotizanum_documento_cot: TStringField;
    dscotiza: TDataSource;
    Label48: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmhistoria_afiliado: Tfrmhistoria_afiliado;

implementation

uses Udmafiliaciones, Uafiliaciones;

{$R *.dfm}

procedure Tfrmhistoria_afiliado.AppMessage(var Msg: TMsg;
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
        if ((Screen.ActiveControl) is TDBLookupComboBox) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TGroupBox) then
             Msg.wParam := VK_TAB;
       end;
end;

procedure Tfrmhistoria_afiliado.BitBtn1Click(Sender: TObject);

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
                   showmessage('No existen Novedades para este Afiliado');
                   edit2.text:='';
                   dbltipos.Refresh;
                   dbltipos.SetFocus;
              end
            else
              begin
              qrycotiza.open;
              qryrelacion_afiliados.open;
              end;
        end;
end;

procedure Tfrmhistoria_afiliado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        action:=cafree;
end;

procedure Tfrmhistoria_afiliado.FormCreate(Sender: TObject);
begin
        Application.OnMessage := AppMessage;
        dmafiliaciones.tbltipos_documentos.Open;
end;

procedure Tfrmhistoria_afiliado.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.numerosKeypress(edit2,Key);
end;

end.


