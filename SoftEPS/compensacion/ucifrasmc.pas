unit ucifrasmc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, ComCtrls, Mask, ExtCtrls, Uexcel, shellapi;

type
  Tfrmcifrasmc = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label6: TLabel;
    Label13: TLabel;
    GroupBox2: TGroupBox;
    Panel3: TPanel;
    Label2: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    MaskEdit2: TMaskEdit;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button2: TButton;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    opguardar: TSaveDialog;
    dsqconsulta: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcifrasmc: Tfrmcifrasmc;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrmcifrasmc.Button1Click(Sender: TObject);
var
  cot,ben,ad,rec,coti : real;
begin
  dmcompensa.mcqrymcpladet.Close;
  dmcompensa.mcqrymcpladet.Prepare;
  dmcompensa.mcqrymcpladet.Params[0].Value := maskedit2.Text;
  dmcompensa.mcqrymcpladet.Params[1].Value :=datetimepicker2.Date;
  dmcompensa.mcqrymcpladet.Params[2].Value :=datetimepicker1.Date;
  dmcompensa.mcqrymcpladet.open;
  cot := 0;
  ben := 0;
  ad := 0;
  rec := 0;
  coti := 0;
  while not dmcompensa.mcqrymcpladet.Eof do
  begin
    if dmcompensa.mcqrymcpladetCOD_TIPO_AFIL.Value = 'C' then
    begin
       cot := cot + 1;
       rec := rec + dmcompensa.mcqrymcpladetING_BASE_COT.Value;
       coti := coti + dmcompensa.mcqrymcpladetCOT_OBLIGATORIA.Value;
    end;
    if dmcompensa.mcqrymcpladetCOD_TIPO_AFIL.Value = 'B' then
       ben := ben + 1;
    if dmcompensa.mcqrymcpladetCOD_TIPO_AFIL.Value = 'A' then
       ad := ad + 1;
    dmcompensa.mcqrymcpladet.Next;
  end;
  edit1.Text := format('%n',[cot]);
  edit2.Text := format('%n',[ben]);
  edit3.Text := format('%n',[ad]);
  edit4.Text := format('%n',[rec]);
  edit5.Text := format('%n',[coti]);
  dmcompensa.mcqrymcpladet.First;
end;

procedure Tfrmcifrasmc.Button2Click(Sender: TObject);
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

end.
