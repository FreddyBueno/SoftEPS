unit Uprincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ComCtrls, ToolWin, StdActns, ActnList,
  ImgList;

type
  Tfrmprincipal = class(TForm)
    sb: TStatusBar;
    mmprincipal: TMainMenu;
    Archivo1: TMenuItem;
    ConfigurarImpresora1: TMenuItem;
    Imprimir1: TMenuItem;
    N1: TMenuItem;
    Salir1: TMenuItem;
    Proceso1: TMenuItem;
    Consulta1: TMenuItem;
    Ayuda1: TMenuItem;
    Contenido1: TMenuItem;
    pdimprimir: TPrintDialog;
    psiimprimir: TPrinterSetupDialog;
    Acercar1: TMenuItem;
    Ventana1: TMenuItem;
    ActionList1: TActionList;
    Horizontal1: TMenuItem;
    MinimizeAll1: TMenuItem;
    MinimizeAll2: TMenuItem;
    Close1: TMenuItem;
    WindowClose1: TWindowClose;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrange1: TWindowArrange;
    MiximizarTodo1: TMenuItem;
    Adicionar: TAction;
    Action2: TAction;
    Modificar: TAction;
    CoolBar1: TCoolBar;
    bANCOS1: TMenuItem;
    ExtractosBancarios1: TMenuItem;
    MedioMagnetico1: TMenuItem;
    Manual1: TMenuItem;
    ConciliarManualmete1: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Image1: TImage;
    ImageList1: TImageList;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    IngresoBancos1: TMenuItem;
    FormatoExtracto1: TMenuItem;
    Sucursales1: TMenuItem;
    procedure ToolButton6Click(Sender: TObject);
    procedure ConfigurarImpresora1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Acercar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ModificarEstractoBancario1Click(Sender: TObject);
    // funcion  version de la  aplicacion
    function  GetAppInfo(De:string):string;
    procedure FormActivate(Sender: TObject);
    function Edad(FechaNacimiento: string): integer;
    function DiasMes(fecha: TDateTime): integer;
    procedure ConciliarManualmete1Click(Sender: TObject);
    procedure MedioMagnetico1Click(Sender: TObject);
   function espacios(tamano:integer;cadena:string):string;
    procedure IngresoBancos1Click(Sender: TObject);
    procedure Manual1Click(Sender: TObject);
    procedure FormatoExtracto1Click(Sender: TObject);
    procedure Sucursales1Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
 frmprincipal: Tfrmprincipal;
implementation

uses Uacerca, dtmodulo, Uglobal, LoginFrm, Ubancos, Uarchivos,
  Umodestrato, Umodificar, udigitacionextracto, UFORMATO, usucursales;

{$R *.dfm}

procedure Tfrmprincipal.ToolButton6Click(Sender: TObject);
begin
close;

end;

procedure Tfrmprincipal.ConfigurarImpresora1Click(Sender: TObject);
begin
psiimprimir.Execute;
end;

procedure Tfrmprincipal.Imprimir1Click(Sender: TObject);
begin
pdimprimir.Execute;
end;

procedure Tfrmprincipal.Acercar1Click(Sender: TObject);
begin
//AboutBox.ShowModal
AboutBox:=tAboutBox.create(application);
try
AboutBox.show;
except
AboutBox.Free;
end;

end;

procedure Tfrmprincipal.FormShow(Sender: TObject);
begin
Sb.Panels[0].Text := ' Usuario Conectado :' + glnomusuario;
Sb.Panels[3].Text := 'Fecha  Actual ' + gldate;
Sb.Panels[1].Text := 'Proceso Abierto Actual'+ glproceso;
end;

procedure Tfrmprincipal.ModificarEstractoBancario1Click(Sender: TObject);
begin
 frmmodificar:=Tfrmmodificar.create(application);
   try
   frmmodificar.show;
   //finally
   except
      frmmodificar.Free;
   end;

end;

function Tfrmprincipal.GetAppInfo(De: string): string;
  {Se pueden pedir los siguientes datos:
     CompanyName
     FileDescription
     FileVersion
     InternalName
     LegalCopyright
     OriginalFilename
     ProductName
     ProductVersion
  }

  type
    PaLeerBuffer = array [0..MAX_PATH] of char;

  var
   Size, Size2 : DWord;
   Pt, Pt2     : Pointer;
   Idioma      : string;

   begin
     Result:='';
     Size := GetFileVersionInfoSize(PChar (Application.Exename), Size2);
     if Size > 0 then
     begin
       GetMem (Pt, Size);
       GetFileVersionInfo (PChar (ParamStr (0)), 0, Size, Pt);
       {Obtenemos la cadena de translacion, requerida para obtener el resto
       de datos del Versioninfo}
       VerQueryValue( Pt, '\VarFileInfo\Translation',Pt2, Size2);
       Idioma:=IntToHex( DWord(Pt2^) ,8 );
       {Le damos la vuelta (Es windows, que quieres...}
       Idioma:=Copy(Idioma,5,4)+Copy(Idioma,1,4);

       {Pedimos la info requerida...}
       VerQueryValue( Pt,
                      Pchar('\StringFileInfo\'+
                      Idioma+'\'+
                      De),
                      Pt2, Size2);
       if Size2 > 0 then
       begin
         {Y la devolvemos}
         Result:=Copy(PaLeerBuffer(Pt2^),1,Size2);
       end else
         raise Exception.Create( 'No existe esa informacion en este ejecutable'+
                                 #13+
                                 'There are not this info in this executable');
       FreeMem (Pt);
     end else
       raise exception.Create ( 'Lo siento, no hay VersionInfo disponible '+
                                'en este ejecutable.'+#13+
                                'Sorry there are not VersionInfo available'+
                                'in this executable.');
   end;

procedure Tfrmprincipal.FormActivate(Sender: TObject);
begin
 frmprincipal.Caption:= GetAppInfo('FileDescription') +' VERSION ' + GetAppInfo('FileVersion');

end;

function Tfrmprincipal.Edad(FechaNacimiento: string): integer;
   var
      iTemp,iTemp2,Nada:word;
      Fecha:TDate;
   begin
     Fecha:=StrToDate(FechaNacimiento);
     DecodeDate(strtodate(gldate),itemp,Nada,Nada);
     DecodeDate(Fecha,itemp2,Nada,Nada);
      if FormatDateTime('mmdd',strtodate(glDate)) <
         FormatDateTime('mmdd',Fecha) then Result:=iTemp-iTemp2-1
                                      else Result:=iTemp-iTemp2;

end;



function Tfrmprincipal.DiasMes(fecha: TDateTime): integer;
var
   PrimerDiaMes, PrimerDiaMesSiguiente : TDateTime;
   anyo, mes, dia: Word;
begin
   DecodeDate( fecha, anyo, mes, dia );
   primerDiaMes := EncodeDate(anyo, mes, 1);
   primerDiaMesSiguiente := IncMonth(primerDiaMes, 1);
   result := Round(primerDiaMesSiguiente - primerDiaMes);

end;

procedure Tfrmprincipal.ConciliarManualmete1Click(Sender: TObject);
begin
frmmodificarestrato:=Tfrmmodificarestrato.create(application);
   try
   frmmodificarestrato.show;
   //finally
   except
      frmmodificarestrato.Free;
   end;


end;

procedure Tfrmprincipal.MedioMagnetico1Click(Sender: TObject);
begin
frmarchivos:=Tfrmarchivos.create(application);
   try
   frmarchivos.show;
   //finally
   except
      frmarchivos.Free;
   end;

end;

function Tfrmprincipal.espacios(tamano: integer; cadena: string): string;
var i : integer;
    cadena2 : string;
begin
  cadena2 := '';
  for i:=1 to tamano-length(cadena) do
      cadena2 := '0'+cadena2;
  espacios := cadena2 + cadena;

end;

procedure Tfrmprincipal.IngresoBancos1Click(Sender: TObject);
begin
frmbancos:=Tfrmbancos.create(application);
   try
   frmbancos.show;
   //finally
   except
      frmbancos.Free;
   end;
end;

procedure Tfrmprincipal.Manual1Click(Sender: TObject);
begin
 frmdigitacionextractos:=Tfrmdigitacionextractos.create(application);
   try
   frmdigitacionextractos.show;
   //finally
   except
      frmdigitacionextractos.Free;
   end;
end;

procedure Tfrmprincipal.FormatoExtracto1Click(Sender: TObject);
begin
 frmformatos:=Tfrmformatos.create(application);
   try
   frmformatos.show;
   //finally
   except
      frmformatos.Free;
   end;

end;

procedure Tfrmprincipal.Sucursales1Click(Sender: TObject);
begin
 frmsucursales:=Tfrmsucursales.create(application);
   try
   frmsucursales.show;
   //finally
   except
      frmsucursales.Free;
   end;


end;

end.


