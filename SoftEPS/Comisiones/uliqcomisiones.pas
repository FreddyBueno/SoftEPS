unit uliqcomisiones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  Tfrmliquidacion = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmliquidacion: Tfrmliquidacion;

implementation

uses dmcomisiones;

{$R *.dfm}

procedure Tfrmliquidacion.Button1Click(Sender: TObject);
var i:real;
   si: string;
begin
  dmcomision.qryconliq.Close;
  dmcomision.qryconliq.Prepare;
  dmcomision.qryconliq.Params[0].Value := datetimepicker1.Date;
  dmcomision.qryconliq.Open;
  si := 'si';
  if dmcomision.qryconliq.RecordCount > 0 then
  begin
    si := 'no';
    if MessageDlg('Ya se liquidaron comisiones en esa fecha de corte, desea volver a liquidar?',mtConfirmation, [mbYes, mbNo], 0) = mrYES then
    begin
      si := 'si';
      dmcomision.qryconliq.First;
      while not dmcomision.qryconliq.Eof do
      begin
        dmcomision.qryconliq.Delete;
        dmcomision.qryconliq.First;
      end;
    end;
  end;
  if si = 'si' then
  begin
    dmcomision.qryasesores.Close;
    dmcomision.qryasesores.Open;
    i := 0;
    while not dmcomision.qryasesores.Eof do
    begin
      i := i + 1;
      edit1.Text := floattostr(i);
      frmliquidacion.Refresh;
      dmcomision.qryliqcomisiones.close;
      dmcomision.qryliqcomisiones.Prepare;
      dmcomision.qryliqcomisiones.Params[0].Value := dmcomision.qryasesoresTIP_DOCUMENTO.Value;
      dmcomision.qryliqcomisiones.Params[1].Value := dmcomision.qryasesoresNUM_DOCUMENTO.Value;
      dmcomision.qryliqcomisiones.Params[2].Value := datetimepicker1.Date;
      dmcomision.qryliqcomisiones.Open;
      dmcomision.qryliqcomisiones.First;
      if dmcomision.qryliqcomisionesAFILIADOS.Value > 0 then
      begin
        dmcomision.qryliqvalor.Close;
        dmcomision.qryliqvalor.Prepare;
        dmcomision.qryliqvalor.Params[0].Value := dmcomision.qryasesoresCOD_REGIONAL.Value;
        dmcomision.qryliqvalor.Params[1].Value := dmcomision.qryasesoresTIP_CONTRATO.Value;
        dmcomision.qryliqvalor.Params[2].Value := dmcomision.qryliqcomisionesAFILIADOS.Value;
        dmcomision.qryliqvalor.Params[3].Value := dmcomision.qryliqcomisionesAFILIADOS.Value;
        dmcomision.qryliqvalor.Open;
        dmcomision.tblliquidacion.Close;
        dmcomision.tblliquidacion.Open;
        dmcomision.tblliquidacion.Insert;
        dmcomision.tblliquidacionTIP_DOCUMENTO_ASE.Value := dmcomision.qryasesoresTIP_DOCUMENTO.Value;
        dmcomision.tblliquidacionNUM_DOCUMENTO_ASE.Value := dmcomision.qryasesoresNUM_DOCUMENTO.Value;
        dmcomision.tblliquidacionNUM_AFILIADOS.Value := dmcomision.qryliqcomisionesAFILIADOS.Value;
        dmcomision.tblliquidacionTOTAL_COMISION.Value := Dmcomision.qryliqcomisionesAFILIADOS.Value * dmcomision.qryliqvalorVALOR.Value;
        dmcomision.tblliquidacionFEC_CORTE.Value := datetimepicker1.Date;
        dmcomision.tblliquidacion.Post;
      end;
      dmcomision.qryasesores.Next;
    end;
    showmessage('Finalizada Liquidacion de Comisiones');
  end;
  frmliquidacion.Close;
end;

end.
