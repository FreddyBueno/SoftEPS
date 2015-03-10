unit Ureporte_inconsistencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, DB, ADODB, shellapi;

type
  Tfrmreporte_inconsistencias = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    dtsinconsistencias: TDataSource;
    DBGrid1: TDBGrid;
    btngenerar: TBitBtn;
    cmbinconsistencias: TComboBox;
    Label5: TLabel;
    Panel2: TPanel;
    btnimprimir: TBitBtn;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    qryinconsistencias: TADOQuery;
    Edttotal: TEdit;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    opguardar: TSaveDialog;
    procedure btnimprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btngenerarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cmbinconsistenciasClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmreporte_inconsistencias: Tfrmreporte_inconsistencias;

implementation

uses Uimprimir_glosas, dtmodulo, Uexcel;

{$R *.dfm}

procedure Tfrmreporte_inconsistencias.btnimprimirClick(Sender: TObject);
begin
IF EDTTOTAL.Text>'0' THEN
BEGIN
FRMIMPRIMIR_GLOSAS:=TFRMIMPRIMIR_GLOSAS.CREATE(APPLICATION);
FRMIMPRIMIR_GLOSAS.QuickRep1.Preview;
END
ELSE
SHOWMESSAGE('No hay registros por imprimir')
{TRY
FRMIMPRIMIR_GLOSAS.SHOW;
//FINALLY
EXCEPT
FRMIMPRIMIR_GLOSAS.FREE;
END;}

end;

procedure Tfrmreporte_inconsistencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACTION := CAFREE;
end;

procedure Tfrmreporte_inconsistencias.btngenerarClick(Sender: TObject);
begin
 qryinconsistencias.Close;
 qryinconsistencias.Parameters[0].Value:=copy(cmbinconsistencias.Text,1,3);
 qryinconsistencias.Open;
 Edttotal.Text:=inttostr(qryinconsistencias.RecordCount);
end;



procedure Tfrmreporte_inconsistencias.FormActivate(Sender: TObject);
begin
WindowState := wsNormal;
top := 0;
Left := 0;
end;

procedure Tfrmreporte_inconsistencias.cmbinconsistenciasClick(
  Sender: TObject);
begin
 edttotal.Text:='';
 qryinconsistencias.Close;
end;


procedure Tfrmreporte_inconsistencias.BitBtn2Click(Sender: TObject);
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
      with dtsinconsistencias.dataset do
      begin
        First;
        for i:=0 to fieldCount-1 do
          xlswritecelllabel(filestream,i,0,fields[i].displaylabel);
        j:=1;
        while (not eof) do
        begin
          for i:=0 to fieldCount-1 do

            if dtsinconsistencias.dataset.fields[i].DataType in [ftBCD,ftInteger,ftsmallint,ftword,ftfloat,ftcurrency,ftlargeint] then
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
