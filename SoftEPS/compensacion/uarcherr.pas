unit uarcherr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB;

type
  Tfrmmulerr = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Edit1: TEdit;
    Label1: TLabel;
    Label13: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmulerr: Tfrmmulerr;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrmmulerr.Button1Click(Sender: TObject);
var
 dato : string;
 outputfile : textfile;
 linea : string;
 ini : integer;
 fin : integer;
 i : integer;
 j : integer;
begin
  j := 0;
  opendialog1.Execute;
  if opendialog1.FileName <> '' then
  begin
    Assignfile (outputfile, opendialog1.FileName);
    Reset(outputfile);
    dmcompensa.tblmultiafiliados.Open;
    while not eof(outputfile) do
    begin
      dmcompensa.tblmultiafiliados.Insert;
      Readln(outputfile, linea);
      edit1.Text := floattostr(Length(linea));
      fin := 1;
      i := 0;
      for ini := 1 to Length(linea) do
      begin
        if linea[ini] = CHR(9) then
        begin
           dato := copy(linea,fin,ini-fin);
           i:=i+1;
           if i = 1 then
              dmcompensa.tblmultiafiliadosdigito.Value := copy(linea,fin,ini-fin);
           if i = 2 then
           begin
             dmcompensa.tblmultiafiliadoscod_eps.Value := copy(linea,fin,ini-fin);
             dmcompensa.tblmultiafiliadoscod_eps_multiafiliado.Value := copy(linea,fin,ini-fin);
           end;
           if i = 3 then
           begin
             dmcompensa.tblmultiafiliadosnum_declaracion.Value := strtofloat(copy(linea,fin,ini-fin));
             dmcompensa.qrymcdeclaracion3.Close;
             dmcompensa.qrymcdeclaracion3.Prepare;
             dmcompensa.qrymcdeclaracion3.Params[0].Value := strtofloat(copy(linea,fin,ini-fin));
             dmcompensa.qrymcdeclaracion3.Open;
             dmcompensa.qrymcdeclaracion3.First;
             dmcompensa.tblmultiafiliadosPER_COMPENSADO.Value := copy(dmcompensa.qrymcdeclaracion3periodo_compensado.value,4,4)+'-'+copy(dmcompensa.qrymcdeclaracion3periodo_compensado.value,1,2);
             dmcompensa.qrymcdeclaracion3.Close;
           end;
           if i = 4 then
              dmcompensa.tblmultiafiliadosafi_tipo_doc.Value := copy(linea,fin,ini-fin);
           if i = 5 then
              dmcompensa.tblmultiafiliadosafi_numero_doc.Value := copy(linea,fin,ini-fin);
           if i = 6 then
              dmcompensa.tblmultiafiliadospri_apellido.Value := copy(linea,fin,ini-fin);
           if i = 7 then
              dmcompensa.tblmultiafiliadosseg_apellido.Value := copy(linea,fin,ini-fin);
           if i = 8 then
              dmcompensa.tblmultiafiliadospri_nombre.Value := copy(linea,fin,ini-fin);
           if i = 9 then
              dmcompensa.tblmultiafiliadosseg_nombre.Value := copy(linea,fin,ini-fin);
           if i = 10 then
              dmcompensa.tblmultiafiliadoscausa2.Value := copy(linea,fin,ini-fin);
           if i = 11 then
              dmcompensa.tblmultiafiliadosdigito2.Value := copy(linea,fin,ini-fin);
           if i = 12 then
              dmcompensa.tblmultiafiliadoscausa.Value  := copy(linea,fin,ini-fin);
           fin := ini+1;
       end;
      end;
      dmcompensa.tblmultiafiliadosdigito3.Value := copy(linea,fin,ini-fin);
      dmcompensa.tblmultiafiliadosEPS.Value := 'RedSalud Atencion Humana EPS';
      dmcompensa.tblmultiafiliadosFECHA.Value := '00/00/0000';
      dmcompensa.tblmultiafiliadosCAMPO1.Value := 'ERR';
      dmcompensa.tblmultiafiliadosCAMPO2.Value := 'ERR';
      dmcompensa.tblmultiafiliados.Post;
      j:=j+1;
      edit1.Text := floattostr(j);
      frmmulerr.Refresh;
    end;
    dmcompensa.tblmultiafiliados.Close;
    Closefile(outputfile);
  end;
  showmessage('Finalizada La Carga de Archivos, Se Cargaron '+floattostr(j)+ ' Registros');
  frmmulerr.Close;
end;

end.
