unit concomision;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, DB, DBTables, ExtCtrls;

type
  TForm1 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    Query1: TQuery;
    Query2: TQuery;
    DataSource1: TDataSource;
    Query1TIP_DOCUMENTO: TStringField;
    Query1COD_ESTADO: TStringField;
    Query1NUM_DOCUMENTO: TStringField;
    Query1PRI_APELLIDO: TStringField;
    Query1SEG_APELLIDO: TStringField;
    Query1PRI_NOMBRE: TStringField;
    Query1SEG_NOMBRE: TStringField;
    Query1COD_REGIONAL: TStringField;
    Query1TIP_CONTRATO: TStringField;
    Query2TIP_DOCUMENTO_ASE: TStringField;
    Query2NUM_DOCUMENTO_ASE: TStringField;
    Query2TIP_DOCUMENTO_AFI: TStringField;
    Query2NUM_DOCUMENTO_AFI: TStringField;
    Query2PER_COMPENSACION: TStringField;
    Query2NUM_DECLARACION: TFloatField;
    Query2FEC_CORTE: TDateTimeField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRGroup1: TQRGroup;
    QRSubDetail1: TQRSubDetail;
    QRBand3: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    Query2TIP_DOCUMENTO: TStringField;
    Query2NUM_DOCUMENTO: TStringField;
    Query2COD_SUCURSAL: TStringField;
    Query2COD_ACTIVIDAD_ECO: TStringField;
    Query2COD_ESTADO: TStringField;
    Query2COD_OFICINA: TStringField;
    Query2COD_REGIONAL: TStringField;
    Query2TIP_DOCUMENTO_ARP: TStringField;
    Query2NUM_DOCUMENTO_ARP: TStringField;
    Query2COD_DEPARTAMENTO: TStringField;
    Query2COD_CIUDAD: TStringField;
    Query2TIP_APORTANTE: TStringField;
    Query2NOM_EMPRESA: TStringField;
    Query2FEC_AFILIACION: TDateTimeField;
    Query2DIR_EMPRESA: TStringField;
    Query2TEL_EMPRESA: TStringField;
    Query2TEL_EMPRESA2: TStringField;
    Query2URL_EMPRESA: TStringField;
    Query2EML_EMPRESA: TStringField;
    Query2TOT_EMPLEADOS: TStringField;
    Query2COD_TIPO_PER: TStringField;
    Query2COD_ZONA: TStringField;
    Query2COD_DEPARTAMENTO_PAG: TStringField;
    Query2COD_CIUDAD_PAG: TStringField;
    Query2COD_PRESENTACION_COM: TStringField;
    Query2COD_TIP_EMPRESA: TStringField;
    Query2TIP_DOCUMENTO_PEN: TStringField;
    Query2NUM_DOCUMENTO_PEN: TStringField;
    Query2AFI_NUMERO_DOC: TStringField;
    Query2AFI_TIPO_DOC: TStringField;
    Query2NUM_DECLARACION_1: TFloatField;
    Query2COD_GRUPO_ETAREO: TFloatField;
    Query2TIP_UPC: TStringField;
    Query2TIP_PAGO: TStringField;
    Query2TIP_BENEFICIARIO: TStringField;
    Query2DIAS: TStringField;
    Query2SALARIO: TFloatField;
    Query2PORCENTAJE: TStringField;
    Query2COTIZACION: TFloatField;
    Query2VAL_DEDUCCION: TFloatField;
    Query2TIP_DEDUCCION: TStringField;
    Query2VALOR_UPC: TFloatField;
    Query2TIP_AFILIADO: TStringField;
    Query2FEC_CONSIGNACION: TDateTimeField;
    Query2COD_PARENTESCO: TStringField;
    Query2NUM_PLANILLA: TStringField;
    Query2TIP_DOCUMENTO_COT: TStringField;
    Query2NUM_DOCUMENTO_COT: TStringField;
    Query2EMP_TIPO_DOC: TStringField;
    Query2EMP_NUMERO_DOC: TStringField;
    Query2ID_MULTIAFILIADO: TStringField;
    Query2CAUSA: TStringField;
    Query2VAL_UPC: TFloatField;
    Query2EST_MULTIAFILIADO: TStringField;
    Query2NUM_DECLARACION_ANT: TFloatField;
    Query2TIP_DOCUMENTO_1: TStringField;
    Query2NUM_DOCUMENTO_1: TStringField;
    Query2COD_SEXO: TStringField;
    Query2COD_TIPO_AFIL: TStringField;
    Query2COD_MODALIDAD_TRA: TStringField;
    Query2COD_ESTADO_CIV: TStringField;
    Query2COD_ESTRATO: TStringField;
    Query2COD_ESCOLARIDAD: TStringField;
    Query2COD_PROFESION: TStringField;
    Query2COD_ESTADO_1: TStringField;
    Query2COD_OFICINA_1: TStringField;
    Query2COD_REGIONAL_1: TStringField;
    Query2PRI_NOMBRE: TStringField;
    Query2SEG_NOMBRE: TStringField;
    Query2PRI_APELLIDO: TStringField;
    Query2SEG_APELLIDO: TStringField;
    Query2FEC_NACIMIENTO: TDateTimeField;
    Query2FEC_AFILIACION_SIS: TDateTimeField;
    Query2FEC_AFILIACION_UNI: TDateTimeField;
    Query2EPS_TIP_DOC: TStringField;
    Query2EPS_NUM_DOC: TStringField;
    Query2COD_DEPARTAMENTO_RES: TStringField;
    Query2COD_CIUDAD_RES: TStringField;
    Query2COD_BARRIO_RES: TStringField;
    Query2COD_ZONA_1: TStringField;
    Query2ACE_TIP_DOC: TStringField;
    Query2ACE_NUMERO_DOC: TStringField;
    Query2COD_DISCAPACIDAD: TStringField;
    Query2NUM_SEMANA_COTIZA: TFloatField;
    Query2FEC_RADICACION: TDateTimeField;
    Query2NUM_FORMATO_AFIL: TStringField;
    Query2DIR_AFILIADO_RES: TStringField;
    Query2TEL_AFILIADO_RES: TStringField;
    Query2TEL_AFILIADO_RES2: TStringField;
    Query2CEL_AFILIADO: TStringField;
    Query2EML_AFILIADO: TStringField;
    Query2FEC_ULTIMA_NOV: TDateTimeField;
    Query2TIP_DOCUMENTO_IPS: TStringField;
    Query2NUM_DOCUMENTO_IPS: TStringField;
    Query2TIP_DOCUMENTO_MED: TStringField;
    Query2NUM_DOCUMENTO_MED: TStringField;
    Query2TIP_DOCUMENTO_ODO: TStringField;
    Query2NUM_DOCUMENTO_ODO: TStringField;
    Query2SEM_COTIZACION: TFloatField;
    QRShape1: TQRShape;
    QRExpr1: TQRExpr;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape3: TQRShape;
    QRLabel8: TQRLabel;
    QRShape4: TQRShape;
    QRDBText15: TQRDBText;
    QRLabel9: TQRLabel;
    Query1COD_REGIONAL_1: TStringField;
    Query1NOM_REGIONAL: TStringField;
    QRDBText16: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRExpr2: TQRExpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
