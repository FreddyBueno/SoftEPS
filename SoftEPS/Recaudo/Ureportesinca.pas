unit Ureportesinca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  Tfrmrepincapacidades = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrepincapacidades: Tfrmrepincapacidades;

implementation

uses dtmodulo;

{$R *.dfm}

end.
