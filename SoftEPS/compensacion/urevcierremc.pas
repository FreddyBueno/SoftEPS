unit urevcierremc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Gauges, ComCtrls, ExtCtrls;

type
  Tfrmrevcierremc1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    GroupBox2: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Gauge1: TGauge;
    Gauge2: TGauge;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrevcierremc1: Tfrmrevcierremc1;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure LiberarMemoria;
begin
  if Win32Platform = VER_PLATFORM_WIN32_NT then
    SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);
end;

procedure Tfrmrevcierremc1.Button1Click(Sender: TObject);
var
  fecha_dec : string;
  fecha_dec1 : string;
  decini : string;
  decfin : string;
begin
  liberarmemoria;
  fecha_dec := copy(datetostr(datetimepicker1.Date),7,4)+copy(datetostr(datetimepicker1.Date),3,4)+copy(datetostr(datetimepicker1.Date),1,2);
  dmcompensa.mcqrymcdeclaracion2.Close;
  dmcompensa.mcqrymcdeclaracion2.Prepare;
  dmcompensa.mcqrymcdeclaracion2.Params[0].Value := datetimepicker1.Date;
  dmcompensa.mcqrymcdeclaracion2.Open;
  with dmcompensa.mcqrymcdeclaracion2 do
  begin
    dmcompensa.mcqrymcdeclaracion2.First;
    decini := floattostr(dmcompensa.mcqrymcdeclaracion2num_declaracion.Value);
    dmcompensa.mcqrymcdeclaracion2.last;
    decfin :=floattostr(dmcompensa.mcqrymcdeclaracion2num_declaracion.Value);
  end;
  gauge2.MinValue := 0;
  gauge2.MaxValue := 6;
  gauge2.Progress := gauge2.Progress + 1;
  edit2.Text := 'Reversando Bases de Calculo';
  dmcompensa.mcqrymcdeclaracion2.Close;
  dmcompensa.mcqrymcbasesdecalculo3.Close;
  dmcompensa.mcqrymcbasesdecalculo3.Prepare;
  dmcompensa.mcqrymcbasesdecalculo3.Params[0].Value := decini;
  dmcompensa.mcqrymcbasesdecalculo3.Params[1].Value := decfin;
  dmcompensa.mcqrymcbasesdecalculo3.Open;
  with dmcompensa.mcqrymcbasesdecalculo3 do
  begin
    dmcompensa.mcqrymcbasesdecalculo3.First;
    gauge1.MinValue := 0;
    gauge1.MaxValue := dmcompensa.mcqrymcbasesdecalculo3.RecordCount;
    gauge1.Progress := 0;
    while not dmcompensa.mcqrymcbasesdecalculo3.Eof do
    begin
      dmcompensa.mcqrymcbasesdecalculo3.Delete;
      dmcompensa.mcqrymcbasesdecalculo3.First;
      gauge1.Progress := gauge1.Progress + 1;
    end;
  end;
  gauge2.Progress := gauge2.Progress + 1;
  edit2.Text := 'Reversando Liquidacion Compensacion';
  dmcompensa.mcqrymcliquidacion3.Close;
  dmcompensa.mcqrymcliquidacion3.Prepare;
  dmcompensa.mcqrymcliquidacion3.Params[0].Value := decini;
  dmcompensa.mcqrymcliquidacion3.Params[1].Value := decfin;
  dmcompensa.mcqrymcliquidacion3.Open;
  with dmcompensa.mcqrymcliquidacion3 do
  begin
    dmcompensa.mcqrymcliquidacion3.First;
    gauge1.MinValue := 0;
    gauge1.MaxValue := dmcompensa.mcqrymcliquidacion3.RecordCount;
    gauge1.Progress := 0;
    while not dmcompensa.mcqrymcliquidacion3.Eof do
    begin
      dmcompensa.mcqrymcliquidacion3.Delete;
      dmcompensa.mcqrymcliquidacion3.First;
      gauge1.Progress := gauge1.Progress + 1;
    end;
  end;
  gauge2.Progress := gauge2.Progress + 1;
  edit2.Text := 'Reversando Tabla de Cierres';
  dmcompensa.mcqrymccierres1.Close;
  dmcompensa.mcqrymccierres1.Prepare;
  dmcompensa.mcqrymccierres1.Params[0].Value := datetimepicker1.Date;
  dmcompensa.mcqrymccierres1.Open;
  with dmcompensa.mcqrymccierres1 do
  begin
    dmcompensa.mcqrymccierres1.First;
    gauge1.MinValue := 0;
    gauge1.MaxValue := dmcompensa.mcqrymccierres1.RecordCount;
    gauge1.Progress := 0;
    while not dmcompensa.mcqrymccierres1.Eof do
    begin
      dmcompensa.mcqrymccierres1.Delete;
      dmcompensa.mcqrymccierres1.First;
      gauge1.Progress := gauge1.Progress + 1;
    end;
  end;
  gauge2.Progress := gauge2.Progress + 1;
  edit2.Text := 'Reversando Afiliados Compensados';
  dmcompensa.mcqrymcrafilcomp.Close;
  dmcompensa.mcqrymcrafilcomp.Prepare;
  dmcompensa.mcqrymcrafilcomp.Params[0].Value := decini;
  dmcompensa.mcqrymcrafilcomp.Params[1].Value := decfin;
  dmcompensa.mcqrymcrafilcomp.Open;
  with dmcompensa.mcqrymcrafilcomp do
  begin
    dmcompensa.mcqrymcrafilcomp.First;
    gauge1.MinValue := 0;
    gauge1.MaxValue := dmcompensa.mcqrymcrafilcomp.RecordCount;
    gauge1.Progress := 0;
    while not dmcompensa.mcqrymcrafilcomp.Eof do
    begin
      dmcompensa.qrymcdnumpla.Close;
      dmcompensa.qrymcdnumpla.Prepare;
      dmcompensa.qrymcdnumpla.Params[0].Value := dmcompensa.mcqrymcrafilcompNUM_PLANILLA.Value;
      dmcompensa.qrymcdnumpla.Params[1].Value := dmcompensa.mcqrymcrafilcompAFI_TIPO_DOC.Value;
      dmcompensa.qrymcdnumpla.Params[2].Value := dmcompensa.mcqrymcrafilcompAFI_NUMERO_DOC.Value;
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
      dmcompensa.mcqrymcrafilcomp.Delete;
      dmcompensa.mcqrymcrafilcomp.First;
      gauge1.Progress := gauge1.Progress + 1;
    end;
  end;
  gauge2.Progress := gauge2.Progress + 1;
  edit2.Text := 'Reversando Numeros de Declaracion';
  dmcompensa.mcqrymcdeclaracion2.Close;
  dmcompensa.mcqrymcdeclaracion2.Prepare;
  dmcompensa.mcqrymcdeclaracion2.Params[0].Value := datetimepicker1.Date;
  dmcompensa.mcqrymcdeclaracion2.Open;
  with dmcompensa.mcqrymcdeclaracion2 do
  begin
    dmcompensa.mcqrymcdeclaracion2.First;
    gauge1.MinValue := 0;
    gauge1.MaxValue := dmcompensa.mcqrymcdeclaracion2.RecordCount;
    gauge1.Progress := 0;
    while not dmcompensa.mcqrymcdeclaracion2.Eof do
    begin
      dmcompensa.mcqrymcdeclaracion2.Delete;
      dmcompensa.mcqrymcdeclaracion2.First;
      gauge1.Progress := gauge1.Progress + 1;
    end;
  end;
  gauge2.Progress := gauge2.Progress + 1;
  showmessage('Finalizado el Proceso de Reversion de Cierre');
  close;
end;

procedure Tfrmrevcierremc1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
