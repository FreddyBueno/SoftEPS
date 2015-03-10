unit upagonotasautoliquidacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, DB, ComCtrls,
  Buttons;

type
  Tfrmpagonotasautoliquidacion = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Image1: TImage;
    Label47: TLabel;
    Label48: TLabel;
    GroupBox2: TGroupBox;
    detalleincapacidad: TDataSource;
    dtsnotasrecaudo: TDataSource;
    GroupBox4: TGroupBox;
    Edit3: TEdit;
    Label4: TLabel;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    Edit4: TEdit;
    Edit6: TEdit;
    DateTimePicker1: TDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    btncancelar: TBitBtn;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Panel4: TPanel;
    Panel5: TPanel;
    procedure Edit1Exit(Sender: TObject);
    procedure detalle_incaoacidades;
     PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DateTimePicker1Exit(Sender: TObject);
    procedure DateTimePicker1Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure grabarnota;
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpagonotasautoliquidacion: Tfrmpagonotasautoliquidacion;

implementation

uses dtmodulo, Uprincipal, Uglobal;

{$R *.dfm}

procedure Tfrmpagonotasautoliquidacion.detalle_incaoacidades;
VAR I : INTEGER;
begin
     DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
     DATAMODULE1.QRYDETINCAPACIDAD.SQL.CLEAR;
     DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('SELECT * FROM DET_INCAPACIDAD WHERE NUM_INCAPACIDAD = :"INCAPACIDAD" and NUM_COMPROBANTE = :"COMPROBANTE"  AND PER_PAGO_INCAP <= :"PERIODO');
     DATAMODULE1.QRYDETINCAPACIDAD.PARAMS[0].ASSTRING := DATAMODULE1.qryincapacidadesNUM_INCAPACIDAD.Value;
     DATAMODULE1.QRYDETINCAPACIDAD.PARAMS[1].ASSTRING := '0';
     DATAMODULE1.QRYDETINCAPACIDAD.PARAMS[2].AsDate := STRTODATE('01/'+ GLPRESENTACION);
     DATAMODULE1.QRYDETINCAPACIDAD.OPEN;
     FOR I := 0 TO DATAMODULE1.QRYDETINCAPACIDAD.RecordCount -1 DO
      BEGIN
         DATAMODULE1.qrydetincapacidad.FindNext;
      END;


end;

procedure Tfrmpagonotasautoliquidacion.Edit1Exit(Sender: TObject);
begin
    IF (DBLookupComboBox1.TEXT <> '') AND (Edit1.Text <> '') THEN
    BEGIN
        DATAMODULE1.QRYEMPRESAS.DISABLECONTROLS;
        DATAMODULE1.QRYEMPRESAS.CLOSE;
        DATAMODULE1.QRYEMPRESAS.PARAMBYNAME('PTIPO').VALUE := TRIM(DBLookupComboBox1.TEXT);
        DATAMODULE1.QRYEMPRESAS.PARAMBYNAME('PNUMERO').VALUE := TRIM(Edit1.TEXT);
        DATAMODULE1.QRYEMPRESAS.OPEN;
        DATAMODULE1.QRYEMPRESAS.ENABLECONTROLS;
        IF DATAMODULE1.QRYEMPRESAS.RECORDCOUNT > 0 THEN
        BEGIN
                Edit2.TEXT := DATAMODULE1.qryempresasNOM_EMPRESA.Value;
                DATAMODULE1.qrynotasautoliquidacion.CLOSE;
                DATAMODULE1.qrynotasautoliquidacion.RequestLive := true;
                DATAMODULE1.qrynotasautoliquidacion.SQL.CLEAR;
                DATAMODULE1.qrynotasautoliquidacion.SQL.ADD('SELECT * FROM NOTAS_AUTOLIQUIDACION WHERE TIP_NOTA = :"TIPONOTA" AND NUM_COMP_DES IS NULL');
                IF Label47.Caption = 'NOTAS  CREDITO' THEN
                begin
                DATAMODULE1.qrynotasautoliquidacion.PARAMS[0].ASSTRING :='C';
                END
                ELSE
                IF Label47.Caption = 'NOTAS  DEBITO ' THEN
                begin
                DATAMODULE1.qrynotasautoliquidacion.PARAMS[0].ASSTRING :='D';
                END;
                DATAMODULE1.qrynotasautoliquidacion.Open;
                        IF DATAMODULE1.qrynotasautoliquidacion.RecordCount = 0 THEN
                        begin
                        ShowMessage(LowerCase('Esta Empresa No tiene ' + Label47.Caption + ' Pendientes '));
                        DBLookupComboBox1.SetFocus;
                        END
                        else
                        begin
                        DBGrid1.Enabled := true;
                        DBGrid1.SetFocus;
                        end;



         end
         else
         begin
         ShowMessage(LowerCase('La  empresa No existe '));
         btncancelar.Click;
         end;

    END
    ELSE
    BEGIN
     ShowMessage(LowerCase('Debe selecionar  el tipo y numero de  docuemnto del afiliado'));
     DBLookupComboBox1.setfocus;
    END;
end;

procedure Tfrmpagonotasautoliquidacion.APPMESSAGE(var MSG: TMSG;
  var HANDLED: BOOLEAN);
begin
 IF MSG.WPARAM = VK_RETURN THEN
       BEGIN
        IF ((SCREEN.ACTIVECONTROL) IS TCOMBOBOX) THEN
             MSG.WPARAM := VK_TAB;
            IF (((SCREEN.ACTIVECONTROL) IS TEDIT)) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TDBEDIT) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TDBLOOKUPCOMBOBOX) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TStringGrid) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TCheckBox) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TDateTimePicker) THEN
                MSG.WPARAM := VK_TAB;


       END;
end;

procedure Tfrmpagonotasautoliquidacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure Tfrmpagonotasautoliquidacion.FormCreate(Sender: TObject);
begin
APPLICATION.ONMESSAGE := APPMESSAGE;
GLPROCESO := Label47.Caption;
FRMPRINCIPAL.SB.PANELS[1].TEXT := 'PROCESO ABIERTO ACTUAL :'+ GLPROCESO;
DateTimePicker1.Date := strtodate(GLDATE);

end;

procedure Tfrmpagonotasautoliquidacion.DBLookupComboBox1Click(Sender: TObject);
begin
DBGrid1.Enabled := False;

end;

procedure Tfrmpagonotasautoliquidacion.DBGrid1DblClick(Sender: TObject);
begin
          IF MESSAGEDLG (LowerCase('descuento Nota  '+Label47.Caption +  'Por Valor de  ' +  Edit3.text + ' ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
           BEGIN
           Edit3.Text := '0';
           Edit7.Text := '0';
           Edit8.Text := '0';
           Edit8.Text := DATAMODULE1.qrynotasautoliquidacionNUM_PLANILLA.Value;
           Edit3.Text := floattostr(DATAMODULE1.qrynotasautoliquidacionVAL_NOTA.Value);
           Edit4.SetFocus;
          end;

end;

procedure Tfrmpagonotasautoliquidacion.DateTimePicker1Exit(Sender: TObject);
begin
if DateTimePicker1.Date > strtodate(GLDATE) then
begin
ShowMessage(LowerCase('La fecha No puede ser mayor '));
DateTimePicker1.SetFocus;
end;

end;

procedure Tfrmpagonotasautoliquidacion.DateTimePicker1Enter(Sender: TObject);
begin
DateTimePicker1.MinDate := (strtodate(gldate)-360);
end;

procedure Tfrmpagonotasautoliquidacion.BitBtn1Click(Sender: TObject);
begin

  IF (Edit3.TEXT = '') or (Edit4.TEXT = '')or (Edit3.TEXT = '0') or (Edit4.TEXT = '0') or (Edit6.TEXT = '0') or (Edit6.TEXT = '') THEN
   BEGIN
      if (Edit3.TEXT = '') or  (Edit3.TEXT = '0')  then
      begin
      ShowMessage(LowerCase('Dede Selecionar  la  nota   A Pagar'));
      Edit3.SetFocus;
      end;
      if (Edit4.TEXT = '') or  (Edit4.TEXT = '0') then
      begin
      ShowMessage(LowerCase('Ingrese  el Valor Pagado por Tesoreria'));
      Edit4.SetFocus;
      end;
      if (Edit6.TEXT = '') or  (Edit6.TEXT = '0') then
      begin
      ShowMessage(LowerCase('Ingrese  el Numero de Comprobante  De Tesoreria'));
      Edit6.SetFocus;
      end;
    exit
  end;

  IF STRTOFLOAT(Edit3.TEXT) <> STRTOFLOAT(Edit4.TEXT) THEN
        BEGIN
          ShowMessage(LowerCase('Existe  Diferencias  de  valores  en el pago' ));
          EXIT;
        end
        else
        begin
        grabarnota;
        end;



end;

procedure Tfrmpagonotasautoliquidacion.Edit6Change(Sender: TObject);
begin
if (Edit6.TEXT = '') then Edit6.Text := '0';

end;

procedure Tfrmpagonotasautoliquidacion.Edit4Change(Sender: TObject);
begin
if (Edit4.TEXT = '') then Edit4.Text := '0';
end;

procedure Tfrmpagonotasautoliquidacion.btncancelarClick(Sender: TObject);
var i : integer;
begin
      DATAMODULE1.QRYINCAPACIDADES.Close;
      DATAMODULE1.qrynotasautoliquidacion.Close;
      DATAMODULE1.QRYEMPRESAS.Close;


    BitBtn1.Enabled := false;
    Edit1.Text := '0';
    Edit2.Text := '';
    Edit3.Text := '0';
    Edit4.Text := '0';
  //  Edit5.Text := '0';
    Edit6.Text := '0';
    Edit7.Text := '0';
    Edit8.Text := '0';
    DateTimePicker1.Date := strtodate(GLDATE) + 1;
    DBLookupComboBox1.SetFocus;

end;

procedure Tfrmpagonotasautoliquidacion.Edit6Exit(Sender: TObject);
begin
      IF  Edit6.Text > '0' THEN
      BEGIN
      BitBtn1.Enabled := true;
      DATAMODULE1.qrynotasautoliquidacion.CLOSE;
      DATAMODULE1.qrynotasautoliquidacion.RequestLive := true;
      DATAMODULE1.qrynotasautoliquidacion.SQL.CLEAR;
      DATAMODULE1.qrynotasautoliquidacion.SQL.ADD('SELECT * FROM NOTAS_AUTOLIQUIDACION WHERE NUM_COMP_DES = :"NUMEROCOMPROBANTE"');
      DATAMODULE1.qrynotasautoliquidacion.Params[0].AsString := Edit6.Text;
      DATAMODULE1.qrynotasautoliquidacion.Open;
       IF DATAMODULE1.qrynotasautoliquidacion.RecordCount > 0 THEN
       BEGIN
        IF DATAMODULE1.qrynotasautoliquidacionFEC_DESCUENTO.Value <> DateTimePicker1.Date THEN
         ShowMessage(LowerCase('Este Numero de comprobante  ya  existe y fue  pagado en  la  fecha  '+ datetostr(DATAMODULE1.qrydetincapacidadFEC_PAGO_INCAP.Value)  + ' con la  incapacidad  ' + DATAMODULE1.qrydetincapacidadNUM_INCAPACIDAD.Value));
         BitBtn1.Enabled := false;
         Edit6.SetFocus;
       END
       else
       begin
       BitBtn1.SetFocus;
       end;


      END;
end;

procedure Tfrmpagonotasautoliquidacion.Edit4Exit(Sender: TObject);
begin
     IF STRTOFLOAT(Edit3.TEXT) <> STRTOFLOAT(Edit4.TEXT) THEN
        BEGIN
          ShowMessage(LowerCase('Existe  Diferencias  de  valores  en el pago' ));
          Edit4.text := '0';
          Edit4.SetFocus;
        end;
end;

procedure Tfrmpagonotasautoliquidacion.grabarnota;
begin
 DATAMODULE1.DTBDATAMEC.STARTTRANSACTION;
 DATAMODULE1.qrynotasautoliquidacion.CACHEDUPDATES := TRUE;
 TRY
      DATAMODULE1.qrynotasautoliquidacion.CLOSE;
      DATAMODULE1.qrynotasautoliquidacion.RequestLive := true;
      DATAMODULE1.qrynotasautoliquidacion.SQL.CLEAR;
      DATAMODULE1.qrynotasautoliquidacion.SQL.ADD('SELECT * FROM NOTAS_AUTOLIQUIDACION WHERE NUM_PLANILLA = :"NUMERO"');
      DATAMODULE1.qrynotasautoliquidacion.Params[0].AsString := Edit8.Text;
      DATAMODULE1.qrynotasautoliquidacion.Open;
         IF DATAMODULE1.qrynotasautoliquidacion.RecordCount = 1 THEN
         BEGIN
         DATAMODULE1.qrynotasautoliquidacion.Edit;
         DATAMODULE1.qrynotasautoliquidacionNUM_COMP_DES.Value := Edit6.TEXT;
         DATAMODULE1.qrynotasautoliquidacionFEC_DESCUENTO.Value := DateTimePicker1.Date;
         DATAMODULE1.qrynotasautoliquidacionTIP_DESCUENTO.Value := 'C';
         DATAMODULE1.qrynotasautoliquidacion.Post;
         DATAMODULE1.qrynotasautoliquidacion.CommitUpdates;


         END;
     DATAMODULE1.DTBDATAMEC.COMMIT;
     btncancelar.Click;
         EXCEPT
           DATAMODULE1.DTBDATAMEC.ROLLBACK;
           SHOWMESSAGE(LowerCase('No se puede grabar  el pago de la incapacidad'));
           RAISE;

      end;


end;

procedure Tfrmpagonotasautoliquidacion.DBGrid1CellClick(Column: TColumn);
begin
           Edit8.Text := DATAMODULE1.qrynotasautoliquidacionNUM_PLANILLA.Value;
           Edit3.Text := floattostr(DATAMODULE1.qrynotasautoliquidacionVAL_NOTA.Value);

end;

end.
