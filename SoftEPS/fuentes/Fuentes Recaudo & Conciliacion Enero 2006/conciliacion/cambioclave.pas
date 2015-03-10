unit cambioclave;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons;

type
  Tfrmcambioclave = class(TForm)
    qryAplicambio: TADOQuery;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    qryAplicambioCOD_USUARIO: TStringField;
    qryAplicambioTIP_DOCUMENTO: TStringField;
    qryAplicambioNUM_DOCUMENTO: TStringField;
    qryAplicambioCOD_ESTADO: TStringField;
    qryAplicambioNOM_USUARIO: TStringField;
    qryAplicambioPWD_USUARIO: TStringField;
    qryAplicambioFEC_EXPIRACION: TDateTimeField;
    qryAplicambioNIV_USUARIO: TBCDField;
    qryAplicambioUSU_LOGUEADO: TBCDField;
    qryAplicambioULT_FEC_LOG: TDateTimeField;
    qryAplicambioCOD_OFICINA: TStringField;
    qryAplicambioCOD_REGIONAL: TStringField;
    qryAplicambioCOD_CARGO: TStringField;
    qryAplicambioNUM_CONSECUTIVO: TBCDField;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcambioclave: Tfrmcambioclave;

implementation

uses LoginFrm, dtmodulo;

{$R *.dfm}

procedure Tfrmcambioclave.BitBtn1Click(Sender: TObject);
begin
if Edit3.Text <> '' then
begin
    if MessageDlg('La  clave  sera  cambiada    ¿ Esta  Seguro ? ',mtConfirmation, [mbYes, mbNo], 0) = mrYES then
    begin
       if  trim(Edit2.Text) <> trim(Edit3.Text) then
      begin
          qryAplicambio.Close;
          qryAplicambio.Parameters[0].Value := LowerCase(trim(Edit1.Text));
          qryAplicambio.open;
          if  qryAplicambio.RecordCount = 1 then
          begin
             qryAplicambio.Edit;
             qryAplicambioPWD_USUARIO.Value := frminicio.Encrypt((trim(Edit3.Text)),1);
             qryAplicambio.Post;
             ShowMessage('Clave  cambiada  con exito');
          end;
          frmcambioclave.Close;
      end
      else
      begin
         ShowMessage('La clave  del usuario no puede  ser  igual al usuario');
      end;
    end;
 end;
end;

end.
