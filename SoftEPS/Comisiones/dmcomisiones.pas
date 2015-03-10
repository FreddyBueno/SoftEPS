unit dmcomisiones;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  Tdmcomision = class(TDataModule)
    Database1: TDatabase;
    qrycomisiones: TQuery;
    qrycomisionesTIP_DOCUMENTO_ASE: TStringField;
    qrycomisionesNUM_DOCUMENTO_ASE: TStringField;
    qrycomisionesTIP_DOCUMENTO_AFI: TStringField;
    qrycomisionesNUM_DOCUMENTO_AFI: TStringField;
    qrycomisionesPER_COMPENSACION: TStringField;
    qrycomisionesNUM_DECLARACION: TFloatField;
    qrycomisionesFEC_CORTE: TDateTimeField;
    qrycalculo: TQuery;
    qrycalculoTIP_DOCUMENTO: TStringField;
    qrycalculoNUM_DOCUMENTO: TStringField;
    qrycalculoAFI_TIPO_DOC: TStringField;
    qrycalculoAFI_NUMERO_DOC: TStringField;
    qrycalculoPERIODO_COMPENSADO: TStringField;
    qrycalculoNUM_DECLARACION: TFloatField;
    qryrevcomisiones: TQuery;
    qryrevcomisionesTIP_DOCUMENTO_ASE: TStringField;
    qryrevcomisionesNUM_DOCUMENTO_ASE: TStringField;
    qryrevcomisionesTIP_DOCUMENTO_AFI: TStringField;
    qryrevcomisionesNUM_DOCUMENTO_AFI: TStringField;
    qryrevcomisionesPER_COMPENSACION: TStringField;
    qryrevcomisionesNUM_DECLARACION: TFloatField;
    qryrevcomisionesFEC_CORTE: TDateTimeField;
    tblcomisiones: TTable;
    tblcomisionesTIP_DOCUMENTO_ASE: TStringField;
    tblcomisionesNUM_DOCUMENTO_ASE: TStringField;
    tblcomisionesTIP_DOCUMENTO_AFI: TStringField;
    tblcomisionesNUM_DOCUMENTO_AFI: TStringField;
    tblcomisionesPER_COMPENSACION: TStringField;
    tblcomisionesNUM_DECLARACION: TFloatField;
    tblcomisionesFEC_CORTE: TDateTimeField;
    qrycfechacorte: TQuery;
    qrycfechacorteTIP_DOCUMENTO_ASE: TStringField;
    qrycfechacorteNUM_DOCUMENTO_ASE: TStringField;
    qrycfechacorteAFI_NUMERO_DOC: TStringField;
    qrycfechacorteAFI_TIPO_DOC: TStringField;
    qrycfechacortePER_COMPENSACION: TStringField;
    qrycfechacorteNUM_DECLARACION: TFloatField;
    qrycfechacorteNOM_EMPRESA: TStringField;
    qrycfechacortePRI_NOMBRE: TStringField;
    qrycfechacortePRI_APELLIDO: TStringField;
    qryasesores: TQuery;
    qryasesoresTIP_DOCUMENTO: TStringField;
    qryasesoresCOD_ESTADO: TStringField;
    qryasesoresNUM_DOCUMENTO: TStringField;
    qryasesoresPRI_APELLIDO: TStringField;
    qryasesoresSEG_APELLIDO: TStringField;
    qryasesoresPRI_NOMBRE: TStringField;
    qryasesoresSEG_NOMBRE: TStringField;
    qryasesoresCOD_REGIONAL: TStringField;
    qryasesoresTIP_CONTRATO: TStringField;
    qryliqcomisiones: TQuery;
    qryliqcomisionesAFILIADOS: TFloatField;
    qryliqvalor: TQuery;
    tblliquidacion: TTable;
    tblliquidacionTIP_DOCUMENTO_ASE: TStringField;
    tblliquidacionNUM_DOCUMENTO_ASE: TStringField;
    tblliquidacionNUM_AFILIADOS: TFloatField;
    tblliquidacionTOTAL_COMISION: TFloatField;
    tblliquidacionFEC_CORTE: TDateTimeField;
    qryliqvalorCOD_REGIONAL: TStringField;
    qryliqvalorCONTRATO: TStringField;
    qryliqvalorRAN_INICIAL: TFloatField;
    qryliqvalorRAN_FINAL: TFloatField;
    qryliqvalorVALOR: TFloatField;
    qryconliq: TQuery;
    qryfasesor: TQuery;
    qryfasesorTIP_DOCUMENTO: TStringField;
    qryfasesorCOD_ESTADO: TStringField;
    qryfasesorNUM_DOCUMENTO: TStringField;
    qryfasesorPRI_APELLIDO: TStringField;
    qryfasesorSEG_APELLIDO: TStringField;
    qryfasesorPRI_NOMBRE: TStringField;
    qryfasesorSEG_NOMBRE: TStringField;
    qryfasesorCOD_REGIONAL: TStringField;
    qryfasesorTIP_CONTRATO: TStringField;
    tblregionales: TTable;
    tblregionalesCOD_REGIONAL: TStringField;
    tblregionalesNOM_REGIONAL: TStringField;
    qryfeccorte: TQuery;
    qryfeccorteFEC_CORTE: TDateTimeField;
    qryconcomision: TQuery;
    qryconcomisionCOD_REGIONAL: TStringField;
    qryconcomisionCONTRATO: TStringField;
    qryconcomisionRAN_INICIAL: TFloatField;
    qryconcomisionRAN_FINAL: TFloatField;
    qryconcomisionVALOR: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmcomision: Tdmcomision;

implementation

{$R *.dfm}

end.
