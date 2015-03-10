unit Uaprobacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, ExtCtrls;

type
  Tfrmaprobacion = class(TForm)
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Image1: TImage;
    CheckBox2: TCheckBox;
    Image2: TImage;
    CheckBox3: TCheckBox;
    Image3: TImage;
    CheckBox4: TCheckBox;
    Image4: TImage;
    CheckBox5: TCheckBox;
    Image5: TImage;
    CheckBox6: TCheckBox;
    Image6: TImage;
    BitBtn1: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmaprobacion: Tfrmaprobacion;

implementation

uses Uprincipal, dtmodulo;

{$R *.dfm}

procedure Tfrmaprobacion.FormActivate(Sender: TObject);
begin
FRMPRINCIPAL.Enabled:=FALSE;
//***********************
DATAMODULE1.QRYAPROBACIONES.Close;
DATAMODULE1.QRYAPROBACIONES.Open;
WHILE NOT DATAMODULE1.QRYAPROBACIONES.Eof DO
BEGIN
IF DATAMODULE1.QRYAPROBACIONESCAUSAL_DE_NO_APROBACION.Value='POR ENCONTRARSE EN MORA EN EL MOMENTO DE LA INCAPACIDAD' THEN
BEGIN
IF DATAMODULE1.QRYAPROBACIONESACTIVADO.Value=TRUE THEN
 Checkbox1.Checked:=TRUE
ELSE
 Checkbox1.Checked:=FALSE;
END;

IF DATAMODULE1.QRYAPROBACIONESCAUSAL_DE_NO_APROBACION.Value='POR SER INFERIOR A 3 DIAS' THEN
BEGIN
IF DATAMODULE1.QRYAPROBACIONESACTIVADO.Value=TRUE THEN
 Checkbox2.Checked:=TRUE
ELSE
 Checkbox2.Checked:=FALSE;
END;

IF DATAMODULE1.QRYAPROBACIONESCAUSAL_DE_NO_APROBACION.Value='POR TENER MENOS DE CUATRO SEMANAS AFILIADO A LA E.P.S.' THEN
BEGIN
IF DATAMODULE1.QRYAPROBACIONESACTIVADO.Value=TRUE THEN
 Checkbox3.Checked:=TRUE
ELSE
 Checkbox3.Checked:=FALSE;
END;

IF DATAMODULE1.QRYAPROBACIONESCAUSAL_DE_NO_APROBACION.Value='POR ENCONTRARSE EN MORA EN EL MOMENTO DE LA LICENCIA DE MATERNIDAD' THEN
BEGIN
IF DATAMODULE1.QRYAPROBACIONESACTIVADO.Value=TRUE THEN
 Checkbox4.Checked:=TRUE
ELSE
 Checkbox4.Checked:=FALSE;
END;

IF DATAMODULE1.QRYAPROBACIONESCAUSAL_DE_NO_APROBACION.Value='POR TENER MENOS SEMANAS DE COTIZACION vs. LAS SEMANAS DE GESTACION' THEN
BEGIN
IF DATAMODULE1.QRYAPROBACIONESACTIVADO.Value=TRUE THEN
 Checkbox5.Checked:=TRUE
ELSE
 Checkbox5.Checked:=FALSE;
END;

IF DATAMODULE1.QRYAPROBACIONESCAUSAL_DE_NO_APROBACION.Value='POR TENER PAGOS ININTERRUMPIDOS A LA FECHA DE INICIO DE LA LICENCIA DE MATERNIDAD' THEN
BEGIN
IF DATAMODULE1.QRYAPROBACIONESACTIVADO.Value=TRUE THEN
 Checkbox6.Checked:=TRUE
ELSE
 Checkbox6.Checked:=FALSE;
END;
DATAMODULE1.QRYAPROBACIONES.Next;
END;//WHILE
end;

procedure Tfrmaprobacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FRMPRINCIPAL.Enabled:=TRUE;
end;

procedure Tfrmaprobacion.BitBtn1Click(Sender: TObject);
VAR
CONT:INTEGER;
begin
IF MESSAGEDLG ('Confirma La Grabación de la PARAMETRIZACION de las causales de No aprobación de Incapacidades y Licencias de Maternidad',MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
begin
DATAMODULE1.QRYAPROBACIONES.Close;
DATAMODULE1.QRYAPROBACIONES.Open;
WHILE NOT DATAMODULE1.QRYAPROBACIONES.Eof DO
BEGIN
DATAMODULE1.DTBDATAMEC.BeginTrans;
DATAMODULE1.QRYAPROBACIONES.EDIT;

IF (Checkbox1.Checked=TRUE) AND (DATAMODULE1.QRYAPROBACIONESCAUSAL_DE_NO_APROBACION.Value='POR ENCONTRARSE EN MORA EN EL MOMENTO DE LA INCAPACIDAD') THEN
    DATAMODULE1.QRYAPROBACIONESACTIVADO.Value:=TRUE
    ELSE IF (Checkbox2.Checked=TRUE) AND (DATAMODULE1.QRYAPROBACIONESCAUSAL_DE_NO_APROBACION.Value='POR SER INFERIOR A 3 DIAS') THEN
            DATAMODULE1.QRYAPROBACIONESACTIVADO.Value:=TRUE
            ELSE IF (Checkbox3.Checked=TRUE) AND (DATAMODULE1.QRYAPROBACIONESCAUSAL_DE_NO_APROBACION.Value='POR TENER MENOS DE CUATRO SEMANAS AFILIADO A LA E.P.S.') THEN
                    DATAMODULE1.QRYAPROBACIONESACTIVADO.Value:=TRUE
                    ELSE IF (Checkbox4.Checked=TRUE) AND (DATAMODULE1.QRYAPROBACIONESCAUSAL_DE_NO_APROBACION.Value='POR ENCONTRARSE EN MORA EN EL MOMENTO DE LA LICENCIA DE MATERNIDAD') THEN
                            DATAMODULE1.QRYAPROBACIONESACTIVADO.Value:=TRUE
                            ELSE IF (Checkbox5.Checked=TRUE) AND (DATAMODULE1.QRYAPROBACIONESCAUSAL_DE_NO_APROBACION.Value='POR TENER MENOS SEMANAS DE COTIZACION vs. LAS SEMANAS DE GESTACION') THEN
                                    DATAMODULE1.QRYAPROBACIONESACTIVADO.Value:=TRUE
                                    ELSE IF (Checkbox6.Checked=TRUE) AND (DATAMODULE1.QRYAPROBACIONESCAUSAL_DE_NO_APROBACION.Value='POR TENER PAGOS ININTERRUMPIDOS A LA FECHA DE INICIO DE LA LICENCIA DE MATERNIDAD') THEN
                                            DATAMODULE1.QRYAPROBACIONESACTIVADO.Value:=TRUE
                                                ELSE DATAMODULE1.QRYAPROBACIONESACTIVADO.Value:=FALSE;
DATAMODULE1.DTBDATAMEC.CommitTrans;
DATAMODULE1.QRYAPROBACIONES.Post;
DATAMODULE1.QRYAPROBACIONES.Next;

END;//WHILE
end;
end;

end.
