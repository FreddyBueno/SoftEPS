unit uarchmul;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tfrmmulti = class(TForm)
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
  frmmulti: Tfrmmulti;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrmmulti.Button1Click(Sender: TObject);
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
              dmcompensa.tblmultiafiliadoseps.Value := copy(linea,fin,ini-fin);
           if i = 2 then
              dmcompensa.tblmultiafiliadoscod_eps.Value := copy(linea,fin,ini-fin);
           if i = 3 then
              dmcompensa.tblmultiafiliadosnum_declaracion.Value := strtofloat(copy(linea,fin,ini-fin));
           if i = 4 then
              dmcompensa.tblmultiafiliadosper_compensado.Value := copy(linea,fin,ini-fin);
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
              dmcompensa.tblmultiafiliadosdigito.Value := copy(linea,fin,ini-fin);
           if i = 11 then
              dmcompensa.tblmultiafiliadoscod_eps_multiafiliado.Value := copy(linea,fin,ini-fin);
           if i = 12 then
              dmcompensa.tblmultiafiliadosfecha.Value  := copy(linea,fin,ini-fin);
           if i = 13 then
              dmcompensa.tblmultiafiliadosdigito2.Value := copy(linea,fin,ini-fin);
           if i = 14 then
              dmcompensa.tblmultiafiliadosdigito3.Value := copy(linea,fin,ini-fin);
           if i = 15 then
              dmcompensa.tblmultiafiliadosafi_tipo_doc.Value := copy(linea,fin,ini-fin);
           if i = 16 then
              dmcompensa.tblmultiafiliadoscausa.Value := copy(linea,fin,ini-fin);
           if i = 17 then
              dmcompensa.tblmultiafiliadoscampo1.Value := copy(linea,fin,ini-fin);
           if i = 18 then
              dmcompensa.tblmultiafiliadoscampo2.Value := copy(linea,fin,ini-fin);
           fin := ini+1;
       end;
      end;
      dmcompensa.tblmultiafiliadoscausa2.Value  := copy(linea,fin,ini-fin);
      dmcompensa.tblmultiafiliados.Post;
      j:=j+1;
      edit1.Text := floattostr(j);
      frmmulti.Refresh;
    end;
    dmcompensa.tblmultiafiliados.Close;
    Closefile(outputfile);
  end;
  showmessage('Finalizada La Carga de Archivos, Se Cargaron '+floattostr(j)+ ' Registros');
  frmmulti.Close;
end;

end.
