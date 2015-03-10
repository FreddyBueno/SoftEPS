unit umulguia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, StdCtrls, ExtCtrls, DB;

type
  Tfrmmulguia = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmulguia: Tfrmmulguia;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrmmulguia.Button1Click(Sender: TObject);
begin
  datasource1.DataSet := dmcompensa.qrymulguia;
  dmcompensa.qrymcmulguia.Close;
  dmcompensa.qrymcmulguia.Prepare;
  dmcompensa.qrymcmulguia.Params[0].Value :=edit1.Text;
  dmcompensa.qrymcmulguia.Params[1].Value :=edit2.Text;
  dmcompensa.qrymcmulguia.Parasm[2].Value :=edit3.Text;
  //select * from afiliados_compensados where num_declaracion = '+edit1.Text+' and afi_numero_doc = "'+edit3.Text+'" and afi_tipo_doc = "'+edit2.Text+'"');
  dmcompensa.qrymcmulguia.Open;
  if dmcompensa.qrymcmulguia.RecordCount = 0 then
     showmessage('Afiliados No Existe en Esa Declaracion');
end;

end.
