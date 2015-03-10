unit Ueps;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, DBCtrls, ExtCtrls, DB,
  DBTables;

type
  Tfrmeps = class(TForm)
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
    qrynom_eps: TStringField;
    qrycod_eps: TStringField;
    qrydir_eps: TStringField;
    qrytel_eps: TStringField;
    qryfax_eps: TStringField;
    qryeml_eps: TStringField;
    qryfec_inclusion: TDateTimeField;
    ds: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmeps: Tfrmeps;

implementation

uses Uafiliaciones_usuarios, Uafiliaciones_independientes;

{$R *.dfm}

procedure Tfrmeps.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        action:=cafree;
end;

procedure Tfrmeps.FormCreate(Sender: TObject);
begin
        qry.Open;
end;

procedure Tfrmeps.Button1Click(Sender: TObject);
var
filtro:string;
begin
  filtro:= char(039)+ edit1.Text+'%'+chr(039);
  qry.close;
  qry.sql.clear;
  qry.sql.add('SELECT eps.tip_documento,'+
                'eps.num_documento,'+
                'eps.nom_eps,'+
                'eps.cod_eps,'+
                'eps.dir_eps,'+
                'eps.tel_eps,'+
                'eps.fax_eps,'+
                'eps.eml_eps,'+
                'eps.fec_inclusion '+
                'FROM eps');
  qry.sql.add('WHERE eps.nom_eps like '+filtro);
  qry.sql.add('Order By eps.nom_eps');
  qry.open;
end;

procedure Tfrmeps.DBGrid1DblClick(Sender: TObject);
begin
        if frmeps.Caption='Seleccion de la eps para el Beneficiario dependiente' then
           begin
                frmafiliacion_usuarios.qrybeneficiarios.edit;
                frmafiliacion_usuarios.qrybeneficiarioseps_tip_doc.text:=qrytip_documento.text;
                frmafiliacion_usuarios.qrybeneficiarioseps_num_doc.text:=qrynum_documento.text;
                frmeps.close;
           end;
           if frmeps.Caption='Seleccion de la eps para dependientes' then
           begin
                frmafiliacion_usuarios.qrybeneficiarios.edit;
                frmafiliacion_usuarios.tblafiliadoseps_tip_doc.text:=qrytip_documento.text;
                frmafiliacion_usuarios.tblafiliadoseps_num_doc.text:=qrynum_documento.text;
                frmafiliacion_usuarios.edit6.Text:=qrynom_eps.Text;
                frmeps.close;
                //frmafiliacion_usuarios.DBEdit24.SetFocus;

           end;
           if frmeps.Caption='Seleccion de la eps para el Beneficiario independiente' then
           begin
                frmafiliacion_independientes.qrybeneficiarios.edit;
                frmafiliacion_independientes.qrybeneficiarioseps_tip_doc.text:=qrytip_documento.text;
                frmafiliacion_independientes.qrybeneficiarioseps_num_doc.text:=qrynum_documento.text;
                frmeps.close;
           end;
           if frmeps.Caption='Seleccion de la eps para independientes' then
           begin
                frmafiliacion_independientes.tblafiliados.edit;
                frmafiliacion_independientes.tblafiliadoseps_tip_doc.text:=qrytip_documento.text;
                frmafiliacion_independientes.tblafiliadoseps_num_doc.text:=qrynum_documento.text;
                frmafiliacion_independientes.Edit6.Text:=qrynom_eps.Text;
                frmeps.close;

           end;



end;

end.
