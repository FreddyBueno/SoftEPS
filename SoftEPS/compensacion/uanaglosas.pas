unit uanaglosas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ExtCtrls, StdCtrls, Shellapi;

type
  Tfrmanagloeps = class(TForm)
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
    Button3: TButton;
    Panel4: TPanel;
    Splitter1: TSplitter;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    Panel6: TPanel;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    opguardar: TSaveDialog;
    DataSource2: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmanagloeps: Tfrmanagloeps;

implementation

uses dmcompensacion, Uexcel;

{$R *.dfm}

procedure Tfrmanagloeps.Button1Click(Sender: TObject);
begin
  dmcompensa.qrymcanaglo.Close;
  dmcompensa.qrymcanaglo.Prepare;
  dmcompensa.qrymcanaglo.Params[0].Value := strtofloat(edit3.Text);
  dmcompensa.qrymcanaglo.Params[1].Value := strtofloat(edit4.Text);
  dmcompensa.qrymcanaglo.Open;
  dmcompensa.qrymcdetanaglo.Close;
  dmcompensa.qrymcdetanaglo.Prepare;
  dmcompensa.qrymcdetanaglo.Params[0].Value := strtofloat(edit3.Text);
  dmcompensa.qrymcdetanaglo.Params[1].Value := strtofloat(edit4.Text);
  dmcompensa.qrymcdetanaglo.Open;
end;

procedure Tfrmanagloeps.Button2Click(Sender: TObject);
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

procedure Tfrmanagloeps.Button3Click(Sender: TObject);
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

procedure Tfrmanagloeps.FormShow(Sender: TObject);
begin
  dmcompensa.qrymcanaglo.Close;
  dmcompensa.qrymcdetanaglo.Close;
end;

end.
