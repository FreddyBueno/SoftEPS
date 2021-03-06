unit Uarchivos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ExtCtrls, Grids, StdCtrls, ComCtrls, DB, DBTables,
  Menus,Math, Buttons,Variants, ADODB;

type
  Tfrmarchivos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    sgdetalle: TStringGrid;
    opabrir: TOpenDialog;
    Label4: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Panel3: TPanel;
    pbarchivo: TProgressBar;
    btngrabar: TBitBtn;
    Label5: TLabel;
    dblbanco: TDBLookupComboBox;
    Label1: TLabel;
    edtnombrearchivo: TEdit;
    GroupBox1: TGroupBox;
    Registros: TLabel;
    edttotal: TEdit;
    Label2: TLabel;
    edtconcolidados: TEdit;
    Label3: TLabel;
    edtsinconsol: TEdit;
    Query1: TADOQuery;
    Query1CODCAMPO: TStringField;
    Query1NOMCAMPO: TStringField;
    Query1FORMATO: TStringField;
    GBvalidacion: TGroupBox;
    Pbvalidar: TProgressBar;
    Label8: TLabel;
    cbtipoconsignacion: TComboBox;
    Label6: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure grabar;
    procedure btngrabarClick(Sender: TObject);
    procedure limpiar;
    procedure Cerrar1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    function nombrecampo(banco: string):integer;
    function estadocampo (numero : integer) : Boolean;
    function delimitador (banco,CODIGO : string) : string;
    procedure dblbancoExit(Sender: TObject);
    procedure cargararchivo(nombre: string);
    procedure cargararchivoFIJO(nombre: string);
    function  validarbanco(banco: string):Boolean;
    procedure  validarsucursales(banco: string);
    procedure  validarempresa(banco: string);
    procedure  validarplanilla(banco: string);
    procedure  validarfechas(banco: string);
    procedure  validarvalores(banco: string);
    procedure  validartipos(banco: string);
    procedure  indetificarempresa;




      private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmarchivos: Tfrmarchivos;
  tipodelimitador : string;
  numsgdbanco : integer;
  numsgdsucursal : integer;
  numsgddocumento : integer;
  numsgdplanilla : integer;
  numsgdconsignacion : integer;
  numsgdfecha : integer;
  numsgdvalor : integer;
  numsgdtipo : integer;
  inicio : integer;
  longitud : Integer;
  A, B: array of DOUBLE;

  implementation

uses dtmodulo, Uglobal, Uprincipal;

{$R *.dfm}

procedure Tfrmarchivos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure Tfrmarchivos.FormCreate(Sender: TObject);
begin
with sgdetalle do
  begin
    sgdetalle.ColCount := 0;
    end;
    DataModule1.qrybancos.Open;
        try
        if opabrir.Execute then
        begin
        edtnombrearchivo.text := opabrir.filename;

        end;
        except
        raise exception.Create('Inserte  el Disco  en la  unidad A:\');
      end;

     end;

procedure Tfrmarchivos.grabar;
var i,j : integer;
    conciliados,sinconciliar : real;
    F:System.text;
begin
edtconcolidados.Text := '0';
edtsinconsol.Text := '0';
conciliados := 0;
sinconciliar := 0;
DataModule1.dtbdatamec.BeginTrans;
//*******************************
System.assign(F, 'C:\Softeps\Logconciliacion.TXT');
Rewrite(F); //create new file or over-write one if already exists
WriteLn(F,'Codigo_Banco',';','Sucursal',';','NIT',';','Planilla',';','Fecha',';','Val_Consignacion',';','Tip_movimiento');
//*******************************
try
 for i := 1 to sgdetalle.RowCount -1 do
 begin
   if trim(sgdetalle.Cells[1,i]) <> '' then
   begin
     DataModule1.qryestrato.close;
     DataModule1.qryestrato.sql.clear;
     {DataModule1.qryestrato.sql.Text:='SELECT * FROM EST_BANCARIO_AUTO '+
                                      'WHERE COD_BANCO = :"COD_BANCO" AND COD_SUCURSAL= :"COD_SUCURSAL" AND NUM_DOCUMENTO= :"NUM_DOCUMENTO"' +
                                      ' AND NUM_PLANILLA = :"NUM_PLANILLA" AND FEC_RECAUDO = :"FEC_RECAUDO" AND VAL_CONSIGNACION = :"VAL_CONSIGNACION"' +
                                      ' AND TIP_MOVIMIENTO = :"TIP_MOVIMIENTO"';
     }
     Datamodule1.qryestrato.SQL.Text:='SELECT * FROM EST_BANCARIO_AUTO WHERE NUM_PLANILLA= :"NUM_PLANILLA"';
     {if numsgdbanco <> 99 then
     begin
       DataModule1.qryestrato.Parameters[0].VALUE := trim(sgdetalle.Cells[numsgdbanco,i]);
     end
     else
     begin
       DataModule1.qryestrato.Parameters[0].VALUE := dblbanco.KeyValue;
     end;
     if numsgdsucursal <> 99 then
     begin
       DataModule1.qryestrato.Parameters[1].VALUE := trim(sgdetalle.Cells[numsgdsucursal,i]);
     end
     else
     begin
       DataModule1.qryestrato.Parameters[1].VALUE := '000';
     end;
     DataModule1.qryestrato.Parameters[2].VALUE := trim(sgdetalle.Cells[numsgddocumento,i]);
     DataModule1.qryestrato.Parameters[3].VALUE := trim(sgdetalle.Cells[numsgdplanilla,i]);
     }
     DataModule1.qryestrato.Parameters[0].VALUE := trim(sgdetalle.Cells[numsgdplanilla,i]);
     {
     DataModule1.qryestrato.Parameters[4].Value := strtodate(sgdetalle.Cells[numsgdfecha,i]);
     DataModule1.qryestrato.Parameters[5].Value := strtofloat(sgdetalle.Cells[numsgdconsignacion,i]);
     }
     //if numsgdtipo <> 99 then
     //begin
         //*******DataModule1.qryestrato.Parameters[6].VALUE := TRIM(CBTIPOCONSIGNACION.Text);//'S'
       //DataModule1.qryestrato.Parameters[6].VALUE := TRIM(sgdetalle.Cells[numsgdtipo,i]);
     //end
     //else
     //begin
     //  DataModule1.qryestrato.Parameters[6].VALUE := 'SINEP';
     //end;
     DataModule1.qryestrato.Open;
     if DataModule1.qryestrato.RecordCount = 0 then
     begin
       DataModule1.qryestrato.Insert;
       if numsgdbanco <> 99 then
       begin
         DataModule1.qryestratoCOD_BANCO.Value := trim(sgdetalle.Cells[numsgdbanco,i]);
       end
       else
       begin
         DataModule1.qryestratoCOD_BANCO.Value := dblbanco.KeyValue;
       end;
       if numsgdsucursal <> 99 then
       begin
         DataModule1.qryestratoCOD_SUCURSAL.Value := trim(sgdetalle.Cells[numsgdsucursal,i]);
       end
       else
       begin
         DataModule1.qryestratoCOD_SUCURSAL.Value := '000';
       end;
       DataModule1.qryestratoNUM_DOCUMENTO.Value := trim(sgdetalle.Cells[numsgddocumento,i]);
       DataModule1.qryestratoNUM_PLANILLA.Value := trim(sgdetalle.Cells[numsgdplanilla,i]);
       DataModule1.qryestratoFEC_RECAUDO.Value := strtodate(sgdetalle.Cells[numsgdfecha,i]);
       DataModule1.qryestratoVAL_CONSIGNACION.Value := strtofloat(sgdetalle.Cells[numsgdconsignacion,i]);
       //if numsgdtipo <> 99 then
       //begin
          DataModule1.qryestratoTIP_MOVIMIENTO.Value := TRIM(CBTIPOCONSIGNACION.Text);
         //DataModule1.qryestratoTIP_MOVIMIENTO.Value := TRIM(sgdetalle.Cells[numsgdtipo,i]);
       //end
       //else
       //begin
         //DataModule1.qryestratoTIP_MOVIMIENTO.Value := 'SINEP';
       //end;
       DataModule1.qryestratoEST_CONCILIACION.Value := 'N';
       DataModule1.qryestratoUSUARIO.Value := GLNUMERO;

       DataModule1.qryautoliquidacion.Close;
       DataModule1.qryautoliquidacion.SQL.Clear;
       DataModule1.qryautoliquidacion.sql.Add('SELECT * FROM AUTOLIQUIDACION  WHERE  NUM_PLANILLA  = :"PLANILLA" AND ');
       DataModule1.qryautoliquidacion.sql.Add('EMP_NUMERO_DOC = :"NIT" AND FEC_PAGO = :"FECHA" AND ');
       DataModule1.qryautoliquidacion.sql.Add('COD_BANCO =:"BANCO" AND VAL_EFECTIVO+VAL_CHEQUE = :"VALOR" AND');
       DataModule1.qryautoliquidacion.sql.Add('((CRU_CONCILIACION = :"ESTADO") OR (CRU_CONCILIACION IS NULL)) ');
       DataModule1.qryautoliquidacion.Parameters[0].VALUE := trim(sgdetalle.Cells[numsgdplanilla,i]);
       DataModule1.qryautoliquidacion.Parameters[1].VALUE := trim(sgdetalle.Cells[numsgddocumento,i]);
       DataModule1.qryautoliquidacion.Parameters[2].Value := strtodate(sgdetalle.Cells[numsgdfecha,i]);
       DataModule1.qryautoliquidacion.Parameters[3].VALUE := trim(sgdetalle.Cells[numsgdbanco,i]);
       DataModule1.qryautoliquidacion.Parameters[4].Value := strtofloat(sgdetalle.Cells[numsgdvalor,i]);
       DataModule1.qryautoliquidacion.Parameters[5].VALUE := 'N';
       DataModule1.qryautoliquidacion.Open;
       if DataModule1.qryautoliquidacion.RecordCount =1 then
       begin
         DataModule1.qryautoliquidacion.first;
         DataModule1.qryautoliquidacion.Edit;
         DataModule1.qryautoliquidacionCRU_CONCILIACION.Value := 'S';
         DataModule1.qryautoliquidacion.Post;
         DataModule1.qryautoliquidacion.close;
         DataModule1.qryestratoEST_CONCILIACION.Value := 'S';
         DataModule1.qryestratoFEC_PLANILLA_CON.Value := strtodate(GLDATE);
         conciliados := conciliados + 1;
         edtconcolidados.Text := floattostr(conciliados);
         frmarchivos.Refresh;
       end
       else
       begin
         sinconciliar := sinconciliar + 1;
         edtsinconsol.Text := floattostr(sinconciliar);
         frmarchivos.Refresh;
       end;

       DataModule1.qryestrato.Post;

     end
     else //crear archivo Log
     begin
        WriteLn(F,DataModule1.qryestratoCOD_BANCO.Value,';',DataModule1.qryestratoCOD_SUCURSAL.Value,';',DataModule1.qryestratoNUM_DOCUMENTO.Value,';',DataModule1.qryestratoNUM_PLANILLA.Value,';',sgdetalle.Cells[numsgdfecha,i],';',sgdetalle.Cells[numsgdconsignacion,i],';',DataModule1.qryestratoTIP_MOVIMIENTO.Value);
     end
   end;
   pbarchivo.Min := 0;
   pbarchivo.Max := sgdetalle.RowCount -1 ;
   pbarchivo.Position := i;
 end;
 DataModule1.dtbdatamec.CommitTrans;
 except
   DataModule1.dtbdatamec.RollbackTrans;
   showMessage('No se puede  grabar el registro  :' + chr(13) + ' Numero Documento '+ trim(sgdetalle.Cells[numsgddocumento,i]) + chr(13) + ' Planilla ' + trim(sgdetalle.Cells[numsgdplanilla,i]) + chr(13) + ' Fecha Pago '+ trim(sgdetalle.Cells[numsgdfecha,i]) + chr(13) + ' Valor  '+ trim(sgdetalle.Cells[numsgdvalor,i])+ chr(13) + ' Tipo Movimiento  '+ trim(sgdetalle.Cells[numsgdtipo,i]));
   System.Close(F);
   raise;
 end;
 if  (edtconcolidados.Text = '0') and (edtsinconsol.Text = '0') then
 begin
   ShowMessage('El movimiento bancario  no se  cargo  es posible  que  ya  exista  el movimiento  en la  base de datos' + #13 + 'Examine el archivo LogConciliacion en C:/SoftEps');
   limpiar;
 end
 else
 begin
   ShowMessage('El extracto se cargo satisfactoriamente');
   limpiar;
 end;
 System.Close(F); //free resources
end;


procedure Tfrmarchivos.btngrabarClick(Sender: TObject);
begin
if  sgdetalle.Cells[0,1] <>'' then
 begin
  pbarchivo.Min := 0;
  pbarchivo.Max := 100;
  pbarchivo.Position := 0;
  grabar;
  end
  else
  ShowMessage('No hay Ningun Archivo Cargado');
end;

procedure Tfrmarchivos.limpiar;
VAR I,Y : INTEGER;
begin

         edtnombrearchivo.text := '';
         edtconcolidados.text := '';
         edtsinconsol.text := '';
         edttotal.text := '';
         pbarchivo.Min := 0;
         pbarchivo.Max := 100;
         pbarchivo.Position := 0;
          tipodelimitador := '';
          numsgdbanco := 99;
          numsgdsucursal := 99;
          numsgddocumento := 99;
          numsgdplanilla := 99;
          numsgdfecha := 99;
          numsgdvalor := 99;
          numsgdtipo := 99;
          dblbanco.KeyValue := '';
           FOR I := 0 TO SGDETALLE.ROWCOUNT DO
               BEGIN
            FOR y := 0 TO SGDETALLE.ColCount DO
            BEGIN
             SGDETALLE.CELLS[y,I]:='';
            end;
     end;
   sgdetalle.RowCount := 2;
   sgdetalle.colCount := 0;
end;

procedure Tfrmarchivos.Cerrar1Click(Sender: TObject);
begin
frmarchivos.close
end;

procedure Tfrmarchivos.FormActivate(Sender: TObject);
begin
WindowState := wsNormal;
top := 0;
Left := 0;

DataModule1.qrybancos.Open;
end;

function Tfrmarchivos.nombrecampo(banco: string):integer;
var x,y : integer;
begin
  nombrecampo := 0;
  DATAMODULE1.qryformatos.CLOSE;
  DATAMODULE1.qryformatos.SQL.Clear;
  DATAMODULE1.qryformatos.SQL.ADD('SELECT * FROM FORMATOS_BANCOS_CONTRV WHERE COD_BANCO = :"BANCO" ORDER BY NUM_CAMPO');
  DATAMODULE1.qryformatos.Parameters[0].VALUE := TRIM(dblbanco.KEYVALUE);
  DATAMODULE1.qryformatos.Open;
         IF DATAMODULE1.qryformatos.RecordCount > 0 THEN
         BEGIN
         nombrecampo := DATAMODULE1.qryformatos.RecordCount;
         sgdetalle.ColCount := DATAMODULE1.qryformatos.RecordCount;

          for X:= 1 to DATAMODULE1.qryformatos.RecordCount do
          begin
              y :=  strtoint(floattostr(DATAMODULE1.qryformatosNUM_CAMPO.value));
              Query1.CLOSE;
              Query1.SQL.Clear;
              Query1.SQL.ADD('SELECT * FROM DET_ESTRUCTURA_CAMPOS WHERE CODCAMPO = :"NUMERO"');
              Query1.Parameters[0].VALUE := DATAMODULE1.qryformatosCOD_CAMPO.value;
              Query1.Open;
              IF Query1.RecordCount = 1 THEN
               BEGIN
                sgdetalle.Cells[y-1,0]:= Query1NOMCAMPO.Value;
//                A[X] := DATAMODULE1.qryformatosINI_CAMPO.value;
//                b[X] := DATAMODULE1.qryformatosLON_CAMPO.value;
               end;
              DATAMODULE1.qryformatos.Next;
           end;
         end
         else
         begin
         ShowMessage('Debe  definir  el formato del banco para cargar el archivo');
         nombrecampo := 99;
         sgdetalle.ColCount := 0;
         end;
     end;
function Tfrmarchivos.estadocampo(numero: integer): Boolean;
begin
  estadocampo := FALSE;
  DATAMODULE1.qryformatos.CLOSE;
  DATAMODULE1.qryformatos.SQL.Clear;
  DATAMODULE1.qryformatos.SQL.ADD('SELECT * FROM FORMATOS_BANCOS_CONTRV WHERE COD_BANCO = :"BANCO" AND  NUM_CAMPO = :"CAMPO" ');
  DATAMODULE1.qryformatos.Parameters[0].VALUE := TRIM(dblbanco.KEYVALUE);
  DATAMODULE1.qryformatos.Parameters[1].Value := NUMERO;
  DATAMODULE1.qryformatos.Open;
        IF DATAMODULE1.qryformatosESTADO.Value = 1 THEN
        BEGIN
         estadocampo := TRUE;
        END

end;

function Tfrmarchivos.delimitador(banco,CODIGO: string): string;
begin
  delimitador := '';
  DATAMODULE1.qryformatos.CLOSE;
  DATAMODULE1.qryformatos.SQL.Clear;
  DATAMODULE1.qryformatos.SQL.ADD('SELECT * FROM FORMATOS_BANCOS_CONTRV WHERE COD_BANCO = :"BANCO" AND NUM_CAMPO = :"CAMPO"');
  DATAMODULE1.qryformatos.Parameters[0].VALUE := TRIM(banco);
  DATAMODULE1.qryformatos.Parameters[1].VALUE := TRIM(CODIGO);
  DATAMODULE1.qryformatos.Open;
        IF trim(DATAMODULE1.qryformatosDELIMITADOR.Value) = '0' THEN
        BEGIN
        delimitador := chr(44);
        END
        else
            IF trim(DATAMODULE1.qryformatosDELIMITADOR.Value) = '1' THEN
            BEGIN
                delimitador := chr(59);
            END
            ELSE
                IF trim(DATAMODULE1.qryformatosDELIMITADOR.Value) = '2' THEN
                BEGIN
                  delimitador := chr(9);
                END
                else
                  IF trim(DATAMODULE1.qryformatosDELIMITADOR.Value) = '3' THEN
                  BEGIN
                    delimitador := chr(32);
                  END
                  else
                    IF trim(DATAMODULE1.qryformatosDELIMITADOR.Value) = '4' THEN
                    BEGIN
                      delimitador := 'F';
                      inicio := strtoint(floattostr(DATAMODULE1.qryformatosINI_CAMPO.Value));
                      longitud := strtoint(floattostr(DATAMODULE1.qryformatosLON_CAMPO.Value));
                    END





end;

procedure Tfrmarchivos.dblbancoExit(Sender: TObject);
var i,y : integer;
begin

 if dblbanco.Text <> '' then
 begin
     FOR I := 0 TO SGDETALLE.ROWCOUNT DO
     BEGIN
            FOR y := 0 TO SGDETALLE.ColCount DO
            BEGIN
             SGDETALLE.CELLS[y,I]:='';
            end;
     end;
   sgdetalle.RowCount := 2;
   sgdetalle.colCount := 0;
   if nombrecampo(dblbanco.KeyValue) > 0 then
   begin

   
	if  edtnombrearchivo.text <> '' then
	begin
	cargararchivo (edtnombrearchivo.text);

	   if validarbanco(dblbanco.KeyValue) = false then
	   begin
	   ShowMessage('El  archivo  no pertenece al banco' + LowerCase(dblbanco.Text) );
	   end
	   else
		begin
		validarsucursales (dblbanco.KeyValue);
		validarempresa(dblbanco.KeyValue);
		validarplanilla(dblbanco.KeyValue);
		validarfechas (dblbanco.KeyValue);
    validarvalores(dblbanco.KeyValue);
		//validarvalores(dblbanco.KeyValue);
		//validartipos(dblbanco.KeyValue);
		indetificarempresa;
		end;

	end
	else
	begin
	  ShowMessage('Selecione  el archivo');
		if opabrir.Execute then
		begin
		edtnombrearchivo.text := opabrir.filename;
		dblbanco.KeyValue := '';
		end;
	end;
   end;
 end
 else
 begin
	ShowMessage('Seleccione  el banco ');
	dblbanco.SetFocus;
 end;
end;

procedure Tfrmarchivos.cargararchivo(nombre: string);
var i,j,y,k,numero,encon,sinecon : integer;
f : textfile;
x : real;
valor : real;
s,tipo,num_empresa,xx : string;

begin
IF (DBLBANCO.KeyValue<>1) AND (DBLBANCO.KeyValue<>6) AND (DBLBANCO.KeyValue<>5)THEN
BEGIN
numero := 0;
j := 0;

	assignfile (f,nombre);
	reset(f);
	while  not eof(f) do
	begin


         y := 0;
	       readln(f,s); // leer archivo
	       inc (j);

	       while s <> '' do
	       begin
               IF (Y=0) THEN
               BEGIN
               sgdetalle.Cells[y,j]:=DBLBANCO.KeyValue;
               inc (y);
               END;
               inicio := 0;
               longitud := 0;
               tipodelimitador := delimitador(dblbanco.KeyValue,INTTOSTR(y+1));
               IF tipodelimitador <> 'F' THEN
               BEGIN


			i:=Pos(tipodelimitador,s);
			if i = 0 then
			begin
			sgdetalle.Cells[y,j] := trim(s);
			s := '';
			end
			else
                         if i > 0 then
                         begin
                         sgdetalle.Cells[y,j] := trim(copy (s,1,i-1));
                         Delete(s,1, i);
                         end;
	       END
               ELSE
               IF tipodelimitador = 'F' THEN
               BEGIN
                      sgdetalle.Cells[y,j] := trim(copy(s,1,longitud));
                      Delete(s,1, longitud);
               END;
               inc (y);
               end;
	        sgdetalle.RowCount := sgdetalle.RowCount + 1   ;
	        frmarchivos.Refresh;
          edttotal.text := floattostr(j);
	 END;
    closefile(f);

END
ELSE
BEGIN
//***********************BOGOT�-AV VILLAS
  numero := 0;
  j := 0;
	assignfile (f,nombre);
	reset(f);
  readln(f,s); //leer encabezado
	while  not eof(f) do
	begin
	       y := 0;
	       readln(f,s); // leer archivo
	       inc (j);

         DATAMODULE1.qryformatos.CLOSE;
         DATAMODULE1.qryformatos.SQL.Clear;
         DATAMODULE1.qryformatos.SQL.ADD('SELECT * FROM FORMATOS_BANCOS_CONTRV WHERE COD_BANCO = :"BANCO"');
         DATAMODULE1.qryformatos.Parameters[0].VALUE := TRIM(dblbanco.KeyValue);
         DATAMODULE1.qryformatos.Open;

         IF (TRIM(COPY(S,1,1))<>'9'){Bogot�} AND (TRIM(COPY(S,1,1))<>'0') {Av Villas}  THEN
         BEGIN
         FOR k:=1 TO  DATAMODULE1.qryformatos.RecordCount  DO
         BEGIN
         tipodelimitador := delimitador(dblbanco.KeyValue,INTTOSTR(y+1));
         CASE k OF
         1: sgdetalle.Cells[y,j] := TRIM(dblbanco.KeyValue);//'01'; //Banco Bogot�
         5: sgdetalle.Cells[y,j] := COPY(GLDATE,7,4)+trim(copy(s,inicio,longitud));
         ELSE
         sgdetalle.Cells[y,j] := trim(copy(s,inicio,longitud));
         END;//CASE
         inc (y);
         END;
         END;
         sgdetalle.RowCount := sgdetalle.RowCount + 1   ;
	       frmarchivos.Refresh;
         edttotal.text := floattostr(j);

  END; //WHILE
     closefile(f);
	 END;


//***********************
end;


procedure Tfrmarchivos.validarempresa(banco: string);
var i : integer;
begin
  DATAMODULE1.qryformatos.CLOSE;
  DATAMODULE1.qryformatos.SQL.Clear;
  DATAMODULE1.qryformatos.SQL.ADD('SELECT * FROM FORMATOS_BANCOS_CONTRV WHERE COD_BANCO = :"BANCO" AND  COD_CAMPO = :"CAMPO" ');
  DATAMODULE1.qryformatos.Parameters[0].VALUE := TRIM(banco);
  DATAMODULE1.qryformatos.Parameters[1].Value := 3;
  DATAMODULE1.qryformatos.Open;
        IF DATAMODULE1.qryformatos.RecordCount = 1 THEN
        begin

           numsgddocumento := strtoint(floattostr((DATAMODULE1.qryformatosNUM_CAMPO.Value) -1));

            FOR I := 1 TO SGDETALLE.ROWCOUNT DO
            begin
               if trim(sgdetalle.Cells[numsgddocumento,I]) <> '' then
               begin
                sgdetalle.Cells[numsgddocumento,I] := floattostr(strtofloat(sgdetalle.Cells[numsgddocumento,I]));
                end;

           end;
        end
        else
        begin
         ShowMessage('En el  formato no  esta incluido el numero de la empresa debe Incluirlo para subir el archivo');
         end;

end;

procedure Tfrmarchivos.validarfechas(banco: string);
var i : integer;
dia,mes,ano : string;
begin
  DATAMODULE1.qryformatos.CLOSE;
  DATAMODULE1.qryformatos.SQL.Clear;
  DATAMODULE1.qryformatos.SQL.ADD('SELECT * FROM FORMATOS_BANCOS_CONTRV WHERE COD_BANCO = :"BANCO" AND  COD_CAMPO = :"CAMPO" ');
  DATAMODULE1.qryformatos.Parameters[0].VALUE := TRIM(banco);
  DATAMODULE1.qryformatos.Parameters[1].Value := 5;
  DATAMODULE1.qryformatos.Open;
        IF DATAMODULE1.qryformatos.RecordCount = 1 THEN
        begin
           numsgdfecha := strtoint(floattostr((DATAMODULE1.qryformatosNUM_CAMPO.Value) -1));
            FOR I := 1 TO SGDETALLE.ROWCOUNT DO
            begin
               if trim(sgdetalle.Cells[numsgdfecha,I]) <> '' then
               begin
                      if  DATAMODULE1.qryformatosFORMATO.Value = 'YYYYMMDD' then
                      begin
                      ano := copy((sgdetalle.Cells[numsgdfecha,I]),1,4);
                      mes := copy((sgdetalle.Cells[numsgdfecha,I]),5,2);
                      dia := copy((sgdetalle.Cells[numsgdfecha,I]),7,2);
                      sgdetalle.Cells[numsgdfecha,I] := dia +'/'+ mes + '/'+ano;
                      end
                              else
                              if  DATAMODULE1.qryformatosFORMATO.Value = 'YYYY/MM/DD' then
                              begin
                                ano := copy((sgdetalle.Cells[numsgdfecha,I]),1,4);
                                mes := copy((sgdetalle.Cells[numsgdfecha,I]),6,2);
                                dia := copy((sgdetalle.Cells[numsgdfecha,I]),9,2);
                                sgdetalle.Cells[numsgdfecha,I] := dia +'/'+ mes + '/'+ano;
                              end
                                      else
                                      if  DATAMODULE1.qryformatosFORMATO.Value = 'DDMMYYYY' then
                                      begin
                                        dia := copy((sgdetalle.Cells[numsgdfecha,I]),1,4);
                                        mes := copy((sgdetalle.Cells[numsgdfecha,I]),5,2);
                                        ano := copy((sgdetalle.Cells[numsgdfecha,I]),7,2);
                                        sgdetalle.Cells[numsgdfecha,I] := dia +'/'+ mes + '/'+ano;
                                      end
                                              else
                                              if  DATAMODULE1.qryformatosFORMATO.Value = 'DD/MM/YYYY' then
                                              begin
                                                dia := copy((sgdetalle.Cells[numsgdfecha,I]),1,2);
                                                mes := copy((sgdetalle.Cells[numsgdfecha,I]),4,2);
                                                ano := copy((sgdetalle.Cells[numsgdfecha,I]),7,4);
                                                sgdetalle.Cells[numsgdfecha,I] := dia +'/'+ mes + '/'+ano;
                                              end
                                                else
                                                Begin
                                                ShowMessage('No existe  un formato definido para  la fecha defina  verifique el  formato de la  fecha en el archivo plano');
                                                end;

                end;
            end;
        end
        else
        begin
         ShowMessage('En el  formato no  esta incluido la  fecha  de  recaudo debe Incluirlo para subir el archivo');
         end;



end;

procedure Tfrmarchivos.validarplanilla(banco: string);
var i : integer;
begin
  DATAMODULE1.qryformatos.CLOSE;
  DATAMODULE1.qryformatos.SQL.Clear;
  DATAMODULE1.qryformatos.SQL.ADD('SELECT * FROM FORMATOS_BANCOS_CONTRV WHERE COD_BANCO = :"BANCO" AND  COD_CAMPO = :"CAMPO" ');
  DATAMODULE1.qryformatos.Parameters[0].VALUE := TRIM(banco);
  DATAMODULE1.qryformatos.Parameters[1].Value := 4;
  DATAMODULE1.qryformatos.Open;
        IF DATAMODULE1.qryformatos.RecordCount = 1 THEN
        begin
           numsgdplanilla := strtoint(floattostr((DATAMODULE1.qryformatosNUM_CAMPO.Value) -1));
            FOR I := 1 TO SGDETALLE.ROWCOUNT DO
            begin
               if trim(sgdetalle.Cells[numsgdplanilla,I]) <> '' then
               begin
                sgdetalle.Cells[numsgdplanilla,I] := floattostr(strtofloat(sgdetalle.Cells[numsgdplanilla,I]));
               end;

           end;
        end
        else
        begin
         ShowMessage('En el  formato no  esta incluido el numero de  planilla debe Incluirlo para subir el archivo');
         end;
end;

//***********************

procedure Tfrmarchivos.validarvalores(banco: string);
var i : integer;
begin
  DATAMODULE1.qryformatos.CLOSE;
  DATAMODULE1.qryformatos.SQL.Clear;
  DATAMODULE1.qryformatos.SQL.ADD('SELECT * FROM FORMATOS_BANCOS_CONTRV WHERE COD_BANCO = :"BANCO" AND  COD_CAMPO = :"CAMPO" ');
  DATAMODULE1.qryformatos.Parameters[0].VALUE := TRIM(banco);
  DATAMODULE1.qryformatos.Parameters[1].Value := 6;
  DATAMODULE1.qryformatos.Open;
        IF DATAMODULE1.qryformatos.RecordCount = 1 THEN
        begin
           numsgdconsignacion := strtoint(floattostr((DATAMODULE1.qryformatosNUM_CAMPO.Value) -1));
            FOR I := 1 TO SGDETALLE.ROWCOUNT DO
            begin
               if trim(sgdetalle.Cells[numsgdconsignacion,I]) <> '' then
               begin
                IF DBLBANCO.KeyValue<>4 THEN
                sgdetalle.Cells[numsgdconsignacion,I] := floattostr(strtofloat(sgdetalle.Cells[numsgdconsignacion,I])/100)
                ELSE
                sgdetalle.Cells[numsgdconsignacion,I] := floattostr(strtofloat(sgdetalle.Cells[numsgdconsignacion,I]));
               end;

           end;
        end
        else
        begin
         ShowMessage('En el  formato no  esta incluido el valor de  planilla debe Incluirlo para subir el archivo');
         end;
end;

//***********************

function Tfrmarchivos.validarbanco(banco: string): Boolean;
var i : integer;

begin
 validarbanco := true;
  DATAMODULE1.qryformatos.CLOSE;
  DATAMODULE1.qryformatos.SQL.Clear;
  DATAMODULE1.qryformatos.SQL.ADD('SELECT * FROM FORMATOS_BANCOS_CONTRV WHERE COD_BANCO = :"BANCO" AND  COD_CAMPO = :"CAMPO" ');
  DATAMODULE1.qryformatos.Parameters[0].VALUE := TRIM(banco);
  DATAMODULE1.qryformatos.Parameters[1].Value := 1;
  DATAMODULE1.qryformatos.Open;
        IF DATAMODULE1.qryformatos.RecordCount = 1 THEN
        begin
           numsgdvalor := strtoint(floattostr((DATAMODULE1.qryformatosNUM_CAMPO.Value) -1));
            FOR I := 1 TO SGDETALLE.ROWCOUNT DO
            begin
               if trim(sgdetalle.Cells[numsgdplanilla,I]) <> '' then
               begin
                  if strtoint(sgdetalle.Cells[numsgdplanilla,I]) = strtoint(banco) then
                  begin
                  sgdetalle.Cells[numsgdplanilla,I] := banco;
                  validarbanco := true;
                  end;
               end;

            end;

        end
        else
        begin
         ShowMessage('En el  formato no  esta incluido el  codigo del banco debe Incluirlo para subir el archivo');
         validarbanco := false;
         numsgdbanco := 99;
         end;
end;

{procedure Tfrmarchivos.validarvalores(banco: string);
var i : integer;
begin
  DATAMODULE1.qryformatos.CLOSE;
  DATAMODULE1.qryformatos.SQL.Clear;
  DATAMODULE1.qryformatos.SQL.ADD('SELECT * FROM FORMATOS_BANCOS_CONTRV WHERE COD_BANCO = :"BANCO" AND  COD_CAMPO = :"CAMPO" ');
  DATAMODULE1.qryformatos.Parameters[0].VALUE := TRIM(banco);
  DATAMODULE1.qryformatos.Parameters[1].Value := 7;
  DATAMODULE1.qryformatos.Open;
        IF DATAMODULE1.qryformatos.RecordCount = 1 THEN
        begin
           numsgdvalor := strtoint(floattostr((DATAMODULE1.qryformatosNUM_CAMPO.Value) -1));
            FOR I := 1 TO SGDETALLE.ROWCOUNT DO
            begin
               if trim(sgdetalle.Cells[numsgdvalor,I]) <> '' then
               begin
                sgdetalle.Cells[numsgdvalor,I] := formatfloat(DATAMODULE1.qryformatosFORMATO.Value,strtofloat(floattostr(strtofloat(sgdetalle.Cells[numsgdvalor,I]))));
                //sgdetalle.Cells[X,I] := formatfloat('#,##0.00',strtofloat(sgdetalle.Cells[X,I]))
               end;

           end;
        end
        else
        begin
         ShowMessage('En el  formato no  esta incluido el valor de la  planilla debe Incluirlo para subir el archivo');
         end;
end;
}
procedure Tfrmarchivos.validarsucursales(banco: string);
var I : integer;
begin
  DATAMODULE1.qryformatos.CLOSE;
  DATAMODULE1.qryformatos.SQL.Clear;
  DATAMODULE1.qryformatos.SQL.ADD('SELECT * FROM FORMATOS_BANCOS_CONTRV WHERE COD_BANCO = :"BANCO" AND  COD_CAMPO = :"CAMPO" ');
  DATAMODULE1.qryformatos.Parameters[0].VALUE := TRIM(banco);
  DATAMODULE1.qryformatos.Parameters[1].Value := 2;
  DATAMODULE1.qryformatos.Open;
         IF DATAMODULE1.qryformatos.RecordCount = 1 THEN
        begin
           numsgdsucursal := strtoint(floattostr((DATAMODULE1.qryformatosNUM_CAMPO.Value) -1));
            FOR I := 1 TO SGDETALLE.ROWCOUNT DO
            begin
               IF   trim(sgdetalle.Cells[numsgdsucursal,I]) <> '' THEN
               BEGIN
                   if strtofloat(trim(sgdetalle.Cells[numsgdsucursal,I])) <> null then
                   begin
                    //sgdetalle.Cells[numsgdsucursal,I] :=frmprincipal.espacios(3,floattostr(strtofloat(sgdetalle.Cells[numsgdsucursal,I])));
                    sgdetalle.Cells[numsgdsucursal,I] :=floattostr(strtofloat(sgdetalle.Cells[numsgdsucursal,I]));
                   end
                   else
                            begin
                            sgdetalle.Cells[numsgdsucursal,I] := '000'
                            end;

                    end;
               END;
        end
        else
        begin
         ShowMessage('el archivo no tiene codigo  de sucursal');
         numsgdsucursal := 99;
         end;
end;

procedure Tfrmarchivos.validartipos(banco: string);
var I : integer;
begin
  DATAMODULE1.qryformatos.CLOSE;
  DATAMODULE1.qryformatos.SQL.Clear;
  DATAMODULE1.qryformatos.SQL.ADD('SELECT * FROM FORMATOS_BANCOS_CONTRV WHERE COD_BANCO = :"BANCO" AND  COD_CAMPO = :"CAMPO" ');
  DATAMODULE1.qryformatos.Parameters[0].VALUE := TRIM(banco);
  DATAMODULE1.qryformatos.Parameters[1].Value := 8;
  DATAMODULE1.qryformatos.Open;
        IF DATAMODULE1.qryformatos.RecordCount = 1 THEN
        begin
           numsgdtipo := strtoint(floattostr((DATAMODULE1.qryformatosNUM_CAMPO.Value) -1));
            FOR I := 1 TO SGDETALLE.ROWCOUNT DO
            begin
               if trim(sgdetalle.Cells[numsgdtipo,I]) <> '' then
               begin
                sgdetalle.Cells[numsgdtipo,I] := copy((sgdetalle.Cells[numsgdtipo,I]),1,5);
               end;

            end;

        end
        else
        begin
         ShowMessage('el archivo no tiene tipo de  movimiento');
         numsgdtipo := 99;
         end;

end;

procedure Tfrmarchivos.indetificarempresa;
VAR I,X : INTEGER;
begin
        //****************
        GBvalidacion.visible:=TRUE;
        //****************
        X := 0;
        FOR I := 1 TO SGDETALLE.ROWCOUNT DO
        begin
                IF   trim(sgdetalle.Cells[numsgddocumento,I]) <> '' THEN
                BEGIN
                   if trim(sgdetalle.Cells[numsgddocumento,I]) <> '0' then
                   begin
                        DATAMODULE1.qryempresas.CLOSE;
                        DATAMODULE1.qryempresas.SQL.Clear;
                        DATAMODULE1.qryempresas.SQL.ADD('SELECT * FROM EMPRESAS WHERE NUM_DOCUMENTO = :"NUMERO"');
                        DATAMODULE1.qryempresas.Parameters[0].VALUE := trim(sgdetalle.Cells[numsgddocumento,I]);
                        DATAMODULE1.qryempresas.Open;
                        IF DATAMODULE1.qryempresas.RecordCount = 1 THEN
                        begin
                            sgdetalle.Cells[numsgddocumento,I] :=  DATAMODULE1.qryempresasNUM_DOCUMENTO.Value;
                        end
                        else
                                begin
                                    DATAMODULE1.qryempresas.CLOSE;
                                    DATAMODULE1.qryempresas.SQL.Clear;
                                    DATAMODULE1.qryempresas.SQL.ADD('SELECT * FROM EMPRESAS WHERE NUM_DOCUMENTO = :"NUMERO"');
                                    DATAMODULE1.qryempresas.Parameters[0].VALUE :=copy ((trim(sgdetalle.Cells[numsgddocumento,I])),1,9);
                                    DATAMODULE1.qryempresas.Open;
                                    IF DATAMODULE1.qryempresas.RecordCount = 1 THEN
                                    begin
                                        sgdetalle.Cells[numsgddocumento,I] :=  DATAMODULE1.qryempresasNUM_DOCUMENTO.Value;
                                    end
                                    else
                                        sgdetalle.Cells[numsgddocumento,I] :=  '0';
                                    //******************
                                      pbvalidar.Min := 0;
                                      pbvalidar.Max := sgdetalle.RowCount -1 ;
                                      pbvalidar.Position := i;
                                    //******************
                                end;

                   end
                   else
                            begin
                            INC(X);
                            sgdetalle.Cells[numsgddocumento,I] := 'SIDT' + frmprincipal.espacios(6,''+ floattostr(x))
                            end;

                    end;
               END;
            //****************
            GBvalidacion.visible:=FALSE;
            //****************
end;

procedure Tfrmarchivos.cargararchivoFIJO(nombre: string);
begin
         ShowMessage('el archivo no tiene tipo de  movimiento');
end;

end.

