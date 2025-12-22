unit Unit20_cadcliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, ADODB, Mask, Buttons, ExtCtrls;

type
  TForm20 = class(TForm)
    Label19: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label17: TLabel;
    Label14: TLabel;
    Label8: TLabel;
    fechar: TSpeedButton;
    Label3: TLabel;
    dbnome: TDBEdit;
    dbend: TDBMemo;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    novo: TSpeedButton;
    editar: TSpeedButton;
    excluir: TSpeedButton;
    gravar: TSpeedButton;
    cancelar: TSpeedButton;
    localizar: TSpeedButton;
    Bevel4: TBevel;
    Bevel5: TBevel;
    dbcpf: TDBEdit;
    DataSource2: TDataSource;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    WideStringField1: TWideStringField;
    dbvendedor_real: TDBEdit;
    dbvendedor: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    dbcontato: TDBMemo;
    ADOQuery1nome: TWideStringField;
    ADOQuery1cpf_cnpj: TWideStringField;
    ADOQuery1endereco: TMemoField;
    ADOQuery1contato: TMemoField;
    ADOQuery1vendedor: TWideStringField;
    procedure novoClick(Sender: TObject);
    procedure editarClick(Sender: TObject);
    procedure gravarClick(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
    procedure excluirClick(Sender: TObject);
    procedure localizarClick(Sender: TObject);
    procedure fecharClick(Sender: TObject);
    procedure dbnomeClick(Sender: TObject);
    procedure dbnomeEnter(Sender: TObject);
    procedure dbnomeExit(Sender: TObject);
    procedure dbnomeKeyPress(Sender: TObject; var Key: Char);
    procedure dbcpfClick(Sender: TObject);
    procedure dbcpfEnter(Sender: TObject);
    procedure dbcpfExit(Sender: TObject);
    procedure dbcpfKeyPress(Sender: TObject; var Key: Char);
    procedure dbendChange(Sender: TObject);
    procedure dbendClick(Sender: TObject);
    procedure dbendEnter(Sender: TObject);
    procedure dbendExit(Sender: TObject);
    procedure dbendKeyPress(Sender: TObject; var Key: Char);
    procedure dbcontatoClick(Sender: TObject);
    procedure dbcontatoEnter(Sender: TObject);
    procedure dbcontatoExit(Sender: TObject);
    procedure dbcontatoKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbvendedorEnter(Sender: TObject);
    procedure dbvendedorClick(Sender: TObject);
    procedure dbvendedorExit(Sender: TObject);
    procedure dbvendedorChange(Sender: TObject);
    procedure dbcontatoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form20: TForm20;

implementation

uses Unit1, Unit12;

{$R *.dfm}

procedure TForm20.novoClick(Sender: TObject);
begin
ADOQuery1.Active:=True;
ADOQuery1.Append;

//Abaixo s„o os Edit's
dbnome.Enabled:=True;
dbcpf.Enabled:=True;
dbend.Enabled:=True;
dbcontato.Enabled:=True;
dbvendedor.Enabled:=True;

//Abaixo s„o os Botıes
editar.Enabled:=False;
novo.Enabled:=False;
excluir.Enabled:=False;
cancelar.Enabled:=True;
gravar.Enabled:=True ;
localizar.Enabled:=False;

dbvendedor.ItemIndex:=-1;
dbvendedor_real.Visible:=False;

//Abaixo deixa o campo Nome pronto pra digitar
dbnome.SetFocus;
end;

procedure TForm20.editarClick(Sender: TObject);
begin
ADOQuery1.Edit;

//Abaixo s„o os Edit's
dbnome.Enabled:=True;
dbcpf.Enabled:=True;
dbend.Enabled:=True;
dbcontato.Enabled:=True;
dbvendedor.Enabled:=True;

//Abaixo s„o os Botıes
editar.Enabled:=False;
novo.Enabled:=False;
excluir.Enabled:=False;
cancelar.Enabled:=True;
gravar.Enabled:=True ;
localizar.Enabled:=False;

dbvendedor_real.Visible:=False;
end;

procedure TForm20.gravarClick(Sender: TObject);
begin
if trim(dbnome.Text) = '' then
begin
aux:=Label1.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
dbnome.SetFocus;
end

else if trim(dbcpf.Text) = '' then
begin
aux:=Label15.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
dbcpf.SetFocus;
end

else if trim(dbend.Text) = '' then
begin
aux:=Label3.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
dbend.SetFocus;
end

else if trim(dbcontato.Text) = '' then
begin
aux:=Label2.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
dbcontato.SetFocus;
end

else if trim(dbvendedor.Text) = '' then
begin
aux:=Label14.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
dbvendedor.SetFocus;
end;

 if (dbnome.Text<>'')
and (dbcpf.Text<>'')
and (dbend.Text<>'')
and (dbcontato.Text<>'')
and (dbvendedor.Text<>'') then

begin
ADOQuery1.Post;

//Abaixo s„o os Edit's
dbnome.Enabled:=False;
dbcpf.Enabled:=False;
dbend.Enabled:=False;
dbcontato.Enabled:=False;
dbvendedor.Enabled:=False;

//Abaixo s„o os botıes
editar.Enabled:=True;
novo.Enabled:=True;
excluir.Enabled:=True;
cancelar.Enabled:=False;
gravar.Enabled:=False;
localizar.Enabled:=True;
end;
end;

procedure TForm20.cancelarClick(Sender: TObject);
begin
ADOQuery1.Cancel;
ADOQuery1.Active:=False;

//Abaixo s„o os Edit's
dbnome.Enabled:=False;
dbcpf.Enabled:=False;
dbend.Enabled:=False;
dbcontato.Enabled:=False;
dbvendedor.Enabled:=False;

//Abaixo s„o os botıes
editar.Enabled:=False;
novo.Enabled:=True;
excluir.Enabled:=False;
cancelar.Enabled:=False;
gravar.Enabled:=False;
localizar.Enabled:=True;

dbvendedor.ItemIndex:=-1;
dbvendedor_real.Visible:=True;
end;

procedure TForm20.excluirClick(Sender: TObject);
begin
  if MessageDlg(#13+'Deseja realmente excluir o cliente '+dbnome.Text+'?',mtConfirmation, [mbyes, mbno],0) = mrYes then
  begin
  MessageDlg(#13+'Cliente '+dbnome.Text+' deletado com sucesso!', mtinformation, [mbOk], 0);
  ADOQuery1.Delete;
  ADOQuery1.Active:=False;

  dbvendedor_real.Visible:=True;
  dbvendedor_real.Clear;

  //Abaixo s„o os botıes
  novo.Enabled:=True;
  excluir.Enabled:=False;
  editar.Enabled:=False;
  gravar.Enabled:=False;
  cancelar.Enabled:=False;
  localizar.Enabled:=True;
  end;
end;

procedure TForm20.localizarClick(Sender: TObject);
begin
Edit1.Clear;
Edit1.Text:=Trim(Inputbox('Consulta','Digite o CPF ou CNPF do Cliente:',''));
ADOQuery1.Active:=True;

    if not ADOQuery1.Locate('cpf_cnpj', trim(Edit1.Text), []) then
    begin
    ADOQuery1.Active:=false;

    dbvendedor_real.Visible:=True;
    dbvendedor_real.Clear;

    //Abaixo s„o os botıes
    novo.Enabled:=True;
    excluir.Enabled:=False;
    editar.Enabled:=False;
    cancelar.Enabled:=False;
    gravar.Enabled:=False;
    localizar.Enabled:=True;

    MessageDlg(#13+'CPF ou CNPJ '+Edit1.Text+' n„o encontrado no Sistema!', mtwarning, [mbOk], 0);
    end
      else
      begin
      dbvendedor_real.Visible:=True;
      //Abaixo s„o os botıes
      editar.Enabled:=True;
      novo.Enabled:=True;
      excluir.Enabled:=True;
      localizar.Enabled:=True;
      end;
end;

procedure TForm20.fecharClick(Sender: TObject);
begin
Close;
end;

procedure TForm20.dbnomeClick(Sender: TObject);
begin
dbnome.Color:=clWindow;
dbnome.Text:=trim(uppercase(dbnome.Text));
end;

procedure TForm20.dbnomeEnter(Sender: TObject);
begin
dbnome.Color:=clWindow;
dbnome.Text:=trim(uppercase(dbnome.Text));
end;

procedure TForm20.dbnomeExit(Sender: TObject);
begin
dbnome.ParentColor:=True;
dbnome.Text:=trim(uppercase(dbnome.Text));
end;

procedure TForm20.dbnomeKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm20.dbcpfClick(Sender: TObject);
begin
dbcpf.Color:=clWindow;
dbcpf.Text:=trim(uppercase(dbcpf.Text));
end;

procedure TForm20.dbcpfEnter(Sender: TObject);
begin
dbcpf.Color:=clWindow;
dbcpf.Text:=trim(uppercase(dbcpf.Text));
end;

procedure TForm20.dbcpfExit(Sender: TObject);
begin
dbcpf.ParentColor:=True;
dbcpf.Text:=trim(uppercase(dbcpf.Text));
end;

procedure TForm20.dbcpfKeyPress(Sender: TObject; var Key: Char);
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
dbcpf.SetFocus;
end;
end;

procedure TForm20.dbendChange(Sender: TObject);
begin
//Abaixo o contador de caracteres
Label8.Caption:=FormatFloat('000',StrToFloat(IntToStr(500-length(dbend.Text))));
end;

procedure TForm20.dbendClick(Sender: TObject);
begin
dbend.Color:=clWindow;
dbend.Text:=trim(uppercase(dbend.Text));
end;

procedure TForm20.dbendEnter(Sender: TObject);
begin
dbend.Color:=clWindow;
dbend.Text:=trim(uppercase(dbend.Text));
end;

procedure TForm20.dbendExit(Sender: TObject);
begin
dbend.ParentColor:=True;
dbend.Text:=trim(uppercase(dbend.Text));
end;

procedure TForm20.dbendKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '<>!@#$%®&*_+={}[]?;:|\/*"~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
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
dbend.SetFocus;
end;
end;

procedure TForm20.dbcontatoClick(Sender: TObject);
begin
dbcontato.Color:=clWindow;
end;

procedure TForm20.dbcontatoEnter(Sender: TObject);
begin
dbcontato.Color:=clWindow;
dbcontato.Text:=trim(uppercase(dbcontato.Text));
end;

procedure TForm20.dbcontatoExit(Sender: TObject);
begin
dbcontato.ParentColor:=True;
dbcontato.Text:=trim(uppercase(dbcontato.Text));
end;

procedure TForm20.dbcontatoKeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞<>!@#$%®&*()_+={}[]?;:.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
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
dbcontato.SetFocus;
end;
end;

procedure TForm20.FormActivate(Sender: TObject);
begin
ADOQuery1.Active:=True;
ADOQuery1.Append;

ADOQuery2.Active:=True;

//Abaixo s„o os Edit's
dbnome.Enabled:=True;
dbcpf.Enabled:=True;
dbend.Enabled:=True;
dbcontato.Enabled:=True;

//Abaixo s„o os Botıes
editar.Enabled:=False;
novo.Enabled:=False;
excluir.Enabled:=False;
cancelar.Enabled:=True;
gravar.Enabled:=True ;
localizar.Enabled:=False;

dbvendedor.ItemIndex:=-1;
dbvendedor_real.Visible:=False;

//Abaixo deixa o campo Nome pronto pra digitar
dbnome.SetFocus;
end;

procedure TForm20.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if ADOQuery1.Active=True then
ADOQuery1.Active:=false;

if ADOQuery2.Active=True then
ADOQuery2.Active:=false;

Frmprincipal.Enabled:=True;

//Abaixo para Liberar o Form da MemÛria
Form20.Release;
Form20 := Nil;
end;

procedure TForm20.FormDestroy(Sender: TObject);
begin
frmprincipal.Enabled:=True;
end;

procedure TForm20.dbvendedorEnter(Sender: TObject);
var
i,y:integer;
begin
dbvendedor.Color:=clWindow;

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

procedure TForm20.dbvendedorClick(Sender: TObject);
begin
dbvendedor.Color:=clWindow;
dbvendedor_real.Visible:=False;
end;

procedure TForm20.dbvendedorExit(Sender: TObject);
begin
dbvendedor.ParentColor:=True;
end;

procedure TForm20.dbvendedorChange(Sender: TObject);
begin
//Abaixo pega da tabela de Vendedor o nome e joga pra tabela de Cliente
dbvendedor_real.Text:=dbvendedor.Text;
end;

procedure TForm20.dbcontatoChange(Sender: TObject);
begin
//Abaixo o contador de caracteres
Label5.Caption:=FormatFloat('000',StrToFloat(IntToStr(500-length(dbcontato.Text))));
end;

end.
