unit Ulistaupc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, DB, DBTables, StdCtrls, Mask;

type
  Tfrmlistadoupc = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    qryvalores: TQuery;
    DataSource1: TDataSource;
    qryvaloresval_estructura_cost: TFloatField;
    qryvaloresini_grupo_eta: TFloatField;
    qryvaloresfin_grupo_eta: TFloatField;
    qryvaloressexo_grupo_eta: TStringField;
    qryvaloresValor_normal: TFloatField;
    qryvaloresPromocion: TFloatField;
    qryvaloressolidaridad: TFloatField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlistadoupc: Tfrmlistadoupc;

implementation

uses Uplanillas, ComCtrls, dtmodulo;

{$R *.dfm}

procedure Tfrmlistadoupc.FormCreate(Sender: TObject);
begin
    DataModule1.qryupc.close;
    DataModule1.qryupc.Prepare;
    DataModule1.qryupc.sql.clear;
    DataModule1.qryupc.sql.add('select tip_documento_ben,num_documento_ben,cod_sexo,tip_documento_cot,num_documento_cot,fec_nacimiento,datediff(yy,fec_nacimiento,getdate()) as edad');
    DataModule1.qryupc.sql.add('from afiliados,relacion_afiliados');
    DataModule1.qryupc.sql.add('where cod_tipo_afil="A" and tip_documento_ben =  tip_documento and num_documento_ben = num_documento and tip_documento_cot =  :"tipo" and num_documento_cot = :"numero"');
    DataModule1.qryupc.Params[0].AsString := frmplanillas.cbtipodocafiliado.text;
    DataModule1.qryupc.Params[1].AsString := frmplanillas.edtnumeroducafiliado.text;
    DataModule1.qryautoliquidacion.open;

end;

end.
