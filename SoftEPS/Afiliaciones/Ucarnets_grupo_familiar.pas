unit Ucarnets_grupo_familiar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmcarnets_grupofamiliar = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText1: TQRDBText;
    procedure QuickRep1AfterPrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcarnets_grupofamiliar: Tfrmcarnets_grupofamiliar;

implementation

uses Ugrupofamiliar, Udmafiliaciones, Uafiliaciones, Ucar_empresas;

{$R *.dfm}

procedure Tfrmcarnets_grupofamiliar.QuickRep1AfterPrint(Sender: TObject);
begin
//    IF frmcarnets_grupofamiliar.QuickRep1.dataset <> frmcar_empresas.qryrelacion_afiliados then
    IF   frmcar_empresas = nil THEN
       begin
          frmgrupofamiliar.qryrelacion_afiliados.First;
          dmafiliaciones.softeps.StartTransaction;
          try
             while not frmgrupofamiliar.qryrelacion_afiliados.eof do
                    begin
                          //execute qrynovedades_afiliados
                          frmgrupofamiliar.qrynovedades_afiliados.Close;
                          frmgrupofamiliar.qrynovedades_afiliados.Params[0].AsString := '73';
                          frmgrupofamiliar.qrynovedades_afiliados.Params[1].AsString := frmgrupofamiliar.qryrelacion_afiliadostip_documento_ben.Text;
                          frmgrupofamiliar.qrynovedades_afiliados.Params[2].AsString := frmgrupofamiliar.qryrelacion_afiliadosnum_documento_ben.Text;
                          frmgrupofamiliar.qrynovedades_afiliados.Params[3].AsString := gb_oficina;
                          frmgrupofamiliar.qrynovedades_afiliados.Params[4].AsString := gb_regional;
                          frmgrupofamiliar.qrynovedades_afiliados.Params[5].AsString := gb_tip_doc_usu;
                          frmgrupofamiliar.qrynovedades_afiliados.Params[6].AsString := gb_num_doc_usu;
                          frmgrupofamiliar.qrynovedades_afiliados.Params[7].AsDatetime := frmafiliaciones.fecha_actual();
                          frmgrupofamiliar.qrynovedades_afiliados.Params[8].AsDatetime := frmafiliaciones.fecha_actual();
                          frmgrupofamiliar.qrynovedades_afiliados.Params[9].AsDatetime := frmafiliaciones.fecha_actual();
                          if frmgrupofamiliar.ednumero_planilla.text <> '' then
                                    frmgrupofamiliar.qrynovedades_afiliados.Params[13].AsString := frmgrupofamiliar.ednumero_planilla.text;
                          frmgrupofamiliar.qrynovedades_afiliados.ExecSql;
                          frmgrupofamiliar.qryrelacion_afiliados.next;
                    end;
                    dmafiliaciones.softeps.Commit; {on success, commit the changes};
          except
                    dmafiliaciones.softeps.Rollback; {on failure, undo the changes};
                    raise;
                    showMessage('Error en el Generacion de Novedades de Certificados');
                    abort;
          end;
      end
      else
      begin
          frmcar_empresas.qryrelacion_afiliados.First;
          dmafiliaciones.softeps.StartTransaction;
          try
             while not frmcar_empresas.qryrelacion_afiliados.eof do
                    begin
                          //execute qrynovedades_afiliados
                          frmcar_empresas.qrynovedades_afiliados.Close;
                          frmcar_empresas.qrynovedades_afiliados.Params[0].AsString := '73';
                          frmcar_empresas.qrynovedades_afiliados.Params[1].AsString := frmgrupofamiliar.qryrelacion_afiliadostip_documento_ben.Text;
                          frmcar_empresas.qrynovedades_afiliados.Params[2].AsString := frmgrupofamiliar.qryrelacion_afiliadosnum_documento_ben.Text;
                          frmcar_empresas.qrynovedades_afiliados.Params[3].AsString := gb_oficina;
                          frmcar_empresas.qrynovedades_afiliados.Params[4].AsString := gb_regional;
                          frmcar_empresas.qrynovedades_afiliados.Params[5].AsString := gb_tip_doc_usu;
                          frmcar_empresas.qrynovedades_afiliados.Params[6].AsString := gb_num_doc_usu;
                          frmcar_empresas.qrynovedades_afiliados.Params[7].AsDatetime := frmafiliaciones.fecha_actual();
                          frmcar_empresas.qrynovedades_afiliados.Params[8].AsDatetime := frmafiliaciones.fecha_actual();
                          frmcar_empresas.qrynovedades_afiliados.Params[9].AsDatetime := frmafiliaciones.fecha_actual();
                          frmcar_empresas.qrynovedades_afiliados.ExecSql;
                          frmcar_empresas.qryrelacion_afiliados.next;
                    end;
                    dmafiliaciones.softeps.Commit; {on success, commit the changes};
          except
                    dmafiliaciones.softeps.Rollback; {on failure, undo the changes};
                    raise;
                    showMessage('Error en el Generacion de Novedades de Certificados');
                    abort;
          end;
      end;
end;

procedure Tfrmcarnets_grupofamiliar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        action:=cafree;
end;

end.
