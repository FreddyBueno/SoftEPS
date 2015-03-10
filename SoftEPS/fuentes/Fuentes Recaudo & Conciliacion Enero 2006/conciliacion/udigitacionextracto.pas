unit udigitacionextracto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, jpeg;

type
  Tfrmdigitacionextractos = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
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
    cbtipoconsignacion: TComboBox;
    btnmodificar: TBitBtn;
    edtobservacion: TEdit;
    Lbobservacion: TLabel;
    Label9: TLabel;
    cbtipoconsignacionIncap: TComboBox;
    Label10: TLabel;
    dblregional: TDBLookupComboBox;
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
    procedure FormActivate(Sender: TObject);
    procedure btnmodificarClick(Sender: TObject);
    procedure dblbancoExit(Sender: TObject);
    procedure dblsucursalExit(Sender: TObject);

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
dtfecharecuado.Date :=STRTODATE('20/06/2001');//  STRTODATE(GLDATE);
btnmodificar.Enabled := False;
lbobservacion.Visible := false;
edtobservacion.Visible := false;
CBTIPOCONSIGNACIONiNCAP.Visible := FALSE;
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
       DataModule1.qrysucursales.sql.Add ('SELECT * FROM SUCURSALES_BANCOS_CONTRV WHERE CODBANCO = :"BANCO"');
       DataModule1.qrysucursales.Parameters[0].VALUE := dblbanco.KeyValue;
       DataModule1.qrysucursales.Open;

       DataModule1.qryestrato.Close;
       DataModule1.qryestrato.sql.clear;
       DataModule1.qryestrato.sql.Add ('SELECT * FROM EST_BANCARIO_AUTO WHERE COD_BANCO = :"BANCO" AND EST_CONCILIACION  = :"ESTADO"');
       DataModule1.qryestrato.Parameters[0].VALUE := dblbanco.KeyValue;
       DataModule1.qryestrato.Parameters[1].VALUE := 'N';
       DataModule1.qryestrato.Open;

  end
 else
 begin
 ShowMessage('Seleccione  el banco para  Cotinuar');
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
       DataModule1.qryempresas.Parameters[0].VALUE := TRIM(editnitempresa.Text);
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
if trim(edtplanilla.Text) <> '' then
begin
       if  strtoint(TRIM(edtplanilla.text)) > 0 then
        begin
        //******************************
        Datamodule1.qryestrato.Close;
        Datamodule1.qryestrato.SQL.Clear;
        Datamodule1.qryestrato.SQL.Add('SELECT * FROM EST_BANCARIO_AUTO WHERE NUM_PLANILLA= :PLANILLA');
        Datamodule1.qryestrato.Parameters[0].Value:=trim(edtplanilla.Text);
        Datamodule1.qryestrato.Open;
        //******************************
        DataModule1.qryautoliquidacion.close;
        DataModule1.qryautoliquidacion.sql.clear;
        DataModule1.qryautoliquidacion.sql.add('SELECT *  FROM AUTOLIQUIDACION WHERE NUM_PLANILLA = :"PLANILLA" AND ((CRU_CONCILIACION = :"S")  OR (CRU_CONCILIACION IS NULL)) AND COD_BANCO = :"BANCO"');
        //DataModule1.qryautoliquidacion.sql.add('SELECT *  FROM AUTOLIQUIDACION WHERE NUM_PLANILLA = :"PLANILLA" AND ((CRU_CONCILIACION <> :"S")  OR (CRU_CONCILIACION IS NULL)) AND COD_BANCO = :"BANCO"');
        DataModule1.qryautoliquidacion.Parameters[0].VALUE := TRIM(edtplanilla.Text);
        DataModule1.qryautoliquidacion.Parameters[1].VALUE := 'S';
        DataModule1.qryautoliquidacion.Parameters[2].VALUE := dblbanco.KeyValue;
        DataModule1.qryautoliquidacion.open;
         IF DataModule1.qryautoliquidacion.RecordCount = 1 THEN
         Begin
         dtfecharecuado.Date :=  DataModule1.qryautoliquidacionFEC_PAGO.Value;
         edtvalircancelado.TEXT := FLOATTOSTR(DataModule1.qryautoliquidacionVAL_EFECTIVO.Value + DataModule1.qryautoliquidacionVAL_CHEQUE.Value);
         editnitempresa.Text :=  DataModule1.qryautoliquidacionEMP_NUMERO_DOC.Value;
         //cbtipoconsignacion.text := DataModule1.qryestratoTIP_MOVIMIENTO.Value;//'CONSI';
         IF DBLBANCO.Text <> 'INCAPACIDADES' THEN
          cbtipoconsignacion.text := DataModule1.qryestratoTIP_MOVIMIENTO.Value//'CONSI';
         ELSE
          cbtipoconsignacionINCAP.text := DataModule1.qryestratoTIP_MOVIMIENTO.Value;;//'CONSI';

         DataModule1.qryempresas.Close;
         DataModule1.qryempresas.sql.clear;
         DataModule1.qryempresas.sql.Add ('SELECT * FROM EMPRESAS  WHERE   NUM_DOCUMENTO = :"NUMERO"');
         DataModule1.qryempresas.Parameters[0].VALUE := TRIM(editnitempresa.Text);
         DataModule1.qryempresas.Open;
         IF DataModule1.qryempresas.RecordCount > 0 THEN
         Begin
         edtnombre.Text := DataModule1.qryempresasNOM_EMPRESA.Value;
         end;
         ShowMessage('El Número  del planilla ya esta  conciliada');
         btnnuevo.Enabled :=False;
         btnmodificar.Enabled:=False;
         btncancelar.Caption :='&Cancelar';
         end
         else
             begin
              if datamodule1.qryestrato.RecordCount=0 then
              begin
              //ShowMessage('El Número  del planilla No  esta  digitada o ya esta  conciliada');
              end;
             end;
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
                    DataModule1.dtbdatamec.BeginTrans;
                    DataModule1.qryestrato.close;
                    DataModule1.qryestrato.sql.clear;
                    //DataModule1.qryestrato.sql.add('DELETE FROM EST_BANCARIO_AUTO  WHERE  COD_BANCO = :"COD_BANCO" AND COD_SUCURSAL = :"COD_SUCURSAL" AND NUM_DOCUMENTO = :"NUM_DOCUMENTO"');
                    //DataModule1.qryestrato.sql.add(' AND NUM_PLANILLA = :"NUM_PLANILLA" AND FEC_RECAUDO = :"FEC_RECAUDO" AND VAL_CONSIGNACION = :"VAL_CONSIGNACION" AND TIP_MOVIMIENTO = :"TIP_MOVIMIENTO" AND  EST_CONCILIACION =:"EST_CONCILIACION"');
                    DataModule1.qryestrato.sql.add('DELETE FROM EST_BANCARIO_AUTO  WHERE  COD_BANCO = :"COD_BANCO" AND COD_SUCURSAL = :"COD_SUCURSAL" AND NUM_DOCUMENTO = :"NUM_DOCUMENTO"');
                    DataModule1.qryestrato.sql.add(' AND NUM_PLANILLA = :"NUM_PLANILLA" AND FEC_RECAUDO = :"FEC_RECAUDO" AND VAL_CONSIGNACION = :"VAL_CONSIGNACION" AND  EST_CONCILIACION =:"EST_CONCILIACION"');
                    DataModule1.qryestrato.Parameters[0].VALUE := TRIM(dblbanco.KeyValue);
                    DataModule1.qryestrato.Parameters[1].VALUE := TRIM(dblsucursal.KeyValue);
                    DataModule1.qryestrato.Parameters[2].VALUE := TRIM(editnitempresa.TEXT);
                    DataModule1.qryestrato.Parameters[3].VALUE := TRIM(edtplanilla.TEXT);
                    DataModule1.qryestrato.Parameters[4].Value := FormatDateTime('dd/mm/yy', dtfecharecuado.Date);
                    DataModule1.qryestrato.Parameters[5].Value := StrToFloat(edtvalircancelado.TEXT);
                    //DataModule1.qryestrato.Parameters[6].VALUE := TRIM(CBTIPOCONSIGNACION.Text)'S';//'CONSI';
                    DataModule1.qryestrato.Parameters[6].VALUE := 'N';
                    DataModule1.qryestrato.ExecSQL;
                    DataModule1.dtbdatamec.CommitTrans;
                    limpiar;
                    EXCEPT
                    DATAMODULE1.DTBDATAMEC.RollbackTrans;
                    SHOWMESSAGE(LowerCase('NO SE PUEDE  grabar  el pago '));

                    RAISE;
                    END;

                DataModule1.qryestrato.close;
                DataModule1.qryestrato.sql.clear;
                DataModule1.qryestrato.sql.add('SELECT *  FROM EST_BANCARIO_AUTO WHERE COD_BANCO = :"COD_BANCO" AND EST_CONCILIACION = :"ESTADO"');
                DataModule1.qryestrato.Parameters[0].VALUE := TRIM(dblbanco.KeyValue);
                DataModule1.qryestrato.Parameters[1].VALUE := 'N';
                DataModule1.qryestrato.Open;
                btnnuevo.Enabled := true;
                btnnuevo.Caption := '&Grabar';
                btncancelar.Caption :=  '&Cancelar';
                btnmodificar.Enabled := False;

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

    if FormatDateTime('dd/mm/yy', dtfecharecuado.Date) > FormatDateTime('dd/mm/yy', strtodate(gldate)) then
    begin
    ShowMessage('Digite  la fecha  de  recaudo  registrada  por el banco ');
    dtfecharecuado.SetFocus;
    exit
    end;


    if edtvalircancelado.Text=''  then //if strtoint(trim(edtvalircancelado.Text))  = 0  then
    begin
    ShowMessage('Digite  el valor del recaudo  registrada  por el banco  ');
    edtvalircancelado.SetFocus;
    exit
    end;


    if (strtoint(trim(edtvalircancelado.Text))  = 0)  AND (DBLBANCO.Text<>'INCAPACIDADES') then
    begin
    ShowMessage('Digite  el valor del recaudo  registrada  por el banco  ');
    edtvalircancelado.SetFocus;
    exit
    end;

   

    if (TRIM(cbtipoconsignacion.TEXT) = '') AND (TRIM(CBTIPOCONSIGNACIONINCAP.TEXT) = '')then
    begin
    ShowMessage('Seleccione  tipo de Movimiento');
    IF  DBLBANCO.TEXT <> 'INCAPACIDADES' THEN
    BEGIN
    cbtipoconsignacion.SetFocus;
    exit;
    END
    ELSE
    BEGIN
    cbtipoconsignacionINCAP.SetFocus;
    exit;
    END;
    end;
            if btnnuevo.Caption = '&Grabar' then
            begin
               conciliar := 'N';
               try
                DataModule1.dtbdatamec.BeginTrans;
                // verificar el  pago  para  conciliar
                  DataModule1.qryautoliquidacion.Close;
                  DataModule1.qryautoliquidacion.SQL.Clear;
                  DataModule1.qryautoliquidacion.sql.Add('SELECT * FROM AUTOLIQUIDACION  WHERE  NUM_PLANILLA  = :"PLANILLA" AND ');
                  DataModule1.qryautoliquidacion.sql.Add('EMP_NUMERO_DOC = :"NIT" AND FEC_PAGO = :"FECHA" AND ');
                  DataModule1.qryautoliquidacion.sql.Add('COD_BANCO =:"BANCO" AND VAL_EFECTIVO+VAL_CHEQUE = :"VALOR" AND');
                  DataModule1.qryautoliquidacion.sql.Add('((CRU_CONCILIACION = :"ESTADO") OR (CRU_CONCILIACION IS NULL)) ');
                  DataModule1.qryautoliquidacion.Parameters[0].VALUE := trim(edtplanilla.text);
                  DataModule1.qryautoliquidacion.Parameters[1].VALUE := trim(editnitempresa.text);
                  DataModule1.qryautoliquidacion.Parameters[2].Value := FormatDateTime('dd/mm/yy', dtfecharecuado.Date);
                  DataModule1.qryautoliquidacion.Parameters[3].VALUE := dblbanco.KeyValue;
                  DataModule1.qryautoliquidacion.Parameters[4].VALUE := strtofloat(edtvalircancelado.text);
                  DataModule1.qryautoliquidacion.Parameters[5].VALUE := 'N';
                  DataModule1.qryautoliquidacion.Open;
                    if DataModule1.qryautoliquidacion.RecordCount =1 then
                    begin
                    SHOWMESSAGE(LowerCase('Recaudo   conciliado  con la  planilla  de autoliquidacion  ' + DataModule1.qryautoliquidacionNUM_PLANILLA.value));
                    DataModule1.qryautoliquidacion.Edit;
                    //conciliar := 'S';
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
                        DataModule1.qryautoliquidacion.Parameters[0].VALUE := trim(editnitempresa.text);
                        DataModule1.qryautoliquidacion.Parameters[1].Value := FormatDateTime('dd/mm/yy', dtfecharecuado.Date);
                        DataModule1.qryautoliquidacion.Parameters[2].VALUE := dblbanco.KeyValue;
                        DataModule1.qryautoliquidacion.Parameters[3].VALUE := strtofloat(edtvalircancelado.text);
                        DataModule1.qryautoliquidacion.Parameters[4].VALUE := 'N';
                        DataModule1.qryautoliquidacion.Open;
                            if DataModule1.qryautoliquidacion.RecordCount = 1 then
                            begin
                            SHOWMESSAGE(LowerCase('Recaudo   conciliada  con  el aporte  de  la  empresa    ' + DataModule1.qryautoliquidacionNUM_PLANILLA.value));
                            edtplanilla.text := DataModule1.qryautoliquidacionNUM_PLANILLA.value;
                            DataModule1.qryautoliquidacion.Edit;
                            //conciliar := 'S';
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
                                DataModule1.qryautoliquidacion.Parameters[0].VALUE := trim(edtplanilla.text);
                                DataModule1.qryautoliquidacion.Parameters[1].VALUE := FormatDateTime('dd/mm/yy', dtfecharecuado.Date);
                                DataModule1.qryautoliquidacion.Parameters[2].VALUE := dblbanco.KeyValue;
                                DataModule1.qryautoliquidacion.Parameters[3].VALUE := strtofloat(edtvalircancelado.text);
                                DataModule1.qryautoliquidacion.Parameters[4].VALUE := 'N';
                                DataModule1.qryautoliquidacion.Open;
                                   if DataModule1.qryautoliquidacion.RecordCount = 1 then
                                   begin
                                  SHOWMESSAGE(LowerCase('Pago   conciliada  con la  autoliquidacion  ' + DataModule1.qryautoliquidacionEMP_NUMERO_DOC.value));
                                  edtplanilla.text := DataModule1.qryautoliquidacionEMP_NUMERO_DOC.value;
                                  DataModule1.qryautoliquidacion.Edit;
                                  //conciliar := 'S';
                                  DataModule1.qryautoliquidacionCRU_CONCILIACION.Value := conciliar;
                                  DataModule1.qryautoliquidacion.Post;
                                  end;

                           end;

                    end;

                //******************Verificacion que no se repitan numero de planillas****************
                Datamodule1.qryestrato.Close;
                Datamodule1.qryestrato.SQL.Clear;
                Datamodule1.qryestrato.SQL.Add('SELECT * FROM EST_BANCARIO_AUTO WHERE NUM_PLANILLA= :PLANILLA');
                Datamodule1.qryestrato.Parameters[0].Value :=TRIM(edtplanilla.TEXT);
                Datamodule1.qryestrato.Open;
                if Datamodule1.qryestrato.RecordCount=0 then
                Begin
                //*******************
                DataModule1.qryestrato.close;
                DataModule1.qryestrato.sql.clear;
                DataModule1.qryestrato.sql.add('INSERT INTO EST_BANCARIO_AUTO ( COD_BANCO, COD_SUCURSAL, NUM_DOCUMENTO, NUM_PLANILLA, FEC_RECAUDO, VAL_CONSIGNACION, TIP_MOVIMIENTO, EST_CONCILIACION)');
                DataModule1.qryestrato.sql.add(' VALUES ( :"COD_BANCO", :"COD_SUCURSAL", :"NUM_DOCUMENTO", :"NUM_PLANILLA", :"FEC_RECAUDO", :"VAL_CONSIGNACION", :"TIP_MOVIMIENTO", :"EST_CONCILIACION")');
                DataModule1.qryestrato.Parameters[0].VALUE := TRIM(dblbanco.KeyValue);
                DataModule1.qryestrato.Parameters[1].VALUE := TRIM(dblsucursal.KeyValue);
                DataModule1.qryestrato.Parameters[2].VALUE := TRIM(editnitempresa.TEXT);
                DataModule1.qryestrato.Parameters[3].VALUE := TRIM(edtplanilla.TEXT);
                DataModule1.qryestrato.Parameters[4].Value := FormatDateTime('dd/mm/yy', dtfecharecuado.Date);
                DataModule1.qryestrato.Parameters[5].VALUE := StrToFloat(edtvalircancelado.TEXT);
                IF DBLBANCO.Text <> 'INCAPACIDADES' THEN
                DataModule1.qryestrato.Parameters[6].VALUE := TRIM(CBTIPOCONSIGNACION.Text)//'CONSI';
                ELSE
                DataModule1.qryestrato.Parameters[6].VALUE := TRIM(CBTIPOCONSIGNACIONINCAP.Text);//'CONSI';
                DataModule1.qryestrato.Parameters[7].VALUE := conciliar;
                DataModule1.qryestrato.ExecSQL;
                DataModule1.dtbdatamec.CommitTrans;
                limpiar;
                End
                Else
                Begin
                Showmessage(LowerCase('ESTE NUMERO DE PLANILLA YA FUE DIGITADO Y  NO ES POSIBLE REPETIRLO'));
                exit;
                End

                EXCEPT
                DATAMODULE1.DTBDATAMEC.RollbackTrans;
                SHOWMESSAGE(LowerCase('NO SE PUEDE  grabar  el pago '));
                RAISE;
                END;

                DataModule1.qryestrato.close;
                DataModule1.qryestrato.sql.clear;
                DataModule1.qryestrato.sql.add('SELECT *  FROM EST_BANCARIO_AUTO WHERE COD_BANCO = :"COD_BANCO" AND EST_CONCILIACION = :"ESTADO"');
                DataModule1.qryestrato.Parameters[0].VALUE := TRIM(dblbanco.KeyValue);
                DataModule1.qryestrato.Parameters[1].VALUE := 'N';
                DataModule1.qryestrato.Open;
                btnnuevo.Caption := '&Grabar';
               end;

    end;

procedure Tfrmdigitacionextractos.edtplanillaChange(Sender: TObject);
begin
  edtplanilla.Text := inttostr(strtoint(TRIM(edtplanilla.text)));

end;

procedure Tfrmdigitacionextractos.editnitempresaChange(Sender: TObject);
begin
editnitempresa.Text := UpperCase(trim(editnitempresa.text));
end;

procedure Tfrmdigitacionextractos.edtvalircanceladoExit(Sender: TObject);
begin
IF TRIM(EDTVALIRCANCELADO.TEXT)<>'' THEN
BEGIN
 IF (strtoint(trim(edtvalircancelado.text)) = 0)  AND (DBLBANCO.Text<>'INCAPACIDADES') THEN
   begin
   ShowMessage('El valor  de la  consignacion  debe ser diferente a  cero');
   edtvalircancelado.SetFocus;
   end
   ELSE IF DBLBANCO.Text='INCAPACIDADES' THEN
   BEGIN
    CBTIPOCONSIGNACIONINCAP.Visible:=TRUE;
 END
END;
END;

procedure Tfrmdigitacionextractos.DBGrid1CellClick(Column: TColumn);
begin
  if DataModule1.qryestratoCOD_SUCURSAL.Value <> '' then
  begin
   limpiar;
    btnnuevo.Enabled := FALSE;
    btncancelar.Caption :='&Eliminar';
    btnmodificar.Enabled := True;
    DBLBANCO.KeyValue := DATAMODULE1.qryestratoCOD_BANCO.Value;
    //****************
       DataModule1.qrysucursales.Close;
       DataModule1.qrysucursales.sql.clear;
       DataModule1.qrysucursales.sql.Add ('SELECT * FROM SUCURSALES_BANCOS_CONTRV WHERE CODBANCO = :"BANCO" AND CODSUCURSAL = :"SUCURSAL"');
       DataModule1.qrysucursales.Parameters[0].VALUE := dblbanco.KeyValue;
       DataModule1.qrysucursales.Parameters[1].VALUE := DataModule1.qryestratoCOD_SUCURSAL.Value;
       DataModule1.qrysucursales.Open;
    //****************
    dblsucursal.KeyValue := DataModule1.qryestratoCOD_SUCURSAL.Value;
    dblregional.KeyValue := DataModule1.qrysucursalesCOD_REGIONAL.Value;
    //****************
       DataModule1.qrysucursales.Close;
       DataModule1.qrysucursales.sql.clear;
       DataModule1.qrysucursales.sql.Add ('SELECT * FROM SUCURSALES_BANCOS_CONTRV WHERE CODBANCO = :"BANCO"');
       DataModule1.qrysucursales.Parameters[0].VALUE := dblbanco.KeyValue;
       DataModule1.qrysucursales.Open;
    //****************
    editnitempresa.Text := trim(DataModule1.qryestratoNUM_DOCUMENTO.Value);
    edtplanilla.Text := trim(DataModule1.qryestratoNUM_PLANILLA.Value);
    dtfecharecuado.Date := DataModule1.qryestratoFEC_RECAUDO.Value;
    edtvalircancelado.Text := floattostr(DataModule1.qryestratoVAL_CONSIGNACION.Value);
    //IF DBLBANCO.Text <> 'INCAPACIDADES' THEN
          cbtipoconsignacion.TEXT := DataModule1.qryestratoTIP_MOVIMIENTO.Value;
    //ELSE
          cbtipoconsignacionINCAP.TEXT := DataModule1.qryestratoTIP_MOVIMIENTO.Value;
    if Datamodule1.qryestratoMODIFICACION.Value<>'' then
    BEGIN
        lbobservacion.Visible := TRUE;
        edtobservacion.Visible := TRUE;
        frmdigitacionextractos.Height:=490;
        edtobservacion.Text:=trim(Datamodule1.qryestratoMODIFICACION.Value);
    END;
    //**********************
    frmdigitacionextractos.edtplanillaExit(nil);
    //**********************


       DataModule1.qryempresas.Close;
       DataModule1.qryempresas.sql.clear;
       DataModule1.qryempresas.sql.Add ('SELECT * FROM EMPRESAS  WHERE   NUM_DOCUMENTO = :"NUMERO"');
       DataModule1.qryempresas.Parameters[0].VALUE := TRIM(editnitempresa.Text);
       DataModule1.qryempresas.Open;
       IF DataModule1.qryempresas.RecordCount > 0 THEN
         Begin
           edtnombre.Text := DataModule1.qryempresasNOM_EMPRESA.Value;
         end;

  end;
end;

procedure Tfrmdigitacionextractos.dtfecharecuadoExit(Sender: TObject);
begin
 IF FormatDateTime('dd/mm/yy', dtfecharecuado.Date) > FormatDateTime('dd/mm/yy', STRTODATE(GLDATE)) THEN
   BEGIN
   ShowMessage('La fecha no puede  ser mayor al  dia   de  hoy');
   dtfecharecuado.Date := strtodate(gldate);
   dtfecharecuado.SetFocus;
   end;
end;

procedure Tfrmdigitacionextractos.limpiar;
begin
          btnnuevo.Enabled := TRUE;
          btnmodificar.Enabled := False;
          dblsucursal.KeyValue := '';
          dblregional.KeyValue := '';
          editnitempresa.Text := '';
          edtplanilla.Text := '0';
          dtfecharecuado.Date :=STRTODATE('20/06/2001'); //strtoDATE(GLDATE);
          edtvalircancelado.Text := '';
          edtnombre.Text := '';
          cbtipoconsignacion.TEXT := '';
          cbtipoconsignacionINCAP.TEXT := '';
          btnnuevo.Caption := '&Grabar';
          dblbanco.SetFocus;
          if lbobservacion.Visible = true then
          begin
          lbobservacion.Visible := false;
          edtobservacion.Visible := false;
          frmdigitacionextractos.Height:=440;
          end;

end;

procedure Tfrmdigitacionextractos.FormActivate(Sender: TObject);
begin
WindowState := wsNormal;
top := 0;
Left := 0;
end;

procedure Tfrmdigitacionextractos.btnmodificarClick(Sender: TObject);
begin
if lbobservacion.Visible = true then
begin
lbobservacion.Visible := false;
edtobservacion.Visible := false;
frmdigitacionextractos.Height:=440;
//******************************

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

    if FormatDateTime('dd/mm/yy', dtfecharecuado.Date) > FormatDateTime('dd/mm/yy', strtodate(gldate)) then
        begin
    ShowMessage('Digite  la fecha  de  recaudo  registrada  por el banco ');
    dtfecharecuado.SetFocus;
    exit
    end;

    if (strtoint(trim(edtvalircancelado.Text))  = 0)  AND (DBLBANCO.Text<>'INCAPACIDADES') then
        begin
    ShowMessage('Digite  el valor del recaudo  registrada  por el banco  ');
    edtvalircancelado.SetFocus;
    exit
    end;

    if (TRIM(cbtipoconsignacion.TEXT) = '') OR (TRIM(cbtipoconsignacionINCAP.TEXT) = '') then
    begin
    ShowMessage('Seleccione  tipo de Movimiento');
    cbtipoconsignacion.SetFocus;
    exit
    end;


//******************************
    Datamodule1.qrymodificarextracto.Close;
    Datamodule1.qrymodificarextracto.Parameters[0].Value :=trim(dblbanco.KeyValue);
    Datamodule1.qrymodificarextracto.Parameters[1].Value :=trim(dblsucursal.KeyValue);
    Datamodule1.qrymodificarextracto.Parameters[2].Value :=trim(editnitempresa.Text);
    Datamodule1.qrymodificarextracto.Parameters[3].Value :=trim(edtplanilla.Text);
    Datamodule1.qrymodificarextracto.Parameters[4].Value :=FormatDateTime('dd/mm/yy', dtfecharecuado.Date);
    Datamodule1.qrymodificarextracto.Parameters[5].Value :=strtofloat(edtvalircancelado.text);
    //Datamodule1.qrymodificarextracto.Parameters[6].Value :=TRIM(CBTIPOCONSIGNACION.Text);
    IF DBLBANCO.Text <> 'INCAPACIDADES' THEN
          Datamodule1.qrymodificarextracto.Parameters[6].Value :=TRIM(CBTIPOCONSIGNACION.Text)
    ELSE
          Datamodule1.qrymodificarextracto.Parameters[6].Value :=TRIM(CBTIPOCONSIGNACIONINCAP.Text);
    Datamodule1.qrymodificarextracto.Parameters[7].Value :=TRIM(EDTOBSERVACION.Text);
    Datamodule1.qrymodificarextracto.Parameters[8].Value :=STRTODATE(GLDATE);
    Datamodule1.qrymodificarextracto.Parameters[9].Value :=GLNUMERO;
    Datamodule1.qrymodificarextracto.Parameters[10].Value :=trim(edtplanilla.Text);
    Datamodule1.qrymodificarextracto.ExecSQL;
    Datamodule1.qryestrato.Close;
    Datamodule1.qryestrato.Open; 
    limpiar;
end
else
begin
lbobservacion.Visible := true;
edtobservacion.Visible := true;
frmdigitacionextractos.Height:=490;

end
end;

procedure Tfrmdigitacionextractos.dblbancoExit(Sender: TObject);
begin
IF DBLBANCO.Text ='' THEN
BEGIN

SHOWMESSAGE('Escoja un Banco antes de Continuar');
DBLBANCO.SetFocus;
exit;
END;
IF DBLBANCO.Text ='INCAPACIDADES' THEN
BEGIN
cbtipoconsignacionINCAP.Visible := TRUE;
cbtipoconsignacion.Visible := FALSE;
END
ELSE
IF DBLBANCO.Text <> '' THEN
BEGIN
cbtipoconsignacion.Visible := TRUE;
cbtipoconsignacionINCAP.Visible := FALSE;
END;
DBLSUCURSAL.SetFocus;
end;

procedure Tfrmdigitacionextractos.dblsucursalExit(Sender: TObject);
begin
  //****************
       DataModule1.qrysucursales.Close;
       DataModule1.qrysucursales.sql.clear;
       DataModule1.qrysucursales.sql.Add ('SELECT * FROM SUCURSALES_BANCOS_CONTRV WHERE CODBANCO = :BANCO AND CODSUCURSAL = :SUCURSAL');
       DataModule1.qrysucursales.Parameters[0].VALUE := dblbanco.KeyValue;
       DataModule1.qrysucursales.Parameters[1].VALUE := dblsucursal.KeyValue;
       DataModule1.qrysucursales.Open;
    //****************
    dblregional.KeyValue := DataModule1.qrysucursalesCOD_REGIONAL.Value;
    //****************
       DataModule1.qrysucursales.Close;
       DataModule1.qrysucursales.sql.clear;
       DataModule1.qrysucursales.sql.Add ('SELECT * FROM SUCURSALES_BANCOS_CONTRV WHERE CODBANCO = :"BANCO"');
       DataModule1.qrysucursales.Parameters[0].VALUE := dblbanco.KeyValue;
       DataModule1.qrysucursales.Open;
    //****************
end;

end.
