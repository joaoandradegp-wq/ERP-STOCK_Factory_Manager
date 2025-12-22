unit Unit21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, Buttons, DB, ADODB, Grids,
  DBGrids, ComCtrls;

type
  TForm21 = class(TForm)
    fechar: TSpeedButton;
    Bevel4: TBevel;
    Label10: TLabel;
    DBText1: TDBText;
    DataSource4: TDataSource;
    ADOQuery4: TADOQuery;
    GroupBox1: TGroupBox;
    novo: TSpeedButton;
    gravar: TSpeedButton;
    ADOQuery2: TADOQuery;
    ADOQuery2nome: TWideStringField;
    ADOQuery1: TADOQuery;
    ADOQuery1nome: TWideStringField;
    ADOQuery1vendedor: TWideStringField;
    ADOQuery3: TADOQuery;
    dbvendedor: TComboBox;
    ListBox1: TListBox;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    ListBox2: TListBox;
    ListBox3: TListBox;
    Memo1: TMemo;
    Label12: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    btn04: TSpeedButton;
    btn01: TSpeedButton;
    DBMemo1: TDBMemo;
    p3: TCheckBox;
    p2: TCheckBox;
    p1: TCheckBox;
    p4: TCheckBox;
    p5: TCheckBox;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dbentrega: TDBEdit;
    dbacrescimo: TDBEdit;
    Label21: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    Label5: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label18: TLabel;
    Label17: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel5: TBevel;
    ADOQuery4Cdigo: TAutoIncField;
    ADOQuery4nome: TWideStringField;
    ADOQuery4cliente: TWideStringField;
    ADOQuery4modelo: TMemoField;
    ADOQuery4pagamento: TWideStringField;
    ADOQuery4nome_cheque1: TWideStringField;
    ADOQuery4n_cheque1: TWideStringField;
    ADOQuery4nome_cheque2: TWideStringField;
    ADOQuery4n_cheque2: TWideStringField;
    ADOQuery4nome_cheque3: TWideStringField;
    ADOQuery4n_cheque3: TWideStringField;
    ADOQuery4entrega: TDateTimeField;
    ADOQuery4acrescimos: TBCDField;
    ADOQuery4valor_modelos: TBCDField;
    ADOQuery4valor_total: TBCDField;
    ADOQuery4data_pedido: TDateTimeField;
    ADOQuery4status: TWideStringField;
    ADOQuery4horario: TWideStringField;
    ADOQuery4cod_vendedor: TWideStringField;
    ADOQuery5: TADOQuery;
    ADOQuery1nome_cheque: TWideStringField;
    ADOQuery1n_cheque: TWideStringField;
    ADOQuery5valor: TBCDField;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    ADOQuery4valor_cheque1: TBCDField;
    ADOQuery4valor_cheque2: TBCDField;
    ADOQuery4valor_cheque3: TBCDField;
    ADOQuery4mes: TWideStringField;
    ADOQuery4ano: TWideStringField;
    ADOQuery6: TADOQuery;
    Edit1: TEdit;
    ADOQuery7: TADOQuery;
    ADOQuery1valor: TBCDField;
    ADOQuery1Cdigo: TAutoIncField;
    Timer1: TTimer;
    ADOQuery8: TADOQuery;
    ADOQuery9: TADOQuery;
    ADOQuery10: TADOQuery;
    ADOQuery11: TADOQuery;
    ADOQuery12: TADOQuery;
    ADOQuery13: TADOQuery;
    ADOQuery8tipo: TWideStringField;
    ADOQuery8qtde: TWideStringField;
    ADOQuery9tipo: TWideStringField;
    ADOQuery9qtde: TWideStringField;
    ADOQuery10tipo: TWideStringField;
    ADOQuery10qtde: TWideStringField;
    ADOQuery11tipo: TWideStringField;
    ADOQuery11qtde: TWideStringField;
    ADOQuery12tipo: TWideStringField;
    ADOQuery12qtde: TWideStringField;
    ADOQuery13tipo: TWideStringField;
    ADOQuery13qtde: TWideStringField;
    ADOQuery3Cdigo: TAutoIncField;
    ADOQuery3nome: TWideStringField;
    ADOQuery3valor: TBCDField;
    ADOQuery3pano: TMemoField;
    ADOQuery3madeira: TMemoField;
    ADOQuery3flocos: TMemoField;
    ADOQuery3pregos: TMemoField;
    ADOQuery3espuma: TMemoField;
    ADOQuery3grampos: TMemoField;
    ADOQuery3percinta: TMemoField;
    ADOQuery3pano_tipo: TMemoField;
    ADOQuery3madeira_tipo: TMemoField;
    ADOQuery3flocos_tipo: TMemoField;
    ADOQuery3pregos_tipo: TMemoField;
    ADOQuery3espuma_tipo: TMemoField;
    ADOQuery3grampos_tipo: TMemoField;
    ADOQuery3percinta_tipo: TMemoField;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    DBMemo5: TDBMemo;
    DBMemo6: TDBMemo;
    DBMemo7: TDBMemo;
    DBMemo8: TDBMemo;
    DBMemo9: TDBMemo;
    DBMemo10: TDBMemo;
    DBMemo11: TDBMemo;
    DBMemo12: TDBMemo;
    DBMemo13: TDBMemo;
    DBMemo14: TDBMemo;
    DBMemo15: TDBMemo;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOQuery6tipo: TWideStringField;
    ADOQuery6qtde: TWideStringField;
    banco_aux: TADOQuery;
    banco_auxtipo: TWideStringField;
    banco_auxqtde: TWideStringField;
    Timer2: TTimer;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Memo5: TMemo;
    Memo6: TMemo;
    Memo7: TMemo;
    Memo8: TMemo;
    procedure fecharClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbvendedorEnter(Sender: TObject);
    procedure dbvendedorChange(Sender: TObject);
    procedure p1Click(Sender: TObject);
    procedure p2Click(Sender: TObject);
    procedure p3Click(Sender: TObject);
    procedure p4Click(Sender: TObject);
    procedure p5Click(Sender: TObject);
    procedure dbacrescimoKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure novoClick(Sender: TObject);
    procedure gravarClick(Sender: TObject);
    procedure btn01Click(Sender: TObject);
    procedure btn04Click(Sender: TObject);
    procedure dbentregaKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form21: TForm21;
  aux_add:Integer;
  cont: Real;

implementation

uses Unit1, Unit12;

{$R *.dfm}

Function ValidaData(data : String; formato : String) : Boolean;
Var
wdia, wmes,wano,ult_dia_do_mes : integer;

Procedure Verifica_dia_mes;
begin
If (wdia < 1) or (wdia > 31) Then
begin
ValidaData := False;
exit;
end;
If (wmes < 1) or (wmes > 12) Then
begin
ValidaData := False;
exit;
end;

// Calcula o ult dia do mes
ult_dia_do_mes := StrToInt(Copy('312831303130313130313031', (wmes * 2 - 1), 2));
If ( (wano Mod 4)=0 ) and (wmes = 2) Then
ult_dia_do_mes := 29;

If wdia > ult_dia_do_mes Then
begin
ValidaData := False;
exit;
end;
end;

begin
ValidaData := True;

if (pos(' ',data)<>0) or (data = '') or (pos(' ',formato)<>0) or (formato = '') then
begin
ValidaData := False;
exit;
end;

if (formato = 'DD/MM/AA') or (formato = 'DD-MM-AA') then
begin
wdia := StrToInt(copy(data,1,2)); // Desmenbra a data
wmes := StrToInt(copy(data,4,2));
wano := StrToInt(copy(data,7,2));
Verifica_dia_mes;
exit;
end
else
if (formato = 'DD/MM/AAAA') or (formato = 'DD-MM-AAAA') then
begin
wdia := StrToInt(copy(data,1,2)); // Desmenbra a data
wmes := StrToInt(copy(data,4,2));
wano := StrToInt(copy(data,7,4));
Verifica_dia_mes;
exit;
end
else
if (formato = 'MM/DD/AA') or (formato = 'MM-DD-AA') then
begin
wdia := StrToInt(copy(data,4,2)); // Desmenbra a data
wmes := StrToInt(copy(data,1,2));
wano := StrToInt(copy(data,7,2));
Verifica_dia_mes;
Exit;
end
else
if (formato = 'AA/MM/DD') or (formato = 'AA-MM-DD') then
begin
wdia := StrToInt(copy(data,7,2)); // Desmenbra a data
wmes := StrToInt(copy(data,4,2));
wano := StrToInt(copy(data,1,2));
Verifica_dia_mes;
Exit;
end
else
if (formato = 'AAAA/MM/DD') or (formato = 'AAAA-MM-DD') then
begin
wdia := StrToInt(copy(data,9,2)); // Desmenbra a data
wmes := StrToInt(copy(data,6,2));
wano := StrToInt(copy(data,1,4));
Verifica_dia_mes;
Exit;
end
else
if (formato = 'DDMMAA') then
begin
if Length(data) <> 6 Then
begin
ValidaData := False;
Exit;
end;
wdia := StrToInt(copy(data,1,2)); // Desmenbra a data
wmes := StrToInt(copy(data,3,2));
wano := StrToInt(copy(data,5,2));
Verifica_dia_mes;
Exit;
end
else
if (formato = 'MMDDAA') then
begin
If Length(data) <> 6 Then
begin
ValidaData := False;
Exit;
end;
wdia := StrToInt(copy(data,3,2)); // Desmenbra a data
wmes := StrToInt(copy(data,1,2));
wano := StrToInt(copy(data,5,2));
Verifica_dia_mes;
Exit;
end
else
if (formato = 'AAMMDD') then
begin
if Length(data) <> 6 Then
begin
ValidaData := False;
Exit;
end;
wdia := StrToInt(copy(data,5,2)); // Desmenbra a data
wmes := StrToInt(copy(data,3,2));
wano := StrToInt(copy(data,1,2));
Verifica_dia_mes;
Exit;
end
else
if (formato = 'AAAAMMDD') then
begin
if Length(data) <> 8 Then
begin
ValidaData := False;
Exit;
end;
wdia := StrToInt(copy(data,7,2)); // Desmenbra a data
wmes := StrToInt(copy(data,5,2));
wano := StrToInt(copy(data,1,4));
Verifica_dia_mes;
Exit;
end
else
begin
ValidaData := False;
Exit;
end;

ValidaData := True;
end;

procedure TForm21.fecharClick(Sender: TObject);
begin
Close;
end;

procedure TForm21.FormDestroy(Sender: TObject);
begin
frmprincipal.Enabled:=True;
end;

procedure TForm21.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if ADOQuery1.Active=True then
ADOQuery1.Active:=false;
if ADOQuery2.Active=True then
ADOQuery2.Active:=false;
if ADOQuery3.Active=True then
ADOQuery3.Active:=false;
if ADOQuery4.Active=True then
ADOQuery4.Active:=false;
if ADOQuery5.Active=True then
ADOQuery5.Active:=false;
if ADOQuery6.Active=True then
ADOQuery6.Active:=false;
if ADOQuery7.Active=True then
ADOQuery7.Active:=false;
if ADOQuery8.Active=True then
ADOQuery8.Active:=false;
if ADOQuery9.Active=True then
ADOQuery9.Active:=false;
if ADOQuery10.Active=True then
ADOQuery10.Active:=false;
if ADOQuery11.Active=True then
ADOQuery11.Active:=false;
if ADOQuery12.Active=True then
ADOQuery12.Active:=false;
if ADOQuery13.Active=True then
ADOQuery13.Active:=false;

  if banco_aux.Active = True then
  begin
    //LIMPA O BANCO DE DADOS AUXILIAR
    banco_aux.First;
    while banco_aux.Eof = False do
    begin
    banco_aux.Next;
    banco_aux.delete;
    end;
  //DESATIVA O BANCO DE DADOS AUXILIAR
  banco_aux.Active:=False;
  end;

Frmprincipal.Enabled:=True;

//Abaixo para Liberar o Form da MemÛria
Form21.Release;
Form21 := Nil;
end;

procedure TForm21.dbvendedorEnter(Sender: TObject);
var
i,y:integer;
begin
dbvendedor.Items.Clear;
dbvendedor.ItemIndex:=0;
ADOQuery2.Open;
y:=ADOQuery2.RecordCount;
i:=0;
while i < y do
begin
i:=i+1;
dbvendedor.Items.Add(UpperCase(ADOQuery2.Fieldbyname('nome').Value));
ADOQuery2.Next;
end;
ADOQuery2.Close;
end;

procedure TForm21.dbvendedorChange(Sender: TObject);
begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;
   ADOQuery1.sql.Add('Select * from cad_cli where vendedor = "'+dbvendedor.Text+'"');
   ADOQuery1.open;
   ADOQuery3.sql.clear;
   ADOQuery3.sql.Add('Select * from modelos');
   ADOQuery3.open;

ListBox1.Clear;

ADOQuery1.First();
While not ADOQuery1.Eof do
begin
ListBox1.Items.Add(ADOQuery1.FieldByName('nome').AsString);
ADOQuery1.Next();
end;

if ListBox2.Items.Count = 0 then
begin
 ADOQuery3.First();
 While not ADOQuery3.Eof do
 begin
 ListBox2.Items.Add(ADOQuery3.FieldByName('nome').AsString);
   if ADOQuery3.FieldByName('nome').AsString <> '' then
   Timer1.Enabled:=True;
 ADOQuery3.Next();
 end;
btn01.Enabled:=True;
btn04.Enabled:=False;
end;

end;

procedure TForm21.p1Click(Sender: TObject);
begin

if p1.Checked = True then
begin
if ADOQuery5.Active=True then
ADOQuery5.Active:=False;

p2.Checked:=False;
p3.Checked:=False;
p4.Checked:=False;
p5.Checked:=False;

DBEdit1.Clear;
DBEdit2.Clear;
DBEdit3.Clear;
DBEdit4.Clear;
DBEdit5.Clear;
DBEdit6.Clear;

DBEdit1.Enabled:=False;
DBEdit2.Enabled:=False;
DBEdit3.Enabled:=False;
DBEdit4.Enabled:=False;
DBEdit5.Enabled:=False;
DBEdit6.Enabled:=False;
DBEdit7.Enabled:=False;
DBEdit7.ParentColor:=True;
DBEdit8.Enabled:=False;
DBEdit8.ParentColor:=True;
DBEdit9.Enabled:=False;
DBEdit9.ParentColor:=True;

end;

end;

procedure TForm21.p2Click(Sender: TObject);
begin

if p2.Checked = True then
begin
if ADOQuery5.Active=False then
ADOQuery5.Active:=True;

p1.Checked:=False;
p3.Checked:=False;
p4.Checked:=False;
p5.Checked:=False;

DBEdit1.Clear;
DBEdit2.Clear;
DBEdit3.Clear;
DBEdit4.Clear;
DBEdit5.Clear;
DBEdit6.Clear;

DBEdit1.Enabled:=True;
DBEdit2.Enabled:=True;
DBEdit7.Enabled:=True;
DBEdit7.Color:=clWindow;
DBEdit3.Enabled:=False;
DBEdit4.Enabled:=False;
DBEdit5.Enabled:=False;
DBEdit6.Enabled:=False;
DBEdit8.Enabled:=False;
DBEdit8.ParentColor:=True;
DBEdit9.Enabled:=False;
DBEdit9.ParentColor:=True;

DBEdit1.SetFocus;
end;

end;

procedure TForm21.p3Click(Sender: TObject);
begin

if p3.Checked = True then
begin
if ADOQuery5.Active=False then
ADOQuery5.Active:=True;

p1.Checked:=False;
p2.Checked:=False;
p4.Checked:=False;
p5.Checked:=False;

DBEdit1.Clear;
DBEdit2.Clear;
DBEdit3.Clear;
DBEdit4.Clear;
DBEdit5.Clear;
DBEdit6.Clear;

DBEdit1.Enabled:=True;
DBEdit2.Enabled:=True;
DBEdit7.Enabled:=True;
DBEdit7.Color:=clWindow;
DBEdit3.Enabled:=False;
DBEdit4.Enabled:=False;
DBEdit5.Enabled:=False;
DBEdit6.Enabled:=False;
DBEdit8.Enabled:=False;
DBEdit8.ParentColor:=True;
DBEdit9.Enabled:=False;
DBEdit9.ParentColor:=True;

DBEdit1.SetFocus;
end;

end;

procedure TForm21.p4Click(Sender: TObject);
begin

if p4.Checked = True then
begin
if ADOQuery5.Active=False then
ADOQuery5.Active:=True;

p1.Checked:=False;
p2.Checked:=False;
p3.Checked:=False;
p5.Checked:=False;

DBEdit1.Clear;
DBEdit2.Clear;
DBEdit3.Clear;
DBEdit4.Clear;
DBEdit5.Clear;
DBEdit6.Clear;

DBEdit1.Enabled:=True;
DBEdit2.Enabled:=True;
DBEdit7.Enabled:=True;
DBEdit7.Color:=clWindow;
DBEdit3.Enabled:=True;
DBEdit4.Enabled:=True;
DBEdit5.Enabled:=False;
DBEdit6.Enabled:=False;
DBEdit8.Enabled:=True;
DBEdit8.Color:=clWindow;
DBEdit9.Enabled:=False;
DBEdit9.ParentColor:=True;

DBEdit1.SetFocus;
end;

end;

procedure TForm21.p5Click(Sender: TObject);
begin

if p5.Checked = True then
begin
if ADOQuery5.Active=False then
ADOQuery5.Active:=True;

p1.Checked:=False;
p2.Checked:=False;
p3.Checked:=False;
p4.Checked:=False;

DBEdit1.Clear;
DBEdit2.Clear;
DBEdit3.Clear;
DBEdit4.Clear;
DBEdit5.Clear;
DBEdit6.Clear;

DBEdit1.Enabled:=True;
DBEdit2.Enabled:=True;
DBEdit7.Enabled:=True;
DBEdit7.Color:=clWindow;
DBEdit3.Enabled:=True;
DBEdit4.Enabled:=True;
DBEdit5.Enabled:=True;
DBEdit6.Enabled:=True;
DBEdit8.Enabled:=True;
DBEdit8.Color:=clWindow;
DBEdit9.Enabled:=True;
DBEdit9.Color:=clWindow;

DBEdit1.SetFocus;
end;

end;

procedure TForm21.dbacrescimoKeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞-<>!@#$%®&*()_+={}[]?;:.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVXYZW';
min = 'abcdefghijklmnopqrstuvxyzw';
Var
Str : String;
begin
inherited;
Str := key;
if (Pos(Str,especiais+mai+min)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
dbacrescimo.SetFocus;
end;
end;

procedure TForm21.FormActivate(Sender: TObject);
begin
ADOQuery4.Active:=True;
ADOQuery4.Append;

Label13.Enabled:=True;
Label13.Caption:='0,00';
Label14.Enabled:=True;

//Marcadores dos LisBox
Label11.Caption:='';

//Abaixo s„o os Edit's
dbvendedor.Enabled:=True;
dbvendedor.ItemIndex:=-1;
ListBox1.Enabled:=True;
ListBox1.Clear;
ListBox2.Enabled:=True;
ListBox2.Clear;
ListBox3.Enabled:=True;
ListBox3.Clear;
dbacrescimo.Enabled:=True;
dbentrega.Enabled:=True;
DBText1.Enabled:=True;

//Abaixo as caixas de marcaÁ„o
p1.Checked:=False;
p2.Checked:=False;
p3.Checked:=False;
p4.Checked:=False;
p5.Checked:=False;

p1.Enabled:=True;
p2.Enabled:=True;
p3.Enabled:=True;
p4.Enabled:=True;
p5.Enabled:=True;

//Abaixo s„o os Botıes
novo.Enabled:=False;
gravar.Enabled:=True ;

//Abaixo deixa o campo Nome pronto pra digitar
dbvendedor.SetFocus;
end;

procedure TForm21.novoClick(Sender: TObject);
begin
ADOQuery4.Active:=True;
ADOQuery4.Append;

  if banco_aux.Active = True then
  begin
    //LIMPA O BANCO DE DADOS AUXILIAR
    banco_aux.First;
    while banco_aux.Eof = False do
    begin
    banco_aux.Next;
    banco_aux.delete;
    end;
  //DESATIVA O BANCO DE DADOS AUXILIAR
  banco_aux.Active:=False;
  end;

Label13.Enabled:=True;
Label13.Caption:='0,00';
Label14.Enabled:=True;

Timer2.Enabled:=True;

//Abaixo limpa os Memo¥s que acumulam os tipos de cada materia prima
Memo2.Clear;
Memo3.Clear;
Memo4.Clear;
Memo5.Clear;
Memo6.Clear;
Memo7.Clear;
Memo8.Clear;

//Marcadores dos LisBox
Label11.Caption:='';

//Abaixo s„o os Edit's
dbvendedor.Enabled:=True;
dbvendedor.ItemIndex:=-1;
ListBox1.Enabled:=True;
ListBox1.Clear;
ListBox2.Enabled:=True;
ListBox2.Clear;
ListBox3.Enabled:=True;
ListBox3.Clear;
dbacrescimo.Enabled:=True;
dbentrega.Enabled:=True;
DBText1.Enabled:=True;

//Abaixo as caixas de marcaÁ„o
p1.Checked:=False;
p2.Checked:=False;
p3.Checked:=False;
p4.Checked:=False;
p5.Checked:=False;

p1.Enabled:=True;
p2.Enabled:=True;
p3.Enabled:=True;
p4.Enabled:=True;
p5.Enabled:=True;

//Abaixo s„o os Botıes
novo.Enabled:=False;
gravar.Enabled:=True ;

//Abaixo deixa o campo Nome pronto pra digitar
dbvendedor.SetFocus;
end;

procedure TForm21.gravarClick(Sender: TObject);
var
erro,erro_for,var_while: Boolean;
pag_total: Real;
ano,mes,dia: Word;
mes_string: String;
pano_conta,madeira_conta,flocos_conta,pregos_conta,espuma_conta,grampos_conta,percinta_conta: Real;
i: Integer;
begin
erro:=False;
erro_for:=False;

pano_conta:=0;
madeira_conta:=0;
flocos_conta:=0;
pregos_conta:=0;
espuma_conta:=0;
grampos_conta:=0;
percinta_conta:=0;

//MATERIAS-PRIMA - INICIO
ADOQuery6.close;
ADOQuery6.sql.clear;
ADOQuery6.sql.Add('Select * from pano');
ADOQuery6.open;

ADOQuery8.close;
ADOQuery8.sql.clear;
ADOQuery8.sql.Add('Select * from madeira');
ADOQuery8.open;

ADOQuery9.close;
ADOQuery9.sql.clear;
ADOQuery9.sql.Add('Select * from espuma');
ADOQuery9.open;

ADOQuery10.close;
ADOQuery10.sql.clear;
ADOQuery10.sql.Add('Select * from flocos');
ADOQuery10.open;

ADOQuery11.close;
ADOQuery11.sql.clear;
ADOQuery11.sql.Add('Select * from grampos');
ADOQuery11.open;

ADOQuery12.close;
ADOQuery12.sql.clear;
ADOQuery12.sql.Add('Select * from pregos');
ADOQuery12.open;

ADOQuery13.close;
ADOQuery13.sql.clear;
ADOQuery13.sql.Add('Select * from pecinta');
ADOQuery13.open;
//MATERIAS-PRIMA - FIM

//Campo para salvar direto no BD os modelos.
dbmemo1.Lines:=Memo1.Lines;

if (trim(dbacrescimo.Text) = '') then
begin
dbacrescimo.Text:='0,00';
end;

if (dbvendedor.ItemIndex = -1) then
begin
aux:=Label1.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
dbvendedor.SetFocus;
erro:=True;
end
              
else if (Trim(Label11.Caption) = '') then
begin
aux:=Label2.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
ListBox1.SetFocus;
erro:=True;
end

else if (ListBox3.Items.Count < 1) then
begin
aux:=Label3.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
ListBox2.SetFocus;
erro:=True;
end

else if ( (p1.Checked = False) and
          (p2.Checked = False) and
          (p3.Checked = False) and
          (p4.Checked = False) and
          (p5.Checked = False) )
then
begin
aux:=Label4.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
p1.SetFocus;
erro:=True;
end

else if ( ((DBEdit1.Enabled = True) and (DBEdit1.Text = '')) or
          ((DBEdit2.Enabled = True) and (DBEdit2.Text = '')) or
          ((DBEdit3.Enabled = True) and (DBEdit3.Text = '')) or
          ((DBEdit4.Enabled = True) and (DBEdit4.Text = '')) or
          ((DBEdit5.Enabled = True) and (DBEdit5.Text = '')) or
          ((DBEdit6.Enabled = True) and (DBEdit6.Text = '')) or
          ((DBEdit7.Enabled = True) and (DBEdit7.Text = '')) or
          ((DBEdit8.Enabled = True) and (DBEdit8.Text = '')) or
          ((DBEdit9.Enabled = True) and (DBEdit9.Text = '')) )
then
begin
aux:=Label4.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
DBEdit1.SetFocus;
erro:=True;
end

else if ( (ValidaData(dbentrega.Text,'DD/MM/AAAA') = False) or (Trim(dbentrega.Text) = '') ) then
begin
MessageDlg(#13+'Digite a data de entrega no formato DD/MM/AAAA!', mtwarning, [mbOk], 0);
dbentrega.SetFocus;
dbentrega.SelectAll;
erro:=True;
end;

if (erro = False) then
begin
pag_total:=StrToFloat(Label12.Caption)+StrToFloat(dbacrescimo.Text);
  if MessageDlg(#13+'Deseja concretizar o pedido abaixo?'+#13#13+'Cliente: '+Label11.Caption+#13+'Valor Total: '+Format('%5.2m',[pag_total])+#13+'Entrega: '+dbentrega.Text+#13,mtConfirmation, [mbyes, mbno],0) = mrYes then
  begin

  //DEBITAR DO ESTOQUE
  ADOQuery6.Active:=True;
  ADOQuery8.Active:=True;
  ADOQuery9.Active:=True;
  ADOQuery10.Active:=True;
  ADOQuery11.Active:=True;
  ADOQuery12.Active:=True;
  ADOQuery13.Active:=True;

  //ATIVA O BANCO DE DADOS AUXILIAR
  if banco_aux.Active = False then
  banco_aux.Active:=True;

 //DEBITAR DO ESTOQUE - INICIO
 var_while := true;
 i := 0;
 while (var_while = true) Do
 begin
 var_while := false;

   if Memo2.Lines.Strings[i] <> '' then
   begin
   var_while := true;
     if ADOQuery6.Locate('tipo', Trim(Memo2.Lines.Strings[i]), []) then
     begin
     banco_aux.Locate('tipo', Trim(Memo2.Lines.Strings[i]), []);

         if ( (StrToFloat(ADOQuery6.FieldByName('qtde').Value) - StrToFloat(banco_aux.FieldByName('qtde').Value)) <= 15 ) then
       begin
       erro_for:=True;
       MessageDlg(#13+'A quantidade de pano do tipo '+Memo2.Lines.Strings[i]+' est· atingindo seu mÌnimo de 15 m≤!'+#13#13+'                         **** CADASTRO ABORTADO ****', mtError, [mbOk], 0);
       end
       else
       begin
       pano_conta:=StrToFloat(ADOQuery6.FieldByName('qtde').Value) - StrToFloat(banco_aux.FieldByName('qtde').Value);
       ADOquery6.Edit;
       ADOQuery6.FieldByName('qtde').Value:=pano_conta;
       ADOquery6.Post;
       end;

     end
     else
     begin
     erro_for:=True;
     MessageDlg(#13+'N„o existe no Estoque de pano o tipo '+Memo2.Lines.Strings[i]+'!'+#13#13+'       **** CADASTRO ABORTADO ****', mtError, [mbOk], 0);
     end;
   end;

   if DBMemo5.Lines.Strings[i] <> '' then
   begin
   var_while := true;
     if ADOQuery8.Locate('tipo', Trim(DBMemo5.Lines.Strings[i]), []) then
     begin
     banco_aux.Locate('tipo', Trim(Memo3.Lines.Strings[i]), []);

         if ( (StrToFloat(ADOQuery8.FieldByName('qtde').Value) - StrToFloat(banco_aux.FieldByName('qtde').Value)) <= 0 ) then
       begin
       erro_for:=True;
       MessageDlg(#13+'A quantidade de madeira do tipo '+DBMemo5.Lines.Strings[i]+' È insuficiente para o pedido!'+#13#13+'                         **** CADASTRO ABORTADO ****', mtError, [mbOk], 0);
       end
       else
       begin
       madeira_conta:=StrToFloat(ADOQuery8.FieldByName('qtde').Value) - StrToFloat(banco_aux.FieldByName('qtde').Value);
       ADOquery8.Edit;
       ADOQuery8.FieldByName('qtde').Value:=madeira_conta;
       ADOquery8.Post;
       end;

     end
     else
     begin
     erro_for:=True;
     MessageDlg(#13+'N„o existe no Estoque de madeira o tipo '+DBMemo5.Lines.Strings[i]+'!'+#13#13+'       **** CADASTRO ABORTADO ****', mtError, [mbOk], 0);
     end;
   end;

   if DBMemo6.Lines.Strings[i] <> '' then
   begin
   var_while := true;
     if ADOQuery10.Locate('tipo', Trim(DBMemo6.Lines.Strings[i]), []) then
     begin
     banco_aux.Locate('tipo', Trim(Memo4.Lines.Strings[i]), []);

       if ( (StrToFloat(ADOQuery10.FieldByName('qtde').Value) - StrToFloat(banco_aux.FieldByName('qtde').Value)) <= 30 ) then
       begin
       erro_for:=True;
       MessageDlg(#13+'A quantidade de flocos do tipo '+DBMemo6.Lines.Strings[i]+' est· atingindo seu mÌnimo de 30 kg!'+#13#13+'                         **** CADASTRO ABORTADO ****', mtError, [mbOk], 0);
       end
       else
       begin
       flocos_conta:=StrToFloat(ADOQuery10.FieldByName('qtde').Value) - StrToFloat(banco_aux.FieldByName('qtde').Value);
       ADOquery10.Edit;
       ADOQuery10.FieldByName('qtde').Value:=flocos_conta;
       ADOquery10.Post;
       end;

     end
     else
     begin
     erro_for:=True;
     MessageDlg(#13+'N„o existe no Estoque de flocos o tipo '+DBMemo6.Lines.Strings[i]+'!'+#13#13+'       **** CADASTRO ABORTADO ****', mtError, [mbOk], 0);
     end;
   end;

   if DBMemo8.Lines.Strings[i] <> '' then
   begin
   var_while := true;
     if ADOQuery12.Locate('tipo', Trim(DBMemo8.Lines.Strings[i]), []) then
     begin
     banco_aux.Locate('tipo', Trim(Memo5.Lines.Strings[i]), []);

       if ( (StrToFloat(ADOQuery12.FieldByName('qtde').Value) - StrToFloat(banco_aux.FieldByName('qtde').Value)) <= 10 ) then
       begin
       erro_for:=True;
       MessageDlg(#13+'A quantidade de pregos do tipo '+DBMemo8.Lines.Strings[i]+' est· atingindo seu mÌnimo de 10 kg!'+#13#13+'                         **** CADASTRO ABORTADO ****', mtError, [mbOk], 0);
       end
       else
       begin
       pregos_conta:=StrToFloat(ADOQuery12.FieldByName('qtde').Value) - StrToFloat(banco_aux.FieldByName('qtde').Value);
       ADOquery12.Edit;
       ADOQuery12.FieldByName('qtde').Value:=pregos_conta;
       ADOquery12.Post;
       end;

     end
     else
     begin
     erro_for:=True;
     MessageDlg(#13+'N„o existe no Estoque de pregos o tipo '+DBMemo8.Lines.Strings[i]+'!'+#13#13+'       **** CADASTRO ABORTADO ****', mtError, [mbOk], 0);
     end;
   end;

   if DBMemo10.Lines.Strings[i] <> '' then
   begin
   var_while := true;
     if ADOQuery9.Locate('tipo', Trim(DBMemo10.Lines.Strings[i]), []) then
     begin
     banco_aux.Locate('tipo', Trim(Memo6.Lines.Strings[i]), []);

       if ( (StrToFloat(ADOQuery9.FieldByName('qtde').Value) - StrToFloat(banco_aux.FieldByName('qtde').Value)) <= 10 ) then
       begin
       erro_for:=True;
       MessageDlg(#13+'A quantidade de espuma do tipo '+DBMemo10.Lines.Strings[i]+' est· atingindo seu mÌnimo de 10 m≤!'+#13#13+'                         **** CADASTRO ABORTADO ****', mtError, [mbOk], 0);
       end
       else
       begin
       espuma_conta:=StrToFloat(ADOQuery9.FieldByName('qtde').Value) - StrToFloat(banco_aux.FieldByName('qtde').Value);
       ADOquery9.Edit;
       ADOQuery9.FieldByName('qtde').Value:=espuma_conta;
       ADOquery9.Post;
       end;

     end
     else
     begin
     erro_for:=True;
     MessageDlg(#13+'N„o existe no Estoque de espuma o tipo '+DBMemo10.Lines.Strings[i]+'!'+#13#13+'       **** CADASTRO ABORTADO ****', mtError, [mbOk], 0);
     end;
   end;

   if DBMemo12.Lines.Strings[i] <> '' then
   begin
   var_while := true;
     if ADOQuery11.Locate('tipo', Trim(DBMemo12.Lines.Strings[i]), []) then
     begin
     banco_aux.Locate('tipo', Trim(Memo7.Lines.Strings[i]), []);

       if ( (StrToFloat(ADOQuery11.FieldByName('qtde').Value) - StrToFloat(banco_aux.FieldByName('qtde').Value)) <= 10000 ) then
       begin
       erro_for:=True;
       MessageDlg(#13+'A quantidade de grampos do tipo '+DBMemo12.Lines.Strings[i]+' est· atingindo seu mÌnimo de 10.000 kg!'+#13#13+'                         **** CADASTRO ABORTADO ****', mtError, [mbOk], 0);
       end
       else
       begin
       grampos_conta:=StrToFloat(ADOQuery11.FieldByName('qtde').Value) - StrToFloat(banco_aux.FieldByName('qtde').Value);
       ADOquery11.Edit;
       ADOQuery11.FieldByName('qtde').Value:=grampos_conta;
       ADOquery11.Post;
       end;

     end
     else
     begin
     erro_for:=True;
     MessageDlg(#13+'N„o existe no Estoque de grampos o tipo '+DBMemo12.Lines.Strings[i]+'!'+#13#13+'       **** CADASTRO ABORTADO ****', mtError, [mbOk], 0);
     end;
   end;

   if DBMemo14.Lines.Strings[i] <> '' then
   begin
   var_while := true;
     if ADOQuery13.Locate('tipo', Trim(DBMemo14.Lines.Strings[i]), []) then
     begin
     banco_aux.Locate('tipo', Trim(Memo8.Lines.Strings[i]), []);

       if ( (StrToFloat(ADOQuery13.FieldByName('qtde').Value) - StrToFloat(banco_aux.FieldByName('qtde').Value)) <= 10 ) then
       begin
       erro_for:=True;
       MessageDlg(#13+'A quantidade de percinta do tipo '+DBMemo14.Lines.Strings[i]+' est· atingindo seu mÌnimo de 10 kg!'+#13#13+'                         **** CADASTRO ABORTADO ****', mtError, [mbOk], 0);
       end
       else
       begin
       percinta_conta:=StrToFloat(ADOQuery13.FieldByName('qtde').Value) - StrToFloat(banco_aux.FieldByName('qtde').Value);
       ADOquery13.Edit;
       ADOQuery13.FieldByName('qtde').Value:=percinta_conta;
       ADOquery13.Post;
       end;

     end
     else
     begin
     erro_for:=True;
     MessageDlg(#13+'N„o existe no Estoque de percinta o tipo '+DBMemo14.Lines.Strings[i]+'!'+#13#13+'       **** CADASTRO ABORTADO ****', mtError, [mbOk], 0);
     end;
   end;

 if erro_for = True then
 begin
 gravar.Enabled:=False;
 break;
 end;
 i := i+1;
 end;
 //DEBITAR DO ESTOQUE - FIM

 //(INICIO) - CASO N√O D  ALGUM ERRO NO FOR DE DEBITAR DO ESTOQUE
 if (erro_for = False) then
 begin

  ADOQuery4.FieldByName('nome').Text:=dbvendedor.Text;
  ADOQuery4.FieldByName('cliente').Text:=Label11.Caption;
  ADOQuery4.FieldByName('status').Text:='CADASTRADO';

  //Grava qual a forma de pagamento
  if p1.Checked = True then
  ADOQuery4.FieldByName('pagamento').Text:='1'
  else if p2.Checked = True then
  ADOQuery4.FieldByName('pagamento').Text:='2'
  else if p3.Checked = True then
  ADOQuery4.FieldByName('pagamento').Text:='3'
  else if p4.Checked = True then
  ADOQuery4.FieldByName('pagamento').Text:='4'
  else if p5.Checked = True then
  ADOQuery4.FieldByName('pagamento').Text:='5';

  ADOQuery4.FieldByName('valor_total').Text:=FloatToStr(pag_total);
  ADOQuery4.FieldByName('data_pedido').Text:=DateToStr(date);
  ADOQuery4.FieldByName('horario').Text:=TimeToStr(Time);
  ADOQuery4.FieldByName('valor_modelos').Text:=Label12.Caption;

  ADOQuery4.FieldByName('cod_vendedor').Text:=ADOQuery1.FieldByName('CÛdigo').Text;


  //Abaixo para pegar o mes por extenso para facilitar nos gr·ficos
  DecodeDate(date,ano,mes,dia);

     if mes = 1 then
     mes_string:='JANEIRO'
     else if mes = 2 then
     mes_string:='FEVEREIRO'
     else if mes = 3 then
     mes_string:='MAR«O'
     else if mes = 4 then
     mes_string:='ABRIL'
     else if mes = 5 then
     mes_string:='MAIO'
     else if mes = 6 then
     mes_string:='JUNHO'
     else if mes = 7 then
     mes_string:='JULHO'
     else if mes = 8 then
     mes_string:='AGOSTO'
     else if mes = 9 then
     mes_string:='SETEMBRO'
     else if mes = 10 then
     mes_string:='OUTUBRO'
     else if mes = 11 then
     mes_string:='NOVEMBRO'
     else if mes = 12 then
     mes_string:='DEZEMBRO';

     ADOQuery4.FieldByName('mes').Value := mes_string;
     ADOQuery4.FieldByName('ano').Value := ano;

  ADOQuery4.Post;

  //Grava o cheque na base de Cheques
  if ( ((DBEdit1.Enabled = True) and (DBEdit1.Text <> '')) and
       ((DBEdit2.Enabled = True) and (DBEdit2.Text <> '')) ) then
       begin
       ADOQuery5.Append;
       ADOQuery5.FieldByName('nome_cheque').Text:=Trim(DBEdit1.Text);
       ADOQuery5.FieldByName('n_cheque').Text:=Trim(DBEdit2.Text);
       ADOQuery5.FieldByName('valor').Text:=Trim(DBEdit7.Text);
       ADOQuery5.Post;
       end;
       if ( ((DBEdit3.Enabled = True) and (DBEdit3.Text <> '')) and
       ((DBEdit4.Enabled = True) and (DBEdit4.Text <> '')) ) then
       begin
       ADOQuery5.Append;
       ADOQuery5.FieldByName('nome_cheque').Text:=Trim(DBEdit3.Text);
       ADOQuery5.FieldByName('n_cheque').Text:=Trim(DBEdit4.Text);
       ADOQuery5.FieldByName('valor').Text:=Trim(DBEdit8.Text);
       ADOQuery5.Post;
       end;
       if ( ((DBEdit5.Enabled = True) and (DBEdit5.Text <> '')) and
       ((DBEdit6.Enabled = True) and (DBEdit6.Text <> '')) ) then
       begin
       ADOQuery5.Append;
       ADOQuery5.FieldByName('nome_cheque').Text:=Trim(DBEdit5.Text);
       ADOQuery5.FieldByName('n_cheque').Text:=Trim(DBEdit6.Text);
       ADOQuery5.FieldByName('valor').Text:=Trim(DBEdit9.Text);
       ADOQuery5.Post;
       end;

  //ABAIXO CREDITA NO CAIXA DA EMPRESA
  ADOQuery7.Active:=True;
  ADOQuery7.Edit;
  ADOQuery7.FieldByName('valor').Text:=FloatToStr(StrToFloat(ADOQuery7.FieldByName('valor').Text)+pag_total);
  ADOQuery7.Post;
  ADOQuery7.Active:=False;

  MessageDlg(#13+'Pedido n∫ '+dbtext1.Caption+' cadastrado com sucesso!', mtInformation, [mbOk], 0);

  //DEBITAR DO ESTOQUE
  ADOQuery6.Active:=False;
  ADOQuery8.Active:=False;
  ADOQuery9.Active:=False;
  ADOQuery10.Active:=False;
  ADOQuery11.Active:=False;
  ADOQuery12.Active:=False;
  ADOQuery13.Active:=False;

  //LIMPA O BANCO DE DADOS AUXILIAR
  banco_aux.First;
  while banco_aux.Eof = False do
  begin
  banco_aux.Next;
  banco_aux.delete;
  end;

  //DESATIVA O BANCO DE DADOS AUXILIAR
  banco_aux.Active:=False;

  //Abaixo s„o os Edit's
  dbvendedor.Enabled:=False;
  ListBox1.Enabled:=False;
  ListBox2.Enabled:=False;
  ListBox3.Enabled:=False;
  dbacrescimo.Enabled:=False;
  dbentrega.Enabled:=False;
  DBText1.Enabled:=False;

  Label13.Enabled:=False;
  Label14.Enabled:=False;

  //Abaixo os campos dos Cheques
  DBEdit1.Enabled:=False;
  DBEdit2.Enabled:=False;
  DBEdit3.Enabled:=False;
  DBEdit4.Enabled:=False;
  DBEdit5.Enabled:=False;
  DBEdit6.Enabled:=False;

  //Abaixo as caixas de marcaÁ„o
  p1.Enabled:=False;
  p2.Enabled:=False;
  p3.Enabled:=False;
  p4.Enabled:=False;
  p5.Enabled:=False;

  //Abaixo s„o os Botıes
  btn01.Enabled:=False;
  btn04.Enabled:=False;

  novo.Enabled:=True;
  Timer2.Enabled:=False;
  gravar.Enabled:=False;
  end;
  //(FIM) - CASO N√O D  ALGUM ERRO NO FOR DE DEBITAR DO ESTOQUE

 end
   //CASO NAO CONFIRME O PEDIDO (CLIQUE EM N√O)
   else
   begin
   //DEBITAR DO ESTOQUE
   ADOQuery6.Active:=False;
   ADOQuery8.Active:=False;
   ADOQuery9.Active:=False;
   ADOQuery10.Active:=False;
   ADOQuery11.Active:=False;
   ADOQuery12.Active:=False;
   ADOQuery13.Active:=False;

   //DESATIVA O BANCO DE DADOS AUXILIAR
   banco_aux.Active:=False;
   end;

end;


end;

procedure TForm21.btn01Click(Sender: TObject);
var
i,i2,i3: integer;
controle: boolean;
begin
//Ativa o Banco de Dados auxiliar
banco_aux.Active:=True;

Memo1.Clear;

Edit1.Text:=Trim(Inputbox('Quantidade de Modelos','Digite a quantidade que deseja adicionar:',''));
 if Edit1.Text <> '' then
 begin
 Timer1.Enabled:=True;

   for i:=0 to (StrToInt(Edit1.Text)-1) Do
   ListBox2.CopySelection(ListBox3);

 //Para cair j· selecionado
 ListBox3.ItemIndex:=0;

 btn04.Enabled:=True;

 Memo1.Lines.Text:=Trim(ListBox3.Items.Text);

{
Move tudo do ListBox3, passa para o Memo, depois procura no Memo
linha-a-linha pelo nome do Modelo e pega o valor daquele modelo
e soma ao Label12(Gravar no BD) e Label13(Mostrar na Tela)
}
 for i:=aux_add to Memo1.Lines.Count-1 Do
 begin
 ADOQuery3.close;
 ADOQuery3.sql.clear;
 ADOQuery3.sql.Add('Select * from modelos where nome = "'+Memo1.Lines.Strings[i]+'"');
 ADOQuery3.open;
 cont:=cont + StrToFloat(ADOQuery3.FieldByName('valor').Value);

 //Aqui conta quantas vezes passou no registro para que no proximo FOR v· a partir dele
 aux_add:=aux_add+1;
 
     if DBMemo2.Lines.Count <> 0 then
     begin

       //ABAIXO N√O DEIXA REPETIR A MATERIA PRIMA NO MEMO
       for i2 := 0 to DBMemo2.Lines.Count Do
       begin
         controle := True;
         for i3 := 0 to Memo2.Lines.Count do
         begin
           if DBMemo2.Lines.Strings[i2] = Memo2.Lines.Strings[i3] then
           controle := False;
         end;
          if controle = True Then
          Memo2.Lines.Add(DBMemo2.Lines.Strings[i2]);
       end;

       for i2 := 0 to DBMemo2.Lines.Count-1 Do
       begin
       ADOQuery6.close;
       ADOQuery6.sql.clear;
       ADOQuery6.sql.Add('Select * from pano where tipo = "'+DBMemo2.Lines.Strings[i2]+'"');
       ADOQuery6.open;

         if ADOQuery6.RecordCount <> 0 then
         begin

           //Pesquisa se aquele tipo È usado em outro modelo ou no mesmo
           if banco_aux.Locate('tipo', DBMemo2.Lines.Strings[i2], []) then
           begin
           //Muda apenas a quantidade dele, caso ache
           banco_aux.Edit;
           banco_aux.FieldByName('qtde').Value:=banco_aux.FieldByName('qtde').Value+StrToFloat(DBMemo3.Lines.Strings[i2]);
           banco_aux.Post;
           end
             //Caso contr·rio ele adiciona novamente o tipo
             else
             begin
             banco_aux.Append;
             banco_aux.FieldByName('tipo').Value:=DBMemo2.Lines.Strings[i2];
             banco_aux.FieldByName('qtde').Value:=DBMemo3.Lines.Strings[i2];
             banco_aux.Post;
             end;

         end
         else
         begin
         MessageDlg(#13+'Um dos tipos de pano utilizado neste modelo n„o est· cadastrado no estoque!', mtWarning, [mbOk], 0);
         break;
         end;
       end;
     end;

     if DBMemo5.Lines.Count <> 0 then
     begin

       //ABAIXO N√O DEIXA REPETIR A MATERIA PRIMA NO MEMO
       for i2 := 0 to DBMemo5.Lines.Count Do
       begin
         controle := True;
         for i3 := 0 to Memo3.Lines.Count do
         begin
           if DBMemo5.Lines.Strings[i2] = Memo3.Lines.Strings[i3] then
           controle := False;
         end;
          if controle = True Then
          Memo3.Lines.Add(DBMemo5.Lines.Strings[i2]);
       end;

       for i2 := 0 to DBMemo5.Lines.Count-1 Do
       begin
       ADOQuery8.close;
       ADOQuery8.sql.clear;
       ADOQuery8.sql.Add('Select * from madeira where tipo = "'+DBMemo5.Lines.Strings[i2]+'"');
       ADOQuery8.open;
         if ADOQuery8.RecordCount <> 0 then
         begin

           //Pesquisa se aquele tipo È usado em outro modelo ou no mesmo
           if banco_aux.Locate('tipo', DBMemo5.Lines.Strings[i2], []) then
           begin
           //Muda apenas a quantidade dele, caso ache
           banco_aux.Edit;
           banco_aux.FieldByName('qtde').Value:=banco_aux.FieldByName('qtde').Value+StrToFloat(DBMemo4.Lines.Strings[i2]);
           banco_aux.Post;
           end
             //Caso contr·rio ele adiciona novamente o tipo
             else
             begin
             banco_aux.Append;
             banco_aux.FieldByName('tipo').Value:=DBMemo5.Lines.Strings[i2];
             banco_aux.FieldByName('qtde').Value:=DBMemo4.Lines.Strings[i2];
             banco_aux.Post;
             end;

         end
         else
         begin
         MessageDlg(#13+'Um dos tipos de madeira utilizado neste modelo n„o est· cadastrado no estoque!', mtWarning, [mbOk], 0);
         break;
         end;
       end;
     end;

     if DBMemo6.Lines.Count <> 0 then
     begin

       //ABAIXO N√O DEIXA REPETIR A MATERIA PRIMA NO MEMO
       for i2 := 0 to DBMemo6.Lines.Count Do
       begin
         controle := True;
         for i3 := 0 to Memo4.Lines.Count do
         begin
           if DBMemo6.Lines.Strings[i2] = Memo4.Lines.Strings[i3] then
           controle := False;
         end;
          if controle = True Then
          Memo4.Lines.Add(DBMemo6.Lines.Strings[i2]);
       end;

       for i2 := 0 to DBMemo6.Lines.Count-1 Do
       begin
       ADOQuery10.close;
       ADOQuery10.sql.clear;
       ADOQuery10.sql.Add('Select * from flocos where tipo = "'+DBMemo6.Lines.Strings[i2]+'"');
       ADOQuery10.open;
         if ADOQuery10.RecordCount <> 0 then
         begin

           //Pesquisa se aquele tipo È usado em outro modelo ou no mesmo
           if banco_aux.Locate('tipo', DBMemo6.Lines.Strings[i2], []) then
           begin
           //Muda apenas a quantidade dele, caso ache
           banco_aux.Edit;
           banco_aux.FieldByName('qtde').Value:=banco_aux.FieldByName('qtde').Value+StrToFloat(DBMemo7.Lines.Strings[i2]);
           banco_aux.Post;
           end
             //Caso contr·rio ele adiciona novamente o tipo
             else
             begin
             banco_aux.Append;
             banco_aux.FieldByName('tipo').Value:=DBMemo6.Lines.Strings[i2];
             banco_aux.FieldByName('qtde').Value:=DBMemo7.Lines.Strings[i2];
             banco_aux.Post;
             end;

         end
         else
         begin
         MessageDlg(#13+'Um dos tipos de flocos utilizados neste modelo n„o est· cadastrado no estoque!', mtWarning, [mbOk], 0);
         break;
         end;
       end;
     end;

     if DBMemo8.Lines.Count <> 0 then
     begin

       //ABAIXO N√O DEIXA REPETIR A MATERIA PRIMA NO MEMO
       for i2 := 0 to DBMemo8.Lines.Count Do
       begin
         controle := True;
         for i3 := 0 to Memo5.Lines.Count do
         begin
           if DBMemo8.Lines.Strings[i2] = Memo5.Lines.Strings[i3] then
           controle := False;
         end;
          if controle = True Then
          Memo5.Lines.Add(DBMemo8.Lines.Strings[i2]);
       end;

       for i2 := 0 to DBMemo8.Lines.Count-1 Do
       begin
       ADOQuery12.close;
       ADOQuery12.sql.clear;
       ADOQuery12.sql.Add('Select * from pregos where tipo = "'+DBMemo8.Lines.Strings[i2]+'"');
       ADOQuery12.open;
         if ADOQuery12.RecordCount <> 0 then
         begin

           //Pesquisa se aquele tipo È usado em outro modelo ou no mesmo
           if banco_aux.Locate('tipo', DBMemo8.Lines.Strings[i2], []) then
           begin
           //Muda apenas a quantidade dele, caso ache
           banco_aux.Edit;
           banco_aux.FieldByName('qtde').Value:=banco_aux.FieldByName('qtde').Value+StrToFloat(DBMemo9.Lines.Strings[i2]);
           banco_aux.Post;
           end
             //Caso contr·rio ele adiciona novamente o tipo
             else
             begin
             banco_aux.Append;
             banco_aux.FieldByName('tipo').Value:=DBMemo8.Lines.Strings[i2];
             banco_aux.FieldByName('qtde').Value:=DBMemo9.Lines.Strings[i2];
             banco_aux.Post;
             end;

         end
         else
         begin
         MessageDlg(#13+'Um dos tipos de pregos utilizados neste modelo n„o est· cadastrado no estoque!', mtWarning, [mbOk], 0);
         break;
         end;
       end;
     end;

     if DBMemo10.Lines.Count <> 0 then
     begin

       //ABAIXO N√O DEIXA REPETIR A MATERIA PRIMA NO MEMO
       for i2 := 0 to DBMemo10.Lines.Count Do
       begin
         controle := True;
         for i3 := 0 to Memo6.Lines.Count do
         begin
           if DBMemo10.Lines.Strings[i2] = Memo6.Lines.Strings[i3] then
           controle := False;
         end;
          if controle = True Then
          Memo6.Lines.Add(DBMemo10.Lines.Strings[i2]);
       end;

       for i2 := 0 to DBMemo10.Lines.Count-1 Do
       begin
       ADOQuery9.close;
       ADOQuery9.sql.clear;
       ADOQuery9.sql.Add('Select * from espuma where tipo = "'+DBMemo10.Lines.Strings[i2]+'"');
       ADOQuery9.open;
         if ADOQuery9.RecordCount <> 0 then
         begin

           //Pesquisa se aquele tipo È usado em outro modelo ou no mesmo
           if banco_aux.Locate('tipo', DBMemo10.Lines.Strings[i2], []) then
           begin
           //Muda apenas a quantidade dele, caso ache
           banco_aux.Edit;
           banco_aux.FieldByName('qtde').Value:=banco_aux.FieldByName('qtde').Value+StrToFloat(DBMemo11.Lines.Strings[i2]);
           banco_aux.Post;
           end
             //Caso contr·rio ele adiciona novamente o tipo
             else
             begin
             banco_aux.Append;
             banco_aux.FieldByName('tipo').Value:=DBMemo10.Lines.Strings[i2];
             banco_aux.FieldByName('qtde').Value:=DBMemo11.Lines.Strings[i2];
             banco_aux.Post;
             end;

         end
         else
         begin
         MessageDlg(#13+'Um dos tipos de espuma utilizados neste modelo n„o est· cadastrado no estoque!', mtWarning, [mbOk], 0);
         break;
         end;
       end;
     end;

     if DBMemo12.Lines.Count <> 0 then
     begin

       //ABAIXO N√O DEIXA REPETIR A MATERIA PRIMA NO MEMO
       for i2 := 0 to DBMemo12.Lines.Count Do
       begin
         controle := True;
         for i3 := 0 to Memo7.Lines.Count do
         begin
           if DBMemo12.Lines.Strings[i2] = Memo7.Lines.Strings[i3] then
           controle := False;
         end;
          if controle = True Then
          Memo7.Lines.Add(DBMemo12.Lines.Strings[i2]);
       end;

       for i2 := 0 to DBMemo12.Lines.Count-1 Do
       begin
       ADOQuery11.close;
       ADOQuery11.sql.clear;
       ADOQuery11.sql.Add('Select * from grampos where tipo = "'+DBMemo12.Lines.Strings[i2]+'"');
       ADOQuery11.open;
         if ADOQuery11.RecordCount <> 0 then
         begin

           //Pesquisa se aquele tipo È usado em outro modelo ou no mesmo
           if banco_aux.Locate('tipo', DBMemo12.Lines.Strings[i2], []) then
           begin
           //Muda apenas a quantidade dele, caso ache
           banco_aux.Edit;
           banco_aux.FieldByName('qtde').Value:=banco_aux.FieldByName('qtde').Value+StrToFloat(DBMemo13.Lines.Strings[i2]);
           banco_aux.Post;
           end
             //Caso contr·rio ele adiciona novamente o tipo
             else
             begin
             banco_aux.Append;
             banco_aux.FieldByName('tipo').Value:=DBMemo12.Lines.Strings[i2];
             banco_aux.FieldByName('qtde').Value:=DBMemo13.Lines.Strings[i2];
             banco_aux.Post;
             end;

         end
         else
         begin
         MessageDlg(#13+'Um dos tipos de grampos utilizados neste modelo n„o est· cadastrado no estoque!', mtWarning, [mbOk], 0);
         break;
         end;
       end;
     end;

     if DBMemo14.Lines.Count <> 0 then
     begin

       //ABAIXO N√O DEIXA REPETIR A MATERIA PRIMA NO MEMO
       for i2 := 0 to DBMemo14.Lines.Count Do
       begin
         controle := True;
         for i3 := 0 to Memo8.Lines.Count do
         begin
           if DBMemo14.Lines.Strings[i2] = Memo8.Lines.Strings[i3] then
           controle := False;
         end;
          if controle = True Then
          Memo8.Lines.Add(DBMemo14.Lines.Strings[i2]);
       end;

       for i2 := 0 to DBMemo14.Lines.Count-1 Do
       begin
       ADOQuery13.close;
       ADOQuery13.sql.clear;
       ADOQuery13.sql.Add('Select * from pecinta where tipo = "'+DBMemo14.Lines.Strings[i2]+'"');
       ADOQuery13.open;
         if ADOQuery13.RecordCount <> 0 then
         begin

           //Pesquisa se aquele tipo È usado em outro modelo ou no mesmo
           if banco_aux.Locate('tipo', DBMemo14.Lines.Strings[i2], []) then
           begin
           //Muda apenas a quantidade dele, caso ache
           banco_aux.Edit;
           banco_aux.FieldByName('qtde').Value:=banco_aux.FieldByName('qtde').Value+StrToFloat(DBMemo15.Lines.Strings[i2]);
           banco_aux.Post;
           end
             //Caso contr·rio ele adiciona novamente o tipo
             else
             begin
             banco_aux.Append;
             banco_aux.FieldByName('tipo').Value:=DBMemo14.Lines.Strings[i2];
             banco_aux.FieldByName('qtde').Value:=DBMemo15.Lines.Strings[i2];
             banco_aux.Post;
             end;

         end
         else
         begin
         MessageDlg(#13+'Um dos tipos de percinta utilizados neste modelo n„o est· cadastrado no estoque!', mtWarning, [mbOk], 0);
         break;
         end;
       end;
     end;

Label12.Caption:=FloatToStr(cont);
Label13.Caption:=Format('%5.2m',[cont]);  
 end;

end;

end;

procedure TForm21.btn04Click(Sender: TObject);
begin
Memo1.Clear;
ListBox3.Clear;
gravar.Enabled:=False;

aux_add:=0;
cont:=0;

  //LIMPA O BANCO DE DADOS AUXILIAR
  banco_aux.First;
  while banco_aux.Eof = False do
  begin
  banco_aux.Next;
  banco_aux.delete;
  end;

  //DESATIVA O BANCO DE DADOS AUXILIAR
  banco_aux.Active:=False;

Label12.Caption:='0';
Label13.Caption:='0,00';
end;

procedure TForm21.dbentregaKeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞-<>!@#$%®&*()_+={}[]?;:.|\,*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVXYZW';
min = 'abcdefghijklmnopqrstuvxyzw';
Var
Str : String;
begin
inherited;
Str := key;
if (Pos(Str,especiais+mai+min)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
dbentrega.SetFocus;
end;

end;

procedure TForm21.DBEdit1KeyPress(Sender: TObject; var Key: Char);
Const
especiais = '0123456789π≤≥£¢¨™∫∞-<>!@#$%®&*()_+={}[]?;:.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
Var
Str : String;
begin
inherited;
Str := key;
if (Pos(Str,especiais)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
DBEdit1.SetFocus;
end;
end;

procedure TForm21.DBEdit3KeyPress(Sender: TObject; var Key: Char);
Const
especiais = '0123456789π≤≥£¢¨™∫∞-<>!@#$%®&*()_+={}[]?;:.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
Var
Str : String;
begin
inherited;
Str := key;
if (Pos(Str,especiais)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
DBEdit3.SetFocus;
end;
end;

procedure TForm21.DBEdit5KeyPress(Sender: TObject; var Key: Char);
Const
especiais = '0123456789π≤≥£¢¨™∫∞-<>!@#$%®&*()_+={}[]?;:.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
Var
Str : String;
begin
inherited;
Str := key;
if (Pos(Str,especiais)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
DBEdit5.SetFocus;
end;
end;

procedure TForm21.DBEdit2KeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞-<>!@#$%®&*()_+={}[]?;:,.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVXYZW';
min = 'abcdefghijklmnopqrstuvxyzw';
Var
Str : String;
begin
inherited;
Str := key;
if (Pos(Str,especiais+mai+min)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
DBEdit2.SetFocus;
end;
end;

procedure TForm21.DBEdit4KeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞-<>!@#$%®&*()_+={}[]?;:,.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVXYZW';
min = 'abcdefghijklmnopqrstuvxyzw';
Var
Str : String;
begin
inherited;
Str := key;
if (Pos(Str,especiais+mai+min)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
DBEdit4.SetFocus;
end;
end;

procedure TForm21.DBEdit6KeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞-<>!@#$%®&*()_+={}[]?;:,.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVXYZW';
min = 'abcdefghijklmnopqrstuvxyzw';
Var
Str : String;
begin
inherited;
Str := key;
if (Pos(Str,especiais+mai+min)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
DBEdit6.SetFocus;
end;
end;

procedure TForm21.DBEdit1Exit(Sender: TObject);
begin
DBEdit1.Text:=trim(uppercase(DBEdit1.Text));
end;

procedure TForm21.DBEdit3Exit(Sender: TObject);
begin
DBEdit3.Text:=trim(uppercase(DBEdit3.Text));
end;

procedure TForm21.DBEdit5Exit(Sender: TObject);
begin
DBEdit5.Text:=trim(uppercase(DBEdit5.Text));
end;

procedure TForm21.DBEdit7KeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞-<>!@#$%®&*()_+={}[]?;:.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVXYZW';
min = 'abcdefghijklmnopqrstuvxyzw';
Var
Str : String;
begin
inherited;
Str := key;
if (Pos(Str,especiais+mai+min)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
DBEdit7.SetFocus;
end;
end;

procedure TForm21.DBEdit8KeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞-<>!@#$%®&*()_+={}[]?;:.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVXYZW';
min = 'abcdefghijklmnopqrstuvxyzw';
Var
Str : String;
begin
inherited;
Str := key;
if (Pos(Str,especiais+mai+min)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
DBEdit8.SetFocus;
end;
end;

procedure TForm21.DBEdit9KeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞-<>!@#$%®&*()_+={}[]?;:.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVXYZW';
min = 'abcdefghijklmnopqrstuvxyzw';
Var
Str : String;
begin
inherited;
Str := key;
if (Pos(Str,especiais+mai+min)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
DBEdit9.SetFocus;
end;
end;

procedure TForm21.Timer1Timer(Sender: TObject);
begin
if ListBox3.Items.Count = 0 then
begin
btn04.Enabled:=False;
Timer1.Enabled:=False;
end;
end;

procedure TForm21.FormCreate(Sender: TObject);
begin
aux_add:=0;
cont:=0;
end;

procedure TForm21.ListBox1Click(Sender: TObject);
begin
Label11.Caption:=ListBox1.Items.Strings[ListBox1.ItemIndex];
end;

procedure TForm21.Timer2Timer(Sender: TObject);
begin
if ((dbvendedor.ItemIndex <> -1) and
   (ListBox1.Items.Count > 0)    and
   (ListBox2.Items.Count > 0)    and
   (ListBox3.Items.Count > 0)    and
   ((p1.Checked <> False) or
   (p2.Checked <> False) or
   (p3.Checked <> False) or
   (p4.Checked <> False) or
   (p5.Checked <> False)) and
   (Trim(dbacrescimo.Text) <> '') and
   (Trim(dbentrega.Text) <> '') )
then
gravar.Enabled:=True
else
gravar.Enabled:=False;

end;

end.
