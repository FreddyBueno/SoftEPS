unit Uips;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, DBCtrls, ExtCtrls, DB,
  DBTables;

type
  Tfrmips = class(TForm)
    Panel1: TPanel;
    DBNavigator: TDBNavigator;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    eddepto: TEdit;
    edmun: TEdit;
    StatusBar1: TStatusBar;
    DBGrid1: TDBGrid;
    StatusBar2: TStatusBar;
    qry: TQuery;
    ds: TDataSource;
    qryCOD_PRESTADOR: TStringField;
    qryTIP_IDENTIFICACION: TStringField;
    qryNUM_IDENTIFICACION: TStringField;
    qryMON_PRESTADOR: TStringField;
    qryNUM_ACREDITACION: TStringField;
    qryDIR_PRESTADOR: TStringField;
    qryTEL_PRESTADOR: TStringField;
    qryNIV_ATEN_PRESTADOR: TStringField;
    qryTIP_PRESTADOR: TStringField;
    qryCLA_PRESTADOR: TStringField;
    qryCOD_REGINAL: TStringField;
    qryCOD_OFICINA: TStringField;
    qryEST_CONTRATO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmips: Tfrmips;
  depto,mun:string;

implementation

uses Uafiliaciones_usuarios, Uafiliaciones_independientes;

{$R *.dfm}

procedure Tfrmips.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        action:=cafree;
end;

procedure Tfrmips.DBGrid1DblClick(Sender: TObject);
begin

        if (frmips.caption = '[IPS]- COTIZANTE') or (frmips.caption = '[IPS]- BENEF.') then
           begin
                frmafiliacion_usuarios.tblafiliados.edit;
                frmafiliacion_usuarios.tblafiliadostip_documento_ips.text:=qryTIP_IDENTIFICACION.text;
                frmafiliacion_usuarios.tblafiliadosnum_documento_ips.text:=qryNUM_IDENTIFICACION.text;
                frmafiliacion_usuarios.edips.Text:=qryMON_PRESTADOR.text;

           end
        else
            begin
                if frmips.caption = '[MEDICOS]- COTIZANTE' then
                     begin
                          frmafiliacion_usuarios.tblafiliados.edit;
                          frmafiliacion_usuarios.tblafiliadostip_documento_med.text:=qryTIP_IDENTIFICACION.text;
                          frmafiliacion_usuarios.tblafiliadosnum_documento_med.text:=qryNUM_IDENTIFICACION.text;
                          frmafiliacion_usuarios.edips.Text:=qryMON_PRESTADOR.text;

                     end
                else
                    begin
                         if frmips.caption = '[ODONTOLOGOS]- COTIZANTE' then
                             begin
                                  frmafiliacion_usuarios.tblafiliados.edit;
                                  frmafiliacion_usuarios.tblafiliadostip_documento_odo.text:=qryTIP_IDENTIFICACION.text;
                                  frmafiliacion_usuarios.tblafiliadosnum_documento_odo.text:=qryNUM_IDENTIFICACION.text;
                                  frmafiliacion_usuarios.edips.Text:=qryMON_PRESTADOR.text;

                             end;
                    end;
            end;
        if frmips.caption = '[IPS]- BENEFICIARIO' then
           begin
                frmafiliacion_usuarios.qrybeneficiarios.edit;
                frmafiliacion_usuarios.qrybeneficiariosTIP_DOCUMENTO_IPS.text:=qryTIP_IDENTIFICACION.text;
                frmafiliacion_usuarios.qrybeneficiariosNUM_DOCUMENTO_IPS.text:=qryNUM_IDENTIFICACION.text;
                frmafiliacion_usuarios.edipsben.Text:=qryMON_PRESTADOR.text;

           end
        else
            begin
                if frmips.caption = '[MEDICOS]- BENEFICIARIO' then
                     begin
                          frmafiliacion_usuarios.qrybeneficiarios.edit;
                          frmafiliacion_usuarios.qrybeneficiariosTIP_DOCUMENTO_MED.text:=qryTIP_IDENTIFICACION.text;
                          frmafiliacion_usuarios.qrybeneficiariosNUM_DOCUMENTO_MED.text:=qryNUM_IDENTIFICACION.text;
                          frmafiliacion_usuarios.edipsben.Text:=qryMON_PRESTADOR.text;

                     end
                else
                    begin
                         if frmips.caption = '[ODONTOLOGOS]- BENEFICIARIO' then
                             begin
                                  frmafiliacion_usuarios.qrybeneficiarios.edit;
                                  frmafiliacion_usuarios.qrybeneficiariosTIP_DOCUMENTO_ODO.text:=qryTIP_IDENTIFICACION.text;
                                  frmafiliacion_usuarios.qrybeneficiariosNUM_DOCUMENTO_ODO.text:=qryNUM_IDENTIFICACION.text;
                                  frmafiliacion_usuarios.edipsben.Text:=qryMON_PRESTADOR.text;

                             end;
                    end;
            end;

        if (frmips.caption = '[IPS]- COTIZANTE IND') or (frmips.caption = '[IPS]- BENEF. IND') then
           begin
                frmafiliacion_independientes.tblafiliados.edit;
                frmafiliacion_independientes.tblafiliadostip_documento_ips.text:=qryTIP_IDENTIFICACION.text;
                frmafiliacion_independientes.tblafiliadosnum_documento_ips.text:=qryNUM_IDENTIFICACION.text;
                frmafiliacion_independientes.edips.Text:=qryMON_PRESTADOR.text;
                frmafiliacion_independientes.groupbox5.SetFocus;
           end
        else
            begin
                if frmips.caption = '[MEDICOS]- COTIZANTE IND' then
                     begin
                          frmafiliacion_independientes.tblafiliados.edit;
                          frmafiliacion_independientes.tblafiliadostip_documento_med.text:=qryTIP_IDENTIFICACION.text;
                          frmafiliacion_independientes.tblafiliadosnum_documento_med.text:=qryNUM_IDENTIFICACION.text;
                          frmafiliacion_independientes.edips.Text:=qryMON_PRESTADOR.text;

                     end
                else
                    begin
                         if frmips.caption = '[ODONTOLOGOS]- COTIZANTE IND' then
                             begin
                                  frmafiliacion_independientes.tblafiliados.edit;
                                  frmafiliacion_independientes.tblafiliadostip_documento_odo.text:=qryTIP_IDENTIFICACION.text;
                                  frmafiliacion_independientes.tblafiliadosnum_documento_odo.text:=qryNUM_IDENTIFICACION.text;
                                  frmafiliacion_independientes.edips.Text:=qryMON_PRESTADOR.text;

                             end;
                    end;
            end;
           if frmips.caption = '[IPS]- BENEFICIARIO IND' then
           begin
                frmafiliacion_independientes.qrybeneficiarios.edit;
                frmafiliacion_independientes.qrybeneficiariosTIP_DOCUMENTO_IPS.text:=qryTIP_IDENTIFICACION.text;
                frmafiliacion_independientes.qrybeneficiariosNUM_DOCUMENTO_IPS.text:=qryNUM_IDENTIFICACION.text;
                frmafiliacion_independientes.edipsben.Text:=qryMON_PRESTADOR.text;

           end
        else
            begin
                if frmips.caption = '[MEDICOS]- BENEFICIARIO IND' then
                     begin
                          frmafiliacion_independientes.qrybeneficiarios.edit;
                          frmafiliacion_independientes.qrybeneficiariosTIP_DOCUMENTO_MED.text:=qryTIP_IDENTIFICACION.text;
                          frmafiliacion_independientes.qrybeneficiariosNUM_DOCUMENTO_MED.text:=qryNUM_IDENTIFICACION.text;
                          frmafiliacion_independientes.edipsben.Text:=qryMON_PRESTADOR.text;
                     end
                else
                    begin
                         if frmips.caption = '[ODONTOLOGOS]- BENEFICIARIO IND' then
                             begin
                                  frmafiliacion_independientes.qrybeneficiarios.edit;
                                  frmafiliacion_independientes.qrybeneficiariosTIP_DOCUMENTO_ODO.text:=qryTIP_IDENTIFICACION.text;
                                  frmafiliacion_independientes.qrybeneficiariosNUM_DOCUMENTO_ODO.text:=qryNUM_IDENTIFICACION.text;
                                  frmafiliacion_independientes.edipsben.Text:=qryMON_PRESTADOR.text;

                             end;
                    end;
            end;
            frmips.Free;

end;

procedure Tfrmips.Button1Click(Sender: TObject);
var
filtro:string;
begin
  filtro:= char(039)+ edit1.Text+'%'+chr(039);
  qry.close;
  qry.sql.clear;
  qry.sql.add('SELECT prestadores.cod_prestador,'+
         'prestadores.tip_identificacion,'+
         'prestadores.num_identificacion,'+
         'prestadores.mon_prestador,'+
         'prestadores.num_acreditacion,'+
         'prestadores.dir_prestador,'+
         'prestadores.tel_prestador,'+
         'prestadores.niv_aten_prestador,'+
         'prestadores.tip_prestador,'+
         'prestadores.cla_prestador,'+
         'prestadores.cod_reginal,'+
         'prestadores.cod_oficina,'+
         'prestadores.est_contrato '+
         'FROM prestadores ');
  qry.sql.add('WHERE (prestadores.mon_prestador like '+ filtro+ ')');
  qry.sql.add(' Order By prestadores.mon_prestador');
  qry.ExecSql;
  qry.open;
end;

procedure Tfrmips.FormShow(Sender: TObject);
begin
      qry.close;
      qry.ExecSql;
      qry.open;
end;

end.


