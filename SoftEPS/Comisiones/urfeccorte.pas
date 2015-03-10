unit urfeccorte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, QRExport, ExtCtrls, DB;

type
  Tfrmrfec_corte = class(TForm)
    QuickRep1: TQuickRep;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRBand1: TQRBand;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    QRBand2: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrfec_corte: Tfrmrfec_corte;

implementation

uses dmcomisiones, ucfechacorte;

{$R *.dfm}

end.
