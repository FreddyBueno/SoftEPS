unit upagoincaptesoreria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, DB, ComCtrls,
  Buttons;

type
  Tfrmdesincaptesoreria = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label47: TLabel;
    Label48: TLabel;
    GroupBox2: TGroupBox;
    detalleincapacidad: TDataSource;
    dtsincapacidades: TDataSource;
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
    StringGrid1: TStringGrid;
    BitBtn1: TBitBtn;
    btncancelar: TBitBtn;
    Label9: TLabel;
    Label10: TLabel;
    procedure Edit1Exit(Sender: TObject);
    procedure incapacidades;
    procedure detalle_incaoacidades;
    procedure DBGrid1CellClick(Column: TColumn);
     PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DateTimePicker1Exit(Sender: TObject);
    procedure DateTimePicker1Enter(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure pago_incapacidad_tesoreria;
    procedure btncancelarClick(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdesincaptesoreria: Tfrmdesincaptesoreria;

implementation

uses dtmodulo, Uprincipal, Uglobal;

{$R *.dfm}

procedure Tfrmdesincaptesoreria.detalle_incaoacidades;
VAR I : INTEGER;
begin
     StringGrid1.Enabled := false;
     Edit3.Text := '0';
     Edit7.Text := '0';
      FOR I := 0 TO StringGrid1.ROWCOUNT DO
       BEGIN
                   StringGrid1.CELLS[0,I]:='';
                   StringGrid1.CELLS[1,I]:='';
                   StringGrid1.CELLS[2,I]:='';
                   StringGrid1.CELLS[3,I]:='';

        END;
    StringGrid1.ROWCOUNT := 2;
    StringGrid1.ROWCOUNT := 2;
    StringGrid1.FIXEDCOLS := 0;
    StringGrid1.FIXEDROWS := 1;
     WITH StringGrid1 DO
          BEGIN
        CELLS[0,0]:='Periodo';
        CELLS[1,0]:='Dias';
        CELLS[2,0]:='Valor Autorizado';
        END;
     DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
     DATAMODULE1.QRYDETINCAPACIDAD.SQL.CLEAR;
     DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('SELECT * FROM DET_INCAPACIDAD WHERE NUM_INCAPACIDAD = :"INCAPACIDAD" and NUM_COMPROBANTE = :"COMPROBANTE"  AND PER_PAGO_INCAP <= :"PERIODO');
     DATAMODULE1.QRYDETINCAPACIDAD.Parameters[0].VALUE := DATAMODULE1.qryincapacidadesNUM_INCAPACIDAD.Value;
     DATAMODULE1.QRYDETINCAPACIDAD.Parameters[1].VALUE := '0';
     DATAMODULE1.QRYDETINCAPACIDAD.Parameters[2].VALUE := STRTODATE('01/'+ GLPRESENTACION);
     DATAMODULE1.QRYDETINCAPACIDAD.OPEN;
     FOR I := 0 TO DATAMODULE1.QRYDETINCAPACIDAD.RecordCount -1 DO
      BEGIN
         StringGrid1.ROWCOUNT := StringGrid1.ROWCOUNT +1   ;
         StringGrid1.CELLS[0,I+1]:=DATETOSTR(DATAMODULE1.qrydetincapacidadPER_PAGO_INCAP.Value);
         StringGrid1.CELLS[1,I+1]:=FLOATToStr(DATAMODULE1.qrydetincapacidadDIA_PAGAR_INCAP.Value);
         StringGrid1.CELLS[2,I+1]:=FLOATToStr(DATAMODULE1.qrydetincapacidadVAL_PAGAR_INCAP.Value);
         DATAMODULE1.qrydetincapacidad.FindNext;
      END;


end;

procedure Tfrmdesincaptesoreria.Edit1Exit(Sender: TObject);
begin
    IF (DBLookupComboBox1.TEXT <> '') AND (Edit1.Text <> '') THEN
    BEGIN

        DATAMODULE1.QRYAFILIADOS.CLOSE;
        DATAMODULE1.QRYAFILIADOS.SQL.CLEAR;
        DATAMODULE1.QRYAFILIADOS.SQL.ADD('SELECT  TIP_DOCUMENTO_EMP, NUM_DOCUMENTO_EMP,TIP_DOCUMENTO_AFI, NUM_DOCUMENTO_AFI,PRI_APELLIDO,SEG_APELLIDO,PRI_NOMBRE,SEG_NOMBRE,VAL_SUELDO_AFIL,FEC_INGRESO_UNI,FEC_EGRESO_UNI,AFILIADOS_EMPRESAS.COD_ESTADO,FEC_NACIMIENTO,COD_SEXO,T1.COD_MODALIDAD_TRA');
        DATAMODULE1.QRYAFILIADOS.SQL.ADD('FROM AFILIADOS_EMPRESAS,AFILIADOS T1');
        DATAMODULE1.QRYAFILIADOS.SQL.ADD('WHERE TIP_DOCUMENTO_AFI = TIP_DOCUMENTO AND NUM_DOCUMENTO_AFI = NUM_DOCUMENTO AND TIP_DOCUMENTO_AFI = :"NIT" AND NUM_DOCUMENTO_AFI = :"DOCUMENTO"');
        DATAMODULE1.QRYAFILIADOS.Parameters[0].VALUE := TRIM(DBLookupComboBox1.TEXT);
        DATAMODULE1.QRYAFILIADOS.Parameters[1].VALUE := TRIM(Edit1.TEXT);
        DATAMODULE1.QRYAFILIADOS.OPEN;
        IF DATAMODULE1.QRYAFILIADOS.RECORDCOUNT > 0 THEN
        BEGIN
         Edit2.TEXT := DATAMODULE1.QRYAFILIADOSPRI_APELLIDO.VALUE + ' ' + DATAMODULE1.QRYAFILIADOSSEG_APELLIDO.VALUE + ' ' + DATAMODULE1.QRYAFILIADOSPRI_NOMBRE.VALUE + ' ' + DATAMODULE1.QRYAFILIADOSSEG_NOMBRE.VALUE;
         incapacidades;
         end
         else
         begin
         ShowMessage(LowerCase('El Afiliado  No existe '));
         btncancelar.Click;
         end;

     END
     ELSE
     ShowMessage(LowerCase('Debe selecionar  el tipo y numero de  documento del afiliado'));
     DBLookupComboBox1.setfocus;
end;

procedure Tfrmdesincaptesoreria.incapacidades;
begin
IF (DBLookupComboBox1.TEXT <> '') AND (Edit1.Text <> '') THEN
begin
     DATAMODULE1.QRYINCAPACIDADES.CLOSE;
     DATAMODULE1.QRYINCAPACIDADES.SQL.CLEAR;
     DATAMODULE1.QRYINCAPACIDADES.SQL.ADD('SELECT INCAPACIDADES.* FROM INCAPACIDADES');
     DATAMODULE1.QRYINCAPACIDADES.SQL.ADD('WHERE NUM_INCAPACIDAD IN (SELECT NUM_INCAPACIDAD FROM DET_INCAPACIDAD WHERE  NUM_COMPROBANTE = :"COMPROBANTE" AND PER_PAGO_INCAP <= :"FECHAPER") AND');
     DATAMODULE1.QRYINCAPACIDADES.SQL.ADD('AFI_TIPO_DOC = :"TIPO" AND AFI_NUMERO_DOC = :"NUMERO"');
     DATAMODULE1.QRYINCAPACIDADES.Parameters[0].VALUE := '0';
     DATAMODULE1.QRYINCAPACIDADES.Parameters[1].VALUE := STRTODATE('01/'+ GLPRESENTACION);
     DATAMODULE1.QRYINCAPACIDADES.Parameters[2].VALUE := DBLookupComboBox1.TEXT;
     DATAMODULE1.QRYINCAPACIDADES.Parameters[3].VALUE := Edit1.TEXT;
     DATAMODULE1.QRYINCAPACIDADES.OPEN;
     IF DATAMODULE1.QRYINCAPACIDADES.RecordCount = 0 THEN
        BEGIN
         ShowMessage(LowerCase('Este Afiliado  No tiene Incapacidades  Pendientes  de Pago a la  fecha'));
         Edit1.Text := '0';
         Edit2.Text := '0';
         DBLookupComboBox1.SetFocus;
         DBGrid1.Enabled := False;
         StringGrid1.Enabled := False;
         end
         ELSE
         BEGIN
         DBGrid1.Enabled := TRUE;
         StringGrid1.Enabled := TRUE;
         DBGrid1.SetFocus;
         END;
END;

end;

procedure Tfrmdesincaptesoreria.DBGrid1CellClick(Column: TColumn);
begin
detalle_incaoacidades
end;

procedure Tfrmdesincaptesoreria.APPMESSAGE(var MSG: TMSG;
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

procedure Tfrmdesincaptesoreria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure Tfrmdesincaptesoreria.FormCreate(Sender: TObject);
var i : integer;
begin
APPLICATION.ONMESSAGE := APPMESSAGE;
GLPROCESO := 'PAGO  DE INCAPACIDES  POR TESORERIA';
FRMPRINCIPAL.SB.PANELS[1].TEXT := 'PROCESO ABIERTO ACTUAL :'+ GLPROCESO;
DateTimePicker1.Date := strtodate(GLDATE);
      DATAMODULE1.QRYINCAPACIDADES.Close;
      DATAMODULE1.QRYINCAPACIDADES.Close;
      DATAMODULE1.QRYAFILIADOS.Close;
      FOR I := 0 TO StringGrid1.ROWCOUNT DO
           BEGIN
                         StringGrid1.CELLS[0,I]:='';
                         StringGrid1.CELLS[1,I]:='';
                         StringGrid1.CELLS[2,I]:='';
                         StringGrid1.CELLS[3,I]:='';

              END;
    StringGrid1.ROWCOUNT := 2;
    StringGrid1.ROWCOUNT := 2;
    StringGrid1.FIXEDCOLS := 0;
    StringGrid1.FIXEDROWS := 1;
        WITH StringGrid1 DO
        BEGIN
        CELLS[1,0]:='PERIODO';
        CELLS[3,0]:='VLR AUTORIZADO';
        CELLS[4,0]:='DIAS';
        end;


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


end;

procedure Tfrmdesincaptesoreria.DBGrid1ColEnter(Sender: TObject);
begin
detalle_incaoacidades
end;

procedure Tfrmdesincaptesoreria.DBLookupComboBox1Click(Sender: TObject);
begin
DBGrid1.Enabled := False;
StringGrid1.Enabled := False;
StringGrid1.Color := clSilver;

end;

procedure Tfrmdesincaptesoreria.DBGrid1DblClick(Sender: TObject);
var i : integer;
    valor : real;
begin
       if StringGrid1.ROWCOUNT = 3 then
       begin
          IF MESSAGEDLG (LowerCase('Solo Tiene Pendiente un pago Desea Pagarlo ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
           BEGIN
           Edit3.Text := '0';
           Edit7.Text := '0';
           Edit8.Text := '0';
           Edit8.Text := DATAMODULE1.qryincapacidadesNUM_INCAPACIDAD.Value;
            FOR I := 1 TO StringGrid1.ROWCOUNT -2 DO
            BEGIN
            Edit3.Text := FLOATTOSTR(STRTOFLOAT(Edit3.Text) +STRTOFLOAT(StringGrid1.CELLS[2,I]));
            END;
           ShowMessage(LowerCase('Valor Total de la Incapacidad  ' +  Edit3.text));
           Edit4.SetFocus;
          end;
       end
       else
       begin
          IF MESSAGEDLG (LowerCase('La Incapacidad Tiene  mas  de un pago Pendiente ¿Desea Selecionarlos Todos   ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
           BEGIN
              Edit3.Text := '0';
              Edit7.Text := '0';
              Edit8.Text := '0';

              Edit8.Text := DATAMODULE1.qryincapacidadesNUM_INCAPACIDAD.Value;

                  FOR I := 1 TO StringGrid1.ROWCOUNT -2 DO
                  BEGIN
                  Edit3.Text := FLOATTOSTR(STRTOFLOAT(Edit3.Text) +STRTOFLOAT(StringGrid1.CELLS[2,I]));
                  END;
                ShowMessage(LowerCase('Valor Total de la Incapacidad  ' +  Edit3.text));
                Edit4.SetFocus;
               end
               else
               BEGIN
               StringGrid1.Enabled := true;
               StringGrid1.Color := clMoneyGreen;
               StringGrid1.SetFocus;
               end;
            end;


end;

procedure Tfrmdesincaptesoreria.DBGrid2CellClick(Column: TColumn);
begin
Edit3.Text :=  floattostr(DATAMODULE1.qrydetincapacidadVAL_PAGAR_INCAP.Value);
Edit7.Text := datetostr(DATAMODULE1.qrydetincapacidadPER_PAGO_INCAP.Value);
end;

procedure Tfrmdesincaptesoreria.DateTimePicker1Exit(Sender: TObject);
begin
if DateTimePicker1.Date > strtodate(GLDATE) then
begin
ShowMessage(LowerCase('La fecha No puede ser mayor '));
DateTimePicker1.SetFocus;
end;

end;

procedure Tfrmdesincaptesoreria.DateTimePicker1Enter(Sender: TObject);
begin
DateTimePicker1.MinDate := (strtodate(gldate)-360);
end;

procedure Tfrmdesincaptesoreria.StringGrid1Click(Sender: TObject);
begin
   if (StringGrid1.CELLS[2,StringGrid1.Row]) > '0' then
   begin
        IF MESSAGEDLG (LowerCase('Desea  Selecionar  este Periodo  de Pagar ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
        BEGIN
        Edit7.Text := '0';
        Edit3.Text := '0';
        Edit3.Text := (StringGrid1.CELLS[2,StringGrid1.Row]);
        Edit7.Text := (StringGrid1.CELLS[0,StringGrid1.Row]);
        ShowMessage(LowerCase('Valor Total de la Incapacidad  ' +  Edit3.text));
        Edit4.SetFocus;


        end;
   end;
end;

procedure Tfrmdesincaptesoreria.BitBtn1Click(Sender: TObject);
begin

  IF (Edit3.TEXT = '') or (Edit4.TEXT = '')or (Edit3.TEXT = '0') or (Edit4.TEXT = '0') or (Edit6.TEXT = '0') or (Edit6.TEXT = '') THEN
   BEGIN
      if (Edit3.TEXT = '') or  (Edit3.TEXT = '0')  then
      begin
      ShowMessage(LowerCase('Dede Selecionar  la  Incapacidad Y el Valor A Pagar'));
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
        pago_incapacidad_tesoreria;
        end;



end;

procedure Tfrmdesincaptesoreria.Edit6Change(Sender: TObject);
begin
if (Edit6.TEXT = '') then Edit6.Text := '0';

end;

procedure Tfrmdesincaptesoreria.Edit4Change(Sender: TObject);
begin
if (Edit4.TEXT = '') then Edit4.Text := '0';
end;

procedure Tfrmdesincaptesoreria.pago_incapacidad_tesoreria;
var i: integer;
begin

    try
    DATAMODULE1.DTBDATAMEC.BeginTrans;
                FOR I := 1 TO StringGrid1.ROWCOUNT -2 DO
                BEGIN
                        if StringGrid1.CELLS[2,I] > '0' then
                        begin
                        DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
                        DATAMODULE1.QRYDETINCAPACIDAD.SQL.CLEAR;
                        DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('SELECT * FROM DET_INCAPACIDAD WHERE NUM_INCAPACIDAD = :"INCAPACIDAD" AND   PER_PAGO_INCAP= :"PERIODO" AND VAL_PAGAR_INCAP = :"VALOR" AND EST_DET_PLANILLA IS NULL ORDER BY PER_PAGO_INCAP');
                        DATAMODULE1.QRYDETINCAPACIDAD.Parameters[0].VALUE := Edit8.text;
                        if Edit7.Text <> '0' then
                         begin
                         DATAMODULE1.QRYDETINCAPACIDAD.Parameters[1].VALUE := Edit7.text;
                         end
                         else
                          DATAMODULE1.QRYDETINCAPACIDAD.Parameters[1].VALUE := StringGrid1.CELLS[0,I];
                          DATAMODULE1.QRYDETINCAPACIDAD.Parameters[2].VALUE := StrToInt(StringGrid1.CELLS[2,I]);
                          DATAMODULE1.QRYDETINCAPACIDAD.OPEN;
                                   IF DATAMODULE1.QRYDETINCAPACIDAD.RECORDCOUNT = 1 THEN
                                   BEGIN
                                   DATAMODULE1.QRYDETINCAPACIDAD.EDIT;
                                   DATAMODULE1.QRYDETINCAPACIDADTIP_PAGO_INCAP.VALUE := 'C';
                                   DATAMODULE1.QRYDETINCAPACIDADFEC_PAGO_INCAP.VALUE := (DateTimePicker1.date);
                                   DATAMODULE1.QRYDETINCAPACIDADNUM_COMPROBANTE.VALUE := Edit6.text;
                                   DATAMODULE1.QRYDETINCAPACIDADPER_PRESENTADO.VALUE := GLPRESENTACION;
                                   DATAMODULE1.QRYDETINCAPACIDADEST_DET_PLANILLA.VALUE := 'DES';
                                   DATAMODULE1.QRYDETINCAPACIDADVAL_DESCONTADO.VALUE := strtofloat(StringGrid1.CELLS[2,I]);
                                   DATAMODULE1.QRYDETINCAPACIDAD.POST;
                                   DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
                                   ENd;

                        end;
                end;

     DATAMODULE1.DTBDATAMEC.CommitTrans;
     btncancelar.Click;
         EXCEPT
           DATAMODULE1.DTBDATAMEC.RollbackTrans;
           SHOWMESSAGE(LowerCase('No se puede grabar  el pago de la incapacidad'));
           RAISE;

      end;


end;

procedure Tfrmdesincaptesoreria.btncancelarClick(Sender: TObject);
var i : integer;
begin
      DATAMODULE1.QRYINCAPACIDADES.Close;
      DATAMODULE1.QRYINCAPACIDADES.Close;
      DATAMODULE1.QRYAFILIADOS.Close;
      FOR I := 0 TO StringGrid1.ROWCOUNT DO
           BEGIN
                         StringGrid1.CELLS[0,I]:='';
                         StringGrid1.CELLS[1,I]:='';
                         StringGrid1.CELLS[2,I]:='';
                         StringGrid1.CELLS[3,I]:='';

              END;
    StringGrid1.ROWCOUNT := 2;
    StringGrid1.ROWCOUNT := 2;
    StringGrid1.FIXEDCOLS := 0;
    StringGrid1.FIXEDROWS := 1;
     WITH StringGrid1 DO
          BEGIN
        CELLS[0,0]:='Periodo';
        CELLS[1,0]:='Dias';
        CELLS[2,0]:='Valor Autorizado';
        END;



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

procedure Tfrmdesincaptesoreria.Edit6Exit(Sender: TObject);
begin
      IF  Edit6.Text > '0' THEN
      BEGIN
      BitBtn1.Enabled := true;
      DATAMODULE1.QRYDETINCAPACIDAD.CLOSE;
      DATAMODULE1.QRYDETINCAPACIDAD.SQL.CLEAR;
      DATAMODULE1.QRYDETINCAPACIDAD.SQL.ADD('SELECT * FROM DET_INCAPACIDAD  WHERE TIP_PAGO_INCAP = :"TIPO" AND NUM_COMPROBANTE = :"NUMERO"');
      DATAMODULE1.QRYDETINCAPACIDAD.Parameters[0].VALUE := 'C';
      DATAMODULE1.QRYDETINCAPACIDAD.Parameters[1].VALUE := Edit6.TEXT;
      DATAMODULE1.QRYDETINCAPACIDAD.OPEN;
       IF DATAMODULE1.QRYDETINCAPACIDAD.RecordCount > 0 THEN
       BEGIN
        IF DATAMODULE1.qrydetincapacidadFEC_PAGO_INCAP.Value <> DateTimePicker1.Date THEN
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

procedure Tfrmdesincaptesoreria.Edit4Exit(Sender: TObject);
begin
     IF STRTOFLOAT(Edit3.TEXT) <> STRTOFLOAT(Edit4.TEXT) THEN
        BEGIN
          ShowMessage(LowerCase('Existe  Diferencias  de  valores  en el pago' ));
          Edit4.text := '0';
          Edit4.SetFocus;
        end;
end;

procedure Tfrmdesincaptesoreria.FormActivate(Sender: TObject);
begin
WindowState := wsNormal;
top := 0;
Left := 0;

end;

end.
