�
 TFRMEMPRESAS 0�  TPF0TfrmempresasfrmempresasLeft� ToplWidth�HeightxCaptionEmpresas ActivasColor	clBtnFace
ParentFont		FormStylefsStayOnTopOldCreateOrder	PositionpoScreenCenterVisible	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TPanelPanel1Left Top!Width�Height)AlignalBottom
BevelOuterbvNoneTabOrder  TDBNavigatorDBNavigatorLeftTop
Width� Height
DataSourcedsVisibleButtonsnbFirstnbPriornbNextnbLast Flat	Ctl3DParentCtl3DTabOrder   	TGroupBox	GroupBox1Left� Top Width� Height&TabOrder TLabelLabel1LeftTopWidth/HeightCaptionNombre:Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TEditEdit1Left8TopWidthiHeightColorclMoneyGreenFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrder   TButtonButton1Left� Top	Width@HeightCaption
&ConsultarDefault	Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrderOnClickButton1Click    TPanelPanel2Left Top Width�Height!AlignalClient
BevelOuterbvNoneCaptionPanel2TabOrder TDBGridDBGrid1Left Top Width�Height!AlignalClientColorclMoneyGreen
DataSourcedsFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgConfirmDeletedgCancelOnExit 
ParentFontTabOrder TitleFont.CharsetANSI_CHARSETTitleFont.ColorclNavyTitleFont.Height�TitleFont.NameTahomaTitleFont.StylefsBold 
OnDblClickDBGrid1DblClick   
TStatusBar
StatusBar1Left TopJWidth�HeightPanels ParentShowHintShowHintSimplePanel	
SimpleText3[Nota: Use '%' para visualizar todos los registros]  TQueryqryDatabaseNamesoftepsSQL.StringsSelect  empresas.tip_documento,  empresas.num_documento,  empresas.cod_sucursal,  empresas.nom_empresa,  empresas.cod_actividad_eco,  empresas.cod_departamento,  empresas.cod_ciudad,  empresas.tip_aportante,  empresas.dir_empresa,  empresas.tel_empresa,  empresas.tel_empresa2From empresas Where  empresas.cod_estado = 'A'4Order By empresas.tip_aportante,empresas.nom_empresa Left�Top TStringFieldqrytip_documentoDisplayLabelTipo Doc	FieldNametip_documentoOriginDBUNIMEC.empresas.tip_documento	FixedChar	Size  TStringFieldqrynum_documentoDisplayLabelNum Doc	FieldNamenum_documentoOriginDBUNIMEC.empresas.num_documento	FixedChar	Size  TStringFieldqrycod_sucursalDisplayLabelSucursal	FieldNamecod_sucursalOriginDBUNIMEC.empresas.cod_sucursal	FixedChar	Size  TStringFieldqrynom_empresaDisplayLabelNombre de la Empresa	FieldNamenom_empresaOriginDBUNIMEC.empresas.nom_empresa	FixedChar	Sized  TStringFieldqrycod_actividad_ecoDisplayLabelActividad Economica	FieldNamecod_actividad_ecoOrigin#DBUNIMEC.empresas.cod_actividad_eco	FixedChar	Size  TStringFieldqrycod_departamentoDisplayLabelCodigo depto	FieldNamecod_departamentoOrigin"DBUNIMEC.empresas.cod_departamento	FixedChar	Size  TStringFieldqrycod_ciudadDisplayLabelCodigo Ciudad	FieldName
cod_ciudadOriginDBUNIMEC.empresas.cod_ciudad	FixedChar	Size  TStringFieldqrytip_aportanteDisplayLabelTipo Aportante	FieldNametip_aportanteOriginDBUNIMEC.empresas.tip_aportante	FixedChar	Size  TStringFieldqrydir_empresaDisplayLabel
   Dirección	FieldNamedir_empresaOriginDBUNIMEC.empresas.dir_empresa	FixedChar	Size2  TStringFieldqrytel_empresaDisplayLabelTelefono	FieldNametel_empresaOriginDBUNIMEC.empresas.tel_empresa	FixedChar	  TStringFieldqrytel_empresa2DisplayLabelTelefono Opcional	FieldNametel_empresa2OriginDBUNIMEC.empresas.tel_empresa2	FixedChar	   TDataSourcedsDataSetqryLeft�Top   