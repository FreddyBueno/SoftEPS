unit Uasesores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, DBCtrls, ExtCtrls, DB,
  DBTables;

type
  Tfrmasesores = class(TForm)
    Panel1: TPanel;
    DBNavigator: TDBNavigator;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    StatusBar1: TStatusBar;
    DBGrid1: TDBGrid;
    qry: TQuery;
    qrytip_documento: TStringField;
    qrynum_documento: TStringField;
    qrypri_apellido: TStringField;
    qryseg_apellido: TStringField;
    qrypri_nombre: TStringField;
    qryseg_nombre: TStringField;
    ds: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmasesores: Tfrmasesores;

implementation

uses Uafiliaciones_usuarios, Uafiliaciones_independientes;

{$R *.dfm}

procedure Tfrmasesores.Button1Click(Sender: TObject);
var
filtro:string;
begin
  filtro:= char(039)+ edit1.Text+'%'+chr(039);
  qry.close;
  qry.sql.clear;
  qry.sql.add('SELECT acesores.tip_documento,'+
  'acesores.num_documento,'+
  'acesores.pri_apellido,'+
  'acesores.seg_apellido,'+
  'acesores.pri_nombre,'+
  'acesores.seg_nombre '+
  'FROM acesores');
  qry.sql.add('WHERE acesores.cod_estado = "A" and acesores.pri_apellido like '+filtro);
  qry.sql.add('Order By acesores.pri_apellido');
  qry.open;
end;

procedure Tfrmasesores.DBGrid1DblClick(Sender: TObject);
begin
      if frmasesores.Caption ='Selecion Asesores  para dependientes' then
      begin
        frmafiliacion_usuarios.tblafiliados.edit;
        frmafiliacion_usuarios.tblafiliadosace_tip_doc.text:=qrytip_documento.text;
        frmafiliacion_usuarios.tblafiliadosace_numero_doc.text:=qrynum_documento.text;
        frmafiliacion_usuarios.DBEdit4.SetFocus;
        frmasesores.Free;
        end
       else

             if frmasesores.Caption = 'Selecion Asesores  para independientes' then
             begin
              frmafiliacion_independientes.tblafiliados.edit;
              frmafiliacion_independientes.tblafiliadosace_tip_doc.text:=qrytip_documento.text;
              frmafiliacion_independientes.tblafiliadosace_numero_doc.text:=qrynum_documento.text;
              frmafiliacion_independientes.DBEdit4.SetFocus;
              frmasesores.Free;
             end;
end;

procedure Tfrmasesores.FormCreate(Sender: TObject);
begin
     qry.Open;
end;

procedure Tfrmasesores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        action:=cafree;
end;

end.





