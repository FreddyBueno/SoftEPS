unit uentrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  Tfrmentrada = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtusuario: TEdit;
    Label2: TLabel;
    edtclave: TEdit;
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

uses dmcomisiones, ucomisiones;

{$R *.dfm}

procedure Tfrmentrada.Button1Click(Sender: TObject);
begin
  Application.CreateForm(Tdmcomision, dmcomision);
  try
    dmcomision.Database1.Connected := false;
    dmcomision.Database1.Params.Values['USER NAME'] := trim(edtusuario.text);
    dmcomision.Database1.Params.Values['PASSWORD'] := trim(edtclave.Text);
    dmcomision.Database1.Connected:=true;
    if dmcomision.Database1.Connected = true then
    begin
      try
        frmentrada.free;
        Application.CreateForm(Tuprincipal, uprincipal);
        Application.Run;
        dmcomision.Database1.Connected := false;
        Application.Terminate;
      except
        frmentrada.Free;
      end;
    end
  except
    dmcomision.Free;
    ShowMessage('No es posible conectar la Base de Datos, por favor verifique el usuario y la clave y vuelva a intentarlo');
  end;
end;

procedure Tfrmentrada.Button2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tfrmentrada.FormCreate(Sender: TObject);
FUNCTION GETUSERNAME : STRING;
 VAR
    PCUSER   : PCHAR;
    DWUSIZE : DWORD;

 BEGIN

    DWUSIZE := 21;
    GETMEM( PCUSER, DWUSIZE );
    TRY
       IF WINDOWS.GETUSERNAME( PCUSER, DWUSIZE ) THEN
          RESULT := PCUSER
    FINALLY
       FREEMEM( PCUSER );
    END;
 END;
BEGIN
edtusuario.TEXT := GETUSERNAME;




end;

procedure Tfrmentrada.FormActivate(Sender: TObject);
begin
edtusuario.SetFocus;
end;

end.
