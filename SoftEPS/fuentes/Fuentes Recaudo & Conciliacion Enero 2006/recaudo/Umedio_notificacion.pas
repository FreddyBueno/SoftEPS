unit Umedio_notificacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, Buttons, ComCtrls, DBCtrls,
  ExtCtrls;

type
  Tfrmmedio_notificacion = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    edtincapacidad: TEdit;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtguia: TEdit;
    cmbmedionot: TDBLookupComboBox;
    dtpfecnotificacion: TDateTimePicker;
    BitBtn1: TBitBtn;
    dtsincapacidad: TDataSource;
    qryincapacidades: TADOQuery;
    DBGrid1: TDBGrid;
    qrymedio: TADOQuery;
    dtsmedio: TDataSource;
    qryincapacidadesNUM_INCAPACIDAD: TStringField;
    qryincapacidadesTIP_INCAPACIDAD: TStringField;
    qryincapacidadesFEC_EXPEDICION: TDateTimeField;
    qryincapacidadesTIP_DOCEMPRESA: TStringField;
    qryincapacidadesNUM_DOCEMPRESA: TStringField;
    qryincapacidadesAFI_TIPO_DOC: TStringField;
    qryincapacidadesAFI_NUMERO_DOC: TStringField;
    qryincapacidadesCOD_DIAGNOSTICO: TStringField;
    qryincapacidadesCOD_PRESTADOR: TStringField;
    qryincapacidadesNOM_PRESTADOR: TStringField;
    qryincapacidadesDIA_INCAPACIDAD: TStringField;
    qryincapacidadesDIA_LIQUIDADOS: TStringField;
    qryincapacidadesFEC_INICIO: TDateTimeField;
    qryincapacidadesPRO_INCAPACIDAD: TStringField;
    qryincapacidadesSAL_BASE: TBCDField;
    qryincapacidadesPRO_SALARIO_LIQUI: TBCDField;
    qryincapacidadesVAL_INCAPACIDAD: TBCDField;
    qryincapacidadesEST_INCAPACIDAD: TStringField;
    qryincapacidadesCOD_REGIONAL: TStringField;
    qryincapacidadesCOD_OFICINA: TStringField;
    qryincapacidadesFEC_DIGITACION: TDateTimeField;
    qryincapacidadesTIP_DOC_USUARIO: TStringField;
    qryincapacidadesTIP_NUM_USUARIO: TStringField;
    qryincapacidadesFEC_TERMINACION: TDateTimeField;
    qryincapacidadesFEC_MODIFICACION: TDateTimeField;
    qryincapacidadesNO_PRORROGA: TStringField;
    qryincapacidadesTOT_DIAS_PRORROGA: TStringField;
    qryincapacidadesNUM_RECEPCION: TStringField;
    qryincapacidadesFEC_NOTIFICACION: TDateTimeField;
    qryincapacidadesMED_NOTIFICACION: TStringField;
    qryincapacidadesNO_GUIA: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure cmbmedionotClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtincapacidadExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmedio_notificacion: Tfrmmedio_notificacion;

implementation

uses dtmodulo, Uproceso, Uprincipal, Uglobal;

{$R *.dfm}

procedure Tfrmmedio_notificacion.BitBtn1Click(Sender: TObject);
begin

IF EDTINCAPACIDAD.Text <> '' THEN
BEGIN
  IF CMBMEDIONOT.TEXT<>'' THEN
  BEGIN
  IF (CMBMEDIONOT.Text='CORREO_CERTIFICADO') AND (EDTGUIA.Text<>'') THEN
  BEGIN
        QRYINCAPACIDADES.CLOSE;
        QRYINCAPACIDADES.Parameters[0].VALUE := EDTINCAPACIDAD.TEXT;
        QRYINCAPACIDADES.OPEN;
        IF QRYINCAPACIDADES.RECORDCOUNT > 0 THEN
        BEGIN
            IF QRYINCAPACIDADESMED_NOTIFICACION.Value<>'' THEN
            BEGIN
                IF MESSAGEDLG ('Desea  Modificar el medio de Notificación ?'+ ' Fecha de Notificación ' + DATETOSTR(QRYINCAPACIDADESFEC_NOTIFICACION.Value) + ' Medio De Notificación '+ QRYINCAPACIDADESMED_NOTIFICACION.Value, MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
                BEGIN
                TRY
                  DATAMODULE1.DTBDATAMEC.BeginTrans;
                  QRYINCAPACIDADES.EDIT;
                  //QRYINCAPACIDADESFEC_MODIFICACION.VALUE := STRTOdate(GLDATE);
                  QRYINCAPACIDADES.FIELDBYNAME('FEC_NOTIFICACION').VALUE :=DTPFECNOTIFICACION.DATE;
                  QRYINCAPACIDADES.FIELDBYNAME('MED_NOTIFICACION').VALUE :=CMBMEDIONOT.TEXT;
                  QRYINCAPACIDADES.FIELDBYNAME('NO_GUIA').VALUE :=EDTGUIA.TEXT;
                  QRYINCAPACIDADES.POST;
                  DATAMODULE1.DTBDATAMEC.CommitTrans;
                EXCEPT
                  DATAMODULE1.DTBDATAMEC.RollbackTrans;
                  SHOWMESSAGE(LowerCase('NO SE PUEDE  GRABAR LA INCAPACIDAD PORQUE  TIENE  ERRORES'));
                  FRMPROCESO.FREE;
                RAISE;
                END;//TRY
                END;
            END//MEDIO_NOTIFICACION
            ELSE
            BEGIN
                TRY
                  DATAMODULE1.DTBDATAMEC.BeginTrans;
                  QRYINCAPACIDADES.EDIT;
                  //QRYINCAPACIDADESFEC_MODIFICACION.VALUE := STRTOdate(GLDATE);
                  QRYINCAPACIDADES.FIELDBYNAME('FEC_NOTIFICACION').VALUE :=DTPFECNOTIFICACION.DATE;
                  QRYINCAPACIDADES.FIELDBYNAME('MED_NOTIFICACION').VALUE :=CMBMEDIONOT.TEXT;
                  QRYINCAPACIDADES.FIELDBYNAME('NO_GUIA').VALUE :=EDTGUIA.TEXT;
                  QRYINCAPACIDADES.POST;
                  DATAMODULE1.DTBDATAMEC.CommitTrans;
                EXCEPT
                  DATAMODULE1.DTBDATAMEC.RollbackTrans;
                  SHOWMESSAGE(LowerCase('NO SE PUEDE  GRABAR LA INCAPACIDAD PORQUE  TIENE  ERRORES'));
                  FRMPROCESO.FREE;
                RAISE;
                END;//TRY
            END
        END//QRYINCAPACIDADES
        ELSE
          BEGIN
            SHOWMESSAGE('Verifique el numero de incapacidad');
            EDTINCAPACIDAD.SetFocus;
          END
        END
  ELSE  //CORREO CERTIFICADO
        BEGIN
        IF CMBMEDIONOT.Text='CORREO_CERTIFICADO' THEN
        SHOWMESSAGE('Digite el numero de guia')
        END;
  END //MEDIO NOTIFICACION
  ELSE
  BEGIN
    SHOWMESSAGE('Digite el medio de Notificacion');
    CMBMEDIONOT.SetFocus;
    EXIT;
  END;



  IF (CMBMEDIONOT.TEXT<>'') AND  (CMBMEDIONOT.Text<>'CORREO_CERTIFICADO') THEN //DIFERENTE A CORREO CERIFICADO
  BEGIN
        QRYINCAPACIDADES.CLOSE;
        QRYINCAPACIDADES.Parameters[0].VALUE := EDTINCAPACIDAD.TEXT;
        QRYINCAPACIDADES.OPEN;
        IF QRYINCAPACIDADES.RECORDCOUNT > 0 THEN
            BEGIN
            IF QRYINCAPACIDADESMED_NOTIFICACION.Value<>'' THEN
                BEGIN
                IF MESSAGEDLG ('Desea  Modificar el medio de Notificación ?'+ ' Fecha de Notificación ' + DATETOSTR(QRYINCAPACIDADESFEC_NOTIFICACION.Value) + ' Medio De Notificación '+ QRYINCAPACIDADESMED_NOTIFICACION.Value, MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
                    BEGIN
                    TRY
                    DATAMODULE1.DTBDATAMEC.BeginTrans;
                    QRYINCAPACIDADES.EDIT;
                    //QRYINCAPACIDADESFEC_MODIFICACION.VALUE := STRTOdate(GLDATE);
                    QRYINCAPACIDADES.FIELDBYNAME('FEC_NOTIFICACION').VALUE :=DTPFECNOTIFICACION.DATE;
                    QRYINCAPACIDADES.FIELDBYNAME('MED_NOTIFICACION').VALUE :=CMBMEDIONOT.TEXT;
                    QRYINCAPACIDADES.FIELDBYNAME('NO_GUIA').VALUE :='';
                    QRYINCAPACIDADES.POST;
                    DATAMODULE1.DTBDATAMEC.CommitTrans;
                    EXCEPT
                    DATAMODULE1.DTBDATAMEC.RollbackTrans;
                    SHOWMESSAGE(LowerCase('NO SE PUEDE  GRABAR LA INCAPACIDAD PORQUE  TIENE  ERRORES'));
                    FRMPROCESO.FREE;
                    RAISE;
                    END;//TRY
                    END;
                END//medio notificacion <>''
             ELSE
                BEGIN
                TRY
                DATAMODULE1.DTBDATAMEC.BeginTrans;
                QRYINCAPACIDADES.EDIT;
                //QRYINCAPACIDADESFEC_MODIFICACION.VALUE := STRTOdate(GLDATE);
                QRYINCAPACIDADES.FIELDBYNAME('FEC_NOTIFICACION').VALUE :=DTPFECNOTIFICACION.DATE;
                QRYINCAPACIDADES.FIELDBYNAME('MED_NOTIFICACION').VALUE :=CMBMEDIONOT.TEXT;
                QRYINCAPACIDADES.FIELDBYNAME('NO_GUIA').VALUE :='';
                QRYINCAPACIDADES.POST;
                DATAMODULE1.DTBDATAMEC.CommitTrans;
                EXCEPT
                DATAMODULE1.DTBDATAMEC.RollbackTrans;
                SHOWMESSAGE(LowerCase('NO SE PUEDE  GRABAR LA INCAPACIDAD PORQUE  TIENE  ERRORES'));
                FRMPROCESO.FREE;
                END;
                END;
             END
        ELSE //RECORDCOUNT=0
        BEGIN
          SHOWMESSAGE('Verifique el numero de incapacidad');
          EDTINCAPACIDAD.SetFocus;
        END
  END
  ELSE IF (CMBMEDIONOT.TEXT='') THEN
  BEGIN
        SHOWMESSAGE('Digite el medio de Notificacion');
        CMBMEDIONOT.SetFocus;
  END
END
ELSE
  BEGIN
   SHOWMESSAGE('Digite un número de Incapacidad');
   EDTINCAPACIDAD.SETFOCUS;
  END
END;


procedure Tfrmmedio_notificacion.cmbmedionotClick(Sender: TObject);
begin
 IF CMBMEDIONOT.Text='CORREO_CERTIFICADO' THEN
 EDTGUIA.Enabled:=TRUE
 ELSE
 EDTGUIA.Enabled:=FALSE;
end;

procedure Tfrmmedio_notificacion.FormActivate(Sender: TObject);
begin
frmprincipal.Enabled:=False;
DTPFECNOTIFICACION.Date:=STRTODATE(GLDATE);
EDTGUIA.Text:='';
end;

procedure Tfrmmedio_notificacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmprincipal.Enabled:=true;
end;

procedure Tfrmmedio_notificacion.edtincapacidadExit(Sender: TObject);
begin
        QRYINCAPACIDADES.CLOSE;
        QRYINCAPACIDADES.Parameters[0].VALUE := EDTINCAPACIDAD.TEXT;
        QRYINCAPACIDADES.OPEN;
        IF QRYINCAPACIDADES.RECORDCOUNT > 0 THEN
        BEGIN
            IF QRYINCAPACIDADESMED_NOTIFICACION.Value<>'' THEN
            BEGIN
                showmessage('Esta incapacidad  tiene fecha de notificación '+ DATETOSTR(QRYINCAPACIDADES.FIELDBYNAME('FEC_NOTIFICACION').VALUE) + #13+ 'Medio de notificación ' + QRYINCAPACIDADESMED_NOTIFICACION.Value);
                DTPFECNOTIFICACION.Date:= QRYINCAPACIDADESFEC_NOTIFICACION.Value;
                IF QRYINCAPACIDADESMED_NOTIFICACION.Value = 'CORREO_CERTIFICADO' THEN
                   CMBMEDIONOT.KeyValue  := 'CORREO_CERTIFICADO'
                   ELSE IF QRYINCAPACIDADESMED_NOTIFICACION.Value = 'E_MAIL' THEN
                        CMBMEDIONOT.KeyValue  := 'E_MAIL'
                        ELSE IF QRYINCAPACIDADESMED_NOTIFICACION.Value = 'VISITA_POSTVENTA' THEN
                             CMBMEDIONOT.KeyValue  := 'VISITA_POSTVENTA'
                             ELSE IF QRYINCAPACIDADES.FieldByName('MED_NOTIFICACION').Value = 'ENTREGADO' THEN
                                  CMBMEDIONOT.KeyValue := 'ENTREGADO';
                IF QRYINCAPACIDADESMED_NOTIFICACION.Value = 'CORREO_CERTIFICADO' THEN
                   EDTGUIA.Text := QRYINCAPACIDADESNO_GUIA.Value
                ELSE
                   EDTGUIA.Text := '';

            END
        END;
            IF (QRYINCAPACIDADES.RECORDCOUNT = 0) OR (QRYINCAPACIDADESMED_NOTIFICACION.Value='') THEN
            BEGIN
               CMBMEDIONOT.KeyValue := -1;
               EDTGUIA.Text :='';
            END
        
END;

end.
