unit usolmul;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tfrmmulsol = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    procedure Edit2Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmulsol: Tfrmmulsol;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrmmulsol.Edit2Exit(Sender: TObject);
begin
  dmcompensa.qrymcmulsol.Close;
  dmcompensa.qrymcmulsol.Prepare;
  dmcompensa.qrymcmulsol.Params[0].Value := combobox1.Text;
  dmcompensa.qrymcmulsol.Params[1].Value := edit1.Text;
  dmcompensa.qrymcmulsol.Params[2].Value := edit2.Text;
  dmcompensa.qrymcmulsol.Open;
  dmcompensa.qrymcmulsol.First;
  edit3.Text := dmcompensa.qrymcmulsolEST_MULTIAFILIADO.Value;
end;

procedure Tfrmmulsol.Button1Click(Sender: TObject);
begin
  dmcompensa.qrymcmulsol.Edit;
  dmcompensa.qrymcmulsolEST_MULTIAFILIADO.Value := 'CIE';
  dmcompensa.qrymcmulsolID_MULTIAFILIADO.Value := 'SOL';
  dmcompensa.qrymcmulsolCAUSA.Value := 'SOLUCIONADO';
  dmcompensa.qrymcmulsol.Post;
  edit1.Text := '';
  edit2.Text := '';
  edit3.Text := '';
  showmessage('Multiafiliado Solucionado Ha Sido Registrado');
end;

end.
