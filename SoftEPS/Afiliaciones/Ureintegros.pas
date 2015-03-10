unit Ureintegros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Mask, DBCtrls, StdCtrls, Buttons, ExtCtrls, DB,
  DBTables, ComCtrls;

type
  Tfrmreintegros = class(TForm)
    qryafiliados: TQuery;
    qryafiliadostip_documento: TStringField;
    qryafiliadosnum_documento: TStringField;
    qryafiliadoscod_sexo: TStringField;
    qryafiliadospri_apellido: TStringField;
    qryafiliadosseg_apellido: TStringField;
    qryafiliadospri_nombre: TStringField;
    qryafiliadosseg_nombre: TStringField;
    qryafiliadosfec_nacimiento: TDateTimeField;
    qryafiliadoscod_estado_civ: TStringField;
    qryafiliadoscod_estrato: TStringField;
    qryafiliadosfec_afiliacion_sis: TDateTimeField;
    qryafiliadosfec_afiliacion_uni: TDateTimeField;
    qryafiliadoscod_discapacidad: TStringField;
    qryafiliadosnom_afiliado: TStringField;
    dsafiliados: TDataSource;
    qryrelacion_afiliados: TQuery;
    qryrelacion_afiliadosnom_parentesco: TStringField;
    qryrelacion_afiliadosnom_sexo: TStringField;
    qryrelacion_afiliadosnom_tipo: TStringField;
    qryrelacion_afiliadosnom_estado: TStringField;
    qryrelacion_afiliadoscod_tipo_afil: TStringField;
    qryrelacion_afiliadoscod_parentesco: TStringField;
    qryrelacion_afiliadostip_documento_ben: TStringField;
    qryrelacion_afiliadosnum_documento_ben: TStringField;
    qryrelacion_afiliadospri_apellido: TStringField;
    qryrelacion_afiliadosseg_apellido: TStringField;
    qryrelacion_afiliadospri_nombre: TStringField;
    qryrelacion_afiliadosseg_nombre: TStringField;
    qryrelacion_afiliadoscod_sexo: TStringField;
    qryrelacion_afiliadosfec_nacimiento: TDateTimeField;
    qryrelacion_afiliadosnom_afiliado: TStringField;
    qryrelacion_afiliadosfec_afiliacion_uni: TDateTimeField;
    qryrelacion_afiliadoscod_departamento_res: TStringField;
    qryrelacion_afiliadoscod_ciudad_res: TStringField;
    qryrelacion_afiliadosnom_depto: TStringField;
    qryrelacion_afiliadosnom_ciudad: TStringField;
    qryrelacion_afiliadostip_documento_cot: TStringField;
    qryrelacion_afiliadosnum_documento_cot: TStringField;
    qryrelacion_afiliadosnom_deptociudad: TStringField;
    qryrelacion_afiliadoscod_discapacidad: TStringField;
    qryrelacion_afiliadoscod_estrato: TStringField;
    qryrelacion_afiliadosdoc_ben: TStringField;
    qryrelacion_afiliadosdoc_cot: TStringField;
    qryrelacion_afiliadoscod_estado: TStringField;
    dsrelacion_afiliados: TDataSource;
    dscotiza: TDataSource;
    qrycotiza: TQuery;
    qrycotizatip_documento_cot: TStringField;
    qrycotizanum_documento_cot: TStringField;
    dstipos_documentos: TDataSource;
    dssexo: TDataSource;
    dsestratos: TDataSource;
    dsdiscapacidades: TDataSource;
    dsestadosciviles: TDataSource;
    Panel2: TPanel;
    qryfecha_ultima_exclusion: TQuery;
    qryfecha_ultima_exclusionfec_exclusion_nov: TDateTimeField;
    qryfecha_ultima_exclusiontip_documento_ben: TStringField;
    qryfecha_ultima_exclusionnum_documento_ben: TStringField;
    qryfecha_ultima_exclusioncod_estado: TStringField;
    qryfecha_ultima_exclusionfec_inclusion_nov: TDateTimeField;
    Query1: TQuery;
    Qryafiliados_empresas: TQuery;
    Qryafiliados_empresastip_documento_emp: TStringField;
    Qryafiliados_empresasnum_documento_emp: TStringField;
    Qryafiliados_empresascod_sucursal: TStringField;
    Qryafiliados_empresasfec_ingreso_uni: TDateTimeField;
    qrynovedades_afiliados: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    dsafiliados_empresas: TDataSource;
    Qryafiliados_empresascod_estado: TStringField;
    Qryafiliados_empresasval_sueldo_afil: TFloatField;
    Qryafiliados_empresasfec_egreso_uni: TDateTimeField;
    Qryafiliados_empresasnom_empresa: TStringField;
    Qryafiliados_empresasnom_estado: TStringField;
    qryrelacion_afiliadosfec_exclusion_nov: TDateTimeField;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    btnreintegros_ben: TButton;
    btnreingreso_cot: TButton;
    GroupBox16: TGroupBox;
    gbdocumentos: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    dbltipos: TDBLookupComboBox;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    mefecha_evento: TMaskEdit;
    ednumero_planilla: TEdit;
    Panel4: TPanel;
    GroupBox4: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label33: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label36: TLabel;
    Label39: TLabel;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    dblsexo: TDBLookupComboBox;
    dblestrato: TDBLookupComboBox;
    dbldiscapacidad: TDBLookupComboBox;
    dblestadocivil: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    qryrelacion_afiliadosSYSDATE: TDateTimeField;
    qryrelacion_afiliadosSEM_COTIZACION: TFloatField;
    Label26: TLabel;
    Label48: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnreingreso_cotClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryrelacion_afiliadosCalcFields(DataSet: TDataSet);
    procedure btnreintegros_benClick(Sender: TObject);
    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure dbltiposExit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fecha_ultima_exclusion:tdatetime;
  frmreintegros: Tfrmreintegros;

implementation

uses Udmafiliaciones, Uafiliaciones;

{$R *.dfm}

procedure Tfrmreintegros.BitBtn1Click(Sender: TObject);

begin
       if  (dbltipos.Text <>'') and (edit2.Text <>'') then
        begin
        ////
                if (btnreingreso_cot.visible=true) and
                   (btnreintegros_ben.visible=false) then
                begin
                     qryafiliados.close;
                     qryafiliados.sql.clear;
                     qryafiliados.sql.add('Select '+
                        'afiliados.tip_documento,'+
                        'afiliados.num_documento,'+
                        'afiliados.cod_sexo,'+
                        'afiliados.pri_apellido,'+
                        'afiliados.seg_apellido,'+
                        'afiliados.pri_nombre,'+
                        'afiliados.seg_nombre,'+
                        'afiliados.fec_nacimiento,'+
                        'afiliados.cod_estado_civ,'+
                        'afiliados.cod_estrato,'+
                        'afiliados.fec_afiliacion_sis,'+
                        'afiliados.fec_afiliacion_uni,'+
                        'afiliados.cod_discapacidad ');
                      qryafiliados.sql.add('From afiliados ');
                      qryafiliados.sql.add('Where '+
                        'afiliados.tip_documento =:"tip_doc" and '+
                        'afiliados.num_documento =:"num_doc" and '+
                        'afiliados.cod_estado = '+#39+'I'+#39+' and '+
                        'afiliados.cod_tipo_afil = '+#39+'C'+#39);
                end;
        ////
            qryafiliados.close;
            qryafiliados.Params[0].AsString := dbltipos.Text;
            qryafiliados.Params[1].AsString := edit2.Text;
//            qryafiliados.ExecSql;
            qryafiliados.Open;
            if qryafiliados.eof then
              begin
                   showmessage('Este afiliado esta excluido o no existe en la BD, Por favor consulte el Comprobador de Derechos');
                   edit2.text:='';
                   mefecha_evento.Text := datetostr(gb_fec_hoy);
                   dbltipos.Refresh;
                   dbltipos.SetFocus;
              end
            else
                if (btnreingreso_cot.visible=true) and
                   (btnreintegros_ben.visible=false) then
                begin
                     qrycotiza.Close;
                     qrycotiza.sql.clear;
                     qrycotiza.SQL.Add('SELECT tip_documento_cot,'+
                     'num_documento_cot '+
//                     'FROM relacion_afiliados (index ixtp_doc_num_doc_ben) '+
                     'FROM relacion_afiliados '+
                     'WHERE  relacion_afiliados.tip_documento_ben = :"tip_documento"  and '+
                     'relacion_afiliados.num_documento_ben = :"num_documento" and '+
                     'relacion_afiliados.fec_inclusion_nov in (select max(fec_inclusion_nov) '+
                     'from relacion_afiliados '+
                     'where relacion_afiliados.tip_documento_ben = :"tip_documento"  and '+
                     'relacion_afiliados.num_documento_ben = :"num_documento")');
                     qrycotiza.Open;
                     qryfecha_ultima_exclusion.Open;
                      fecha_ultima_exclusion:=qryfecha_ultima_exclusionfec_exclusion_nov.Value;
                      if fecha_ultima_exclusion = null then
                          begin
                               showmessage('No es posible reingresar este afiliado debido a que no se encuentra la fecha de exclusión');
                               mefecha_evento.Text := datetostr(gb_fec_hoy);
                               qryfecha_ultima_exclusion.close;
                               exit;
                          end
                          else
                              mefecha_evento.text:=datetostr(fecha_ultima_exclusion);
                     qryrelacion_afiliados.close;
                     qryrelacion_afiliados.sql.clear;
                     qryrelacion_afiliados.sql.add('Select distinct '+
                      'dbo.relacion_afiliados.tip_documento_ben,'+
                      'dbo.relacion_afiliados.num_documento_ben,'+
                      'dbo.relacion_afiliados.tip_documento_cot,'+
                      'dbo.relacion_afiliados.num_documento_cot,'+
                      'dbo.afiliados.pri_apellido,'+
                      'dbo.afiliados.seg_apellido,'+
                      'dbo.afiliados.pri_nombre,'+
                      'dbo.afiliados.seg_nombre,'+
                      'dbo.afiliados.cod_sexo,'+
                      'dbo.afiliados.fec_nacimiento,'+
                      'dbo.relacion_afiliados.cod_parentesco,'+
                      'dbo.afiliados.cod_tipo_afil,'+
                      'dbo.afiliados.cod_estado,'+
                      'dbo.afiliados.fec_afiliacion_uni,'+
                      'dbo.afiliados.cod_departamento_res,'+
                      'dbo.afiliados.cod_ciudad_res,'+
                      'sysdate,'+
                      'dbo.afiliados.cod_discapacidad,'+
                      'dbo.afiliados.cod_estado,'+
                      'dbo.afiliados.sem_cotizacion,'+
                      'dbo.relacion_afiliados.fec_exclusion_nov ' );
                      qryrelacion_afiliados.sql.add('From dbo.relacion_afiliados,dbo.afiliados  ');
//                      qryrelacion_afiliados.sql.add('From dbo.relacion_afiliados (index ixtp_doc_num_doc_cot),dbo.afiliados (index pk_afiliados) ');
                      qryrelacion_afiliados.sql.add('Where '+
                        'afiliados.tip_documento=relacion_afiliados.tip_documento_ben AND '+
                        'afiliados.num_documento=relacion_afiliados.num_documento_ben AND '+
                        'relacion_afiliados.tip_documento_cot = :"tip_documento_cot" AND '+
                        'relacion_afiliados.num_documento_cot = :"num_documento_cot" AND '+
                        'relacion_afiliados.fec_exclusion_nov = :"fec_ingreso" ' );
                      qryrelacion_afiliados.sql.add('Order By dbo.afiliados.cod_tipo_afil desc');
                      qryrelacion_afiliados.Params[2].AsDatetime := fecha_ultima_exclusion;
                      qryrelacion_afiliados.open;
                      Qryafiliados_empresas.Close;
                      Qryafiliados_empresas.Params[0].AsString := qryrelacion_afiliadostip_documento_ben.text;
                      Qryafiliados_empresas.Params[1].AsString := qryrelacion_afiliadosnum_documento_ben.text;
                      Qryafiliados_empresas.Params[2].AsDatetime := fecha_ultima_exclusion;
                      Qryafiliados_empresas.open;
                end
                else
                begin
                     qrycotiza.Open;
                     qryrelacion_afiliados.open;
                     mefecha_evento.text:= datetostr(qryrelacion_afiliadosfec_exclusion_nov.value);
                end;
              qrycotiza.Open;
              qryrelacion_afiliados.open;
              mefecha_evento.text:= datetostr(qryrelacion_afiliadosfec_exclusion_nov.value);
        end;
end;

procedure Tfrmreintegros.btnreingreso_cotClick(Sender: TObject);
var
cod_novedad:string;
begin
     if MessageDlg('Realmente desea reintegrar este afiliado beneficiario?',
           mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
           qryrelacion_afiliados.First;
           while not qryrelacion_afiliados.eof do
            begin
                 dmafiliaciones.softeps.StartTransaction;
                 try
                    Query1.Close;
                    Query1.SQL.Clear;
                    Query1.SQL.Add('UPDATE relacion_afiliados '+
                    'SET cod_estado =:"estado", '+
                    'fec_exclusion_nov = null '+
                    'WHERE ( relacion_afiliados.tip_documento_ben = :"tip_documento_ben" ) AND '+
                          '( relacion_afiliados.num_documento_ben = :"num_documento_ben" ) AND '+
                          '( relacion_afiliados.fec_exclusion_nov = :"fec_exclusion" )' );
                    Query1.Params[0].AsString := 'A';
                    Query1.Params[1].AsString := qryrelacion_afiliadostip_documento_ben.text;
                    Query1.Params[2].AsString := qryrelacion_afiliadosnum_documento_ben.text;
                    Query1.Params[3].AsDateTime := fecha_ultima_exclusion;
                    Query1.ExecSQL;
                    //actualizacion en la tabla de afiliados
                    Query1.Close;
                    Query1.SQL.Clear;
                    Query1.SQL.Add('UPDATE afiliados '+
                    'SET cod_estado =:"estado", '+
                    'fec_ultima_nov=:"fec_ult_nov" '+
                    'WHERE ( afiliados.tip_documento = :"tip_documento_ben" ) AND '+
                          '( afiliados.num_documento = :"num_documento_ben" ) ');
                    Query1.Params[0].AsString := 'A';
                    Query1.Params[1].AsDAtetime := frmafiliaciones.fecha_actual();
                    Query1.Params[2].AsString := qryrelacion_afiliadostip_documento_ben.text;
                    Query1.Params[3].AsString := qryrelacion_afiliadosnum_documento_ben.text;
                    Query1.ExecSQL;
                    //registro de novedades
                    if qryrelacion_afiliadoscod_tipo_afil.Text='C' then
                       begin
                            cod_novedad :='91';
                            //actualizacion en la tabla de afiliados empresas
                            Qryafiliados_empresas.first;
                            while not Qryafiliados_empresas.Eof do
                            begin
                                  Query1.Close;
                                  Query1.SQL.Clear;
                                  Query1.SQL.Add('UPDATE afiliados_empresas '+
                                  'SET cod_estado =:"estado", '+
                                  'fec_egreso_uni = null '+
                                  'WHERE ( afiliados_empresas.tip_documento_afi = :"tip_documento_ben" ) AND '+
                                        '( afiliados_empresas.num_documento_afi = :"num_documento_ben" ) AND '+
                                        '( afiliados_empresas.fec_egreso_uni = :"fec_ingreso_uni") AND '+
                                        '( afiliados_empresas.tip_documento_emp = :"tip_documento_emp" ) AND '+
                                        '( afiliados_empresas.num_documento_emp = :"num_documento_emp" ) AND '+
                                        '( afiliados_empresas.cod_sucursal = :"cod_sucursal" ) AND '+
                                        '( afiliados_empresas.fec_ingreso_uni =:"fec_egreso_uni" )');
                                  Query1.Params[0].AsString := 'A';
                                  Query1.Params[1].AsString := qryrelacion_afiliadostip_documento_ben.text;
                                  Query1.Params[2].AsString := qryrelacion_afiliadosnum_documento_ben .text;
                                  Query1.Params[3].AsDatetime := fecha_ultima_exclusion;
                                  Query1.Params[4].AsString := Qryafiliados_empresastip_documento_emp.Text;
                                  Query1.Params[5].AsString := Qryafiliados_empresasnum_documento_emp.Text;
                                  Query1.Params[6].AsString := Qryafiliados_empresascod_sucursal.text;
                                  Query1.Params[7].Asdatetime := Qryafiliados_empresasfec_ingreso_uni.Value ;
                                  Query1.ExecSQL;

                                  //execute qrynovedades_afiliados
                                  qrynovedades_afiliados.Close;
                                  qrynovedades_afiliados.Params[0].AsString := '89';
                                  qrynovedades_afiliados.Params[1].AsString := qryrelacion_afiliadostip_documento_ben.text;;
                                  qrynovedades_afiliados.Params[2].AsString := qryrelacion_afiliadosnum_documento_ben.text;;
                                  qrynovedades_afiliados.Params[3].AsString := gb_oficina;
                                  qrynovedades_afiliados.Params[4].AsString := gb_regional;
                                  qrynovedades_afiliados.Params[5].AsString := gb_tip_doc_usu;
                                  qrynovedades_afiliados.Params[6].AsString := gb_num_doc_usu;
                                  qrynovedades_afiliados.Params[7].AsDatetime := fecha_ultima_exclusion;
                                  qrynovedades_afiliados.Params[8].AsDatetime := frmafiliaciones.fecha_actual();
                                  qrynovedades_afiliados.Params[9].AsDatetime := frmafiliaciones.fecha_actual();
                                  qrynovedades_afiliados.Params[10].value := Qryafiliados_empresastip_documento_emp.Text;
                                  qrynovedades_afiliados.Params[11].value := Qryafiliados_empresasnum_documento_emp.Text;
                                  Qrynovedades_afiliados.Params[12].value := Qryafiliados_empresascod_sucursal.text;
                                  qrynovedades_afiliados.ExecSql;
                                 Qryafiliados_empresas.Next;
                            end;
                       end;
                    if qryrelacion_afiliadoscod_tipo_afil.Text='B' then
                    cod_novedad :='92';
                    if qryrelacion_afiliadoscod_tipo_afil.Text='A' then
                    cod_novedad :='93';
                     //execute qrynovedades_afiliados
                        qrynovedades_afiliados.Close;
                        qrynovedades_afiliados.Params[0].AsString := cod_novedad;
                        qrynovedades_afiliados.Params[1].AsString := qryrelacion_afiliadostip_documento_ben.text;
                        qrynovedades_afiliados.Params[2].AsString := qryrelacion_afiliadosnum_documento_ben.text;
                        qrynovedades_afiliados.Params[3].AsString := gb_oficina;
                        qrynovedades_afiliados.Params[4].AsString := gb_regional;
                        qrynovedades_afiliados.Params[5].AsString := gb_tip_doc_usu;
                        qrynovedades_afiliados.Params[6].AsString := gb_num_doc_usu;
                        qrynovedades_afiliados.Params[7].AsDatetime := fecha_ultima_exclusion;
                        qrynovedades_afiliados.Params[8].AsDatetime := frmafiliaciones.fecha_actual();
                        qrynovedades_afiliados.Params[9].AsDatetime := frmafiliaciones.fecha_actual();
                        qrynovedades_afiliados.Params[10].value := null;
                        qrynovedades_afiliados.Params[11].value := null;
                        Qrynovedades_afiliados.Params[12].value := null;
                        qrynovedades_afiliados.ExecSql;
                        dmafiliaciones.softeps.commit;
                 except
                    dmafiliaciones.softeps.Rollback;
                    showmessage('Error actualizando los datos para el reintegro de afiliados');
                    exit;
                    raise;
                 end;
                 qryrelacion_afiliados.next;
            end;
            showmessage('Proceso finalizado con Exito');
            close;
            end
            else
            begin
                showmessage('Proceso Cancelado por el usuario');
                exit;
            end;
end;

procedure Tfrmreintegros.FormCreate(Sender: TObject);
begin
        Application.OnMessage := AppMessage;
        dmafiliaciones.tbltipos_documentos.Open;
        dmafiliaciones.tblsexo.Open;
        dmafiliaciones.tblestratos.Open;
        dmafiliaciones.tbldiscapacidades.Open;
        dmafiliaciones.tblestadosciviles.Open;
end;

procedure Tfrmreintegros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        action:=cafree;
end;

procedure Tfrmreintegros.qryrelacion_afiliadosCalcFields(
  DataSet: TDataSet);
begin
        qryrelacion_afiliadosnom_afiliado.text:=qryrelacion_afiliadospri_apellido.text+' '+qryrelacion_afiliadosseg_apellido.text+' '+qryrelacion_afiliadospri_nombre.text+' '+qryrelacion_afiliadosseg_nombre.text;
end;

procedure Tfrmreintegros.btnreintegros_benClick(Sender: TObject);
var
cod_novedad:string;
begin
      if MessageDlg('Realmente desea reintegrar este afiliado beneficiario?',
           mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
           try
              dmafiliaciones.softeps.StartTransaction;
              fecha_ultima_exclusion:=qryrelacion_afiliadosfec_exclusion_nov.value;
              Query1.Close;
              Query1.SQL.Clear;
              Query1.SQL.Add('UPDATE relacion_afiliados '+
              'SET cod_estado =:"estado", '+
              'fec_exclusion_nov = null '+
              'WHERE ( relacion_afiliados.tip_documento_ben = :"tip_documento_ben" ) AND '+
                    '( relacion_afiliados.num_documento_ben = :"num_documento_ben" ) AND '+
                    '( relacion_afiliados.fec_exclusion_nov = :"fec_exclusion" )' );
              Query1.Params[0].AsString := 'A';
              Query1.Params[1].AsString := qryrelacion_afiliadostip_documento_ben.text;
              Query1.Params[2].AsString := qryrelacion_afiliadosnum_documento_ben.text;
              Query1.Params[3].AsDateTime := fecha_ultima_exclusion;
              Query1.ExecSQL;
              //actualizacion en la tabla de afiliados
              Query1.Close;
              Query1.SQL.Clear;
              Query1.SQL.Add('UPDATE afiliados '+
              'SET cod_estado =:"estado", '+
              'fec_ultima_nov=:"fec_ult_nov" '+
              'WHERE ( afiliados.tip_documento = :"tip_documento_ben" ) AND '+
                    '( afiliados.num_documento = :"num_documento_ben" ) ');
              Query1.Params[0].AsString := 'A';
              Query1.Params[1].AsDAtetime := frmafiliaciones.fecha_actual();
              Query1.Params[2].AsString := qryrelacion_afiliadostip_documento_ben.text;
              Query1.Params[3].AsString := qryrelacion_afiliadosnum_documento_ben.text;
              Query1.ExecSQL;
              //registro de novedades
              if qryrelacion_afiliadoscod_tipo_afil.Text='C' then
              begin
              showmessage('No es posible reintegrar el cotizante');
              dmafiliaciones.softeps.Rollback;
              exit;
              end;

              if qryrelacion_afiliadoscod_tipo_afil.Text='B' then
              cod_novedad :='92';
              if qryrelacion_afiliadoscod_tipo_afil.Text='A' then
              cod_novedad :='93';
               //execute qrynovedades_afiliados
                  qrynovedades_afiliados.Close;
                  qrynovedades_afiliados.Params[0].AsString := cod_novedad;
                  qrynovedades_afiliados.Params[1].AsString := qryrelacion_afiliadostip_documento_ben.text;
                  qrynovedades_afiliados.Params[2].AsString := qryrelacion_afiliadosnum_documento_ben.text;
                  qrynovedades_afiliados.Params[3].AsString := gb_oficina;
                  qrynovedades_afiliados.Params[4].AsString := gb_regional;
                  qrynovedades_afiliados.Params[5].AsString := gb_tip_doc_usu;
                  qrynovedades_afiliados.Params[6].AsString := gb_num_doc_usu;
                  qrynovedades_afiliados.Params[7].AsDatetime := fecha_ultima_exclusion;
                  qrynovedades_afiliados.Params[8].AsDatetime := frmafiliaciones.fecha_actual();
                  qrynovedades_afiliados.Params[9].AsDatetime := frmafiliaciones.fecha_actual();
                  qrynovedades_afiliados.Params[10].value := null;
                  qrynovedades_afiliados.Params[11].value := null;
                  Qrynovedades_afiliados.Params[12].value := null;
                  qrynovedades_afiliados.ExecSql;
                  dmafiliaciones.softeps.commit;
                  BitBtn1Click(frmreintegros);
                  showmessage('Proceso finalizado con Exito');
           except
              dmafiliaciones.softeps.Rollback;
              showmessage('Error actualizando los datos para el reintegro de afiliados');
              exit;
              raise;
           end;
           end
           else
           begin
                showmessage('Proceso Cancelado por el usuario');
                exit;
           end;

end;

procedure Tfrmreintegros.AppMessage(var Msg: TMsg; var Handled: Boolean);
begin
        if Msg.wParam = VK_RETURN then
       begin
        if ((Screen.ActiveControl) is TComboBox) then
             Msg.wParam := VK_TAB;
        if (((Screen.ActiveControl) is TEdit)) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TDBEdit) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TDateTimePicker) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TMaskEdit) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TDateTimePicker) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TDBLookupComboBox) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TGroupBox) then
             Msg.wParam := VK_TAB;
        if ((Screen.ActiveControl) is TTabSheet) then
             Msg.wParam := VK_TAB;
       end;
end;

procedure Tfrmreintegros.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
        frmafiliaciones.numerosKeypress(edit2,Key);
end;

procedure Tfrmreintegros.FormActivate(Sender: TObject);
begin
mefecha_evento.Text := datetostr(gb_fec_hoy);
dbltipos.SetFocus;
end;

procedure Tfrmreintegros.dbltiposExit(Sender: TObject);
begin
if  dbltipos.Text = '' then
   begin
   ShowMessage('Selecion el tipo de  documento');
   dbltipos.SetFocus;
   end
end;

procedure Tfrmreintegros.Edit2Exit(Sender: TObject);
begin
if  Edit2.Text = '' then
   begin
   ShowMessage('Digite el numero de documento');
   Edit2.SetFocus;
   end
   else
   begin
   mefecha_evento.Text := datetostr(gb_fec_hoy);
   BitBtn1.Click;
   end;

end;

end.
