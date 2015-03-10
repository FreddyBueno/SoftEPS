unit Uindependientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ComCtrls, DB, DBTables;

type
  Tfrmidependientes = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    ComboBox2: TComboBox;
    mskcompensacion: TMaskEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    ComboBox3: TComboBox;
    Edit9: TEdit;
    Image1: TImage;
    StaticText1: TStaticText;
    Label1: TLabel;
    ComboBox4: TComboBox;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Button1: TButton;
    Edit13: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    mskpresentacion: TMaskEdit;
    Label20: TLabel;
    edttotalapagar: TEdit;
    Label21: TLabel;
    qryafiliados: TQuery;
    edtsalariobase: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    DateTimePicker2: TDateTimePicker;
    MaskEdit1: TMaskEdit;
    Label22: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmidependientes: Tfrmidependientes;

implementation

{$R *.dfm}

procedure Tfrmidependientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=cafree;
end;

end.
