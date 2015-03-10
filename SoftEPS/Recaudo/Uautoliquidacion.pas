unit Uautoliquidacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Mask, Grids, DBGrids, DB, DBCtrls,
  Menus;

type
  Tfrmautoliquidacion = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    sbestado: TStatusBar;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    PopupMenu1: TPopupMenu;
    BuscarAfiliado1: TMenuItem;
    Button2: TButton;
    edtplanilla: TEdit;
    ednumero: TEdit;
    dtfechapago: TDateTimePicker;
    sgdetalle: TStringGrid;
    edtperiodo: TEdit;
    edtcorrecionplanilla: TEdit;
    edtnombreempresa: TEdit;
    edtnumeroducafiliado: TEdit;
    edtnombreafiliado: TEdit;
    panel4: TPanel;
    cbnovedad: TComboBox;
    eddias: TEdit;
    edtsalariobase: TEdit;
    edtvalorneto: TEdit;
    edtigresobasecotizacion: TEdit;
    edtcotizacionobligatorio: TEdit;
    edtincapacidad: TEdit;
    edttotalplanilla: TEdit;
    edttotalaporte: TEdit;
    edtlicencia: TEdit;
    edtnetoaportes: TEdit;
    edtintereses: TEdit;
    edtaporteinteteres: TEdit;
    edtsaldoanterior: TEdit;
    edtupc: TEdit;
    edttotalpagado: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Agregar: TButton;
    edtvalincapacidad: TEdit;
    edtvallicencia: TEdit;
    Button1: TButton;
    lbfechapago: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    cbtipodocempresa: TComboBox;
    cbtipodeclaracion: TComboBox;
    cbtipodocafiliado: TComboBox;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    edtautincapacidad: TEdit;
    Label32: TLabel;
    Label33: TLabel;
    edtnoautlicencia: TEdit;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    edttotalpagadoafiliado: TEdit;
    Label38: TLabel;
    Label39: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtplanillaChange(Sender: TObject);
    procedure DBRGtipoChange(Sender: TObject);
    procedure dbctipoChange(Sender: TObject);
    procedure dbenumeroChange(Sender: TObject);
    procedure dbeditfechapagoChange(Sender: TObject);
    procedure dbedtperiodoChange(Sender: TObject);
    procedure DBGdetalleCellClick(Column: TColumn);
    procedure BuscarAfiliado1Click(Sender: TObject);
    procedure dbeditfechapagoClick(Sender: TObject);
    procedure EdtplanillaClick(Sender: TObject);
    procedure ednumeroDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtnumeroducafiliadoDblClick(Sender: TObject);
    procedure AgregarClick(Sender: TObject);
    procedure ednumeroClick(Sender: TObject);
    procedure edtnumeroducafiliadoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure valores_planilla;
    procedure eddiasEnter(Sender: TObject);
    procedure edtigresobasecotizacionExit(Sender: TObject);
    procedure edtsalariobaseExit(Sender: TObject);
    procedure cbtipodeclaracionExit(Sender: TObject);
    procedure edtplanillaExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
      end;

var
  frmautoliquidacion: Tfrmautoliquidacion;

implementation

uses dtmodulo, Uprincipal, Uempresas, Uacerca, Uafiliados, Uplanillas;

{$R *.dfm}



procedure Tfrmautoliquidacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=cafree;

end;

procedure Tfrmautoliquidacion.edtplanillaChange(Sender: TObject);
begin
  //if Edtplanilla.Text <> '' THEN
  BEGIN
  //frmautoliquidacion.DBEplanilla.Text :=  Edtplanilla.Text;
  //frmautoliquidacion.dbedtcorrecion.visible := false;
  //frmautoliquidacion.dbenumero.enabled:= true;
  //frmautoliquidacion.DBRGtipo.enabled:= false;
  //frmautoliquidacion.dbeditfechapago.enabled:= false;
  //frmautoliquidacion.dbedtcorrecion.enabled:= false;
  //frmautoliquidacion.DBGdetalle.enabled:= false;
  end;

 with DataModule1.qrydetalle do
  begin
   open;
  end;

end;

procedure Tfrmautoliquidacion.DBRGtipoChange(Sender: TObject);
begin
  //frmautoliquidacion.dbenumero.enabled:= true;
  //frmautoliquidacion.DBRGtipo.enabled:= true;
  //frmautoliquidacion.dbeditfechapago.enabled:= true;
  //frmautoliquidacion.dbedtcorrecion.enabled:= true;
  //frmautoliquidacion.DBGdetalle.enabled:= false;
      //  case DBRGtipo of
       // 0: frmautoliquidacion.dbedtcorrecion.Visible := false;
       // 1: frmautoliquidacion.dbedtcorrecion.Visible := false;
       // 2: frmautoliquidacion.dbedtcorrecion.Visible := true;
//end;

end;

procedure Tfrmautoliquidacion.dbctipoChange(Sender: TObject);
begin
  //frmautoliquidacion.dbenumero.enabled:= true;
  //frmautoliquidacion.DBRGtipo.enabled:= true;
  //frmautoliquidacion.dbeditfechapago.enabled:= true;
  //frmautoliquidacion.dbedtcorrecion.enabled:= false;
  //frmautoliquidacion.DBGdetalle.enabled:= false;
  //DBGdetalle.Columns[0].Visible := FALSE;

begin
end;
end;

procedure Tfrmautoliquidacion.dbenumeroChange(Sender: TObject);
begin
 //frmautoliquidacion.dbenumero.enabled:= true;
 // frmautoliquidacion.DBRGtipo.enabled:= true;
 // frmautoliquidacion.dbeditfechapago.enabled:= true;
 // frmautoliquidacion.dbedtcorrecion.enabled:= true;
 // frmautoliquidacion.DBGdetalle.enabled:= false;
end;

procedure Tfrmautoliquidacion.dbeditfechapagoChange(Sender: TObject);
begin
  //frmautoliquidacion.dbenumero.enabled:= true;
  //frmautoliquidacion.DBRGtipo.enabled:= true;
  //frmautoliquidacion.dbeditfechapago.enabled:= true;
  //frmautoliquidacion.dbedtcorrecion.enabled:= true;
  //frmautoliquidacion.DBGdetalle.enabled:= true;
end;

procedure Tfrmautoliquidacion.dbedtperiodoChange(Sender: TObject);
begin
  //frmautoliquidacion.dbenumero.enabled:= true;
  //frmautoliquidacion.DBRGtipo.enabled:= true;
  //frmautoliquidacion.dbeditfechapago.enabled:= true;
  //frmautoliquidacion.dbedtcorrecion.enabled:= true;
  //frmautoliquidacion.DBGdetalle.enabled:= true;
end;

procedure Tfrmautoliquidacion.DBGdetalleCellClick(Column: TColumn);
begin
//DBGdetalle.Columns[0].Visible := FALSE;
end;

procedure Tfrmautoliquidacion.BuscarAfiliado1Click(Sender: TObject);
begin
frmafiliados:=Tfrmafiliados.create(application);
try
frmafiliados.show;
//finally
except
frmafiliados.Free;
end;
end;

procedure Tfrmautoliquidacion.dbeditfechapagoClick(Sender: TObject);
begin
 //frmautoliquidacion.dbenumero.enabled:= true;
  //frmautoliquidacion.DBRGtipo.enabled:= true;
  //frmautoliquidacion.dbeditfechapago.enabled:= true;
 // frmautoliquidacion.dbedtcorrecion.enabled:= true;
 // frmautoliquidacion.DBGdetalle.enabled:= true;
end;

procedure Tfrmautoliquidacion.EdtplanillaClick(Sender: TObject);
begin

//frmautoliquidacion.DBEincapacidades.Text := inttostr(0);
//frmautoliquidacion.DBElicencias.Text := inttostr(0);
//frmautoliquidacion.DBeaportes.Text := inttostr(0);
//frmautoliquidacion.DBEintereses.Text := inttostr(0);
//frmautoliquidacion.DBEinteresesmasaportes.Text := inttostr(0);
//frmautoliquidacion.DBEsaldomesanterior.Text := inttostr(0);
//frmautoliquidacion.DBEupcadicional.Text := inttostr(0);
//frmautoliquidacion.DBEtotalpagado.Text := inttostr(0);

end;

procedure Tfrmautoliquidacion.ednumeroDblClick(Sender: TObject);
begin

frmempresas:=Tfrmempresas.create(application);
try
frmempresas.show;
//finally
except
frmempresas.Free;
end;

end;

procedure Tfrmautoliquidacion.FormCreate(Sender: TObject);
begin
with sgdetalle do
  begin
    cells[0,0]:='Tipo';
    cells[1,0]:='Documento';
    cells[2,0]:='Novedad';
    cells[3,0]:='Dias Cotizados';
    cells[4,0]:='Salario Basico';
    cells[5,0]:='Valor Neto Novedad';
    cells[6,0]:='Ingreso Base Cotizacion';
    cells[7,0]:='Cotizacion Obligatoria';
    cells[8,0]:='Valor Incapacidad';
    cells[9,0]:='Valor Licencia';
    cells[10,0]:='Valor UPC';
    cells[11,0]:='Total Pagado';
 end;
end;

procedure Tfrmautoliquidacion.edtnumeroducafiliadoDblClick(
  Sender: TObject);
begin
frmafiliados:=Tfrmafiliados.create(application);
try
frmafiliados.show;
//finally
except
frmafiliados.Free;
end;
end;

procedure Tfrmautoliquidacion.AgregarClick(Sender: TObject);
begin
if edtnumeroducafiliado.Text <> '' then
begin
// adicionar  en la  grilla los  datos  digitados
   sgdetalle.RowCount := sgdetalle.RowCount + 1  ;
   sgdetalle.cells[1,sgdetalle.RowCount -2] := edtnumeroducafiliado.Text;
   sgdetalle.cells[2,sgdetalle.RowCount -2] := cbnovedad.Text;
   sgdetalle.cells[3,sgdetalle.RowCount -2] := eddias.text;
   sgdetalle.cells[4,sgdetalle.RowCount -2] := edtsalariobase.text;
   sgdetalle.cells[5,sgdetalle.RowCount -2] := edtvalorneto.text;
   sgdetalle.cells[6,sgdetalle.RowCount -2] := edtigresobasecotizacion.text;
   sgdetalle.cells[7,sgdetalle.RowCount -2] := edtcotizacionobligatorio.text;
   sgdetalle.cells[8,sgdetalle.RowCount -2] := edtvalincapacidad.text;
   sgdetalle.cells[9,sgdetalle.RowCount -2] := edtvallicencia.text;
   sgdetalle.cells[10,sgdetalle.RowCount -2] := edtupc.text;
   sgdetalle.cells[11,sgdetalle.RowCount -2] := edtupc.text;
   sgdetalle.Row := sgdetalle.RowCount -2 ;
   sgdetalle.Col:=0;
   sbestado.panels[0].text := 'Usuario adicionado';


   // limpiar  los  datos  del afiliado
   edtnumeroducafiliado.Text := '';
   cbnovedad.Text := '';
   eddias.text := '';
   edtsalariobase.text := '';
   edtvalorneto.text := '';
   edtigresobasecotizacion.text := '';
   edtcotizacionobligatorio.text := '';
   edtvalincapacidad.text := '';
   edtvallicencia.text := '';
   end;

end;

procedure Tfrmautoliquidacion.ednumeroClick(Sender: TObject);
begin
sbestado.Panels[0].Text := 'doble clik  para  buscar  empresas';
end;

procedure Tfrmautoliquidacion.edtnumeroducafiliadoClick(Sender: TObject);
begin
sbestado.Panels[0].Text := 'doble clik  para  buscar  afiliados  de  la  empresa';
end;

procedure Tfrmautoliquidacion.Button1Click(Sender: TObject);
var i,j : integer;
begin
  if  sgdetalle.Row = sgdetalle.RowCount -1 then
    exit;
  if messagedlg (' realmente  quiere borrar el pago realizado por empleado ?', mtconfirmation, [mbyes, mbno], 0) = mryes then
  begin
    for i:= sgdetalle.Row -1 to sgdetalle.RowCount do
    begin
      for j := 0 TO 10 DO
      sgdetalle.Cells[i,j] := sgdetalle.Cells[j,i];
    end;
    sgdetalle.RowCount := sgdetalle.RowCount -1 ;
  //  actnliquidar.Execute;
   // salvar :=true;
    sbestado.panels[0].text := 'Borrando  usuario';
  end;
end;

procedure Tfrmautoliquidacion.valores_planilla;
var i,j:integer;
  total : real;
  begin
  try  // manejo de  errores
  total := 0;
  for j:= 1 to 4  do
  begin
    total := 0;
    for i:= 1 to sgdetalle.RowCount -2 do
      total := total + strtofloat(sgdetalle.cells[j,i]);
    sgdetalle.cells[j,sgdetalle.RowCount -1] := floattostr(total);
    sgdetalle.Cells[0,sgdetalle.RowCount -1] := 'Totales'

  end;
  except  // menasje  de  los errores
  //ShowMessage('Error al calcular liquidacion');
   on e: EConvertError do
    begin
     e.Message := 'Digitar solo numero';
     Raise;    // volver a  ejecutar  la opcion
  end;
 end;
 end;


procedure Tfrmautoliquidacion.eddiasEnter(Sender: TObject);
 var dias : Integer;
begin
 if eddias.Text <> '' then
 begin
    dias := strtoint(eddias.text);
    if dias > 30 then
    begin
    ShowMessage('Error  los dias  no puden ser mayores a 30 dias');
    eddias.SetFocus
    end;
     if dias = 0 then
        begin
        ShowMessage('Error  los dias  no puden ser igual a 0 dias');
        eddias.SetFocus
        end;
 end;
end;

procedure Tfrmautoliquidacion.edtigresobasecotizacionExit(Sender: TObject);
var valor_cotizacion : Real;

begin
valor_cotizacion := StrToFloat(edtigresobasecotizacion.Text)* 0.12;
edtcotizacionobligatorio.Text := FloatToStr(valor_cotizacion)
end;

procedure Tfrmautoliquidacion.edtsalariobaseExit(Sender: TObject);
var i : real;
begin
i := strtofloat(edtsalariobase.text);
edtsalariobase.text:=FormatFloat('#,',i);
end;

procedure Tfrmautoliquidacion.cbtipodeclaracionExit(Sender: TObject);
var ano,mes : Integer;
begin
edtperiodo.Clear;
 if cbtipodeclaracion.ItemIndex = 0 then
  begin
   edtcorrecionplanilla.Visible := false;
   edtperiodo.Enabled := false;
   mes:=StrToInt(formatDateTime('mm',dtfechapago.date));
   ano:=StrToInt(formatDateTime('yyyy',dtfechapago.date));
    if mes = 1 then
    begin
    edtperiodo.Text := inttostr(12)+ '/'+ inttostr(ano -1);
     end
     else if mes > 1 then
     begin
   edtperiodo.Text := inttostr(mes -1) + '/'+ inttostr(ano);
   end;
    end
    else
    if cbtipodeclaracion.ItemIndex = 1 then
    begin
     edtperiodo.Enabled := true;
     edtcorrecionplanilla.Visible := false;
    end
      else
      if cbtipodeclaracion.ItemIndex = 2 then
      begin
      edtperiodo.Enabled := false;
      edtcorrecionplanilla.Visible := true;
      end;
    end;

procedure Tfrmautoliquidacion.edtplanillaExit(Sender: TObject);
begin
DataModule1.qryautoliquidacion.DisableControls;
DataModule1.qryautoliquidacion.Close;
DataModule1.qryautoliquidacion.ParamByName('planilla').Value := frmautoliquidacion.edtplanilla.Text;
DataModule1.qryautoliquidacion.open;
DataModule1.qryautoliquidacion.EnableControls;
//verificar  si existe
DataModule1.qrydetalle.DisableControls;
DataModule1.qrydetalle.Close;
DataModule1.qrydetalle.ParamByName('dplanilla').Value := frmautoliquidacion.edtplanilla.Text;
DataModule1.qrydetalle.open;
DataModule1.qrydetalle.EnableControls;
DataModule1.dtsdetalleauto.Edit;
DataModule1.qrydetalle.Post;

end;

end.
