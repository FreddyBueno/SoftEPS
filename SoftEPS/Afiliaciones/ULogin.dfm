�
 TFRMLOGIN 0�  TPF0	TfrmloginfrmloginLeft<Top� ActiveControl	edusuarioBorderStylebsDialogCaptionAFILIACIONESClientHeight� ClientWidthColor	clBtnFace
ParentFont		Icon.Data
6             �  &        (    (       @         �                        �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ���                                  
"""""""""      
���������      
���������"     
���������     
��������  "    
�������� p"    
���������p     
���������     
���������     
���������                �               �               �             �             ;;            ��           ;;;;0p0        3����p3   3 333;;;;0   ������3����   wwwwwws;;;;0  333333;3����  �������;;;;0          ����� �         ��;;00          ����            �;;             ��                                   ����� �� ��  ��  �  ?� �  �  ?�  �  �  � ?���?���?�������� �� � �  �  1�  1   1   1   !�� �� ������?�������(                �                         �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ���         
""""   
�����  
����   
����   
�����                       ��     ��   033�� �wws�� ������� �    ��      ��         ��������p�'  ����������  ���������    ����������  
KeyPreview	OldCreateOrder	PositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TGroupBox	GroupBox1LeftTopEWidth� Height^Caption Identificacion del UsuarioFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrder  TLabelLabel1LeftTopWidth4HeightCaption	Usuario :  TLabelLabel2LeftTop<Width5HeightCaption
Clave    :   TEdit	edusuarioLeftiTop]WidthyHeightHint8Digite  el usuario  autorizado  para Ingresar al sistemaCharCaseecUpperCaseColorclMoneyGreenFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontParentShowHintShowHint	TabOrder  TEditedclaveLeftiTop~WidthyHeightHint:Digite  la Clave  establecida  para  el ingreso al SistemaCharCaseecUpperCaseColorclMoneyGreenFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontParentShowHintPasswordChar*ShowHint	TabOrder  TBitBtnButton1Left=Top� WidthIHeightCaption&AceptarDefault	TabOrderOnClickButton1Click
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  333333333333�33333  334C33333338�33333  33B$3333333�8�3333  34""C33333833�3333  3B""$33333�338�333  4"*""C3338�8�3�333  2"��"C3338�3�333  :*3:"$3338�38�8�33  3�33�"C333�33�3�33  3333:"$3333338�8�3  33333�"C333333�3�3  33333:"$3333338�8�  333333�"C333333�3�  333333:"C3333338�  3333333�#3333333��  3333333:3333333383  333333333333333333  	NumGlyphs  TBitBtnButton2Left� Top� WidthPHeightCaption	&CancelarTabOrderOnClickButton2ClickKindbkAbort  TQueryqryversionesDatabaseNamesoftepsSQL.Strings  SELECT ver_afiliaciones    FROM versionesC  WHERE versiones.fec_periodo IN (SELECT max(versiones.fec_periodo)=	                                             FROM versiones) LeftTop8 TStringFieldqryversionesver_afiliaciones	FieldNamever_afiliaciones	FixedChar	Size   TQueryqryusuariosDatabaseNamesoftepsSQL.Strings#  SELECT usuarios.tip_documento,   +                 usuarios.num_documento,   )                 usuarios.nom_usuario,   )                 usuarios.cod_oficina,   (                 usuarios.cod_regional      FROM usuarios  4   WHERE ( usuarios.cod_usuario = :"usuario" ) AND  .                   (usuarios.cod_estado = 'A') LeftTopX	ParamDataDataTypeftStringNameusuario	ParamTypeptInputOutput   TStringFieldqryusuariostip_documento	FieldNametip_documento	FixedChar	Size  TStringFieldqryusuariosnum_documento	FieldNamenum_documento	FixedChar	Size  TStringFieldqryusuariosnom_usuario	FieldNamenom_usuario	FixedChar	Size  TStringFieldqryusuarioscod_oficina	FieldNamecod_oficina	FixedChar	Size  TStringFieldqryusuarioscod_regional	FieldNamecod_regional	FixedChar	Size    