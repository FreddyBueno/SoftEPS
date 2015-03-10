unit ucartera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, ComCtrls, Grids, DBGrids, StdCtrls, Mask, Math,
  Gauges, Menus;

type
  Tfrmcartera = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Database1: TDatabase;
    Query1: TQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    Query2: TQuery;
    Edit5: TEdit;
    Label5: TLabel;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Edit8: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Query3: TQuery;
    Query4: TQuery;
    DataSource2: TDataSource;
    Edit12: TEdit;
    Edit13: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Edit9: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Label9: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edit16: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Edit17: TEdit;
    Panel8: TPanel;
    DBGrid2: TDBGrid;
    Splitter1: TSplitter;
    Panel9: TPanel;
    DBGrid3: TDBGrid;
    Panel10: TPanel;
    Panel11: TPanel;
    Query5: TQuery;
    DataSource3: TDataSource;
    Edit3: TEdit;
    Edit4: TEdit;
    TabSheet3: TTabSheet;
    Panel12: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Button3: TButton;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Panel13: TPanel;
    Splitter2: TSplitter;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    qrycargrupo: TQuery;
    qrygrupo: TQuery;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    Label25: TLabel;
    Edit25: TEdit;
    Label26: TLabel;
    Edit26: TEdit;
    Button2: TButton;
    TabSheet4: TTabSheet;
    Panel18: TPanel;
    Button4: TButton;
    qrydiscartera: TQuery;
    qrycountcar: TQuery;
    Panel4: TPanel;
    Label47: TLabel;
    Label48: TLabel;
    RadioGroup1: TRadioGroup;
    qrygrupoNUM_DOCUMENTO: TStringField;
    qrygrupoPRI_NOMBRE: TStringField;
    qrygrupoSEG_NOMBRE: TStringField;
    qrygrupoPRI_APELLIDO: TStringField;
    qrygrupoSEG_APELLIDO: TStringField;
    qrydiscarteraNUM_DOCUMENTO: TStringField;
    qrydiscarteraTIP_DOCUMENTO: TStringField;
    qrydiscarteraNUM_DOCUMENTO_COT: TStringField;
    Query5COD_NOVEDAD_AFIL: TFloatField;
    Query5NOV_CODIGO: TStringField;
    Query5TIP_DOCUMENTO: TStringField;
    Query5NUM_DOCUMENTO: TStringField;
    Query5COD_OFICINA: TStringField;
    Query5COD_REGIONAL: TStringField;
    Query5USU_TIPO_DOC: TStringField;
    Query5USU_NUMERO_DOC: TStringField;
    Query5FEC_NOVEDAD_AFIL: TDateTimeField;
    Query5NOM_CAMPO: TStringField;
    Query5DAT_CAMPO_ANT: TStringField;
    Query5NOM_TABLA: TStringField;
    Query5DAT_CAMPO_DES: TStringField;
    Query5FEC_EVENTO: TDateTimeField;
    Query5FEC_APLICATIVO: TDateTimeField;
    Query5TIP_DOCUMENTO_EMP: TStringField;
    Query5NUM_DOCUMENTO_EMP: TStringField;
    Query5COD_SUCURSAL: TStringField;
    Query5NUM_PLANILLA: TStringField;
    Query4PRI_NOMBRE: TStringField;
    Query4SEG_NOMBRE: TStringField;
    Query4PRI_APELLIDO: TStringField;
    Query4SEG_APELLIDO: TStringField;
    Query4TEL_AFILIADO_RES: TStringField;
    Query4DIR_AFILIADO_RES: TStringField;
    Query4NOM_CIUDAD: TStringField;
    Query3NOM_EMPRESA: TStringField;
    Query3PER_COMPENSACION: TStringField;
    Query3TIPO_MORA: TStringField;
    Query3VALOR_MORA: TFloatField;
    Query3VALOR_UPC: TFloatField;
    Query3INTERES: TFloatField;
    Query2NOM_EMPRESA: TStringField;
    Query2DIR_EMPRESA: TStringField;
    Query2TEL_EMPRESA: TStringField;
    Query2NOM_CIUDAD: TStringField;
    Query1TIP_DOCUMENTO: TStringField;
    Query1NUM_DOCUMENTO: TStringField;
    Query1PRI_NOMBRE: TStringField;
    Query1PRI_APELLIDO: TStringField;
    Query1PER_COMPENSACION: TStringField;
    Query1TIPO_MORA: TStringField;
    Query1VALOR_MORA: TFloatField;
    Query1VALOR_UPC: TFloatField;
    Query1INTERES: TFloatField;
    qrycargrupoTIP_DOCUMENTO: TStringField;
    qrycargrupoNUM_DOCUMENTO: TStringField;
    qrycargrupoTIP_DOCUMENTO_EMP: TStringField;
    qrycargrupoNUM_DOCUMENTO_EMP: TStringField;
    qrycargrupoCOD_SUCURSAL_EMP: TStringField;
    qrycargrupoPER_COMPENSACION: TStringField;
    qrycargrupoTIPO_MORA: TStringField;
    qrycargrupoVALOR_MORA: TFloatField;
    qrycargrupoVALOR_UPC: TFloatField;
    qrycargrupoCOD_TIPO_AFIL: TStringField;
    qrycargrupoTIP_DOCUMENTO_COT: TStringField;
    qrycargrupoNUM_DOCUMENTO_COT: TStringField;
    qrycargrupoINTERES: TFloatField;
    qrycountcarTIP_DOCUMENTO: TStringField;
    qrycountcarNUM_DOCUMENTO: TStringField;
    qrycountcarTIP_DOCUMENTO_EMP: TStringField;
    qrycountcarNUM_DOCUMENTO_EMP: TStringField;
    qrycountcarCOD_SUCURSAL_EMP: TStringField;
    qrycountcarPER_COMPENSACION: TStringField;
    qrycountcarTIPO_MORA: TStringField;
    qrycountcarVALOR_MORA: TFloatField;
    qrycountcarVALOR_UPC: TFloatField;
    qrycountcarCOD_TIPO_AFIL: TStringField;
    qrycountcarTIP_DOCUMENTO_COT: TStringField;
    qrycountcarNUM_DOCUMENTO_COT: TStringField;
    qrycountcarINTERES: TFloatField;
    Panel19: TPanel;
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    ConfigurarImpresora1: TMenuItem;
    Salir1: TMenuItem;
    Procesos1: TMenuItem;
    Reportes1: TMenuItem;
    CarteraPorEmpresa1: TMenuItem;
    CarteraPorAfiliado1: TMenuItem;
    CarteraPorAfiliadoGrupoFamiliar1: TMenuItem;
    CarteraPorEdadesdeMora1: TMenuItem;
    Ayuda1: TMenuItem;
    Acercade1: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    GeneraciondeCartera1: TMenuItem;
    qrydiscarteraNUM_DOCUMENTO_EMP: TStringField;
    qryempresa: TQuery;
    qryempresaTIP_DOCUMENTO: TStringField;
    qryempresaNUM_DOCUMENTO: TStringField;
    qryempresaCOD_SUCURSAL: TStringField;
    qryempresaCOD_ACTIVIDAD_ECO: TStringField;
    qryempresaCOD_ESTADO: TStringField;
    qryempresaCOD_OFICINA: TStringField;
    qryempresaCOD_REGIONAL: TStringField;
    qryempresaTIP_DOCUMENTO_ARP: TStringField;
    qryempresaNUM_DOCUMENTO_ARP: TStringField;
    qryempresaCOD_DEPARTAMENTO: TStringField;
    qryempresaCOD_CIUDAD: TStringField;
    qryempresaTIP_APORTANTE: TStringField;
    qryempresaNOM_EMPRESA: TStringField;
    qryempresaFEC_AFILIACION: TDateTimeField;
    qryempresaDIR_EMPRESA: TStringField;
    qryempresaTEL_EMPRESA: TStringField;
    qryempresaTEL_EMPRESA2: TStringField;
    qryempresaURL_EMPRESA: TStringField;
    qryempresaEML_EMPRESA: TStringField;
    qryempresaTOT_EMPLEADOS: TStringField;
    qryempresaCOD_TIPO_PER: TStringField;
    qryempresaCOD_ZONA: TStringField;
    qryempresaCOD_DEPARTAMENTO_PAG: TStringField;
    qryempresaCOD_CIUDAD_PAG: TStringField;
    qryempresaCOD_PRESENTACION_COM: TStringField;
    qryempresaCOD_TIP_EMPRESA: TStringField;
    qryempresaTIP_DOCUMENTO_PEN: TStringField;
    qryempresaNUM_DOCUMENTO_PEN: TStringField;
    qryacesor: TQuery;
    qryacesorPRI_APELLIDO: TStringField;
    qryacesorPRI_NOMBRE: TStringField;
    qrydpto: TQuery;
    qrydptoCOD_DEPARTAMENTO: TStringField;
    qryrep1: TQuery;
    qryrep1TIP_DOCUMENTO: TStringField;
    qryrep1NUM_DOCUMENTO: TStringField;
    qryrep2: TQuery;
    qryrep2TIP_DOCUMENTO: TStringField;
    qryrep2NUM_DOCUMENTO: TStringField;
    qryrep2TIP_DOCUMENTO_EMP: TStringField;
    qryrep2NUM_DOCUMENTO_EMP: TStringField;
    qryrep2COD_SUCURSAL_EMP: TStringField;
    qryrep2PER_COMPENSACION: TStringField;
    qryrep2TIPO_MORA: TStringField;
    qryrep2VALOR_MORA: TFloatField;
    qryrep2VALOR_UPC: TFloatField;
    qryrep2COD_TIPO_AFIL: TStringField;
    qryrep2TIP_DOCUMENTO_COT: TStringField;
    qryrep2NUM_DOCUMENTO_COT: TStringField;
    qryrep2INTERES: TFloatField;
    Edit27: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure CarafiliadoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ConfigurarImpresora1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure CarteraPorEmpresa1Click(Sender: TObject);
    procedure CarteraPorAfiliado1Click(Sender: TObject);
    procedure CarteraPorAfiliadoGrupoFamiliar1Click(Sender: TObject);
    procedure CarteraPorEdadesdeMora1Click(Sender: TObject);
    procedure GeneraciondeCartera1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcartera: Tfrmcartera;

implementation

uses ugcartera;

{$R *.dfm}

procedure Tfrmcartera.Button1Click(Sender: TObject);
var
   mora: real;
   upc : real;
begin
  query2.Close;
  query2.Prepare;
  query2.Params[0].Value := edit1.Text;
  query2.Params[1].Value := edit2.Text;
  query2.Open;
  query2.First;
  edit5.Text := query2nom_empresa.Value;
  edit12.Text := query2dir_empresa.Value;
  edit13.Text := query2tel_empresa.Value;
  edit17.Text := query2nom_ciudad.Value;
  query1.Close;
  query1.Prepare;
  query1.Params[0].Value := edit1.Text;
  query1.Params[1].Value := edit2.Text;
  query1.Open;
  query1.First;
  mora := 0;
  upc := 0;
  while not query1.Eof do
  begin
    if query1valor_mora.value >0 then
       mora := mora + query1valor_mora.value + query1interes.Value;
    if query1valor_upc.value >0 then
       upc  := upc + query1valor_upc.value;
    query1.Next;
  end;
  edit3.Text :=  floattostr(roundto(mora,0));
  edit4.Text :=  floattostr(roundto(upc,0));

end;

procedure Tfrmcartera.CarafiliadoClick(Sender: TObject);
var
   mora: real;
   upc : real;
   meses : real;
begin
  query4.Close;
  query4.Prepare;
  query4.Params[0].Value := edit18.Text;
  query4.Params[1].Value := edit19.Text;
  query4.Open;
  query4.First;
  edit20.Text := query4pri_nombre.Value+' '+query4seg_nombre.Value+' '+query4pri_apellido.Value+' '+query4seg_apellido.Value;
  edit22.Text := query4tel_afiliado_res.Value;
  edit23.Text := query4dir_afiliado_res.Value;
  edit24.Text := query4nom_ciudad.value;
  query4.Close;
  qrygrupo.Close;
  qrygrupo.Prepare;
  qrygrupo.Params[0].Value := edit18.Text;
  qrygrupo.Params[1].Value := edit19.Text;
  qrygrupo.Open;
  qrycargrupo.Close;
  qrycargrupo.Prepare;
  qrycargrupo.Params[0].Value := edit18.Text;
  qrycargrupo.Params[1].Value := edit19.Text;
  qrycargrupo.Open;
  mora := 0;
  upc := 0;
  meses := 0;
  while not qrycargrupo.Eof do
  begin
    if qrycargrupovalor_mora.value >0 then
       mora := mora + qrycargrupovalor_mora.value + qrycargrupointeres.Value;
    if qrycargrupovalor_upc.value >0 then
       upc  := upc + qrycargrupovalor_upc.value;
    if qrycargrupocod_tipo_afil.Value = 'C' then
       meses := meses + 1;
    qrycargrupo.Next;
  end;
  qrycargrupo.First;
  edit21.Text := floattostr(meses);
  edit25.Text := floattostr(roundto(mora,0));
  Edit26.Text := floattostr(roundto(upc,0));
end;

procedure Tfrmcartera.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ACTION := CAFREE;
  database1.Connected := false;
  Application.Terminate;
end;

procedure Tfrmcartera.FormCreate(Sender: TObject);
begin
  pagecontrol1.ActivePage := TabSheet1;
end;

procedure Tfrmcartera.Button2Click(Sender: TObject);
var
   mora: real;
   upc : real;
   meses : real;
begin
  query4.Close;
  query4.Prepare;
  query4.Params[0].Value := edit6.Text;
  query4.Params[1].Value := edit7.Text;
  query4.Open;
  query4.First;
  edit8.Text := query4pri_nombre.Value+' '+query4seg_nombre.Value+' '+query4pri_apellido.Value+' '+query4seg_apellido.Value;
  edit14.Text := query4tel_afiliado_res.Value;
  edit15.Text := query4dir_afiliado_res.Value;
  edit16.Text := query4nom_ciudad.value;
  query4.Close;
  query3.Close;
  query3.Prepare;
  query3.Params[0].Value := edit6.Text;
  query3.Params[1].Value := edit7.Text;
  query3.Open;
  query3.First;
  mora := 0;
  upc := 0;
  while not query3.Eof do
  begin
    if query3valor_mora.value >0 then
       mora := mora + query3valor_mora.value + query3interes.Value;
    if query3valor_upc.value >0 then
       upc  := upc + query3valor_upc.value;
    query3.Next;
  end;
  edit9.Text := floattostr(query3.RecordCount);
  edit10.Text :=  floattostr(roundto(mora,0));
  edit11.Text :=  floattostr(roundto(upc,0));
  query5.Close;
  query5.Prepare;
  query5.Params[0].Value := edit6.Text;
  query5.Params[1].Value := edit7.Text;
  query5.Open;
  query5.First;
end;

procedure Tfrmcartera.Button4Click(Sender: TObject);
var
 mora, compensa, interes : real;
 nombre, telefono : string;
 direccion, ciudad : string;
 outputfile : textfile;
 periodo : string;
 imp : string;
 nom_ace : string;
 uno,dos,tres,cua,cin : real;
 i : real;
begin
  if radiogroup1.ItemIndex = 0 then
  begin
    if (messagedlg('Esta seguro(a) de Generar el Archivo C:\Moraunmes.txt',mtconfirmation,[mbyes,mbno],0)=mryes) then
    begin
      assignfile (outputfile, 'C:\Moraunmes.txt');
      rewrite(outputfile);
      closefile(outputfile);
      append(outputfile);
      qrydiscartera.Close;
      qrydiscartera.Open;
      qrydiscartera.First;
      while not qrydiscartera.Eof do
      begin
        query4.Close;
        query4.Prepare;
        query4.Params[0].Value := qrydiscarteratip_documento.Value;
        query4.Params[1].Value := qrydiscarteranum_documento.Value;
        query4.Open;
        query4.First;
        nombre    := query4pri_nombre.Value+' '+query4seg_nombre.Value+' '+query4pri_apellido.Value+' '+query4seg_apellido.Value;
        telefono  := query4tel_afiliado_res.Value;
        direccion := query4dir_afiliado_res.Value;
        ciudad    := query4nom_ciudad.value;
        query4.Close;
        qryacesor.Close;
        qryacesor.Prepare;
        qryacesor.Params[0].Value := qrydiscarteratip_documento.Value;
        qryacesor.Params[1].Value := qrydiscarteranum_documento.Value;
        qryacesor.Open;
        qryacesor.First;
        nom_ace := qryacesorpri_apellido.value+' '+qryacesorpri_nombre.value;
        qryacesor.close;
        qryempresa.Close;
        qryempresa.Prepare;
        qryempresa.Params[0].Value := qrydiscarteranum_documento_emp.Value;
        qryempresa.Open;
        qryempresa.First;
        qrycountcar.Close;
        qrycountcar.Prepare;
        qrycountcar.Params[0].Value := qrydiscarteratip_documento.Value;
        qrycountcar.Params[1].Value := qrydiscarteranum_documento.Value;
        qrycountcar.Open;
        while not qrycountcar.Eof do
        begin
          if qrycountcar.RecordCount = 1 then
          begin
            mora := mora+qrycountcarvalor_mora.Value+qrycountcarinteres.Value;
            compensa := compensa+qrycountcarvalor_upc.Value;
            writeln(outputfile,qrydiscarteratip_documento.Value+','+qrydiscarteranum_documento.value+','+nombre+','+direccion+','+telefono+','+ciudad+','+qrycountcarper_compensacion.value+','+floattostr(qrycountcarvalor_mora.Value)+','+floattostr(qrycountcarinteres.Value)+','+floattostr(qrycountcarvalor_upc.Value)+','+qryempresanom_empresa.value+','+qryempresatel_empresa.Value+','+nom_ace);
          end;
        qrycountcar.Next;
        end;
      qryempresa.Close;
      qryempresa.UnPrepare;
      qrydiscartera.Next;
      end;
    closefile(outputfile);
    showmessage('Finalizada la Generacion del Archivo');
    qrycountcar.Close;
    qrydiscartera.Close;
    end;
  end;
  if radiogroup1.ItemIndex = 1 then
  begin
    if (messagedlg('Esta seguro(a) de Generar el Archivo C:\Moradosmeses.txt',mtconfirmation,[mbyes,mbno],0)=mryes) then
    begin
      assignfile (outputfile, 'C:\Moradosmeses.txt');
      rewrite(outputfile);
      closefile(outputfile);
      append(outputfile);
      qrydiscartera.Close;
      qrydiscartera.Open;
      qrydiscartera.First;
      while not qrydiscartera.Eof do
      begin
        query4.Close;
        query4.Prepare;
        query4.Params[0].Value := qrydiscarteratip_documento.Value;
        query4.Params[1].Value := qrydiscarteranum_documento.Value;
        query4.Open;
        query4.First;
        nombre    := query4pri_nombre.Value+' '+query4seg_nombre.Value+' '+query4pri_apellido.Value+' '+query4seg_apellido.Value;
        telefono  := query4tel_afiliado_res.Value;
        direccion := query4dir_afiliado_res.Value;
        ciudad    := query4nom_ciudad.value;
        query4.Close;
        qryacesor.Close;
        qryacesor.Prepare;
        qryacesor.Params[0].Value := qrydiscarteratip_documento.Value;
        qryacesor.Params[1].Value := qrydiscarteranum_documento.Value;
        qryacesor.Open;
        qryacesor.First;
        nom_ace := qryacesorpri_apellido.value+' '+qryacesorpri_nombre.value;
        qryacesor.close;
        qryempresa.Close;
        qryempresa.Prepare;
        qryempresa.Params[0].Value := qrydiscarteranum_documento_emp.Value;
        qryempresa.Open;
        qryempresa.First;
        qrycountcar.Close;
        qrycountcar.Prepare;
        qrycountcar.Params[0].Value := qrydiscarteratip_documento.Value;
        qrycountcar.Params[1].Value := qrydiscarteranum_documento.Value;
        qrycountcar.Open;
        imp := 'S';
        while not qrycountcar.Eof do
        begin
          if (qrycountcar.RecordCount = 2) and (imp = 'S') then
          begin
            write(outputfile,qrydiscarteratip_documento.Value+','+qrydiscarteranum_documento.value+','+nombre+','+direccion+','+telefono+','+ciudad+',');
            mora := 0;
            interes := 0;
            compensa := 0;
            periodo := '';
            imp := 'N';
          end;
          if qrycountcar.RecordCount = 2 then
          begin
            mora := mora+qrycountcarvalor_mora.Value;
            interes := interes+qrycountcarinteres.Value;
            compensa := compensa+qrycountcarvalor_upc.Value;
            periodo := periodo +qrycountcarper_compensacion.value+',';
          end;
        qrycountcar.Next;
        end;
        if qrycountcar.RecordCount = 2 then
        begin
          writeln(outputfile,periodo+floattostr(mora)+','+floattostr(interes)+','+floattostr(compensa)+','+qryempresanom_empresa.value+','+qryempresatel_empresa.Value+','+nom_ace);
        end;
      qryempresa.Close;
      qryempresa.UnPrepare;
      qrydiscartera.Next;
      end;
    closefile(outputfile);
    showmessage('Finalizada la Generacion del Archivo');
    qrycountcar.Close;
    qrydiscartera.Close;
    end;
  end;
  if radiogroup1.ItemIndex = 2 then
  begin
    if (messagedlg('Esta seguro(a) de Generar el Archivo C:\Moratresmeses.txt',mtconfirmation,[mbyes,mbno],0)=mryes) then
    begin
      assignfile (outputfile, 'C:\Moratresmeses.txt');
      rewrite(outputfile);
      closefile(outputfile);
      append(outputfile);
      qrydiscartera.Close;
      qrydiscartera.Open;
      qrydiscartera.First;
      while not qrydiscartera.Eof do
      begin
        query4.Close;
        query4.Prepare;
        query4.Params[0].Value := qrydiscarteratip_documento.Value;
        query4.Params[1].Value := qrydiscarteranum_documento.Value;
        query4.Open;
        query4.First;
        nombre    := query4pri_nombre.Value+' '+query4seg_nombre.Value+' '+query4pri_apellido.Value+' '+query4seg_apellido.Value;
        telefono  := query4tel_afiliado_res.Value;
        direccion := query4dir_afiliado_res.Value;
        ciudad    := query4nom_ciudad.value;
        query4.Close;
        qryacesor.Close;
        qryacesor.Prepare;
        qryacesor.Params[0].Value := qrydiscarteratip_documento.Value;
        qryacesor.Params[1].Value := qrydiscarteranum_documento.Value;
        qryacesor.Open;
        qryacesor.First;
        nom_ace := qryacesorpri_apellido.value+' '+qryacesorpri_nombre.value;
        qryacesor.close;
        qryempresa.Close;
        qryempresa.Prepare;
        qryempresa.Params[0].Value := qrydiscarteranum_documento_emp.Value;
        qryempresa.Open;
        qryempresa.First;
        qrycountcar.Close;
        qrycountcar.Prepare;
        qrycountcar.Params[0].Value := qrydiscarteratip_documento.Value;
        qrycountcar.Params[1].Value := qrydiscarteranum_documento.Value;
        qrycountcar.Open;
        imp := 'S';
        while not qrycountcar.Eof do
        begin
          if (qrycountcar.RecordCount = 3) and (imp = 'S') then
          begin
            write(outputfile,qrydiscarteratip_documento.Value+','+qrydiscarteranum_documento.value+','+nombre+','+direccion+','+telefono+','+ciudad+',');
            mora := 0;
            interes := 0;
            compensa := 0;
            periodo := '';
            imp := 'N';
          end;
          if qrycountcar.RecordCount = 3 then
          begin
            mora := mora+qrycountcarvalor_mora.Value;
            interes := interes+qrycountcarinteres.Value;
            compensa := compensa+qrycountcarvalor_upc.Value;
            periodo := periodo +qrycountcarper_compensacion.value+',';
          end;
        qrycountcar.Next;
        end;
        if qrycountcar.RecordCount = 3 then
        begin
          writeln(outputfile,periodo+floattostr(mora)+','+floattostr(interes)+','+floattostr(compensa)+','+qryempresanom_empresa.value+','+qryempresatel_empresa.Value+','+nom_ace);
        end;
      qryempresa.Close;
      qryempresa.UnPrepare;
      qrydiscartera.Next;
      end;
    closefile(outputfile);
    showmessage('Finalizada la Generacion del Archivo');
    qrycountcar.Close;
    qrydiscartera.Close;
    end;
  end;
  if radiogroup1.ItemIndex = 3 then
  begin
    if (messagedlg('Esta seguro(a) de Generar el Archivo C:\Moracuatromeses.txt',mtconfirmation,[mbyes,mbno],0)=mryes) then
    begin
      assignfile (outputfile, 'C:\Moracuatromeses.txt');
      rewrite(outputfile);
      closefile(outputfile);
      append(outputfile);
      qrydiscartera.Close;
      qrydiscartera.Open;
      qrydiscartera.First;
      while not qrydiscartera.Eof do
      BEGIN
        query4.Close;
        query4.Prepare;
        query4.Params[0].Value := qrydiscarteratip_documento.Value;
        query4.Params[1].Value := qrydiscarteranum_documento.Value;
        query4.Open;
        query4.First;
        nombre    := query4pri_nombre.Value+' '+query4seg_nombre.Value+' '+query4pri_apellido.Value+' '+query4seg_apellido.Value;
        telefono  := query4tel_afiliado_res.Value;
        direccion := query4dir_afiliado_res.Value;
        ciudad    := query4nom_ciudad.value;
        query4.Close;
        qryacesor.Close;
        qryacesor.Prepare;
        qryacesor.Params[0].Value := qrydiscarteratip_documento.Value;
        qryacesor.Params[1].Value := qrydiscarteranum_documento.Value;
        qryacesor.Open;
        qryacesor.First;
        nom_ace := qryacesorpri_apellido.value+' '+qryacesorpri_nombre.value;
        qryacesor.close;
        qryempresa.Close;
        qryempresa.Prepare;
        qryempresa.Params[0].Value := qrydiscarteranum_documento_emp.Value;
        qryempresa.Open;
        qryempresa.First;
        qrycountcar.Close;
        qrycountcar.Prepare;
        qrycountcar.Params[0].Value := qrydiscarteratip_documento.Value;
        qrycountcar.Params[1].Value := qrydiscarteranum_documento.Value;
        qrycountcar.Open;
        imp := 'S';
        while not qrycountcar.Eof do
        begin
          if (qrycountcar.RecordCount = 4) and (imp = 'S') then
          begin
            write(outputfile,qrydiscarteratip_documento.Value+','+qrydiscarteranum_documento.value+','+nombre+','+direccion+','+telefono+','+ciudad+',');
            mora := 0;
            interes := 0;
            compensa := 0;
            periodo := '';
            imp := 'N';
          end;
          if qrycountcar.RecordCount = 4 then
          begin
            mora := mora+qrycountcarvalor_mora.Value;
            interes := interes+qrycountcarinteres.Value;
            compensa := compensa+qrycountcarvalor_upc.Value;
            periodo := periodo +qrycountcarper_compensacion.value+',';
          end;
        qrycountcar.Next;
        end;
        if qrycountcar.RecordCount = 4 then
        begin
          writeln(outputfile,periodo+floattostr(mora)+','+floattostr(interes)+','+floattostr(compensa)+','+qryempresanom_empresa.value+','+qryempresatel_empresa.Value+','+nom_ace);
        end;
      qryempresa.Close;
      qryempresa.UnPrepare;
      qrydiscartera.Next;
      end;
    closefile(outputfile);
    showmessage('Finalizada la Generacion del Archivo');
    qrycountcar.Close;
    qrydiscartera.Close;
    end;
  end;
  if radiogroup1.ItemIndex = 4 then
  begin
    if (messagedlg('Esta seguro(a) de Generar el Archivo C:\Moracincomeses.txt',mtconfirmation,[mbyes,mbno],0)=mryes) then
    begin
      assignfile (outputfile, 'C:\Moracincomeses.txt');
      rewrite(outputfile);
      closefile(outputfile);
      append(outputfile);
      qrydiscartera.Close;
      qrydiscartera.Open;
      qrydiscartera.First;
      while not qrydiscartera.Eof do
      begin
        query4.Close;
        query4.Prepare;
        query4.Params[0].Value := qrydiscarteratip_documento.Value;
        query4.Params[1].Value := qrydiscarteranum_documento.Value;
        query4.Open;
        query4.First;
        nombre    := query4pri_nombre.Value+' '+query4seg_nombre.Value+' '+query4pri_apellido.Value+' '+query4seg_apellido.Value;
        telefono  := query4tel_afiliado_res.Value;
        direccion := query4dir_afiliado_res.Value;
        ciudad    := query4nom_ciudad.value;
        query4.Close;
        qryacesor.Close;
        qryacesor.Prepare;
        qryacesor.Params[0].Value := qrydiscarteratip_documento.Value;
        qryacesor.Params[1].Value := qrydiscarteranum_documento.Value;
        qryacesor.Open;
        qryacesor.First;
        nom_ace := qryacesorpri_apellido.value+' '+qryacesorpri_nombre.value;
        qryacesor.close;
        qryempresa.Close;
        qryempresa.Prepare;
        qryempresa.Params[0].Value := qrydiscarteranum_documento_emp.Value;
        qryempresa.Open;
        qryempresa.First;
        qrycountcar.Close;
        qrycountcar.Prepare;
        qrycountcar.Params[0].Value := qrydiscarteratip_documento.Value;
        qrycountcar.Params[1].Value := qrydiscarteranum_documento.Value;
        qrycountcar.Open;
        imp := 'S';
        while not qrycountcar.Eof do
        begin
          if (qrycountcar.RecordCount = 5) and (imp = 'S') then
          begin
            write(outputfile,qrydiscarteratip_documento.Value+','+qrydiscarteranum_documento.value+','+nombre+','+direccion+','+telefono+','+ciudad+',');
            mora := 0;
            interes := 0;
            compensa := 0;
            periodo := '';
            imp := 'N';
          end;
          if qrycountcar.RecordCount = 5 then
          begin
            mora := mora+qrycountcarvalor_mora.Value;
            interes := interes+qrycountcarinteres.Value;
            compensa := compensa+qrycountcarvalor_upc.Value;
            periodo := periodo +qrycountcarper_compensacion.value+',';
          end;
        qrycountcar.Next;
        end;
        if qrycountcar.RecordCount = 5 then
        begin
          writeln(outputfile,periodo+floattostr(mora)+','+floattostr(interes)+','+floattostr(compensa)+','+qryempresanom_empresa.value+','+qryempresatel_empresa.Value+','+nom_ace);
        end;
      qryempresa.Close;
      qryempresa.UnPrepare;
      qrydiscartera.Next;
      end;
    closefile(outputfile);
    showmessage('Finalizada la Generacion del Archivo');
    qrycountcar.Close;
    qrydiscartera.Close;
    end;
  end;
  if radiogroup1.ItemIndex = 5 then
  begin
    if (messagedlg('Esta seguro(a) de Generar el Archivo C:\Moraseismeses.txt',mtconfirmation,[mbyes,mbno],0)=mryes) then
    begin
      assignfile (outputfile, 'C:\Moraseismeses.txt');
      rewrite(outputfile);
      closefile(outputfile);
      append(outputfile);
      qrydiscartera.Close;
      qrydiscartera.Open;
      qrydiscartera.First;
      while not qrydiscartera.Eof do
      begin
        query4.Close;
        query4.Prepare;
        query4.Params[0].Value := qrydiscarteratip_documento.Value;
        query4.Params[1].Value := qrydiscarteranum_documento.Value;
        query4.Open;
        query4.First;
        nombre    := query4pri_nombre.Value+' '+query4seg_nombre.Value+' '+query4pri_apellido.Value+' '+query4seg_apellido.Value;
        telefono  := query4tel_afiliado_res.Value;
        direccion := query4dir_afiliado_res.Value;
        ciudad    := query4nom_ciudad.value;
        query4.Close;
        qryacesor.Close;
        qryacesor.Prepare;
        qryacesor.Params[0].Value := qrydiscarteratip_documento.Value;
        qryacesor.Params[1].Value := qrydiscarteranum_documento.Value;
        qryacesor.Open;
        qryacesor.First;
        nom_ace := qryacesorpri_apellido.value+' '+qryacesorpri_nombre.value;
        qryacesor.close;
        qryempresa.Close;
        qryempresa.Prepare;
        qryempresa.Params[0].Value := qrydiscarteranum_documento_emp.Value;
        qryempresa.Open;
        qryempresa.First;
        qrycountcar.Close;
        qrycountcar.Prepare;
        qrycountcar.Params[0].Value := qrydiscarteratip_documento.Value;
        qrycountcar.Params[1].Value := qrydiscarteranum_documento.Value;
        qrycountcar.Open;
        imp := 'S';
        while not qrycountcar.Eof do
        begin
          if (qrycountcar.RecordCount = 6) and (imp = 'S') then
          begin
            write(outputfile,qrydiscarteratip_documento.Value+','+qrydiscarteranum_documento.value+','+nombre+','+direccion+','+telefono+','+ciudad+',');
            mora := 0;
            interes := 0;
            compensa := 0;
            periodo := '';
            imp := 'N';
          end;
          if qrycountcar.RecordCount = 6 then
          begin
            mora := mora+qrycountcarvalor_mora.Value;
            interes := interes+qrycountcarinteres.Value;
            compensa := compensa+qrycountcarvalor_upc.Value;
            periodo := periodo +qrycountcarper_compensacion.value+',';
          end;
        qrycountcar.Next;
        end;
        if qrycountcar.RecordCount = 6 then
        begin
          writeln(outputfile,periodo+floattostr(mora)+','+floattostr(interes)+','+floattostr(compensa)+','+qryempresanom_empresa.value+','+qryempresatel_empresa.Value+','+nom_ace);
        end;
      qryempresa.Close;
      qryempresa.UnPrepare;
      qrydiscartera.Next;
      end;
    closefile(outputfile);
    showmessage('Finalizada la Generacion del Archivo');
    qryempresa.UnPrepare;
    qrydiscartera.Close;
    end;
  end;
  if radiogroup1.ItemIndex = 6 then
  begin
    if (messagedlg('Esta seguro(a) de Generar el Archivo C:\Moramasseseismeses.txt',mtconfirmation,[mbyes,mbno],0)=mryes) then
    begin
      assignfile (outputfile, 'C:\Moramasdeseismeses.txt');
      rewrite(outputfile);
      closefile(outputfile);
      append(outputfile);
      qrydiscartera.Close;
      qrydiscartera.Open;
      qrydiscartera.First;
      while not qrydiscartera.Eof do
      begin
        query4.Close;
        query4.Prepare;
        query4.Params[0].Value := qrydiscarteratip_documento.Value;
        query4.Params[1].Value := qrydiscarteranum_documento.Value;
        query4.Open;
        query4.First;
        nombre    := query4pri_nombre.Value+' '+query4seg_nombre.Value+' '+query4pri_apellido.Value+' '+query4seg_apellido.Value;
        telefono  := query4tel_afiliado_res.Value;
        direccion := query4dir_afiliado_res.Value;
        ciudad    := query4nom_ciudad.value;
        query4.Close;
        qryacesor.Close;
        qryacesor.Prepare;
        qryacesor.Params[0].Value := qrydiscarteratip_documento.Value;
        qryacesor.Params[1].Value := qrydiscarteranum_documento.Value;
        qryacesor.Open;
        qryacesor.First;
        nom_ace := qryacesorpri_apellido.value+' '+qryacesorpri_nombre.value;
        qryacesor.close;
        qryempresa.Close;
        qryempresa.Prepare;
        qryempresa.Params[0].Value := qrydiscarteranum_documento_emp.Value;
        qryempresa.Open;
        qryempresa.First;
        qrycountcar.Close;
        qrycountcar.Prepare;
        qrycountcar.Params[0].Value := qrydiscarteratip_documento.Value;
        qrycountcar.Params[1].Value := qrydiscarteranum_documento.Value;
        qrycountcar.Open;
        imp := 'S';
        while not qrycountcar.Eof do
        begin
          if (qrycountcar.RecordCount > 6) and (imp = 'S') then
          begin
            write(outputfile,qrydiscarteratip_documento.Value+','+qrydiscarteranum_documento.value+','+nombre+','+direccion+','+telefono+','+ciudad+',');
            mora := 0;
            interes := 0;
            compensa := 0;
            periodo := '';
            imp := 'N';
          end;
          if qrycountcar.RecordCount > 6 then
          begin
            mora := mora+qrycountcarvalor_mora.Value;
            interes := interes+qrycountcarinteres.Value;
            compensa := compensa+qrycountcarvalor_upc.Value;
            periodo := periodo +qrycountcarper_compensacion.value+',';
          end;
        qrycountcar.Next;
        end;
        if qrycountcar.RecordCount > 6 then
        begin
          writeln(outputfile,periodo+floattostr(mora)+','+floattostr(interes)+','+floattostr(compensa)+','+qryempresanom_empresa.value+','+qryempresatel_empresa.Value+','+nom_ace);
        end;
      qryempresa.Close;
      qryempresa.UnPrepare;
      qrydiscartera.Next;
      end;
    closefile(outputfile);
    showmessage('Finalizada la Generacion del Archivo');
    qrycountcar.Close;
    qrydiscartera.Close;
    end;
  end;
  if radiogroup1.ItemIndex = 7 then
  begin
    if (messagedlg('Esta seguro(a) de Generar el Archivo C:\Morosossietemeses.txt',mtconfirmation,[mbyes,mbno],0)=mryes) then
    begin
      assignfile (outputfile, 'C:\Morosossietesmeses.txt');
      rewrite(outputfile);
      closefile(outputfile);
      append(outputfile);
      qrydiscartera.Close;
      qrydiscartera.Open;
      qrydiscartera.First;
      while not qrydiscartera.Eof do
      begin
        query4.Close;
        query4.Prepare;
        query4.Params[0].Value := qrydiscarteratip_documento.Value;
        query4.Params[1].Value := qrydiscarteranum_documento.Value;
        query4.Open;
        query4.First;
        nombre    := query4pri_nombre.Value+' '+query4seg_nombre.Value+' '+query4pri_apellido.Value+' '+query4seg_apellido.Value;
        telefono  := query4tel_afiliado_res.Value;
        direccion := query4dir_afiliado_res.Value;
        ciudad    := query4nom_ciudad.value;
        query4.Close;
        qryacesor.Close;
        qryacesor.Prepare;
        qryacesor.Params[0].Value := qrydiscarteratip_documento.Value;
        qryacesor.Params[1].Value := qrydiscarteranum_documento.Value;
        qryacesor.Open;
        qryacesor.First;
        nom_ace := qryacesorpri_apellido.value+' '+qryacesorpri_nombre.value;
        qryacesor.close;
        qrycountcar.Close;
        qrycountcar.Prepare;
        qrycountcar.Params[0].Value := qrydiscarteratip_documento.Value;
        qrycountcar.Params[1].Value := qrydiscarteranum_documento.Value;
        qrycountcar.Open;
        imp := 'S';
        while not qrycountcar.Eof do
        begin
          if (qrycountcar.RecordCount = 7) and (imp = 'S') then
          begin
            write(outputfile,qrydiscarteratip_documento.Value+','+qrydiscarteranum_documento.value+','+nombre+','+direccion+','+telefono+','+ciudad+',');
            mora := 0;
            interes := 0;
            compensa := 0;
            periodo := '';
            imp := 'N';
          end;
          if qrycountcar.RecordCount = 7 then
          begin
            mora := mora+qrycountcarvalor_mora.Value;
            interes := interes+qrycountcarinteres.Value;
            compensa := compensa+qrycountcarvalor_upc.Value;
            periodo := periodo +qrycountcarper_compensacion.value+',';
          end;
        qrycountcar.Next;
        end;
        if qrycountcar.RecordCount = 7 then
        begin
          writeln(outputfile,periodo+floattostr(mora)+','+floattostr(interes)+','+floattostr(compensa)+','+nom_ace);
        end;
      qryempresa.Close;
      qryempresa.UnPrepare;
      qrydiscartera.Next;
      end;
    closefile(outputfile);
    showmessage('Finalizada la Generacion del Archivo');
    qrycountcar.Close;
    qrydiscartera.Close;
    end;
  end;
  if radiogroup1.ItemIndex = 8 then
  begin
    if (messagedlg('Esta seguro(a) de Generar el Archivo C:\CarteraXedad.txt',mtconfirmation,[mbyes,mbno],0)=mryes) then
    begin
      i := 0;
      assignfile (outputfile, 'C:\CarteraXedad.txt');
      rewrite(outputfile);
      closefile(outputfile);
      append(outputfile);
      qrydpto.Close;
      qrydpto.Open;
      qrydpto.First;
      writeln(outputfile,'Departamento'+','+'30 dias'+','+'60 dias'+','+'90 dias'+','+'120 dias'+','+' >= 150 dias');
      while not qrydpto.Eof do
      begin
        uno := 0;
        dos := 0;
        tres := 0;
        cua := 0;
        cin := 0;
        qryrep1.Close;
        qryrep1.Prepare;
        qryrep1.Params[0].Value := qrydptocod_departamento.value;
        qryrep1.Open;
        if qryrep1.RecordCount > 0 then
        begin
          qryrep1.First;
          while not qryrep1.Eof do
          begin
            edit27.Text := qrydptocod_departamento.Value+'-'+floattostr(i);
            i := i + 1;
            frmcartera.Refresh;
            qryrep2.Close;
            qryrep2.Prepare;
            qryrep2.Params[0].Value := qryrep1tip_documento.Value;
            qryrep2.Params[1].Value := qryrep1num_documento.value;
            qryrep2.Open;
            while not qryrep2.Eof do
            begin
              if qryrep2.RecordCount = 1 then
                 uno := uno + qryrep2valor_mora.Value + qryrep2interes.value;
              if qryrep2.RecordCount = 2 then
                 dos := dos + qryrep2valor_mora.Value  + qryrep2interes.value;
              if qryrep2.RecordCount = 3 then
                 tres := tres + qryrep2valor_mora.Value + qryrep2interes.value;
              if qryrep2.RecordCount = 4 then
                 cua := cua + qryrep2valor_mora.Value + qryrep2interes.value;
              if qryrep2.RecordCount >= 5 then
                 cin := cin + qryrep2valor_mora.Value + qryrep2interes.value;
              qryrep2.Next;
            end;     
            qryrep2.Close;
            qryrep1.Next;
          end;
          writeln(outputfile,qrydptocod_departamento.value+','+floattostr(uno)+','+floattostr(dos)+','+floattostr(tres)+','+floattostr(cua)+','+floattostr(cin))
        end;
        qryrep1.close;
        qrydpto.Next;
      end;
      qrydpto.Close;
      closefile(outputfile);
      showmessage('Finalizada la Generacion del Archivo');
    end;
  end;
end;

procedure Tfrmcartera.ConfigurarImpresora1Click(Sender: TObject);
begin
 printersetupdialog1.execute;
end;

procedure Tfrmcartera.Salir1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcartera.CarteraPorEmpresa1Click(Sender: TObject);
begin
  pagecontrol1.ActivePageIndex := 0;
end;

procedure Tfrmcartera.CarteraPorAfiliado1Click(Sender: TObject);
begin
  pagecontrol1.ActivePageIndex := 1;
end;

procedure Tfrmcartera.CarteraPorAfiliadoGrupoFamiliar1Click(
  Sender: TObject);
begin
  pagecontrol1.ActivePageIndex := 2
end;

procedure Tfrmcartera.CarteraPorEdadesdeMora1Click(Sender: TObject);
begin
    pagecontrol1.ActivePageIndex := 3
end;

procedure Tfrmcartera.GeneraciondeCartera1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmgencartera, frmgencartera);
    frmgencartera.show;
  except
     frmgencartera.Free;
  end;
end;

end.
