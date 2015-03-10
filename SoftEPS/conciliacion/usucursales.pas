unit usucursales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, ExtCtrls;

type
  Tfrmsucursales = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    dbcbanco: TDBLookupComboBox;
    dbsucursales: TDBGrid;
    btnnuevo: TBitBtn;
    btncancelar: TBitBtn;
    btncerrar: TBitBtn;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtcodsucursal: TEdit;
    edtnomsucursal: TEdit;
    Label3: TLabel;
    Image1: TImage;
    Label47: TLabel;
    Label48: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btncerrarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnnuevoClick(Sender: TObject);
    PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);
    procedure dbcbancoExit(Sender: TObject);
    procedure dbsucursalesColEnter(Sender: TObject);
    procedure edtcodsucursalExit(Sender: TObject);
    procedure edtcodsucursalKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsucursales: Tfrmsucursales;

implementation

uses dtmodulo, Uprincipal;

{$R *.dfm}

procedure Tfrmsucursales.FormActivate(Sender: TObject);
begin
        DataModule1.qrybancos.Open;
        edtcodsucursal.Text := '';
        edtnomsucursal.Text := '';
        edtcodsucursal.enabled := false;
        edtnomsucursal.enabled := false;
        dbcbanco.SetFocus;


end;

procedure Tfrmsucursales.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure Tfrmsucursales.btncerrarClick(Sender: TObject);
begin
close;
end;

procedure Tfrmsucursales.btncancelarClick(Sender: TObject);
begin
        dbcbanco.Enabled := true;
        edtcodsucursal.Text := '';
        edtnomsucursal.Text := '';
        edtcodsucursal.enabled := false;
        edtnomsucursal.enabled := false;
        dbcbanco.KeyValue := '';
        DataModule1.qrysucursales.close;
        DataModule1.qrybancos.close;
        DataModule1.qrybancos.Open;
        btnnuevo.Caption := '&Nuevo';
        dbcbanco.SetFocus;

end;

procedure Tfrmsucursales.btnnuevoClick(Sender: TObject);
begin
    if btnnuevo.Caption = '&Nuevo' then
    begin
       if dbcbanco.Text <> '' then
       begin
        dbcbanco.Enabled := false;
        edtcodsucursal.Text := '';
        edtnomsucursal.Text := '';
        edtcodsucursal.enabled := True;
        edtnomsucursal.enabled := true;
        edtcodsucursal.setfocus;
        btnnuevo.Caption := '&Grabar'
        end
        else
        begin
        ShowMessage('Seleccione el banco  para  continuar');
        dbcbanco.Enabled := true;
        dbcbanco.SetFocus;
        end;
       end
    else
    if btnnuevo.Caption = '&Grabar' then
       begin
          if TRIM(edtcodsucursal.Text) = '' then
          begin
          ShowMessage('Digite  el  codigo de la  sucursal');
          edtcodsucursal.SetFocus;
          Exit
          end;

          if TRIM(edtnomsucursal.Text) = '' then
          begin
          ShowMessage('Digite  el  Nombre de la  sucursal');
          edtnomsucursal.SetFocus;
          Exit
          end;

       DataModule1.qrysucursales.Close;
       DataModule1.qrysucursales.sql.clear;
       DataModule1.qrysucursales.sql.Add ('INSERT  INTO SUCURSALES_BANCOS (CODBANCO,CODSUCURSAL,NOMSUCURSAL) VALUES (:"BANCO",:"CODSUCURSAL",:"NOMSUCURSAL")');
       DataModule1.qrysucursales.Params[0].AsString := dbcbanco.KeyValue;
       DataModule1.qrysucursales.Params[1].AsString := edtcodsucursal.Text;
       DataModule1.qrysucursales.Params[2].AsString := edtnomsucursal.Text;
       DataModule1.qrysucursales.RequestLive := True;
       DataModule1.qrysucursales.ExecSQL;
      // REFRESCA  LA  BDGRIG
       DataModule1.qrysucursales.Close;
       DataModule1.qrysucursales.sql.clear;
       DataModule1.qrysucursales.sql.Add ('SELECT * FROM SUCURSALES_BANCOS WHERE CODBANCO = :"BANCO"');
       DataModule1.qrysucursales.Params[0].AsString := dbcbanco.KeyValue;
       DataModule1.qrysucursales.Open;
       btnnuevo.Caption := '&Nuevo';
       btnnuevo.Click
       END
       else
       if btnnuevo.Caption = '&Actualizar' then
       begin
            if TRIM(edtnomsucursal.Text) = '' then
            begin
            ShowMessage('Digite  el  Nombre de la  sucursal');
            edtnomsucursal.SetFocus;
            Exit
            end;

             DataModule1.qrysucursales.Close;
             DataModule1.qrysucursales.sql.clear;
             DataModule1.qrysucursales.sql.Add ('UPDATE SUCURSALES_BANCOS SET NOMSUCURSAL = :"NOMSUCURSAL" WHERE  CODBANCO = :"BANCO" AND CODSUCURSAL = :"CODSUCURSAL"');
             DataModule1.qrysucursales.Params[1].AsString := dbcbanco.KeyValue;
             DataModule1.qrysucursales.Params[2].AsString := edtcodsucursal.Text;
             DataModule1.qrysucursales.Params[0].AsString := edtnomsucursal.Text;
             DataModule1.qrysucursales.RequestLive := True;
             DataModule1.qrysucursales.ExecSQL;
            // REFRESCA  LA  BDGRIG
             DataModule1.qrysucursales.Close;
             DataModule1.qrysucursales.sql.clear;
             DataModule1.qrysucursales.sql.Add ('SELECT * FROM SUCURSALES_BANCOS WHERE CODBANCO = :"BANCO"');
             DataModule1.qrysucursales.Params[0].AsString := dbcbanco.KeyValue;
             DataModule1.qrysucursales.Open;
             btnnuevo.Caption := '&Nuevo';
             btnnuevo.Click

        end;


end;

procedure Tfrmsucursales.dbcbancoExit(Sender: TObject);
begin
    if dbcbanco.text <> '' then
    begin
       DataModule1.qrysucursales.Close;
       DataModule1.qrysucursales.sql.clear;
       DataModule1.qrysucursales.sql.Add ('SELECT * FROM SUCURSALES_BANCOS WHERE CODBANCO = :"BANCO"');
       DataModule1.qrysucursales.Params[0].AsString := dbcbanco.KeyValue;
       DataModule1.qrysucursales.Open;
    end
       else
       begin
       ShowMessage('Seleccione el banco  para  continuar');
       dbcbanco.Enabled := true;
      
       end

end;

procedure Tfrmsucursales.dbsucursalesColEnter(Sender: TObject);
begin
    edtcodsucursal.enabled := false;
    edtnomsucursal.enabled := true;
    edtcodsucursal.Text := DataModule1.qrysucursalesCODSUCURSAL.Value;
    edtnomsucursal.Text := DataModule1.qrysucursalesNOMSUCURSAL.Value;
    btnnuevo.Caption := '&Actualizar'
end;

procedure Tfrmsucursales.edtcodsucursalExit(Sender: TObject);
begin
       if edtcodsucursal.Text <> '' then
       begin
             edtcodsucursal.Text :=frmprincipal.espacios(3,edtcodsucursal.Text);
             DataModule1.qrysucursales.Close;
             DataModule1.qrysucursales.sql.clear;
             DataModule1.qrysucursales.sql.Add ('SELECT * FROM SUCURSALES_BANCOS WHERE CODBANCO = :"BANCO" AND CODSUCURSAL = :"CODIGO"');
             DataModule1.qrysucursales.Params[0].AsString := dbcbanco.KeyValue;
             DataModule1.qrysucursales.Params[1].AsString := TRIM(edtcodsucursal.Text);
             DataModule1.qrysucursales.Open;
             IF DataModule1.qrysucursales.RecordCount = 1 THEN
             BEGIN
             edtcodsucursal.enabled := false;
             edtnomsucursal.enabled := true;
             edtcodsucursal.Text := DataModule1.qrysucursalesCODSUCURSAL.Value;
             edtnomsucursal.Text := DataModule1.qrysucursalesNOMSUCURSAL.Value;
             btnnuevo.Caption := '&Actualizar';
             end;
             DataModule1.qrysucursales.Close;
             DataModule1.qrysucursales.sql.clear;
             DataModule1.qrysucursales.sql.Add ('SELECT * FROM SUCURSALES_BANCOS WHERE CODBANCO = :"BANCO"');
             DataModule1.qrysucursales.Params[0].AsString := dbcbanco.KeyValue;
             DataModule1.qrysucursales.Open;
       end;

end;

procedure Tfrmsucursales.APPMESSAGE(var MSG: TMSG; var HANDLED: BOOLEAN);
begin
IF MSG.WPARAM = VK_RETURN THEN
       BEGIN
        IF ((SCREEN.ACTIVECONTROL) IS TCOMBOBOX) THEN
        MSG.WPARAM := VK_TAB;
        IF (((SCREEN.ACTIVECONTROL) IS TEDIT)) THEN
        MSG.WPARAM := VK_TAB;
        IF (((SCREEN.ACTIVECONTROL) IS TDBGrid)) THEN
        MSG.WPARAM := VK_TAB;
        IF (((SCREEN.ACTIVECONTROL) IS TDBLookupComboBox)) THEN
        MSG.WPARAM := VK_TAB;
       END;

end;

procedure Tfrmsucursales.edtcodsucursalKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (Key in ['0'..'9',#8])then
 begin
 Key := #0;
 ShowMessage('Digite solo numeros');
 end;

end;

procedure Tfrmsucursales.FormCreate(Sender: TObject);
begin
APPLICATION.ONMESSAGE := APPMESSAGE;
end;

end.
