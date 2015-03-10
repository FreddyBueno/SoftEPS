unit udeclaraciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, ExtCtrls, DB, StdCtrls, Mask, ComCtrls;

type
  Tfrmdeclaraciones = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    dsdeclaraciones: TDataSource;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdeclaraciones: Tfrmdeclaraciones;

implementation

uses dmcompensacion;

{$R *.dfm}

procedure Tfrmdeclaraciones.FormCreate(Sender: TObject);
begin
   dmcompensa.DataSource1.DataSet := dmcompensa.tbldeclaraciones;
   dmcompensa.tbldeclaraciones.open;
end;

end.
