unit UConsultadePlanillas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,shellapi, StdCtrls, Mask, Buttons, ComCtrls, DB, DBTables,
  Grids, DBGrids, ADODB;

type
  TfrmConsultaplanlla = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label47: TLabel;
    Label48: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    EDTPLANILLA: TEdit;
    BitBtn1: TBitBtn;
    dsqconsulta: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    opguardar: TSaveDialog;
    qrydetalle: TADOQuery;
    qrydetalleNUM_PLANILLA: TStringField;
    qrydetalleAFI_TIPO_DOC: TStringField;
    qrydetalleAFI_NUMERO_DOC: TStringField;
    qrydetalleNOV_ING: TStringField;
    qrydetalleNOV_RET: TStringField;
    qrydetalleNOV_TDA: TStringField;
    qrydetalleNOV_TAA: TStringField;
    qrydetalleNOV_VSP: TStringField;
    qrydetalleNOV_VST: TStringField;
    qrydetalleNOV_SLN: TStringField;
    qrydetalleNOV_IGE: TStringField;
    qrydetalleNOV_LMA: TStringField;
    qrydetalleNOV_VAC: TStringField;
    qrydetalleDIA_COTIZADOS: TStringField;
    qrydetalleSAL_BASE: TBCDField;
    qrydetalleVAL_NETO_NOV: TBCDField;
    qrydetalleING_BASE_COT: TBCDField;
    qrydetalleCOT_OBLIGATORIA: TBCDField;
    qrydetalleNUM_INCAPACIDAD_EGR: TStringField;
    qrydetalleVAL_INCAPACIDAD_EGR: TBCDField;
    qrydetalleNUM_LICENCIA_MAT: TStringField;
    qrydetalleVAL_LICENCIA_MAT: TBCDField;
    qrydetalleVAL_UPC_ADI: TBCDField;
    qrydetalleVAL_TOTAL_COT: TBCDField;
    qrydetalleDET_ESTADO: TStringField;
    qrydetallePER_COTIZACION: TStringField;
    qrydetallePER_PRESENTACION: TStringField;
    qrydetalleCOD_OFICINA: TStringField;
    qrydetalleNUM_DECLARACION: TBCDField;
    qrydetalleNOM_AFILIADO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure EDTPLANILLAExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaplanlla: TfrmConsultaplanlla;

implementation

uses dtmodulo, Uprincipal, Uglobal, UinformacionAfiliado, Uexcel;

{$R *.dfm}

procedure TfrmConsultaplanlla.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TfrmConsultaplanlla.BitBtn1Click(Sender: TObject);
begin
if   trim(EDTPLANILLA.Text) <> '' then
begin
qrydetalle.Close;
qrydetalle.sql.Clear;
qrydetalle.sql.add ('SELECT * FROM DET_PLANILLA_AUTOLIQUIDACION WHERE  NUM_PLANILLA = :"NUM_PLANILLA"');
qrydetalle.Parameters[0].Value := trim(EDTPLANILLA.TEXT);
qrydetalle.open;
end;
end;
procedure TfrmConsultaplanlla.FormActivate(Sender: TObject);
begin
WindowState := wsNormal;
top := 0;
Left := 0;

end;

procedure TfrmConsultaplanlla.DBGrid1DblClick(Sender: TObject);
begin
   frmInformacionAfiliados:=TfrmInformacionAfiliados.create(application);
   try
   frmInformacionAfiliados.WindowState := wsNormal;
   frmInformacionAfiliados.Edit1.Text := qrydetalleAFI_TIPO_DOC.Value;
   frmInformacionAfiliados.Edit2.Text := qrydetalleAFI_NUMERO_DOC.Value;
   frmInformacionAfiliados.Edit2Exit(frmInformacionAfiliados.Edit2);
 //  frmConsultaplanlla.Close;
   frmInformacionAfiliados.Show;

   //finally
   except
      frmInformacionAfiliados.Free;
   end;

end;

procedure TfrmConsultaplanlla.EDTPLANILLAExit(Sender: TObject);
begin
BitBtn1.Click;
end;

procedure TfrmConsultaplanlla.BitBtn2Click(Sender: TObject);
var i,j:integer;
     filestream:tfilestream;
begin
  opguardar.initialdir:='C:';
  opguardar.filename:='Sin Nombre.xls';
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

end.
