unit Recaudo3;

interface

uses
Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, WinInet, ExtCtrls,HTTPApp, DB, ADODB, Menus,rasapi,qprinters,DateUtils;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    ListBox1: TListBox;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Panel5: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Recaudo1;

{$R *.dfm}

function iespacio(cadena:string;cantidad:integer):string;
var i:integer;
begin
  for i:=1 to cantidad-length(cadena) do
    insert(' ',cadena,1);
  iespacio:=cadena;
end;

function OpenConnection( PhoneNumber: String; UserName: String; Password: String; EntryName: String; var rasConn:
HRASConn ): DWORD;
var
   lpRasDialParams : PRASDIALPARAMS;
begin
   GetMem( lpRasDialParams, SizeOf( lpRasDialParams^ ) );
   lpRasDialParams^.dwSize := SizeOf( lpRasDialParams^ );
   StrCopy( @(lpRasDialParams^.szEntryName ), PCHAR( EntryName ) );
   StrCopy( @(lpRasDialParams^.szUserName) , PCHAR( UserName ) );
   StrCopy( @(lpRasDialParams^.szPassword ), PCHAR( Password ) );
   StrCopy( @(lpRasDialParams^.szPhoneNumber ), PCHAR( PhoneNumber ) );
   StrCopy( @(lpRasDialParams^.szCallbackNumber ), PCHAR( '' ) );
   StrCopy( @(lpRasDialParams^.szDomain ), PCHAR( '' ) );

   Result := RasDial( nil { lpRasDialExtensions : PRASDIALEXTENSIONS ; pointer to function extensions data },
                      nil { lpszPhonebook: PChar;        pointer to full path and filename of phonebook file },
                      lpRasDialParams { pointer to calling parameters data},
                      0 { dwNotifierType : DWORD;       specifies type of RasDial event handler},
                      0 { lpvNotifier: DWORD;        specifies a handler for RasDial events},
                      rasConn { pointer to variable to receive connection handle}
                    );
   FreeMem( lpRasDialParams );
end;

function CloseConnection( rasConn: HRASConn ): Boolean;
begin
   if rasConn <> 0
   then Result := ( RasHangUp(rasConn) = 0 )
   else Result := True;
end;

procedure colgar();
 var
     bufsize: Cardinal;        //This part needed changing to Cardinal
     numEntries: Cardinal;     //but was set to LongInt.

     entries: Array[1..10] of TRasConn;
     stat: TRasConnStatus;
     hRas: HRasConn;
     conexion:pRasConn;

begin
   entries[1].dwSize := SizeOf(TRasConn);
   bufsize := SizeOf(TRasConn) * 10;
   FillChar(stat, Sizeof(TRasConnStatus), 0);
   stat.dwSize := Sizeof(TRasConnStatus);
   if RasEnumConnections(@entries[1], bufsize, numEntries) = 0 then
   begin
       if numEntries > 0 then
       with entries[1] do
       begin
         conexion:=Pointer(rasconn);
         hRas := Longint(conexion);
         if RasHangUp(hRas) <> 0 then ShowMessage('Fallo al ejecutar RasHangUp');
       end;
   end;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  edit1.text:=datetostr(date);
end;

procedure TForm3.Button1Click(Sender: TObject);
var total:real;
    dwTiposConexion: DWORD;

    xx3,xx4:string;

    consant:integer;
    rasconn,rasconn2:hrasconn;
begin
  if NOT (InternetGetConnectedState(@dwTiposConexion, 0)) then
  begin
      rasconn:= 0;
      rasconn2:= 0;
      xx3:=inttostr(openconnection('019479472347','saludvida-freddybueno','freddy01','Emtelco',rasconn));
      xx4:=inttostr(openconnection('200.14.235.38','gersistemas','fbg4070','VPN Emtelco',rasconn2));
  end;
  if NOT (InternetGetConnectedState(@dwTiposConexion, 0)) then
  Begin
    showmessage('ERROR: El acceso a la Red no fue Posible....');
  end
  Else Begin
{    form1.adoquery2.Close;
    form1.adoquery2.sql.Clear;
    form1.AdoQuery2.SQL.Add('SELECT  * FROM Ingreso_Dineros_Recaudo WHERE Fecha = convert(datetime,' + chr(39) + edit1.Text + chr(39)+',103)');
    form1.adoquery2.Open;

    listbox1.Items.Clear;
    listbox1.Items.add('INFORME DIARIO DE RECAUDO DEL DIA: '+ datetostr(form1.adoquery2.FieldValues['Fecha']));
    listbox1.Items.add('');
    listbox1.Items.add('Consecutivo Fecha      Tipo_Transaccion  Valor     No_Planilla  Nombre_Aportante                                        Periodo');
    listbox1.Items.add('----------- ---------- ----------------  --------- ------------ ------------------------------------------------------- -------');

    form1.adoquery2.findfirst;
    Repeat
      listbox1.Items.add(iespacio(inttostr(form1.adoquery2.FieldValues['Consecutivo']),11)+' '+datetostr(form1.adoquery2.FieldValues['Fecha'])+' '+iespacio(form1.adoquery2.FieldValues['Tipo_Transaccion'],16)+' '+iespacio(inttostr(form1.adoquery2.FieldValues['Valor']),10)+' '+iespacio(form1.adoquery2.FieldValues['No_Planilla'],10)+' '+iespacio(form1.adoquery2.FieldValues['Nombre_Aportante'],20)+' '+iespacio(form1.adoquery2.FieldValues['Periodo'],8));
      total:=total+form1.adoquery2.FieldValues['Valor'];
      if form1.ADOQuery2.RecordCount = form1.ADOQuery2.RecNo then break;
      form1.adoquery2.FindNext;
    until false;

    listbox1.Items.add('');
    listbox1.Items.add('TOTAL DE RECAUDO :'+formatcurr('###,###,###,###',strtocurr(floattostr(total))));
    form1.adoquery2.close;
    form3.refresh;
    colgar;}
  end;
end;

end.

