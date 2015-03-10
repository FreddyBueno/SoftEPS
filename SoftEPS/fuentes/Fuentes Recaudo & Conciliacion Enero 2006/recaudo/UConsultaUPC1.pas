unit UConsultaUPC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, DBTables, ADODB;

type
  Tfrmconsultaafiliadosben1 = class(TForm)
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconsultaafiliadosben1: Tfrmconsultaafiliadosben1;

implementation

uses Upagoupcadicional, dtmodulo;

{$R *.dfm}

procedure Tfrmconsultaafiliadosben1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
end;

procedure Tfrmconsultaafiliadosben1.FormCreate(Sender: TObject);
begin
Query1.Open;
end;

procedure Tfrmconsultaafiliadosben1.DBGrid1DblClick(Sender: TObject);
begin
IF Query1TIP_DOCUMENTO_COT.Value <> '' THEN
BEGIN
FRMPAGOUPC.edtnumeroducafiliado.Text :=  Query1NUM_DOCUMENTO_COT.Value;
IF Query1TIP_DOCUMENTO_COT.Value= 'CC' THEN
           BEGIN
            FRMPAGOUPC.CBTIPODOCAFILIADO.ITEMINDEX := 0;
            END
            ELSE IF Query1TIP_DOCUMENTO_COT.Value = 'CE' THEN
                  BEGIN
                  FRMPAGOUPC.CBTIPODOCAFILIADO.ITEMINDEX := 1;
                  END
                  ELSE IF Query1TIP_DOCUMENTO_COT.Value = 'TI' THEN
                         BEGIN
                         FRMPAGOUPC.CBTIPODOCAFILIADO.ITEMINDEX := 2;
                         END
                          ELSE IF Query1TIP_DOCUMENTO_COT.Value = 'RC' THEN
                                 BEGIN
                                 FRMPAGOUPC.CBTIPODOCAFILIADO.ITEMINDEX := 3;
                                 END;
            FRMPAGOUPC.edtnumeroducafiliado.SETFOCUS;
END;
frmconsultaafiliadosben1.Close;

end;

procedure Tfrmconsultaafiliadosben1.FormActivate(Sender: TObject);
begin
top := 7;
end;

end.
