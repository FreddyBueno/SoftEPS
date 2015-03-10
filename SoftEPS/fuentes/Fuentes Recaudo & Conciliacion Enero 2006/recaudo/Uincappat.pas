unit Uincappat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TFRMINCAPACIDADES_PATERNIDAD = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    qrygenero: TADOQuery;
    qrygeneroNUM_DOCUMENTO: TStringField;
    qrygeneroCOD_SEXO: TStringField;
    EDTCODBEN: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMINCAPACIDADES_PATERNIDAD: TFRMINCAPACIDADES_PATERNIDAD;

implementation

uses Uincapacidades, dtmodulo;

{$R *.dfm}

procedure TFRMINCAPACIDADES_PATERNIDAD.Button1Click(Sender: TObject);
begin

     DATAMODULE1.QRYINCAPACIDADESPAT.CLOSE;
     DATAMODULE1.QRYINCAPACIDADESPAT.SQL.CLEAR;
     DATAMODULE1.QRYINCAPACIDADESPAT.SQL.ADD('SELECT NUM_DOCUMENTO_BEN FROM RELACION_AFILIADOS WHERE NUM_DOCUMENTO_COT= :"DOCCOTIZANTE" AND NUM_DOCUMENTO_BEN= :"DOCBENEFICIARIO"');
     DATAMODULE1.QRYINCAPACIDADESPAT.Parameters[0].VALUE := trim(FRMINCAPACIDADES.edtnumdocafiliadoin.Text);
     DATAMODULE1.QRYINCAPACIDADESPAT.Parameters[1].VALUE := TRIM(EDTCODBEN.TEXT);
     DATAMODULE1.QRYINCAPACIDADESPAT.OPEN;
     //********

     {qrygenero.Close;
     qrygenero.SQL.Clear;
     qrygenero.SQL.Add('SELECT NUM_DOCUMENTO,COD_SEXO FROM AFILIADOS WHERE NUM_DOCUMENTO= :"DOCBENEFICIARIO"');
     qrygenero.Parameters[0].Value := TRIM(EDTCODBEN.Text);
     QRYGENERO.Open;
     IF (QRYGENEROCOD_SEXO.VALUE = 'F') THEN
     BEGIN}
        IF DATAMODULE1.QRYINCAPACIDADESPAT.RECORDCOUNT > 0 THEN
        BEGIN
	         FRMINCAPACIDADES.EDTDIASINCAPACIDAD.TEXT:='4';
        END
        ELSE IF DATAMODULE1.QRYINCAPACIDADESPAT.RECORDCOUNT = 0 THEN
           BEGIN
               //GRUPO FAMILIAR
               DATAMODULE1.QRYINCAPACIDADESPAT.CLOSE;
               DATAMODULE1.QRYINCAPACIDADESPAT.SQL.CLEAR;
               DATAMODULE1.QRYINCAPACIDADESPAT.SQL.ADD('SELECT NUM_DOCUMENTO FROM AFILIADOS WHERE NUM_DOCUMENTO= :"DOCCOTIZANTE" AND COD_SEXO= :"F"');
               DATAMODULE1.QRYINCAPACIDADESPAT.Parameters[0].VALUE := TRIM(EDTCODBEN.TEXT);
               DATAMODULE1.QRYINCAPACIDADESPAT.Parameters[1].VALUE := 'F';
               DATAMODULE1.QRYINCAPACIDADESPAT.OPEN;
               IF DATAMODULE1.QRYINCAPACIDADESPAT.RECORDCOUNT > 0 THEN
         	        FRMINCAPACIDADES.EDTDIASINCAPACIDAD.TEXT:='8'
               ELSE
               BEGIN
               SHOWMESSAGE(LOWERCASE('A ESTE COTIZANTE NO SE LE APRUEBA UNA LICENCIA DE PATERNIDAD'));
               FRMINCAPACIDADES.cbtipodocafiliado.Text:='';
               FRMINCAPACIDADES.edtnumdocafiliadoin.Text:='';
               FRMINCAPACIDADES.cbtipodocafiliado.SetFocus;
               END; //else
           END; //elseif
         {END // ifgener
         ELSE
         BEGIN
         SHOWMESSAGE(LOWERCASE('EL BENEFICIARIO DEBE SER UN MUJER'));
         FRMINCAPACIDADES.cbtipodocafiliado.Text:='';
         FRMINCAPACIDADES.edtnumdocafiliadoin.Text:='';
         FRMINCAPACIDADES.edtedad.Text:='';
         FRMINCAPACIDADES.edtsexo.Text:='';
         FRMINCAPACIDADES.edtnombreafiliado.Text:='';
         END;}
         frmincapacidades_paternidad.Free;
END;
end.
