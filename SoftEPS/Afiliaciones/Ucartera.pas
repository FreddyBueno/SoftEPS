unit Ucartera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBTables, DBCtrls, ExtCtrls;

type
  Tfrmcartera = class(TForm)
    DBGrid3: TDBGrid;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    dscartera_cotizante: TDataSource;
    qrycartera_cotizante: TQuery;
    qrycartera_cotizantetip_documento: TStringField;
    qrycartera_cotizantenum_documento: TStringField;
    qrycartera_cotizantetip_documento_emp: TStringField;
    qrycartera_cotizantenum_documento_emp: TStringField;
    qrycartera_cotizantecod_sucursal_emp: TStringField;
    qrycartera_cotizanteper_compensacion: TStringField;
    qrycartera_cotizantetipo_mora: TStringField;
    qrycartera_cotizantevalor_mora: TFloatField;
    qrycartera_cotizantevalor_upc: TFloatField;
    qrycartera_cotizantecod_tipo_afil: TStringField;
    qrycartera_cotizantenom_empresa: TStringField;
    qrycartera_cotizantetip_documento_cot: TStringField;
    qrycartera_cotizantenum_documento_cot: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcartera: Tfrmcartera;

implementation

uses UCompoder;

{$R *.dfm}

procedure Tfrmcartera.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        action:=cafree;
end;

end.
