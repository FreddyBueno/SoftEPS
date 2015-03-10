unit Uprincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ComCtrls, ToolWin, StdActns, ActnList,
  ImgList, StdCtrls;

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
    MiximizarTodo1: TMenuItem;
    Image1: TImage;
    DatosBasicos1: TMenuItem;
    Eps1: TMenuItem;
    Ciudades1: TMenuItem;
    Departamentos1: TMenuItem;
    Zonas1: TMenuItem;
    Barrios1: TMenuItem;
    Estados1: TMenuItem;
    EstadosPlanillas1: TMenuItem;
    Mantenimiento1: TMenuItem;
    BorrarBasedeDatos1: TMenuItem;
    Usuarios2: TMenuItem;
    Compania1: TMenuItem;
    Oficinas1: TMenuItem;
    Oficinas2: TMenuItem;
    Compania2: TMenuItem;
    Sexos1: TMenuItem;
    Dignosticos1: TMenuItem;
    Documentos1: TMenuItem;
    Ocupaciones1: TMenuItem;
    Novedades1: TMenuItem;
    EstracosSocioeconomicos1: TMenuItem;
    Discapacidad1: TMenuItem;
    iposAportantes1: TMenuItem;
    ImageList1: TImageList;
    Afiliados1: TMenuItem;
    Autoliquidaciones1: TMenuItem;
    Empresas1: TMenuItem;
    ipoEmpresas1: TMenuItem;
    Parentesco1: TMenuItem;
    Enfemedades1: TMenuItem;
    AdministradorasdeRiesgosARP1: TMenuItem;
    EntidadesAdminstradoresdeSaludEPS1: TMenuItem;
    EstratosAfiliados1: TMenuItem;
    Profesiones1: TMenuItem;
    RangoAportantes1: TMenuItem;
    Asesores1: TMenuItem;
    EPS2: TMenuItem;
    Compensaciones1: TMenuItem;
    ConciliacionBancaria1: TMenuItem;
    Cargos2: TMenuItem;
    Autorizaciones1: TMenuItem;
    Action21: TMenuItem;
    HelpContents1: THelpContents;
    HelpTopicSearch1: THelpTopicSearch;
    HelpOnHelp1: THelpOnHelp;
    HelpContextAction1: THelpContextAction;
    WindowClose1: TWindowClose;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrange1: TWindowArrange;
    Action1: TAction;
    InstitucionesPrestadorasdeServicio1: TMenuItem;
    ablasBasicasCompensacion1: TMenuItem;
    ActividadesEconomicas1: TMenuItem;
    procedure ToolButton6Click(Sender: TObject);
    procedure ConfigurarImpresora1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Acercar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    // funcion  version de la  aplicacion
    function  GetAppInfo(De:string):string;
    procedure FormActivate(Sender: TObject);
    function Edad(FechaNacimiento: string): integer;
    function DiasMes(fecha: TDateTime): integer;
    procedure BorrarBasedeDatos1Click(Sender: TObject);
    procedure Departamentos1Click(Sender: TObject);
    procedure Eps1Click(Sender: TObject);
    procedure Zonas1Click(Sender: TObject);
    procedure Compania2Click(Sender: TObject);
    procedure Estados1Click(Sender: TObject);
    procedure Sexos1Click(Sender: TObject);
    procedure Oficinas1Click(Sender: TObject);
    procedure Documentos1Click(Sender: TObject);
    procedure Dignosticos1Click(Sender: TObject);
    procedure Ocupaciones1Click(Sender: TObject);
    procedure Novedades1Click(Sender: TObject);
    procedure EstracosSocioeconomicos1Click(Sender: TObject);
    procedure Discapacidad1Click(Sender: TObject);
    procedure EstadosPlanillas1Click(Sender: TObject);
    procedure iposAportantes1Click(Sender: TObject);
    procedure Ciudades1Click(Sender: TObject);
    procedure Parentesco1Click(Sender: TObject);
    procedure ipoEmpresas1Click(Sender: TObject);
    procedure AdministradorasdeRiesgosARP1Click(Sender: TObject);
    procedure EntidadesAdminstradoresdeSaludEPS1Click(Sender: TObject);
    procedure EstratosAfiliados1Click(Sender: TObject);
    procedure Profesiones1Click(Sender: TObject);
    procedure RangoAportantes1Click(Sender: TObject);
    procedure Asesores1Click(Sender: TObject);
    procedure Oficinas2Click(Sender: TObject);
    procedure Cargos2Click(Sender: TObject);
    procedure Usuarios2Click(Sender: TObject);
    procedure Action21Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure InstitucionesPrestadorasdeServicio1Click(Sender: TObject);
    procedure Barrios1Click(Sender: TObject);
    procedure ablasBasicasCompensacion1Click(Sender: TObject);
    procedure ActividadesEconomicas1Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
 frmprincipal: Tfrmprincipal;
implementation

uses Uacerca, dtmodulo, Uglobal, LoginFrm, Uborrar, uheredar, ucompania,
  Uoficinas, ucargos, Uusuarios, Uips, utablasbasicas;

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

procedure Tfrmprincipal.BorrarBasedeDatos1Click(Sender: TObject);
begin
frmborrado:=Tfrmborrado.create(application);
   try
   frmborrado.show;
   //finally
   except
      frmborrado.Free;
   end;

end;

procedure Tfrmprincipal.Departamentos1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
   Form1.Caption := 'Ingreso de Departamentos';
    Form1.Label47.Caption := ' Ingreso de Departamentos';
     DataModule1.DataSource1.DataSet := DataModule1.Query1;
   DataModule1.Query1.Close;
   DataModule1.Query1.Prepare;
   DataModule1.Query1.SQL.Clear;
   DataModule1.Query1.SQL.Add('SELECT * FROM DEPARTAMENTOS');
   DataModule1.Query1.RequestLive := true;
   DataModule1.Query1.Open;
   Form1.show;
   //finally
   except
      Form1.Free;
   end;
end;

procedure Tfrmprincipal.Eps1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
   Form1.Caption := 'Ingreso de Escolaridad';
   Form1.Label47.Caption := ' INGRESO DE ESCOLARIODAD';
   DataModule1.DataSource1.DataSet := DataModule1.Query1;
   DataModule1.Query1.Close;
   DataModule1.Query1.Prepare;
   DataModule1.Query1.SQL.Clear;
   DataModule1.Query1.SQL.Add('SELECT * FROM  ESCOLARIDAD');
   DataModule1.Query1.RequestLive := true;
   DataModule1.Query1.Open;
   Form1.show;
   //finally
   except
      Form1.Free;
   end;

end;

procedure Tfrmprincipal.Zonas1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
   Form1.Caption := 'Ingreso de Zonas';
   Form1.Label47.Caption := 'Ingreso de Zonas';
  DataModule1.DataSource1.DataSet := DataModule1.Query1;
   DataModule1.Query1.Close;
   DataModule1.Query1.Prepare;
   DataModule1.Query1.SQL.Clear;
   DataModule1.Query1.SQL.Add('SELECT * FROM ZONAS');
   DataModule1.Query1.RequestLive := true;
   DataModule1.Query1.Open;
   Form1.show;
   //finally
   except
      Form1.Free;
   end;


end;

procedure Tfrmprincipal.Compania2Click(Sender: TObject);
begin
frmcompania:=Tfrmcompania.create(application);
   try

   frmcompania.show;
   //finally
   except
      frmcompania.Free;
   end;


end;

procedure Tfrmprincipal.Estados1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
Form1.Caption := 'Ingreso de Estados';
Form1.Label47.Caption := 'Ingreso de Estados';
DataModule1.DataSource1.DataSet := DataModule1.Query1;
   DataModule1.Query1.Close;
   DataModule1.Query1.Prepare;
   DataModule1.Query1.SQL.Clear;
   DataModule1.Query1.SQL.Add('SELECT * FROM ESTADOS');
   DataModule1.Query1.RequestLive := true;
   DataModule1.Query1.Open;
   Form1.show;
   //finally
   except
      Form1.Free;
   end;
end;

procedure Tfrmprincipal.Sexos1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
    Form1.Caption := 'Ingreso de Sexos';
   Form1.Label47.Caption := 'Ingreso de Sexos';
   DataModule1.DataSource1.DataSet := DataModule1.Query1;
   DataModule1.Query1.Close;
   DataModule1.Query1.Prepare;
   DataModule1.Query1.SQL.Clear;
   DataModule1.Query1.SQL.Add('SELECT * FROM SEXOS');
   DataModule1.Query1.RequestLive := true;
   DataModule1.Query1.Open;
   Form1.show;
   //finally
   except
      Form1.Free;
   end;

end;

procedure Tfrmprincipal.Oficinas1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
   Form1.Caption := 'Ingreso de Compañia';
   Form1.Label47.Caption := 'INGRESO  DE COMPAÑIA';
   DataModule1.DataSource1.DataSet := DataModule1.Query1;
   DataModule1.Query1.Close;
   DataModule1.Query1.Prepare;
   DataModule1.Query1.SQL.Clear;
   DataModule1.Query1.SQL.Add('SELECT * FROM REGIONALES');
   DataModule1.Query1.RequestLive := true;
   DataModule1.Query1.Open;
   Form1.show;
   //finally
   except
      Form1.Free;
   end;


end;

procedure Tfrmprincipal.Documentos1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
   Form1.Caption := 'Ingreso de Documentos';
   Form1.Label47.Caption := 'INGRESO  DE DOCUMENTOS';
   DataModule1.DataSource1.DataSet := DataModule1.Query1;
   DataModule1.Query1.Close;
   DataModule1.Query1.Prepare;
   DataModule1.Query1.SQL.Clear;
   DataModule1.Query1.SQL.Add('SELECT * FROM TIPOS_DOCUMENTOS');
   DataModule1.Query1.RequestLive := true;
   DataModule1.Query1.Open;
   Form1.show;
   //finally
   except
      Form1.Free;
   end;



end;

procedure Tfrmprincipal.Dignosticos1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
   Form1.Caption := 'Ingreso de Diagnosticos';
   Form1.Label47.Caption := 'INGRESO  DE DIAGNOSTICOS';
   DataModule1.DataSource1.DataSet := DataModule1.Query1;
   DataModule1.Query1.Close;
   DataModule1.Query1.Prepare;
   DataModule1.Query1.SQL.Clear;
   DataModule1.Query1.SQL.Add('SELECT * FROM DIGNOSTICOS');
   DataModule1.Query1.RequestLive := true;
   DataModule1.Query1.Open;
   Form1.show;
   //finally
   except
      Form1.Free;
   end;


end;

procedure Tfrmprincipal.Ocupaciones1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
   Form1.Caption := 'Ingreso de Ocupaciones';
   Form1.Label47.Caption := 'INGRESO  DE OCUPACIONES';
   DataModule1.DataSource1.DataSet := DataModule1.Query1;
   DataModule1.Query1.Close;
   DataModule1.Query1.Prepare;
   DataModule1.Query1.SQL.Clear;
   DataModule1.Query1.SQL.Add('SELECT * FROM OCUPACIONES');
   DataModule1.Query1.RequestLive := true;
   DataModule1.Query1.Open;
   Form1.show;
   //finally
   except
      Form1.Free;
   end;
end;

procedure Tfrmprincipal.Novedades1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
   Form1.Caption := 'Ingreso de Novedades';
   Form1.Label47.Caption := 'INGRESO  DE NOVEDADES';
   DataModule1.DataSource1.DataSet := DataModule1.Query1;
   DataModule1.Query1.Close;
   DataModule1.Query1.Prepare;
   DataModule1.Query1.SQL.Clear;
   DataModule1.Query1.SQL.Add('SELECT * FROM NOVEDADES');
   DataModule1.Query1.RequestLive := true;
   DataModule1.Query1.Open;
   Form1.show;
   //finally
   except
      Form1.Free;
   end;
end;
procedure Tfrmprincipal.EstracosSocioeconomicos1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
   Form1.Caption := 'Ingreso de ESTRACTO SOCIOECONOMICO';
   Form1.Label47.Caption := 'INGRESO  DE ESTRATO ECONOMICAS';
   DataModule1.DataSource1.DataSet := DataModule1.Query1;
   DataModule1.Query1.Close;
   DataModule1.Query1.Prepare;
   DataModule1.Query1.SQL.Clear;
   DataModule1.Query1.SQL.Add('SELECT * FROM ESTRATOS');
   DataModule1.Query1.RequestLive := true;
   DataModule1.Query1.Open;
   Form1.show;
   //finally
   except
      Form1.Free;
   end;

end;

procedure Tfrmprincipal.Discapacidad1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
   Form1.Caption := 'Ingreso de Discapacidad';
   Form1.Label47.Caption := 'INGRESO  DISCAPACIDADES';
   DataModule1.DataSource1.DataSet := DataModule1.Query1;
   DataModule1.Query1.Close;
   DataModule1.Query1.Prepare;
   DataModule1.Query1.SQL.Clear;
   DataModule1.Query1.SQL.Add('SELECT * FROM DISCAPACIDADES');
   DataModule1.Query1.RequestLive := true;
   DataModule1.Query1.Open;
   Form1.show;
   //finally
   except
      Form1.Free;
   end;


end;

procedure Tfrmprincipal.EstadosPlanillas1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
   Form1.Caption := 'Ingreso estado de planillas';
   Form1.Label47.Caption := 'INGRESO  ESTADO DE PLANILLAS';
   DataModule1.DataSource1.DataSet := DataModule1.Query1;
   DataModule1.Query1.Close;
   DataModule1.Query1.Prepare;
   DataModule1.Query1.SQL.Clear;
   DataModule1.Query1.SQL.Add('SELECT * FROM ESTADO_PLANILLAS');
   DataModule1.Query1.RequestLive := true;
   DataModule1.Query1.Open;
   Form1.show;
   //finally
   except
      Form1.Free;
   end;

end;

procedure Tfrmprincipal.iposAportantes1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
   Form1.Caption := 'Ingreso de tipos de  aportantes';
   Form1.Label47.Caption := 'INGRESO TIPOS DE APORTANTES  ';
   DataModule1.DataSource1.DataSet := DataModule1.Query1;
   DataModule1.Query1.Close;
   DataModule1.Query1.Prepare;
   DataModule1.Query1.SQL.Clear;
   DataModule1.Query1.SQL.Add('SELECT * FROM TIPOS_APORTANTES');
   DataModule1.Query1.RequestLive := true;
   DataModule1.Query1.Open;
   Form1.show;
   //finally
   except
      Form1.Free;
   end;


end;

procedure Tfrmprincipal.Ciudades1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
   Form1.Caption := 'Ingreso de Ciudades';
   Form1.Label47.Caption := 'Ingreso de Ciudades ';
   DataModule1.DataSource1.DataSet := DataModule1.qryciudades;
   DataModule1.qryciudades.Close;
   DataModule1.qryciudades.Prepare;
   DataModule1.qryciudades.RequestLive := true;
   DataModule1.qryciudades.Open;

   Form1.show;
   //finally
   except
      Form1.Free;
   end;


end;

procedure Tfrmprincipal.Parentesco1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
   Form1.Caption := 'Ingreso de tipos de  Parentescos';
   Form1.Label47.Caption := 'INGRESO TIPOS DE PARENTESCOS  ';
   DataModule1.DataSource1.DataSet := DataModule1.Query1;
   DataModule1.Query1.Close;
   DataModule1.Query1.Prepare;
   DataModule1.Query1.SQL.Clear;
   DataModule1.Query1.SQL.Add('SELECT * FROM PARENTESCOS');
   DataModule1.Query1.RequestLive := true;
   DataModule1.Query1.Open;
   Form1.show;
   //finally
   except
      Form1.Free;
   end;

end;

procedure Tfrmprincipal.ipoEmpresas1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
   Form1.Caption := 'Ingreso de tipos de  Parentescos';
   Form1.Label47.Caption := 'INGRESO TIPOS DE PARENTESCOS  ';
   DataModule1.DataSource1.DataSet := DataModule1.Query1;
   DataModule1.Query1.Close;
   DataModule1.Query1.Prepare;
   DataModule1.Query1.SQL.Clear;
   DataModule1.Query1.SQL.Add('SELECT * FROM PARENTESCOS');
   DataModule1.Query1.RequestLive := true;
   DataModule1.Query1.Open;
   Form1.show;
   //finally
   except
      Form1.Free;
   end;

end;

procedure Tfrmprincipal.AdministradorasdeRiesgosARP1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
   Form1.Caption := 'Ingreso de  Administradoras de Riesgos Profesionales';
   Form1.Label47.Caption := 'INGRESO TIPOS DE ARPS  ';
   DataModule1.DataSource1.DataSet := DataModule1.Query1;
   DataModule1.Query1.Close;
   DataModule1.Query1.Prepare;
   DataModule1.Query1.SQL.Clear;
   DataModule1.Query1.SQL.Add('SELECT * FROM  ARPS');
   DataModule1.Query1.RequestLive := true;
   DataModule1.Query1.Open;
   Form1.show;
   //finally
   except
      Form1.Free;
   end;


end;

procedure Tfrmprincipal.EntidadesAdminstradoresdeSaludEPS1Click(
  Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
   Form1.Caption := 'Ingreso de  Entidades Promotoras de Salud';
   Form1.Label47.Caption := 'INGRESO TIPOS DE EPS  ';
   DataModule1.DataSource1.DataSet := DataModule1.Query1;
   DataModule1.Query1.Close;
   DataModule1.Query1.Prepare;
   DataModule1.Query1.SQL.Clear;
   DataModule1.Query1.SQL.Add('SELECT * FROM  EPS');
   DataModule1.Query1.RequestLive := true;
   DataModule1.Query1.Open;
   Form1.show;
   //finally
   except
      Form1.Free;
   end;


end;

procedure Tfrmprincipal.EstratosAfiliados1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
   Form1.Caption := 'Ingreso de Estratos de Afiliados';
   Form1.Label47.Caption := 'INGRESO DE ESTRATOS ';
   DataModule1.DataSource1.DataSet := DataModule1.Query1;
   DataModule1.Query1.Close;
   DataModule1.Query1.Prepare;
   DataModule1.Query1.SQL.Clear;
   DataModule1.Query1.SQL.Add('SELECT * FROM ESTRATOS_AFILIADOS');
   DataModule1.Query1.RequestLive := true;
   DataModule1.Query1.Open;
   Form1.show;
   //finally
   except
      Form1.Free;
   end;



end;

procedure Tfrmprincipal.Profesiones1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
   Form1.Caption := 'Ingreso de Profesiones';
   Form1.Label47.Caption := 'INGRESO DE PROFESIONES ';
   DataModule1.DataSource1.DataSet := DataModule1.Query1;
   DataModule1.Query1.Close;
   DataModule1.Query1.Prepare;
   DataModule1.Query1.SQL.Clear;
   DataModule1.Query1.SQL.Add('SELECT * FROM PROFESIONES');
   DataModule1.Query1.RequestLive := true;
   DataModule1.Query1.Open;
   Form1.show;
   //finally
   except
      Form1.Free;
   end;



end;

procedure Tfrmprincipal.RangoAportantes1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
   Form1.Caption := 'Ingreso de Ciudades';
   Form1.Label47.Caption := 'Ingreso de Ciudades ';
   DataModule1.DataSource1.DataSet := DataModule1.qryrangoaportantes;
   DataModule1.qryrangoaportantes.Close;
   DataModule1.qryrangoaportantes.Prepare;
   DataModule1.qryrangoaportantes.RequestLive := true;
   DataModule1.qryrangoaportantes.Open;

   Form1.show;
   //finally
   except
      Form1.Free;
   end;


end;

procedure Tfrmprincipal.Asesores1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
   Form1.Caption := 'Ingreso de Asesores Comerciales';
   Form1.Label47.Caption := 'INGRESO DE ASESORES ';
   DataModule1.DataSource1.DataSet := DataModule1.Query1;
   DataModule1.Query1.Close;
   DataModule1.Query1.Prepare;
   DataModule1.Query1.SQL.Clear;
   DataModule1.Query1.SQL.Add('SELECT * FROM ACESORES');
   DataModule1.Query1.RequestLive := true;
   DataModule1.Query1.Open;
   Form1.show;
   //finally
   except
      Form1.Free;
   end;
 END;

procedure Tfrmprincipal.Oficinas2Click(Sender: TObject);
begin
frmoficinas:=Tfrmoficinas.create(application);
   try
   frmoficinas.DBLookupComboBox4.SetFocus;
   frmoficinas.show;
   //finally
   except
      frmoficinas.Free;
   end;

end;

procedure Tfrmprincipal.Cargos2Click(Sender: TObject);
begin
frmcargos:=Tfrmcargos.create(application);
   try

   frmcargos.show;
   //finally
   except
      frmcargos.Free;
   end;

end;

procedure Tfrmprincipal.Usuarios2Click(Sender: TObject);
begin
frmusuarios:=Tfrmusuarios.create(application);
   try

   frmusuarios.show;
   //finally
   except
      frmusuarios.Free;
   end;



end;

procedure Tfrmprincipal.Action21Click(Sender: TObject);
begin
frmusuarios:=Tfrmusuarios.create(application);
   try

   frmusuarios.show;
   //finally
   except
      frmusuarios.Free;
   end;


end;

procedure Tfrmprincipal.Close1Click(Sender: TObject);
begin
close;
end;

procedure Tfrmprincipal.InstitucionesPrestadorasdeServicio1Click(
  Sender: TObject);
begin
        frmips:=Tfrmips.create(application);
   try
       frmips.show;
   //finally
   except
      frmips.Free;
   end;
end;

procedure Tfrmprincipal.Barrios1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
   Form1.Caption := 'Ingreso de Barrios';
   Form1.Label47.Caption := 'INGRESO DE BARRIOS ';
   DataModule1.DataSource1.DataSet := DataModule1.Query1;
   DataModule1.Query1.Close;
   DataModule1.Query1.Prepare;
   DataModule1.Query1.SQL.Clear;
   DataModule1.Query1.SQL.Add('SELECT * FROM BARRIOS ORDER BY COD_DEPARTAMENTO,COD_CIUDAD,NOM_BARRIO;');
   DataModule1.Query1.RequestLive := true;
   DataModule1.Query1.Open;
   Form1.show;
   //finally
   except
      Form1.Free;
   end;
end;

procedure Tfrmprincipal.ablasBasicasCompensacion1Click(Sender: TObject);
begin
frmtablasbasicas:=Tfrmtablasbasicas.create(application);
   try
   frmtablasbasicas.show;
   //finally
   except
      frmtablasbasicas.Free;
   end;

end;

procedure Tfrmprincipal.ActividadesEconomicas1Click(Sender: TObject);
begin
Form1:=TForm1.create(application);
   try
   Form1.Caption := 'Ingreso de Actividades Economicas';
   Form1.Label47.Caption := 'INGRESO DE AACTIVIDADES ECONOMICAS ';
   DataModule1.DataSource1.DataSet := DataModule1.Query1;
   DataModule1.Query1.Close;
   DataModule1.Query1.Prepare;
   DataModule1.Query1.SQL.Clear;
   DataModule1.Query1.SQL.Add('SELECT * FROM ACTIVIDADES_ECONOMICAS ');
   DataModule1.Query1.RequestLive := true;
   DataModule1.Query1.Open;
   Form1.show;
   //finally
   except
      Form1.Free;
   end;
end;

end.


