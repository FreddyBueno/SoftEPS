unit dtmodulo;

interface

uses
  SysUtils, Windows, Classes, Graphics, Controls,
  Forms, Dialogs, DB, DBTables, ImgList;

type
  TDataModule1 = class(TDataModule)
    dtbdatamec: TDatabase;
    qrygetdate: TQuery;
    qrybancos: TQuery;
    qryprestadores: TQuery;
    qryprestadorescod_prestador: TStringField;
    qryprestadoresmon_prestador: TStringField;
    qryprestadoresnum_acreditacion: TStringField;
    qryprestadorescod_departamento: TStringField;
    qryprestadorescod_ciudad: TStringField;
    qryprestadoresdir_prestador: TStringField;
    qryprestadorestel_prestador: TStringField;
    qryprestadoresrep_legal: TStringField;
    qryprestadoresniv_aten_prestador: TStringField;
    qryprestadorestip_prestador: TStringField;
    qryprestadorestip_identificacion: TStringField;
    qryprestadoresnum_identificacion: TStringField;
    qryprestadorescla_prestador: TStringField;
    qryprestadoresrec_copago: TStringField;
    qryprestadoresrec_cuota: TStringField;
    qryprestadoresest_prestador: TStringField;
    qryprestadoresfec_ultima_auto: TDateTimeField;
    qryprestadoresest_contrato: TStringField;
    qryprestadorescod_reginal: TStringField;
    qryprestadorescod_oficina: TStringField;
    qryprestadoresfec_ingreso: TDateTimeField;
    qryprestadoresdir_electronica: TStringField;
    qrydepartamentos: TQuery;
    qryciudades: TQuery;
    qrydepartamentoscod_departamento: TStringField;
    qrydepartamentosnom_departamento: TStringField;
    dtsciudades: TDataSource;
    dtsdepartamentos: TDataSource;
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
    qrydiagnosticos: TQuery;
    qrydiagnosticoscod_diagnostico: TStringField;
    qrydiagnosticosnom_diagnsotico: TStringField;
    qrydiagnosticosrango_sexo: TStringField;
    qrydiagnosticoseda_minina: TIntegerField;
    qrydiagnosticoseda_maxima: TIntegerField;
    qryborrado: TQuery;
    Query1: TQuery;
    DataSource1: TDataSource;
    qryciudadesCOD_DEPARTAMENTO: TStringField;
    qryciudadesCOD_CIUDAD: TStringField;
    qryciudadesNOM_CIUDAD: TStringField;
    qryciudadesPOR_ALTO_RIE: TStringField;
    qryciudadesCOD_REGIONAL: TStringField;
    qryciudadesVALOR_UPC: TFloatField;
    qryciudadesCEN_COSTO: TStringField;
    qryciudadesNOM_DEPARTAMENTO: TStringField;
    qryrangoaportantes: TQuery;
    qryaportantes: TQuery;
    qryaportantesTIP_APORTANTE: TStringField;
    qryaportantesNOM_TIPO_APO: TStringField;
    qryrangoaportantesTIP_APORTANTE: TStringField;
    qryrangoaportantesDIG_FINAL: TStringField;
    qryrangoaportantesDIA_HABIL: TStringField;
    datasaportentes: TDataSource;
    dtsrangoaportantes: TDataSource;
    qryrangoaportantesNOM_APORTANTE: TStringField;
    qrycompania: TQuery;
    qrycompaniaTIP_DOCUMENTO: TStringField;
    qrycompaniaNUM_DOCUMENTO: TStringField;
    qrycompaniaNOM_EPS: TStringField;
    qrycompaniaFEC_INCLUSION: TDateTimeField;
    qrycompaniaCOD_EPS: TStringField;
    qrycompaniaDIR_EPS: TStringField;
    qrycompaniaTEL_EPS: TStringField;
    qrycompaniaFAX_EPS: TStringField;
    qrycompaniaREP_LEGAL: TStringField;
    qrycompaniaEML_EPS: TStringField;
    qryoficinas: TQuery;
    dtsregional: TDataSource;
    qryregionales: TQuery;
    qryregionalesCOD_REGIONAL: TStringField;
    qryregionalesNOM_REGIONAL: TStringField;
    qryciudades1: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    FloatField1: TFloatField;
    StringField7: TStringField;
    qryoficinasCOD_OFICINA: TStringField;
    qryoficinasNOM_OFICINA: TStringField;
    qryoficinasDIR_OFICINA: TStringField;
    qryoficinasTEL_OFICINA: TStringField;
    qryoficinasFAX_OFICINA: TStringField;
    qryoficinasCOD_REGIONAL: TStringField;
    qryoficinasCOD_DEPARTAMENTO: TStringField;
    qryoficinasCOD_CIUDAD: TStringField;
    qryoficinasTIP_OFICINA: TStringField;
    qrycargos: TQuery;
    qrycargosCOD_CARGO: TStringField;
    qrycargosCOD_OFICINA: TStringField;
    qrycargosCOD_REGIONAL: TStringField;
    qrycargosNOM_CARGO: TStringField;
    qryusuarios: TQuery;
    dtstiposdocumentos: TDataSource;
    qrytiposdocuementos: TQuery;
    qryestados: TQuery;
    qryusuariosTIP_DOCUMENTO: TStringField;
    qryusuariosNUM_DOCUMENTO: TStringField;
    qryusuariosCOD_ESTADO: TStringField;
    qryusuariosCOD_USUARIO: TStringField;
    qryusuariosNOM_USUARIO: TStringField;
    qryusuariosPWD_USUARIO: TStringField;
    qryusuariosFEC_EXPIRACION: TDateTimeField;
    qryusuariosNIV_USUARIO: TFloatField;
    qryusuariosUSU_LOGUEADO: TFloatField;
    qryusuariosULT_FEC_LOG: TDateTimeField;
    qryusuariosCOD_OFICINA: TStringField;
    qryusuariosCOD_REGIONAL: TStringField;
    qryusuariosCOD_CARGO: TStringField;
    qrylogin: TQuery;
    qryloginUSER: TFloatField;
    qryloginNAME: TStringField;
    qryloginTYPE: TFloatField;
    qryloginPASSWORD: TStringField;
    qryloginDATATS: TFloatField;
    qryloginTEMPTS: TFloatField;
    qryloginCTIME: TDateTimeField;
    qryloginPTIME: TDateTimeField;
    qryloginEXPTIME: TDateTimeField;
    qryloginLTIME: TDateTimeField;
    qryloginRESOURCE: TFloatField;
    qryloginAUDIT: TStringField;
    qryloginDEFROLE: TFloatField;
    qryloginDEFGRP: TFloatField;
    qryloginDEFGRP_SEQ: TFloatField;
    qryloginASTATUS: TFloatField;
    qryloginLCOUNT: TFloatField;
    qryloginDEFSCHCLASS: TStringField;
    qryloginEXT_USERNAME: TMemoField;
    qryloginSPARE1: TFloatField;
    qryloginSPARE2: TFloatField;
    qryloginSPARE3: TFloatField;
    qryloginSPARE4: TMemoField;
    qryloginSPARE5: TMemoField;
    qryloginSPARE6: TDateTimeField;
    qrygetdateSYSDATE: TDateTimeField;
    qrymcestcos1: TQuery;
    qrymcestcos1COD_GRUPO_ETA: TFloatField;
    qrymcestcos1VAL_ESTRUCTURA_COST: TFloatField;
    qrymcestcos1ANO_VAL_ESTRUCTURA_COST: TDateTimeField;
    tbletareos: TTable;
    tbletareosCOD_GRUPO_ETA: TFloatField;
    tbletareosINI_GRUPO_ETA: TFloatField;
    tbletareosFIN_GRUPO_ETA: TFloatField;
    tbletareosSEXO_GRUPO_ETA: TStringField;
    qrymcvalores: TQuery;
    qrymcvaloresANO: TDateTimeField;
    qrymcvaloresSAL_MINIMO: TFloatField;
    qrymcvaloresUPC: TFloatField;
    qrymcvaloresPYP: TFloatField;
    qrymcvaloresSOL: TFloatField;
    qrymcvaloresRIESGO: TFloatField;
    qrymcvaloresVAL_UPC_DIA_NORMAL: TFloatField;
    qrymcvaloresVAL_UPC_DIA_ESPECIAL: TFloatField;
    qrymcvaloresPOR_COTIZACION: TFloatField;
    qrymcvaloresPOR_ENFERMEDAD_GENERAL: TFloatField;
    qrymcvaloresPOR_PROVISION_INC: TFloatField;
    qrymcvaloresPOR_PYP_LIQUIDACION: TFloatField;
    qrymcvaloresPOR_SOLIDARIDAD_LIQUIDACION: TFloatField;
    tblinteres: TTable;
    tblinteresFEC_INTERESES: TDateTimeField;
    tblinteresVAL_ANUL: TFloatField;
    tblinteresVAL_MENSUAL: TFloatField;
    tblinteresDESCRIPCION: TStringField;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

uses Uprincipal, Uglobal;

{$R *.DFM}

end.



