unit udigitacionextracto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons;

type
  Tfrmdigitacionextractos = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    Label47: TLabel;
    Label48: TLabel;
    dblbanco: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    dblsucursal: TDBLookupComboBox;
    editnitempresa: TEdit;
    edtplanilla: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dtfecharecuado: TDateTimePicker;
    Label5: TLabel;
    edtvalircancelado: TEdit;
    Label6: TLabel;
    btnnuevo: TBitBtn;
    btncancelar: TBitBtn;
    btncerrar: TBitBtn;
    edtnombre: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    cbtipoconsignacion: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel2Click(Sender: TObject);
    procedure edtvalircanceladoKeyPress(Sender: TObject; var Key: Char);
    procedure dblbancoClick(Sender: TObject);
    PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);
    procedure btncerrarClick(Sender: TObject);
    procedure editnitempresaExit(Sender: TObject);
    procedure edtplanillaExit(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnnuevoClick(Sender: TObject);
    procedure edtplanillaChange(Sender: TObject);
    procedure editnitempresaChange(Sender: TObject);
    procedure edtvalircanceladoExit(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure dtfecharecuadoExit(Sender: TObject);
    procedure limpiar;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdigitacionextractos: Tfrmdigitacionextractos;

implementation

uses dtmodulo, Uprincipal, Uglobal;

{$R *.dfm}

procedure Tfrmdigitacionextractos.FormCreate(Sender: TObject);
begin
APPLICATION.ONMESSAGE := APPMESSAGE;
DataModule1.qrybancos.Open;
dtfecharecuado.Date :=  STRTODATE(GLDATE);
end;

procedure Tfrmdigitacionextractos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure Tfrmdigitacionextractos.Panel2Click(Sender: TObject);
begin
//DataModule1.qryestratoCONSECUTIVO.Value := strtoint(Edit1.text) + 1;

end;

procedure Tfrmdigitacionextractos.edtvalircanceladoKeyPress(
  Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9',#8])then
 begin
 Key := #0;
 ShowMessage('El valor digitado debe ser númerico');
 end;

end;

procedure Tfrmdigitacionextractos.dblbancoClick(Sender: TObject);
begin
if dblbanco.Text <> '' then
begin
       DataModule1.qrysucursales.Close;
       DataModule1.qrysucursales.sql.clear;
       DataModule1.qrysucursales.sql.Add ('SELECT * FROM SUCURSALES_BANCOS WHERE CODBANCO = :"BANCO"');
       DataModule1.qrysucursales.Params[0].AsString := dblbanco.KeyValue;
       DataModule1.qrysucursales.Open;

       DataModule1.qryestrato.Close;
       DataModule1.qryestrato.sql.clear;
       DataModule1.qryestrato.sql.Add ('SELECT * FROM EST_BANCARIO_AUTO WHERE COD_BANCO = :"BANCO" AND EST_CONCILIACION  = :"ESTADO"');
       DataModule1.qryestrato.Params[0].AsString := dblbanco.KeyValue;
       DataModule1.qryestrato.Params[1].AsString := 'N';
       DataModule1.qryestrato.Open;

  end
 else
 begin
 ShowMessage('Selecione  el banco para  Cotinuar');
 dblbanco.SetFocus;
 end

end;

procedure Tfrmdigitacionextractos.APPMESSAGE(var MSG: TMSG;
  var HANDLED: BOOLEAN);
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
        IF (((SCREEN.ACTIVECONTROL) IS TDateTimePicker)) THEN
        MSG.WPARAM := VK_TAB;
       END;


end;

procedure Tfrmdigitacionextractos.btncerrarClick(Sender: TObject);
begin
CLOSE;
end;

procedure Tfrmdigitacionextractos.editnitempresaExit(Sender: TObject);
begin
       if  TRIM(editnitempresa.text) > '0' then
        begin
       edtnombre.Text := '';
       DataModule1.qryempresas.Close;
       DataModule1.qryempresas.sql.clear;
       DataModule1.qryempresas.sql.Add ('SELECT * FROM EMPRESAS  WHERE   NUM_DOCUMENTO = :"NUMERO"');
       DataModule1.qryempresas.Params[0].AsString := TRIM(editnitempresa.Text);
       DataModule1.qryempresas.Open;
       IF DataModule1.qryempresas.RecordCount > 0 THEN
         Begin
           edtnombre.Text := DataModule1.qryempresasNOM_EMPRESA.Value;
         end
         else
             begin
                IF MESSAGEDLG (LowerCase(' La Empresa No existe  desea  Continuar  Digitando ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRNO THEN
                BEGIN
                editnitempresa.SetFocus;
                EXIT
                end;
             end;
       end;
end;

procedure Tfrmdigitacionextractos.edtplanillaExit(Sender: TObject);
begin
       if  strtoint(TRIM(edtplanilla.text)) > 0 then
        begin
        DataModule1.qryautoliquidacion.close;
        DataModule1.qryautoliquidacion.sql.clear;
        DataModule1.qryautoliquidacion.sql.add('SELECT *  FROM AUTOLIQUIDACION WHERE NUM_PLANILLA = :"PLANILLA" AND ((CRU_CONCILIACION <> :"S")  OR (CRU_CONCILIACION IS NULL)) AND COD_BANCO = :"BANCO"');
        DataModule1.qryautoliquidacion.Params[0].AsString := TRIM(edtplanilla.Text);
        DataModule1.qryautoliquidacion.Params[1].AsString := 'S';
        DataModule1.qryautoliquidacion.Params[2].AsString := dblbanco.KeyValue;
        DataModule1.qryautoliquidacion.RequestLive := FALSE;
        DataModule1.qryautoliquidacion.open;
         IF DataModule1.qryautoliquidacion.RecordCount = 1 THEN
         Begin
         dtfecharecuado.Date :=  DataModule1.qryautoliquidacionFEC_PAGO.Value;
         edtvalircancelado.TEXT := FLOATTOSTR(DataModule1.qryautoliquidacionVAL_EFECTIVO.Value + DataModule1.qryautoliquidacionVAL_CHEQUE.Value);
         editnitempresa.Text :=  DataModule1.qryautoliquidacionEMP_NUMERO_DOC.Value;
         cbtipoconsignacion.text := 'CONSI';
         DataModule1.qryempresas.Close;
         DataModule1.qryempresas.sql.clear;
         DataModule1.qryempresas.sql.Add ('SELECT * FROM EMPRESAS  WHERE   NUM_DOCUMENTO = :"NUMERO"');
         DataModule1.qryempresas.Params[0].AsString := TRIM(editnitempresa.Text);
         DataModule1.qryempresas.Open;
            IF DataModule1.qryempresas.RecordCount > 0 THEN
            Begin
            edtnombre.Text := DataModule1.qryempresasNOM_EMPRESA.Value;
            end;

         end
         else
             begin
              ShowMessage('El Número  del planilla No  esta  digitada o ya esta  conciliada');
             end;
       end;

end;

procedure Tfrmdigitacionextractos.btncancelarClick(Sender: TObject);
begin
        if btncancelar.Caption =  '&Cancelar' then
        begin
        limpiar;
        end
        else
        if btncancelar.Caption =  '&Eliminar' then
        begin
                IF MESSAGEDLG (LowerCase(' Desea Borrar  El Registro ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
                BEGIN
                    try
                    DataModule1.dtbdatamec.StartTransaction;
                    DataModule1.qryestrato.close;
                    DataModule1.qryestrato.sql.clear;
                    DataModule1.qryestrato.sql.add('DELETE FROM EST_BANCARIO_AUTO  WHERE  COD_BANCO = :"COD_BANCO" AND COD_SUCURSAL = :"COD_SUCURSAL" AND NUM_DOCUMENTO = :"NUM_DOCUMENTO"');
                    DataModule1.qryestrato.sql.add(' AND NUM_PLANILLA = :"NUM_PLANILLA" AND FEC_RECAUDO = :"FEC_RECAUDO" AND VAL_CONSIGNACION = :"VAL_CONSIGNACION" AND TIP_MOVIMIENTO = :"TIP_MOVIMIENTO" AND  EST_CONCILIACION =:"EST_CONCILIACION"');
                    DataModule1.qryestrato.Params[0].AsString := TRIM(dblbanco.KeyValue);
                    DataModule1.qryestrato.Params[1].AsString := TRIM(dblsucursal.KeyValue);
                    DataModule1.qryestrato.Params[2].AsString := TRIM(editnitempresa.TEXT);
                    DataModule1.qryestrato.Params[3].AsString := TRIM(edtplanilla.TEXT);
                    DataModule1.qryestrato.Params[4].AsDATE := dtfecharecuado.Date;
                    DataModule1.qryestrato.Params[5].AsFloat := StrToFloat(edtvalircancelado.TEXT);
                    DataModule1.qryestrato.Params[6].AsString := 'CONSI';
                    DataModule1.qryestrato.Params[7].AsString := 'N';
                    DataModule1.qryestrato.RequestLive := true;
                    DataModule1.qryestrato.ExecSQL;
                    DataModule1.dtbdatamec.Commit;
                    limpiar;
                    EXCEPT
                    DATAMODULE1.DTBDATAMEC.ROLLBACK;
                    SHOWMESSAGE(LowerCase('NO SE PUEDE  grabar  el pago '));

                    RAISE;
                    END;

                DataModule1.qryestrato.close;
                DataModule1.qryestrato.sql.clear;
                DataModule1.qryestrato.sql.add('SELECT *  FROM EST_BANCARIO_AUTO WHERE COD_BANCO = :"COD_BANCO" AND EST_CONCILIACION = :"ESTADO"');
                DataModule1.qryestrato.Params[0].AsString := TRIM(dblbanco.KeyValue);
                DataModule1.qryestrato.Params[1].AsString := 'N';
                DataModule1.qryestrato.Open;
                btnnuevo.Enabled := true;
                btnnuevo.Caption := '&Grabar';
                btncancelar.Caption :=  '&Cancelar'
                end;
      end;


end;

procedure Tfrmdigitacionextractos.btnnuevoClick(Sender: TObject);
var conciliar : string;
begin

    if dblbanco.KeyValue = '' then
    begin
    ShowMessage('Seleccione  el banco ');
    dblbanco.SetFocus;
    exit
    end;
    if dblsucursal.KeyValue = '' then
    begin
    ShowMessage('Seleccione  la  sucursal del banco ');
    dblsucursal.SetFocus;
    exit
    end;

    if trim(editnitempresa.Text)  = '' then
        begin
    ShowMessage('Digite  el nit  de la  Empresa  registrada  por el banco ');
    editnitempresa.SetFocus;
    exit
    end;

    if trim(edtplanilla.Text)  = '' then
        begin
    ShowMessage('Digite  el numero   de la  planilla registrada  por el banco');
    edtplanilla.SetFocus;
    exit
    end;

    if dtfecharecuado.Date > strtodate(gldate) then
        begin
    ShowMessage('Digite  la fecha  de  recaudo  registrada  por el banco ');
    dtfecharecuado.SetFocus;
    exit
    end;

    if strtoint(trim(edtvalircancelado.Text))  = 0 then
        begin
    ShowMessage('Digite  el valor del recaudo  registrada  por el banco  ');
    edtvalircancelado.SetFocus;
    exit
    end;

    if TRIM(cbtipoconsignacion.TEXT) = '' then
    begin
    ShowMessage('Seleccione  tipo de Movimiento');
    cbtipoconsignacion.SetFocus;
    exit
    end;
            if btnnuevo.Caption = '&Grabar' then
            begin
               conciliar := 'N';
               try
                DataModule1.dtbdatamec.StartTransaction;
                // verificar el  pago  para  conciliar
                  DataModule1.qryautoliquidacion.Close;
                  DataModule1.qryautoliquidacion.SQL.Clear;
                  DataModule1.qryautoliquidacion.sql.Add('SELECT * FROM AUTOLIQUIDACION  WHERE  NUM_PLANILLA  = :"PLANILLA" AND ');
                  DataModule1.qryautoliquidacion.sql.Add('EMP_NUMERO_DOC = :"NIT" AND FEC_PAGO = :"FECHA" AND ');
                  DataModule1.qryautoliquidacion.sql.Add('COD_BANCO =:"BANCO" AND VAL_EFECTIVO+VAL_CHEQUE = :"VALOR" AND');
                  DataModule1.qryautoliquidacion.sql.Add('((CRU_CONCILIACION = :"ESTADO") OR (CRU_CONCILIACION IS NULL)) ');
                  DataModule1.qryautoliquidacion.Params[0].AsString := trim(edtplanilla.text);
                  DataModule1.qryautoliquidacion.Params[1].AsString := trim(editnitempresa.text);
                  DataModule1.qryautoliquidacion.Params[2].Asdate := dtfecharecuado.date;
                  DataModule1.qryautoliquidacion.Params[3].AsString := dblbanco.KeyValue;
                  DataModule1.qryautoliquidacion.Params[4].AsFloat := strtofloat(edtvalircancelado.text);
                  DataModule1.qryautoliquidacion.Params[5].AsString := 'N';
                  DataModule1.qryautoliquidacion.RequestLive := true;
                  DataModule1.qryautoliquidacion.Open;
                    if DataModule1.qryautoliquidacion.RecordCount =1 then
                    begin
                    SHOWMESSAGE(LowerCase('Recaudo   conciliada  con la  planilla  de autoliquidacion  ' + DataModule1.qryautoliquidacionNUM_PLANILLA.value));
                    DataModule1.qryautoliquidacion.Edit;
                    conciliar := 'S';
                    DataModule1.qryautoliquidacionCRU_CONCILIACION.Value := conciliar;
                    DataModule1.qryautoliquidacion.Post;
                    end
                    else
                    begin
                        DataModule1.qryautoliquidacion.SQL.Clear;
                        DataModule1.qryautoliquidacion.sql.Add('SELECT * FROM AUTOLIQUIDACION  WHERE ');
                        DataModule1.qryautoliquidacion.sql.Add('EMP_NUMERO_DOC = :"NIT" AND FEC_PAGO = :"FECHA" AND ');
                        DataModule1.qryautoliquidacion.sql.Add('COD_BANCO =:"BANCO" AND VAL_EFECTIVO+VAL_CHEQUE = :"VALOR" AND');
                        DataModule1.qryautoliquidacion.sql.Add('((CRU_CONCILIACION = :"ESTADO") OR (CRU_CONCILIACION IS NULL)) ');
                        DataModule1.qryautoliquidacion.Params[0].AsString := trim(editnitempresa.text);
                        DataModule1.qryautoliquidacion.Params[1].Asdate := dtfecharecuado.date;
                        DataModule1.qryautoliquidacion.Params[2].AsString := dblbanco.KeyValue;
                        DataModule1.qryautoliquidacion.Params[3].AsFloat := strtofloat(edtvalircancelado.text);
                        DataModule1.qryautoliquidacion.Params[4].AsString := 'N';
                        DataModule1.qryautoliquidacion.RequestLive := true;
                        DataModule1.qryautoliquidacion.Open;
                            if DataModule1.qryautoliquidacion.RecordCount = 1 then
                            begin
                            SHOWMESSAGE(LowerCase('Recaudo   conciliada  con  el aportte  de  la  empresa    ' + DataModule1.qryautoliquidacionNUM_PLANILLA.value));
                            edtplanilla.text := DataModule1.qryautoliquidacionNUM_PLANILLA.value;
                            DataModule1.qryautoliquidacion.Edit;
                            conciliar := 'S';
                            DataModule1.qryautoliquidacionCRU_CONCILIACION.Value := conciliar;
                            DataModule1.qryautoliquidacion.Post;
                            end
                                else
                                begin
                                DataModule1.qryautoliquidacion.SQL.Clear;
                                DataModule1.qryautoliquidacion.sql.Add('SELECT * FROM AUTOLIQUIDACION  WHERE  NUM_PLANILLA  = :"PLANILLA" AND');
                                DataModule1.qryautoliquidacion.sql.Add('FEC_PAGO = :"FECHA" AND ');
                                DataModule1.qryautoliquidacion.sql.Add('COD_BANCO =:"BANCO" AND VAL_EFECTIVO+VAL_CHEQUE = :"VALOR" AND');
                                DataModule1.qryautoliquidacion.sql.Add('((CRU_CONCILIACION = :"ESTADO") OR (CRU_CONCILIACION IS NULL)) ');
                                DataModule1.qryautoliquidacion.Params[0].AsString := trim(edtplanilla.text);
                                DataModule1.qryautoliquidacion.Params[1].Asdate := dtfecharecuado.date;
                                DataModule1.qryautoliquidacion.Params[2].AsString := dblbanco.KeyValue;
                                DataModule1.qryautoliquidacion.Params[3].AsFloat := strtofloat(edtvalircancelado.text);
                                DataModule1.qryautoliquidacion.Params[4].AsString := 'N';
                                DataModule1.qryautoliquidacion.RequestLive := true;
                                DataModule1.qryautoliquidacion.Open;
                                   if DataModule1.qryautoliquidacion.RecordCount = 1 then
                                   begin
                                  SHOWMESSAGE(LowerCase('Pago   conciliada  con la  autoliquidacion  ' + DataModule1.qryautoliquidacionEMP_NUMERO_DOC.value));
                                  edtplanilla.text := DataModule1.qryautoliquidacionEMP_NUMERO_DOC.value;
                                  DataModule1.qryautoliquidacion.Edit;
                                  conciliar := 'S';
                                  DataModule1.qryautoliquidacionCRU_CONCILIACION.Value := conciliar;
                                  DataModule1.qryautoliquidacion.Post;
                                  end;

                           end;

                    end;


                DataModule1.qryestrato.close;
                DataModule1.qryestrato.sql.clear;
                DataModule1.qryestrato.sql.add('INSERT INTO EST_BANCARIO_AUTO ( COD_BANCO, COD_SUCURSAL, NUM_DOCUMENTO, NUM_PLANILLA, FEC_RECAUDO, VAL_CONSIGNACION, TIP_MOVIMIENTO, EST_CONCILIACION)');
                DataModule1.qryestrato.sql.add(' VALUES ( :"COD_BANCO", :"COD_SUCURSAL", :"NUM_DOCUMENTO", :"NUM_PLANILLA", :"FEC_RECAUDO", :"VAL_CONSIGNACION", :"TIP_MOVIMIENTO", :"EST_CONCILIACION")');
                DataModule1.qryestrato.Params[0].AsString := TRIM(dblbanco.KeyValue);
                DataModule1.qryestrato.Params[1].AsString := TRIM(dblsucursal.KeyValue);
                DataModule1.qryestrato.Params[2].AsString := TRIM(editnitempresa.TEXT);
                DataModule1.qryestrato.Params[3].AsString := TRIM(edtplanilla.TEXT);
                DataModule1.qryestrato.Params[4].AsDATE := dtfecharecuado.Date;
                DataModule1.qryestrato.Params[5].AsFloat := StrToFloat(edtvalircancelado.TEXT);
                DataModule1.qryestrato.Params[6].AsString := 'CONSI';
                DataModule1.qryestrato.Params[7].AsString := conciliar;
                DataModule1.qryestrato.RequestLive := true;
                DataModule1.qryestrato.ExecSQL;
                DataModule1.dtbdatamec.Commit;
                limpiar;
                EXCEPT
                DATAMODULE1.DTBDATAMEC.ROLLBACK;
                SHOWMESSAGE(LowerCase('NO SE PUEDE  grabar  el pago '));
                RAISE;
                END;

                DataModule1.qryestrato.close;
                DataModule1.qryestrato.sql.clear;
                DataModule1.qryestrato.sql.add('SELECT *  FROM EST_BANCARIO_AUTO WHERE COD_BANCO = :"COD_BANCO" AND EST_CONCILIACION = :"ESTADO"');
                DataModule1.qryestrato.Params[0].AsString := TRIM(dblbanco.KeyValue);
                DataModule1.qryestrato.Params[1].AsString := 'N';
                DataModule1.qryestrato.Open;
                btnnuevo.Caption := '&Grabar';
               end;

    end;

procedure Tfrmdigitacionextractos.edtplanillaChange(Sender: TObject);
begin
  edtplanilla.Text := inttostr(strtoint(edtplanilla.text));

end;

procedure Tfrmdigitacionextractos.editnitempresaChange(Sender: TObject);
begin
editnitempresa.Text := UpperCase(trim(editnitempresa.text));
end;

procedure Tfrmdigitacionextractos.edtvalircanceladoExit(Sender: TObject);
begin
 IF strtoint(trim(edtvalircancelado.text)) = 0 then
   begin
   ShowMessage('El valor  de  la  consignacion  debe ser mayo que  cero');
   edtvalircancelado.SetFocus;
   end
end;

procedure Tfrmdigitacionextractos.DBGrid1CellClick(Column: TColumn);
begin
  if DataModule1.qryestratoCOD_SUCURSAL.Value <> '' then
  begin
   limpiar;
    btnnuevo.Enabled := FALSE;
    btncancelar.Caption :='&Eliminar';
    dblsucursal.KeyValue := DataModule1.qryestratoCOD_SUCURSAL.Value;
    editnitempresa.Text := DataModule1.qryestratoNUM_DOCUMENTO.Value;
    edtplanilla.Text := DataModule1.qryestratoNUM_PLANILLA.Value;
    dtfecharecuado.Date := DataModule1.qryestratoFEC_RECAUDO.Value;
    edtvalircancelado.Text := floattostr(DataModule1.qryestratoVAL_CONSIGNACION.Value);
      cbtipoconsignacion.TEXT := DataModule1.qryestratoTIP_MOVIMIENTO.Value;;
       DataModule1.qryempresas.Close;
       DataModule1.qryempresas.sql.clear;
       DataModule1.qryempresas.sql.Add ('SELECT * FROM EMPRESAS  WHERE   NUM_DOCUMENTO = :"NUMERO"');
       DataModule1.qryempresas.Params[0].AsString := TRIM(editnitempresa.Text);
       DataModule1.qryempresas.Open;
       IF DataModule1.qryempresas.RecordCount > 0 THEN
         Begin
           edtnombre.Text := DataModule1.qryempresasNOM_EMPRESA.Value;
         end;

  end;
end;

procedure Tfrmdigitacionextractos.dtfecharecuadoExit(Sender: TObject);
begin
 IF dtfecharecuado.Date > STRTODATE(GLDATE) THEN
   BEGIN
   ShowMessage('La fecha no puede  ser mayor al  dia   de  hoy');
   dtfecharecuado.Date := strtodate(gldate);
   dtfecharecuado.SetFocus;
   end;
end;

procedure Tfrmdigitacionextractos.limpiar;
begin
          btnnuevo.Enabled := TRUE;
          dblsucursal.KeyValue := '';
          editnitempresa.Text := '';
          edtplanilla.Text := '0';
          dtfecharecuado.Date := strtoDATE(GLDATE);
          edtvalircancelado.Text := '';
          edtnombre.Text := '';
          cbtipoconsignacion.TEXT := '';
          btnnuevo.Caption := '&Grabar';
          dblbanco.SetFocus;
end;

end.
