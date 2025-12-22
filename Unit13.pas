unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls;

type
  TForm13 = class(TForm)
    Label19: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    Bevel2: TBevel;
    Label17: TLabel;
    Label14: TLabel;
    Bevel6: TBevel;
    Label8: TLabel;
    Label11: TLabel;
    fechar: TSpeedButton;
    Label3: TLabel;
    dbnome: TDBEdit;
    dbtrabalho: TDBEdit;
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
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    dbidentidade: TDBEdit;
    Label4: TLabel;
    dbvalor_hora: TDBEdit;
    Label21: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbcontato: TDBMemo;
    ADOQuery1nome: TWideStringField;
    ADOQuery1cpf: TWideStringField;
    ADOQuery1carteira_trabalho: TWideStringField;
    ADOQuery1identidade: TWideStringField;
    ADOQuery1endereco: TMemoField;
    ADOQuery1contato: TMemoField;
    ADOQuery1valor_hora: TBCDField;
    procedure fecharClick(Sender: TObject);
    procedure novoClick(Sender: TObject);
    procedure editarClick(Sender: TObject);
    procedure gravarClick(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
    procedure excluirClick(Sender: TObject);
    procedure localizarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbnomeClick(Sender: TObject);
    procedure dbnomeEnter(Sender: TObject);
    procedure dbnomeExit(Sender: TObject);
    procedure dbnomeKeyPress(Sender: TObject; var Key: Char);
    procedure dbcpfClick(Sender: TObject);
    procedure dbcpfEnter(Sender: TObject);
    procedure dbcpfExit(Sender: TObject);
    procedure dbcpfKeyPress(Sender: TObject; var Key: Char);
    procedure dbtrabalhoClick(Sender: TObject);
    procedure dbtrabalhoEnter(Sender: TObject);
    procedure dbtrabalhoExit(Sender: TObject);
    procedure dbtrabalhoKeyPress(Sender: TObject; var Key: Char);
    procedure dbidentidadeClick(Sender: TObject);
    procedure dbidentidadeExit(Sender: TObject);
    procedure dbidentidadeEnter(Sender: TObject);
    procedure dbidentidadeKeyPress(Sender: TObject; var Key: Char);
    procedure dbendChange(Sender: TObject);
    procedure dbendClick(Sender: TObject);
    procedure dbendEnter(Sender: TObject);
    procedure dbendExit(Sender: TObject);
    procedure dbendKeyPress(Sender: TObject; var Key: Char);
    procedure dbcontatoClick(Sender: TObject);
    procedure dbcontatoEnter(Sender: TObject);
    procedure dbcontatoExit(Sender: TObject);
    procedure dbcontatoKeyPress(Sender: TObject; var Key: Char);
    procedure dbvalor_horaClick(Sender: TObject);
    procedure dbvalor_horaEnter(Sender: TObject);
    procedure dbvalor_horaExit(Sender: TObject);
    procedure dbvalor_horaKeyPress(Sender: TObject; var Key: Char);
    procedure dbcontatoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

uses Unit1, Unit12;

{$R *.dfm}

procedure TForm13.fecharClick(Sender: TObject);
begin
Close;
end;

procedure TForm13.novoClick(Sender: TObject);
begin
ADOQuery1.Active:=True;
ADOQuery1.Append;

//Abaixo são os Edit's
dbnome.Enabled:=True;
dbcpf.Enabled:=True;
dbtrabalho.Enabled:=True;
dbidentidade.Enabled:=True;
dbend.Enabled:=True;
dbcontato.Enabled:=True;
dbvalor_hora.Enabled:=True;

//Abaixo são os Botões
editar.Enabled:=False;
novo.Enabled:=False;
excluir.Enabled:=False;
cancelar.Enabled:=True;
gravar.Enabled:=True ;
localizar.Enabled:=False;

//Abaixo deixa o campo Nome pronto pra digitar
dbnome.SetFocus;
end;

procedure TForm13.editarClick(Sender: TObject);
begin
ADOQuery1.Edit;

//Abaixo são os Edit's
dbnome.Enabled:=True;
dbcpf.Enabled:=True;
dbtrabalho.Enabled:=True;
dbidentidade.Enabled:=True;
dbend.Enabled:=True;
dbcontato.Enabled:=True;
dbvalor_hora.Enabled:=True;

//Abaixo são os Botões
editar.Enabled:=False;
novo.Enabled:=False;
excluir.Enabled:=False;
cancelar.Enabled:=True;
gravar.Enabled:=True ;
localizar.Enabled:=False;
end;

procedure TForm13.gravarClick(Sender: TObject);
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

else if trim(dbtrabalho.Text) = '' then
begin
aux:=Label2.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
dbtrabalho.SetFocus;
end

else if dbidentidade.Text = '' then
begin
aux:=Label14.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
dbidentidade.SetFocus;
end

else if dbend.Text = '' then
begin
aux:=Label3.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
dbend.SetFocus;
end

else if dbcontato.Text = '' then
begin
aux:=Label11.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
dbcontato.SetFocus;
end

else if dbvalor_hora.Text = '' then
begin
aux:=Label4.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
dbvalor_hora.SetFocus;
end;


 if (dbnome.Text<>'')
and (dbcpf.Text<>'')
and (dbtrabalho.Text<>'')
and (dbidentidade.Text<>'')
and (dbend.Text<>'')
and (dbcontato.Text<>'')
and (dbvalor_hora.Text<>'')
 then

begin
ADOQuery1.Post;

//Abaixo são os Edit's
dbnome.Enabled:=False;
dbcpf.Enabled:=False;
dbtrabalho.Enabled:=False;
dbidentidade.Enabled:=False;
dbend.Enabled:=False;
dbcontato.Enabled:=False;
dbvalor_hora.Enabled:=False;

//Abaixo são os botões
editar.Enabled:=True;
novo.Enabled:=True;
excluir.Enabled:=True;
cancelar.Enabled:=False;
gravar.Enabled:=False;
localizar.Enabled:=True;
end;

end;

procedure TForm13.cancelarClick(Sender: TObject);
begin
ADOQuery1.Cancel;
ADOQuery1.Active:=False;

//Abaixo são os Edit's
dbnome.Enabled:=False;
dbcpf.Enabled:=False;
dbtrabalho.Enabled:=False;
dbidentidade.Enabled:=False;
dbend.Enabled:=False;
dbcontato.Enabled:=False;
dbvalor_hora.Enabled:=False;

//Abaixo são os botões
editar.Enabled:=False;
novo.Enabled:=True;
excluir.Enabled:=False;
cancelar.Enabled:=False;
gravar.Enabled:=False;
localizar.Enabled:=True;
end;

procedure TForm13.excluirClick(Sender: TObject);
begin
  if MessageDlg(#13+'Deseja realmente excluir o funcionário '+dbnome.Text+'?',mtConfirmation, [mbyes, mbcancel],0) = mrYes then
  begin
  MessageDlg(#13+'Funcionário '+dbnome.Text+' deletado com sucesso!', mtinformation, [mbOk], 0);
  ADOQuery1.Delete;
  ADOQuery1.Active:=False;

  //Abaixo são os botões
  novo.Enabled:=True;
  excluir.Enabled:=False;
  editar.Enabled:=False;
  gravar.Enabled:=False;
  cancelar.Enabled:=False;
  localizar.Enabled:=True;
  end;
end;

procedure TForm13.localizarClick(Sender: TObject);
begin
Edit1.Clear;
Edit1.Text:=Trim(Inputbox('Consulta','Digite o CPF do Funcionário:',''));
ADOQuery1.Active:=True;

    if not ADOQuery1.Locate('cpf', trim(Edit1.Text), []) then
    begin
    ADOQuery1.Active:=false;

    //Abaixo são os botões
    novo.Enabled:=True;
    excluir.Enabled:=False;
    editar.Enabled:=False;
    cancelar.Enabled:=False;
    gravar.Enabled:=False;
    localizar.Enabled:=True;

    MessageDlg(#13+'CPF '+Edit1.Text+' não encontrado no Sistema!', mtwarning, [mbOk], 0);
    end
      else
      begin
      //Abaixo são os botões
      editar.Enabled:=True;
      novo.Enabled:=True;
      excluir.Enabled:=True;
      localizar.Enabled:=True;
      end;
end;

procedure TForm13.FormActivate(Sender: TObject);
begin
ADOQuery1.Active:=True;
ADOQuery1.Append;

//Abaixo são os Edit's
dbnome.Enabled:=True;
dbcpf.Enabled:=True;
dbtrabalho.Enabled:=True;
dbidentidade.Enabled:=True;
dbend.Enabled:=True;
dbcontato.Enabled:=True;
dbvalor_hora.Enabled:=True;

//Abaixo são os Botões
editar.Enabled:=False;
novo.Enabled:=False;
excluir.Enabled:=False;
cancelar.Enabled:=True;
gravar.Enabled:=True ;
localizar.Enabled:=False;

//Abaixo deixa o campo Nome pronto pra digitar
dbnome.SetFocus;
end;

procedure TForm13.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if ADOQuery1.Active=True then
ADOQuery1.Active:=false;

Frmprincipal.Enabled:=True;

//Abaixo para Liberar o Form da Memória
Form13.Release;
Form13 := Nil;
end;

procedure TForm13.FormDestroy(Sender: TObject);
begin
frmprincipal.Enabled:=True;
end;

procedure TForm13.dbnomeClick(Sender: TObject);
begin
dbnome.Color:=clWindow;
dbnome.Text:=trim(uppercase(dbnome.Text));
end;

procedure TForm13.dbnomeEnter(Sender: TObject);
begin
dbnome.Color:=clWindow;
dbnome.Text:=trim(uppercase(dbnome.Text));
end;

procedure TForm13.dbnomeExit(Sender: TObject);
begin
dbnome.ParentColor:=True;
dbnome.Text:=trim(uppercase(dbnome.Text));
end;

procedure TForm13.dbnomeKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°0123456789<>!@#$%¨&*()_-+={}[]?;:,.|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
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

procedure TForm13.dbcpfClick(Sender: TObject);
begin
dbcpf.Color:=clWindow;
end;

procedure TForm13.dbcpfEnter(Sender: TObject);
begin
dbcpf.Color:=clWindow;
dbcpf.Text:=trim(dbcpf.Text);
end;

procedure TForm13.dbcpfExit(Sender: TObject);
begin
dbcpf.ParentColor:=True;
dbcpf.Text:=trim(dbcpf.Text);
end;

procedure TForm13.dbcpfKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_-+={}[]?;:,.|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
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

procedure TForm13.dbtrabalhoClick(Sender: TObject);
begin
dbtrabalho.Color:=clWindow;
end;

procedure TForm13.dbtrabalhoEnter(Sender: TObject);
begin
dbtrabalho.Color:=clWindow;
dbtrabalho.Text:=trim(dbtrabalho.Text);
end;

procedure TForm13.dbtrabalhoExit(Sender: TObject);
begin
dbtrabalho.ParentColor:=True;
dbtrabalho.Text:=trim(dbtrabalho.Text);
end;

procedure TForm13.dbtrabalhoKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_-+={}[]?;:,.|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
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
dbtrabalho.SetFocus;
end;
end;

procedure TForm13.dbidentidadeClick(Sender: TObject);
begin
dbidentidade.Color:=clWindow;
end;

procedure TForm13.dbidentidadeExit(Sender: TObject);
begin
dbidentidade.ParentColor:=True;
dbidentidade.Text:=trim(uppercase(dbidentidade.Text));
end;

procedure TForm13.dbidentidadeEnter(Sender: TObject);
begin
dbidentidade.Color:=clWindow;
dbidentidade.Text:=trim(uppercase(dbidentidade.Text));
end;

procedure TForm13.dbidentidadeKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_+={}[]?;:,|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
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
dbidentidade.SetFocus;
end;
end;

procedure TForm13.dbendChange(Sender: TObject);
begin
//Abaixo o contador de caracteres
Label8.Caption:=FormatFloat('000',StrToFloat(IntToStr(500-length(dbend.Text))));
end;

procedure TForm13.dbendClick(Sender: TObject);
begin
dbend.Color:=clWindow;
dbend.Text:=trim(uppercase(dbend.Text));
end;

procedure TForm13.dbendEnter(Sender: TObject);
begin
dbend.Color:=clWindow;
dbend.Text:=trim(uppercase(dbend.Text));
end;

procedure TForm13.dbendExit(Sender: TObject);
begin
dbend.ParentColor:=True;
dbend.Text:=trim(uppercase(dbend.Text));
end;

procedure TForm13.dbendKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_+={}[]?;:|\/*"~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
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

procedure TForm13.dbcontatoClick(Sender: TObject);
begin
dbcontato.Color:=clWindow;
end;

procedure TForm13.dbcontatoEnter(Sender: TObject);
begin
dbcontato.Color:=clWindow;
dbcontato.Text:=trim(uppercase(dbcontato.Text));
end;

procedure TForm13.dbcontatoExit(Sender: TObject);
begin
dbcontato.ParentColor:=True;
dbcontato.Text:=trim(uppercase(dbcontato.Text));
end;

procedure TForm13.dbcontatoKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_+={}[]?;:.|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
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

procedure TForm13.dbvalor_horaClick(Sender: TObject);
begin
dbvalor_hora.Color:=clWindow;
end;

procedure TForm13.dbvalor_horaEnter(Sender: TObject);
begin
dbvalor_hora.Color:=clWindow;
end;

procedure TForm13.dbvalor_horaExit(Sender: TObject);
begin
dbvalor_hora.ParentColor:=True;
end;

procedure TForm13.dbvalor_horaKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_-+={}[]?;:.|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
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
dbvalor_hora.SetFocus;
end;
end;

procedure TForm13.dbcontatoChange(Sender: TObject);
begin
//Abaixo o contador de caracteres
Label6.Caption:=FormatFloat('000',StrToFloat(IntToStr(500-length(dbcontato.Text))));
end;

end.
