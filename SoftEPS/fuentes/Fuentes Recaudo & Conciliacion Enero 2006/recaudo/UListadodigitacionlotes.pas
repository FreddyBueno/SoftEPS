unit UListadodigitacionlotes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Buttons,shellapi, ComCtrls, DB, DBTables,
  Grids, DBGrids, DBCtrls, ADODB;

type
  Tfrmlistadolotes = class(TForm)
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
    btnbuscar: TBitBtn;
    GroupBox3: TGroupBox;
    BitBtn1: TBitBtn;
    dsqconsulta: TDataSource;
    DBGrid1: TDBGrid;
    opguardar: TSaveDialog;
    Label5: TLabel;
    Edit1: TEdit;
    qryDestalle: TADOQuery;
    qryDestalleNUM_PLANILLA: TStringField;
    qryDestalleEMP_TIPO_DOC: TStringField;
    qryDestalleEMP_NUMERO_DOC: TStringField;
    qryDestalleCOD_SUCURSAL: TStringField;
    qryDestalleTIP_DECLARACION: TStringField;
    qryDestalleFEC_PAGO: TDateTimeField;
    qryDestalleNUM_PLANILLA_CORR: TStringField;
    qryDestallePER_COTIZACION: TStringField;
    qryDestallePER_PRESENTACION: TStringField;
    qryDestalleTOT_PLANILLA: TBCDField;
    qryDestalleTOT_APORTE_PER: TBCDField;
    qryDestalleTOT_INCAPACIDAD: TBCDField;
    qryDestalleTOT_LICENCIAS: TBCDField;
    qryDestalleTOT_APORTE: TBCDField;
    qryDestalleINT_MORA: TBCDField;
    qryDestalleTOT_APORTE_MMORA: TBCDField;
    qryDestalleTOT_SALDO_FAV: TBCDField;
    qryDestalleTOT_UPC: TBCDField;
    qryDestalleTOT_PAGADO: TBCDField;
    qryDestalleCOD_BANCO: TStringField;
    qryDestalleNUM_CUENTA: TStringField;
    qryDestalleVAL_EFECTIVO: TBCDField;
    qryDestalleVAL_CHEQUE: TBCDField;
    qryDestalleEST_PLANILLA: TStringField;
    qryDestalleCOD_REGIONAL: TStringField;
    qryDestalleCOD_OFICINA: TStringField;
    qryDestalleNUM_DECLARACION: TBCDField;
    qryDestalleCRU_CONCILIACION: TStringField;
    qryDestalleFEC_DIGITACION: TDateTimeField;
    qryDestalleTIP_DOC_USUARIO: TStringField;
    qryDestalleNUM_DOC_USUARIO: TStringField;
    qryDestalleFEC_MODIFICACION: TDateTimeField;
    qryDestalleNO_INCAP_PAG: TStringField;
    qryDestalleVAL_INCAP_PAG: TBCDField;
    qryDestalleNO_LICEN_PAG: TStringField;
    qryDestalleVAL_LICEN_PAG: TBCDField;
    qryDestalleNO_MESES_MORA: TBCDField;
    qryDestalleNO_PLANINILLA_ANT: TStringField;
    qryDestalleVAL_NETO_UPC: TBCDField;
    qryDestalleVAL_INTERES_UPC: TBCDField;
    qryDestalleVAL_APORMASINT_UPC: TBCDField;
    qryDestalleVAL_SALFAVOR_UPC: TBCDField;
    qryDestalleVAL_PAGO_UPC: TBCDField;
    qryDestalleNUM_LOTE: TStringField;
    qryDestalleNOM_EMPRESA: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnbuscarClick(Sender: TObject);
    PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlistadolotes: Tfrmlistadolotes;

implementation

uses dtmodulo, Uprincipal, Uglobal, Uexcel;

{$R *.dfm}

procedure Tfrmlistadolotes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure Tfrmlistadolotes.BitBtn1Click(Sender: TObject);
var i,j:integer;
     filestream:tfilestream;
begin
  opguardar.initialdir:='C:';
  opguardar.filename:='Listado de inconsistencias.xls';
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
procedure Tfrmlistadolotes.FormActivate(Sender: TObject);
begin
WindowState := wsNormal;
top := 0;
Left := 0;

end;

procedure Tfrmlistadolotes.FormCreate(Sender: TObject);
begin
APPLICATION.ONMESSAGE := APPMESSAGE;
end;

procedure Tfrmlistadolotes.btnbuscarClick(Sender: TObject);
begin
if  trim(Edit1.Text) <> '' then
 begin
     qryDestalle.Close;
     qryDestalle.Parameters[0].Value := trim(Edit1.Text);
     qryDestalle.Open;
 end;
end;

procedure Tfrmlistadolotes.APPMESSAGE(var MSG: TMSG;
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
