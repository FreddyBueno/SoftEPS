unit Uincapaplanillas;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBGrids, DBTables, Grids, ExtCtrls;

type
  Tfrminplanillas = class(TForm)
    DBNavigator: TDBNavigator;
    Panel1: TPanel;
    DataSource1: TDataSource;
    Panel2: TPanel;
    qryincapacidades: TQuery;
    qryincapacidadesnum_incapacidad: TStringField;
    qryincapacidadesfec_inicio: TDateTimeField;
    qryincapacidadesper_pago_incap: TStringField;
    qryincapacidadesdia_pagar_incap: TFloatField;
    qryincapacidadesval_pagar_incap: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure incapacidades;
    procedure licencias;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frminplanillas: Tfrminplanillas;

implementation

uses Uplanillas, Uglobal;

{$R *.DFM}

procedure Tfrminplanillas.FormCreate(Sender: TObject);
begin
if glproceso = 'Incapacidades' then
   begin
    qryincapacidades.DisableControls;
    qryincapacidades.Close;
    qryincapacidades.ParamByName('ptipo').Value := trim(frmplanillas.cbtipodocafiliado.text);
    qryincapacidades.ParamByName('pnumero').Value := trim(frmplanillas.edtnumeroducafiliado.Text);
    qryincapacidades.ParamByName('tpinc').Value := trim('EGA');
    qryincapacidades.ParamByName('tpinc1').Value := trim('EGH');
    qryincapacidades.open;
    qryincapacidades.EnableControls;
    if qryincapacidades.RecordCount = 0 then
       begin
       ShowMessage('No existen  Incapacidades  digitadas  para  este  usuario');
       end;
   end
   else if glproceso = 'licencias' then
   begin
   qryincapacidades.DisableControls;
    qryincapacidades.Close;
    qryincapacidades.ParamByName('ptipo').Value := trim(frmplanillas.cbtipodocafiliado.text);
    qryincapacidades.ParamByName('pnumero').Value := trim(frmplanillas.edtnumeroducafiliado.Text);
    qryincapacidades.ParamByName('tpinc').Value := trim('MAT');
    qryincapacidades.ParamByName('tpinc1').Value := trim('MAT');
    qryincapacidades.open;
    qryincapacidades.EnableControls;
    if qryincapacidades.RecordCount =  0 then
       begin
       ShowMessage('No existen  licencias de maternidad digitadas');
       end;
   end;

end;

procedure Tfrminplanillas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure Tfrminplanillas.DBGrid1DblClick(Sender: TObject);
begin
if glproceso = 'licencias' then
   begin
   Licencias;
   end
   else if glproceso = 'Incapacidades' then
   begin
   incapacidades;
   end;

end;

procedure Tfrminplanillas.incapacidades;
begin
frmplanillas.edtautincapacidad.Text := qryincapacidadesnum_incapacidad.Value;
frmplanillas.edtvalincapacidad.Text := floattostr(qryincapacidadesval_pagar_incap.Value);
frminplanillas.Free;
end;

procedure Tfrminplanillas.licencias;
begin
frmplanillas.edtnoautlicencia.Text := qryincapacidadesnum_incapacidad.Value;
frmplanillas.edtvallicencia.Text := floattostr(qryincapacidadesval_pagar_incap.Value);
frminplanillas.Free;
end;

end.
