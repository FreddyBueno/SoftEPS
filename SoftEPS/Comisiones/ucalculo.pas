unit ucalculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls;

type
  Tfrmcalculo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcalculo: Tfrmcalculo;

implementation

uses dmcomisiones;

{$R *.dfm}

procedure Tfrmcalculo.Button1Click(Sender: TObject);
var
  i :integer;
  si : string;
begin
  dmcomision.qrycomisiones.Close;
  dmcomision.qrycomisiones.Prepare;
  dmcomision.qrycomisiones.Params[0].Value := datetimepicker1.date;
  dmcomision.qrycomisiones.Open;
  if dmcomision.qrycomisiones.RecordCount > 0 then
  begin
    if MessageDlg('Ya se calcularon comisiones para el corte, Realmente desea recalcular?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    begin
      close;
    end
    else
    begin
      dmcomision.qrycomisiones.First;
      while not dmcomision.qrycomisiones.Eof do
      begin
        dmcomision.qrycomisiones.Delete;
        dmcomision.qrycomisiones.First;
      end;
    end;
  end;
  dmcomision.qrycalculo.Close;
  dmcomision.qrycalculo.Open;
  dmcomision.qrycalculo.First;
  edit2.Text := floattostr(dmcomision.qrycalculo.RecordCount);
  frmcalculo.Refresh;
  i := 0;
  while not dmcomision.qrycalculo.Eof do
  begin
    i :=i+1;
    edit1.Text := floattostr(i);
    frmcalculo.Refresh;
    dmcomision.qryrevcomisiones.Close;
    dmcomision.qryrevcomisiones.Prepare;
    dmcomision.qryrevcomisiones.Params[0].Value := dmcomision.qrycalculoAFI_TIPO_DOC.Value;
    dmcomision.qryrevcomisiones.Params[1].Value := dmcomision.qrycalculoAFI_NUMERO_DOC.Value;
    dmcomision.qryrevcomisiones.Open;
    if dmcomision.qryrevcomisiones.RecordCount = 0 then
    begin
      dmcomision.tblcomisiones.Close;
      dmcomision.tblcomisiones.Open;
      dmcomision.tblcomisiones.Insert;
      dmcomision.tblcomisionesTIP_DOCUMENTO_ASE.Value := dmcomision.qrycalculoTIP_DOCUMENTO.Value;
      dmcomision.tblcomisionesNUM_DOCUMENTO_ASE.Value := dmcomision.qrycalculoNUM_DOCUMENTO.Value;
      dmcomision.tblcomisionesTIP_DOCUMENTO_AFI.Value := dmcomision.qrycalculoAFI_TIPO_DOC.Value;
      dmcomision.tblcomisionesNUM_DOCUMENTO_AFI.Value := dmcomision.qrycalculoAFI_NUMERO_DOC.Value;
      dmcomision.tblcomisionesPER_COMPENSACION.Value  := dmcomision.qrycalculoPERIODO_COMPENSADO.Value;
      dmcomision.tblcomisionesNUM_DECLARACION.Value   := dmcomision.qrycalculoNUM_DECLARACION.Value;
      dmcomision.tblcomisionesFEC_CORTE.Value := datetimepicker1.date;
      dmcomision.tblcomisiones.Post;
    end;
    dmcomision.qrycalculo.Next;
  end;
  showmessage('Finalizado el Calculo de Comisiones');
  close;
end;

procedure Tfrmcalculo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

end.
