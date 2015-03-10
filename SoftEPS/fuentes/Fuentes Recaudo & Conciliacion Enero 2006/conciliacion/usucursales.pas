unit usucursales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, ExtCtrls, DB,
  ADODB;

type
  Tfrmsucursales = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    dbcbanco: TDBLookupComboBox;
    dbsucursales: TDBGrid;
    btnnuevo: TBitBtn;
    btncancelar: TBitBtn;
    btncerrar: TBitBtn;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtcodsucursal: TEdit;
    edtnomsucursal: TEdit;
    Label3: TLabel;
    Label47: TLabel;
    Label4: TLabel;
    cbestsucursal: TComboBox;
    BitBtn1: TBitBtn;
    Opabrir: TOpenDialog;
    edtcodregional: TEdit;
    Label5: TLabel;
    Label48: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btncerrarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnnuevoClick(Sender: TObject);
    PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);
    procedure dbcbancoExit(Sender: TObject);
    procedure dbsucursalesColEnter(Sender: TObject);
    procedure edtcodsucursalExit(Sender: TObject);
    procedure edtcodsucursalKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsucursales: Tfrmsucursales;

implementation

uses dtmodulo, Uprincipal;

{$R *.dfm}

procedure Tfrmsucursales.FormActivate(Sender: TObject);
begin
        DataModule1.qrybancos.Open;
        edtcodsucursal.Text := '';
        edtnomsucursal.Text := '';
        edtcodsucursal.enabled := false;
        edtnomsucursal.enabled := false;
        dbcbanco.SetFocus;
WindowState := wsNormal;
top := 0;
Left := 0;

end;

procedure Tfrmsucursales.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure Tfrmsucursales.btncerrarClick(Sender: TObject);
begin
close;
end;

procedure Tfrmsucursales.btncancelarClick(Sender: TObject);
begin
        dbcbanco.Enabled := true;
        edtcodsucursal.Text := '';
        edtcodregional.Text := '';
        edtnomsucursal.Text := '';
        cbestsucursal.ItemIndex :=-1;
        edtcodsucursal.enabled := false;
        edtcodregional.Enabled := false;
        edtnomsucursal.enabled := false;
        cbestsucursal.Enabled  := false;
        dbcbanco.KeyValue := '';
        DataModule1.qrysucursales.close;
        DataModule1.qrybancos.close;
        DataModule1.qrybancos.Open;
        btnnuevo.Caption := '&Nuevo';
        dbcbanco.SetFocus;

end;

procedure Tfrmsucursales.btnnuevoClick(Sender: TObject);
begin
    if btnnuevo.Caption = '&Nuevo' then
    begin
       if dbcbanco.Text <> '' then
       begin
        dbcbanco.Enabled := false;
        edtcodsucursal.Text := '';
        edtnomsucursal.Text := '';
        edtcodregional.Text := '';
        cbestsucursal.ItemIndex := -1;
        edtcodsucursal.enabled := True;
        edtnomsucursal.enabled := True;
        edtcodregional.Enabled := True;
        cbestsucursal.Enabled :=True;
        edtcodsucursal.setfocus;
        btnnuevo.Caption := '&Grabar'
        end
        else
        begin
        ShowMessage('Seleccione el banco  para  continuar');
        dbcbanco.Enabled := true;
        dbcbanco.SetFocus;
        end;
       end
    else
    if btnnuevo.Caption = '&Grabar' then
       begin
          if TRIM(edtcodsucursal.Text) = '' then
          begin
          ShowMessage('Digite  el  codigo de la  sucursal');
          edtcodsucursal.SetFocus;
          Exit
          end;

          if TRIM(edtnomsucursal.Text) = '' then
          begin
          ShowMessage('Digite  el  Nombre de la  sucursal');
          edtnomsucursal.SetFocus;
          Exit
          end;

          if TRIM(edtcodregional.Text) = '' then
          begin
          ShowMessage('Digite  el  Nombre de la  Regional');
          edtcodregional.SetFocus;
          Exit
          end;

       DataModule1.qrysucursales.Close;
       DataModule1.qrysucursales.sql.clear;
       DataModule1.qrysucursales.sql.Add ('INSERT  INTO SUCURSALES_BANCOS_CONTRV (CODBANCO,CODSUCURSAL,COD_REGIONAL,NOMSUCURSAL,EST_SUCURSAL) VALUES (:"BANCO",:"CODSUCURSAL",:"CODREGIONAL",:"NOMSUCURSAL",:"ESTSUCURSAL")');
       DataModule1.qrysucursales.Parameters[0].VALUE := dbcbanco.KeyValue;
       DataModule1.qrysucursales.Parameters[1].VALUE := edtcodsucursal.Text;
       DataModule1.qrysucursales.Parameters[2].VALUE := edtcodregional.Text;
       DataModule1.qrysucursales.Parameters[3].VALUE := edtnomsucursal.Text;
       IF cbestsucursal.ITEMINDEX = 0 THEN
              BEGIN
                Datamodule1.qrysucursales.Parameters[4].VALUE := 'A';
              END
              ELSE IF cbestsucursal.ITEMINDEX = 1 THEN
                   BEGIN
                     Datamodule1.qrysucursales.Parameters[4].VALUE := 'I';
                   END;
       DataModule1.qrysucursales.ExecSQL;
      // REFRESCA  LA  BDGRIG
       DataModule1.qrysucursales.Close;
       DataModule1.qrysucursales.sql.clear;
       DataModule1.qrysucursales.sql.Add ('SELECT * FROM SUCURSALES_BANCOS_CONTRV WHERE CODBANCO = :"BANCO"');
       DataModule1.qrysucursales.Parameters[0].VALUE := dbcbanco.KeyValue;
       DataModule1.qrysucursales.Open;
       btnnuevo.Caption := '&Nuevo';
       btnnuevo.Click
       END
       else
       if btnnuevo.Caption = '&Actualizar' then
       begin
            if TRIM(edtnomsucursal.Text) = '' then
            begin
            ShowMessage('Digite  el  Nombre de la  sucursal');
            edtnomsucursal.SetFocus;
            Exit
            end;

       if TRIM(edtcodregional.Text) = '' then
          begin
          ShowMessage('Digite  el  Nombre de la  Regional');
          edtcodregional.SetFocus;
          Exit
          end;

             DataModule1.qrysucursales.Close;
             DataModule1.qrysucursales.sql.clear;
             DataModule1.qrysucursales.sql.Add ('UPDATE SUCURSALES_BANCOS_CONTRV SET COD_REGIONAL = :"CODREGIONAL", NOMSUCURSAL = :"NOMSUCURSAL", EST_SUCURSAL = :"ESTSUCURSAL" WHERE  CODBANCO = :"BANCO" AND CODSUCURSAL = :"CODSUCURSAL"');
             DataModule1.qrysucursales.Parameters[3].VALUE := dbcbanco.KeyValue;
             DataModule1.qrysucursales.Parameters[4].VALUE := TRIM(edtcodsucursal.Text);
             DataModule1.qrysucursales.Parameters[0].VALUE := edtcodregional.Text;
             DataModule1.qrysucursales.Parameters[1].VALUE := edtnomsucursal.Text;
             IF cbestsucursal.ITEMINDEX = 0 THEN
             BEGIN
                Datamodule1.qrysucursales.Parameters[2].VALUE := 'A';
             END
             ELSE IF cbestsucursal.ITEMINDEX = 1 THEN
                  BEGIN
                     Datamodule1.qrysucursales.Parameters[2].VALUE := 'I';
                  END;
             DataModule1.qrysucursales.ExecSQL;
            // REFRESCA  LA  BDGRIG
             DataModule1.qrysucursales.Close;
             DataModule1.qrysucursales.sql.clear;
             DataModule1.qrysucursales.sql.Add ('SELECT * FROM SUCURSALES_BANCOS_CONTRV WHERE CODBANCO = :"BANCO"');
             DataModule1.qrysucursales.Parameters[0].VALUE := dbcbanco.KeyValue;
             DataModule1.qrysucursales.Open;
             btnnuevo.Caption := '&Nuevo';
             btnnuevo.Click

        end;


end;

procedure Tfrmsucursales.dbcbancoExit(Sender: TObject);
begin
    if dbcbanco.text <> '' then
    begin
       DataModule1.qrysucursales.Close;
       DataModule1.qrysucursales.sql.clear;
       DataModule1.qrysucursales.sql.Add ('SELECT * FROM SUCURSALES_BANCOS_CONTRV WHERE CODBANCO = :"BANCO"');
       DataModule1.qrysucursales.Parameters[0].VALUE := dbcbanco.KeyValue;
       DataModule1.qrysucursales.Open;
    end
       else
       begin
       ShowMessage('Seleccione el banco  para  continuar');
       dbcbanco.Enabled := true;
       dbcbanco.SetFocus;

       end

end;

procedure Tfrmsucursales.dbsucursalesColEnter(Sender: TObject);
begin
    edtcodsucursal.enabled := false;
    edtnomsucursal.enabled := true;
    edtcodsucursal.Text := DataModule1.qrysucursalesCODSUCURSAL.Value;
    edtcodregional.Text := Datamodule1.qrysucursalesCOD_REGIONAL.Value;
    edtnomsucursal.Text := DataModule1.qrysucursalesNOMSUCURSAL.Value;
    IF DataModule1.qrysucursalesEST_SUCURSAL.VALUE = 'A' THEN
    BEGIN
    cbestsucursal.ItemIndex := 0;
    END
      ELSE IF DataModule1.qrysucursalesEST_SUCURSAL.VALUE = 'I' THEN
      BEGIN
      cbestsucursal.ItemIndex := 1;
      END
      ELSE cbestsucursal.ItemIndex :=-1;
    btnnuevo.Caption := '&Actualizar'
end;

procedure Tfrmsucursales.edtcodsucursalExit(Sender: TObject);
begin
       if edtcodsucursal.Text <> '' then
       begin
             //edtcodsucursal.Text :=frmprincipal.espacios(3,edtcodsucursal.Text);
             DataModule1.qrysucursales.Close;
             DataModule1.qrysucursales.sql.clear;
             DataModule1.qrysucursales.sql.Add ('SELECT * FROM SUCURSALES_BANCOS_CONTRV WHERE CODBANCO = :"BANCO" AND CODSUCURSAL = :"CODIGO"');
             DataModule1.qrysucursales.Parameters[0].VALUE := dbcbanco.KeyValue;
             DataModule1.qrysucursales.Parameters[1].VALUE := TRIM(edtcodsucursal.Text);
             DataModule1.qrysucursales.Open;
             IF DataModule1.qrysucursales.RecordCount = 1 THEN
             BEGIN
             edtcodsucursal.enabled := false;
             edtnomsucursal.enabled := true;
             edtcodsucursal.Text := DataModule1.qrysucursalesCODSUCURSAL.Value;
             edtcodregional.Text := Datamodule1.qrysucursalesCOD_REGIONAL.Value; 
             edtnomsucursal.Text := DataModule1.qrysucursalesNOMSUCURSAL.Value;
             btnnuevo.Caption := '&Actualizar';
             end;
             DataModule1.qrysucursales.Close;
             DataModule1.qrysucursales.sql.clear;
             DataModule1.qrysucursales.sql.Add ('SELECT * FROM SUCURSALES_BANCOS_CONTRV WHERE CODBANCO = :"BANCO"');
             DataModule1.qrysucursales.Parameters[0].VALUE := dbcbanco.KeyValue;
             DataModule1.qrysucursales.Open;
       end;

end;

procedure Tfrmsucursales.APPMESSAGE(var MSG: TMSG; var HANDLED: BOOLEAN);
begin
IF MSG.WPARAM = VK_RETURN THEN
       BEGIN
        IF ((SCREEN.ACTIVECONTROL) IS TCOMBOBOX) THEN
        MSG.WPARAM := VK_TAB;
        IF (((SCREEN.ACTIVECONTROL) IS TEDIT)) THEN
        MSG.WPARAM := VK_TAB;
        IF (((SCREEN.ACTIVECONTROL) IS TDBGrid)) THEN
        MSG.WPARAM := VK_TAB;
        IF (((SCREEN.ACTIVECONTROL) IS TDBLookupComboBox)) THEN
        MSG.WPARAM := VK_TAB;
       END;

end;

procedure Tfrmsucursales.edtcodsucursalKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (Key in ['0'..'9',#8])then
 begin
 Key := #0;
 ShowMessage('Digite solo numeros');
 end;

end;

procedure Tfrmsucursales.FormCreate(Sender: TObject);
begin
APPLICATION.ONMESSAGE := APPMESSAGE;
end;

procedure Tfrmsucursales.BitBtn1Click(Sender: TObject);
var
cod_banco,codsucursal,cod_regional,nomsucursal,est_sucursal:string;
nomfile,S,tipodelimitador:string;
F:TEXTFILE;
i,j:INTEGER;

begin
opabrir.Execute;
nomfile :=OPABRIR.FILENAME;
tipodelimitador:=';';
IF NOMFILE <>'' THEN
BEGIN
//******************************

	ASSIGNFILE (F,NOMFILE);
	RESET(F);
  cod_banco:='';
  codsucursal:='';
  cod_regional:='';
  nomsucursal:='';
  est_sucursal:='';
  //Código del Banco
  COD_BANCO:=DATAMODULE1.qrybancosCOD_BANCO.Value;
	WHILE  NOT eof(f) DO
	BEGIN

	       readln(f,s); // leer archivo
         j:=0;
	       while s <> '' do
	       begin
               i:=Pos(tipodelimitador,s);
               if i = 0 then
               begin
               Est_Sucursal:= trim(s);
               IF (Est_Sucursal<>'A') AND (Est_Sucursal<>'I') THEN
                   BEGIN
                   SHOWMESSAGE('Fue encontrado un error en el archivo es posible que el'+ #13 +'estado del banco no sea A o I revicelo por favor' + #13 +  'e intentelo de nuevo');
               exit;
               END;
               Datamodule1.QRYSUCURSALES.Close ;
               Datamodule1.QRYSUCURSALES.SQL.Clear;
               Datamodule1.QRYSUCURSALES.SQL.Add('SELECT * FROM SUCURSALES_BANCOS_CONTRV WHERE CODBANCO= :"CODBANCO" AND CODSUCURSAL= :"CODSUCURSAL"');
               Datamodule1.QRYSUCURSALES.Parameters[0].Value := COD_BANCO;
               Datamodule1.QRYSUCURSALES.Parameters[1].Value := CODSUCURSAL;
               Datamodule1.QRYSUCURSALES.Open;
               IF Datamodule1.QRYSUCURSALES.RecordCount > 0 THEN
               BEGIN
                   Datamodule1.QRYSUCURSALES.Close ;
                   Datamodule1.QRYSUCURSALES.SQL.Clear;
                   DataModule1.qrysucursales.sql.Add ('UPDATE SUCURSALES_BANCOS_CONTRV SET NOMSUCURSAL = :"NOMSUCURSAL", COD_REGIONAL = :"CODREGIONAL", EST_SUCURSAL = :"ESTSUCURSAL" WHERE  CODBANCO = :"BANCO" AND CODSUCURSAL = :"CODSUCURSAL"');
                   DataModule1.qrysucursales.Parameters[3].VALUE := cod_banco;
                   DataModule1.qrysucursales.Parameters[4].VALUE := codsucursal;
                   DataModule1.qrysucursales.Parameters[0].VALUE := nomsucursal;
                   Datamodule1.qrysucursales.Parameters[1].VALUE := cod_regional;
                   Datamodule1.qrysucursales.Parameters[2].VALUE := Est_sucursal;
                   DataModule1.qrysucursales.ExecSQL;
               END
               ELSE
               BEGIN
                  DataModule1.qrysucursales.Close;
                  DataModule1.qrysucursales.sql.clear;
                  DataModule1.qrysucursales.sql.Add ('INSERT  INTO SUCURSALES_BANCOS_CONTRV (CODBANCO,CODSUCURSAL,COD_REGIONAL,NOMSUCURSAL,EST_SUCURSAL) VALUES (:"BANCO",:"CODSUCURSAL",:"COD_REGIONAL",:"NOMSUCURSAL",:"ESTSUCURSAL")');
                  DataModule1.qrysucursales.Parameters[0].VALUE := cod_banco;
                  DataModule1.qrysucursales.Parameters[1].VALUE := codsucursal;
                  DataModule1.qrysucursales.Parameters[2].VALUE := cod_regional;
                  DataModule1.qrysucursales.Parameters[3].VALUE := nomsucursal;
                  Datamodule1.qrysucursales.Parameters[4].VALUE := Est_sucursal;
                  DataModule1.qrysucursales.ExecSQL;
               END;

               s := '';



               end
               else
                  if i > 0 then
                  begin
                   if j=0 then
                   begin
                         codsucursal := trim(copy (s,1,i-1));
                         Delete(s,1, i);
                         inc(j);
                   end
                   else if j=1 then
                        begin
                             cod_regional := trim(copy (s,1,i-1));
                             Delete(s,1, i);
                             inc(j);
                        end
                        else if j=2 then
                             begin
                                  nomsucursal := trim(copy (s,1,i-1));
                                  Delete(s,1, i);
                                  inc(j)
                             end

               end;//while  s<>'0'


	 END;//while eof
   END;//nomfile<>''
    closefile(f);
        //******************************
end;
end;

end.
