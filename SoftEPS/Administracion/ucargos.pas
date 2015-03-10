unit ucargos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, DB, DBTables,
  Buttons, Mask;

type
  Tfrmcargos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    Label47: TLabel;
    Label48: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Button3: TButton;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    Panel6: TPanel;
    Panel7: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    dtsoficinas: TDataSource;
    dtscargos: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
    function  alinear_cero(numero:string;log:integer):string;
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcargos: Tfrmcargos;

implementation

uses dtmodulo, uheredar, ucompania, Uoficinas;

{$R *.dfm}

procedure Tfrmcargos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
end;

procedure Tfrmcargos.BitBtn1Click(Sender: TObject);
begin
DataModule1.qrycargos.EDIT;
DataModule1.qrycargosNOM_CARGO.Value := UpperCase(DataModule1.qrycargosNOM_CARGO.Value);
DBNavigator1.BtnClick(nbPost);
DataModule1.qrycargos.Close;
DataModule1.qrycargos.Prepare;
DataModule1.qrycargos.SQL.Clear;
DataModule1.qrycargos.SQL.Add('SELECT * FROM CARGOS WHERE COD_REGIONAL = :"REGIONAL" AND COD_OFICINA = :"OFICINA"');
DataModule1.qrycargos.Params[0].AsString := DBLookupComboBox1.KeyValue;
DataModule1.qrycargos.Params[1].AsString := DBLookupComboBox2.KeyValue;
DataModule1.qrycargos.RequestLive := TRUE;
DataModule1.qrycargos.Open;
if MessageDlg('Desea Ingresar Otros Cargos En esa Oficina?',
 mtConfirmation, [mbYes, mbNo], 0) = mryes then
 begin
 DataModule1.qrycargos.Insert;
 DataModule1.qrycargosCOD_REGIONAL.Value := DBLookupComboBox1.KeyValue;
 DataModule1.qrycargosCOD_OFICINA.Value := DBLookupComboBox2.KeyValue;
  DataModule1.Query1.Close;
      DataModule1.Query1.Prepare;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add('SELECT * FROM CARGOS ');
      DataModule1.Query1.Open;
      DataModule1.qrycargosCOD_CARGO.Value := alinear_cero(inttostr(DataModule1.Query1.RecordCount+1),5);
 end;


end;

procedure Tfrmcargos.FormCreate(Sender: TObject);
begin
Application.OnMessage := AppMessage;
DBLookupComboBox2.Enabled := faLse;
DataModule1.qryregionales.Open;

end;

procedure Tfrmcargos.Button3Click(Sender: TObject);
begin
frmcargos.Close;
end;

procedure Tfrmcargos.AppMessage(var Msg: TMsg; var Handled: Boolean);
begin
 if Msg.wParam = VK_RETURN then
       begin

        if ((Screen.ActiveControl) is TDBEdit) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TRadioGroup) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TRadioButton) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TEdit) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TDBLookupComboBox) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TDBComboBox) then
             Msg.wParam := VK_TAB;
        end;


end;

function Tfrmcargos.alinear_cero(numero: string; log: integer): string;
var longitud,i : Integer;
begin
longitud := Length(numero);
 for i:= longitud to log -1 do
  BEGIN
  numero := '0'+ numero;
  end;
  alinear_cero := numero;
end;

procedure Tfrmcargos.DBLookupComboBox1Click(Sender: TObject);
begin
      DataModule1.qryoficinas.Close;
      DataModule1.qryoficinas.Prepare;
      DataModule1.qryoficinas.SQL.Clear;
      DataModule1.qryoficinas.SQL.Add('SELECT * FROM OFICINAS WHERE COD_REGIONAL = :"REGIONAL"');
      DataModule1.qryoficinas.Params[0].AsString := DBLookupComboBox1.KeyValue;
      DataModule1.qryoficinas.RequestLive := TRUE;
      DataModule1.qryoficinas.Open;
      if DataModule1.qryoficinas.RecordCount > 0 then
      begin
      DBLookupComboBox2.Enabled := true;
      end;

end;

procedure Tfrmcargos.DBLookupComboBox1Enter(Sender: TObject);
begin
DBLookupComboBox2.Enabled := false;
end;

procedure Tfrmcargos.DBLookupComboBox2Click(Sender: TObject);
begin
IF  DBLookupComboBox1.KeyValue <> '' THEN
BEGIN
      DataModule1.qrycargos.Close;
      DataModule1.qrycargos.Prepare;
      DataModule1.qrycargos.SQL.Clear;
      DataModule1.qrycargos.SQL.Add('SELECT * FROM CARGOS WHERE COD_REGIONAL = :"REGIONAL" AND COD_OFICINA = :"OFICINA"');
      DataModule1.qrycargos.Params[0].AsString := DBLookupComboBox1.KeyValue;
      DataModule1.qrycargos.Params[1].AsString := DBLookupComboBox2.KeyValue;
      DataModule1.qrycargos.RequestLive := TRUE;
      DataModule1.qrycargos.Open;
          if DataModule1.qrycargos.RecordCount <> 0 then
          begin
          DataModule1.qrycargos.Edit;
          end
          else
              if DataModule1.qrycargos.RecordCount = 0 then
              begin
               DataModule1.qrycargos.Insert;
               DataModule1.qrycargosCOD_REGIONAL.Value := DBLookupComboBox1.KeyValue;
               DataModule1.qrycargosCOD_OFICINA.Value := DBLookupComboBox2.KeyValue;
               DataModule1.Query1.Close;
               DataModule1.Query1.Prepare;
              DataModule1.Query1.SQL.Clear;
              DataModule1.Query1.SQL.Add('SELECT * FROM CARGOS ');
              DataModule1.Query1.Open;
              DataModule1.qrycargosCOD_CARGO.Value := alinear_cero(inttostr(DataModule1.Query1.RecordCount+1),5);

              end;



 END;
end;

procedure Tfrmcargos.Button1Click(Sender: TObject);
begin
if MessageDlg('Desea Ingresar Otros Cargos En esa Oficina?',
 mtConfirmation, [mbYes, mbNo], 0) = mryes then
 begin
 DataModule1.qrycargos.Insert
 end
end;

end.
