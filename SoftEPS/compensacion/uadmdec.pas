unit uadmdec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, DBCtrls, DB, Shellapi;

type
  Tfrmadmindec = class(TForm)
    Panel1: TPanel;
    Label13: TLabel;
    Label7: TLabel;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    Panel6: TPanel;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    DateTimePicker2: TDateTimePicker;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource1: TDataSource;
    Button2: TButton;
    DataSource2: TDataSource;
    opguardar: TSaveDialog;
    procedure Edit1Exit(Sender: TObject);
    procedure DateTimePicker1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmadmindec: Tfrmadmindec;

implementation

uses dmcompensacion, Uexcel;

{$R *.dfm}

procedure Tfrmadmindec.Edit1Exit(Sender: TObject);
begin
  if edit1.Text = '' then
  begin
    showmessage('Error en Numero de Declaracion');
    edit1.SetFocus;
  end;
  dmcompensa.qrybusdec.close;
  dmcompensa.qrybusdec.Prepare;
  dmcompensa.qrybusdec.Params[0].Value := strtofloat(edit1.Text);
  dmcompensa.qrybusdec.Open;
  if dmcompensa.qrybusdec.RecordCount = 0 then
  begin
    showmessage('Declaracin aun no ha sido Generada');
    edit1.SetFocus;
  end;
end;

procedure Tfrmadmindec.DateTimePicker1Exit(Sender: TObject);
begin
  if datetimepicker1.Date < dmcompensa.qrybusdecFECHA_DECLARACION.Value then
  begin
    showmessage('La Fecha de Radicacion No Puede Ser Menor a la De Generacion');
    datetimepicker1.SetFocus;
  end
  else
  begin
    dmcompensa.qrytipodec.Close;
    dmcompensa.qrytipodec.Open;
  end;  
end;

procedure Tfrmadmindec.Edit2Exit(Sender: TObject);
begin
  if edit2.Text = '' then
  begin
    showmessage('Error en Numero de Radicacion');
    edit2.SetFocus;
  end;
end;

procedure Tfrmadmindec.DBLookupComboBox1Exit(Sender: TObject);
begin
  if dblookupcombobox1.Text = '' then
  begin
    showmessage('Debe Escoger Un Estado');
    dblookupcombobox1.SetFocus;
  end;
end;

procedure Tfrmadmindec.Button2Click(Sender: TObject);
begin
  if messagedlg('Desea Grabar la Informacion de la Declaracion',mtconfirmation,[mbyes,mbno],0)=mryes then
  begin
    dmcompensa.qryestdec.Close;
    dmcompensa.qryestdec.Prepare;
    dmcompensa.qryestdec.Params[0].Value := strtofloat(edit1.Text);
    dmcompensa.qryestdec.Open;
    if dmcompensa.qryestdec.RecordCount = 0 then
    begin
      dmcompensa.qryestdec.Insert;
      dmcompensa.qryestdecNUM_DECLARACION.Value := strtofloat(edit1.Text);
      dmcompensa.qryestdecNUM_RADICACION.Value := strtofloat(edit2.Text);
      dmcompensa.qryestdecFEC_RADICACION.Value := datetimepicker1.Date;
      dmcompensa.qryestdecESTADO.Value := dblookupcombobox1.KeyValue;
      dmcompensa.qryestdecFEC_ESTADO.Value := datetimepicker2.Date;
    end
    else
    begin
      dmcompensa.qryestdec.Edit;
      dmcompensa.qryestdecNUM_RADICACION.Value := strtofloat(edit2.Text);
      dmcompensa.qryestdecFEC_RADICACION.Value := datetimepicker1.Date;
      dmcompensa.qryestdecESTADO.Value := dblookupcombobox1.KeyValue;
      dmcompensa.qryestdecFEC_ESTADO.Value := datetimepicker2.Date;
    end;
    dmcompensa.qryestdec.Post;
    dmcompensa.qryestdec.Close;
  end;
  dmcompensa.qryestadosdec.Close;
  dmcompensa.qryestadosdec.Open;
end;

procedure Tfrmadmindec.FormShow(Sender: TObject);
begin
  dmcompensa.qryestadosdec.Close;
  dmcompensa.qryestadosdec.Open;
end;

procedure Tfrmadmindec.DBGrid1DblClick(Sender: TObject);
begin
  edit1.Text := floattostr(dmcompensa.qryestadosdecNUM_DECLARACION.value);
  edit2.Text := floattostr(dmcompensa.qryestadosdecNUM_RADICACION.Value);
  datetimepicker1.Date := dmcompensa.qryestadosdecFEC_RADICACION.Value;
  dmcompensa.qrytipodec.Close;
  dmcompensa.qrytipodec.Open;
  dblookupcombobox1.KeyValue := dmcompensa.qryestadosdecESTADO.Value;
  datetimepicker2.Date := dmcompensa.qryestadosdecFEC_ESTADO.Value;
  edit1.SetFocus;
end;

procedure Tfrmadmindec.Button1Click(Sender: TObject);
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
