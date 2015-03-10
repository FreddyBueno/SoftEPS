unit UFORMATO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Mask, Buttons;

type
  Tfrmformatos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    Label47: TLabel;
    Label48: TLabel;
    dblbanco: TDBLookupComboBox;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    dblcampo: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btnnuevo: TBitBtn;
    btncancelar: TBitBtn;
    btnCerrar: TBitBtn;
    edtinicio: TEdit;
    edtlongitud: TEdit;
    msformato: TMaskEdit;
    btneliminar: TBitBtn;
    edtnumcampo: TEdit;
    Label7: TLabel;
    ckestado: TCheckBox;
    Label3: TLabel;
    dbldelimitadores: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure edtinicioKeyPress(Sender: TObject; var Key: Char);
    procedure edtlongitudKeyPress(Sender: TObject; var Key: Char);
    PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);
    procedure FormCreate(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure btnnuevoClick(Sender: TObject);
    procedure dblbancoClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btncancelarClick(Sender: TObject);
    procedure dblcampoClick(Sender: TObject);
    procedure btneliminarClick(Sender: TObject);
    procedure dblcampoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmformatos: Tfrmformatos;

implementation

uses dtmodulo;

{$R *.dfm}

procedure Tfrmformatos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;

end;

procedure Tfrmformatos.FormActivate(Sender: TObject);
begin
    DataModule1.qrybancos.Open;
    DataModule1.qrycampos.Open;
    dblbanco.Enabled := true;
    dblcampo.KeyValue := '';
    btnnuevo.Caption :=  '&Nuevo';
    edtinicio.Text := '';
    edtlongitud.Text := '';
    msformato.text := '';
    dblcampo.Enabled := false;
    btnnuevo.Caption :=  '&Nuevo';
    edtinicio.Enabled := false;
    edtlongitud.Enabled := false;
    msformato.Enabled := false;
    dblbanco.SetFocus;

end;

procedure Tfrmformatos.edtinicioKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9',#8,#13])then
 begin
 Key := #0;
 ShowMessage('Digite solo numeros');
 end;

end;

procedure Tfrmformatos.edtlongitudKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9',#8,#13])then
 begin
 Key := #0;
 ShowMessage('Digite solo numeros');
 end;

end;

procedure Tfrmformatos.APPMESSAGE(var MSG: TMSG; var HANDLED: BOOLEAN);
begin
IF MSG.WPARAM = VK_RETURN THEN
       BEGIN
        IF ((SCREEN.ACTIVECONTROL) IS TCOMBOBOX) THEN
             MSG.WPARAM := VK_TAB;
        IF (((SCREEN.ACTIVECONTROL) IS TEDIT)) THEN
             MSG.WPARAM := VK_TAB;
        IF (((SCREEN.ACTIVECONTROL) IS TDBLookupComboBox)) THEN
             MSG.WPARAM := VK_TAB;
       END;

end;

procedure Tfrmformatos.FormCreate(Sender: TObject);
begin
APPLICATION.ONMESSAGE := APPMESSAGE;
end;

procedure Tfrmformatos.btnCerrarClick(Sender: TObject);
begin
close;
end;

procedure Tfrmformatos.btnnuevoClick(Sender: TObject);
begin
 if  trim(dblbanco.Text) = '' then
    begin
    dblbanco.Enabled :=true;
    ShowMessage('Seleccione El banco');
    dblbanco.SetFocus;
    exit;
    end;
     if  trim(dbldelimitadores.Text) = '' then
     begin
      dbldelimitadores.Enabled :=true;
        ShowMessage('Seleccione el tipo de Separador');
        dbldelimitadores.SetFocus;
     exit;
     end;
// nuevo campo del formato del exctrato bancario
IF btnnuevo.Caption = '&Nuevo' then
begin

    dblbanco.Enabled :=false;
    dbldelimitadores.Enabled :=false;
    dblcampo.KeyValue := '';
    btnnuevo.Caption :=  '&Grabar';
    btncancelar.Caption :=  '&Cancelar';
    btneliminar.Enabled := false;
    edtinicio.Text := '';
    edtlongitud.Text := '';
    msformato.text := '';
    dblcampo.Enabled := true;
    edtinicio.Enabled := true;
    edtlongitud.Enabled := true;
    msformato.Enabled := true;
    edtnumcampo.Text := '';
    dblcampo.SetFocus;
    ckestado.Checked := true;
end
else
//  Grabar campo del formato del exctrato bancario
    if btnnuevo.Caption = '&Grabar' then
    begin
          if  trim(dblcampo.Text) = '' then
          begin
          ShowMessage('Seleccione el campo');
          dblcampo.SetFocus;
          exit;
          end;
          if  trim(edtinicio.Text) = '' then
          begin
          ShowMessage('Selecio el inicio del campo ');
          edtinicio.SetFocus;
          exit;
          end;
          if  trim(edtlongitud.Text) = '' then
          begin
          ShowMessage('Digite  La Longitud');
          edtlongitud.SetFocus;
          exit;
          end;

          if  trim(msformato.Text) = '' then
          begin
            msformato.text := '#';
          end;


          DATAMODULE1.qryformatos.CLOSE;
          DATAMODULE1.qryformatos.SQL.Clear;
          DATAMODULE1.qryformatos.SQL.ADD('INSERT INTO FORMATOS_BANCOS(COD_BANCO,COD_CAMPO,DELIMITADOR,INI_CAMPO,LON_CAMPO,FORMATO,NUM_CAMPO,ESTADO)');
          DATAMODULE1.qryformatos.SQL.ADD('VALUES (:"COD_BANCO",:"COD_CAMPO",:"DELIMITADOR",:"INI_CAMPO",:"LON_CAMPO",:"FORMATO",:"NUMERO",:"ESTADO")');
          DATAMODULE1.qryformatos.PARAMS[0].ASSTRING := dblbanco.KEYVALUE;
          DATAMODULE1.qryformatos.PARAMS[1].ASSTRING := dblcampo.KEYVALUE;
          DATAMODULE1.qryformatos.PARAMS[2].ASSTRING := inttostr(dbldelimitadores.ItemIndex);
          DATAMODULE1.qryformatos.PARAMS[3].AsInteger := STRTOINT(edtinicio.TEXT);
          DATAMODULE1.qryformatos.PARAMS[4].AsInteger := STRTOINT(edtlongitud.TEXT);
          DATAMODULE1.qryformatos.PARAMS[5].ASSTRING := trim(msformato.text);
          DATAMODULE1.qryformatos.PARAMS[6].ASSTRING := trim(edtnumcampo.text);
          IF  ckestado.Checked = TRUE THEN
          BEGIN
          DATAMODULE1.qryformatos.PARAMS[7].AsInteger := 1;
          END
          ELSE
          DATAMODULE1.qryformatos.PARAMS[7].AsInteger := 0;
          DATAMODULE1.qryformatos.RequestLive := true;
          DATAMODULE1.qryformatos.ExecSQL;

          DATAMODULE1.qryformatos.CLOSE;
          DATAMODULE1.qryformatos.SQL.Clear;
          DATAMODULE1.qryformatos.SQL.ADD('SELECT * FROM FORMATOS_BANCOS WHERE COD_BANCO = :"CODIGO"');
          DATAMODULE1.qryformatos.PARAMS[0].ASSTRING := TRIM(dblbanco.KEYVALUE);
          DATAMODULE1.qryformatos.RequestLive := true;
          DATAMODULE1.qryformatos.Open;
          dblbanco.Enabled :=false;
          dbldelimitadores.Enabled :=false;
          dblcampo.KeyValue := '';
          btnnuevo.Caption :=  '&Grabar';
          btncancelar.Caption :=  '&Cancelar';
          edtinicio.Text := '';
          edtlongitud.Text := '';
          msformato.text := '';
          edtnumcampo.Text := '';

          end
    else
         if btnnuevo.Caption = '&Actualizar' then
         begin
              if  trim(dblcampo.Text) = '' then
              begin
              ShowMessage('Seleccione el campo');
              dblcampo.SetFocus;
              exit;
              end;
              if  trim(edtinicio.Text) = '' then
              begin
              ShowMessage('Selecio el inicio del campo ');
              edtinicio.SetFocus;
              exit;
              end;
              if  trim(edtlongitud.Text) = '' then
              begin
              ShowMessage('Digite  La Longitud');
              edtlongitud.SetFocus;
              exit;
              end;



              DATAMODULE1.qryformatos.CLOSE;
              DATAMODULE1.qryformatos.SQL.Clear;
              DATAMODULE1.qryformatos.SQL.ADD('UPDATE FORMATOS_BANCOS SET DELIMITADOR = :"DELIMITADOR",INI_CAMPO = :"INI_CAMPO" ,LON_CAMPO = :"LON_CAMPO",FORMATO = :"FORMATO",ESTADO = :"ESTADO"');
              DATAMODULE1.qryformatos.SQL.ADD('WHERE COD_BANCO = :"COD_BANCO" AND COD_CAMPO = :"COD_CAMPO"');
              DATAMODULE1.qryformatos.PARAMS[5].ASSTRING := dblbanco.KEYVALUE;
              DATAMODULE1.qryformatos.PARAMS[6].ASSTRING := dblcampo.KEYVALUE;
              DATAMODULE1.qryformatos.PARAMS[0].ASSTRING := inttostr(dbldelimitadores.ItemIndex);
              DATAMODULE1.qryformatos.PARAMS[1].AsInteger := STRTOINT(edtinicio.TEXT);
              DATAMODULE1.qryformatos.PARAMS[2].AsInteger := STRTOINT(edtlongitud.TEXT);
              DATAMODULE1.qryformatos.PARAMS[3].ASSTRING := trim(msformato.text);
              IF  ckestado.Checked = TRUE THEN
              BEGIN
              DATAMODULE1.qryformatos.PARAMS[4].AsInteger := 1;
              END
              ELSE
              DATAMODULE1.qryformatos.PARAMS[4].AsInteger := 0;

              DATAMODULE1.qryformatos.RequestLive := true;
              DATAMODULE1.qryformatos.ExecSQL;
              DATAMODULE1.qryformatos.CLOSE;
              DATAMODULE1.qryformatos.SQL.Clear;
              DATAMODULE1.qryformatos.SQL.ADD('SELECT * FROM FORMATOS_BANCOS WHERE COD_BANCO = :"CODIGO"');
              DATAMODULE1.qryformatos.PARAMS[0].ASSTRING := TRIM(dblbanco.KEYVALUE);
              DATAMODULE1.qryformatos.RequestLive := true;
              DATAMODULE1.qryformatos.Open;
              dblbanco.Enabled :=false;
              dbldelimitadores.Enabled :=false;
              dblcampo.KeyValue := '';
              btnnuevo.Caption :=  '&Grabar';
              btncancelar.Caption :=  '&Cancelar';
              edtinicio.Text := '';
              edtlongitud.Text := '';
              msformato.text := '';
              edtnumcampo.Text := '';

         end;

end;

procedure Tfrmformatos.dblbancoClick(Sender: TObject);
begin
    DATAMODULE1.qryformatos.CLOSE;
    DATAMODULE1.qryformatos.SQL.Clear;
    DATAMODULE1.qryformatos.SQL.ADD('SELECT * FROM FORMATOS_BANCOS WHERE COD_BANCO = :"CODIGO"');
    DATAMODULE1.qryformatos.PARAMS[0].ASSTRING := TRIM(dblbanco.KEYVALUE);
    DATAMODULE1.qryformatos.RequestLive := true;
    DATAMODULE1.qryformatos.Open;
    if dblbanco.Text <> '' then
    begin
      dbldelimitadores.Enabled := true;
      dbldelimitadores.SetFocus;
    end;

end;

procedure Tfrmformatos.DBGrid1CellClick(Column: TColumn);
begin
          dblbanco.Enabled :=false;
          dblcampo.KeyValue := '';
          edtinicio.Text := '';
          edtlongitud.Text := '';
          msformato.text := '';
          dblcampo.Enabled := true;
          edtinicio.Enabled := true;
          edtlongitud.Enabled := true;
          dbldelimitadores.Enabled := false;
          msformato.Enabled := true;
          btneliminar.Enabled := false;
          edtnumcampo.Text := '';
          ckestado.Checked := TRUE;
          if DataModule1.qryformatosCOD_CAMPO.value <>'' then
          begin
            dblcampo.KeyValue := DataModule1.qryformatosCOD_CAMPO.value;
            dbldelimitadores.ItemIndex := STRTOINT(DataModule1.qryformatosDELIMITADOR.value);
            msformato.text := DataModule1.qryformatosFORMATO.value;
            edtinicio.text := floattostr(DataModule1.qryformatosINI_CAMPO.value);
            edtlongitud.text := floattostr(DataModule1.qryformatosLON_CAMPO.value);
            edtnumcampo.text := floattostr(DataModule1.qryformatosNUM_CAMPO.value);
            IF DataModule1.qryformatosESTADO.value = 1 THEN
            BEGIN
             ckestado.Checked := true;
            end
            else
            ckestado.Checked := false;

            btnnuevo.Caption :=  '&Actualizar';
            btneliminar.Enabled := true;
          end;
end;

procedure Tfrmformatos.btncancelarClick(Sender: TObject);
begin

    dblbanco.Enabled := true;
    dblcampo.KeyValue := '';
    btnnuevo.Caption :=  '&Nuevo';
    edtinicio.Text := '';
    edtlongitud.Text := '';
    dbldelimitadores.Enabled :=true;
    msformato.text := '';
    dblcampo.Enabled := false;
    btnnuevo.Caption :=  '&Nuevo';
    edtinicio.Enabled := false;
    edtlongitud.Enabled := false;
    msformato.Enabled := false;
    edtnumcampo.Text := '';
    dblbanco.SetFocus;

end;

procedure Tfrmformatos.dblcampoClick(Sender: TObject);
begin
              edtinicio.Text := '';
              btneliminar.Enabled := true;
              edtlongitud.Text := '';
              msformato.text := '';
              dblcampo.Enabled := true;
              edtinicio.Enabled := false;
              edtlongitud.Enabled := true;
              msformato.Enabled := true;
              edtnumcampo.Text := '';
              edtlongitud.Text := '';
              edtinicio.Text := '';

              DATAMODULE1.qryformatos.CLOSE;
              DATAMODULE1.qryformatos.SQL.Clear;
              DATAMODULE1.qryformatos.SQL.ADD('SELECT * FROM FORMATOS_BANCOS WHERE COD_BANCO = :"COD_BANCO"');
              DATAMODULE1.qryformatos.PARAMS[0].ASSTRING := TRIM(dblbanco.KEYVALUE);
              DATAMODULE1.qryformatos.Open;
              edtnumcampo.Text := inttostr(DATAMODULE1.qryformatos.RecordCount +1);
              DATAMODULE1.qryformatos.CLOSE;
              DATAMODULE1.qryformatos.SQL.Clear;
              DATAMODULE1.qryformatos.SQL.ADD('SELECT * FROM FORMATOS_BANCOS WHERE COD_BANCO = :"COD_BANCO" AND COD_CAMPO = :"COD_CAMPO"');
              DATAMODULE1.qryformatos.PARAMS[0].ASSTRING := TRIM(dblbanco.KEYVALUE);
              DATAMODULE1.qryformatos.PARAMS[1].ASSTRING := TRIM(dblcampo.KEYVALUE);
              DATAMODULE1.qryformatos.RequestLive := true;
              DATAMODULE1.qryformatos.Open;
              if DATAMODULE1.qryformatos.RecordCount = 1 then
              begin

                    dblcampo.KeyValue := DataModule1.qryformatosCOD_CAMPO.value;
                    msformato.text := DataModule1.qryformatosFORMATO.value;
                    edtinicio.text := floattostr(DataModule1.qryformatosINI_CAMPO.value);
                    edtlongitud.text := floattostr(DataModule1.qryformatosLON_CAMPO.value);
                    edtnumcampo.text := floattostr(DataModule1.qryformatosNUM_CAMPO.value);
                    btnnuevo.Caption :=  '&Actualizar';
                    btncancelar.Caption :=  '&cancelar';
                    end
                    ELSE
                    begin
                    msformato.text := DataModule1.qrycamposFORMATO.value;
                    btneliminar.Enabled := false;
                    if dbldelimitadores.ItemIndex <> 3 then
                      begin
                       edtlongitud.Text := '0';
                       edtinicio.Text := '0';
                       edtlongitud.Enabled := false;
                       edtinicio.Enabled := false;

                       end
                       else
                            begin
                              edtlongitud.Text := '';
                              edtinicio.Text := '';
                              edtlongitud.Enabled := true;
                              edtinicio.Enabled := true;

                            end;
                                  end;
                    DATAMODULE1.qryformatos.CLOSE;
                    DATAMODULE1.qryformatos.SQL.Clear;
                    DATAMODULE1.qryformatos.SQL.ADD('SELECT * FROM FORMATOS_BANCOS WHERE COD_BANCO = :"CODIGO"');
                    DATAMODULE1.qryformatos.PARAMS[0].ASSTRING := TRIM(dblbanco.KEYVALUE);
                    DATAMODULE1.qryformatos.RequestLive := true;
                    DATAMODULE1.qryformatos.Open;


end;

procedure Tfrmformatos.btneliminarClick(Sender: TObject);
begin
        IF MESSAGEDLG (LowerCase(' Desea Borrar  el formato del banco ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
        BEGIN
              DATAMODULE1.qryformatos.CLOSE;
              DATAMODULE1.qryformatos.SQL.Clear;
              DATAMODULE1.qryformatos.SQL.ADD('DELETE  FROM FORMATOS_BANCOS WHERE COD_BANCO = :"COD_BANCO"');
              DATAMODULE1.qryformatos.PARAMS[0].ASSTRING := TRIM(dblbanco.KEYVALUE);
              DATAMODULE1.qryformatos.RequestLive := true;
              DATAMODULE1.qryformatos.ExecSQL;
              dblbanco.Enabled :=false;
              dblcampo.KeyValue := '';
              edtinicio.Text := '';
              edtlongitud.Text := '';
              msformato.text := '';
              dblcampo.Enabled := true;
              edtinicio.Enabled := true;
              edtlongitud.Enabled := true;
              dbldelimitadores.Enabled := false;
              msformato.Enabled := true;
              edtnumcampo.Text := '';
              btnnuevo.Caption :=  '&Grabar';
              dblcampo.SetFocus;
              DATAMODULE1.qryformatos.CLOSE;
              DATAMODULE1.qryformatos.SQL.Clear;
              DATAMODULE1.qryformatos.SQL.ADD('SELECT * FROM FORMATOS_BANCOS WHERE COD_BANCO = :"CODIGO"');
              DATAMODULE1.qryformatos.PARAMS[0].ASSTRING := TRIM(dblbanco.KEYVALUE);
              DATAMODULE1.qryformatos.RequestLive := true;
              DATAMODULE1.qryformatos.Open;
              btneliminar.Enabled := false;
          end;
end;

procedure Tfrmformatos.dblcampoEnter(Sender: TObject);
begin
              edtinicio.Text := '';
              btneliminar.Enabled := true;
              edtlongitud.Text := '';
              msformato.text := '';
              dblcampo.Enabled := true;
              edtinicio.Enabled := false;
              edtlongitud.Enabled := true;
              msformato.Enabled := true;
              edtnumcampo.Text := '';
              edtlongitud.Text := '';
              edtinicio.Text := '';
end;

end.
