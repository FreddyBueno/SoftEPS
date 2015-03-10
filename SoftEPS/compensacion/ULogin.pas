unit ULogin;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls,Dialogs, DB, DBTables;

type
  Tfrmlogin = class(TForm)
    Label1: TLabel;
    edclave: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    edusuario: TEdit;
    Label2: TLabel;
    Image1: TImage;
    qryusuarios: TQuery;
    qryusuariostip_documento: TStringField;
    qryusuariosnum_documento: TStringField;
    qryusuariosnom_usuario: TStringField;
    qryusuarioscod_oficina: TStringField;
    qryusuarioscod_regional: TStringField;
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlogin: Tfrmlogin;

implementation

uses dmcompensacion, ucompensacion;

{$R *.dfm}

procedure Tfrmlogin.OKBtnClick(Sender: TObject);
begin
  try
     qryusuarios.close;
     qryusuarios.Params[0].AsString := trim(edusuario.text);
     qryusuarios.Params[1].AsString := trim(edclave.text);
     qryusuarios.ExecSql;
     qryusuarios.open;
     if qryusuarios.eof = false then
      begin
       dmcompensa.Database1.Connected := false;
       dmcompensa.Database1.Params.Values['USER NAME'] := trim(edusuario.text);
       dmcompensa.Database1.Params.Values['PASSWORD'] := trim(edclave.Text);
       dmcompensa.Database1.Connected := true;
      end
      else
      begin
        edusuario.text:='';
        edclave.Text:='';
        dmcompensa.Database1.Connected := false;
        ShowMessage('No es posible conectar la Base de Datos, El usuario no esta registrado en la Base de Datos')
      end;
      IF dmcompensa.Database1.Connected = true then
      begin
        try
          frmlogin.Free;
         except
           Modulo_Compensacion.free;
         end;
      end
      else
      begin
        edusuario.text:='';
        edclave.Text:='';
      end;
    except
    ShowMessage('No es posible conectar la Base de Datos, por favor verifique el usuario y la clave y vuelva a intentarlo');
    end;
end;


 procedure Tfrmlogin.CancelBtnClick(Sender: TObject);
begin
        close;
end;

procedure Tfrmlogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  application.terminate;
end;

end.

