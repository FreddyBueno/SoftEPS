unit urepliquidacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, DB, DBTables, QuickRpt, ExtCtrls;

type
  Tfrmrepliquidacion = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand2: TQRBand;
    Query1: TQuery;
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
    Query1TIP_DOCUMENTO_ASE: TStringField;
    Query1NUM_DOCUMENTO_ASE: TStringField;
    Query1NUM_AFILIADOS: TFloatField;
    Query1TOTAL_COMISION: TFloatField;
    Query1FEC_CORTE: TDateTimeField;
    Query1COD_REGIONAL_1: TStringField;
    Query1NOM_REGIONAL: TStringField;
    QRShape1: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText10: TQRDBText;
    QRBand3: TQRBand;
    QRLabel8: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText4: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel6: TQRLabel;
    QRExpr2: TQRExpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrepliquidacion: Tfrmrepliquidacion;

implementation

{$R *.dfm}

end.
