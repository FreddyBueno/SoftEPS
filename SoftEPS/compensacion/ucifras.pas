unit ucifras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, Mask, DB, shellapi, uexcel;

type
  Tfrmcifras = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label6: TLabel;
    Label13: TLabel;
    GroupBox2: TGroupBox;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    MaskEdit2: TMaskEdit;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    Button1: TButton;
    DataSource1: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label8: TLabel;
    opguardar: TSaveDialog;
    Button2: TButton;
    dsqconsulta: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcifras: Tfrmcifras;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrmcifras.Button1Click(Sender: TObject);
var
  cot,ben,ad,rec,coti : real;
begin
  dmcompensa.qrymcpladet.Close;
  dmcompensa.qrymcpladet.Prepare;
  dmcompensa.qrymcpladet.Params[0].Value := maskedit2.Text;
  dmcompensa.qrymcpladet.Params[1].Value :=datetimepicker2.Date;
  dmcompensa.qrymcpladet.Params[2].Value :=datetimepicker1.Date;
  dmcompensa.qrymcpladet.open;
  cot := 0;
  ben := 0;
  ad := 0;
  rec := 0;
  coti := 0;
  while not dmcompensa.qrymcpladet.Eof do
  begin
    if dmcompensa.qrymcpladetCOD_TIPO_AFIL.Value = 'C' then
    begin
       cot := cot + 1;
       rec := rec + dmcompensa.qrymcpladetING_BASE_COT.Value;
       coti := coti + dmcompensa.qrymcpladetCOT_OBLIGATORIA.Value;
    end;
    if dmcompensa.qrymcpladetCOD_TIPO_AFIL.Value = 'B' then
       ben := ben + 1;
    if dmcompensa.qrymcpladetCOD_TIPO_AFIL.Value = 'A' then
       ad := ad + 1;
    dmcompensa.qrymcpladet.Next;
  end;
  edit1.Text := format('%n',[cot]);
  edit2.Text := format('%n',[ben]);
  edit3.Text := format('%n',[ad]);
  edit4.Text := format('%n',[rec]);
  edit5.Text := format('%n',[coti]);
  dmcompensa.qrymcpladet.First;
end;

procedure Tfrmcifras.ExcelClick(Sender: TObject);
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

            if dsqconsulta.dataset.fields[i].DataType in [ftInteger,ftsmallint,ftword,ftfloat,ftcurrency,ftlargeint] then
              xlswritecellnumber(filestream,i,j,fields[i].AsInteger)
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

procedure Tfrmcifras.Button2Click(Sender: TObject);
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

            if dsqconsulta.dataset.fields[i].DataType in [ftInteger,ftsmallint,ftword,ftfloat,ftcurrency,ftlargeint] then
              xlswritecellnumber(filestream,i,j,fields[i].AsInteger)
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

procedure Tfrmcifras.FormShow(Sender: TObject);
begin
  dmcompensa.qrymcpladet.close;
end;

end.
