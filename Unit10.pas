unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs,
  DB, DBTables, Buttons, ExtDlgs, ComCtrls, TabNotBk,ComObj, Mask, DBCtrls,
  ImgList, ADODB, Grids;

type
  TForm10 = class(TForm)
    fechar: TSpeedButton;
    Label1: TLabel;
    Label15: TLabel;
    Bevel2: TBevel;
    dbnome: TDBEdit;
    GroupBox1: TGroupBox;
    novo: TSpeedButton;
    gravar: TSpeedButton;
    cancelar: TSpeedButton;
    Bevel4: TBevel;
    Bevel5: TBevel;
    dbvalor: TDBEdit;
    DataSource2: TDataSource;
    ADOQuery1: TADOQuery;
    Bevel1: TBevel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
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
    Label16: TLabel;
    DBText1: TDBText;
    Label18: TLabel;
    ADOQuery9: TADOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    ADOQuery10: TADOQuery;
    ADOQuery11: TADOQuery;
    ADOQuery12: TADOQuery;
    ADOQuery13: TADOQuery;
    ADOQuery14: TADOQuery;
    ADOQuery15: TADOQuery;
    Label19: TLabel;
    SpeedButton1: TSpeedButton;
    btn01: TSpeedButton;
    ListBox1: TListBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ADOQuery1Cdigo: TAutoIncField;
    ADOQuery1nome: TWideStringField;
    ADOQuery1valor: TBCDField;
    ADOQuery1pano: TMemoField;
    ADOQuery1madeira: TMemoField;
    ADOQuery1flocos: TMemoField;
    ADOQuery1pregos: TMemoField;
    ADOQuery1espuma: TMemoField;
    ADOQuery1grampos: TMemoField;
    ADOQuery1percinta: TMemoField;
    ADOQuery1pano_tipo: TMemoField;
    ADOQuery1madeira_tipo: TMemoField;
    ADOQuery1flocos_tipo: TMemoField;
    ADOQuery1pregos_tipo: TMemoField;
    ADOQuery1espuma_tipo: TMemoField;
    ADOQuery1grampos_tipo: TMemoField;
    ADOQuery1percinta_tipo: TMemoField;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    SpeedButton2: TSpeedButton;
    ListBox2: TListBox;
    ListBox3: TListBox;
    SpeedButton3: TSpeedButton;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo4: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo5: TDBMemo;
    DBMemo6: TDBMemo;
    SpeedButton4: TSpeedButton;
    ListBox4: TListBox;
    DBMemo7: TDBMemo;
    DBMemo8: TDBMemo;
    ListBox5: TListBox;
    SpeedButton5: TSpeedButton;
    DBMemo9: TDBMemo;
    DBMemo10: TDBMemo;
    ListBox6: TListBox;
    SpeedButton6: TSpeedButton;
    DBMemo11: TDBMemo;
    DBMemo12: TDBMemo;
    ListBox7: TListBox;
    SpeedButton7: TSpeedButton;
    DBMemo13: TDBMemo;
    DBMemo14: TDBMemo;
    Bevel7: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure fecharClick(Sender: TObject);
    procedure novoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
    procedure gravarClick(Sender: TObject);
    procedure dbnomeClick(Sender: TObject);
    procedure dbnomeEnter(Sender: TObject);
    procedure dbnomeExit(Sender: TObject);
    procedure dbnomeKeyPress(Sender: TObject; var Key: Char);
    procedure dbvalorKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure ComboBox3Enter(Sender: TObject);
    procedure ComboBox4Enter(Sender: TObject);
    procedure ComboBox5Enter(Sender: TObject);
    procedure ComboBox6Enter(Sender: TObject);
    procedure ComboBox7Enter(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure btn01Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
    procedure ComboBox3Click(Sender: TObject);
    procedure ComboBox4Click(Sender: TObject);
    procedure ComboBox5Click(Sender: TObject);
    procedure ComboBox6Click(Sender: TObject);
    procedure ComboBox7Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit3Click(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit4Click(Sender: TObject);
    procedure Edit4Enter(Sender: TObject);
    procedure Edit5Click(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit6Click(Sender: TObject);
    procedure Edit6Enter(Sender: TObject);
    procedure Edit7Click(Sender: TObject);
    procedure Edit7Enter(Sender: TObject);
    procedure Edit8Click(Sender: TObject);
    procedure Edit8Enter(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox1Enter(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
    procedure ListBox2Enter(Sender: TObject);
    procedure ListBox3Click(Sender: TObject);
    procedure ListBox3Enter(Sender: TObject);
    procedure ListBox4Click(Sender: TObject);
    procedure ListBox4Enter(Sender: TObject);
    procedure ListBox5Enter(Sender: TObject);
    procedure ListBox5Click(Sender: TObject);
    procedure ListBox6Click(Sender: TObject);
    procedure ListBox6Enter(Sender: TObject);
    procedure ListBox7Click(Sender: TObject);
    procedure ListBox7Enter(Sender: TObject);
    procedure ComboBox2Exit(Sender: TObject);
    procedure ComboBox3Exit(Sender: TObject);
    procedure ComboBox4Exit(Sender: TObject);
    procedure ComboBox5Exit(Sender: TObject);
    procedure ComboBox6Exit(Sender: TObject);
    procedure ComboBox7Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit7Exit(Sender: TObject);
    procedure Edit8Exit(Sender: TObject);
    procedure ListBox1Exit(Sender: TObject);
    procedure ListBox2Exit(Sender: TObject);
    procedure ListBox3Exit(Sender: TObject);
    procedure ListBox4Exit(Sender: TObject);
    procedure ListBox5Exit(Sender: TObject);
    procedure ListBox6Exit(Sender: TObject);
    procedure ListBox7Exit(Sender: TObject);
    procedure dbvalorClick(Sender: TObject);
    procedure dbvalorEnter(Sender: TObject);
    procedure dbvalorExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Unit1, Unit3;

{$R *.dfm}

procedure TForm10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if ADOQuery1.Active=True then
ADOQuery1.Active:=false;

Frmprincipal.Enabled:=True;

//Abaixo para Liberar o Form da MemÛria
Form10.Release;
Form10 := Nil;
end;

procedure TForm10.FormDestroy(Sender: TObject);
begin
frmprincipal.Enabled:=True;
end;

procedure TForm10.fecharClick(Sender: TObject);
begin
close;
end;


procedure TForm10.novoClick(Sender: TObject);
begin
ADOQuery1.Active:=True;
ADOQuery1.Append;

//Abaixo s„o os Edit's
dbnome.Enabled:=True;
dbvalor.Enabled:=True;

//Abaixo È tudo da matÈria prima
Combobox1.Enabled:=True;
Edit2.Enabled:=True;
ListBox1.Enabled:=True;

Combobox2.Enabled:=True;
Edit3.Enabled:=True;
ListBox2.Enabled:=True;

Combobox3.Enabled:=True;
Edit4.Enabled:=True;
ListBox3.Enabled:=True;

Combobox4.Enabled:=True;
Edit5.Enabled:=True;
ListBox4.Enabled:=True;

Combobox5.Enabled:=True;
Edit6.Enabled:=True;
ListBox5.Enabled:=True;

Combobox6.Enabled:=True;
Edit7.Enabled:=True;
ListBox6.Enabled:=True;

Combobox7.Enabled:=True;
Edit8.Enabled:=True;
ListBox7.Enabled:=True;

ListBox1.Clear;
ListBox2.Clear;
ListBox3.Clear;
ListBox4.Clear;
ListBox5.Clear;
ListBox6.Clear;
ListBox7.Clear;

//Abaixo s„o os Botıes
novo.Enabled:=False;
cancelar.Enabled:=True;
gravar.Enabled:=True ;

//Abaixo deixa o campo Nome pronto pra digitar
dbnome.SetFocus;
end;

procedure TForm10.FormActivate(Sender: TObject);
begin
ADOQuery1.Active:=True;
ADOQuery1.Append;

//Abaixo s„o os Edit's
dbnome.Enabled:=True;
dbvalor.Enabled:=True;

//Abaixo È tudo da matÈria prima
Combobox1.Enabled:=True;
Edit2.Enabled:=True;
ListBox1.Enabled:=True;

Combobox2.Enabled:=True;
Edit3.Enabled:=True;
ListBox2.Enabled:=True;

Combobox3.Enabled:=True;
Edit4.Enabled:=True;
ListBox3.Enabled:=True;

Combobox4.Enabled:=True;
Edit5.Enabled:=True;
ListBox4.Enabled:=True;

Combobox5.Enabled:=True;
Edit6.Enabled:=True;
ListBox5.Enabled:=True;

Combobox6.Enabled:=True;
Edit7.Enabled:=True;
ListBox6.Enabled:=True;

Combobox7.Enabled:=True;
Edit8.Enabled:=True;
ListBox7.Enabled:=True;

//Abaixo s„o os Botıes
novo.Enabled:=False;
cancelar.Enabled:=True;
gravar.Enabled:=True ;

//Abaixo deixa o campo Nome pronto pra digitar
dbnome.SetFocus;
end;

procedure TForm10.cancelarClick(Sender: TObject);
begin
ADOQuery1.Cancel;
ADOQuery1.Active:=False;

//Abaixo s„o os Edit's
dbnome.Enabled:=False;
dbvalor.Enabled:=False;

//Abaixo È tudo da matÈria prima
Combobox1.ItemIndex:=-1;
Combobox1.Enabled:=False;
Edit2.Clear;
Edit2.Enabled:=False;
ListBox1.Clear;
ListBox1.Enabled:=False;

Combobox2.ItemIndex:=-1;
Combobox2.Enabled:=False;
Edit3.Clear;
Edit3.Enabled:=False;
ListBox2.Clear;
ListBox2.Enabled:=False;

Combobox3.ItemIndex:=-1;
Combobox3.Enabled:=False;
Edit4.Clear;
Edit4.Enabled:=False;
ListBox3.Clear;
ListBox3.Enabled:=False;

Combobox4.ItemIndex:=-1;
Combobox4.Enabled:=False;
Edit5.Clear;
Edit5.Enabled:=False;
ListBox4.Clear;
ListBox4.Enabled:=False;

Combobox5.ItemIndex:=-1;
Combobox5.Enabled:=False;
Edit6.Clear;
Edit6.Enabled:=False;
ListBox5.Clear;
ListBox5.Enabled:=False;

Combobox6.ItemIndex:=-1;
Combobox6.Enabled:=False;
Edit7.Clear;
Edit7.Enabled:=False;
ListBox6.Clear;
ListBox6.Enabled:=False;

Combobox7.ItemIndex:=-1;
Combobox7.Enabled:=False;
Edit8.Clear;
Edit8.Enabled:=False;
ListBox7.Clear;
ListBox7.Enabled:=False;

//Abaixo s„o os botıes
novo.Enabled:=True;
cancelar.Enabled:=False;
gravar.Enabled:=False;
end;

procedure TForm10.gravarClick(Sender: TObject);
var
erro: Boolean;
begin
erro:=False;

if trim(dbnome.Text) = '' then
begin
aux:=Label1.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
dbnome.SetFocus;
erro:=True;
end

else if trim(dbvalor.Text) = '' then
begin
aux:=Label15.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
dbvalor.SetFocus;
erro:=True;
end;

if erro = False then
begin

ADOQuery1.Post;

//Abaixo s„o os Edit's
dbnome.Enabled:=False;
dbvalor.Enabled:=False;

//Abaixo È tudo da matÈria prima
Combobox1.ItemIndex:=-1;
Combobox1.Enabled:=False;
Edit2.Clear;
Edit2.Enabled:=False;
ListBox1.Enabled:=False;

Combobox2.ItemIndex:=-1;
Combobox2.Enabled:=False;
Edit3.Clear;
Edit3.Enabled:=False;
ListBox2.Enabled:=False;

Combobox3.ItemIndex:=-1;
Combobox3.Enabled:=False;
Edit4.Clear;
Edit4.Enabled:=False;
ListBox3.Enabled:=False;

Combobox4.ItemIndex:=-1;
Combobox4.Enabled:=False;
Edit5.Clear;
Edit5.Enabled:=False;
ListBox4.Enabled:=False;

Combobox5.ItemIndex:=-1;
Combobox5.Enabled:=False;
Edit6.Clear;
Edit6.Enabled:=False;
ListBox5.Enabled:=False;

Combobox6.ItemIndex:=-1;
Combobox6.Enabled:=False;
Edit7.Clear;
Edit7.Enabled:=False;
ListBox6.Enabled:=False;

Combobox7.ItemIndex:=-1;
Combobox7.Enabled:=False;
Edit8.Clear;
Edit8.Enabled:=False;
ListBox7.Enabled:=False;

//Abaixo s„o os botıes
novo.Enabled:=True;
cancelar.Enabled:=False;
gravar.Enabled:=False;
end;

end;

procedure TForm10.dbnomeClick(Sender: TObject);
begin
dbnome.Color:=clWindow;
dbnome.Text:=trim(uppercase(dbnome.Text));
end;

procedure TForm10.dbnomeEnter(Sender: TObject);
begin
dbnome.Color:=clWindow;
dbnome.Text:=trim(uppercase(dbnome.Text));
end;

procedure TForm10.dbnomeExit(Sender: TObject);
begin
dbnome.ParentColor:=True;
dbnome.Text:=trim(uppercase(dbnome.Text));
end;

procedure TForm10.dbnomeKeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞1234567890<>!@#$%®&*()_-+={}[]?;:,.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
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
dbnome.SetFocus;
end;
end;

procedure TForm10.dbvalorKeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞<>!@#$%®&*()_+={}[]?;:.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
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
dbvalor.SetFocus;
end;
end;

procedure TForm10.SpeedButton1Click(Sender: TObject);
begin
Form10.Enabled:=False;
Application.CreateForm(TForm3, Form3);{Carrega form na memÛria}
Form3.ShowModal;{Mostra form em modo exclusivo}
Form3.Free; {Libera MemÛria}
frmprincipal.Enabled:=False;
end;

procedure TForm10.ComboBox1Enter(Sender: TObject);
var
i,y:integer;
begin
ComboBox1.Color:=clWindow;

ComboBox1.Items.Clear;
ComboBox1.ItemIndex:=0;

ADOQuery9.Open;
y:=ADOQuery9.RecordCount;
i:=0;
while i < y do
begin
i:=i+1;
ComboBox1.Items.Add(UpperCase(ADOQuery9.Fieldbyname('tipo').Value));
ADOQuery9.Next;
end;
ADOQuery9.Close;
end;

procedure TForm10.ComboBox2Enter(Sender: TObject);
var
i,y:integer;
begin
ComboBox2.Color:=clWindow;

ComboBox2.Items.Clear;
ComboBox2.ItemIndex:=0;

ADOQuery10.Open;
y:=ADOQuery10.RecordCount;
i:=0;
while i < y do
begin
i:=i+1;
ComboBox2.Items.Add(UpperCase(ADOQuery10.Fieldbyname('tipo').Value));
ADOQuery10.Next;
end;
ADOQuery10.Close;
end;

procedure TForm10.ComboBox3Enter(Sender: TObject);
var
i,y:integer;
begin
ComboBox3.Color:=clWindow;

ComboBox3.Items.Clear;
ComboBox3.ItemIndex:=0;

ADOQuery11.Open;
y:=ADOQuery11.RecordCount;
i:=0;
while i < y do
begin
i:=i+1;
ComboBox3.Items.Add(UpperCase(ADOQuery11.Fieldbyname('tipo').Value));
ADOQuery11.Next;
end;
ADOQuery11.Close;
end;

procedure TForm10.ComboBox4Enter(Sender: TObject);
var
i,y:integer;
begin
ComboBox4.Color:=clWindow;

ComboBox4.Items.Clear;
ComboBox4.ItemIndex:=0;

ADOQuery12.Open;
y:=ADOQuery12.RecordCount;
i:=0;
while i < y do
begin
i:=i+1;
ComboBox4.Items.Add(UpperCase(ADOQuery12.Fieldbyname('tipo').Value));
ADOQuery12.Next;
end;
ADOQuery12.Close;
end;

procedure TForm10.ComboBox5Enter(Sender: TObject);
var
i,y:integer;
begin
ComboBox5.Color:=clWindow;

ComboBox5.Items.Clear;
ComboBox5.ItemIndex:=0;

ADOQuery13.Open;
y:=ADOQuery13.RecordCount;
i:=0;
while i < y do
begin
i:=i+1;
ComboBox5.Items.Add(UpperCase(ADOQuery13.Fieldbyname('tipo').Value));
ADOQuery13.Next;
end;
ADOQuery13.Close;
end;

procedure TForm10.ComboBox6Enter(Sender: TObject);
var
i,y:integer;
begin
ComboBox6.Color:=clWindow;

ComboBox6.Items.Clear;
ComboBox6.ItemIndex:=0;

ADOQuery14.Open;
y:=ADOQuery14.RecordCount;
i:=0;
while i < y do
begin
i:=i+1;
ComboBox6.Items.Add(UpperCase(ADOQuery14.Fieldbyname('tipo').Value));
ADOQuery14.Next;
end;
ADOQuery14.Close;
end;

procedure TForm10.ComboBox7Enter(Sender: TObject);
var
i,y:integer;
begin
ComboBox7.Color:=clWindow;

ComboBox7.Items.Clear;
ComboBox7.ItemIndex:=0;

ADOQuery15.Open;
y:=ADOQuery15.RecordCount;
i:=0;
while i < y do
begin
i:=i+1;
ComboBox7.Items.Add(UpperCase(ADOQuery15.Fieldbyname('tipo').Value));
ADOQuery15.Next;
end;
ADOQuery15.Close;
end;

procedure TForm10.ComboBox1Click(Sender: TObject);
begin
ComboBox1.Color:=clWindow;
end;

procedure TForm10.ComboBox1Exit(Sender: TObject);
begin
ComboBox1.ParentColor:=True;
end;

procedure TForm10.btn01Click(Sender: TObject);
begin
if ( (combobox1.Text <> '') and ((Trim(Edit2.Text) <> '') and (StrToFloat(Edit2.Text) <> 0)) ) then
begin
ListBox1.Items.Add(Combobox1.Text+' - '+Edit2.Text+' m≤');
DBMemo1.Lines.Add(Combobox1.Text);
DBMemo2.Lines.Add(Edit2.Text);
Edit2.Clear;
end;
end;

procedure TForm10.SpeedButton2Click(Sender: TObject);
begin
if ( (combobox2.Text <> '') and ((Trim(Edit3.Text) <> '') and (StrToFloat(Edit3.Text) <> 0)) ) then
begin
ListBox2.Items.Add(Combobox2.Text+' - '+Edit3.Text+' m≥');
DBMemo3.Lines.Add(Combobox2.Text);
DBMemo4.Lines.Add(Edit3.Text);
Edit3.Clear;
end;
end;

procedure TForm10.SpeedButton3Click(Sender: TObject);
begin
if ( (combobox3.Text <> '') and ((Trim(Edit4.Text) <> '') and (StrToFloat(Edit4.Text) <> 0)) ) then
begin
ListBox3.Items.Add(Combobox3.Text+' - '+Edit4.Text+' kg');
DBMemo5.Lines.Add(Combobox3.Text);
DBMemo6.Lines.Add(Edit4.Text);
Edit4.Clear;
end;
end;

procedure TForm10.SpeedButton4Click(Sender: TObject);
begin
if ( (combobox4.Text <> '') and ((Trim(Edit5.Text) <> '') and (StrToFloat(Edit5.Text) <> 0)) ) then
begin
ListBox4.Items.Add(Combobox4.Text+' - '+Edit5.Text+' kg');
DBMemo7.Lines.Add(Combobox4.Text);
DBMemo8.Lines.Add(Edit5.Text);
Edit5.Clear;
end;
end;

procedure TForm10.SpeedButton5Click(Sender: TObject);
begin
if ( (combobox5.Text <> '') and ((Trim(Edit6.Text) <> '') and (StrToFloat(Edit6.Text) <> 0)) ) then
begin
ListBox5.Items.Add(Combobox5.Text+' - '+Edit6.Text+' kg');
DBMemo9.Lines.Add(Combobox5.Text);
DBMemo10.Lines.Add(Edit6.Text);
Edit6.Clear;
end;
end;

procedure TForm10.SpeedButton6Click(Sender: TObject);
begin
if ( (combobox6.Text <> '') and ((Trim(Edit7.Text) <> '') and (StrToFloat(Edit7.Text) <> 0)) ) then
begin
ListBox6.Items.Add(Combobox6.Text+' - '+Edit7.Text+' kg');
DBMemo11.Lines.Add(Combobox6.Text);
DBMemo12.Lines.Add(Edit7.Text);
Edit7.Clear;
end;
end;

procedure TForm10.SpeedButton7Click(Sender: TObject);
begin
if ( (combobox7.Text <> '') and ((Trim(Edit8.Text) <> '') and (StrToFloat(Edit8.Text) <> 0)) ) then
begin
ListBox7.Items.Add(Combobox7.Text+' - '+Edit8.Text+' kg');
DBMemo13.Lines.Add(Combobox7.Text);
DBMemo14.Lines.Add(Edit8.Text);
Edit8.Clear;
end;
end;

procedure TForm10.ComboBox2Click(Sender: TObject);
begin
ComboBox2.Color:=clWindow;
end;

procedure TForm10.ComboBox3Click(Sender: TObject);
begin
ComboBox3.Color:=clWindow;
end;

procedure TForm10.ComboBox4Click(Sender: TObject);
begin
ComboBox4.Color:=clWindow;
end;

procedure TForm10.ComboBox5Click(Sender: TObject);
begin
ComboBox5.Color:=clWindow;
end;

procedure TForm10.ComboBox6Click(Sender: TObject);
begin
ComboBox6.Color:=clWindow;
end;

procedure TForm10.ComboBox7Click(Sender: TObject);
begin
ComboBox7.Color:=clWindow;
end;

procedure TForm10.Edit2Click(Sender: TObject);
begin
Edit2.Color:=clWindow;
end;

procedure TForm10.Edit2Enter(Sender: TObject);
begin
Edit2.Color:=clWindow;
end;

procedure TForm10.Edit3Click(Sender: TObject);
begin
Edit3.Color:=clWindow;
end;

procedure TForm10.Edit3Enter(Sender: TObject);
begin
Edit3.Color:=clWindow;
end;

procedure TForm10.Edit4Click(Sender: TObject);
begin
Edit4.Color:=clWindow;
end;

procedure TForm10.Edit4Enter(Sender: TObject);
begin
Edit4.Color:=clWindow;
end;

procedure TForm10.Edit5Click(Sender: TObject);
begin
Edit5.Color:=clWindow;
end;

procedure TForm10.Edit5Enter(Sender: TObject);
begin
Edit5.Color:=clWindow;
end;

procedure TForm10.Edit6Click(Sender: TObject);
begin
Edit6.Color:=clWindow;
end;

procedure TForm10.Edit6Enter(Sender: TObject);
begin
Edit6.Color:=clWindow;
end;

procedure TForm10.Edit7Click(Sender: TObject);
begin
Edit7.Color:=clWindow;
end;

procedure TForm10.Edit7Enter(Sender: TObject);
begin
Edit7.Color:=clWindow;
end;

procedure TForm10.Edit8Click(Sender: TObject);
begin
Edit8.Color:=clWindow;
end;

procedure TForm10.Edit8Enter(Sender: TObject);
begin
Edit8.Color:=clWindow;
end;

procedure TForm10.ListBox1Click(Sender: TObject);
begin
ListBox1.Color:=clWindow;
end;

procedure TForm10.ListBox1Enter(Sender: TObject);
begin
ListBox1.Color:=clWindow;
end;

procedure TForm10.ListBox2Click(Sender: TObject);
begin
ListBox2.Color:=clWindow;
end;

procedure TForm10.ListBox2Enter(Sender: TObject);
begin
ListBox2.Color:=clWindow;
end;

procedure TForm10.ListBox3Click(Sender: TObject);
begin
ListBox3.Color:=clWindow;
end;

procedure TForm10.ListBox3Enter(Sender: TObject);
begin
ListBox3.Color:=clWindow;
end;

procedure TForm10.ListBox4Click(Sender: TObject);
begin
ListBox4.Color:=clWindow;
end;

procedure TForm10.ListBox4Enter(Sender: TObject);
begin
ListBox4.Color:=clWindow;
end;

procedure TForm10.ListBox5Enter(Sender: TObject);
begin
ListBox5.Color:=clWindow;
end;

procedure TForm10.ListBox5Click(Sender: TObject);
begin
ListBox5.Color:=clWindow;
end;

procedure TForm10.ListBox6Click(Sender: TObject);
begin
ListBox6.Color:=clWindow;
end;

procedure TForm10.ListBox6Enter(Sender: TObject);
begin
ListBox6.Color:=clWindow;
end;

procedure TForm10.ListBox7Click(Sender: TObject);
begin
ListBox7.Color:=clWindow;
end;

procedure TForm10.ListBox7Enter(Sender: TObject);
begin
ListBox7.Color:=clWindow;
end;

procedure TForm10.ComboBox2Exit(Sender: TObject);
begin
ComboBox2.ParentColor:=True;
end;

procedure TForm10.ComboBox3Exit(Sender: TObject);
begin
ComboBox3.ParentColor:=True;
end;

procedure TForm10.ComboBox4Exit(Sender: TObject);
begin
ComboBox4.ParentColor:=True;
end;

procedure TForm10.ComboBox5Exit(Sender: TObject);
begin
ComboBox5.ParentColor:=True;
end;

procedure TForm10.ComboBox6Exit(Sender: TObject);
begin
ComboBox6.ParentColor:=True;
end;

procedure TForm10.ComboBox7Exit(Sender: TObject);
begin
ComboBox7.ParentColor:=True;
end;

procedure TForm10.Edit2Exit(Sender: TObject);
begin
Edit2.ParentColor:=True;
end;

procedure TForm10.Edit3Exit(Sender: TObject);
begin
Edit3.ParentColor:=True;
end;

procedure TForm10.Edit4Exit(Sender: TObject);
begin
Edit4.ParentColor:=True;
end;

procedure TForm10.Edit5Exit(Sender: TObject);
begin
Edit5.ParentColor:=True;
end;

procedure TForm10.Edit6Exit(Sender: TObject);
begin
Edit6.ParentColor:=True;
end;

procedure TForm10.Edit7Exit(Sender: TObject);
begin
Edit7.ParentColor:=True;
end;

procedure TForm10.Edit8Exit(Sender: TObject);
begin
Edit8.ParentColor:=True;
end;

procedure TForm10.ListBox1Exit(Sender: TObject);
begin
ListBox1.ParentColor:=True;
end;

procedure TForm10.ListBox2Exit(Sender: TObject);
begin
ListBox2.ParentColor:=True;
end;

procedure TForm10.ListBox3Exit(Sender: TObject);
begin
ListBox3.ParentColor:=True;
end;

procedure TForm10.ListBox4Exit(Sender: TObject);
begin
ListBox4.ParentColor:=True;
end;

procedure TForm10.ListBox5Exit(Sender: TObject);
begin
ListBox5.ParentColor:=True;
end;

procedure TForm10.ListBox6Exit(Sender: TObject);
begin
ListBox6.ParentColor:=True;
end;

procedure TForm10.ListBox7Exit(Sender: TObject);
begin
ListBox7.ParentColor:=True;
end;

procedure TForm10.dbvalorClick(Sender: TObject);
begin
dbvalor.Color:=clWindow;
end;

procedure TForm10.dbvalorEnter(Sender: TObject);
begin
dbvalor.Color:=clWindow;
end;

procedure TForm10.dbvalorExit(Sender: TObject);
begin
dbvalor.ParentColor:=True;
end;

end.


