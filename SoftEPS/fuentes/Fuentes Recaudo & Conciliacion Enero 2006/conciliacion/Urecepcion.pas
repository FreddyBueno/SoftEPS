unit Urecepcion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DBCtrls, DB, ComCtrls, Buttons;

type
  Tfrmrecepcion = class(TForm)
    Panel1: TPanel;
    Label47: TLabel;
    Label48: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource1: TDataSource;
    GroupBox2: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    Label11: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    edit1: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Label12: TLabel;
    procedure edit1Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrecepcion: Tfrmrecepcion;

implementation

uses dtmodulo;

{$R *.dfm}

procedure Tfrmrecepcion.edit1Exit(Sender: TObject);
begin
 if (edit1.Text <> '') and (trim(DBLookupComboBox2.Text) <> '') then
  begin
     DataModule1.qryestrato.close;
     DataModule1.qryestrato.sql.clear;
     DataModule1.qryestrato.sql.add('SELECT * FROM EST_BANCARIO_AUTO where  NUM_PLANILLA = :"planilla" and COD_BANCO = :"banco"');
     DataModule1.qryestrato.Parameters[0].VALUE := trim(edit1.text);
     DataModule1.qryestrato.Parameters[1].VALUE := trim(DBLookupComboBox2.KeyValue);
     DataModule1.qryestrato.Open;
     if DataModule1.qryestrato.RecordCount = 0 then
     begin
         SHOWMESSAGE('El numero de  planilla  no existe para este  banco');
         DBLookupComboBox2.SetFocus;
         exit;
     end;
  end;
end;

procedure Tfrmrecepcion.FormActivate(Sender: TObject);
begin
WindowState := wsNormal;
top := 0;
Left := 0;
end;

procedure Tfrmrecepcion.FormCreate(Sender: TObject);
begin
DataModule1.qrybancos.Open;
end;

procedure Tfrmrecepcion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

end.
