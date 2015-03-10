unit ureporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, QRExport, DBTables, DB;

type
  Tfrmreporte = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRMemo1: TQRMemo;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand3: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel2: TQRLabel;
    QRStringsBand1: TQRStringsBand;
    QRSubDetail2: TQRSubDetail;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel20: TQRLabel;
    QRBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRnombre: TQRLabel;
    QRdocumento: TQRLabel;
    QRLabel22: TQRLabel;
    QRfecha: TQRLabel;
    QRStringsBand2: TQRStringsBand;
    QRLabel27: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRMemo2: TQRMemo;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRMemo3: TQRMemo;
    QRDBText9: TQRDBText;
    QRLabel3: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure QuickRep1AfterPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmreporte: Tfrmreporte;

implementation

uses Ugrupofamiliar, Uafiliaciones, Udmafiliaciones;







{$R *.dfm}


procedure Tfrmreporte.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure Tfrmreporte.FormShow(Sender: TObject);
begin
        qrnombre.caption:= gb_nom_usu;
        qrdocumento.caption:=gb_tip_doc_usu+' '+gb_num_doc_usu;
//        qroficina.caption:=gb_oficina;
//        qrregional.caption:=gb_regional;
        qrfecha.caption:=datetimetostr(gb_fec_hoy);
        if frmgrupofamiliar.qrynovedadesingresoegresos.RecordCount=0 then
        begin
          QRStringsBand1.Enabled:=false;
          QRSubDetail2.Enabled:=false;
        end
        else
        begin
          QRStringsBand1.Enabled:=true;
          QRSubDetail2.Enabled:=true;
        end;
        if frmgrupofamiliar.qrycartera.RecordCount=0 then
        begin
          QRStringsBand2.Enabled:=false;
          QRSubDetail3.Enabled:=false;
        end
        else
        begin
          QRStringsBand2.Enabled:=true;
          QRSubDetail3.Enabled:=true;
        end;
end;

procedure Tfrmreporte.QuickRep1AfterPreview(Sender: TObject);
begin
    frmgrupofamiliar.qryrelacion_afiliados.First;
    dmafiliaciones.softeps.StartTransaction;
    try
       while not frmgrupofamiliar.qryrelacion_afiliados.eof do
              begin
                    //execute qrynovedades_afiliados
                    frmgrupofamiliar.qrynovedades_afiliados.Close;
                    frmgrupofamiliar.qrynovedades_afiliados.Params[0].AsString := frmgrupofamiliar.qrynovedadesnov_codigo.text;
                    frmgrupofamiliar.qrynovedades_afiliados.Params[1].AsString := frmgrupofamiliar.qryrelacion_afiliadostip_documento_ben.Text;
                    frmgrupofamiliar.qrynovedades_afiliados.Params[2].AsString := frmgrupofamiliar.qryrelacion_afiliadosnum_documento_ben.Text;
                    frmgrupofamiliar.qrynovedades_afiliados.Params[3].AsString := gb_oficina;
                    frmgrupofamiliar.qrynovedades_afiliados.Params[4].AsString := gb_regional;
                    frmgrupofamiliar.qrynovedades_afiliados.Params[5].AsString := gb_tip_doc_usu;
                    frmgrupofamiliar.qrynovedades_afiliados.Params[6].AsString := gb_num_doc_usu;
                    frmgrupofamiliar.qrynovedades_afiliados.Params[7].AsDatetime := frmafiliaciones.fecha_actual();
                    frmgrupofamiliar.qrynovedades_afiliados.Params[8].AsDatetime := frmafiliaciones.fecha_actual();
                    frmgrupofamiliar.qrynovedades_afiliados.Params[9].AsDatetime := frmafiliaciones.fecha_actual();
//                                                                        qrynovedades_afiliados.Params[10].AsString := null;
//                                                                        qrynovedades_afiliados.Params[11].AsString := null;
//                                                                        qrynovedades_afiliados.Params[12].AsString := null;
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
end;

end.
