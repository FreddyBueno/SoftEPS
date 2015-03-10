unit Uconsulta_formulario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Mask, DBCtrls, StdCtrls, DB, DBTables, Buttons,
  ExtCtrls;

type
  Tfrmconsulta_formulario = class(TForm)
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Panel1: TPanel;
    Label26: TLabel;
    DBNavigator: TDBNavigator;
    GroupBox16: TGroupBox;
    gbdocumentos: TGroupBox;
    Label1: TLabel;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    Panel3: TPanel;
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
    qrycotiza: TQuery;
    qrycotizatip_documento_cot: TStringField;
    qrycotizanum_documento_cot: TStringField;
    dscotiza: TDataSource;
    Label48: TLabel;
    DBGrid2: TDBGrid;
    qryafiliadosCOD_TIPO_AFIL: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconsulta_formulario: Tfrmconsulta_formulario;

implementation

uses Uafiliaciones;

{$R *.dfm}

procedure Tfrmconsulta_formulario.BitBtn1Click(Sender: TObject);
begin
        if (edit2.Text <>'') then
        begin
            qryafiliados.close;
            qryafiliados.Params[0].AsString := edit2.Text;
            qryafiliados.ExecSql;
            qryafiliados.Open;
            if qryafiliados.eof then
              begin
                   showmessage('No existe este afiliado en la BD');
                   edit2.text:='';
              end
            else
              begin
              qrycotiza.open;
              qryrelacion_afiliados.open;
              end;
        end;
end;

procedure Tfrmconsulta_formulario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        action:=cafree;
end;

procedure Tfrmconsulta_formulario.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.letrasKeypress(edit2,Key);
end;

end.
