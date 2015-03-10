unit UListadodigitacioninco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Buttons,shellapi, ComCtrls, DB, DBTables,
  Grids, DBGrids, DBCtrls;

type
  Tfrmlistadoincosistencias = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label47: TLabel;
    Label48: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    qryDestalle: TQuery;
    GroupBox1: TGroupBox;
    btnbuscar: TBitBtn;
    GroupBox3: TGroupBox;
    BitBtn1: TBitBtn;
    dsqconsulta: TDataSource;
    DBGrid1: TDBGrid;
    opguardar: TSaveDialog;
    qryUsuarios: TQuery;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label3: TLabel;
    Label5: TLabel;
    qryUsuariosTIP_DOCUMENTO: TStringField;
    qryUsuariosNUM_DOCUMENTO: TStringField;
    qryUsuariosCOD_ESTADO: TStringField;
    qryUsuariosCOD_USUARIO: TStringField;
    qryUsuariosNOM_USUARIO: TStringField;
    qryUsuariosPWD_USUARIO: TStringField;
    qryUsuariosFEC_EXPIRACION: TDateTimeField;
    qryUsuariosNIV_USUARIO: TFloatField;
    qryUsuariosUSU_LOGUEADO: TFloatField;
    qryUsuariosULT_FEC_LOG: TDateTimeField;
    qryUsuariosCOD_OFICINA: TStringField;
    qryUsuariosCOD_REGIONAL: TStringField;
    qryUsuariosCOD_CARGO: TStringField;
    dtsUsuarios: TDataSource;
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
  frmlistadoincosistencias: Tfrmlistadoincosistencias;

implementation

uses dtmodulo, Uprincipal, Uglobal, Uexcel;

{$R *.dfm}

procedure Tfrmlistadoincosistencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure Tfrmlistadoincosistencias.BitBtn1Click(Sender: TObject);
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
procedure Tfrmlistadoincosistencias.FormActivate(Sender: TObject);
begin
WindowState := wsNormal;
top := 0;
Left := 0;

end;

procedure Tfrmlistadoincosistencias.FormCreate(Sender: TObject);
begin
APPLICATION.ONMESSAGE := APPMESSAGE;
 DateTimePicker1.Date := strtodate(GLDATE);
 DateTimePicker2.Date := strtodate(GLDATE);
end;

procedure Tfrmlistadoincosistencias.btnbuscarClick(Sender: TObject);
begin
     qryDestalle.Close;
     qryDestalle.Params[0].Value := DateTimePicker1.Date;
     qryDestalle.Params[1].Value := DateTimePicker2.Date;
     qryDestalle.Open;
end;

procedure Tfrmlistadoincosistencias.APPMESSAGE(var MSG: TMSG;
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
