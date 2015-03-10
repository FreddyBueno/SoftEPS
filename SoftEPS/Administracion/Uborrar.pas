unit Uborrar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  Tfrmborrado = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Image1: TImage;
    Label47: TLabel;
    Label48: TLabel;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmborrado: Tfrmborrado;

implementation

uses dtmodulo;

{$R *.dfm}

procedure Tfrmborrado.Button1Click(Sender: TObject);
begin
  IF MESSAGEDLG (LowerCase(' Desea Borrar las Autoliquidaciones '+ char(9) + 'Notas de Autoliquidaciones y  ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
  BEGIN
          edit1.text := 'Borrado detalle  de planilla de autoliquidacion' ;
          frmborrado.Refresh;
          DATAMODULE1.qryborrado.CLOSE;
          DATAMODULE1.qryborrado.SQL.CLEAR;
          DATAMODULE1.qryborrado.SQL.ADD('delete from det_planilla_autoliquidacion');
          DATAMODULE1.qryborrado.ExecSQL;

          edit1.text := 'Borrado detalle  de Upc Por Separado' ;
          frmborrado.Refresh;
          DATAMODULE1.qryborrado.CLOSE;
          DATAMODULE1.qryborrado.SQL.CLEAR;
          DATAMODULE1.qryborrado.SQL.ADD('DELETE FROM DET_PAGO_UPC_ADICIONAL');
          DATAMODULE1.qryborrado.ExecSQL;

          edit1.text := 'Borrando  detalle de  Pagos po Cheque' ;
          frmborrado.Refresh;
          DATAMODULE1.qryborrado.CLOSE;
          DATAMODULE1.qryborrado.SQL.CLEAR;
          DATAMODULE1.qryborrado.SQL.ADD('DELETE FROM DET_PAGO_AUTOLIQUIDACIONES');
          DATAMODULE1.qryborrado.ExecSQL;

          edit1.text := 'Borrado  planilla de autoliquidacion' ;
          frmborrado.Refresh;
          DATAMODULE1.qryborrado.CLOSE;
          DATAMODULE1.qryborrado.SQL.CLEAR;
          DATAMODULE1.qryborrado.SQL.ADD('delete from autoliquidacion');
          DATAMODULE1.qryborrado.ExecSQL;

          edit1.text := 'Borrado  detalle de incapacidad' ;
          frmborrado.Refresh;
          DATAMODULE1.qryborrado.CLOSE;
          DATAMODULE1.qryborrado.SQL.CLEAR;
          DATAMODULE1.qryborrado.SQL.ADD('delete from det_incapacidad');
          DATAMODULE1.qryborrado.ExecSQL;

          edit1.text := 'Borrado de Incapacidades' ;
          frmborrado.Refresh;
          DATAMODULE1.qryborrado.CLOSE;
          DATAMODULE1.qryborrado.SQL.CLEAR;
          DATAMODULE1.qryborrado.SQL.ADD('delete from incapacidades');
          DATAMODULE1.qryborrado.ExecSQL;
end;
IF MESSAGEDLG (LowerCase(' Desea Borrar Cartera '+ char(9) + 'Notas de Autoliquidaciones    ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
BEGIN

      edit1.text := 'Borrado Cartera Morosa' ;
      frmborrado.Refresh;
      DATAMODULE1.qryborrado.CLOSE;
      DATAMODULE1.qryborrado.SQL.CLEAR;
      DATAMODULE1.qryborrado.SQL.ADD('Delete from cartera');
      DATAMODULE1.qryborrado.ExecSQL;

      edit1.text := 'Borrando Notas  de Autoliquidaciones' ;
      frmborrado.Refresh;
      DATAMODULE1.qryborrado.CLOSE;
      DATAMODULE1.qryborrado.SQL.CLEAR;
      DATAMODULE1.qryborrado.SQL.ADD('DELETE FROM NOTAS_AUTOLIQUIDACION');
      DATAMODULE1.qryborrado.ExecSQL;
end;

IF MESSAGEDLG (LowerCase(' Desea Borrar las Afiliaciones '+ char(9) + 'Novedades  ?'), MTCONFIRMATION, [MBYES, MBNO], 0) = MRYES THEN
BEGIN

            edit1.text := 'Borrado Novedades Empresas';
            frmborrado.Refresh;
            DATAMODULE1.qryborrado.CLOSE;
            DATAMODULE1.qryborrado.SQL.CLEAR;
            DATAMODULE1.qryborrado.SQL.ADD('delete from Novedades_empresas ');
            DATAMODULE1.qryborrado.ExecSQL;

            edit1.text := 'Borrado Novedades Afiliados';
            DATAMODULE1.qryborrado.CLOSE;
            DATAMODULE1.qryborrado.SQL.CLEAR;
            DATAMODULE1.qryborrado.SQL.ADD('delete from Novedades_afiliados');
            DATAMODULE1.qryborrado.ExecSQL;

            edit1.text := 'Borrado relacion_afiliados' ;
            DATAMODULE1.qryborrado.CLOSE;
            DATAMODULE1.qryborrado.SQL.CLEAR;
            DATAMODULE1.qryborrado.SQL.ADD('delete from relacion_afiliados');
            DATAMODULE1.qryborrado.ExecSQL;

            edit1.text := 'Borrado afiliados_empresas' ;
            DATAMODULE1.qryborrado.CLOSE;
            DATAMODULE1.qryborrado.SQL.CLEAR;
            DATAMODULE1.qryborrado.SQL.ADD('delete from afiliados_empresas');
            DATAMODULE1.qryborrado.ExecSQL;

            edit1.text := 'Borrado afiliados_empresas' ;
            DATAMODULE1.qryborrado.CLOSE;
            DATAMODULE1.qryborrado.SQL.CLEAR;
            DATAMODULE1.qryborrado.SQL.ADD('delete from afiliados_empresas');
            DATAMODULE1.qryborrado.ExecSQL;

            edit1.text := 'Borrado afiliados' ;
            frmborrado.Refresh;
            DATAMODULE1.qryborrado.CLOSE;
            DATAMODULE1.qryborrado.SQL.CLEAR;
            DATAMODULE1.qryborrado.SQL.ADD('delete from afiliados');
            DATAMODULE1.qryborrado.ExecSQL;

            edit1.text := 'Borrado Empresas' ;
            frmborrado.Refresh;
            DATAMODULE1.qryborrado.CLOSE;
            DATAMODULE1.qryborrado.SQL.CLEAR;
            DATAMODULE1.qryborrado.SQL.ADD('delete from empresas');
            DATAMODULE1.qryborrado.ExecSQL;
end;


ShowMessage(' La  Base de  Datos  esta  totalmente Limpia ');


end;

procedure Tfrmborrado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
end;

end.
