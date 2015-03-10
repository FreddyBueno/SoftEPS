unit Uplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls;

type
  Tfrmplas = class(TForm)
    Panel1: TPanel;
    Timer1: TTimer;
    Animate1: TAnimate;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmplas: Tfrmplas;

implementation

uses dtmodulo;

{$R *.dfm}

procedure Tfrmplas.Timer1Timer(Sender: TObject);
begin
close;   // cerrar  la  ventana
end;

procedure Tfrmplas.FormShow(Sender: TObject);
begin
Animate1.Active := true;
end;

end.
