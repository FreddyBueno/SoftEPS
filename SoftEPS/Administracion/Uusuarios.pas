unit Uusuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, DB, DBTables,
  Buttons, Mask;

type
  Tfrmusuarios = class(TForm)
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
    Label8: TLabel;
    BitBtn1: TBitBtn;
    dtsusuarios: TDataSource;
    dtscargos: TDataSource;
    dtsoficinas: TDataSource;
    Panel7: TPanel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Panel6: TPanel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    DBEdit1: TDBEdit;
    DBEdit6: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Query1: TQuery;
    DBComboBox1: TDBComboBox;
    Query1TIP_DOCUMENTO: TStringField;
    Query1NUM_DOCUMENTO: TStringField;
    Query1COD_ESTADO: TStringField;
    Query1COD_USUARIO: TStringField;
    Query1NOM_USUARIO: TStringField;
    Query1PWD_USUARIO: TStringField;
    Query1FEC_EXPIRACION: TDateTimeField;
    Query1NIV_USUARIO: TFloatField;
    Query1USU_LOGUEADO: TFloatField;
    Query1ULT_FEC_LOG: TDateTimeField;
    Query1COD_OFICINA: TStringField;
    Query1COD_REGIONAL: TStringField;
    Query1COD_CARGO: TStringField;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
    function  alinear_cero(numero:string;log:integer):string;
    procedure Edit1Exit(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure DBLookupComboBox4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmusuarios: Tfrmusuarios;

implementation

uses dtmodulo, uheredar, ucompania, Uoficinas, UGLOBAL, uusuarioslogin;

{$R *.dfm}

procedure Tfrmusuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
end;

procedure Tfrmusuarios.BitBtn1Click(Sender: TObject);
begin
 DataModule1.qryusuarios.Edit;
 DBNavigator1.BtnClick(nbPost);
 DBLookupComboBox1.Enabled := false;
 DBEdit1.Enabled := false;
 DBEdit6.Enabled := false;
 DBEdit4.Enabled := false;
 frmusuarios.Close;
end;

procedure Tfrmusuarios.FormCreate(Sender: TObject);
begin
Application.OnMessage := AppMessage;
DataModule1.qryregionales.Open;
DataModule1.qryestados.Open;
DataModule1.qrytiposdocuementos.Open;
DataModule1.qryusuarios.Close;

end;

procedure Tfrmusuarios.Button3Click(Sender: TObject);
begin
frmusuarios.Close;
end;

procedure Tfrmusuarios.AppMessage(var Msg: TMsg; var Handled: Boolean);
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

function Tfrmusuarios.alinear_cero(numero: string; log: integer): string;
var longitud,i : Integer;
begin
longitud := Length(numero);
 for i:= longitud to log -1 do
  BEGIN
  numero := '0'+ numero;
  end;
  alinear_cero := numero;
end;

procedure Tfrmusuarios.Edit1Exit(Sender: TObject);
begin
 if (DBLookupComboBox1.KeyValue <> '') or (DBEdit1.Text <>'') then
 begin
   if DBLookupComboBox1.KeyValue <> '' then
   begin
   ShowMessage('Selecione le  tipo de docuemento del usuarios');
   DBLookupComboBox1.SetFocus;
   end
   else
   begin
   ShowMessage('Selecione le  tipo de docuemento del usuarios');
   DBEdit1.SetFocus;
   end;
  end
  else



end;

procedure Tfrmusuarios.DBLookupComboBox2Click(Sender: TObject);
begin
dtsoficinas.DataSet := DataModule1.Query1;
DataModule1.Query1.Close;
DataModule1.Query1.SQL.Clear;
DataModule1.Query1.SQL.Add('Select * from oficinas where  cod_regional = :"regional');
DataModule1.Query1.Params[0].AsString := DBLookupComboBox2.KeyValue;
dataModule1.Query1.Open;
  if dataModule1.Query1.RecordCount > 0 then
  begin
  DBLookupComboBox3.Enabled := true;
  end
  else
  DBLookupComboBox3.Enabled := false;
end;

procedure Tfrmusuarios.DBLookupComboBox3Click(Sender: TObject);
begin
      DataModule1.qrycargos.Close;
      DataModule1.qrycargos.Prepare;
      DataModule1.qrycargos.SQL.Clear;
      DataModule1.qrycargos.SQL.Add('SELECT * FROM CARGOS WHERE COD_REGIONAL = :"REGIONAL" AND COD_OFICINA = :"OFICINA"');
      DataModule1.qrycargos.Params[0].AsString := DBLookupComboBox2.KeyValue;
      DataModule1.qrycargos.Params[1].AsString := DBLookupComboBox3.KeyValue;
      DataModule1.qrycargos.Open;
          if DataModule1.qrycargos.RecordCount > 0 then
          begin
          DBLookupComboBox4.Enabled := true;
          end
          else
          DBLookupComboBox4.Enabled := false;

end;

procedure Tfrmusuarios.DBLookupComboBox4Click(Sender: TObject);
begin
      DataModule1.qryusuarios.Close;
      DataModule1.qryusuarios.Prepare;
      DataModule1.qryusuarios.SQL.Clear;
      DataModule1.qryusuarios.SQL.Add('SELECT * FROM USUARIOS WHERE COD_REGIONAL = :"REGIONAL" AND COD_OFICINA = :"OFICINA" AND COD_CARGO = :"CARGO"');
      DataModule1.qryusuarios.Params[0].AsString := DBLookupComboBox2.KeyValue;
      DataModule1.qryusuarios.Params[1].AsString := DBLookupComboBox3.KeyValue;
      DataModule1.qryusuarios.Params[2].AsString := DBLookupComboBox4.KeyValue;
      DataModule1.qryusuarios.Open;
            IF DataModule1.qryusuarios.RecordCount = 0 then
            begin
            DataModule1.qryusuarios.Insert;
            DataModule1.qryusuariosCOD_REGIONAL.Value := DBLookupComboBox2.KeyValue;
            DataModule1.qryusuariosCOD_OFICINA.Value := DBLookupComboBox3.KeyValue;
            DataModule1.qryusuariosCOD_CARGO.Value := DBLookupComboBox4.KeyValue;
            end
            else
            begin
            DataModule1.qryusuarios.Edit;
            DBLookupComboBox1.Enabled := false;
            DBEdit1.Enabled := false;
            DBEdit6.Enabled := false;
            DBEdit4.Enabled := false;

            end;



end;

procedure Tfrmusuarios.Button1Click(Sender: TObject);
begin
      DBNavigator1.BtnClick(nbInsert);
      DataModule1.qryusuariosCOD_REGIONAL.Value := DBLookupComboBox2.KeyValue;
      DataModule1.qryusuariosCOD_OFICINA.Value := DBLookupComboBox3.KeyValue;
      DataModule1.qryusuariosCOD_CARGO.Value := DBLookupComboBox4.KeyValue;
      DBLookupComboBox1.Enabled := true;
      DBEdit1.Enabled := true;
      DBEdit6.Enabled := true;
      dBEdit4.Enabled := true;
      DBLookupComboBox1.SetFocus;


end;

procedure Tfrmusuarios.DBEdit6Exit(Sender: TObject);
begin
      DataModule1.qrylogin.Close;
  //    DataModule1.qrylogin.Prepare;
      DataModule1.qrylogin.SQL.Clear;
      DataModule1.qrylogin.SQL.Add('SELECT * FROM SYS.USER$ WHERE NAME = :"USUARIO"');
      DataModule1.qrylogin.Params[0].AsString := DBEdit6.Text;
      DataModule1.qrylogin.Open;
        IF DataModule1.qrylogin.RecordCount = 0 then
        begin
        ShowMessage('El usuario no esta creado en la base de datos');
        DBEdit6.SetFocus;
        end
        else
        begin
           Query1.Close;
           Query1.Prepare;
           Query1.SQL.Clear;
           Query1.SQL.Add('SELECT * FROM USUARIOS WHERE COD_USUARIO = :"USUARIO"');
           Query1.Params[0].AsString := DBEdit6.Text;
           Query1.Open;
             IF Query1.RecordCount = 1 then
             begin
              if Query1COD_ESTADO.Value = 'A' THEN
              begin
              ShowMessage('codigo del usuario ya esta Registrado ' + Query1TIP_DOCUMENTO.Value +' ' + Query1NUM_DOCUMENTO.Value + ' ' +Query1NOM_USUARIO.Value + ' Esta Activo ' );
              DBEdit6.SetFocus;

              end;
             end;

        end;




end;

procedure Tfrmusuarios.DBEdit3Exit(Sender: TObject);
begin
      if strtodate(DBEdit3.Text) < StrToDate(GLDATE) then
      begin
        ShowMessage('La Fecha  de Terminacion de  la Clave no debe Ser Menor A la de Hoy');
        DBEdit3.SetFocus;
      end
      else
      begin
      DBEdit7.Text := gldate;
      DBEdit8.Text := '1';
      end;
end;

procedure Tfrmusuarios.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 IF NOT (KEY IN ['0'..'9',#8])THEN
 BEGIN
 KEY := #0;
 SHOWMESSAGE('DIGITE SOLO NUMEROS');
 END;

end;

procedure Tfrmusuarios.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
 IF  (KEY IN ['0'..'9',#8])THEN
 BEGIN
 KEY := #0;
 SHOWMESSAGE('NO SE ACEPTAN NUMEROS');
 END;

end;

procedure Tfrmusuarios.Button2Click(Sender: TObject);
begin
frmusuarioslogin:=Tfrmusuarioslogin.create(application);
   try
   frmusuarioslogin.DBGrid1.SetFocus;
   frmusuarioslogin.show;
   //finally
   except
      frmusuarioslogin.Free;
   end;

end;

end.


