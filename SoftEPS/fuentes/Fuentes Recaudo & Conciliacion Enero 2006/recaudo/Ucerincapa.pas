unit Ucerincapa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls, StdCtrls;

type
  Tfrmcertincapacidades = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    qrfecha: TQRLabel;
    qrape1: TQRLabel;
    tipdocumento: TQRLabel;
    numdocumento: TQRLabel;
    qrnombreempresa: TQRLabel;
    qrtipdocempresa: TQRLabel;
    qrnumdocempresa: TQRLabel;
    qrdignostico: TQRLabel;
    qrfechainicio: TQRLabel;
    qrdiasletras: TQRLabel;
    qrnumeros: TQRLabel;
    qrnumprorroga: TQRLabel;
    qrnommedico: TQRLabel;
    qrcodigo: TQRLabel;
    qrynoprorroga: TQRLabel;
    qrsiprorroga: TQRLabel;
    qrsalariobase: TQRLabel;
    qrdiasl: TQRLabel;
    qrydiasletras: TQRLabel;
    qrvalorincapacidad: TQRLabel;
    qrambu: TQRLabel;
    qrhosp: TQRLabel;
    qrmaternidad: TQRLabel;
    qrpervalor1: TQRLabel;
    qrperiodo1: TQRLabel;
    qrperiodo2: TQRLabel;
    qrvalperiodo2: TQRLabel;
    qrperiodo3: TQRLabel;
    qrvalperiodo3: TQRLabel;
    qrperiodo4: TQRLabel;
    qrvalperiodo4: TQRLabel;
    qrape2: TQRLabel;
    qrnom1: TQRLabel;
    qrnom2: TQRLabel;
    qrpaternidad: TQRLabel;
    QRShape7: TQRShape;
    private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcertincapacidades: Tfrmcertincapacidades;

implementation

{$R *.dfm}


end.
