unit urevcierre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Gauges;

type
  Tfrmrevcierre = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Gauge1: TGauge;
    Gauge2: TGauge;
    Edit2: TEdit;
    Edit3: TEdit;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrevcierre: Tfrmrevcierre;

implementation

uses dmcompensacion;

{$R *.dfm}
procedure LiberarMemoria;
begin
  if Win32Platform = VER_PLATFORM_WIN32_NT then
    SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);
end;



procedure Tfrmrevcierre.Button1Click(Sender: TObject);
var
  fecha_dec : string;
  fecha_dec1 : string;
  decini : string;
  decfin : string;
begin
  liberarmemoria;
  fecha_dec := copy(datetostr(datetimepicker1.Date),7,4)+copy(datetostr(datetimepicker1.Date),3,4)+copy(datetostr(datetimepicker1.Date),1,2);
  dmcompensa.qrymcdeclaracion2.Close;
  dmcompensa.qrymcdeclaracion2.Prepare;
  dmcompensa.qrymcdeclaracion2.Params[0].Value := datetimepicker1.Date;
  dmcompensa.qrymcdeclaracion2.Open;
  with dmcompensa.qrymcdeclaracion2 do
  begin
    dmcompensa.qrymcdeclaracion2.First;
    decini := floattostr(dmcompensa.qrymcdeclaracion2num_declaracion.Value);
    dmcompensa.qrymcdeclaracion2.last;
    decfin :=floattostr(dmcompensa.qrymcdeclaracion2num_declaracion.Value);
  end;
  gauge2.MinValue := 0;
  gauge2.MaxValue := 7;
  gauge2.Progress := gauge2.Progress + 1;
  edit2.Text := 'Reversando Bases de Calculo';
  dmcompensa.qrymcdeclaracion2.Close;
  dmcompensa.qrymcbasesdecalculo3.Close;
  dmcompensa.qrymcbasesdecalculo3.Prepare;
  dmcompensa.qrymcbasesdecalculo3.Params[0].Value := decini;
  dmcompensa.qrymcbasesdecalculo3.Params[1].Value := decfin;
  dmcompensa.qrymcbasesdecalculo3.Open;
  with dmcompensa.qrymcbasesdecalculo3 do
  begin
    dmcompensa.qrymcbasesdecalculo3.First;
    gauge1.MinValue := 0;
    gauge1.MaxValue := dmcompensa.qrymcbasesdecalculo3.RecordCount;
    gauge1.Progress := 0;
    while not dmcompensa.qrymcbasesdecalculo3.Eof do
    begin
      dmcompensa.qrymcbasesdecalculo3.Delete;
      dmcompensa.qrymcbasesdecalculo3.First;
      gauge1.Progress := gauge1.Progress + 1;
    end;
  end;
  gauge2.Progress := gauge2.Progress + 1;
  edit2.Text := 'Reversando Bases de Calculo Dep.';
  dmcompensa.qrymcbasesdep3.Close;
  dmcompensa.qrymcbasesdep3.Prepare;
  dmcompensa.qrymcbasesdep3.Params[0].Value :=decini;
  dmcompensa.qrymcbasesdep3.Params[1].Value :=decfin;
  dmcompensa.qrymcbasesdep3.Open;
  with dmcompensa.qrymcbasesdep3 do
  begin
    dmcompensa.qrymcbasesdep3.First;
    gauge1.MinValue := 0;
    gauge1.MaxValue := dmcompensa.qrymcbasesdep3.RecordCount;
    gauge1.Progress := 0;
    while not dmcompensa.qrymcbasesdep3.Eof do
    begin
      dmcompensa.qrymcbasesdep3.Delete;
      dmcompensa.qrymcbasesdep3.First;
      gauge1.Progress := gauge1.Progress + 1;
    end;
  end;
  gauge2.Progress := gauge2.Progress + 1;
  edit2.Text := 'Reversando Liquidacion Compensacion';
  dmcompensa.qrymcliquidacion3.Close;
  dmcompensa.qrymcliquidacion3.Prepare;
  dmcompensa.qrymcliquidacion3.Params[0].Value := decini;
  dmcompensa.qrymcliquidacion3.Params[1].Value := decfin;
  dmcompensa.qrymcliquidacion3.Open;
  with dmcompensa.qrymcliquidacion3 do
  begin
    dmcompensa.qrymcliquidacion3.First;
    gauge1.MinValue := 0;
    gauge1.MaxValue := dmcompensa.qrymcliquidacion3.RecordCount;
    gauge1.Progress := 0;
    while not dmcompensa.qrymcliquidacion3.Eof do
    begin
      dmcompensa.qrymcliquidacion3.Delete;
      dmcompensa.qrymcliquidacion3.First;
      gauge1.Progress := gauge1.Progress + 1;
    end;
  end;
  gauge2.Progress := gauge2.Progress + 1;
  edit2.Text := 'Reversando Tabla de Cierres';
  dmcompensa.qrymccierres1.Close;
  dmcompensa.qrymccierres1.Prepare;
  dmcompensa.qrymccierres1.Params[0].Value := datetimepicker1.Date;
  dmcompensa.qrymccierres1.Open;
  with dmcompensa.qrymccierres1 do
  begin
    dmcompensa.qrymccierres1.First;
    gauge1.MinValue := 0;
    gauge1.MaxValue := dmcompensa.qrymccierres1.RecordCount;
    gauge1.Progress := 0;
    while not dmcompensa.qrymccierres1.Eof do
    begin
      dmcompensa.qrymccierres1.Delete;
      dmcompensa.qrymccierres1.First;
      gauge1.Progress := gauge1.Progress + 1;
    end;
  end;
  gauge2.Progress := gauge2.Progress + 1;
  edit2.Text := 'Reversando Afiliados Compensados';
  dmcompensa.qrymcrafilcomp.Close;
  dmcompensa.qrymcrafilcomp.Prepare;
  dmcompensa.qrymcrafilcomp.Params[0].Value := decini;
  dmcompensa.qrymcrafilcomp.Params[1].Value := decfin;
  dmcompensa.qrymcrafilcomp.Open;
  with dmcompensa.qrymcrafilcomp do
  begin
    dmcompensa.qrymcrafilcomp.First;
    gauge1.MinValue := 0;
    gauge1.MaxValue := dmcompensa.qrymcrafilcomp.RecordCount;
    gauge1.Progress := 0;
    while not dmcompensa.qrymcrafilcomp.Eof do
    begin
      dmcompensa.qrymcdnumpla.Close;
      dmcompensa.qrymcdnumpla.Prepare;
      dmcompensa.qrymcdnumpla.Params[0].Value := dmcompensa.qrymcrafilcompNUM_PLANILLA.Value;
      dmcompensa.qrymcdnumpla.Params[1].Value := dmcompensa.qrymcrafilcompAFI_TIPO_DOC.Value;
      dmcompensa.qrymcdnumpla.Params[2].Value := dmcompensa.qrymcrafilcompAFI_NUMERO_DOC.Value;
      dmcompensa.qrymcdnumpla.Open;
      with dmcompensa.qrymcdnumpla do
      begin
        dmcompensa.qrymcdnumpla.First;
        while not dmcompensa.qrymcdnumpla.Eof do
        begin
          dmcompensa.qrymcdnumpla.Edit;
          dmcompensa.qrymcdnumplaDET_ESTADO.Value := 'CIE';
          dmcompensa.qrymcdnumplaNUM_DECLARACION.Value := 0;
          dmcompensa.qrymcdnumpla.Post;
          dmcompensa.qrymcdnumpla.Next;
        end;
      end;
      dmcompensa.qrymcrafilcomp.Delete;
      dmcompensa.qrymcrafilcomp.First;
      gauge1.Progress := gauge1.Progress + 1;
    end;
  end;
  gauge2.Progress := gauge2.Progress + 1;
  edit2.Text := 'Reversando Numeros de Declaracion';
  dmcompensa.qrymcdeclaracion2.Close;
  dmcompensa.qrymcdeclaracion2.Prepare;
  dmcompensa.qrymcdeclaracion2.Params[0].Value := datetimepicker1.Date;
  dmcompensa.qrymcdeclaracion2.Open;
  with dmcompensa.qrymcdeclaracion2 do
  begin
    dmcompensa.qrymcdeclaracion2.First;
    gauge1.MinValue := 0;
    gauge1.MaxValue := dmcompensa.qrymcdeclaracion2.RecordCount;
    gauge1.Progress := 0;
    while not dmcompensa.qrymcdeclaracion2.Eof do
    begin
      dmcompensa.qrymcdeclaracion2.Delete;
      dmcompensa.qrymcdeclaracion2.First;
      gauge1.Progress := gauge1.Progress + 1;
    end;
  end;
  gauge2.Progress := gauge2.Progress + 1;
  showmessage('Finalizado el Proceso de Reversion de Cierre');
  close;
end;

procedure Tfrmrevcierre.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
