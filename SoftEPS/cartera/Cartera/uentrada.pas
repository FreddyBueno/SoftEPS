unit uentrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  Tfrmentrada = class(TForm)
    edtusuario: TEdit;
    edtclave: TEdit;
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmentrada: Tfrmentrada;

implementation

uses ucartera;

{$R *.dfm}

procedure Tfrmentrada.Button1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmcartera, frmcartera);
    frmcartera.Database1.Connected := false;
    frmcartera.Database1.Params.Values['USER NAME'] := trim(edtusuario.text);
    frmcartera.Database1.Params.Values['PASSWORD'] := trim(edtclave.Text);
    frmcartera.Database1.Connected:=true;
    if frmcartera.Database1.Connected = true then
    begin
      try
        frmentrada.close;
//        Application.CreateForm(TFrmcartera, frmcartera);
        Application.Run;
//        close;
      except
        frmentrada.Free;
      end;
    end
  except
    ShowMessage('No es posible conectar la Base de Datos, por favor verifique el usuario y la clave y vuelva a intentarlo');
  end;
end;

procedure Tfrmentrada.Button2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tfrmentrada.FormCreate(Sender: TObject);
function GetUserName : String;
 var
    pcUser   : PChar;
    dwUSize : DWORD;
 begin
    dwUSize := 21;
    GetMem( pcUser, dwUSize );
    try
       if Windows.GetUserName( pcUser, dwUSize ) then
          Result := pcUser
    finally
       FreeMem( pcUser );
    end;
 end;
begin
     edtusuario.Text := GetUserName;
end;

procedure Tfrmentrada.FormActivate(Sender: TObject);
begin
edtclave.SetFocus;
end;

end.
