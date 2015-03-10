unit ucamperiodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, ExtCtrls, Gauges, Buttons;

type
  Tfrmcamperiodo = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Gauge1: TGauge;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcamperiodo: Tfrmcamperiodo;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrmcamperiodo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure Tfrmcamperiodo.BitBtn1Click(Sender: TObject);
var
  mesperiodo : real;
  anoperiodo : real;
  mesperiod1 : real;
  anoperiod1 : real;
begin
  try
   dmcompensa.qrymcactperiodo.Close;
   dmcompensa.qrymcactperiodo.Open;
   with dmcompensa.qrymcactperiodo do
   begin
     if dmcompensa.qrymcactperiodo.RecordCount = 0 then
        showmessage('No Existen Planillas A Actualizar');
     if dmcompensa.qrymcactperiodo.RecordCount > 0 then
     begin
       if MessageDlg('Esta Seguro de la Actualización',mtConfirmation, [mbYes, mbNo],0) = mrYes then
       begin
         dmcompensa.qrymcactperiodo.First;
         gauge1.MinValue := 0;
         gauge1.MaxValue := 0;
         gauge1.Progress := 1;
         while not dmcompensa.qrymcactperiodo.Eof do
         begin
           mesperiodo := strtofloat(copy(dmcompensa.qrymcactperiodoper_presentacion.Value,1,2));
           anoperiodo := strtofloat(copy(dmcompensa.qrymcactperiodoper_presentacion.Value,4,4));
           mesperiod1 := strtofloat(copy(maskedit1.Text,1,2));
           anoperiod1 := strtofloat(copy(maskedit1.Text,4,4));
           if anoperiodo < anoperiod1 then
           begin
             dmcompensa.qrymcactperiodo.Edit;
             dmcompensa.qrymcactperiodoper_presentacion.Value := maskedit1.Text;
             dmcompensa.qrymcactperiodo.Post;
             dmcompensa.qrymcactpla.Close;
             dmcompensa.qrymcactpla.Prepare;
             dmcompensa.qrymcactpla.Params[0].Value := dmcompensa.qrymcactperiodoNUM_PLANILLA.value;
             dmcompensa.qrymcactpla.Open;
             dmcompensa.qrymcactpla.First;
             if dmcompensa.qrymcactpla.RecordCount > 0 then
             begin
               dmcompensa.qrymcactpla.Edit;
               dmcompensa.qrymcactplaTIP_DECLARACION.Value := 'A';
               dmcompensa.qrymcactpla.Post;
             end;
             dmcompensa.qrymcactpla.Close;
           end;
           if (anoperiodo = anoperiod1) and (mesperiodo < mesperiod1) then
           begin
             dmcompensa.qrymcactperiodo.Edit;
             dmcompensa.qrymcactperiodoper_presentacion.Value := maskedit1.Text;
             dmcompensa.qrymcactperiodo.Post;
             dmcompensa.qrymcactpla.Close;
             dmcompensa.qrymcactpla.Prepare;
             dmcompensa.qrymcactpla.Params[0].Value := dmcompensa.qrymcactperiodoNUM_PLANILLA.value;
             dmcompensa.qrymcactpla.Open;
             dmcompensa.qrymcactpla.First;
             if dmcompensa.qrymcactpla.RecordCount > 0 then
             begin
               dmcompensa.qrymcactpla.Edit;
               dmcompensa.qrymcactplaTIP_DECLARACION.Value := 'A';
               dmcompensa.qrymcactpla.Post;
             end;
             dmcompensa.qrymcactpla.Close;
           end;
           dmcompensa.qrymcactperiodo.Next;
           gauge1.Progress := gauge1.Progress + 1;
           frmcamperiodo.Refresh;
         end;
         showmessage('Finalizado Proceso de Actualizacion');
       end;
     end;
   end;
  except
    showmessage('Existe Inconsistencia en la Base de Datos');
  end;
end;


end.
