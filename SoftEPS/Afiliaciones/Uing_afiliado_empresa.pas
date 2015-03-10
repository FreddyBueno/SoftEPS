unit Uing_afiliado_empresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, DBTables, ComCtrls, ExtCtrls;

type
  Tfrming_afiliado_empresa = class(TForm)
    qrynovedades_afiliados: TQuery;
    qryafiliados_empresas: TQuery;
    dstipossalarios: TDataSource;
    dsdepartamentos: TDataSource;
    dsciudades: TDataSource;
    dsocupaciones: TDataSource;
    dszonas: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label22: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    Label12: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Button1: TButton;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit8: TDBEdit;
    Edit1: TEdit;
    dblmodalidadtrabajo: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label17: TLabel;
    Label2: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Button2: TButton;
    dtsmodalidadtra: TDataSource;
    dtstipodocumento: TDataSource;
    DBLookupComboBox7: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    qrytiposalario: TQuery;
    qryempresas: TQuery;
    Query1: TQuery;
    DateTimePicker1: TDateTimePicker;
    Label7: TLabel;
    Label48: TLabel;
    qryempresasTIP_DOCUMENTO: TStringField;
    qryempresasNUM_DOCUMENTO: TStringField;
    qryempresasCOD_SUCURSAL: TStringField;
    qryempresasNOM_EMPRESA: TStringField;
    qryempresasCOD_ACTIVIDAD_ECO: TStringField;
    qryempresasCOD_DEPARTAMENTO: TStringField;
    qryempresasCOD_CIUDAD: TStringField;
    qryempresasTIP_APORTANTE: TStringField;
    qryempresasDIR_EMPRESA: TStringField;
    qryempresasTEL_EMPRESA: TStringField;
    qryempresasTEL_EMPRESA2: TStringField;
    qryempresasCOD_ESTADO: TStringField;
    qryempresasCOD_OFICINA: TStringField;
    qryempresasCOD_REGIONAL: TStringField;
    qryempresasTIP_DOCUMENTO_ARP: TStringField;
    qryempresasNUM_DOCUMENTO_ARP: TStringField;
    qryempresasFEC_AFILIACION: TDateTimeField;
    qryempresasURL_EMPRESA: TStringField;
    qryempresasEML_EMPRESA: TStringField;
    qryempresasTOT_EMPLEADOS: TStringField;
    qryempresasCOD_TIPO_PER: TStringField;
    qryempresasCOD_ZONA: TStringField;
    qryempresasCOD_DEPARTAMENTO_PAG: TStringField;
    qryempresasCOD_CIUDAD_PAG: TStringField;
    qryempresasCOD_PRESENTACION_COM: TStringField;
    qryempresasCOD_TIP_EMPRESA: TStringField;
    qryempresasTIP_DOCUMENTO_PEN: TStringField;
    qryempresasNUM_DOCUMENTO_PEN: TStringField;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DateTimePicker1Exit(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frming_afiliado_empresa: Tfrming_afiliado_empresa;
  tip_doc_emp,num_doc_emp,cod_sucursal:string;
  fec_ingreso:Tdatetime;

implementation

uses Ucambio_empresas, UEmpresas, Uafiliaciones, Udmafiliaciones;

{$R *.dfm}

procedure Tfrming_afiliado_empresa.Button1Click(Sender: TObject);
begin
        frmempresas:=Tfrmempresas.create(Application);
              try
                      frmempresas.caption := 'Seleccion de la Nueva empresa';
                      frmempresas.show;

              except
                      frmempresas.free;
              end;
end;

procedure Tfrming_afiliado_empresa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     frmcambio_empresas.qryafiliados_empresas.Cancel;
     action:=cafree;
end;

procedure Tfrming_afiliado_empresa.Button2Click(Sender: TObject);
begin

      try
              dmafiliaciones.softeps.StartTransaction;
              frmcambio_empresas.qryafiliados_empresasfec_ing_empresa.Value :=DateTimePicker1.Date;
              frmcambio_empresas.qryafiliados_empresas.post;
              qryafiliados_empresas.close;
              qryafiliados_empresas.Params[0].AsString := 'I';
              qryafiliados_empresas.Params[1].AsDate := DateTimePicker1.Date;
              qryafiliados_empresas.Params[2].AsString := tip_doc_emp;
              qryafiliados_empresas.Params[3].AsString := num_doc_emp;
              qryafiliados_empresas.Params[4].AsString := cod_sucursal;
              qryafiliados_empresas.Params[7].AsDate := strtodate(Edit5.text);
              qryafiliados_empresas.ExecSql;

              //execute qrynovedades_afiliados
              qrynovedades_afiliados.Close;
              qrynovedades_afiliados.Params[0].AsString := '11';
              qrynovedades_afiliados.Params[1].AsString := frmcambio_empresas.qryafiliadostip_documento.Text;
              qrynovedades_afiliados.Params[2].AsString := frmcambio_empresas.qryafiliadosnum_documento.Text;
              qrynovedades_afiliados.Params[3].AsString := gb_oficina;
              qrynovedades_afiliados.Params[4].AsString := gb_regional;
              qrynovedades_afiliados.Params[5].AsString := gb_tip_doc_usu;
              qrynovedades_afiliados.Params[6].AsString := gb_num_doc_usu;
              qrynovedades_afiliados.Params[7].AsDatetime := frmafiliaciones.fecha_actual();
              qrynovedades_afiliados.Params[8].AsDatetime := frmafiliaciones.fecha_actual();
              qrynovedades_afiliados.Params[9].AsDatetime := frmafiliaciones.fecha_actual();
              qrynovedades_afiliados.Params[10].AsString := tip_doc_emp;
              qrynovedades_afiliados.Params[11].AsString := num_doc_emp;
              qrynovedades_afiliados.Params[12].AsString := cod_sucursal;
              qrynovedades_afiliados.ExecSql;
              if MessageDlg('Esta seguro de aplicar la novedad de cambio de empresa',
                 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               begin
                     if frmcambio_empresas.qryafiliadosCOD_MODALIDAD_TRA.Value <> dblmodalidadtrabajo.KeyValue then
                     begin
                    Query1.Close;
                    Query1.SQL.Clear;
                    Query1.SQL.Add('UPDATE  AFILIADOS  SET COD_MODALIDAD_TRA = :"TRA"');
                    Query1.SQL.Add('WHERE TIP_DOCUMENTO = :"TIPO" AND NUM_DOCUMENTO = :"NUMERO"');
                    QUERY1.RequestLive := TRUE;
                    QUERY1.Params[0].AsString := dblmodalidadtrabajo.KeyValue;
                    QUERY1.Params[1].AsString := Edit2.Text;
                    QUERY1.Params[2].AsString := Edit3.Text;
                    QUERY1.ExecSQL;
                    end;
                  dmafiliaciones.softeps.Commit; {on success, commit the changes};
                   // showmessage('Novedad de Cambio de Empresa Aplicada');
                    frmcambio_empresas.BitBtn1Click(frmcambio_empresas);
                close;
              end
              else
              begin
                    dmafiliaciones.softeps.Rollback;
                    close;
              end;

      except
              dmafiliaciones.softeps.Rollback;
              if MessageDlg('Error en el Procedimiento para el Cambio de Empresa, Desea cancelar el proceso',
                 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              close;
              raise;
      end;

end;

procedure Tfrming_afiliado_empresa.FormShow(Sender: TObject);
begin
        tip_doc_emp:=frmcambio_empresas.qryafiliados_empresastip_documento_emp.Text;
        num_doc_emp:=frmcambio_empresas.qryafiliados_empresasnum_documento_emp.Text;
        cod_sucursal:=frmcambio_empresas.qryafiliados_empresascod_sucursal.Text;
  //      fec_ingreso:=;
        frmcambio_empresas.qryafiliados_empresas.Insert;
        frmcambio_empresas.qryafiliados_empresastip_documento_afi.Text:=frmcambio_empresas.qryafiliadostip_documento.text;
        frmcambio_empresas.qryafiliados_empresasnum_documento_afi.Text:=frmcambio_empresas.qryafiliadosnum_documento.text;
        frmcambio_empresas.qryafiliados_empresascod_estado.text:='A';
        frmcambio_empresas.qryafiliados_empresasfec_ingreso_uni.value:=frmafiliaciones.fecha_actual();
        dmafiliaciones.Qryciudades.Active:=false;
        dmafiliaciones.Qryciudades.Params[0].AsString := frmcambio_empresas.qryafiliados_empresascod_departamento_lab.text;
        dmafiliaciones.Qryciudades.ExecSQL;
        dmafiliaciones.Qryciudades.Active:=true;
end;

procedure Tfrming_afiliado_empresa.DBLookupComboBox3Click(Sender: TObject);
begin
        dmafiliaciones.Qryciudades.Active:=false;
        dmafiliaciones.Qryciudades.Params[0].AsString := frmcambio_empresas.qryafiliados_empresascod_departamento_lab.text;
        dmafiliaciones.Qryciudades.ExecSQL;
        dmafiliaciones.Qryciudades.Active:=true;
end;

procedure Tfrming_afiliado_empresa.AppMessage(var Msg: TMsg;
  var Handled: Boolean);
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

procedure Tfrming_afiliado_empresa.FormCreate(Sender: TObject);
begin
        Application.OnMessage := AppMessage;
end;

procedure Tfrming_afiliado_empresa.DBEdit5KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.numerosKeypress(dbedit5,Key);
end;

procedure Tfrming_afiliado_empresa.DBEdit6KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.numerosKeypress(dbedit6,Key);
end;

procedure Tfrming_afiliado_empresa.DBEdit8KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.numerosKeypress(dbedit8,Key);
end;

procedure Tfrming_afiliado_empresa.DBEdit14KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.numerosKeypress(dbedit14,Key);
end;

procedure Tfrming_afiliado_empresa.DBEdit15KeyPress(Sender: TObject;
  var Key: Char);
begin
        frmafiliaciones.numerosKeypress(dbedit15,Key);
end;

procedure Tfrming_afiliado_empresa.DBEdit6Exit(Sender: TObject);
begin
if  DBEdit5.Text = '' then
   begin
   ShowMessage('Digite La Sucursal de la  Empresa');
   DBEdit5.SetFocus;
   end
   else
   Button1.Enabled := true;
   qryempresas.close;
   qryempresas.sql.clear;
   qryempresas.sql.add('select * from empresas where tip_documento = :"tipo" and num_documento = :"numero"');
   qryempresas.PARAMS[0].ASSTRING := DBLookupComboBox7.KeyValue;
   qryempresas.PARAMS[1].ASSTRING := DBEdit5.Text;

       qryempresas.open;
       if qryempresas.RecordCount = 1 then
       begin
       Edit1.Text := qryempresasNOM_EMPRESA.Value;
       frmcambio_empresas.qryafiliados_empresas.Edit;
       frmcambio_empresas.qryafiliados_empresascod_departamento_lab.Value := qryempresasCOD_DEPARTAMENTO.Value;
       frmcambio_empresas.qryafiliados_empresascod_ciudad_lab.Value := qryempresasCOD_CIUDAD.Value;
       frmcambio_empresas.qryafiliados_empresascod_zona.Value := qryempresasCOD_ZONA.Value;
       frmcambio_empresas.qryafiliados_empresasdir_afiliado_lab.Value := qryempresasDIR_EMPRESA.Value;
       frmcambio_empresas.qryafiliados_empresastel_afiliado_lab.Value := qryempresasTEL_EMPRESA.Value;
       frmcambio_empresas.qryafiliados_empresastel_afiliado_lab2.Value := qryempresasTEL_EMPRESA2.Value;
         dmafiliaciones.Qryciudades.Active:=false;
         dmafiliaciones.Qryciudades.Params[0].AsString := frmcambio_empresas.qryafiliados_empresascod_departamento_lab.text;
         dmafiliaciones.Qryciudades.ExecSQL;
         dmafiliaciones.Qryciudades.Active:=true;
       Button1.Enabled := false;
       Query1.close;
       Query1.sql.clear;
       Query1.sql.add('SELECT * FROM AFILIADOS_EMPRESAS WHERE TIP_DOCUMENTO_AFI = :"TAFILIADO" AND NUM_DOCUMENTO_AFI = :"DAFILIADO" AND');
       Query1.sql.add('TIP_DOCUMENTO_EMP = :"TEMPRESA" AND NUM_DOCUMENTO_EMP = :"DEMPRESA"  AND FEC_EGRESO_UNI IS NULL');
       Query1.PARAMS[0].ASSTRING := frmcambio_empresas.dbltipos.text;
       Query1.PARAMS[1].ASSTRING := frmcambio_empresas.Edit2.text;
       Query1.PARAMS[2].ASSTRING := DBLookupComboBox7.KeyValue;
       Query1.PARAMS[3].ASSTRING := DBEdit5.Text;
       Query1.OPEN;
       if query1.RecordCount = 1 then
       begin
       ShowMessage('Afiliado Esta Activo por esta  Empresa y No se puede Afiliar mas de Una vez a la misma Empresa');
       DBLookupComboBox7.SetFocus;
       Button1.Enabled := true;
      end;
      end
   else
   if qryempresas.RecordCount = 0 then
   begin
   ShowMessage('La  Empresa  No esta Registrada Selecionela de la lista ');
   DBLookupComboBox7.SetFocus;
   end;

end;

procedure Tfrming_afiliado_empresa.DBLookupComboBox1Exit(Sender: TObject);
begin
if  DBLookupComboBox1.Text = '' then
   begin
   ShowMessage('Selecione El tipo de Salario  que tendra  el afiliado ');
   DBLookupComboBox1.SetFocus;
   end
   else
   if  DBLookupComboBox1.Text <> '' then
   begin
        dmafiliaciones.qrysalariominimo.Active:=false;
        dmafiliaciones.qrysalariominimo.Params[0].AsString := '01/01/'+ (FORMATDATETIME('YYYY',DateTimePicker1.date));
        dmafiliaciones.qrysalariominimo.ExecSQL;
        dmafiliaciones.qrysalariominimo.Active:=true;

    end;
end;

procedure Tfrming_afiliado_empresa.DateTimePicker1Change(Sender: TObject);
begin
frmcambio_empresas.qryafiliados_empresas.Edit;
frmcambio_empresas.qryafiliados_empresasfec_ingreso_uni.Value := DateTimePicker1.Date;
end;

procedure Tfrming_afiliado_empresa.DBEdit8Exit(Sender: TObject);
var sueldo : real;
begin
sueldo := 0;
if  DBEdit8.Text = ''  then
   begin
   ShowMessage('El Nuevo Digite el Salario ');
   DBEdit8.SetFocus;
   end
  else
   if  DBEdit8.Text <> ''  then
   begin
   frmcambio_empresas.qryafiliados_empresasval_sueldo_afil.currency := false;
   sueldo := strtofloat(DBEdit8.Text);
   frmcambio_empresas.qryafiliados_empresasval_sueldo_afil.currency := true;
   end;
   if dblmodalidadtrabajo.KeyValue = 'D' then
   begin
      if dmafiliaciones.qrysalariominimoSAL_MINIMO.value > sueldo then
      begin
      ShowMessage('El salario del Cotizante Dependiente no puede ser Menor de un salario Minimo ');
      DBEdit8.SetFocus;
      end
      else
        if (dmafiliaciones.qrysalariominimoSAL_MINIMO.value*20) < (sueldo) then
        begin
        ShowMessage('El salario del Cotizante Dependiente no puede ser Mayor de 20 salarios Minimos ');
        DBEdit8.SetFocus;
        end;

      end
      else

      if dblmodalidadtrabajo.KeyValue = 'I' then
     begin
      if (dmafiliaciones.qrysalariominimoSAL_MINIMO.value*2) > sueldo then
      begin
      ShowMessage('El salario del Cotizante Independiente no puede ser Menor de Dos salario Minimo ');
      DBEdit8.SetFocus;
      end
      else
        if (dmafiliaciones.qrysalariominimoSAL_MINIMO.value*20) < (sueldo) then
        begin
        ShowMessage('El salario del Cotizante Dependiente no puede ser Mayor de 20 salarios Minimos ');
        end;
      end
      else
      if dblmodalidadtrabajo.KeyValue = 'E' then
     begin
      if (dmafiliaciones.qrysalariominimoSAL_MINIMO.value/2) > sueldo then
      begin
      ShowMessage('El salario de la Empleada(o) Domestica(o) no puede ser Menor de Dos salario Minimo ');
      DBEdit8.SetFocus;
      end
      else
        if (dmafiliaciones.qrysalariominimoSAL_MINIMO.value*20) < sueldo then
        begin
        ShowMessage('salario de la Empleada(o) Domestica(o) no puede ser Mayor de 20 salarios Minimos ');
        DBEdit8.SetFocus;
        end;
      end;

end;

procedure Tfrming_afiliado_empresa.DateTimePicker1Exit(Sender: TObject);
begin
       if DateTimePicker1.date > gb_fec_hoy then
       begin
       ShowMessage('La Fecha de Translado no puede ser mayor al dia de hoy');
       DateTimePicker1.SetFocus;
       end
       else
           if DateTimePicker1.date < qryempresasFEC_AFILIACION.Value then
           begin
           ShowMessage('La Fecha de Afiliacion de la Empresa  es Mayor a la del ingreso del Cotizante');
           DBEdit5.SetFocus;
           end
           else
               if DateTimePicker1.date < StrToDate(Edit5.Text) then
               begin
               ShowMessage('La Fecha de translado de  empresa  es menor a la fecha de Ingreso a la Anterior Empresa');
               DBEdit5.SetFocus;
               end;
end;

procedure Tfrming_afiliado_empresa.DBLookupComboBox3Exit(Sender: TObject);
begin
  if DBLookupComboBox3.KeyValue = '' then
   begin
    ShowMessage('Debe selecionar El departamento donde Labora  el Afiliado');
    DBLookupComboBox3.SetFocus;
   end;
end;

procedure Tfrming_afiliado_empresa.DBLookupComboBox4Exit(Sender: TObject);
begin
if DBLookupComboBox4.KeyValue = '' then
   begin
    ShowMessage('Debe Selecionar  El Municipio donde Labora  el Afiliado');
    DBLookupComboBox3.SetFocus;
   end;
end;

procedure Tfrming_afiliado_empresa.DBLookupComboBox2Exit(Sender: TObject);
begin
   if DBLookupComboBox2.KeyValue = '' then
    begin
    ShowMessage('Debe Selecionar  la Zona donde Labora  el Afiliado');
    DBLookupComboBox2.SetFocus;
   end;

end;

procedure Tfrming_afiliado_empresa.DBEdit14Exit(Sender: TObject);
begin
    if DBEdit14.text = '' then
   begin
    ShowMessage('Debe digitar el Telefono  donde Labora  el Afiliado');
    DBEdit14.SetFocus;
   end
   else
   if Length(DBEdit14.Text) <= 6 then
   begin
   ShowMessage('Este no es un numero Telefonico Digitelo Nuevamente');
    DBEdit14.SetFocus;
   end;
end;

procedure Tfrming_afiliado_empresa.DBEdit13Exit(Sender: TObject);
begin
if DBEdit13.text = '' then
   begin
    ShowMessage('Debe digitar La direccion  donde Labora  el Afiliado');
    DBEdit13.SetFocus;
   end;
end;

procedure Tfrming_afiliado_empresa.DBEdit5Enter(Sender: TObject);
begin
 if DBEdit6.Text = '' then
  begin
  DBEdit6.Text :='0'
  end;
end;

end.
