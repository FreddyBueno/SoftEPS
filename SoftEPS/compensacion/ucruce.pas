unit ucruce;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  Tfrmcruce = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Edit1: TEdit;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Image2: TImage;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcruce: Tfrmcruce;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrmcruce.Button1Click(Sender: TObject);
var
i : real;
begin
  dmcompensa.qrymcmulti.Close;
  dmcompensa.qrymcmulti.Open;
  dmcompensa.qrymcmulti.First;
  i:=0;
  while not dmcompensa.qrymcmulti.Eof do
  begin
    i:=i+1;
    edit1.Text := floattostr(i);
    frmcruce.Refresh;
    dmcompensa.qrymcafilcomp2.Close;
    dmcompensa.qrymcafilcomp2.prepare;
    dmcompensa.qrymcafilcomp2.Params[0].Value :=dmcompensa.qrymcmultiNUM_DECLARACION.Value;
    dmcompensa.qrymcafilcomp2.Params[1].Value :=dmcompensa.qrymcmultiafi_tipo_doc.Value;
    dmcompensa.qrymcafilcomp2.Params[2].Value :=dmcompensa.qrymcmultiafi_numero_doc.Value;
    dmcompensa.qrymcafilcomp2.Params[3].Value :=dmcompensa.qrymcmultiafi_tipo_doc.Value;
    dmcompensa.qrymcafilcomp2.Params[4].Value :=dmcompensa.qrymcmultiafi_numero_doc.Value;
    dmcompensa.qrymcafilcomp2.Open;
    dmcompensa.qrymcafilcomp2.First;
    while not dmcompensa.qrymcafilcomp2.Eof do
    begin
      dmcompensa.qrymcafilcomp2.Edit;
      dmcompensa.qrymcafilcomp2id_multiafiliado.Value := dmcompensa.qrymcmulticod_eps_multiafiliado.Value;
      dmcompensa.qrymcafilcomp2causa.Value := dmcompensa.qrymcmulticausa.Value;
      if dmcompensa.qrymcmultiCAMPO1.Value <> 'ERR' then
         dmcompensa.qrymcafilcomp2est_multiafiliado.Value := 'MUL'
      else
        dmcompensa.qrymcafilcomp2est_multiafiliado.Value := 'ERR';
      dmcompensa.qrymcafilcomp2.Post;
     dmcompensa.qrymcafilcomp2.Next;
    end;
    dmcompensa.qrymcmulti.Next;
  end;
  showmessage('Ha Finalizado del Proceso de Cruce');
  frmcruce.Close;
end;

end.
