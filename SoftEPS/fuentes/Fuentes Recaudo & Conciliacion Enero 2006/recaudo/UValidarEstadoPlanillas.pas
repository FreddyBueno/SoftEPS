unit UValidarEstadoPlanillas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Buttons, ComCtrls, DB, DBTables, ADODB;

type
  TfrmValidarEstados = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label47: TLabel;
    Label48: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    ProgressBar2: TProgressBar;
    Label4: TLabel;
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    Label5: TLabel;
    Query1: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure porplanilla(numero1: string);
    procedure porperiodo(periodo : string);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmValidarEstados: TfrmValidarEstados;

implementation

uses dtmodulo, Uprincipal, Uglobal;

{$R *.dfm}

procedure TfrmValidarEstados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TfrmValidarEstados.BitBtn1Click(Sender: TObject);
var I: integer;
 estado,tipo,numero : string;
begin
  if RadioGroup1.ItemIndex = 0 then
      if   MaskEdit1.TEXT <> '__/____' then
      begin
         porperiodo(MaskEdit1.TEXT);
      end;
  if RadioGroup1.ItemIndex = 1 then
      if   Edit1.TEXT <> '' then
      begin
         porplanilla(TRIM(Edit1.TEXT));
      end

end;
procedure TfrmValidarEstados.FormActivate(Sender: TObject);
begin
WindowState := wsNormal;
top := 0;
Left := 0;
    ProgressBar2.Min := 0;
    ProgressBar2.Max := 100;
    ProgressBar2.Position := 0;

end;

procedure TfrmValidarEstados.MaskEdit1Exit(Sender: TObject);
VAR FECHACOMPENSA,FECHAPAGO,FECHACOMPENSA1 : TDATE;
BEGIN
TRY

IF MaskEdit1.TEXT <> '__/____' THEN
FECHACOMPENSA1  := STRTODATE('01/' + MaskEdit1.TEXT);

  EXCEPT  // MENASJE  DE  LOS ERRORES
  //SHOWMESSAGE(LowerCase('ERROR AL CALCULAR LIQUIDACION');
   ON E: ECONVERTERROR DO
    BEGIN
     E.MESSAGE := 'EL PERIODO  ESTA MAL  DIGITADO O IMCOMPLETO';
       MaskEdit1.SETFOCUS;
      RAISE;
    END;
   END;

end;

procedure TfrmValidarEstados.FormCreate(Sender: TObject);
begin
MaskEdit1.TEXT := GLPRESENTACION;
end;

procedure TfrmValidarEstados.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex = 0 then
begin
  GroupBox3.Visible := false;
   GroupBox1.Visible := true;
end;
if RadioGroup1.ItemIndex = 1 then
begin
  GroupBox3.Visible := true;
   GroupBox1.Visible := false;
end;

end;

procedure TfrmValidarEstados.porperiodo(periodo: string);
var I: integer;
 estado,tipo,numero : string;

begin
  DATAMODULE1.QRYDETALLE.CLOSE;
    DATAMODULE1.QRYDETALLE.SQL.CLEAR;
    DATAMODULE1.QRYDETALLE.SQL.ADD('SELECT * FROM DET_PLANILLA_AUTOLIQUIDACION where  DET_ESTADO NOT IN(:"estado",:"estado1",:"estado2") and PER_PRESENTACION = :"perido"');
    DATAMODULE1.QRYDETALLE.Parameters[0].VALUE := 'COM';
    DATAMODULE1.QRYDETALLE.Parameters[1].VALUE := 'CIE';
    DATAMODULE1.QRYDETALLE.Parameters[2].VALUE := 'DEV';
    DATAMODULE1.QRYDETALLE.Parameters[3].VALUE := periodo;
    DATAMODULE1.QRYDETALLE.OPEN;
    ProgressBar2.Min := 0;
     ProgressBar2.Max := DATAMODULE1.QRYDETALLE.RECORDCOUNT ;
     I := 0;
        IF DATAMODULE1.QRYDETALLE.RECORDCOUNT > 0 THEN
        BEGIN
            while  DATAMODULE1.QRYDETALLE.Eof <> true do
            begin
            I := I +1;
            DataModule1.qryautoliquidacion.Close;
            DataModule1.qryautoliquidacion.sql.Clear;
            DataModule1.qryautoliquidacion.sql.add ('SELECT * FROM AUTOLIQUIDACION WHERE NUM_PLANILLA = :"PLANILLA"');
            DataModule1.qryautoliquidacion.Parameters[0].VALUE := DataModule1.qrydetallenum_planilla.Value;
            DataModule1.qryautoliquidacion.open;
            estado := DATAMODULE1.estado_pago(DATAMODULE1.qrydetallePER_COTIZACION.value,DATAMODULE1.qrydetalleAFI_TIPO_DOC.value,DATAMODULE1.qrydetalleAFI_NUMERO_DOC.value,DataModule1.qryautoliquidacionEMP_TIPO_DOC.Value,DataModule1.qryautoliquidacionEMP_NUMERO_DOC.Value,DATAMODULE1.qrydetalleDIA_COTIZADOS.Value,floattostr(DATAMODULE1.qrydetalleING_BASE_COT.Value));

            label4.Caption :=  (' Afiliado     '+ DATAMODULE1.qrydetalleAFI_TIPO_DOC.value + ' '+  DATAMODULE1.qrydetalleAFI_NUMERO_DOC.value + '   Nuevo estado   ' + estado + '  del estado    ' + DATAMODULE1.qrydetalleDET_ESTADO.value );
            frmValidarEstados.Refresh;
            //ShowMessage(' Afiliado     ' + DATAMODULE1.qrydetalleAFI_TIPO_DOC.value + ' '+ DATAMODULE1.qrydetalleAFI_NUMERO_DOC.value + '   Nuevo estado   ' + estado + '  del estado    ' + DATAMODULE1.qrydetalleDET_ESTADO.value);
            if estado <>  DATAMODULE1.qrydetalleAFI_TIPO_DOC.value  then
            begin
            Query1.Close;
            Query1.SQL.Clear;
            Query1.SQL.ADD('UPDATE DET_PLANILLA_AUTOLIQUIDACION SET DET_ESTADO = :"ESTADO" WHERE NUM_PLANILLA =:"PLANILLA"  AND  AFI_TIPO_DOC= :"TIPO" AND  AFI_NUMERO_DOC= :"NUMERO"');
            Query1.Parameters[0].VALUE := estado;
            Query1.Parameters[1].VALUE := DataModule1.qrydetallenum_planilla.Value;
            Query1.Parameters[2].VALUE := DataModule1.qrydetalleAFI_TIPO_DOC.Value;
            Query1.Parameters[3].VALUE := DataModule1.qrydetalleAFI_NUMERO_DOC.Value;
            Query1.ExecSQL;
            end;
            label4.Caption :=  (' Grabando     '+ DATAMODULE1.qrydetalleAFI_TIPO_DOC.value + ' '+  DATAMODULE1.qrydetalleAFI_NUMERO_DOC.value + '   Nuevo estado   ' + estado + '  del estado    ' + DATAMODULE1.qrydetalleDET_ESTADO.value );
            frmValidarEstados.Refresh;
            ProgressBar2.Position := I;
            DATAMODULE1.LiberarMemoria;
            DATAMODULE1.QRYDETALLE.Next;
            end;
         ShowMessage('El proceso Termino  En su  totalidad');
        END;
  end;

procedure TfrmValidarEstados.porplanilla(numero1: string);
var I: integer;
 estado,tipo,numero : string;
begin
  DATAMODULE1.QRYDETALLE.CLOSE;
    DATAMODULE1.QRYDETALLE.SQL.CLEAR;
    DATAMODULE1.QRYDETALLE.SQL.ADD('SELECT * FROM DET_PLANILLA_AUTOLIQUIDACION where   DET_ESTADO NOT IN(:"estado",:"estado1",:"estado2") and num_planilla = :"perido"');
    DATAMODULE1.QRYDETALLE.Parameters[0].VALUE := 'COM';
    DATAMODULE1.QRYDETALLE.Parameters[1].VALUE := 'CIE';
    DATAMODULE1.QRYDETALLE.Parameters[2].VALUE := 'DEV';
    DATAMODULE1.QRYDETALLE.Parameters[3].VALUE := numero1;
    DATAMODULE1.QRYDETALLE.OPEN;
    ProgressBar2.Min := 0;
     ProgressBar2.Max := DATAMODULE1.QRYDETALLE.RECORDCOUNT ;
     I := 0;
        IF DATAMODULE1.QRYDETALLE.RECORDCOUNT > 0 THEN
        BEGIN
            while  DATAMODULE1.QRYDETALLE.Eof <> true do
            begin
            I := I +1;
            DataModule1.qryautoliquidacion.Close;
            DataModule1.qryautoliquidacion.sql.Clear;
            DataModule1.qryautoliquidacion.sql.add ('SELECT * FROM AUTOLIQUIDACION WHERE NUM_PLANILLA = :"PLANILLA"');
            DataModule1.qryautoliquidacion.Parameters[0].VALUE := DataModule1.qrydetallenum_planilla.Value;
            DataModule1.qryautoliquidacion.open;
            estado := DATAMODULE1.estado_pago(DATAMODULE1.qrydetallePER_COTIZACION.value,DATAMODULE1.qrydetalleAFI_TIPO_DOC.value,DATAMODULE1.qrydetalleAFI_NUMERO_DOC.value,DataModule1.qryautoliquidacionEMP_TIPO_DOC.Value,DataModule1.qryautoliquidacionEMP_NUMERO_DOC.Value,DATAMODULE1.qrydetalleDIA_COTIZADOS.Value,floattostr(DATAMODULE1.qrydetalleING_BASE_COT.Value));

            label4.Caption :=  (' Afiliado     '+ DATAMODULE1.qrydetalleAFI_TIPO_DOC.value + ' '+  DATAMODULE1.qrydetalleAFI_NUMERO_DOC.value + '   Nuevo estado   ' + estado + '  del estado    ' + DATAMODULE1.qrydetalleDET_ESTADO.value );
            frmValidarEstados.Refresh;
            //ShowMessage(' Afiliado     ' + DATAMODULE1.qrydetalleAFI_TIPO_DOC.value + ' '+ DATAMODULE1.qrydetalleAFI_NUMERO_DOC.value + '   Nuevo estado   ' + estado + '  del estado    ' + DATAMODULE1.qrydetalleDET_ESTADO.value);
            if estado <>  DATAMODULE1.qrydetalleAFI_TIPO_DOC.value  then
            begin
            Query1.Close;
            Query1.SQL.Clear;
            Query1.SQL.ADD('UPDATE DET_PLANILLA_AUTOLIQUIDACION SET DET_ESTADO = :"ESTADO" WHERE NUM_PLANILLA =:"PLANILLA"  AND  AFI_TIPO_DOC= :"TIPO" AND  AFI_NUMERO_DOC= :"NUMERO"');
            Query1.Parameters[0].VALUE := estado;
            Query1.Parameters[1].VALUE := DataModule1.qrydetallenum_planilla.Value;
            Query1.Parameters[2].VALUE := DataModule1.qrydetalleAFI_TIPO_DOC.Value;
            Query1.Parameters[3].VALUE := DataModule1.qrydetalleAFI_NUMERO_DOC.Value;
            Query1.ExecSQL;
            end;
            label4.Caption :=  (' Grabando     '+ DATAMODULE1.qrydetalleAFI_TIPO_DOC.value + ' '+  DATAMODULE1.qrydetalleAFI_NUMERO_DOC.value + '   Nuevo estado   ' + estado + '  del estado    ' + DATAMODULE1.qrydetalleDET_ESTADO.value );
            frmValidarEstados.Refresh;
            ProgressBar2.Position := I;
            DATAMODULE1.QRYDETALLE.Next;
            end;
         ShowMessage('El proceso Termino  En su  totalidad');
        END;

end;

end.
