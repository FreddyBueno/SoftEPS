unit UAfiliadossinpagos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Buttons,shellapi, ComCtrls, DB, DBTables,
  Grids, DBGrids, ADODB;

type
  TfrmAfilidosSinpagos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label47: TLabel;
    Label48: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    cbtipo: TComboBox;
    Label5: TLabel;
    edtnumero: TEdit;
    Label6: TLabel;
    edtnombre: TEdit;
    MaskEdit1: TMaskEdit;
    Label7: TLabel;
    btnbuscar: TBitBtn;
    GroupBox3: TGroupBox;
    BitBtn1: TBitBtn;
    dsqconsulta: TDataSource;
    DBGrid1: TDBGrid;
    opguardar: TSaveDialog;
    qryDestalle: TADOQuery;
    qryempresas: TADOQuery;
    qryDestalleTIP_DOCUMENTO: TStringField;
    qryDestalleNUM_DOCUMENTO: TStringField;
    qryDestallePRI_APELLIDO: TStringField;
    qryDestalleSEG_APELLIDO: TStringField;
    qryDestallePRI_NOMBRE: TStringField;
    qryDestalleSEG_NOMBRE: TStringField;
    qryDestalleFEC_NACIMIENTO: TDateTimeField;
    qryDestalleFEC_INGRESO_UNI: TDateTimeField;
    qryDestalleFEC_EGRESO_UNI: TDateTimeField;
    qryDestalleVAL_SUELDO_AFIL: TBCDField;
    qryempresasNOM_EMPRESA: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtnumeroExit(Sender: TObject);
    procedure btnbuscarClick(Sender: TObject);
    PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAfilidosSinpagos: TfrmAfilidosSinpagos;

implementation

uses dtmodulo, Uprincipal, Uglobal, Uexcel;

{$R *.dfm}

procedure TfrmAfilidosSinpagos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TfrmAfilidosSinpagos.BitBtn1Click(Sender: TObject);
var i,j:integer;
     filestream:tfilestream;
begin
  opguardar.initialdir:='C:';
  opguardar.filename:='Afiliados Sin Pago.xls';
  opguardar.DefaultExt:='xls';

  if opguardar.execute then
  begin
    filestream:=tfilestream.create(opguardar.filename,fmcreate);
    try
      xlsbeginstream(filestream,0);
      with dsqconsulta.dataset do
      begin
        First;
        for i:=0 to fieldCount-1 do
          xlswritecelllabel(filestream,i,0,fields[i].displaylabel);
        j:=1;
        while (not eof) do
        begin
          for i:=0 to fieldCount-1 do

            if dsqconsulta.dataset.fields[i].DataType in [ftBCD,ftInteger,ftsmallint,ftword,ftfloat,ftcurrency,ftlargeint] then
              xlswritecellnumber(filestream,i,j,fields[i].Asfloat)
            else xlswritecelllabel(filestream,i,j,fields[i].asstring);
          inc(j);
          next;
        end;
        xlsendstream(filestream);
      end;
    finally
      filestream.free;
      shellexecute(handle,'open',pchar(opguardar.FileName),'','',sw_shownormal);
    end;
  end;
end;
procedure TfrmAfilidosSinpagos.FormActivate(Sender: TObject);
begin
WindowState := wsNormal;
top := 0;
Left := 0;

end;

procedure TfrmAfilidosSinpagos.MaskEdit1Exit(Sender: TObject);
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

procedure TfrmAfilidosSinpagos.FormCreate(Sender: TObject);
begin
MaskEdit1.TEXT := GLPRESENTACION;
APPLICATION.ONMESSAGE := APPMESSAGE;
end;

procedure TfrmAfilidosSinpagos.edtnumeroExit(Sender: TObject);
begin
 if trim(EDTNUMERO.Text) = '' then
 begin
 ShowMessage('Digite  el numero de Documento del Afiliado');
 EDTNUMERO.SetFocus;
 exit;
 end;
IF (CBTIPO.ITEMINDEX >= 0) AND (EDTNUMERO.TEXT > '0') THEN
      BEGIN
            EDTNOMBRE.TEXT := '';
                QRYEMPRESAS.CLOSE;
                QRYEMPRESAS.SQL.CLEAR;
                QRYEMPRESAS.SQL.ADD('SELECT NOM_EMPRESA FROM  EMPRESAS  WHERE TIP_DOCUMENTO = :"TIPO" AND NUM_DOCUMENTO = :"NUMERO"');
                QRYEMPRESAS.Parameters[0].VALUE := TRIM(CBTIPO.TEXT);
                QRYEMPRESAS.Parameters[1].VALUE := TRIM(EDTNUMERO.TEXT);
                QRYEMPRESAS.OPEN;
                       IF QRYEMPRESAS.RECORDCOUNT > 0 THEN
                        BEGIN
                        EDTNOMBRE.TEXT :=  QRYEMPRESASNOM_EMPRESA.VALUE;
                        MaskEdit1.Text := GLPRESENTACION;
                        END
                        else
                        IF QRYEMPRESAS.RECORDCOUNT = 0 THEN
                        BEGIN
                        ShowMessage(' LA EMPRESA  NO ESTA REGISTRADA VERIFIQUE NUEVAMENTE');
                        END


      END;


end;

procedure TfrmAfilidosSinpagos.btnbuscarClick(Sender: TObject);
begin
IF (CBTIPO.ITEMINDEX >= 0) AND (EDTNUMERO.TEXT > '0') THEN
    BEGIN
     qryDestalle.Close;
     qryDestalle.Parameters[0].Value := CBTIPO.Text;
     qryDestalle.Parameters[1].Value := edtnumero.Text;
     qryDestalle.Parameters[2].Value := strtodate('01/'+ MaskEdit1.Text);
     qryDestalle.Parameters[3].Value := strtodate('01/'+ MaskEdit1.Text);
     qryDestalle.Parameters[4].Value := CBTIPO.Text;
     qryDestalle.Parameters[5].Value := edtnumero.Text;
     qryDestalle.Parameters[6].Value := TRIM(MaskEdit1.Text);
     qryDestalle.Open;
    end;
end;

procedure TfrmAfilidosSinpagos.APPMESSAGE(var MSG: TMSG;
  var HANDLED: BOOLEAN);
begin
 IF MSG.WPARAM = VK_RETURN THEN
       BEGIN
        IF ((SCREEN.ACTIVECONTROL) IS TCOMBOBOX) THEN
             MSG.WPARAM := VK_TAB;
            IF (((SCREEN.ACTIVECONTROL) IS TEDIT)) THEN
                MSG.WPARAM := VK_TAB;
            //    IF ((SCREEN.ACTIVECONTROL) IS TDBEDIT) THEN
            //    MSG.WPARAM := VK_TAB;
           //     IF ((SCREEN.ACTIVECONTROL) IS TDBLOOKUPCOMBOBOX) THEN
           //     MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TStringGrid) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TCheckBox) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TDateTimePicker) THEN
                MSG.WPARAM := VK_TAB;


       END;

end;

end.
