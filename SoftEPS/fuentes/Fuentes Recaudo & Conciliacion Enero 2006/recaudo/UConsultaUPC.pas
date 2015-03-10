unit UConsultaUPC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, DBTables, ADODB;

type
  Tfrmconsultaafiliadosben = class(TForm)
    Panel2: TPanel;
    Label5: TLabel;
    Label47: TLabel;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Query1: TADOQuery;
    Query1TIP_DOCUMENTO_COT: TStringField;
    Query1NUM_DOCUMENTO_COT: TStringField;
    Query1TIP_DOCUMENTO: TStringField;
    Query1NUM_DOCUMENTO: TStringField;
    Query1COD_SEXO: TStringField;
    Query1COD_TIPO_AFIL: TStringField;
    Query1COD_MODALIDAD_TRA: TStringField;
    Query1COD_ESTADO_CIV: TStringField;
    Query1COD_ESTRATO: TStringField;
    Query1COD_ESCOLARIDAD: TStringField;
    Query1COD_PROFESION: TStringField;
    Query1COD_ESTADO: TStringField;
    Query1COD_OFICINA: TStringField;
    Query1COD_REGIONAL: TStringField;
    Query1PRI_NOMBRE: TStringField;
    Query1SEG_NOMBRE: TStringField;
    Query1PRI_APELLIDO: TStringField;
    Query1SEG_APELLIDO: TStringField;
    Query1FEC_NACIMIENTO: TDateTimeField;
    Query1FEC_AFILIACION_SIS: TDateTimeField;
    Query1FEC_AFILIACION_UNI: TDateTimeField;
    Query1EPS_TIP_DOC: TStringField;
    Query1EPS_NUM_DOC: TStringField;
    Query1COD_DEPARTAMENTO_RES: TStringField;
    Query1COD_CIUDAD_RES: TStringField;
    Query1COD_BARRIO_RES: TStringField;
    Query1COD_ZONA: TStringField;
    Query1ACE_TIP_DOC: TStringField;
    Query1ACE_NUMERO_DOC: TStringField;
    Query1COD_DISCAPACIDAD: TStringField;
    Query1NUM_SEMANA_COTIZA: TBCDField;
    Query1FEC_RADICACION: TDateTimeField;
    Query1NUM_FORMATO_AFIL: TStringField;
    Query1DIR_AFILIADO_RES: TStringField;
    Query1TEL_AFILIADO_RES: TStringField;
    Query1TEL_AFILIADO_RES2: TStringField;
    Query1CEL_AFILIADO: TStringField;
    Query1EML_AFILIADO: TStringField;
    Query1FEC_ULTIMA_NOV: TDateTimeField;
    Query1TIP_DOCUMENTO_IPS: TStringField;
    Query1NUM_DOCUMENTO_IPS: TStringField;
    Query1TIP_DOCUMENTO_MED: TStringField;
    Query1NUM_DOCUMENTO_MED: TStringField;
    Query1TIP_DOCUMENTO_ODO: TStringField;
    Query1NUM_DOCUMENTO_ODO: TStringField;
    Query1SEM_COTIZACION: TBCDField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconsultaafiliadosben: Tfrmconsultaafiliadosben;

implementation

uses dtmodulo;

{$R *.dfm}

procedure Tfrmconsultaafiliadosben.FormActivate(Sender: TObject);
begin
TOP := 0;
end;

procedure Tfrmconsultaafiliadosben.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
end;

procedure Tfrmconsultaafiliadosben.FormCreate(Sender: TObject);
begin
Query1.Open;
end;

end.
