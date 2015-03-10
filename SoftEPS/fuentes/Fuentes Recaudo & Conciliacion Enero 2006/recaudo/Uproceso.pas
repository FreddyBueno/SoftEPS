unit Uproceso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrmproceso = class(TForm)
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproceso: Tfrmproceso;

implementation

{$R *.dfm}

procedure Tfrmproceso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
end;

procedure Tfrmproceso.FormActivate(Sender: TObject);
begin
WindowState := wsNormal;
top := 0;
Left := 372;
end;

end.
