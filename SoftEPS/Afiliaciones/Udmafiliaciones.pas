
unit Udmafiliaciones;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  Tdmafiliaciones = class(TDataModule)
    tbltipos_documentos: TTable;
    tblocupaciones: TTable;
    tblsexo: TTable;
    tblestratos: TTable;
    tbldiscapacidades: TTable;
    tblestadosciviles: TTable;
    tblescolaridad: TTable;
    tblprofesion: TTable;
    tblzonas: TTable;
    tbltiposafiliados: TTable;
    tblmodalidadtrabajo: TTable;
    tbldepartamentos: TTable;
    tbldepartamentoscod_departamento: TStringField;
    tbldepartamentosnom_departamento: TStringField;
    qryciudades: TQuery;
    qryciudadescod_ciudad: TStringField;
    qryciudadesnom_ciudad: TStringField;
    qryciudadescod_departamento: TStringField;
    qrybarrios: TQuery;
    qrybarrioscod_departamento: TStringField;
    qrybarrioscod_ciudad: TStringField;
    qrybarrioscod_barrio: TStringField;
    qrybarriosnom_barrio: TStringField;
    tblactividadeconomica: TTable;
    tbltipoaportante: TTable;
    tbltipopersona: TTable;
    tbltipoempresa: TTable;
    tblperiododecompensacion: TTable;
    qryciudades1: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    tblestados: TTable;
    tblparentescos: TTable;
    tblciudades: TTable;
    tbltipos_salarios: TTable;
    tblrelacion_adicional: TTable;
    softeps: TDatabase;
    tblempresas: TTable;
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
    qrysalariominimo: TQuery;
    qrysalariominimoANO: TDateTimeField;
    qrysalariominimoSAL_MINIMO: TFloatField;
    qrysalariominimoUPC: TFloatField;
    qrysalariominimoPYP: TFloatField;
    qrysalariominimoSOL: TFloatField;
    qrysalariominimoRIESGO: TFloatField;
    qrysalariominimoVAL_UPC_DIA_NORMAL: TFloatField;
    qrysalariominimoVAL_UPC_DIA_ESPECIAL: TFloatField;
    qrysalariominimoPOR_COTIZACION: TFloatField;
    qrysalariominimoPOR_ENFERMEDAD_GENERAL: TFloatField;
    qrysalariominimoPOR_PROVISION_INC: TFloatField;
    qrysalariominimoPOR_PYP_LIQUIDACION: TFloatField;
    qrysalariominimoPOR_SOLIDARIDAD_LIQUIDACION: TFloatField;
    qryciudades2: TQuery;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    qryrepradicado: TQuery;
    qryrepradicadoNUM_FORMATO_AFIL: TStringField;
    qryrepradicadoTIP_DOCUMENTO: TStringField;
    qryrepradicadoNUM_DOCUMENTO: TStringField;
    qryrepradicadoPRI_APELLIDO: TStringField;
    qryrepradicadoSEG_APELLIDO: TStringField;
    qryrepradicadoPRI_NOMBRE: TStringField;
    qryrepradicadoSEG_NOMBRE: TStringField;
    qryrepradicadoCOD_MODALIDAD_TRA: TStringField;
    qryrepradicadoTIP_DOCUMENTO_EMP: TStringField;
    qryrepradicadoNUM_DOCUMENTO_EMP: TStringField;
    qryrepradicadoNOM_EMPRESA: TStringField;
    qryrepradicadoFEC_RADICACION: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmafiliaciones: Tdmafiliaciones;

implementation

{$R *.dfm}

end.
