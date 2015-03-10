unit Uplanillas_sinanexos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBCtrls, Mask, Buttons, DB, ADODB,
  ComCtrls;

type
  TFrmplanillas_sinanexos = class(TForm)
    Panel7: TPanel;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label21: TLabel;
    Label56: TLabel;
    GroupBox1: TGroupBox;
    BTNBORRARPLA: TBitBtn;
    nuevaplanilla: TBitBtn;
    GroupBox4: TGroupBox;
    Label37: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label42: TLabel;
    lbfechapago: TLabel;
    Label6: TLabel;
    Label49: TLabel;
    Label44: TLabel;
    Label50: TLabel;
    Label41: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label52: TLabel;
    cbtipodocempresa: TComboBox;
    ednumero: TEdit;
    Button3: TButton;
    edtnombreempresa: TEdit;
    edtperiodo: TMaskEdit;
    msperpresentacion: TMaskEdit;
    cbtipoaportante: TComboBox;
    edtdigito: TEdit;
    edtultimafechapago: TEdit;
    Edit23: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    dtfechapago: TMaskEdit;
    cbtipodeclaracion: TEdit;
    GroupBox5: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    cbbanco: TDBLookupComboBox;
    edtcuenta: TEdit;
    edtvalefectivo: TEdit;
    edtvalcheque: TEdit;
    edttotalconsignado: TEdit;
    sgdetabanco: TStringGrid;
    btngrabarplanilla: TBitBtn;
    edtplanilla: TEdit;
    Edit1: TEdit;
    qrymovbancario: TADOQuery;
    qrymovbancarioCOD_BANCO: TStringField;
    qrymovbancarioCOD_SUCURSAL: TStringField;
    qrymovbancarioNUM_DOCUMENTO: TStringField;
    qrymovbancarioNUM_PLANILLA: TStringField;
    qrymovbancarioFEC_RECAUDO: TDateTimeField;
    qrymovbancarioVAL_CONSIGNACION: TBCDField;
    qrymovbancarioTIP_MOVIMIENTO: TStringField;
    qrymovbancarioEST_CONCILIACION: TStringField;
    qrymovbancarioFEC_PLANILLA_CON: TDateTimeField;
    qrymovbancarioFEC_RECEPCION: TDateTimeField;
    qryempresas: TADOQuery;
    qryempresasTIP_DOCUMENTO: TStringField;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    chkcorreccion: TCheckBox;
    correccion: TGroupBox;
    Label53: TLabel;
    EDTNPLACORRECION: TEdit;
    Label11: TLabel;
    dtpfechapago: TDateTimePicker;
    Label12: TLabel;
    dtfechapagoc: TEdit;
    Label13: TLabel;
    msperpresentacionc: TMaskEdit;
    Label14: TLabel;
    edtperiodocomp: TMaskEdit;
    procedure edtplanillaChange(Sender: TObject);
    procedure edtplanillaEnter(Sender: TObject);
    procedure edtplanillaExit(Sender: TObject);
    procedure edtplanillaKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure cbtipodocempresaChange(Sender: TObject);
    procedure ednumeroChange(Sender: TObject);
    procedure ednumeroEnter(Sender: TObject);
    PROCEDURE FECHAS_PAGO;
    PROCEDURE GUARDAR_PLANILLA;
    PROCEDURE LIMPIAR_PLANILLA;
    procedure ednumeroExit(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure edtperiodoExit(Sender: TObject);
    procedure btngrabarplanillaClick(Sender: TObject);
    procedure cbbancoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure edtvalefectivoExit(Sender: TObject);
    PROCEDURE cargar_movimiento;
    procedure FormCreate(Sender: TObject);
    procedure edtvalchequeExit(Sender: TObject);
    procedure chkcorreccionExit(Sender: TObject);
    procedure EDTNPLACORRECIONExit(Sender: TObject);
    procedure dtpfechapagoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmplanillas_sinanexos: TFrmplanillas_sinanexos;

implementation

uses dtmodulo, Uplanillas, Uprincipal, Uempresas, Uglobal, Uproceso;

{$R *.dfm}

procedure TFrmplanillas_sinanexos.edtplanillaChange(Sender: TObject);
begin
Edit22.Text :=  trim(EDTPLANILLA.TEXT);
end;

procedure TFrmplanillas_sinanexos.edtplanillaEnter(Sender: TObject);
begin
  IF trim(EDTPLANILLA.TEXT) = '' THEN
  BEGIN
  LIMPIAR_PLANILLA;
  END;
end;

procedure TFrmplanillas_sinanexos.edtplanillaExit(Sender: TObject);

var numeroplanilla : string;
BEGIN
    IF TRIM(EDTPLANILLA.TEXT) = '' THEN
    BEGIN
    EDTPLANILLA.setfocus;
    exit;
    end;
    //VERIFICACION DEL NUMERO DE PLANILLA EN L0S MOVIMIENTOS BANCARIOS

    DATAMODULE1.qryestrato.CLOSE;
    DATAMODULE1.qryestrato.SQL.CLEAR;
    DATAMODULE1.qryestrato.SQL.ADD('SELECT * FROM EST_BANCARIO_AUTO  WHERE  NUM_PLANILLA = :"PLANILLA"');
    DATAMODULE1.qryestrato.Parameters[0].VALUE := TRIM(FRMPLANILLAS_SINANEXOS.EDTPLANILLA.TEXT);
    DATAMODULE1.qryestrato.OPEN;
    IF DATAMODULE1.qryestrato.RECORDCOUNT = 0 THEN
    BEGIN
      SHOWMESSAGE(LowerCase('ESTA PLANILLA NO SE PUEDE INGRESAR PORQUE NO PRESENTA MOVIMIENTOS BANCARIOS'));
      GROUPBOX4.Enabled:=FALSE;
      LIMPIAR_PLANILLA;
      EDTPLANILLA.SetFocus;
    END;

    //*********************
    EDTPLANILLA.TEXT := TRIM(EDTPLANILLA.TEXT);
    IF TRIM(EDTPLANILLA.TEXT) > '0' THEN
    BEGIN
    FRMPRINCIPAL.TOOLBAR1.Enabled := true;
    IF (CBTIPODOCEMPRESA.ITEMINDEX = -1) AND ((TRIM(EDNUMERO.TEXT) = '0') OR (TRIM(EDNUMERO.TEXT) = '')) THEN
    BEGIN
    DATAMODULE1.QRYAUTOLIQUIDACION.CLOSE;
    DATAMODULE1.QRYAUTOLIQUIDACION.SQL.CLEAR;
    DATAMODULE1.QRYAUTOLIQUIDACION.SQL.ADD('SELECT * FROM AUTOLIQUIDACION  WHERE  NUM_PLANILLA = :"PLANILLA"');
    DATAMODULE1.QRYAUTOLIQUIDACION.Parameters[0].VALUE := TRIM(EDTPLANILLA.TEXT);
    DATAMODULE1.QRYAUTOLIQUIDACION.OPEN;
        IF DATAMODULE1.QRYAUTOLIQUIDACION.RECORDCOUNT > 0 THEN
           BEGIN
              SHOWMESSAGE('Esta planilla ya fue digitada');
              LIMPIAR_PLANILLA;
              EDTPLANILLA.SetFocus;
              GROUPBOX4.Enabled:=FALSE;
           END
        ELSE
        GROUPBOX4.Enabled:=TRUE;
    END;
    END;

    IF  EDTPLANILLA.TEXT = '0' THEN
    BEGIN
    SHOWMESSAGE(LowerCase('DIGITE  EL NUMERO DE PLANILLA A  DIGITAR'));
    LIMPIAR_PLANILLA;
    EDTPLANILLA.SETFOCUS;
    END;
  END;


procedure TFrmplanillas_sinanexos.edtplanillaKeyPress(Sender: TObject;
  var Key: Char);
begin
IF NOT (KEY IN ['0'..'9',#8])THEN
  BEGIN
  KEY := #0;
  SHOWMESSAGE(LowerCase('DIGITE SOLO NUMEROS'));
  END;
end;

procedure TFrmplanillas_sinanexos.Edit1Exit(Sender: TObject);
begin
  if trim(edtplanilla.text) <> trim(EDit1.Text) then
  begin
    MessageDlg('Error  en el  numero de  planilla  digitela nuevamente ', mtError,[mbOk], 0);
    Edit1.Text := '';
    edtplanilla.SetFocus;
  end;
//Cargar datos movimiento
  qrymovbancario.Close;
  qrymovbancario.Parameters[0].Value:=trim(Edit1.Text);
  qrymovbancario.Open;
  if qrymovbancario.RecordCount>0 then
  begin
    {qryempresas.Close;
    qryempresas.Parameters[0].Value:=qrymovbancarioNum_documento.Value;
    qryempresas.Open;
    if qryempresas.RecordCount>0 then
    begin
      if qryempresas.RecordCount=1 then //Verifica que el numero de documento este solo una vez
      begin
        IF QRYEMPRESASTIP_DOCUMENTO.TEXT = 'NIT' THEN
        BEGIN
          CBTIPODOCEMPRESA.ITEMINDEX := 1;
        END
        ELSE IF QRYEMPRESASTIP_DOCUMENTO.TEXT = 'CC' THEN
             BEGIN
              CBTIPODOCEMPRESA.ITEMINDEX := 0;
             END
             ELSE IF QRYEMPRESASTIP_DOCUMENTO.TEXT = 'CE' THEN
               BEGIN
                CBTIPODOCEMPRESA.ITEMINDEX := 2;
               END
               ELSE IF QRYEMPRESASTIP_DOCUMENTO.TEXT = 'TI' THEN
                  BEGIN
                     CBTIPODOCEMPRESA.ITEMINDEX := 3;
                  END
                  ELSE IF QRYEMPRESASTIP_DOCUMENTO.TEXT = 'PS' THEN
                     BEGIN
                       CBTIPODOCEMPRESA.ITEMINDEX := 4;
                     END;

          EDNUMERO.TEXT := qrymovbancarioNum_documento.Value;
          //EDNUMEROEXIT(nil);
          cbtipodocempresaChange(NIL);
          EDNUMERO.SetFocus;
        end
        //else //qrtempresas es mayor a 1
      end
      else
      begin
        showmessage('Verifique el documento de la empresa');
        ednumero.SetFocus;
      end;}
      cargar_movimiento;
      CBTIPODOCEMPRESA.SetFocus;
    end
    else
    begin
      showmessage('La Planilla No presenta movimientos bancarios');
      edit1.SetFocus;
    end;

end;



procedure TFrmplanillas_sinanexos.cbtipodocempresaChange(Sender: TObject);
begin
 Edit18.Text :=  cbtipodocempresa.Text;
end;

procedure TFrmplanillas_sinanexos.ednumeroChange(Sender: TObject);
begin
 Edit19.Text := ednumero.Text;
end;

procedure TFrmplanillas_sinanexos.ednumeroEnter(Sender: TObject);
begin
 IF (EDNUMERO.Text = '') or (EDNUMERO.Text = '0') then
  begin
   if trim(edtplanilla.text) <> trim(EDit1.Text) then
    begin
    MessageDlg('Error  en el  numero de  planilla  digitela nuevamente ', mtError,[mbOk], 0);
    Edit1.Text := '';
    edtplanilla.SetFocus;
    exit;
    end;
   end;
end;



PROCEDURE TFRMPLANILLAS_SINANEXOS.FECHAS_PAGO;
VAR  DIAPAGO,MES,ANO : STRING;
DAYS: ARRAY[1..7] OF STRING;
ADATE: TDATETIME;
BEGIN
   DATAMODULE1.QRYTIPOS.DISABLECONTROLS;
    DATAMODULE1.QRYTIPOS.CLOSE;
    IF  CBTIPOAPORTANTE.ITEMINDEX = 0 THEN
    BEGIN
    DATAMODULE1.QRYTIPOS.Parameters[0].VALUE := 'G';
    DATAMODULE1.QRYTIPOS.Parameters[1].VALUE := TRIM(EDTDIGITO.TEXT);
    END;
    IF  CBTIPOAPORTANTE.ITEMINDEX = 1 THEN
    BEGIN
        DATAMODULE1.QRYTIPOS.Parameters[0].VALUE := 'P';
        DATAMODULE1.QRYTIPOS.Parameters[1].VALUE := TRIM(EDTDIGITO.TEXT);
    END;

    DATAMODULE1.QRYTIPOS.OPEN;
    DATAMODULE1.QRYTIPOS.ENABLECONTROLS;
    IF DATAMODULE1.QRYTIPOS.RECORDCOUNT > 0 THEN
    BEGIN
        DIAPAGO := TRIM(DATAMODULE1.QRYTIPOSDIA_HABIL.TEXT);
        MES:=(FORMATDATETIME('MM',STRTODATETIME(DTFECHAPAGO.Text)));
        ANO:=(FORMATDATETIME('YYYY',STRTODATETIME(DTFECHAPAGO.Text)));
        DAYS[1] := 'DOMINGO';
        DAYS[2] := 'LUNES';
        DAYS[3] := 'MARTES';
        DAYS[4] := 'MIERCOLES';
        DAYS[5] := 'JUEVES';
        DAYS[6] := 'VIERNES';
        DAYS[7] := 'SABADO';
        ADATE := STRTODATE('01/'+ MES + '/' + ANO);
        // CUANDO  SON DOS  DIAS HABILES
        IF DIAPAGO = '4' THEN
        BEGIN
           IF DAYS[DAYOFWEEK(ADATE )] = 'LUNES' THEN
           BEGIN
           EDTULTIMAFECHAPAGO.TEXT := ('04/'+ MES + '/' + ANO);
           END
           ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'MARTES' THEN
                BEGIN
                EDTULTIMAFECHAPAGO.TEXT := ('04/'+ MES + '/' + ANO);
                END
                ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'MIERCOLES' THEN
                        BEGIN
                        EDTULTIMAFECHAPAGO.TEXT := ('06/'+ MES + '/' + ANO);
                        END
                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'JUEVES' THEN
                        BEGIN
                        EDTULTIMAFECHAPAGO.TEXT := ('06/'+ MES + '/' + ANO);
                        END
                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'VIERNES' THEN
                                BEGIN
                                EDTULTIMAFECHAPAGO.TEXT := ('06/'+ MES + '/' + ANO);
                                END
                                ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'SABADO' THEN
                                        BEGIN
                                        EDTULTIMAFECHAPAGO.TEXT := ('06/'+ MES + '/' + ANO);
                                        END
                                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'DOMINGO' THEN
                                                BEGIN
                                                EDTULTIMAFECHAPAGO.TEXT := ('05/'+ MES + '/' + ANO);
                                                END;
        //SHOWMESSAGE(LowerCase(' IS A ' + DAYS[DAYOFWEEK(ADATE)]);
        //EDTULTIMAFECHAPAGO.TEXT := (EDTULTIMAFECHAPAGO.TEXT+ '/'+ MES + '/' + ANO);
        END;
        // CUANDO  SON  CINCO DIAS  HABILES
        IF DIAPAGO = '5' THEN
        BEGIN
           IF DAYS[DAYOFWEEK(ADATE )] = 'LUNES' THEN
           BEGIN
           EDTULTIMAFECHAPAGO.TEXT := ('05/'+ MES + '/' + ANO);
           END
           ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'MARTES' THEN
                BEGIN
                EDTULTIMAFECHAPAGO.TEXT := ('07/'+ MES + '/' + ANO);
                END
                ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'MIERCOLES' THEN
                        BEGIN
                        EDTULTIMAFECHAPAGO.TEXT := ('07/'+ MES + '/' + ANO);
                        END
                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'JUEVES' THEN
                        BEGIN
                        EDTULTIMAFECHAPAGO.TEXT := ('07/'+ MES + '/' + ANO);
                        END
                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'VIERNES' THEN
                                BEGIN
                                EDTULTIMAFECHAPAGO.TEXT := ('07/'+ MES + '/' + ANO);
                                END
                                ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'SABADO' THEN
                                        BEGIN
                                        EDTULTIMAFECHAPAGO.TEXT := ('07/'+ MES + '/' + ANO);
                                        END
                                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'DOMINGO' THEN
                                                BEGIN
                                                EDTULTIMAFECHAPAGO.TEXT := ('06/'+ MES + '/' + ANO);
                                                END;
        END;
        // CUANDO  SON SEIS DIAS HABILES
        IF DIAPAGO = '6' THEN
        BEGIN
           IF DAYS[DAYOFWEEK(ADATE )] = 'LUNES' THEN
           BEGIN
           EDTULTIMAFECHAPAGO.TEXT := ('08/'+ MES + '/' + ANO);
           END
           ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'MARTES' THEN
                BEGIN
                EDTULTIMAFECHAPAGO.TEXT := ('08/'+ MES + '/' + ANO);
                END
                ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'MIERCOLES' THEN
                        BEGIN
                        EDTULTIMAFECHAPAGO.TEXT := ('08/'+ MES + '/' + ANO);
                        END
                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'JUEVES' THEN
                        BEGIN
                        EDTULTIMAFECHAPAGO.TEXT := ('08/'+ MES + '/' + ANO);
                        END
                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'VIERNES' THEN
                                BEGIN
                                EDTULTIMAFECHAPAGO.TEXT := ('08/'+ MES + '/' + ANO);
                                END
                                ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'SABADO' THEN
                                        BEGIN
                                        EDTULTIMAFECHAPAGO.TEXT := ('10/'+ MES + '/' + ANO);
                                        END
                                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'DOMINGO' THEN
                                                BEGIN
                                                EDTULTIMAFECHAPAGO.TEXT := ('09/'+ MES + '/' + ANO);
                                                END;
        END;

        // SEPTIMO DIA  DE  PAGO
        IF DIAPAGO = '7' THEN
        BEGIN
           IF DAYS[DAYOFWEEK(ADATE )] = 'LUNES' THEN
           BEGIN
           EDTULTIMAFECHAPAGO.TEXT := ('09/'+ MES + '/' + ANO);
           END
           ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'MARTES' THEN
                BEGIN
                EDTULTIMAFECHAPAGO.TEXT := ('09/'+ MES + '/' + ANO);
                END
                ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'MIERCOLES' THEN
                        BEGIN
                        EDTULTIMAFECHAPAGO.TEXT := ('09/'+ MES + '/' + ANO);
                        END
                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'JUEVES' THEN
                        BEGIN
                        EDTULTIMAFECHAPAGO.TEXT := ('09/'+ MES + '/' + ANO);
                        END
                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'VIERNES' THEN
                                BEGIN
                                EDTULTIMAFECHAPAGO.TEXT := ('11/'+ MES + '/' + ANO);
                                END
                                ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'SABADO' THEN
                                        BEGIN
                                        EDTULTIMAFECHAPAGO.TEXT := ('11/'+ MES + '/' + ANO);
                                        END
                                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'DOMINGO' THEN
                                                BEGIN
                                                EDTULTIMAFECHAPAGO.TEXT := ('10/'+ MES + '/' + ANO);
                                                END;
        END;

        // PAGOS  EL NOVENO DIA  HABIL
      IF DIAPAGO = '8' THEN
        BEGIN
           IF DAYS[DAYOFWEEK(ADATE )] = 'LUNES' THEN
           BEGIN
           EDTULTIMAFECHAPAGO.TEXT := ('10/'+ MES + '/' + ANO);
           END
           ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'MARTES' THEN
                BEGIN
                EDTULTIMAFECHAPAGO.TEXT := ('10/'+ MES + '/' + ANO);
                END
                ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'MIERCOLES' THEN
                        BEGIN
                        EDTULTIMAFECHAPAGO.TEXT := ('10/'+ MES + '/' + ANO);
                        END
                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'JUEVES' THEN
                        BEGIN
                        EDTULTIMAFECHAPAGO.TEXT := ('12/'+ MES + '/' + ANO);
                        END
                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'VIERNES' THEN
                                BEGIN
                                EDTULTIMAFECHAPAGO.TEXT := ('11/'+ MES + '/' + ANO);
                                END
                                ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'SABADO' THEN
                                        BEGIN
                                        EDTULTIMAFECHAPAGO.TEXT := ('12/'+ MES + '/' + ANO);
                                        END
                                        ELSE IF DAYS[DAYOFWEEK(ADATE )] = 'DOMINGO' THEN
                                                BEGIN
                                                EDTULTIMAFECHAPAGO.TEXT := ('12/'+ MES + '/' + ANO);
                                                END;
        END;

    END;
END;


procedure TFrmplanillas_sinanexos.ednumeroExit(Sender: TObject);
VAR NUMERO,MES,ANO : STRING;
    CANTIDAD : INTEGER;
BEGIN

  IF (EDNUMERO.Text = '') or (EDNUMERO.Text = '0') then
  begin
  SHOWMESSAGE(LowerCase('Digite o Seleccione  la  empresa'));
   Button3.SetFocus;
   exit;
   end;



 IF (EDNUMERO.TEXT <> '')  AND  (CBTIPODOCEMPRESA.TEXT <> '')THEN
 BEGIN
    IF EDNUMERO.TEXT <> '0' THEN
    BEGIN

    ESTADO_PLANILLA := '';
    DATAMODULE1.QRYEMPRESAS.CLOSE;
    DATAMODULE1.QRYEMPRESAS.Parameters[0].VALUE := TRIM(CBTIPODOCEMPRESA.TEXT);
    DATAMODULE1.QRYEMPRESAS.Parameters[1].VALUE := TRIM(EDNUMERO.TEXT);
    DATAMODULE1.QRYEMPRESAS.OPEN;
        IF DATAMODULE1.QRYEMPRESAS.RECORDCOUNT > 0 THEN
        BEGIN
         DTFECHAPAGO.Text:=DATAMODULE1.qryestratoFEC_RECAUDO.Text;
         ///************
         DTFECHAPAGOC.Text := DATETOSTR(DATAMODULE1.qryautoliquidacionFEC_PAGO.VALUE);
         
         EDTNOMBREEMPRESA.TEXT := DATAMODULE1.QRYEMPRESASNOM_EMPRESA.VALUE;
         Edit21.TEXT := DATAMODULE1.QRYEMPRESASNOM_EMPRESA.VALUE;
         Edit23.TEXT := DATAMODULE1.qryempresasDIR_EMPRESA.VALUE;
           DBLookupComboBox1.KeyValue :=  DATAMODULE1.qryempresasCOD_DEPARTAMENTO.VALUE;
           DATAMODULE1.qryciudades.CLOSE;
           DATAMODULE1.qryciudades.SQL.CLEAR;
           DATAMODULE1.qryciudades.SQL.ADD('SELECT * FROM CIUDADES WHERE COD_DEPARTAMENTO = :"DEPAR"');
           DATAMODULE1.qryciudades.Parameters[0].VALUE := DATAMODULE1.qrydepartamentosCOD_DEPARTAMENTO.VALUE;
           DATAMODULE1.qryciudades.OPEN;
           DBLookupComboBox2.KeyValue :=  DATAMODULE1.qryempresasCOD_CIUDAD.VALUE;

        DATAMODULE1.QRYMAXPAGO.CLOSE;
        DATAMODULE1.QRYMAXPAGO.Parameters[0].VALUE := TRIM(CBTIPODOCEMPRESA.TEXT);
        DATAMODULE1.QRYMAXPAGO.Parameters[1].VALUE := TRIM(EDNUMERO.TEXT);
        DATAMODULE1.QRYMAXPAGO.OPEN;
        IF DATAMODULE1.QRYMAXPAGO.RECORDCOUNT > 0 THEN
        BEGIN
        if DATAMODULE1.qrymaxpagoPER_COTIZACION.Value <> '' then
        {begin
          SHOWMESSAGE(LowerCase('ULTIMA  COTIZACION  DE  '+ TRIMRIGHT(EDTNOMBREEMPRESA.TEXT) +' FUE  EN EL PERIODO ' + DATAMODULE1.qrymaxpagoPER_COTIZACION.Value ));
          end}
        else
        SHOWMESSAGE(LowerCase('Este Aportante no a Realizado ningun Pago Anteriormente'));
        //***************Cargar el movimeinto Bancario
         qrymovbancario.Close;
         qrymovbancario.Parameters[0].Value:=trim(Edit1.Text);
         qrymovbancario.Open;
        if qrymovbancario.RecordCount>0 then
        CBBANCO.KeyValue :=QRYMOVBANCARIOCOD_BANCO.Value;
        CBBANCOCLICK(NIL);
        //EDTTOTALCONSIGNADO.Text:=FORMAT('%10.0m',[STRTOFLOAT(QRYMOVBANCARIOVAL_CONSIGNACION.Text)]);
        EDTTOTALCONSIGNADO.Text:=QRYMOVBANCARIOVAL_CONSIGNACION.Text;
        //***************
        END;
           IF DATAMODULE1.QRYEMPRESASTIP_APORTANTE.VALUE = 'G' THEN
           BEGIN
          CBTIPOAPORTANTE.ITEMINDEX := 0;
          END
          ELSE//****Temporal*****revizar
             IF (DATAMODULE1.QRYEMPRESASTIP_APORTANTE.VALUE = 'P') OR (DATAMODULE1.QRYEMPRESASTIP_APORTANTE.VALUE = '2') OR (DATAMODULE1.QRYEMPRESASTIP_APORTANTE.VALUE = '1') THEN
             BEGIN
             CBTIPOAPORTANTE.ITEMINDEX := 1;
             END;

        EDTDIGITO.TEXT := COPY(TRIM(EDNUMERO.TEXT),LENGTH(TRIM(EDNUMERO.TEXT)),1);
       // SHOWMESSAGE(LowerCase('NIT EMPRESA '+ EDNUMERO.TEXT + ' ULTIMO NUMERO  :' +  EDTDIGITO.TEXT);
        FECHAS_PAGO;
        END
        ELSE IF DATAMODULE1.QRYEMPRESAS.RECORDCOUNT = 0 THEN
             BEGIN
             IF MESSAGEDLG(LowerCase('!LA  EMPRESA  NO ESTA  REGISTRADA¡ DESEA  INGRESAR LA  PLANILLA ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
             BEGIN
             NRE := TRUE;
             CBTIPOAPORTANTE.ITEMINDEX := 1;
             edtnombreempresa.Enabled := TRUE;
             edtnombreempresa.SetFocus;
             END
             ELSE
             begin
               Button3.SETFOCUS;

             end;
             END;
    END;
 END;
 IF CHKCORRECCION.Checked = TRUE THEN
 BEGIN
      EDTNPLACORRECION.SetFocus;
 END;
END;


procedure TFrmplanillas_sinanexos.Button3Click(Sender: TObject);
begin
GLPROCESO := 'AUTOLIQUIDACIONES_SINANEXOS';
FRMPRINCIPAL.SB.PANELS[1].TEXT := 'PROCESO ABIERTO ACTUAL :'+ GLPROCESO;
FRMEMPRESAS:=TFRMEMPRESAS.CREATE(APPLICATION);
TRY
FRMEMPRESAS.SHOW;
EXCEPT
FRMEMPRESAS.FREE;
end;
END;

procedure TFrmplanillas_sinanexos.edtperiodoExit(Sender: TObject);
VAR FECHACOMPENSA,FECHAPAGO,FECHACOMPENSA1 : TDATE;
BEGIN
TRY
IF EDTPERIODO.TEXT <> '__/____' THEN
FECHAPAGO := STRTODATETIME(DTFECHAPAGO.Text);
FECHACOMPENSA  := STRTODATE(GLDATE);
FECHACOMPENSA1  := STRTODATE('01/' + EDTPERIODO.TEXT);

IF FECHACOMPENSA1 > STRTODATE('01/01/1995') THEN
BEGIN

IF  STRTODATE('01/' + EDTPERIODO.TEXT) = STRTODATE('01/' + MSPERPRESENTACION.TEXT) THEN
    CBTIPODECLARACION.Text := 'DECLARACION'; //DECLARACION
IF  STRTODATE('01/' + EDTPERIODO.TEXT) < STRTODATE('01/' + MSPERPRESENTACION.TEXT) THEN
    CBTIPODECLARACION.Text := 'ADICION'; //ADICION
IF  STRTODATE('01/' + EDTPERIODO.TEXT) > STRTODATE('01/' + MSPERPRESENTACION.TEXT) THEN
    BEGIN
      IF MESSAGEDLG (LowerCase(' ESTA SEGURO QUE QUIERE INGRESAR ESTA PLANILLA POR PAGO ANTICIPADO?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
          CBTIPODECLARACION.Text := 'PAGO ANTICIPADO' //PAGO ANTICIPADO
      ELSE
      BEGIN
        EDTPERIODO.Text:='';
        EXIT;
      END
    END;
    EDTVALEFECTIVO.SetFocus;

END
 ELSE IF FECHACOMPENSA1 <= STRTODATE('01/01/1995') THEN
      BEGIN
      SHOWMESSAGE(LowerCase(' EL PERIODO NO  PUEDE  SER  MENOR A  01/1995'));
      EDTPERIODO.SETFOCUS;
    END;
    
 EXCEPT  // MENASJE  DE  LOS ERRORES
  //SHOWMESSAGE(LowerCase('ERROR AL CALCULAR LIQUIDACION');
   ON E: ECONVERTERROR DO
    BEGIN
     E.MESSAGE := 'EL PERIODO  ESTA MAL  DIGITADO O IMCOMPLETO';
       EDTPERIODO.SETFOCUS;
      RAISE;
    END;
   END;

END;

procedure TFrmplanillas_sinanexos.btngrabarplanillaClick(Sender: TObject);
var  valorpagado,valorplanilla : real;
BEGIN
        IF CBBANCO.KeyValue > 0 THEN
        BEGIN
           EDTTOTALCONSIGNADO.Text := STRINGREPLACE(EDTTOTALCONSIGNADO.Text,'$','',[rfReplaceAll,rfIgnoreCase]);
           EDTTOTALCONSIGNADO.Text := STRINGREPLACE(EDTTOTALCONSIGNADO.Text,'.','',[rfReplaceAll,rfIgnoreCase]);
           EDTTOTALCONSIGNADO.Text := TRIM(EDTTOTALCONSIGNADO.Text);
           //****************
           //**valorpagado :=  ROUNDTO(STRTOFLOAT(EDTTOTALPAGADO.TEXT),2);
           //**valorplanilla := ROUNDTO(STRTOFLOAT(EDTTOTALCONSIGNADO.TEXT),2);
           //**********************
           IF EDTVALCHEQUE.TEXT='' THEN
           EDTVALCHEQUE.TEXT:='0';
           IF EDTVALEFECTIVO.TEXT=''THEN
           EDTVALEFECTIVO.TEXT:='0';
           
           IF EDTTOTALCONSIGNADO.Text<>FLOATTOSTR((STRTOINT(EDTVALCHEQUE.TEXT)) + (STRTOINT(EDTVALEFECTIVO.TEXT))) THEN
           begin
           SHOWMESSAGE('Revice los Valores consignados');
           edtvalefectivo.SetFocus;
           exit;
           end;
           IF MESSAGEDLG (LowerCase(' DESEA GRABAR LA AUTOLIQUIDACION ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
           BEGIN
           frmproceso:=Tfrmproceso.create(application);
           frmproceso.show;
           GUARDAR_PLANILLA;
           frmproceso.Close;
           LIMPIAR_PLANILLA;
           END;
     END
     ELSE SHOWMESSAGE(LowerCase('DEBE  SELECCIONAR  EL BANCO ANTES DE GRABAR LA  PLANILLA'));
END;

procedure TFrmplanillas_sinanexos.cbbancoClick(Sender: TObject);
begin
IF CBBANCO.TEXT <> '' THEN
  BEGIN
         EDTCUENTA.TEXT :=  DATAMODULE1.qrybancosCTA_BANCO.VALUE;
         //btngrabarplanilla.Enabled := TRUE;
  END;
end;

PROCEDURE TFRMPLANILLAS_SINANEXOS.GUARDAR_PLANILLA;
VAR I:INTEGER;

BEGIN
TRY

 DATAMODULE1.DTBDATAMEC.BeginTrans;
 DATAMODULE1.QRYAUTOLIQUIDACION.CLOSE;
 DATAMODULE1.QRYAUTOLIQUIDACION.SQL.CLEAR;
 DATAMODULE1.QRYAUTOLIQUIDACION.SQL.ADD('SELECT * FROM AUTOLIQUIDACION  WHERE  NUM_PLANILLA  = :"PLANILLA"');
 DATAMODULE1.QRYAUTOLIQUIDACION.Parameters[0].VALUE := trim(EDTPLANILLA.TEXT);
 DATAMODULE1.QRYAUTOLIQUIDACION.OPEN;
   IF DATAMODULE1.QRYAUTOLIQUIDACION.RECORDCOUNT > 0 THEN
   BEGIN
     DATAMODULE1.QRYAUTOLIQUIDACION.EDIT;
     DATAMODULE1.QRYAUTOLIQUIDACIONFEC_MODIFICACION.VALUE := STRTODATE(GLDATE);
     frmproceso.Label1.Caption := 'Grabando Planilla';
     frmproceso.Refresh;
   END
   ELSE IF DATAMODULE1.QRYAUTOLIQUIDACION.RECORDCOUNT = 0 THEN
   BEGIN
     DATAMODULE1.QRYAUTOLIQUIDACION.INSERT;
     DATAMODULE1.QRYAUTOLIQUIDACIONFEC_DIGITACION.VALUE :=STRTODATE(GLDATE);
     frmproceso.Label1.Caption := 'Modificando  Planilla';
     frmproceso.Refresh;
    END;

 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('NUM_PLANILLA').VALUE := TRIM(EDTPLANILLA.TEXT);
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('EMP_TIPO_DOC').VALUE := TRIM(CBTIPODOCEMPRESA.TEXT);
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('EMP_NUMERO_DOC').VALUE := TRIM(EDNUMERO.TEXT);
// DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('COD_SUCURSAL').VALUE := TRIM(EDTSUCURSAL.TEXT);
 IF CHKCORRECCION.Checked = FALSE THEN
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TIP_DECLARACION').VALUE := TRIM(CBTIPODECLARACION.TEXT)
 ELSE
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TIP_DECLARACION').VALUE := 'CORRECCION';
 IF CHKCORRECCION.Checked = FALSE THEN
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('FEC_PAGO').VALUE := DTFECHAPAGO.Text
 ELSE
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('FEC_PAGO').VALUE := DTPFECHAPAGO.Date ;
 IF CHKCORRECCION.Checked = TRUE THEN
  DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('NUM_PLANILLA_CORR').VALUE := TRIM(EDTNPLACORRECION.TEXT);

 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('PER_COTIZACION').VALUE := TRIM(EDTPERIODO.TEXT);
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('PER_PRESENTACION').VALUE := TRIM(MSPERPRESENTACION.TEXT);
// Consolidado del detalle  de Autoliquidaciones
// DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_PLANILLA').VALUE := EDTTOTALCONSIGNADO.TEXT;
 // incapaciddes  y licencias  descontadas por separado
 // interses de mora
 // total aportes
 // aportes  mas  interese de mora
 // saldos  a  favos

 //
 // pagos por upc
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_PAGADO').VALUE := EDTTOTALCONSIGNADO.TEXT;
 // LUGAR  DE  CONSIGNACION
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('COD_BANCO').VALUE := CBBANCO.KEYVALUE;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('NUM_CUENTA').VALUE := EDTCUENTA.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('VAL_EFECTIVO').VALUE := EDTVALEFECTIVO.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('VAL_CHEQUE').VALUE := EDTVALCHEQUE.TEXT;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('EST_PLANILLA').VALUE :='SIN'; //ESTADO_PLANILLA;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('COD_OFICINA').VALUE := GLOFICINA;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('COD_REGIONAL').VALUE := GLREGIONAL;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_APORTE_PER').VALUE := EDTTOTALCONSIGNADO.Text;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_PLANILLA').VALUE:= EDTTOTALCONSIGNADO.Text;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_APORTE').VALUE:=EDTTOTALCONSIGNADO.Text;
 DATAMODULE1.QRYAUTOLIQUIDACIONCRU_CONCILIACION.VALUE := 'N';
 DATAMODULE1.QRYAUTOLIQUIDACIONTIP_DOC_USUARIO.VALUE := GLTIPO;
 DATAMODULE1.QRYAUTOLIQUIDACIONNUM_DOC_USUARIO.VALUE := GLNUMERO;
 DATAMODULE1.qryautoliquidacionNOM_EMPRESA.VALUE := edtnombreempresa.Text;
 //***********************
 {DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_INCAPACIDAD').VALUE:=0;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_LICENCIAS').VALUE:=0;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_UPC').VALUE:=0;

 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_INCAPACIDAD').VALUE:=0;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_LICENCIAS').VALUE:=0;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_UPC').VALUE:=0;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_UPC').VALUE:=0;
  }
 {DATAMODULE1.qryautoliquidacionNO_INCAP_PAG.VALUE:=';
 DATAMODULE1.qryautoliquidacionVAL_INCAP_PAG.VALUE:=0;
 DATAMODULE1.qryautoliquidacionNO_LICEN_PAG.VALUE:=0;
 DATAMODULE1.qryautoliquidacionVAL_LICEN_PAG.VALUE:=0;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_APORTE').VALUE:=0 ;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('INT_MORA').VALUE:=0;
 DATAMODULE1.qryautoliquidacionVAL_INTERES_UPC.VALUE:=0;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_APORTE_MMORA').VALUE:=0;
 DATAMODULE1.qryautoliquidacionVAL_APORMASINT_UPC.VALUE:=0;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_SALDO_FAV').VALUE:=0;
 DATAMODULE1.qryautoliquidacionVAL_SALFAVOR_UPC.VALUE:=0;
 DATAMODULE1.QRYAUTOLIQUIDACION.FIELDBYNAME('TOT_PAGADO').VALUE:=0;
 DATAMODULE1.qryautoliquidacionVAL_PAGO_UPC.VALUE:=0;
 DATAMODULE1.qryautoliquidacionNUM_LOTE.VALUE:=0;
 }
 //***********************
 frmproceso.Label1.Caption := 'conciliando planilla';
        frmproceso.Refresh;

// conciliar  la planilla
 {DataModule1.qryestrato.close;
 DataModule1.qryestrato.sql.clear;
 DataModule1.qryestrato.sql.add('SELECT * FROM EST_BANCARIO_AUTO');
 DataModule1.qryestrato.sql.add('WHERE COD_BANCO = :"COD_BANCO" AND NUM_DOCUMENTO= :"NUM_DOCUMENTO" AND NUM_PLANILLA = :"NUM_PLANILLA" AND FEC_RECAUDO = :"FEC_RECAUDO" AND VAL_CONSIGNACION = :"VAL_CONSIGNACION" AND EST_CONCILIACION = :"ESTADO"');
 DataModule1.qryestrato.Parameters[0].VALUE := cbbanco.KeyValue;
 DataModule1.qryestrato.Parameters[1].VALUE := trim(ednumero.text);
 DataModule1.qryestrato.Parameters[2].VALUE := trim(edtplanilla.text);
 DataModule1.qryestrato.Parameters[3].VALUE := DTFECHAPAGO.Text;
 DataModule1.qryestrato.Parameters[4].VALUE := strtofloat(edttotalconsignado.text);
 DataModule1.qryestrato.Parameters[5].VALUE := 'N';
 DataModule1.qryestrato.Open;
 if DataModule1.qryestrato.RecordCount = 1 then
 begin
   DataModule1.qryestrato.Edit;
   DataModule1.qryautoliquidacionCRU_CONCILIACION.Value := 'S';
   DataModule1.qryestratoEST_CONCILIACION.Value := 'S';
   DataModule1.qryestratoFEC_PLANILLA_CON.Value := strtodate(GLDATE);
   DataModule1.qryestrato.Post;
 end
 else
 begin
   DataModule1.qryestrato.close;
   DataModule1.qryestrato.sql.clear;
   DataModule1.qryestrato.sql.add('SELECT * FROM EST_BANCARIO_AUTO');
   DataModule1.qryestrato.sql.add('WHERE COD_BANCO = :"COD_BANCO" AND NUM_PLANILLA = :"NUM_PLANILLA" AND FEC_RECAUDO = :"FEC_RECAUDO" AND VAL_CONSIGNACION = :"VAL_CONSIGNACION" AND EST_CONCILIACION = :"ESTADO"');
   DataModule1.qryestrato.Parameters[0].VALUE := cbbanco.KeyValue;
   DataModule1.qryestrato.Parameters[1].VALUE := trim(edtplanilla.text);
   DataModule1.qryestrato.Parameters[2].VALUE := DTFECHAPAGO.Text;
   DataModule1.qryestrato.Parameters[3].VALUE := strtofloat(edttotalconsignado.text);
   DataModule1.qryestrato.Parameters[4].VALUE := 'N';
   //DataModule1.qryestrato.REQUESTLIVE := false;
   DataModule1.qryestrato.Open;
   if DataModule1.qryestrato.RecordCount = 1 then
   begin
     DataModule1.qryestrato.Edit;
     DataModule1.qryestratoEST_CONCILIACION.Value := 'S';
     DataModule1.qryestratoNUM_DOCUMENTO.Value := TRIM(ednumero.Text);
     DataModule1.qryautoliquidacionCRU_CONCILIACION.Value := 'S';
     DataModule1.qryestratoFEC_PLANILLA_CON.Value := strtodate(GLDATE);
     DataModule1.qryestrato.Post;
   end
   ELSE
   begin
     DataModule1.qryestrato.close;
     DataModule1.qryestrato.sql.clear;
     DataModule1.qryestrato.sql.add('SELECT * FROM EST_BANCARIO_AUTO');
     DataModule1.qryestrato.sql.add('WHERE COD_BANCO = :"COD_BANCO" AND NUM_DOCUMENTO= :"NUM_DOCUMENTO" AND FEC_RECAUDO = :"FEC_RECAUDO" AND VAL_CONSIGNACION = :"VAL_CONSIGNACION" AND EST_CONCILIACION = :"ESTADO"');
     DataModule1.qryestrato.Parameters[0].VALUE := cbbanco.KeyValue;
     DataModule1.qryestrato.Parameters[1].VALUE := trim(ednumero.text);
     DataModule1.qryestrato.Parameters[2].VALUE := DTFECHAPAGO.Text;
     DataModule1.qryestrato.Parameters[3].VALUE := strtofloat(edttotalconsignado.text);
     DataModule1.qryestrato.Parameters[4].VALUE := 'N';
     DataModule1.qryestrato.Open;
     if DataModule1.qryestrato.RecordCount = 1 then
     begin
       DataModule1.qryestrato.Edit;
       DataModule1.qryestratoEST_CONCILIACION.Value := 'S';
       DataModule1.qryestratoNUM_PLANILLA.Value := TRIM(edtplanilla.Text);
       DataModule1.qryautoliquidacionCRU_CONCILIACION.Value := 'S';
       DataModule1.qryestratoFEC_PLANILLA_CON.Value := strtodate(GLDATE);
       DataModule1.qryestrato.Post;
     end;
   END;
 end;}
     //**********OTRO ESTADO DE CONCILIACION
     DataModule1.qryestrato.close;
     DataModule1.qryestrato.sql.clear;
     DataModule1.qryestrato.sql.add('SELECT * FROM EST_BANCARIO_AUTO');
     DataModule1.qryestrato.sql.add('WHERE COD_BANCO = :"COD_BANCO" AND NUM_DOCUMENTO= :"NUM_DOCUMENTO" AND NUM_PLANILLA = :"NUM_PLANILLA" AND FEC_RECAUDO = :"FEC_RECAUDO" AND VAL_CONSIGNACION = :"VAL_CONSIGNACION"');
     DataModule1.qryestrato.Parameters[0].VALUE := cbbanco.KeyValue;
     DataModule1.qryestrato.Parameters[1].VALUE := trim(ednumero.text);
     DataModule1.qryestrato.Parameters[2].VALUE := trim(edtplanilla.text);
     IF CHKCORRECCION.Checked = FALSE THEN
     DataModule1.qryestrato.Parameters[3].VALUE := DTFECHAPAGO.Text
     ELSE
     DataModule1.qryestrato.Parameters[3].VALUE := DTPFECHAPAGO.Date ;

     DataModule1.qryestrato.Parameters[4].VALUE := strtofloat(edttotalconsignado.text);
     //DataModule1.qryestrato.Parameters[5].VALUE := 'N';
     DataModule1.qryestrato.Open;
     if DataModule1.qryestrato.RecordCount = 1 then
     begin
     DataModule1.qryestrato.Edit;
     DataModule1.qryautoliquidacionCRU_CONCILIACION.Value := 'S';
     DataModule1.qryestratoEST_CONCILIACION.Value := 'CONCING';
     DataModule1.qryestratoFEC_PLANILLA_CON.Value := strtodate(GLDATE);
     DataModule1.qryestrato.Post;
     end
     ELSE
     BEGIN
     DataModule1.qryestrato.close;
     DataModule1.qryestrato.sql.clear;
     DataModule1.qryestrato.sql.add('SELECT * FROM EST_BANCARIO_AUTO');
     DataModule1.qryestrato.sql.add('WHERE COD_BANCO = :"COD_BANCO" AND NUM_PLANILLA = :"NUM_PLANILLA" AND FEC_RECAUDO = :"FEC_RECAUDO" AND VAL_CONSIGNACION = :"VAL_CONSIGNACION"');
     DataModule1.qryestrato.Parameters[0].VALUE := cbbanco.KeyValue;
     DataModule1.qryestrato.Parameters[1].VALUE := trim(edtplanilla.text);
     IF CHKCORRECCION.Checked = FALSE THEN
     DataModule1.qryestrato.Parameters[2].VALUE := DTFECHAPAGO.Text
     ELSE
     DataModule1.qryestrato.Parameters[2].VALUE := DTPFECHAPAGO.Date ;
     DataModule1.qryestrato.Parameters[3].VALUE := strtofloat(edttotalconsignado.text);
     //DataModule1.qryestrato.Parameters[5].VALUE := 'N';
     DataModule1.qryestrato.Open;
     if DataModule1.qryestrato.RecordCount = 1 then
     begin
     DataModule1.qryestrato.Edit;
     DataModule1.qryautoliquidacionCRU_CONCILIACION.Value := 'S';
     DataModule1.qryestratoNUM_DOCUMENTO.Value := TRIM(ednumero.Text);
     DataModule1.qryestratoEST_CONCILIACION.Value := 'CONCING';
     DataModule1.qryestratoFEC_PLANILLA_CON.Value := strtodate(GLDATE);
     DataModule1.qryestrato.Post;
     END;

 END;

     //***********
 DATAMODULE1.QRYAUTOLIQUIDACION.POST;
 DATAMODULE1.QRYAUTOLIQUIDACION.CLOSE;
 ESTADO := TRUE;

     // CUANDO  TIENE UPC  ADICIONAL Y NO A  PAGADO LOS APORTES  DEL PERIODO GENERA  CARTERA MOROSA

     // INGRESAR  EL DETALLE  DEL PAGO EN EL BANCO CON CHEQUE
         FOR I := 1 TO sgdetabanco.ROWCOUNT -2 DO
         BEGIN
           IF TRIM(sgdetabanco.CELLS[0,I]) > '0' THEN
           BEGIN
           DATAMODULE1.qrydetallepago.SQL.CLEAR;
           DATAMODULE1.qrydetallepago.SQL.ADD('SELECT * FROM DET_PAGO_AUTOLIQUIDACIONES WHERE NUM_PLANILLA = :"NUMERO" AND COD_BANCO = :"BANCO" AND NUM_CUENTA = :"CUENTA"');
           DATAMODULE1.qrydetallepago.Parameters[0].VALUE := trim(EDTPLANILLA.TEXT);
           DATAMODULE1.qrydetallepago.Parameters[1].VALUE := TRIM(sgdetabanco.CELLS[0,I]);
           DATAMODULE1.qrydetallepago.Parameters[2].VALUE := TRIM(sgdetabanco.CELLS[1,I]);
           DATAMODULE1.qrydetallepago.OPEN;
           IF DATAMODULE1.qrydetallepago.RecordCount = 0 THEN
           BEGIN
           frmproceso.Label1.Caption := 'Grabando detalle de cheque';
           frmproceso.Refresh;

                 DATAMODULE1.qrydetallepago.Insert;
                 DATAMODULE1.qrydetallepagoNUM_PLANILLA.Value := trim(EDTPLANILLA.TEXT);
                 DATAMODULE1.qrydetallepagoCOD_BANCO.Value :=  TRIM(sgdetabanco.CELLS[0,I]);
                 DATAMODULE1.qrydetallepagoNUM_CUENTA.Value := TRIM(sgdetabanco.CELLS[1,I]);
                 DATAMODULE1.qrydetallepagoVAL_CHEQUE.Value := STRTOFLOAT(sgdetabanco.CELLS[2,I]);
                 DATAMODULE1.qrydetallepago.Post;

                 END
                 ELSE
                 IF DATAMODULE1.qrydetallepago.RecordCount > 0 THEN
                 BEGIN
                 DATAMODULE1.qrydetallepago.Edit;
                 DATAMODULE1.qrydetallepagoNUM_PLANILLA.Value := trim(EDTPLANILLA.TEXT);
                 DATAMODULE1.qrydetallepagoCOD_BANCO.Value :=  TRIM(sgdetabanco.CELLS[0,I]);
                 DATAMODULE1.qrydetallepagoNUM_CUENTA.Value := TRIM(sgdetabanco.CELLS[1,I]);
                 DATAMODULE1.qrydetallepagoVAL_CHEQUE.Value := STRTOFLOAT(sgdetabanco.CELLS[2,I]);
                 DATAMODULE1.qrydetallepago.Post;


                 END;
               END;
           END;
    //

   DATAMODULE1.DTBDATAMEC.CommitTrans;
   EXCEPT
   DATAMODULE1.DTBDATAMEC.RollbackTrans;
   SHOWMESSAGE(LowerCase('NO SE PUEDE  GRABAR LA AUTOLIQUIDACION'));
   RAISE;
   END;
END;

procedure TFrmplanillas_sinanexos.FormActivate(Sender: TObject);
begin
WindowState := wsNormal;
top := 0;
Left := 0;
if (trim(ednumero.Text) = '0') or  (trim(ednumero.Text) = '') then
begin
LIMPIAR_PLANILLA;
BTNGRABARPLANILLA.Enabled:=FALSE;
end;
end;

procedure TFrmplanillas_sinanexos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACTION:=CAFREE;
GLPROCESO := '';
FRMPRINCIPAL.SB.PANELS[1].TEXT := 'PROCESO ABIERTO ACTUAL :'+ GLPROCESO
end;

procedure TFrmplanillas_sinanexos.LIMPIAR_PLANILLA;
var I:integer;
begin

Edit18.Text:='';
Edit19.Text:='';
Edit21.Text:='';
Edit22.Text:='';
Edit23.Text:='';
Edit1.Text:='';
Edtplanilla.Text:='';
Ednumero.Text:='';
Edtnombreempresa.Text:='';
EDTPERIODO.TEXT := '__/____';
EDTPERIODOCOMP.Text := '__/____';
MSPERPRESENTACION.TEXT := GLPRESENTACION;
MSPERPRESENTACIONC.Text := GLPRESENTACION;
EDTVALCHEQUE.TEXT := '0';
EDTVALEFECTIVO.TEXT := '0';
edtcuenta.Text:='0';
edttotalconsignado.Text:='0';
Edtnombreempresa.Text:='';
DTFECHAPAGO.Text := '';
DTPFECHAPAGO.DATE := STRTODATE(GLDATE);
DTFECHAPAGOC.Text := '';
Edtdigito.Text:='';
edtultimafechapago.Text:='';
cbtipodeclaracion.Text:='';
EDTNPLACORRECION.Text := '';



DBLookupComboBox1.KeyValue := -1;
DBLookupComboBox2.KeyValue := -1;
cbtipodocempresa.ItemIndex:=-1;
cbtipoaportante.ItemIndex:=-1;
cbbanco.KeyValue:=-1;

   sgdetabanco.ROWCOUNT := 2;
   sgdetabanco.FIXEDCOLS := 0;
   sgdetabanco.FIXEDROWS := 1;
   FOR I := 0 TO sgdetabanco.ROWCOUNT DO
      BEGIN
                   sgdetabanco.CELLS[0,I]:='';
                   sgdetabanco.CELLS[1,I]:='';
                   sgdetabanco.CELLS[2,I]:='';

     END;

   WITH sgdetabanco do
   BEGIN
   CELLS[0,0]:='COD';
   CELLS[1,0]:='NUMERO DE CUENTA';
   CELLS[2,0]:='VALOR';
   end;
     sgdetabanco.Enabled := FALSE;
     //edttotalconsignado.Enabled := FALSE;
   EDTPLANILLA.SetFocus;
   //*****
   CHKCORRECCION.Checked := FALSE;
   label37.Top := 27;
   label4.Top := 27;
   label5.Top := 27;
   cbtipodocempresa.Top :=42;
   ednumero.Top := 42;
   button3.Top := 42;
   edtnombreempresa.Top := 42;
   label44.Top :=105;
   label50.Top :=105;
   label41.Top :=105;
   cbtipoaportante.Top := 119;
   edtdigito.Top :=  119;
   edtultimafechapago.Top :=   119;
   correccion.Visible :=false;



end;
procedure TFrmplanillas_sinanexos.BitBtn1Click(Sender: TObject);
begin
LIMPIAR_PLANILLA;
end;

procedure TFrmplanillas_sinanexos.edtvalefectivoExit(Sender: TObject);
begin
IF EDTVALEFECTIVO.Text ='' THEN
EDTVALEFECTIVO.Text :='0';

BTNGRABARPLANILLA.Enabled:=TRUE;
end;

PROCEDURE TFRMPLANILLAS_sinanexos.cargar_movimiento;
begin
  qrymovbancario.Close;
  qrymovbancario.Parameters[0].Value:=trim(Edit1.Text);
  qrymovbancario.Open;
  if qrymovbancario.RecordCount>0 then
  BEGIN
  try
     FRMPLANILLAS.cbbanco.KeyValue := QRYMOVBANCARIOCOD_BANCO.Value;
     {IF QRYMOVBANCARIOCOD_BANCO.Value='01' THEN
     BEGIN
     FRMPLANILLAS_SINANEXOS.cbbanco.KeyValue:='01';
     END
     ELSE IF QRYMOVBANCARIOCOD_BANCO.Value='02' THEN
     BEGIN
     FRMPLANILLAS_SINANEXOS.cbbanco.KeyValue:='02';
     END
     ELSE IF QRYMOVBANCARIOCOD_BANCO.Value='03' THEN
     BEGIN
     FRMPLANILLAS_SINANEXOS.cbbanco.KeyValue:='03';
     END
     ELSE IF QRYMOVBANCARIOCOD_BANCO.Value='04' THEN
     BEGIN
     FRMPLANILLAS_SINANEXOS.cbbanco.KeyValue:='04';
     END
     ELSE IF QRYMOVBANCARIOCOD_BANCO.Value='05' THEN
     BEGIN
     FRMPLANILLAS_SINANEXOS.cbbanco.KeyValue:='05';
     END
     ELSE IF QRYMOVBANCARIOCOD_BANCO.Value='06' THEN
     BEGIN
     FRMPLANILLAS_SINANEXOS.cbbanco.KeyValue:='06';
     END}
     except
     end;
  END;
  CBBANCOCLICK(NIL);
  //EDTTOTALCONSIGNADO.Text:=FORMAT('%10.0m',[QRYMOVBANCARIOVAL_CONSIGNACION.Text]);
  EDTTOTALCONSIGNADO.Text:=QRYMOVBANCARIOVAL_CONSIGNACION.Text;
end;

procedure TFrmplanillas_sinanexos.FormCreate(Sender: TObject);
begin
   sgdetabanco.CELLS[0,0]:='COD';
   sgdetabanco.CELLS[1,0]:='NUMERO DE CUENTA';
   sgdetabanco.CELLS[2,0]:='VALOR';
   correccion.Visible := False;
end;

procedure TFrmplanillas_sinanexos.edtvalchequeExit(Sender: TObject);
VAR
I :INTEGER;
begin

IF EDTVALCHEQUE.Text ='' THEN
EDTVALCHEQUE.Text :='0';

IF (EDTVALCHEQUE.TEXT = '') OR (EDTVALCHEQUE.TEXT = '0') THEN
FOR I := 1 TO sgdetabanco.ROWCOUNT DO
     BEGIN
                   sgdetabanco.CELLS[0,I]:='';
                   sgdetabanco.CELLS[1,I]:='';
                   sgdetabanco.CELLS[2,I]:='';

     END;
end;

procedure TFrmplanillas_sinanexos.chkcorreccionExit(Sender: TObject);
begin
if chkcorreccion.Checked = true then
begin
label37.Top := 24;
label4.Top := 24;
label5.Top := 24;
cbtipodocempresa.Top :=39;
ednumero.Top := 39;
button3.Top := 39;
edtnombreempresa.Top := 39;
label44.Top :=110;
label50.Top :=110;
label41.Top :=110;
cbtipoaportante.Top := 124;
edtdigito.Top :=  124;
edtultimafechapago.Top :=   124;
correccion.Visible :=True;
cbtipodocempresa.SetFocus;
end
else
begin
label37.Top := 27;
label4.Top := 27;
label5.Top := 27;
cbtipodocempresa.Top :=42;
ednumero.Top := 42;
button3.Top := 42;
edtnombreempresa.Top := 42;
label44.Top :=105;
label50.Top :=105;
label41.Top :=105;
cbtipoaportante.Top := 119;
edtdigito.Top :=  119;
edtultimafechapago.Top :=   119;
correccion.Visible :=false;
cbtipodocempresa.SetFocus;
end;
end;

procedure TFrmplanillas_sinanexos.EDTNPLACORRECIONExit(Sender: TObject);

 VAR VERIFICAR : BOOLEAN;
BEGIN
    if (EDTNPLACORRECION.text = '') or (EDTNPLACORRECION.text = '0') then
    begin
    ShowMessage(LowerCase('Debe digitar  el Numero de  la planilla  a  corregir'));
    edtplanilla.SetFocus;
    exit
    end;

 IF  EDTNPLACORRECION.TEXT > '0' THEN
 BEGIN
     VERIFICAR:= FALSE;
      EDTPERIODOCOMP.TEXT := '  /    ';
      DTPFECHAPAGO.DATE := STRTODATE(GLDATE)+1;
      DATAMODULE1.QRYAUTOLIQUIDACION.CLOSE;
      DATAMODULE1.QRYAUTOLIQUIDACION.SQL.CLEAR;
      DATAMODULE1.QRYAUTOLIQUIDACION.SQL.ADD('SELECT * FROM  AUTOLIQUIDACION WHERE NUM_PLANILLA = :"NUMEROPLANILLA" AND TIP_DECLARACION <> :"TIPODECLARACION"');
      DATAMODULE1.QRYAUTOLIQUIDACION.Parameters[0].VALUE := EDTNPLACORRECION.TEXT;
      DATAMODULE1.QRYAUTOLIQUIDACION.Parameters[1].VALUE := 'C';
      DATAMODULE1.QRYAUTOLIQUIDACION.OPEN;
            IF DATAMODULE1.QRYAUTOLIQUIDACION.RECORDCOUNT = 1 THEN
            BEGIN
                 IF (DATAMODULE1.QRYAUTOLIQUIDACIONEMP_TIPO_DOC.VALUE = CBTIPODOCEMPRESA.TEXT) AND (DATAMODULE1.QRYAUTOLIQUIDACIONEMP_NUMERO_DOC.VALUE = EDNUMERO.TEXT) THEN
                 BEGIN
                 EDTPERIODOCOMP.Enabled := FALSE;
                 EDTPERIODOCOMP.TEXT  := DATAMODULE1.QRYAUTOLIQUIDACIONPER_COTIZACION.VALUE;
                 DTFECHAPAGOC.Text :=  DATETOSTR(DATAMODULE1.qryautoliquidacionFEC_PAGO.VALUE);
                 END
                 ELSE  VERIFICAR:= TRUE;
        IF VERIFICAR = TRUE THEN
        BEGIN
         SHOWMESSAGE('LA  PLANILLA  NO PERTENECE A  ESTA  EMPRESA  VERIFIQUE  NUEVAMENTE');
         EDTNPLACORRECION.TEXT := '0';
         edtplanilla.SetFocus;
         END;

        END
        ELSE IF DATAMODULE1.QRYAUTOLIQUIDACION.RECORDCOUNT = 0 THEN
            BEGIN
            SHOWMESSAGE('LA  PLANILLA  NO EXISTE  VERIFIQUE  NUEVAMENTE');
            EDTNPLACORRECION.TEXT := '0';
            edtplanilla.SetFocus;
          END;


 END
 ELSE edtplanilla.SetFocus;


end;

procedure TFrmplanillas_sinanexos.dtpfechapagoExit(Sender: TObject);
begin
IF  DTPFECHAPAGO.DATE >= STRTODATE(GLCREACIONEPS) THEN
     BEGIN
          IF DTPFECHAPAGO.DATE  = strtodate(gldate)+1 THEN
          BEGIN
          SHOWMESSAGE(LowerCase('DIGITE  LA FECHA DE  PAGO'));
          DTPFECHAPAGO.SETFOCUS
          END
          ELSE
              IF DTPFECHAPAGO.DATE > STRTODATE(GLDATE) THEN
              BEGIN
              SHOWMESSAGE(LowerCase('LA  FECHA  DE  PAGO NO PUEDE SER  MAYOR A LA FECHA ACTUAL'));
              DTPFECHAPAGO.SETFOCUS;
              DTPFECHAPAGO.DATE := strtodate(gldate)+1;
              END

 END
 ELSE IF DTPFECHAPAGO.DATE < STRTODATE(GLCREACIONEPS) THEN
      BEGIN
      SHOWMESSAGE(LowerCase('FECHA  NO VALIDA PARA LA  EPS'));
      DTPFECHAPAGO.SETFOCUS;
       END;
  EDTVALEFECTIVO.SetFocus ;
end;

end.
