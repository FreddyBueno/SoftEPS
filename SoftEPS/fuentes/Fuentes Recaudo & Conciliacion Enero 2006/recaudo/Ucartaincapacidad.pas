unit Ucartaincapacidad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, jpeg, QRCtrls, StdCtrls, DB, ADODB;

type
  Tfrmcartaincapacidad = class(TForm)
    QuickRep1: TQuickRep;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel34: TQRLabel;
    QRImage2: TQRImage;
    TitleBand1: TQRBand;
    QRImage1: TQRImage;
    QRImage3: TQRImage;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    qrycartapresentacion: TADOQuery;
    qrycartapresentacionNUM_INCAPACIDAD: TStringField;
    qrycartapresentacionTIP_INCAPACIDAD: TStringField;
    qrycartapresentacionFEC_EXPEDICION: TDateTimeField;
    qrycartapresentacionFEC_FALLO_TUTELA: TDateTimeField;
    qrycartapresentacionNUMERO_TUTELA: TStringField;
    qrycartapresentacionTIP_DOCEMPRESA: TStringField;
    qrycartapresentacionNUM_DOCEMPRESA: TStringField;
    qrycartapresentacionAFI_TIPO_DOC: TStringField;
    qrycartapresentacionAFI_NUMERO_DOC: TStringField;
    qrycartapresentacionCOD_DIAGNOSTICO: TStringField;
    qrycartapresentacionCOD_PRESTADOR: TStringField;
    qrycartapresentacionNOM_PRESTADOR: TStringField;
    qrycartapresentacionDIA_INCAPACIDAD: TStringField;
    qrycartapresentacionDIA_LIQUIDADOS: TStringField;
    qrycartapresentacionFEC_INICIO: TDateTimeField;
    qrycartapresentacionPRO_INCAPACIDAD: TStringField;
    qrycartapresentacionSAL_BASE: TBCDField;
    qrycartapresentacionPRO_SALARIO_LIQUI: TBCDField;
    qrycartapresentacionVAL_INCAPACIDAD: TBCDField;
    qrycartapresentacionEST_INCAPACIDAD: TStringField;
    qrycartapresentacionCOD_REGIONAL: TStringField;
    qrycartapresentacionCOD_OFICINA: TStringField;
    qrycartapresentacionFEC_DIGITACION: TDateTimeField;
    qrycartapresentacionTIP_DOC_USUARIO: TStringField;
    qrycartapresentacionTIP_NUM_USUARIO: TStringField;
    qrycartapresentacionFEC_TERMINACION: TDateTimeField;
    qrycartapresentacionFEC_MODIFICACION: TDateTimeField;
    qrycartapresentacionNO_PRORROGA: TStringField;
    qrycartapresentacionTOT_DIAS_PRORROGA: TStringField;
    qrycartapresentacionNUM_RECEPCION: TStringField;
    qrycartapresentacionFEC_NOTIFICACION: TDateTimeField;
    qrycartapresentacionMED_NOTIFICACION: TStringField;
    qrycartapresentacionNO_GUIA: TStringField;
    qrycartapresentacionTIP_DOCUMENTO: TStringField;
    qrycartapresentacionNUM_DOCUMENTO: TStringField;
    qrycartapresentacionNOM_EMPRESA: TStringField;
    qrycartapresentacionREP_EMPRESA: TStringField;
    qrycartapresentacionDIR_EMPRESA: TStringField;
    qrycartapresentacionTEL_EPS: TStringField;
    qrycartapresentacionFAX_EPS: TStringField;
    qrycartapresentacionEML_EPS: TStringField;
    qrycartapresentacionDEPARTAMENTO: TStringField;
    qrycartapresentacionCIUDAD: TStringField;
    qrycartapresentacionCOD_SUCURSAL: TStringField;
    qrycartapresentacionTIP_APORTANTE: TStringField;
    qrycartapresentacionCOD_ACTIVIDAD_ECO: TStringField;
    qrycartapresentacionCOD_ESTADO: TStringField;
    qrycartapresentacionCOD_OFICINA_1: TStringField;
    qrycartapresentacionCOD_REGIONAL_1: TStringField;
    qrycartapresentacionTIP_DOCUMENTO_ARP: TStringField;
    qrycartapresentacionNUM_DOCUMENTO_ARP: TStringField;
    qrycartapresentacionCOD_DEPARTAMENTO: TStringField;
    qrycartapresentacionCOD_CIUDAD: TStringField;
    qrycartapresentacionFEC_AFILIACION: TDateTimeField;
    qrycartapresentacionTEL_EMPRESA: TStringField;
    qrycartapresentacionTEL_EMPRESA2: TStringField;
    qrycartapresentacionURL_EMPRESA: TStringField;
    qrycartapresentacionEML_EMPRESA: TStringField;
    qrycartapresentacionTOT_EMPLEADOS: TStringField;
    qrycartapresentacionCOD_TIPO_PER: TStringField;
    qrycartapresentacionCOD_ZONA: TStringField;
    qrycartapresentacionCOD_DEPARTAMENTO_PAG: TStringField;
    qrycartapresentacionCOD_CIUDAD_PAG: TStringField;
    qrycartapresentacionCOD_PRESENTACION_cOM: TStringField;
    qrycartapresentacionCOD_TIP_EMPRESA: TStringField;
    qrycartapresentacionTIP_DOCUMENTO_PEN: TStringField;
    qrycartapresentacionNUM_DOCUMENTO_PEN: TStringField;
    qrycartapresentacionclave: TStringField;
    qrycartapresentacionNOM_EMPRESA_BDUA: TStringField;
    qrycartapresentacionDIGITO_VERIFICACION: TStringField;
    qrycartapresentacionCARGO_REPRESENTANTE: TStringField;
    qrycartapresentacionTELEFONO_REPRESENTANTE: TStringField;
    qrycartapresentacionNOMBRE_CONTACTO: TStringField;
    qrycartapresentacionCARGO_CONTACTO: TStringField;
    qrycartapresentacionTELEFONO_CONTACTO: TStringField;
    qrycartapresentacionCLASE_APORTANTE: TStringField;
    qrycartapresentacionCOD_ARP: TStringField;
    qrycartapresentacionCOD_ARP_BUDA: TStringField;
    qrycartapresentacionBARRIO: TBCDField;
    qrycartapresentacionCOD_DEPARTAMENTO_1: TStringField;
    qrycartapresentacionCOD_CIUDAD_1: TStringField;
    qrycartapresentacionNOM_CIUDAD: TStringField;
    qrycartapresentacionPOR_ALTO_RIE: TStringField;
    qrycartapresentacionCOD_REGIONAL_2: TStringField;
    qrycartapresentacionVALOR_UPC: TBCDField;
    qrycartapresentacionCEN_COSTO: TStringField;
    qrycartapresentacionCONS_RS: TStringField;
    qrycartapresentacionFAC_PRESENTA: TStringField;
    qrycartapresentacionFORMATOOTROSI: TStringField;
    qrycartapresentacionFOR_PAGO: TStringField;
    qrycartapresentacionTIP_DOCUMENTO_1: TStringField;
    qrycartapresentacionNUM_DOCUMENTO_1: TStringField;
    qrycartapresentacionCOD_SEXO: TStringField;
    qrycartapresentacionCOD_TIPO_AFIL: TStringField;
    qrycartapresentacionCOD_MODALIDAD_TRA: TStringField;
    qrycartapresentacionCOD_ESTADO_CIV: TStringField;
    qrycartapresentacionCOD_ESTRATO: TStringField;
    qrycartapresentacionCOD_ESCOLARIDAD: TStringField;
    qrycartapresentacionCOD_PROFESION: TStringField;
    qrycartapresentacionCOD_ESTADO_1: TStringField;
    qrycartapresentacionCOD_OFICINA_2: TStringField;
    qrycartapresentacionCOD_REGIONAL_3: TStringField;
    qrycartapresentacionPRI_NOMBRE: TStringField;
    qrycartapresentacionSEG_NOMBRE: TStringField;
    qrycartapresentacionPRI_APELLIDO: TStringField;
    qrycartapresentacionSEG_APELLIDO: TStringField;
    qrycartapresentacionFEC_NACIMIENTO: TDateTimeField;
    qrycartapresentacionFEC_AFILIACION_SIS: TDateTimeField;
    qrycartapresentacionFEC_AFILIACION_UNI: TDateTimeField;
    qrycartapresentacionEPS_TIP_DOC: TStringField;
    qrycartapresentacionEPS_NUM_DOC: TStringField;
    qrycartapresentacionCOD_DEPARTAMENTO_RES: TStringField;
    qrycartapresentacionCOD_CIUDAD_RES: TStringField;
    qrycartapresentacionCOD_BARRIO_RES: TStringField;
    qrycartapresentacionCOD_ZONA_1: TStringField;
    qrycartapresentacionACE_TIP_DOC: TStringField;
    qrycartapresentacionACE_NUMERO_DOC: TStringField;
    qrycartapresentacionCOD_DISCAPACIDAD: TStringField;
    qrycartapresentacionNUM_SEMANA_COTIZA: TBCDField;
    qrycartapresentacionFEC_RADICACION: TDateTimeField;
    qrycartapresentacionNUM_FORMATO_AFIL: TStringField;
    qrycartapresentacionDIR_AFILIADO_RES: TStringField;
    qrycartapresentacionTEL_AFILIADO_RES: TStringField;
    qrycartapresentacionTEL_AFILIADO_RES2: TStringField;
    qrycartapresentacionCEL_AFILIADO: TStringField;
    qrycartapresentacionEML_AFILIADO: TStringField;
    qrycartapresentacionFEC_ULTIMA_NOV: TDateTimeField;
    qrycartapresentacionTIP_DOCUMENTO_IPS: TStringField;
    qrycartapresentacionNUM_DOCUMENTO_IPS: TStringField;
    qrycartapresentacionTIP_DOCUMENTO_MED: TStringField;
    qrycartapresentacionNUM_DOCUMENTO_MED: TStringField;
    qrycartapresentacionTIP_DOCUMENTO_ODO: TStringField;
    qrycartapresentacionNUM_DOCUMENTO_ODO: TStringField;
    qrycartapresentacionSEM_COTIZACION: TBCDField;
    qrycartapresentacionCATEGORIA: TStringField;
    qrycartapresentacionCOD_CLA_AFILIACION: TStringField;
    qrycartapresentacionAFI_FONETICO: TStringField;
    qrycartapresentacionAFI_CAU_ESTADO: TIntegerField;
    qrycartapresentacionAFI_TRA_CODIGO: TStringField;
    qrycartapresentacionCOD_DEPARTAMENTO_2: TStringField;
    qrycartapresentacionNOM_DEPARTAMENTO: TStringField;
    qrycartapresentacionDISTRITOS: TStringField;
    QRLabel1: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcartaincapacidad: Tfrmcartaincapacidad;

implementation

uses Uincapacidades, dtmodulo;

{$R *.dfm}

end.
