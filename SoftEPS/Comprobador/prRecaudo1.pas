unit prRecaudo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, DBCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Recaudo1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
Var
  F: TextFile;
  S: string;
begin
  AssignFile(F, 'UsuarioRecaudo.txt');
  Rewrite(F);
  S := Edit6.Text;
  Writeln(F, S);
  CloseFile(F);
  close;
end;

procedure TForm2.FormCreate(Sender: TObject);
var 
  F: TextFile;
  S: string;
begin
  AssignFile(F, 'UsuarioRecaudo.txt');
  Reset(F);
  Readln(F, S);
  Edit6.Text := S;
  CloseFile(F);
end;

procedure TForm2.Edit1Exit(Sender: TObject);
var i:integer;
    s:string;
begin
  s:=edit1.text;
  for i:=1 to 10-length(edit1.text) do
     insert('0',s,1);
  edit1.text:=s;
end;

procedure TForm2.Edit2Exit(Sender: TObject);
var i:integer;
    s:string;
begin
  s:=edit2.text;
  for i:=1 to 15-length(edit2.text) do
     insert('0',s,1);
  edit2.text:=s;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  exit;
end;

procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then edit2.SetFocus;
end;

procedure TForm2.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then combobox1.SetFocus;
end;

procedure TForm2.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then edit6.SetFocus;
end;

procedure TForm2.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then edit5.SetFocus;
end;

procedure TForm2.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then button1.SetFocus;
end;

procedure TForm2.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then edit3.SetFocus;
end;

end.
