unit dtmodulo;

interface

uses
  SysUtils, Windows, Classes, Graphics, Controls,
  Forms, Dialogs,  ImgList, ADODB, DB;

type
  TDataModule1 = class(TDataModule)
    dtsautoliquidacion: TDataSource;
    dtsformatos: TDataSource;
    dtsempresas: TDataSource;
    dtsdocumento: TDataSource;
    dtsbancos: TDataSource;
    dtsestracto: TDataSource;
    dtsciudades: TDataSource;
    dtsdepartamentos: TDataSource;
    dtssucursales: TDataSource;
    dtscampos: TDataSource;
    dtbdatamec: TADOConnection;
    qryautoliquidacion: TADOQuery;
    qrygetdate: TADOQuery;
    qrybancos: TADOQuery;
    qrygetdateSYSDATE: TDateTimeField;
    qrydepartamentos: TADOQuery;
    qrydepartamentosCOD_DEPARTAMENTO: TStringField;
    qrydepartamentosNOM_DEPARTAMENTO: TStringField;
    qryciudades: TADOQuery;
    qryciudadesCOD_DEPARTAMENTO: TStringField;
    qryciudadesCOD_CIUDAD: TStringField;
    qryciudadesNOM_CIUDAD: TStringField;
    qryciudadesPOR_ALTO_RIE: TStringField;
    qryciudadesCOD_REGIONAL: TStringField;
    qryciudadesVALOR_UPC: TBCDField;
    qryciudadesCEN_COSTO: TStringField;
    qryempresas: TADOQuery;
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
    qryestrato: TADOQuery;
    qryformatos: TADOQuery;
    qryformatosCOD_BANCO: TStringField;
    qryformatosCOD_CAMPO: TStringField;
    qryformatosDELIMITADOR: TStringField;
    qryformatosINI_CAMPO: TFloatField;
    qryformatosLON_CAMPO: TFloatField;
    qryformatosFORMATO: TStringField;
    qryformatosNUM_CAMPO: TFloatField;
    qryformatosESTADO: TIntegerField;
    qrysucursales: TADOQuery;
    qrydocumentos: TADOQuery;
    qrydocumentosTIP_DOCUMENTO: TStringField;
    qrydocumentosNOM_DOCUMENTO: TStringField;
    qryformatos1: TADOQuery;
    qryformatos1COD_BANCO: TStringField;
    qryformatos1COD_CAMPO: TStringField;
    qryformatos1DELIMITADOR: TStringField;
    qryformatos1INI_CAMPO: TFloatField;
    qryformatos1LON_CAMPO: TFloatField;
    qryformatos1FORMATO: TStringField;
    qryformatos1NUM_CAMPO: TFloatField;
    qryformatos1ESTADO: TIntegerField;
    qrycampos: TADOQuery;
    qrycamposCODCAMPO: TStringField;
    qrycamposNOMCAMPO: TStringField;
    qrycamposFORMATO: TStringField;
    qryusuarios: TADOQuery;
    qryusuariosTIP_DOCUMENTO: TStringField;
    qryusuariosNUM_DOCUMENTO: TStringField;
    qryusuariosCOD_ESTADO: TStringField;
    qryusuariosCOD_USUARIO: TStringField;
    qryusuariosNOM_USUARIO: TStringField;
    qryusuariosPWD_USUARIO: TStringField;
    qryusuariosFEC_EXPIRACION: TDateTimeField;
    qryusuariosNIV_USUARIO: TBCDField;
    qryusuariosUSU_LOGUEADO: TBCDField;
    qryusuariosULT_FEC_LOG: TDateTimeField;
    qryusuariosCOD_OFICINA: TStringField;
    qryusuariosCOD_REGIONAL: TStringField;
    qryusuariosCOD_CARGO: TStringField;
    Qryprogramas: TADOQuery;
    QryprogramasCOD_APLICACION: TStringField;
    QryprogramasNOM_APLICACION: TStringField;
    QryprogramasVERSIONES: TStringField;
    QryprogramasAPLICACION: TBytesField;
    QryprogramasORIGEN: TStringField;
    QryprogramasDESTINO: TStringField;
    Qryprogramasnom_exe: TStringField;
    qrysegudidad: TADOQuery;
    qrypermisos: TADOQuery;
    qrysegudidadCOD_APLICACION: TStringField;
    qrysegudidadNOM_APLICACION: TStringField;
    qrysegudidadCOD_MENU: TStringField;
    qrysegudidadCOD_CAMPO: TStringField;
    qrypermisosCOD_USUARIO: TStringField;
    qrypermisosCOD_APLICACION: TStringField;
    qrypermisosCOD_MENU: TStringField;
    qrypermisosCOD_CAMPO: TStringField;
    qryautoliquidacionNUM_PLANILLA: TStringField;
    qryautoliquidacionEMP_TIPO_DOC: TStringField;
    qryautoliquidacionEMP_NUMERO_DOC: TStringField;
    qryautoliquidacionCOD_SUCURSAL: TStringField;
    qryautoliquidacionTIP_DECLARACION: TStringField;
    qryautoliquidacionFEC_PAGO: TDateTimeField;
    qryautoliquidacionNUM_PLANILLA_CORR: TStringField;
    qryautoliquidacionPER_COTIZACION: TStringField;
    qryautoliquidacionPER_PRESENTACION: TStringField;
    qryautoliquidacionTOT_PLANILLA: TBCDField;
    qryautoliquidacionTOT_APORTE_PER: TBCDField;
    qryautoliquidacionTOT_INCAPACIDAD: TBCDField;
    qryautoliquidacionTOT_LICENCIAS: TBCDField;
    qryautoliquidacionTOT_APORTE: TBCDField;
    qryautoliquidacionINT_MORA: TBCDField;
    qryautoliquidacionTOT_APORTE_MMORA: TBCDField;
    qryautoliquidacionTOT_SALDO_FAV: TBCDField;
    qryautoliquidacionTOT_UPC: TBCDField;
    qryautoliquidacionTOT_PAGADO: TBCDField;
    qryautoliquidacionCOD_BANCO: TStringField;
    qryautoliquidacionNUM_CUENTA: TStringField;
    qryautoliquidacionVAL_EFECTIVO: TBCDField;
    qryautoliquidacionVAL_CHEQUE: TBCDField;
    qryautoliquidacionEST_PLANILLA: TStringField;
    qryautoliquidacionCOD_REGIONAL: TStringField;
    qryautoliquidacionCOD_OFICINA: TStringField;
    qryautoliquidacionNUM_DECLARACION: TBCDField;
    qryautoliquidacionCRU_CONCILIACION: TStringField;
    qryautoliquidacionFEC_DIGITACION: TDateTimeField;
    qryautoliquidacionTIP_DOC_USUARIO: TStringField;
    qryautoliquidacionNUM_DOC_USUARIO: TStringField;
    qryautoliquidacionFEC_MODIFICACION: TDateTimeField;
    qryautoliquidacionNO_INCAP_PAG: TStringField;
    qryautoliquidacionVAL_INCAP_PAG: TBCDField;
    qryautoliquidacionNO_LICEN_PAG: TStringField;
    qryautoliquidacionVAL_LICEN_PAG: TBCDField;
    qryautoliquidacionNO_MESES_MORA: TBCDField;
    qryautoliquidacionNO_PLANINILLA_ANT: TStringField;
    qryautoliquidacionVAL_NETO_UPC: TBCDField;
    qryautoliquidacionVAL_INTERES_UPC: TBCDField;
    qryautoliquidacionVAL_APORMASINT_UPC: TBCDField;
    qryautoliquidacionVAL_SALFAVOR_UPC: TBCDField;
    qryautoliquidacionVAL_PAGO_UPC: TBCDField;
    qryautoliquidacionNUM_LOTE: TStringField;
    qryautoliquidacionNOM_EMPRESA: TStringField;
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
    qrybancosCOD_CUENTA: TStringField;
    qrybancosTELEFONO: TStringField;
    qrybancosCONTACTO: TStringField;
    qrysucursalesCODBANCO: TStringField;
    qrysucursalesCODSUCURSAL: TStringField;
    qrysucursalesCOD_REGIONAL: TStringField;
    qrysucursalesNOMSUCURSAL: TStringField;
    qrysucursalesEST_SUCURSAL: TStringField;
    qrymodificarextracto: TADOQuery;
    qryestratoCOD_BANCO: TStringField;
    qryestratoCOD_SUCURSAL: TStringField;
    qryestratoNUM_DOCUMENTO: TStringField;
    qryestratoNUM_PLANILLA: TStringField;
    qryestratoFEC_RECAUDO: TDateTimeField;
    qryestratoVAL_CONSIGNACION: TBCDField;
    qryestratoTIP_MOVIMIENTO: TStringField;
    qryestratoEST_CONCILIACION: TStringField;
    qryestratoFEC_PLANILLA_CON: TDateTimeField;
    qryestratoFEC_RECEPCION: TDateTimeField;
    qryestratoMODIFICACION: TMemoField;
    qryestratoEST_REGISTRO: TStringField;
    qryestratoFEC_MOD: TDateTimeField;
    qryestratoUSUARIO: TStringField;
    procedure LiberarMemoria;
    function FDOM(Date: TDateTime): TDateTime;
    function LDOM(Date: TDateTime): TDateTime;
    function alinearcero (codigo : string;catidad : integer) : string;

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  DataModule1: TDataModule1;
  codaplicativo : STRING;

implementation

uses Uprincipal, Uglobal, udigitacionextracto;

{$R *.DFM}

{ TDataModule1 }

function TDataModule1.alinearcero(codigo: string;
  catidad: integer): string;
var largo,i : integer;
    valores : string;
begin
  valores :=  codigo;
   largo :=length(codigo);
        for i := largo to  catidad do
          begin
          valores := '0'+ valores ;
          end;
          alinearcero := valores;

end;

function TDataModule1.FDOM(Date: TDateTime): TDateTime;
var
  Year, Month, Day: Word;
begin
  DecodeDate(Date, Year, Month, Day);
  Result := EncodeDate(Year, Month, 1);

end;

function TDataModule1.LDOM(Date: TDateTime): TDateTime;
var
  Year, Month, Day: Word;
begin
  DecodeDate(Date, Year, Month, Day);
  // (if Month < 12 then inc(Month)
  // else begin Month := 1; inc(Year) end;
  // Result := EncodeDate(Year, Month, 1) - 1;
  Result := EncodeDate(Year, Month,
            MonthDays[IsLeapYear(Year), Month]);

end;

procedure TDataModule1.LiberarMemoria;
begin
if Win32Platform = VER_PLATFORM_WIN32_NT then
    SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);

end;

end.



