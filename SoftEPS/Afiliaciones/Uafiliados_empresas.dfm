�
 TFRMAFILIADOS_EMPRESAS 0�  TPF0Tfrmafiliados_empresasfrmafiliados_empresasLeft� Top� Width�HeightxCaptionfrmafiliados_empresasColor	clBtnFace
ParentFont	OldCreateOrder	PositionpoScreenCenterOnClose	FormClosePixelsPerInch`
TextHeight TPanelPanel1Left Top<Width�Height!AlignalBottom
BevelOuterbvNoneTabOrder  TDBNavigatorDBNavigatorLeftTopWidth� Height
DataSourceDataSource1VisibleButtonsnbFirstnbPriornbNextnbLast Flat	Ctl3DParentCtl3DTabOrder    TPanelPanel2Left Top Width�Height<AlignalClient
BevelOuterbvNoneCaptionPanel2TabOrder TDBGridDBGrid1Left Top Width�Height<AlignalClientColorclMoneyGreen
DataSourceDataSource1OptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgConfirmDeletedgCancelOnExit TabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style 
OnDblClickDBGrid1DblClick   TDataSourceDataSource1DataSetqryafiliados_empresasLeft�Top  TQueryqryafiliados_empresasDatabaseNamesoftepsSQL.Strings/SELECT AFILIADOS_EMPRESAS.TIP_DOCUMENTO_EMP,   1         AFILIADOS_EMPRESAS.NUM_DOCUMENTO_EMP,   ,         AFILIADOS_EMPRESAS.COD_SUCURSAL,   !         EMPRESAS.NOM_EMPRESA,   -         AFILIADOS_EMPRESAS.COD_OCUPACION,   /         AFILIADOS_EMPRESAS.VAL_SUELDO_AFIL,   *         AFILIADOS_EMPRESAS.COD_ESTADO,   /         AFILIADOS_EMPRESAS.FEC_INGRESO_UNI,   ,         AFILIADOS_EMPRESAS.FEC_EGRESO_UNI      FROM AFILIADOS_EMPRESAS,            EMPRESAS  P   WHERE ( AFILIADOS_EMPRESAS.TIP_DOCUMENTO_EMP = EMPRESAS.TIP_DOCUMENTO ) AND  P         ( AFILIADOS_EMPRESAS.NUM_DOCUMENTO_EMP = EMPRESAS.NUM_DOCUMENTO ) AND  J         ( AFILIADOS_EMPRESAS.COD_SUCURSAL = EMPRESAS.COD_SUCURSAL ) AND  L         ( ( AFILIADOS_EMPRESAS.TIP_DOCUMENTO_AFI = :"TIP_DOCUMENTO" ) AND  J         ( AFILIADOS_EMPRESAS.NUM_DOCUMENTO_AFI = :"NUM_DOCUMENTO" ) ) AND/         ( AFILIADOS_EMPRESAS.COD_ESTADO = 'A') Leftj	ParamDataDataTypeftStringNametip_documento	ParamType	ptUnknownValueCC DataTypeftStringNamenum_documento	ParamType	ptUnknownValue86041756   TStringField&qryafiliados_empresastip_documento_emp	FieldNametip_documento_empOrigin-DBUNIMEC.afiliados_empresas.tip_documento_emp	FixedChar	Size  TStringField&qryafiliados_empresasnum_documento_emp	FieldNamenum_documento_empOrigin-DBUNIMEC.afiliados_empresas.num_documento_emp	FixedChar	Size  TStringField!qryafiliados_empresascod_sucursal	FieldNamecod_sucursalOrigin(DBUNIMEC.afiliados_empresas.cod_sucursal	FixedChar	Size  TStringField qryafiliados_empresasnom_empresa	FieldNamenom_empresaOriginDBUNIMEC.empresas.nom_empresa	FixedChar	Sized  TStringField"qryafiliados_empresascod_ocupacion	FieldNamecod_ocupacionOrigin)DBUNIMEC.afiliados_empresas.cod_ocupacion	FixedChar	Size  TFloatField$qryafiliados_empresasval_sueldo_afil	FieldNameval_sueldo_afilOrigin+DBUNIMEC.afiliados_empresas.val_sueldo_afil  TStringFieldqryafiliados_empresascod_estado	FieldName
cod_estadoOrigin&DBUNIMEC.afiliados_empresas.cod_estado	FixedChar	Size  TDateTimeField$qryafiliados_empresasfec_ingreso_uni	FieldNamefec_ingreso_uniOrigin+DBUNIMEC.afiliados_empresas.fec_ingreso_uni  TDateTimeField#qryafiliados_empresasfec_egreso_uni	FieldNamefec_egreso_uniOrigin*DBUNIMEC.afiliados_empresas.fec_egreso_uni    