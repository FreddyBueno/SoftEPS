unit dtmodulo;

interface

uses
  SysUtils, Windows, Classes, Graphics, Controls,
  Forms, Dialogs, DB, DBTables, ImgList;

type
  TDataModule1 = class(TDataModule)
    dtsautoliquidacion: TDataSource;
    dtsformatos: TDataSource;
    dtbdatamec: TDatabase;
    qryautoliquidacion: TQuery;
    dtsempresas: TDataSource;
    dtsafilados: TDataSource;
    dtsdocumento: TDataSource;
    qrygetdate: TQuery;
    qrybancos: TQuery;
    dtsbancos: TDataSource;
    dtsestracto: TDataSource;
    qrydepartamentos: TQuery;
    qryciudades: TQuery;
    dtsciudades: TDataSource;
    dtsdepartamentos: TDataSource;
    dtsafiliaempresa: TDataSource;
    qrybancosCOD_BANCO: TStringField;
    qrybancosNOM_BANCO: TStringField;
    qrybancosCTA_BANCO: TStringField;
    qrybancosDIR_BANCO: TStringField;
    qrybancosTIP_DOCUMENTO: TStringField;
    qrybancosNUM_DOCUMENTO: TStringField;
    qrybancosCOD_DEPARTAMENTO: TStringField;
    qrybancosCOD_CIUDAD: TStringField;
    qrybancosTIPO_RECAUDO: TStringField;
    qrybancosEST_BANCO: TStringField;
    qrydepartamentosCOD_DEPARTAMENTO: TStringField;
    qrydepartamentosNOM_DEPARTAMENTO: TStringField;
    qryciudadesCOD_DEPARTAMENTO: TStringField;
    qryciudadesCOD_CIUDAD: TStringField;
    qryciudadesNOM_CIUDAD: TStringField;
    qryciudadesPOR_ALTO_RIE: TStringField;
    qryciudadesCOD_REGIONAL: TStringField;
    qryciudadesVALOR_UPC: TFloatField;
    qryciudadesCEN_COSTO: TStringField;
    qryautoliquidacionNUM_PLANILLA: TStringField;
    qryautoliquidacionEMP_TIPO_DOC: TStringField;
    qryautoliquidacionEMP_NUMERO_DOC: TStringField;
    qryautoliquidacionCOD_SUCURSAL: TStringField;
    qryautoliquidacionTIP_DECLARACION: TStringField;
    qryautoliquidacionFEC_PAGO: TDateTimeField;
    qryautoliquidacionNUM_PLANILLA_CORR: TStringField;
    qryautoliquidacionPER_COTIZACION: TStringField;
    qryautoliquidacionPER_PRESENTACION: TStringField;
    qryautoliquidacionTOT_PLANILLA: TFloatField;
    qryautoliquidacionTOT_APORTE_PER: TFloatField;
    qryautoliquidacionTOT_INCAPACIDAD: TFloatField;
    qryautoliquidacionTOT_LICENCIAS: TFloatField;
    qryautoliquidacionTOT_APORTE: TFloatField;
    qryautoliquidacionINT_MORA: TFloatField;
    qryautoliquidacionTOT_APORTE_MMORA: TFloatField;
    qryautoliquidacionTOT_SALDO_FAV: TFloatField;
    qryautoliquidacionTOT_UPC: TFloatField;
    qryautoliquidacionTOT_PAGADO: TFloatField;
    qryautoliquidacionCOD_BANCO: TStringField;
    qryautoliquidacionNUM_CUENTA: TStringField;
    qryautoliquidacionVAL_EFECTIVO: TFloatField;
    qryautoliquidacionVAL_CHEQUE: TFloatField;
    qryautoliquidacionEST_PLANILLA: TStringField;
    qryautoliquidacionCOD_REGIONAL: TStringField;
    qryautoliquidacionCOD_OFICINA: TStringField;
    qryautoliquidacionNUM_DECLARACION: TFloatField;
    qryautoliquidacionCRU_CONCILIACION: TStringField;
    qryautoliquidacionFEC_DIGITACION: TDateTimeField;
    qryautoliquidacionTIP_DOC_USUARIO: TStringField;
    qryautoliquidacionNUM_DOC_USUARIO: TStringField;
    qryautoliquidacionFEC_MODIFICACION: TDateTimeField;
    qryempresas: TQuery;
    qryempresasTIP_DOCUMENTO: TStringField;
    qryempresasNUM_DOCUMENTO: TStringField;
    qryempresasCOD_SUCURSAL: TStringField;
    qryempresasCOD_ACTIVIDAD_ECO: TStringField;
    qryempresasCOD_ESTADO: TStringField;
    qryempresasCOD_OFICINA: TStringField;
    qryempresasCOD_REGIONAL: TStringField;
    qryempresasTIP_DOCUMENTO_ARP: TStringField;
    qryempresasNUM_DOCUMENTO_ARP: TStringField;
    qryempresasCOD_DEPARTAMENTO: TStringField;
    qryempresasCOD_CIUDAD: TStringField;
    qryempresasTIP_APORTANTE: TStringField;
    qryempresasNOM_EMPRESA: TStringField;
    qryempresasFEC_AFILIACION: TDateTimeField;
    qryempresasDIR_EMPRESA: TStringField;
    qryempresasTEL_EMPRESA: TStringField;
    qryempresasTEL_EMPRESA2: TStringField;
    qryempresasURL_EMPRESA: TStringField;
    qryempresasEML_EMPRESA: TStringField;
    qryempresasTOT_EMPLEADOS: TStringField;
    qryempresasCOD_TIPO_PER: TStringField;
    qryempresasCOD_ZONA: TStringField;
    qryempresasCOD_DEPARTAMENTO_PAG: TStringField;
    qryempresasCOD_CIUDAD_PAG: TStringField;
    qryempresasCOD_PRESENTACION_COM: TStringField;
    qryempresasCOD_TIP_EMPRESA: TStringField;
    qryempresasTIP_DOCUMENTO_PEN: TStringField;
    qryempresasNUM_DOCUMENTO_PEN: TStringField;
    qryestrato: TQuery;
    qryformatos: TQuery;
    qrygetdateSYSDATE: TDateTimeField;
    dtssucursales: TDataSource;
    qrysucursales: TQuery;
    qrysucursalesCODBANCO: TStringField;
    qrysucursalesCODSUCURSAL: TStringField;
    qrysucursalesNOMSUCURSAL: TStringField;
    qrydocumentos: TQuery;
    qrydocumentosTIP_DOCUMENTO: TStringField;
    qrydocumentosNOM_DOCUMENTO: TStringField;
    qryformatos1: TQuery;
    qrycampos: TQuery;
    dtscampos: TDataSource;
    qrycamposCODCAMPO: TStringField;
    qrycamposNOMCAMPO: TStringField;
    qrycamposFORMATO: TStringField;
    qryformatos1COD_BANCO: TStringField;
    qryformatos1COD_CAMPO: TStringField;
    qryformatos1DELIMITADOR: TStringField;
    qryformatos1INI_CAMPO: TFloatField;
    qryformatos1LON_CAMPO: TFloatField;
    qryformatos1FORMATO: TStringField;
    qryformatos1NUM_CAMPO: TFloatField;
    qryautoliquidacionNO_INCAP_PAG: TStringField;
    qryautoliquidacionVAL_INCAP_PAG: TFloatField;
    qryautoliquidacionNO_LICEN_PAG: TStringField;
    qryautoliquidacionVAL_LICEN_PAG: TFloatField;
    qryautoliquidacionNO_MESES_MORA: TFloatField;
    qryautoliquidacionNO_PLANINILLA_ANT: TStringField;
    qryautoliquidacionVAL_NETO_UPC: TFloatField;
    qryautoliquidacionVAL_INTERES_UPC: TFloatField;
    qryautoliquidacionVAL_APORMASINT_UPC: TFloatField;
    qryautoliquidacionVAL_SALFAVOR_UPC: TFloatField;
    qryautoliquidacionVAL_PAGO_UPC: TFloatField;
    qryformatosCOD_BANCO: TStringField;
    qryformatosCOD_CAMPO: TStringField;
    qryformatosDELIMITADOR: TStringField;
    qryformatosINI_CAMPO: TFloatField;
    qryformatosLON_CAMPO: TFloatField;
    qryformatosFORMATO: TStringField;
    qryformatosNUM_CAMPO: TFloatField;
    qryformatosESTADO: TFloatField;
    qryestratoCOD_BANCO: TStringField;
    qryestratoCOD_SUCURSAL: TStringField;
    qryestratoNUM_DOCUMENTO: TStringField;
    qryestratoNUM_PLANILLA: TStringField;
    qryestratoFEC_RECAUDO: TDateTimeField;
    qryestratoVAL_CONSIGNACION: TFloatField;
    qryestratoTIP_MOVIMIENTO: TStringField;
    qryestratoEST_CONCILIACION: TStringField;
    qryestratoFEC_PLANILLA_CON: TDateTimeField;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

uses Uprincipal, Uglobal, udigitacionextracto;

{$R *.DFM}

end.



