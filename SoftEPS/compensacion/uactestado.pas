unit uactestado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tfrmactestado = class(TForm)
    Panel1: TPanel;
    Label13: TLabel;
    Label6: TLabel;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmactestado: Tfrmactestado;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrmactestado.Button1Click(Sender: TObject);
var i :real;
begin
  i := 0 ;
  dmcompensa.qryactestado.Close;
  dmcompensa.qryactestado.Open;
  dmcompensa.qryactestado.First;
  while not dmcompensa.qryactestado.Eof do
  begin
    dmcompensa.qryactpla.Close;
    dmcompensa.qryactpla.Prepare;
    dmcompensa.qryactpla.Params[0].Value := dmcompensa.qryactestadoAFI_TIPO_DOC.Value;
    dmcompensa.qryactpla.Params[1].Value := dmcompensa.qryactestadoAFI_NUMERO_DOC.Value;
    dmcompensa.qryactpla.Params[2].Value := dmcompensa.qryactestadoNUM_PLANILLA.Value;
    dmcompensa.qryactpla.Open;
    dmcompensa.qryactpla.First;
    dmcompensa.qryactpla.Edit;
    dmcompensa.qryactplaDET_ESTADO.Value := 'COM';
    dmcompensa.qryactplaNUM_DECLARACION.Value := dmcompensa.qryactestadoNUM_DECLARACION.Value;
    dmcompensa.qryactpla.Post;
    i := i + 1;
    edit1.Text := floattostr(i);
    frmactestado.Refresh;
    dmcompensa.qryactestado.Next;
  end;
  if dmcompensa.qryactestado.RecordCount = 0 then
     showmessage('No Existen Planillas Para Actualizar !')
  else
    showmessage('Finalizada la Actualizacion');
  dmcompensa.qryactestado.Close;
  frmactestado.Close;
end;

end.
