unit ucamposformato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Buttons, DB, ADODB;

type
  Tfrmcampos = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    dtsgrupoespecialidades: TDataSource;
    Label7: TLabel;
    DBNavigator1: TDBNavigator;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcampos: Tfrmcampos;

implementation

uses dtmodulo;


{$R *.dfm}

procedure Tfrmcampos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
end;

procedure Tfrmcampos.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if not ((Key >='0') and (Key<= '9')) or (Key<= #0) then
      begin
       Key := #0;
      end;
 if (Key<= #8) then
      begin
      Key := #8;
      end;
 if (Key<= '.') then
      begin
      Key := '.';
      end;

end;

procedure Tfrmcampos.FormCreate(Sender: TObject);
begin
DataModule1.qrycampos.Open;
IF DataModule1.qrycampos.RecordCount = 0 THEN
begin
 DataModule1.qrycampos.Insert;
 DataModule1.qrycamposCODCAMPO.Value := '1';
 DataModule1.qrycamposNOMCAMPO.Value := 'CODIGO BANCO';
 DataModule1.qrycampos.Post;

 DataModule1.qrycampos.Insert;
 DataModule1.qrycamposCODCAMPO.Value := '2';
 DataModule1.qrycamposNOMCAMPO.Value := 'SUCURSAL';
 DataModule1.qrycampos.Post;

 DataModule1.qrycampos.Insert;
 DataModule1.qrycamposCODCAMPO.Value := '3';
 DataModule1.qrycamposNOMCAMPO.Value := 'REFERENCIA NIT';
 DataModule1.qrycampos.Post;

 DataModule1.qrycampos.Insert;
 DataModule1.qrycamposCODCAMPO.Value := '4';
 DataModule1.qrycamposNOMCAMPO.Value := 'NUMERO PLANILLA';
 DataModule1.qrycampos.Post;

 DataModule1.qrycampos.Insert;
 DataModule1.qrycamposCODCAMPO.Value := '5';
 DataModule1.qrycamposNOMCAMPO.Value := 'FECHA PAGO';
 DataModule1.qrycampos.Post;

 DataModule1.qrycampos.Insert;
 DataModule1.qrycamposCODCAMPO.Value := '6';
 DataModule1.qrycamposNOMCAMPO.Value := 'VALOR CONSIGNACION';
 DataModule1.qrycampos.Post;

 DataModule1.qrycampos.Insert;
 DataModule1.qrycamposCODCAMPO.Value := '7';
 DataModule1.qrycamposNOMCAMPO.Value := 'CODIGO BANCO';
 DataModule1.qrycampos.Post;

 DataModule1.qrycampos.Insert;
 DataModule1.qrycamposCODCAMPO.Value := '8';
 DataModule1.qrycamposNOMCAMPO.Value := 'TIPO MOVIMIENTO';
 DataModule1.qrycampos.Post;

 DataModule1.qrycampos.Insert;
 DataModule1.qrycamposCODCAMPO.Value := '9';
 DataModule1.qrycamposNOMCAMPO.Value := 'PRODUCTO';
 DataModule1.qrycampos.Post;

 DataModule1.qrycampos.Insert;
 DataModule1.qrycamposCODCAMPO.Value := '10';
 DataModule1.qrycamposNOMCAMPO.Value := 'NOMBRE SUCURSAL';
 DataModule1.qrycampos.Post;

 DataModule1.qrycampos.Insert;
 DataModule1.qrycamposCODCAMPO.Value := '11';
 DataModule1.qrycamposNOMCAMPO.Value := 'TRANSACION';
 DataModule1.qrycampos.Post;
 end; 
end;

procedure Tfrmcampos.FormActivate(Sender: TObject);
begin
TOP := 0;
Left := 0;
end;

end.
