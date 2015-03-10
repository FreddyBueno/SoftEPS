unit LoginFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, DB, DBTables;

type
  Tfrminicio = class(TForm)
    Label1: TLabel;
    edtusuario: TEdit;
    edtpassword: TEdit;
    Label2: TLabel;
    Image1: TImage;
    Aceptar: TButton;
    Cancelar: TButton;
    Label3: TLabel;
    procedure CancelarClick(Sender: TObject);
    procedure AceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frminicio: Tfrminicio;

implementation

uses dmcompensacion;



{$R *.dfm}


procedure Tfrminicio.CancelarClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure Tfrminicio.AceptarClick(Sender: TObject);
begin
  if  (edtusuario.text <> '') and  (edtpassword.text <> '') then
  begin
    try
      Application.Initialize;
      dmcompensa.Database1.Connected := false;
      dmcompensa.Database1.Params.Values['USER NAME'] := trim(edtusuario.text);
      dmcompensa.Database1.Params.Values['PASSWORD'] := trim(edtpassword.text);
      dmcompensa.Database1.Connected:=true;
      IF dmcompensa.Database1.Connected=true then
      begin
        dmcompensa.qryusuarios.close;
        dmcompensa.qryusuarios.Params[0].AsString := trim(edtusuario.text);
        dmcompensa.qryusuarios.Params[1].AsString := trim(edtpassword.text);
        dmcompensa.qryusuarios.ExecSql;
        dmcompensa.qryusuarios.open;
        if dmcompensa.qryusuarios.eof = false then
           dmcompensa.Database1.Connected:=true
        else
        begin
          edtusuario.text:='';
          edtpassword.Text:='';
          dmcompensa.Database1.Connected:=false;
          ShowMessage('No es posible conectar la Base de Datos, El usuario no esta registrado en la Base de Datos')
        end;
        IF dmcompensa.Database1.Connected=true then
        begin
          try
            frminicio.free;

            //          frmafiliaciones.showmodal;
          except
  //        frmafiliaciones.free;
          end;
        end
        else
        begin
          edtusuario.text:='';
          edtpassword.Text:='';
        end;
      end;
    except
    ShowMessage('No es posible conectar la Base de Datos, por favor verifique el usuario y la clave y vuelva a intentarlo');
    end;
  end;
end;


end.
