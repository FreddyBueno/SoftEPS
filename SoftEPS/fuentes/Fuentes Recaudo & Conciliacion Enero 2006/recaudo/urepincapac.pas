unit urepincapac;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, QRExport;

type
  Tfrmreporte1 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRImage1: TQRImage;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmreporte1: Tfrmreporte1;

implementation

uses dmcompensacion;

{$R *.dfm}

end.
