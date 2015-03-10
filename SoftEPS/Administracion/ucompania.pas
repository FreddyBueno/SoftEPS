unit ucompania;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, DB, DBTables,
  Buttons, Mask;

type
  Tfrmcompania = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    Label47: TLabel;
    Label48: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Button3: TButton;
    DBNavigator1: TDBNavigator;
    dtscompania: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcompania: Tfrmcompania;

implementation

uses dtmodulo, uheredar;

{$R *.dfm}

procedure Tfrmcompania.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
end;

procedure Tfrmcompania.FormCreate(Sender: TObject);
begin
Application.OnMessage := AppMessage;
DataModule1.qrycompania.RequestLive := true;
DataModule1.qrycompania.Active := TRUE;
 if DataModule1.qrycompania.RecordCount = 1 then
  begin
  DBNavigator1.VisibleButtons := [nbEdit,nbPost,nbCancel,nbRefresh];

  end
  else
  DBNavigator1.VisibleButtons:=[nbInsert,nbEdit,nbPost,nbCancel,nbRefresh];
  end;

procedure Tfrmcompania.Button3Click(Sender: TObject);
begin
frmcompania.Close;
end;

procedure Tfrmcompania.AppMessage(var Msg: TMsg; var Handled: Boolean);
begin
 if Msg.wParam = VK_RETURN then
       begin

        if ((Screen.ActiveControl) is TDBEdit) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TRadioGroup) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TRadioButton) then
             Msg.wParam := VK_TAB;
        end;


end;

end.
