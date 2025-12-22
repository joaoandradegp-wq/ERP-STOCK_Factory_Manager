unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, ExtCtrls, Mask, DBCtrls, Buttons,ComObj,
  ADODB, ComCtrls;

type
  TForm4 = class(TForm)
    Bevel2: TBevel;
    Bevel6: TBevel;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    fechar: TSpeedButton;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource3: TDataSource;
    ADOQuery3: TADOQuery;
    DataSource4: TDataSource;
    ADOQuery4: TADOQuery;
    DataSource5: TDataSource;
    ADOQuery5: TADOQuery;
    DataSource6: TDataSource;
    ADOQuery6: TADOQuery;
    DataSource7: TDataSource;
    ADOQuery7: TADOQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    GroupBox8: TGroupBox;
    Label13: TLabel;
    Label22: TLabel;
    Bevel11: TBevel;
    Label17: TLabel;
    dbpecinta_qtde: TDBEdit;
    GroupBox14: TGroupBox;
    novo7: TSpeedButton;
    gravar7: TSpeedButton;
    cancelar7: TSpeedButton;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label19: TLabel;
    Bevel9: TBevel;
    dbgrampo_qtde: TDBEdit;
    GroupBox12: TGroupBox;
    novo5: TSpeedButton;
    gravar5: TSpeedButton;
    cancelar5: TSpeedButton;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label16: TLabel;
    Bevel7: TBevel;
    dbespuma_tipo: TDBComboBox;
    dbespuma_qtde: TDBEdit;
    GroupBox10: TGroupBox;
    novo3: TSpeedButton;
    gravar3: TSpeedButton;
    cancelar3: TSpeedButton;
    GroupBox6: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label20: TLabel;
    Bevel10: TBevel;
    dbpregos_tipo: TDBComboBox;
    dbprego_qtde: TDBEdit;
    GroupBox13: TGroupBox;
    novo6: TSpeedButton;
    gravar6: TSpeedButton;
    cancelar6: TSpeedButton;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label18: TLabel;
    Bevel8: TBevel;
    dbflocos_tipo: TDBComboBox;
    dbflocos_qtde: TDBEdit;
    GroupBox11: TGroupBox;
    novo4: TSpeedButton;
    gravar4: TSpeedButton;
    cancelar4: TSpeedButton;
    GroupBox7: TGroupBox;
    Label10: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Bevel5: TBevel;
    SpeedButton4: TSpeedButton;
    dbmadeira_tipo: TDBComboBox;
    dbmadeira_qtde: TDBEdit;
    GroupBox9: TGroupBox;
    novo2: TSpeedButton;
    gravar2: TSpeedButton;
    cancelar2: TSpeedButton;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Bevel1: TBevel;
    dbpano_qtde: TDBEdit;
    GroupBox1: TGroupBox;
    novo1: TSpeedButton;
    gravar1: TSpeedButton;
    cancelar1: TSpeedButton;
    ADOQuery8: TADOQuery;
    DataSource8: TDataSource;
    dbcaixa: TDBEdit;
    ADOQuery8valor: TBCDField;
    dbpano_valor: TEdit;
    ADOQuery1tipo: TWideStringField;
    ADOQuery1qtde: TWideStringField;
    ADOQuery2tipo: TWideStringField;
    ADOQuery2qtde: TWideStringField;
    ADOQuery3tipo: TWideStringField;
    ADOQuery3qtde: TWideStringField;
    ADOQuery4tipo: TWideStringField;
    ADOQuery4qtde: TWideStringField;
    ADOQuery5tipo: TWideStringField;
    ADOQuery5qtde: TWideStringField;
    ADOQuery7tipo: TWideStringField;
    ADOQuery7qtde: TWideStringField;
    dbflocos_valor: TEdit;
    dbmadeira_valor: TEdit;
    dbpregos_valor: TEdit;
    dbespuma_valor: TEdit;
    dbgrampos_valor: TEdit;
    dbpecinta_valor: TEdit;
    dbgrampos_tipo: TDBComboBox;
    dbpercinta_tipo: TDBComboBox;
    ADOQuery6tipo: TWideStringField;
    ADOQuery6qtde: TWideStringField;
    ADOQuery9: TADOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    dbpano_tipo: TDBComboBox;
    ADOQuery10: TADOQuery;
    ADOQuery11: TADOQuery;
    ADOQuery12: TADOQuery;
    ADOQuery13: TADOQuery;
    ADOQuery14: TADOQuery;
    ADOQuery15: TADOQuery;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label21: TLabel;
    ADOQuery10tipo: TWideStringField;
    ADOQuery10qtde: TWideStringField;
    ADOQuery11tipo: TWideStringField;
    ADOQuery11qtde: TWideStringField;
    ADOQuery12tipo: TWideStringField;
    ADOQuery12qtde: TWideStringField;
    ADOQuery13tipo: TWideStringField;
    ADOQuery13qtde: TWideStringField;
    ADOQuery14tipo: TWideStringField;
    ADOQuery14qtde: TWideStringField;
    ADOQuery15tipo: TWideStringField;
    ADOQuery15qtde: TWideStringField;
    procedure novo1Click(Sender: TObject);
    procedure gravar1Click(Sender: TObject);
    procedure cancelar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure fecharClick(Sender: TObject);
    procedure dbpano_tipoClick(Sender: TObject);
    procedure dbpano_tipoEnter(Sender: TObject);
    procedure dbpano_tipoExit(Sender: TObject);
    procedure dbpano_tipoKeyPress(Sender: TObject; var Key: Char);
    procedure dbpano_qtdeKeyPress(Sender: TObject; var Key: Char);
    procedure dbpano_qtdeClick(Sender: TObject);
    procedure dbpano_qtdeEnter(Sender: TObject);
    procedure dbpano_qtdeExit(Sender: TObject);
    procedure novo2Click(Sender: TObject);
    procedure novo4Click(Sender: TObject);
    procedure novo6Click(Sender: TObject);
    procedure novo3Click(Sender: TObject);
    procedure novo5Click(Sender: TObject);
    procedure novo7Click(Sender: TObject);
    procedure cancelar2Click(Sender: TObject);
    procedure cancelar4Click(Sender: TObject);
    procedure cancelar6Click(Sender: TObject);
    procedure cancelar3Click(Sender: TObject);
    procedure cancelar5Click(Sender: TObject);
    procedure cancelar7Click(Sender: TObject);
    procedure gravar2Click(Sender: TObject);
    procedure gravar4Click(Sender: TObject);
    procedure gravar6Click(Sender: TObject);
    procedure gravar3Click(Sender: TObject);
    procedure gravar5Click(Sender: TObject);
    procedure gravar7Click(Sender: TObject);
    procedure dbpano_valorClick(Sender: TObject);
    procedure dbpano_valorEnter(Sender: TObject);
    procedure dbpano_valorExit(Sender: TObject);
    procedure dbpano_valorKeyPress(Sender: TObject; var Key: Char);
    procedure dbmadeira_tipoClick(Sender: TObject);
    procedure dbflocos_tipoClick(Sender: TObject);
    procedure dbpregos_tipoClick(Sender: TObject);
    procedure dbespuma_tipoClick(Sender: TObject);
    procedure dbgrampos_tipoClick(Sender: TObject);
    procedure dbmadeira_tipoEnter(Sender: TObject);
    procedure dbflocos_tipoEnter(Sender: TObject);
    procedure dbpregos_tipoEnter(Sender: TObject);
    procedure dbespuma_tipoEnter(Sender: TObject);
    procedure dbgrampos_tipoEnter(Sender: TObject);
    procedure dbmadeira_tipoExit(Sender: TObject);
    procedure dbflocos_tipoExit(Sender: TObject);
    procedure dbpregos_tipoExit(Sender: TObject);
    procedure dbespuma_tipoExit(Sender: TObject);
    procedure dbgrampos_tipoExit(Sender: TObject);
    procedure dbmadeira_tipoKeyPress(Sender: TObject; var Key: Char);
    procedure dbflocos_tipoKeyPress(Sender: TObject; var Key: Char);
    procedure dbpregos_tipoKeyPress(Sender: TObject; var Key: Char);
    procedure dbespuma_tipoKeyPress(Sender: TObject; var Key: Char);
    procedure dbmadeira_qtdeClick(Sender: TObject);
    procedure dbmadeira_qtdeEnter(Sender: TObject);
    procedure dbflocos_qtdeClick(Sender: TObject);
    procedure dbflocos_qtdeEnter(Sender: TObject);
    procedure dbprego_qtdeClick(Sender: TObject);
    procedure dbprego_qtdeEnter(Sender: TObject);
    procedure dbespuma_qtdeClick(Sender: TObject);
    procedure dbespuma_qtdeEnter(Sender: TObject);
    procedure dbgrampo_qtdeClick(Sender: TObject);
    procedure dbgrampo_qtdeEnter(Sender: TObject);
    procedure dbpecinta_qtdeClick(Sender: TObject);
    procedure dbpecinta_qtdeEnter(Sender: TObject);
    procedure dbmadeira_qtdeExit(Sender: TObject);
    procedure dbflocos_qtdeExit(Sender: TObject);
    procedure dbprego_qtdeExit(Sender: TObject);
    procedure dbespuma_qtdeExit(Sender: TObject);
    procedure dbgrampo_qtdeExit(Sender: TObject);
    procedure dbpecinta_qtdeExit(Sender: TObject);
    procedure dbmadeira_qtdeKeyPress(Sender: TObject; var Key: Char);
    procedure dbflocos_qtdeKeyPress(Sender: TObject; var Key: Char);
    procedure dbprego_qtdeKeyPress(Sender: TObject; var Key: Char);
    procedure dbespuma_qtdeKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrampo_qtdeKeyPress(Sender: TObject; var Key: Char);
    procedure dbpecinta_qtdeKeyPress(Sender: TObject; var Key: Char);
    procedure dbmadeira_valorClick(Sender: TObject);
    procedure dbmadeira_valorEnter(Sender: TObject);
    procedure dbflocos_valorClick(Sender: TObject);
    procedure dbflocos_valorEnter(Sender: TObject);
    procedure dbpregos_valorClick(Sender: TObject);
    procedure dbpregos_valorEnter(Sender: TObject);
    procedure dbespuma_valorClick(Sender: TObject);
    procedure dbespuma_valorEnter(Sender: TObject);
    procedure dbgrampos_valorClick(Sender: TObject);
    procedure dbgrampos_valorEnter(Sender: TObject);
    procedure dbpecinta_valorClick(Sender: TObject);
    procedure dbpecinta_valorEnter(Sender: TObject);
    procedure dbmadeira_valorExit(Sender: TObject);
    procedure dbflocos_valorExit(Sender: TObject);
    procedure dbpregos_valorExit(Sender: TObject);
    procedure dbespuma_valorExit(Sender: TObject);
    procedure dbgrampos_valorExit(Sender: TObject);
    procedure dbpecinta_valorExit(Sender: TObject);
    procedure dbmadeira_valorKeyPress(Sender: TObject; var Key: Char);
    procedure dbflocos_valorKeyPress(Sender: TObject; var Key: Char);
    procedure dbpregos_valorKeyPress(Sender: TObject; var Key: Char);
    procedure dbespuma_valorKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrampos_valorKeyPress(Sender: TObject; var Key: Char);
    procedure dbpecinta_valorKeyPress(Sender: TObject; var Key: Char);
    procedure dbpercinta_tipoClick(Sender: TObject);
    procedure dbpercinta_tipoEnter(Sender: TObject);
    procedure dbpercinta_tipoExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgrampos_tipoKeyPress(Sender: TObject; var Key: Char);
    procedure dbpercinta_tipoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  aux: Real;
  marcador: Boolean;
  contador: Double;
  tipo: String;

implementation

uses Unit1, Unit12;

{$R *.DFM}


procedure TForm4.novo1Click(Sender: TObject);
begin
if ADOQuery1.Active = False then
ADOQuery1.Active:=True;

ADOQuery1.Append;

contador:=0;
dbpano_tipo.Text:='';
dbpano_valor.Text:='';

//Abaixo são os Edit's
dbpano_tipo.Enabled:=True;
dbpano_qtde.Enabled:=True;
dbpano_valor.Enabled:=True;

//Abaixo são os Botões
novo1.Enabled:=False;
gravar1.Enabled:=True;
cancelar1.Enabled:=True;

//Abaixo deixa o campo Nome pronto pra digitar
dbpano_tipo.SetFocus;
end;

procedure TForm4.gravar1Click(Sender: TObject);
begin
if (trim(dbpano_tipo.Text) = '')  then
begin
MessageDlg(#13+'Preencha corretamente o tipo de pano.', mtwarning, [mbOk], 0);
dbpano_tipo.SetFocus;
end

else if ( (trim(dbpano_qtde.Text) = '') or (StrToFloat(dbpano_qtde.Text) = 0) ) then
begin
MessageDlg(#13+'Preencha corretamente a metragem do pano.', mtwarning, [mbOk], 0);
dbpano_qtde.SetFocus;
end

else if ( (trim(dbpano_valor.Text) = '') or (StrToFloat(dbpano_valor.Text) = 0) ) then
begin
MessageDlg(#13+'Preencha corretamente o valor total do pano.', mtwarning, [mbOk], 0);
dbpano_valor.SetFocus;
end

else if (StrToFloat(dbpano_valor.text) > StrToFloat(dbcaixa.Text) ) then
begin
MessageDlg(#13+'O valor à ser comprado excede o limite do Caixa!', mtwarning, [mbOk], 0);
dbpano_valor.SetFocus;
end

else if (StrToFloat(dbpano_valor.text) <= StrToFloat(dbcaixa.Text) ) then
begin
marcador:=True;
ADOQuery8.Edit;
aux:=StrToFloat(dbcaixa.Text)-StrToFloat(dbpano_valor.Text);
dbcaixa.Text:=FloatToStr(aux);
ADOQuery8.Post;
end;

 if ( (trim(dbpano_tipo.Text)<>'')
and (trim(dbpano_qtde.Text)<>'')
and (trim(dbpano_valor.Text)<>'')
and (marcador=True) )
then

begin
marcador:=False;
tipo:=uppercase(trim(dbpano_tipo.Text));

ADOQuery1.Post;
     
ADOQuery1.close;
ADOQuery1.sql.clear;
ADOQuery1.sql.Add('Select * from pano where tipo = "'+tipo+'"');
ADOQuery1.open;

if ADOQuery1.RecordCount > 0 then
begin
 {
 Abaixo soma a quantidade que tinha no banco de dados
 com a quantidade que se está cadastrando.
 }
 while not ADOQuery1.Eof do
 begin
 contador:=contador + ADOQuery1.FieldbyName('qtde').value;
 ADOQuery1.Next;
 end;
ADOQuery1.Delete;
ADOQuery1.Edit;
ADOQuery1.FieldbyName('tipo').value:=tipo;
ADOQuery1.FieldbyName('qtde').value:=contador;
ADOQuery1.Post;
end;

//Abaixo são os Edit's
dbpano_tipo.Enabled:=False;
dbpano_qtde.Enabled:=False;
dbpano_valor.Enabled:=False;

//Abaixo são os botões
novo1.Enabled:=True;
gravar1.Enabled:=False;
cancelar1.Enabled:=False;
end;

end;

procedure TForm4.cancelar1Click(Sender: TObject);
begin
ADOQuery1.Cancel;

if ADOQuery1.Active = True then
ADOQuery1.Active:=False;

//Abaixo são os Edit's
dbpano_tipo.Enabled:=False;
dbpano_qtde.Enabled:=False;
dbpano_valor.Enabled:=False;
dbpano_valor.Text:='';

//Abaixo são os botões
novo1.Enabled:=True;
gravar1.Enabled:=False;
cancelar1.Enabled:=False;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
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
if ADOQuery14.Active=True then
ADOQuery14.Active:=false;
if ADOQuery15.Active=True then
ADOQuery15.Active:=false;

Frmprincipal.Enabled:=True;

//Abaixo para Liberar o Form da Memória
Form4.Release;
Form4 := Nil;
end;

procedure TForm4.FormDestroy(Sender: TObject);
begin
frmprincipal.Enabled:=True;
end;

procedure TForm4.fecharClick(Sender: TObject);
begin
Close;
end;

procedure TForm4.dbpano_tipoClick(Sender: TObject);
begin
dbpano_tipo.Color:=clWindow;
end;

procedure TForm4.dbpano_tipoEnter(Sender: TObject);
var
i,y:integer;
begin
dbpano_tipo.Color:=clWindow;

dbpano_tipo.Items.Clear;
dbpano_tipo.ItemIndex:=0;

ADOQuery9.Open;
y:=ADOQuery9.RecordCount;
i:=0;
while i < y do
begin
i:=i+1;
dbpano_tipo.Items.Add(UpperCase(ADOQuery9.Fieldbyname('tipo').Value));
ADOQuery9.Next;
end;
ADOQuery9.Close;
end;

procedure TForm4.dbpano_tipoExit(Sender: TObject);
begin
dbpano_tipo.ParentColor:=True;
end;

procedure TForm4.dbpano_tipoKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_+={}[]?;:,|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
Var
Str : String;
begin
//Abaixo para deixar a letra sempre maiúscula
Key := AnsiUpperCase(Key)[Length(Key)];
inherited;
Str := key;
if (Pos(Str,especiais)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
dbpano_tipo.SetFocus;
end;
end;

procedure TForm4.dbpano_qtdeKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_+={}[]?;:,|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
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
dbpano_qtde.SetFocus;
end;
end;

procedure TForm4.dbpano_qtdeClick(Sender: TObject);
begin
dbpano_qtde.Color:=clWindow;
end;

procedure TForm4.dbpano_qtdeEnter(Sender: TObject);
begin
dbpano_qtde.Color:=clWindow;
end;

procedure TForm4.dbpano_qtdeExit(Sender: TObject);
begin
dbpano_qtde.ParentColor:=True;
end;

procedure TForm4.novo2Click(Sender: TObject);
begin
if ADOQuery2.Active = False then
ADOQuery2.Active:=True;

ADOQuery2.Append;

contador:=0;
dbmadeira_valor.Text:='';

//Abaixo são os Edit's
dbmadeira_tipo.Enabled:=True;
dbmadeira_qtde.Enabled:=True;
dbmadeira_valor.Enabled:=True;

//Abaixo são os Botões
novo2.Enabled:=False;
gravar2.Enabled:=True;
cancelar2.Enabled:=True;

//Abaixo deixa o campo Nome pronto pra digitar
dbmadeira_tipo.SetFocus;
end;

procedure TForm4.novo4Click(Sender: TObject);
begin
if ADOQuery3.Active = False then
ADOQuery3.Active:=True;

ADOQuery3.Append;

contador:=0;
dbflocos_valor.Text:='';

//Abaixo são os Edit's
dbflocos_tipo.Enabled:=True;
dbflocos_qtde.Enabled:=True;
dbflocos_valor.Enabled:=True;

//Abaixo são os Botões
novo4.Enabled:=False;
gravar4.Enabled:=True;
cancelar4.Enabled:=True;

//Abaixo deixa o campo Nome pronto pra digitar
dbflocos_tipo.SetFocus;
end;

procedure TForm4.novo6Click(Sender: TObject);
begin
if ADOQuery4.Active = False then
ADOQuery4.Active:=True;

ADOQuery4.Append;

contador:=0;
dbpregos_valor.Text:='';

//Abaixo são os Edit's
dbpregos_tipo.Enabled:=True;
dbprego_qtde.Enabled:=True;
dbpregos_valor.Enabled:=True;

//Abaixo são os Botões
novo6.Enabled:=False;
gravar6.Enabled:=True;
cancelar6.Enabled:=True;

//Abaixo deixa o campo Nome pronto pra digitar
dbpregos_tipo.SetFocus;
end;

procedure TForm4.novo3Click(Sender: TObject);
begin
if ADOQuery5.Active = False then
ADOQuery5.Active:=True;

ADOQuery5.Append;

contador:=0;
dbespuma_valor.Text:='';

//Abaixo são os Edit's
dbespuma_tipo.Enabled:=True;
dbespuma_qtde.Enabled:=True;
dbespuma_valor.Enabled:=True;

//Abaixo são os Botões
novo3.Enabled:=False;
gravar3.Enabled:=True;
cancelar3.Enabled:=True;

//Abaixo deixa o campo Nome pronto pra digitar
dbespuma_tipo.SetFocus;
end;

procedure TForm4.novo5Click(Sender: TObject);
begin
if ADOQuery6.Active = False then
ADOQuery6.Active:=True;

ADOQuery6.Append;

contador:=0;
dbgrampos_valor.Text:='';

//Abaixo são os Edit's
dbgrampos_tipo.Enabled:=True;
dbgrampo_qtde.Enabled:=True;
dbgrampos_valor.Enabled:=True;

//Abaixo são os Botões
novo5.Enabled:=False;
gravar5.Enabled:=True;
cancelar5.Enabled:=True;

//Abaixo deixa o campo Nome pronto pra digitar
dbgrampos_tipo.SetFocus;
end;

procedure TForm4.novo7Click(Sender: TObject);
begin
if ADOQuery7.Active = False then
ADOQuery7.Active:=True;

ADOQuery7.Append;

contador:=0;
dbpecinta_valor.Text:='';

//Abaixo são os Edit's
dbpercinta_tipo.Enabled:=True;
dbpecinta_qtde.Enabled:=True;
dbpecinta_valor.Enabled:=True;

//Abaixo são os Botões
novo7.Enabled:=False;
gravar7.Enabled:=True;
cancelar7.Enabled:=True;

//Abaixo deixa o campo Nome pronto pra digitar
dbpercinta_tipo.SetFocus;
end;

procedure TForm4.cancelar2Click(Sender: TObject);
begin
ADOQuery2.Cancel;

if ADOQuery2.Active = True then
ADOQuery2.Active:=False;

//Abaixo são os Edit's
dbmadeira_tipo.Enabled:=False;
dbmadeira_qtde.Enabled:=False;
dbmadeira_valor.Enabled:=False;
dbmadeira_valor.Text:='';

//Abaixo são os botões
novo2.Enabled:=True;
gravar2.Enabled:=False;
cancelar2.Enabled:=False;
end;

procedure TForm4.cancelar4Click(Sender: TObject);
begin
ADOQuery3.Cancel;

if ADOQuery3.Active = True then
ADOQuery3.Active:=False;

//Abaixo são os Edit's
dbflocos_tipo.Enabled:=False;
dbflocos_qtde.Enabled:=False;
dbflocos_valor.Enabled:=False;
dbflocos_valor.Text:='';

//Abaixo são os botões
novo4.Enabled:=True;
gravar4.Enabled:=False;
cancelar4.Enabled:=False;
end;

procedure TForm4.cancelar6Click(Sender: TObject);
begin
ADOQuery4.Cancel;

if ADOQuery4.Active = True then
ADOQuery4.Active:=False;

//Abaixo são os Edit's
dbpregos_tipo.Enabled:=False;
dbprego_qtde.Enabled:=False;
dbpregos_valor.Enabled:=False;
dbpregos_valor.Text:='';

//Abaixo são os botões
novo6.Enabled:=True;
gravar6.Enabled:=False;
cancelar6.Enabled:=False;
end;

procedure TForm4.cancelar3Click(Sender: TObject);
begin
ADOQuery5.Cancel;

if ADOQuery5.Active = True then
ADOQuery5.Active:=False;

//Abaixo são os Edit's
dbespuma_tipo.Enabled:=False;
dbespuma_qtde.Enabled:=False;
dbespuma_valor.Enabled:=False;
dbespuma_valor.Text:='';

//Abaixo são os botões
novo3.Enabled:=True;
gravar3.Enabled:=False;
cancelar3.Enabled:=False;
end;

procedure TForm4.cancelar5Click(Sender: TObject);
begin
ADOQuery6.Cancel;

if ADOQuery6.Active = True then
ADOQuery6.Active:=False;

//Abaixo são os Edit's
dbgrampos_tipo.Enabled:=False;
dbgrampo_qtde.Enabled:=False;
dbgrampos_valor.Enabled:=False;
dbgrampos_valor.Text:='';

//Abaixo são os botões
novo5.Enabled:=True;
gravar5.Enabled:=False;
cancelar5.Enabled:=False;
end;

procedure TForm4.cancelar7Click(Sender: TObject);
begin
ADOQuery7.Cancel;

if ADOQuery7.Active = True then
ADOQuery7.Active:=False;

//Abaixo são os Edit's
dbpercinta_tipo.Enabled:=False;
dbpecinta_qtde.Enabled:=False;
dbpecinta_valor.Enabled:=False;
dbpecinta_valor.Text:='';

//Abaixo são os botões
novo7.Enabled:=True;
gravar7.Enabled:=False;
cancelar7.Enabled:=False;
end;

procedure TForm4.gravar2Click(Sender: TObject);
begin
if (trim(dbmadeira_tipo.Text) = '') then
begin
MessageDlg(#13+'Preencha corretamente o tipo de madeira.', mtwarning, [mbOk], 0);
dbmadeira_tipo.SetFocus;
end

else if ( (trim(dbmadeira_qtde.Text) = '') or (StrToFloat(dbmadeira_qtde.Text) = 0) ) then
begin
MessageDlg(#13+'Preencha corretamente a metragem da madeira.', mtwarning, [mbOk], 0);
dbmadeira_qtde.SetFocus;
end

else if ( (trim(dbmadeira_valor.Text) = '') or (StrToFloat(dbmadeira_valor.Text) = 0) ) then
begin
MessageDlg(#13+'Preencha corretamente o valor total da madeira.', mtwarning, [mbOk], 0);
dbmadeira_valor.SetFocus;
end

else if (StrToFloat(dbmadeira_valor.text) > StrToFloat(dbcaixa.Text) ) then
begin
MessageDlg(#13+'O valor à ser comprado excede o limite do Caixa!', mtwarning, [mbOk], 0);
dbmadeira_valor.SetFocus;
end

else if (StrToFloat(dbmadeira_valor.text) <= StrToFloat(dbcaixa.Text) ) then
begin
marcador:=True;
ADOQuery8.Edit;
aux:=StrToFloat(dbcaixa.Text)-StrToFloat(dbmadeira_valor.Text);
dbcaixa.Text:=FloatToStr(aux);
ADOQuery8.Post;
end;

 if ( (trim(dbmadeira_tipo.Text)<>'')
and (trim(dbmadeira_qtde.Text)<>'')
and (trim(dbmadeira_valor.Text)<>'')
and (marcador=True) )
then

begin
marcador:=False;
tipo:=uppercase(trim(dbmadeira_tipo.Text));

ADOQuery2.Post;

ADOQuery2.close;
ADOQuery2.sql.clear;
ADOQuery2.sql.Add('Select * from madeira where tipo = "'+tipo+'"');
ADOQuery2.open;

if ADOQuery2.RecordCount > 0 then
begin
 {
 Abaixo soma a quantidade que tinha no banco de dados
 com a quantidade que se está cadastrando.
 }
 while not ADOQuery2.Eof do
 begin
 contador:=contador + ADOQuery2.FieldbyName('qtde').value;
 ADOQuery2.Next;
 end;
ADOQuery2.Delete;
ADOQuery2.Edit;
ADOQuery2.FieldbyName('tipo').value:=tipo;
ADOQuery2.FieldbyName('qtde').value:=contador;
ADOQuery2.Post;
end;

//Abaixo são os Edit's
dbmadeira_tipo.Enabled:=False;
dbmadeira_qtde.Enabled:=False;
dbmadeira_valor.Enabled:=False;

//Abaixo são os botões
novo2.Enabled:=True;
gravar2.Enabled:=False;
cancelar2.Enabled:=False;
end;
end;

procedure TForm4.gravar4Click(Sender: TObject);
begin
if (trim(dbflocos_tipo.Text) = '') then
begin
MessageDlg(#13+'Preencha corretamente o tipo de flocos.', mtwarning, [mbOk], 0);
dbflocos_tipo.SetFocus;
end

else if ( (trim(dbflocos_qtde.Text) = '') or (StrToFloat(dbflocos_qtde.Text) = 0) ) then
begin
MessageDlg(#13+'Preencha corretamente a quantidade de flocos.', mtwarning, [mbOk], 0);
dbflocos_qtde.SetFocus;
end

else if ( (trim(dbflocos_valor.Text) = '') or (StrToFloat(dbflocos_valor.Text) = 0) ) then
begin
MessageDlg(#13+'Preencha corretamente o valor total de flocos.', mtwarning, [mbOk], 0);
dbflocos_valor.SetFocus;
end

else if (StrToFloat(dbflocos_valor.text) > StrToFloat(dbcaixa.Text) ) then
begin
MessageDlg(#13+'O valor à ser comprado excede o limite do Caixa!', mtwarning, [mbOk], 0);
dbflocos_valor.SetFocus;
end

else if (StrToFloat(dbflocos_valor.text) <= StrToFloat(dbcaixa.Text) ) then
begin
marcador:=True;
ADOQuery8.Edit;
aux:=StrToFloat(dbcaixa.Text)-StrToFloat(dbflocos_valor.Text);
dbcaixa.Text:=FloatToStr(aux);
ADOQuery8.Post;
end;

 if ( (trim(dbflocos_tipo.Text)<>'')
and (trim(dbflocos_qtde.Text)<>'')
and (trim(dbflocos_valor.Text)<>'')
and (marcador=True) )
then

begin
marcador:=False;
tipo:=uppercase(trim(dbflocos_tipo.Text));

ADOQuery3.Post;

ADOQuery3.close;
ADOQuery3.sql.clear;
ADOQuery3.sql.Add('Select * from flocos where tipo = "'+tipo+'"');
ADOQuery3.open;

if ADOQuery3.RecordCount > 0 then
begin
 {
 Abaixo soma a quantidade que tinha no banco de dados
 com a quantidade que se está cadastrando.
 }
 while not ADOQuery3.Eof do
 begin
 contador:=contador + ADOQuery3.FieldbyName('qtde').value;
 ADOQuery3.Next;
 end;
ADOQuery3.Delete;
ADOQuery3.Edit;
ADOQuery3.FieldbyName('tipo').value:=tipo;
ADOQuery3.FieldbyName('qtde').value:=contador;
ADOQuery3.Post;
end;

//Abaixo são os Edit's
dbflocos_tipo.Enabled:=False;
dbflocos_qtde.Enabled:=False;
dbflocos_valor.Enabled:=False;

//Abaixo são os botões
novo4.Enabled:=True;
gravar4.Enabled:=False;
cancelar4.Enabled:=False;
end;
end;

procedure TForm4.gravar6Click(Sender: TObject);
begin
if (trim(dbpregos_tipo.Text) = '') then
begin
MessageDlg(#13+'Preencha corretamente o tipo de prego.', mtwarning, [mbOk], 0);
dbpregos_tipo.SetFocus;
end

else if ( (trim(dbprego_qtde.Text) = '') or (StrToFloat(dbprego_qtde.Text) = 0) ) then
begin
MessageDlg(#13+'Preencha corretamente a quantidade de pregos.', mtwarning, [mbOk], 0);
dbprego_qtde.SetFocus;
end

else if ( (trim(dbpregos_valor.Text) = '') or (StrToFloat(dbpregos_valor.Text) = 0) ) then
begin
MessageDlg(#13+'Preencha corretamente o valor total de pregos.', mtwarning, [mbOk], 0);
dbpregos_valor.SetFocus;
end

else if (StrToFloat(dbpregos_valor.text) > StrToFloat(dbcaixa.Text) ) then
begin
MessageDlg(#13+'O valor à ser comprado excede o limite do Caixa!', mtwarning, [mbOk], 0);
dbpregos_valor.SetFocus;
end

else if (StrToFloat(dbpregos_valor.text) <= StrToFloat(dbcaixa.Text) ) then
begin
marcador:=True;
ADOQuery8.Edit;
aux:=StrToFloat(dbcaixa.Text)-StrToFloat(dbpregos_valor.Text);
dbcaixa.Text:=FloatToStr(aux);
ADOQuery8.Post;
end;

 if ( (trim(dbpregos_tipo.Text)<>'')
and (trim(dbprego_qtde.Text)<>'')
and (trim(dbpregos_valor.Text)<>'')
and (marcador=True) )
then

begin
marcador:=False;
tipo:=uppercase(trim(dbpregos_tipo.Text));

ADOQuery4.Post;

ADOQuery4.close;
ADOQuery4.sql.clear;
ADOQuery4.sql.Add('Select * from pregos where tipo = "'+tipo+'"');
ADOQuery4.open;

if ADOQuery4.RecordCount > 0 then
begin
 {
 Abaixo soma a quantidade que tinha no banco de dados
 com a quantidade que se está cadastrando.
 }
 while not ADOQuery4.Eof do
 begin
 contador:=contador + ADOQuery4.FieldbyName('qtde').value;
 ADOQuery4.Next;
 end;
ADOQuery4.Delete;
ADOQuery4.Edit;
ADOQuery4.FieldbyName('tipo').value:=tipo;
ADOQuery4.FieldbyName('qtde').value:=contador;
ADOQuery4.Post;
end;

//Abaixo são os Edit's
dbpregos_tipo.Enabled:=False;
dbprego_qtde.Enabled:=False;
dbpregos_valor.Enabled:=False;

//Abaixo são os botões
novo6.Enabled:=True;
gravar6.Enabled:=False;
cancelar6.Enabled:=False;
end;
end;

procedure TForm4.gravar3Click(Sender: TObject);
begin
if (trim(dbespuma_tipo.Text) = '') then
begin
MessageDlg(#13+'Preencha corretamente o tipo de espuma.', mtwarning, [mbOk], 0);
dbespuma_tipo.SetFocus;
end

else if ( (trim(dbespuma_qtde.Text) = '') or (StrToFloat(dbespuma_qtde.Text) = 0) ) then
begin
MessageDlg(#13+'Preencha corretamente a quantidade de espuma.', mtwarning, [mbOk], 0);
dbespuma_qtde.SetFocus;
end

else if ( (trim(dbespuma_valor.Text) = '') or (StrToFloat(dbespuma_valor.Text) = 0) ) then
begin
MessageDlg(#13+'Preencha corretamente o valor total de espuma.', mtwarning, [mbOk], 0);
dbespuma_valor.SetFocus;
end

else if (StrToFloat(dbespuma_valor.text) > StrToFloat(dbcaixa.Text) ) then
begin
MessageDlg(#13+'O valor à ser comprado excede o limite do Caixa!', mtwarning, [mbOk], 0);
dbespuma_valor.SetFocus;
end

else if (StrToFloat(dbespuma_valor.text) <= StrToFloat(dbcaixa.Text) ) then
begin
marcador:=True;
ADOQuery8.Edit;
aux:=StrToFloat(dbcaixa.Text)-StrToFloat(dbespuma_valor.Text);
dbcaixa.Text:=FloatToStr(aux);
ADOQuery8.Post;
end;

 if ( (trim(dbespuma_tipo.Text)<>'')
and (trim(dbespuma_qtde.Text)<>'')
and (trim(dbespuma_valor.Text)<>'')
and (marcador=True) )
then

begin
marcador:=False;
tipo:=uppercase(trim(dbespuma_tipo.Text));

ADOQuery5.Post;

ADOQuery5.close;
ADOQuery5.sql.clear;
ADOQuery5.sql.Add('Select * from espuma where tipo = "'+tipo+'"');
ADOQuery5.open;

if ADOQuery5.RecordCount > 0 then
begin
 {
 Abaixo soma a quantidade que tinha no banco de dados
 com a quantidade que se está cadastrando.
 }
 while not ADOQuery5.Eof do
 begin
 contador:=contador + ADOQuery5.FieldbyName('qtde').value;
 ADOQuery5.Next;
 end;
ADOQuery5.Delete;
ADOQuery5.Edit;
ADOQuery5.FieldbyName('tipo').value:=tipo;
ADOQuery5.FieldbyName('qtde').value:=contador;
ADOQuery5.Post;
end;

//Abaixo são os Edit's
dbespuma_tipo.Enabled:=False;
dbespuma_qtde.Enabled:=False;
dbespuma_valor.Enabled:=False;

//Abaixo são os botões
novo3.Enabled:=True;
gravar3.Enabled:=False;
cancelar3.Enabled:=False;
end;
end;

procedure TForm4.gravar5Click(Sender: TObject);
begin
if (trim(dbgrampos_tipo.Text) = '') then
begin
MessageDlg(#13+'Preencha corretamente o tipo de grampo.', mtwarning, [mbOk], 0);
dbgrampos_tipo.SetFocus;
end

else if ( (trim(dbgrampo_qtde.Text) = '') or (StrToFloat(dbgrampo_qtde.Text) = 0) ) then
begin
MessageDlg(#13+'Preencha corretamente a quantidade de grampos.', mtwarning, [mbOk], 0);
dbgrampo_qtde.SetFocus;
end

else if ( (trim(dbgrampos_valor.Text) = '') or (StrToFloat(dbgrampos_valor.Text) = 0) ) then
begin
MessageDlg(#13+'Preencha corretamente o valor total de grampos.', mtwarning, [mbOk], 0);
dbgrampos_valor.SetFocus;
end

else if (StrToFloat(dbgrampos_valor.text) > StrToFloat(dbcaixa.Text) ) then
begin
MessageDlg(#13+'O valor à ser comprado excede o limite do Caixa!', mtwarning, [mbOk], 0);
dbgrampos_valor.SetFocus;
end

else if (StrToFloat(dbgrampos_valor.text) <= StrToFloat(dbcaixa.Text) ) then
begin
marcador:=True;
ADOQuery8.Edit;
aux:=StrToFloat(dbcaixa.Text)-StrToFloat(dbgrampos_valor.Text);
dbcaixa.Text:=FloatToStr(aux);
ADOQuery8.Post;
end;

 if ( (trim(dbgrampos_tipo.Text)<>'')
and (trim(dbgrampo_qtde.Text)<>'')
and (trim(dbgrampos_valor.Text)<>'')
and (marcador=True) )
then

begin
marcador:=False;
tipo:=uppercase(trim(dbgrampos_tipo.Text));

ADOQuery6.Post;

ADOQuery6.close;
ADOQuery6.sql.clear;
ADOQuery6.sql.Add('Select * from grampos where tipo = "'+tipo+'"');
ADOQuery6.open;

if ADOQuery6.RecordCount > 0 then
begin
 {
 Abaixo soma a quantidade que tinha no banco de dados
 com a quantidade que se está cadastrando.
 }
 while not ADOQuery6.Eof do
 begin
 contador:=contador + ADOQuery6.FieldbyName('qtde').value;
 ADOQuery6.Next;
 end;
ADOQuery6.Delete;
ADOQuery6.Edit;
ADOQuery6.FieldbyName('tipo').value:=tipo;
ADOQuery6.FieldbyName('qtde').value:=contador;
ADOQuery6.Post;
end;

//Abaixo são os Edit's
dbgrampos_tipo.Enabled:=False;
dbgrampo_qtde.Enabled:=False;
dbgrampos_valor.Enabled:=False;

//Abaixo são os botões
novo5.Enabled:=True;
gravar5.Enabled:=False;
cancelar5.Enabled:=False;
end;
end;

procedure TForm4.gravar7Click(Sender: TObject);
begin
if (trim(dbpercinta_tipo.Text) = '') then
begin
MessageDlg(#13+'Preencha corretamente o tipo de percinta.', mtwarning, [mbOk], 0);
dbpercinta_tipo.SetFocus;
end

else if ( (trim(dbpecinta_qtde.Text) = '') or (StrToFloat(dbpecinta_qtde.Text) = 0) ) then
begin
MessageDlg(#13+'Preencha corretamente a quantidade de percintas.', mtwarning, [mbOk], 0);
dbpecinta_qtde.SetFocus;
end

else if ( (trim(dbpecinta_valor.Text) = '') or (StrToFloat(dbpecinta_valor.Text) = 0) ) then
begin
MessageDlg(#13+'Preencha corretamente o valor total de percintas.', mtwarning, [mbOk], 0);
dbpecinta_valor.SetFocus;
end

else if (StrToFloat(dbpecinta_valor.text) > StrToFloat(dbcaixa.Text) ) then
begin
MessageDlg(#13+'O valor à ser comprado excede o limite do Caixa!', mtwarning, [mbOk], 0);
dbpecinta_valor.SetFocus;
end

else if (StrToFloat(dbpecinta_valor.text) <= StrToFloat(dbcaixa.Text) ) then
begin
marcador:=True;
ADOQuery8.Edit;
aux:=StrToFloat(dbcaixa.Text)-StrToFloat(dbpecinta_valor.Text);
dbcaixa.Text:=FloatToStr(aux);
ADOQuery8.Post;
end;

 if ( (trim(dbpercinta_tipo.Text)<>'')
and (trim(dbpecinta_qtde.Text)<>'')
and (trim(dbpecinta_valor.Text)<>'')
and (marcador=True) )
then

begin
marcador:=False;
tipo:=uppercase(trim(dbpercinta_tipo.Text));

ADOQuery7.Post;

ADOQuery7.close;
ADOQuery7.sql.clear;
ADOQuery7.sql.Add('Select * from pecinta where tipo = "'+tipo+'"');
ADOQuery7.open;

if ADOQuery7.RecordCount > 0 then
begin
 {
 Abaixo soma a quantidade que tinha no banco de dados
 com a quantidade que se está cadastrando.
 }
 while not ADOQuery7.Eof do
 begin
 contador:=contador + ADOQuery7.FieldbyName('qtde').value;
 ADOQuery7.Next;
 end;
ADOQuery7.Delete;
ADOQuery7.Edit;
ADOQuery7.FieldbyName('tipo').value:=tipo;
ADOQuery7.FieldbyName('qtde').value:=contador;
ADOQuery7.Post;
end;

//Abaixo são os Edit's
dbpercinta_tipo.Enabled:=False;
dbpecinta_qtde.Enabled:=False;
dbpecinta_valor.Enabled:=False;

//Abaixo são os botões
novo7.Enabled:=True;
gravar7.Enabled:=False;
cancelar7.Enabled:=False;
end;
end;

procedure TForm4.dbpano_valorClick(Sender: TObject);
begin
dbpano_valor.Color:=clWindow;
end;

procedure TForm4.dbpano_valorEnter(Sender: TObject);
begin
dbpano_valor.Color:=clWindow;
end;

procedure TForm4.dbpano_valorExit(Sender: TObject);
begin
dbpano_valor.ParentColor:=True;
end;

procedure TForm4.dbpano_valorKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_+={}[]?;:.|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
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
dbpano_valor.SetFocus;
end;
end;

procedure TForm4.dbmadeira_tipoClick(Sender: TObject);
begin
dbmadeira_tipo.Color:=clWindow;
end;

procedure TForm4.dbflocos_tipoClick(Sender: TObject);
begin
dbflocos_tipo.Color:=clWindow;
end;

procedure TForm4.dbpregos_tipoClick(Sender: TObject);
begin
dbpregos_tipo.Color:=clWindow;
end;

procedure TForm4.dbespuma_tipoClick(Sender: TObject);
begin
dbespuma_tipo.Color:=clWindow;
end;

procedure TForm4.dbgrampos_tipoClick(Sender: TObject);
begin
dbgrampos_tipo.Color:=clWindow;
end;

procedure TForm4.dbmadeira_tipoEnter(Sender: TObject);
var
i,y:integer;
begin
dbmadeira_tipo.Color:=clWindow;

dbmadeira_tipo.Items.Clear;
dbmadeira_tipo.ItemIndex:=0;

ADOQuery10.Open;
y:=ADOQuery10.RecordCount;
i:=0;
while i < y do
begin
i:=i+1;
dbmadeira_tipo.Items.Add(UpperCase(ADOQuery10.Fieldbyname('tipo').Value));
ADOQuery10.Next;
end;
ADOQuery10.Close;
end;

procedure TForm4.dbflocos_tipoEnter(Sender: TObject);
var
i,y:integer;
begin
dbflocos_tipo.Color:=clWindow;

dbflocos_tipo.Items.Clear;
dbflocos_tipo.ItemIndex:=0;

ADOQuery11.Open;
y:=ADOQuery11.RecordCount;
i:=0;
while i < y do
begin
i:=i+1;
dbflocos_tipo.Items.Add(UpperCase(ADOQuery11.Fieldbyname('tipo').Value));
ADOQuery11.Next;
end;
ADOQuery11.Close;
end;

procedure TForm4.dbpregos_tipoEnter(Sender: TObject);
var
i,y:integer;
begin
dbpregos_tipo.Color:=clWindow;

dbpregos_tipo.Items.Clear;
dbpregos_tipo.ItemIndex:=0;

ADOQuery12.Open;
y:=ADOQuery12.RecordCount;
i:=0;
while i < y do
begin
i:=i+1;
dbpregos_tipo.Items.Add(UpperCase(ADOQuery12.Fieldbyname('tipo').Value));
ADOQuery12.Next;
end;
ADOQuery12.Close;
end;

procedure TForm4.dbespuma_tipoEnter(Sender: TObject);
var
i,y:integer;
begin
dbespuma_tipo.Color:=clWindow;

dbespuma_tipo.Items.Clear;
dbespuma_tipo.ItemIndex:=0;

ADOQuery13.Open;
y:=ADOQuery13.RecordCount;
i:=0;
while i < y do
begin
i:=i+1;
dbespuma_tipo.Items.Add(UpperCase(ADOQuery13.Fieldbyname('tipo').Value));
ADOQuery13.Next;
end;
ADOQuery13.Close;
end;

procedure TForm4.dbgrampos_tipoEnter(Sender: TObject);
var
i,y:integer;
begin
dbgrampos_tipo.Color:=clWindow;

dbgrampos_tipo.Items.Clear;
dbgrampos_tipo.ItemIndex:=0;

ADOQuery14.Open;
y:=ADOQuery14.RecordCount;
i:=0;
while i < y do
begin
i:=i+1;
dbgrampos_tipo.Items.Add(UpperCase(ADOQuery14.Fieldbyname('tipo').Value));
ADOQuery14.Next;
end;
ADOQuery14.Close;
end;

procedure TForm4.dbmadeira_tipoExit(Sender: TObject);
begin
dbmadeira_tipo.ParentColor:=True;
end;

procedure TForm4.dbflocos_tipoExit(Sender: TObject);
begin
dbflocos_tipo.ParentColor:=True;
end;

procedure TForm4.dbpregos_tipoExit(Sender: TObject);
begin
dbpregos_tipo.ParentColor:=True;
end;

procedure TForm4.dbespuma_tipoExit(Sender: TObject);
begin
dbespuma_tipo.ParentColor:=True;
end;

procedure TForm4.dbgrampos_tipoExit(Sender: TObject);
begin
dbgrampos_tipo.ParentColor:=True;
end;

procedure TForm4.dbmadeira_tipoKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_+={}[]?;:,|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
Var
Str : String;
begin
//Abaixo para deixar a letra sempre maiúscula
Key := AnsiUpperCase(Key)[Length(Key)];
inherited;
Str := key;
if (Pos(Str,especiais)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
dbmadeira_tipo.SetFocus;
end;
end;

procedure TForm4.dbflocos_tipoKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_+={}[]?;:,|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
Var
Str : String;
begin
//Abaixo para deixar a letra sempre maiúscula
Key := AnsiUpperCase(Key)[Length(Key)];
inherited;
Str := key;
if (Pos(Str,especiais)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
dbflocos_tipo.SetFocus;
end;
end;

procedure TForm4.dbpregos_tipoKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_+={}[]?;:,|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
Var
Str : String;
begin
//Abaixo para deixar a letra sempre maiúscula
Key := AnsiUpperCase(Key)[Length(Key)];
inherited;
Str := key;
if (Pos(Str,especiais)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
dbpregos_tipo.SetFocus;
end;
end;

procedure TForm4.dbespuma_tipoKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_+={}[]?;:,|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
Var
Str : String;
begin
//Abaixo para deixar a letra sempre maiúscula
Key := AnsiUpperCase(Key)[Length(Key)];
inherited;
Str := key;
if (Pos(Str,especiais)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
dbespuma_tipo.SetFocus;
end;
end;

procedure TForm4.dbmadeira_qtdeClick(Sender: TObject);
begin
dbmadeira_qtde.Color:=clWindow;
end;

procedure TForm4.dbmadeira_qtdeEnter(Sender: TObject);
begin
dbmadeira_qtde.Color:=clWindow;
end;

procedure TForm4.dbflocos_qtdeClick(Sender: TObject);
begin
dbflocos_qtde.Color:=clWindow;
end;

procedure TForm4.dbflocos_qtdeEnter(Sender: TObject);
begin
dbflocos_qtde.Color:=clWindow;
end;

procedure TForm4.dbprego_qtdeClick(Sender: TObject);
begin
dbprego_qtde.Color:=clWindow;
end;

procedure TForm4.dbprego_qtdeEnter(Sender: TObject);
begin
dbprego_qtde.Color:=clWindow;
end;

procedure TForm4.dbespuma_qtdeClick(Sender: TObject);
begin
dbespuma_qtde.Color:=clWindow;
end;

procedure TForm4.dbespuma_qtdeEnter(Sender: TObject);
begin
dbespuma_qtde.Color:=clWindow;
end;

procedure TForm4.dbgrampo_qtdeClick(Sender: TObject);
begin
dbgrampo_qtde.Color:=clWindow;
end;

procedure TForm4.dbgrampo_qtdeEnter(Sender: TObject);
begin
dbgrampo_qtde.Color:=clWindow;
end;

procedure TForm4.dbpecinta_qtdeClick(Sender: TObject);
begin
dbpecinta_qtde.Color:=clWindow;
end;

procedure TForm4.dbpecinta_qtdeEnter(Sender: TObject);
begin
dbpecinta_qtde.Color:=clWindow;
end;

procedure TForm4.dbmadeira_qtdeExit(Sender: TObject);
begin
dbmadeira_qtde.ParentColor:=True;
end;

procedure TForm4.dbflocos_qtdeExit(Sender: TObject);
begin
dbflocos_qtde.ParentColor:=True;
end;

procedure TForm4.dbprego_qtdeExit(Sender: TObject);
begin
dbprego_qtde.ParentColor:=True;
end;

procedure TForm4.dbespuma_qtdeExit(Sender: TObject);
begin
dbespuma_qtde.ParentColor:=True;
end;

procedure TForm4.dbgrampo_qtdeExit(Sender: TObject);
begin
dbgrampo_qtde.ParentColor:=True;
end;

procedure TForm4.dbpecinta_qtdeExit(Sender: TObject);
begin
dbpecinta_qtde.ParentColor:=True;
end;

procedure TForm4.dbmadeira_qtdeKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_+={}[]?;:,|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
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
dbmadeira_qtde.SetFocus;
end;
end;

procedure TForm4.dbflocos_qtdeKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_+={}[]?;:,|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
min = 'abcdefghijklmnopqrstuvwxyz';
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
dbflocos_qtde.SetFocus;
end;
end;

procedure TForm4.dbprego_qtdeKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_+={}[]?;:,|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
min = 'abcdefghijklmnopqrstuvwxyz';
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
dbprego_qtde.SetFocus;
end;
end;

procedure TForm4.dbespuma_qtdeKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_+={}[]?;:,|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
min = 'abcdefghijklmnopqrstuvwxyz';
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
dbespuma_qtde.SetFocus;
end;
end;

procedure TForm4.dbgrampo_qtdeKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_+={}[]?;:,|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
min = 'abcdefghijklmnopqrstuvwxyz';
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
dbgrampo_qtde.SetFocus;
end;
end;

procedure TForm4.dbpecinta_qtdeKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '<>!@#$%¨&*()_+={}[]?;:,|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
min = 'abcdefghijklmnopqrstuvwxyz';
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
dbpecinta_qtde.SetFocus;
end;
end;

procedure TForm4.dbmadeira_valorClick(Sender: TObject);
begin
dbmadeira_valor.Color:=clWindow;
end;

procedure TForm4.dbmadeira_valorEnter(Sender: TObject);
begin
dbmadeira_valor.Color:=clWindow;
end;

procedure TForm4.dbflocos_valorClick(Sender: TObject);
begin
dbflocos_valor.Color:=clWindow;
end;

procedure TForm4.dbflocos_valorEnter(Sender: TObject);
begin
dbflocos_valor.Color:=clWindow;
end;

procedure TForm4.dbpregos_valorClick(Sender: TObject);
begin
dbpregos_valor.Color:=clWindow;
end;

procedure TForm4.dbpregos_valorEnter(Sender: TObject);
begin
dbpregos_valor.Color:=clWindow;
end;

procedure TForm4.dbespuma_valorClick(Sender: TObject);
begin
dbespuma_valor.Color:=clWindow;
end;

procedure TForm4.dbespuma_valorEnter(Sender: TObject);
begin
dbespuma_valor.Color:=clWindow;
end;

procedure TForm4.dbgrampos_valorClick(Sender: TObject);
begin
dbgrampos_valor.Color:=clWindow;
end;

procedure TForm4.dbgrampos_valorEnter(Sender: TObject);
begin
dbgrampos_valor.Color:=clWindow;
end;

procedure TForm4.dbpecinta_valorClick(Sender: TObject);
begin
dbpecinta_valor.Color:=clWindow;
end;

procedure TForm4.dbpecinta_valorEnter(Sender: TObject);
begin
dbpecinta_valor.Color:=clWindow;
end;

procedure TForm4.dbmadeira_valorExit(Sender: TObject);
begin
dbmadeira_valor.ParentColor:=True;
end;

procedure TForm4.dbflocos_valorExit(Sender: TObject);
begin
dbflocos_valor.ParentColor:=True;
end;

procedure TForm4.dbpregos_valorExit(Sender: TObject);
begin
dbpregos_valor.ParentColor:=True;
end;

procedure TForm4.dbespuma_valorExit(Sender: TObject);
begin
dbespuma_valor.ParentColor:=True;
end;

procedure TForm4.dbgrampos_valorExit(Sender: TObject);
begin
dbgrampos_valor.ParentColor:=True;
end;

procedure TForm4.dbpecinta_valorExit(Sender: TObject);
begin
dbpecinta_valor.ParentColor:=True;
end;

procedure TForm4.dbmadeira_valorKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_+={}[]?;:.|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
min = 'abcdefghijklmnopqrstuvwxyz';
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
dbmadeira_valor.SetFocus;
end;
end;

procedure TForm4.dbflocos_valorKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_+={}[]?;:.|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
min = 'abcdefghijklmnopqrstuvwxyz';
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
dbflocos_valor.SetFocus;
end;
end;

procedure TForm4.dbpregos_valorKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_+={}[]?;:.|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
min = 'abcdefghijklmnopqrstuvwxyz';
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
dbpregos_valor.SetFocus;
end;
end;

procedure TForm4.dbespuma_valorKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_+={}[]?;:.|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
min = 'abcdefghijklmnopqrstuvwxyz';
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
dbespuma_valor.SetFocus;
end;
end;

procedure TForm4.dbgrampos_valorKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_+={}[]?;:.|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
min = 'abcdefghijklmnopqrstuvwxyz';
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
dbgrampos_valor.SetFocus;
end;
end;

procedure TForm4.dbpecinta_valorKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_+={}[]?;:.|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
min = 'abcdefghijklmnopqrstuvwxyz';
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
dbpecinta_valor.SetFocus;
end;
end;

procedure TForm4.dbpercinta_tipoClick(Sender: TObject);
begin
dbpercinta_tipo.Color:=clWindow;
end;

procedure TForm4.dbpercinta_tipoEnter(Sender: TObject);
var
i,y:integer;
begin
dbpercinta_tipo.Color:=clWindow;

dbpercinta_tipo.Items.Clear;
dbpercinta_tipo.ItemIndex:=0;

ADOQuery15.Open;
y:=ADOQuery15.RecordCount;
i:=0;
while i < y do
begin
i:=i+1;
dbpercinta_tipo.Items.Add(UpperCase(ADOQuery15.Fieldbyname('tipo').Value));
ADOQuery15.Next;
end;
ADOQuery15.Close;
end;

procedure TForm4.dbpercinta_tipoExit(Sender: TObject);
begin
dbpercinta_tipo.ParentColor:=True;
end;

procedure TForm4.FormActivate(Sender: TObject);
begin
ADOQuery8.Active:=True;
marcador:=False;
contador:=0;
tipo:='';
end;

procedure TForm4.dbgrampos_tipoKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_+={}[]?;:,|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
Var
Str : String;
begin
//Abaixo para deixar a letra sempre maiúscula
Key := AnsiUpperCase(Key)[Length(Key)];
inherited;
Str := key;
if (Pos(Str,especiais)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
dbgrampos_tipo.SetFocus;
end;
end;

procedure TForm4.dbpercinta_tipoKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '<>!@#$%¨&*()_+={}[]?;:,|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
Var
Str : String;
begin
//Abaixo para deixar a letra sempre maiúscula
Key := AnsiUpperCase(Key)[Length(Key)];
inherited;
Str := key;
if (Pos(Str,especiais)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
dbpercinta_tipo.SetFocus;
end;
end;

end.
