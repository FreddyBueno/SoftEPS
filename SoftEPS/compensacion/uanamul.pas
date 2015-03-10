unit uanamul;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DB, StdCtrls, Shellapi;

type
  Tfrmanamul = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label6: TLabel;
    Label13: TLabel;
    GroupBox2: TGroupBox;
    Panel3: TPanel;
    Label1: TLabel;
    Label8: TLabel;
    Button1: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Button2: TButton;
    Panel4: TPanel;
    DataSource1: TDataSource;
    opguardar: TSaveDialog;
    Panel5: TPanel;
    Button3: TButton;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    Panel6: TPanel;
    DBGrid2: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmanamul: Tfrmanamul;

implementation

uses Uexcel, dmcompensacion;

{$R *.dfm}

procedure Tfrmanamul.Button1Click(Sender: TObject);
begin
  dmcompensa.qrymcanamul.Close;
  dmcompensa.qrymcanamul.Prepare;
  dmcompensa.qrymcanamul.Params[0].Value := strtofloat(edit3.Text);
  dmcompensa.qrymcanamul.Params[1].Value := strtofloat(edit4.Text);
  dmcompensa.qrymcanamul.Open;
  dmcompensa.qrymcmulti.Close;
  dmcompensa.qrymcmulti.Prepare;
  dmcompensa.qrymcmulti.Params[0].Value := strtofloat(edit3.Text);
  dmcompensa.qrymcmulti.Params[1].Value := strtofloat(edit4.Text);
  dmcompensa.qrymcmulti.Open;
end;

procedure Tfrmanamul.Button2Click(Sender: TObject);
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
      with datasource1.DataSet do
      begin
        First;
        for i:=0 to fieldCount-1 do
          xlswritecelllabel(filestream,i,0,fields[i].displaylabel);
        j:=1;
        while (not eof) do
        begin
          for i:=0 to fieldCount-1 do

            if datasource1.DataSet.fields[i].DataType in [ftInteger,ftsmallint,ftword,ftfloat,ftcurrency,ftlargeint] then
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

procedure Tfrmanamul.Button3Click(Sender: TObject);
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
      with datasource2.DataSet do
      begin
        First;
        for i:=0 to fieldCount-1 do
          xlswritecelllabel(filestream,i,0,fields[i].displaylabel);
        j:=1;
        while (not eof) do
        begin
          for i:=0 to fieldCount-1 do

            if datasource2.DataSet.fields[i].DataType in [ftInteger,ftsmallint,ftword,ftfloat,ftcurrency,ftlargeint] then
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
