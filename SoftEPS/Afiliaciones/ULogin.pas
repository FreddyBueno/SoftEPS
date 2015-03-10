unit ULogin;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls,Dialogs, DB, DBTables;

type
  Tfrmlogin = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edusuario: TEdit;
    edclave: TEdit;
    qryversiones: TQuery;
    qryversionesver_afiliaciones: TStringField;
    qryusuarios: TQuery;
    Button1: TBitBtn;
    Button2: TBitBtn;
    qryusuariostip_documento: TStringField;
    qryusuariosnum_documento: TStringField;
    qryusuariosnom_usuario: TStringField;
    qryusuarioscod_oficina: TStringField;
    qryusuarioscod_regional: TStringField;
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlogin: Tfrmlogin;

implementation

uses Udmafiliaciones, Uafiliaciones;

{$R *.dfm}

procedure Tfrmlogin.OKBtnClick(Sender: TObject);
begin

        try
        dmafiliaciones.softeps.Params.Values['USER NAME'] := trim(edusuario.text);
        dmafiliaciones.softeps.Params.Values['PASSWORD'] := trim(edclave.text);

        qryusuarios.close;
        qryusuarios.Params[0].AsString := trim(edusuario.text);
        qryusuarios.Params[1].AsString := trim(edclave.text);
        qryusuarios.ExecSql;
        qryusuarios.open;
        if qryusuarios.eof = false then
                dmafiliaciones.softeps.Connected := true
        else
                begin
                    edusuario.text:='';
                    edclave.Text:='';
                    dmafiliaciones.softeps.Connected := false;
                    ShowMessage('No es posible conectar la Base de Datos, El usuario no esta registrado en la Base de Datos')
                end;

        IF dmafiliaciones.softeps.Connected = true then
         begin
//              frmafiliaciones:=Tfrmafiliaciones.create(Application);
              try


                      gb_tip_doc_usu:=qryusuariostip_documento.text;
                      gb_num_doc_usu:=qryusuariosnum_documento.Text;
                      gb_nom_usu:=qryusuariosnom_usuario.Text;
                      gb_oficina:=qryusuarioscod_oficina.Text;
                      gb_regional:=qryusuarioscod_regional.Text;
                      dmafiliaciones.qrycompania.close;
                      dmafiliaciones.qrycompania.ExecSql;
                      dmafiliaciones.qrycompania.open;
                      gb_fec_eps := dmafiliaciones.qrycompaniaFEC_INCLUSION.Value;


                      frmlogin.free;
                      frmafiliaciones.showmodal;



              except
                      frmafiliaciones.free;
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
        action:=cafree;
end;

procedure Tfrmlogin.Button2Click(Sender: TObject);
begin
        application.Terminate;
end;

procedure Tfrmlogin.Button1Click(Sender: TObject);
var
version:string;

begin
dmafiliaciones.softeps.Connected := false;
        try
//        dmafiliaciones.softeps.Params.Values['USER NAME'] := trim(edusuario.text);
//        dmafiliaciones.softeps.Params.Values['PASSWORD'] := trim(edclave.text);

        qryusuarios.close;
        qryusuarios.Params[0].AsString := trim(edusuario.text);
//        qryusuarios.Params[1].AsString := trim(edclave.text);
        qryusuarios.ExecSql;
        qryusuarios.open;
        if qryusuarios.eof = false then
                 dmafiliaciones.softeps.Connected := true

        else
                begin
                    edusuario.text:='';
                    edclave.Text:='';
                    dmafiliaciones.softeps.Connected := false;
                    ShowMessage('No es posible conectar la Base de Datos, El usuario no esta registrado en la Base de Datos')
                end;

        IF dmafiliaciones.softeps.Connected = true then
         begin
//              frmafiliaciones:=Tfrmafiliaciones.create(Application);
              try
//                 qryversiones.Open;
  //               version:='1.00';
    //             if qryversionesver_afiliaciones.Text <> version then
      //           begin
        //            close;
          //          showmessage('Esta versión esta desactualizada, Por favor actualizar la versión de UNIFENIX    COORDINACION NACIONAL DE SISTEMAS Y OPERACIONES  ');
            //        abort;
              //   end;
                      gb_tip_doc_usu:=qryusuariostip_documento.text;
                      gb_num_doc_usu:=qryusuariosnum_documento.Text;
                      gb_nom_usu:=qryusuariosnom_usuario.Text;
                      gb_oficina:=qryusuarioscod_oficina.Text;
                      gb_regional:=qryusuarioscod_regional.Text;
                      dmafiliaciones.qrycompania.close;
                      dmafiliaciones.qrycompania.ExecSql;
                      dmafiliaciones.qrycompania.open;
                      gb_fec_eps := dmafiliaciones.qrycompaniaFEC_INCLUSION.Value;
                      frmlogin.close;
                      frmafiliaciones.showmodal;
              except
                      frmafiliaciones.free;
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

procedure Tfrmlogin.FormCreate(Sender: TObject);

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
     Application.OnMessage := AppMessage;
     edusuario.Text := GetUserName;
end;

procedure Tfrmlogin.AppMessage(var Msg: TMsg; var Handled: Boolean);
begin
      if Msg.wParam = VK_RETURN then
       begin
        if ((Screen.ActiveControl) is TComboBox) then
             Msg.wParam := VK_TAB;
        if (((Screen.ActiveControl) is TEdit)) then
             Msg.wParam := VK_TAB;
       end;
end;

end.

