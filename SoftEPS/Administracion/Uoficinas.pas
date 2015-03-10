unit Uoficinas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, DB, DBTables,
  Buttons, Mask;

type
  Tfrmoficinas = class(TForm)
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
    dtsoficinas: TDataSource;
    dtstipooficina: TDataSource;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    DBComboBox1: TDBComboBox;
    Edit1: TEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
    procedure Edit1Exit(Sender: TObject);
    function  alinear_cero(numero:string;log:integer):string;
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmoficinas: Tfrmoficinas;

implementation

uses dtmodulo, uheredar, ucompania;

{$R *.dfm}

procedure Tfrmoficinas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
end;

procedure Tfrmoficinas.BitBtn1Click(Sender: TObject);
begin
DBNavigator1.BtnClick(nbPost);

DBNavigator1.BtnClick(nbInsert);


end;

procedure Tfrmoficinas.FormCreate(Sender: TObject);
begin
Application.OnMessage := AppMessage;
DataModule1.qryregionales.Open;
end;

procedure Tfrmoficinas.Button3Click(Sender: TObject);
begin
frmoficinas.Close;
end;

procedure Tfrmoficinas.AppMessage(var Msg: TMsg; var Handled: Boolean);
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

procedure Tfrmoficinas.Edit1Exit(Sender: TObject);
begin
IF Edit1.Text = '' THEN
 BEGIN
 ShowMessage('DIGITE  EL NUMERO DE LA OFICINA');
 Edit1.SetFocus;
 END
 ELSE
     Edit1.Text := alinear_cero(Edit1.Text,3);
     IF (Edit1.Text <> '') AND (DBLookupComboBox4.KeyValue <> '') THEN
      BEGIN
       DataModule1.qryoficinas.Close;
       DataModule1.qryoficinas.Prepare;
       DataModule1.qryoficinas.SQL.Clear;
       DataModule1.qryoficinas.SQL.Add('SELECT * FROM OFICINAS WHERE COD_OFICINA = :"OFICINA" AND COD_REGIONAL = :"REGIONAL"');
       DataModule1.qryoficinas.Params[0].AsString := Edit1.Text;
       DataModule1.qryoficinas.Params[1].AsString := DBLookupComboBox4.KeyValue;
       DataModule1.qryoficinas.RequestLive := TRUE;
       DataModule1.qryoficinas.Open;
         IF DataModule1.qryoficinas.RecordCount= 1 THEN
           begin

           DataModule1.qrydepartamentos.Open;
           DataModule1.dtsciudades.DataSet := DataModule1.qryciudades1;
           DataModule1.qryciudades1.Close;
           DataModule1.qryciudades1.Params[0].AsString := DataModule1.qrydepartamentoscod_departamento.Value;
           DataModule1.qryciudades1.Open;
           DBNavigator1.BtnClick(nbEdit);
           DBNavigator1.VisibleButtons := [nbPost];
           end
           ELSE
           BEGIN
           DBNavigator1.BtnClick(nbINSERT);
           DataModule1.qryoficinas.Edit;
           DataModule1.qryoficinasCOD_OFICINA.Value := Edit1.TEXT;
           DataModule1.qryoficinasCOD_REGIONAL.Value := DBLookupComboBox4.KeyValue;
           DBEdit1.TEXT := Edit1.TEXT;
           DBLookupComboBox1.KeyValue := DBLookupComboBox4.KeyValue;
           DataModule1.qrydepartamentos.Open;
           DBNavigator1.VisibleButtons := [nbPost];
           END;
   END
   ELSE
   Edit1.SetFocus;
end;




function Tfrmoficinas.alinear_cero(numero: string; log: integer): string;
var longitud,i : Integer;
begin
longitud := Length(numero);
 for i:= longitud to log -1 do
  BEGIN
  numero := '0'+ numero;
  end;
  alinear_cero := numero;
end;

procedure Tfrmoficinas.DBLookupComboBox2Click(Sender: TObject);
begin
     DataModule1.dtsciudades.DataSet := DataModule1.qryciudades1;
     DataModule1.qryciudades1.Close;
     DataModule1.qryciudades1.Params[0].AsString := DataModule1.qrydepartamentoscod_departamento.Value;
     DataModule1.qryciudades1.Open;
end;

procedure Tfrmoficinas.DBLookupComboBox4Exit(Sender: TObject);
begin
IF DBLookupComboBox4.Text = '' THEN
 BEGIN
 ShowMessage('Selecione la Regional');
 DBLookupComboBox4.SetFocus;
 END;
end;

end.


