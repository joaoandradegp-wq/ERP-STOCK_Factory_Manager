unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, Grids, DBGrids, Mask, DBCtrls, Buttons, ExtCtrls,ComObj,
  ADODB;

type
  TForm7 = class(TForm)
    fechar: TSpeedButton;
    Bevel7: TBevel;
    Bevel3: TBevel;
    SpeedButton1: TSpeedButton;
    Label16: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label17: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    dbcpf: TDBEdit;
    dbend: TDBMemo;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery1nome: TWideStringField;
    ADOQuery1cpf: TWideStringField;
    ADOQuery1carteira_trabalho: TWideStringField;
    ADOQuery1identidade: TWideStringField;
    ADOQuery1endereco: TMemoField;
    Label4: TLabel;
    dbtrabalho: TDBEdit;
    Label5: TLabel;
    dbidentidade: TDBEdit;
    DBText1: TDBText;
    Label10: TLabel;
    Timer1: TTimer;
    ADOQuery1valor_hora: TBCDField;
    btnpagamento: TSpeedButton;
    dbcontato: TDBMemo;
    ADOQuery1contato: TMemoField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fecharClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure btnpagamentoClick(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit1, Unit12, Unit18;

{$R *.DFM}


procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if ADOQuery1.Active=True then
ADOQuery1.Active:=false;

Timer1.Enabled:=False;

Edit1.Text:='';
Edit2.Text:='';
Label3.Caption:='Nenhum Funcionário';
DBGrid1.Options:=[dgColumnResize,dgRowSelect,dgConfirmDelete,dgCancelOnExit];
Frmprincipal.Enabled:=True;

//Abaixo para Liberar o Form da Memória
Form7.Release;
Form7 := Nil;
end;

procedure TForm7.fecharClick(Sender: TObject);
begin
close;
end;

procedure TForm7.FormDestroy(Sender: TObject);
begin
frmprincipal.Enabled:=True;
end;

procedure TForm7.FormActivate(Sender: TObject);
begin
Timer1.Enabled:=True;
Edit1.SetFocus;
end;

procedure TForm7.SpeedButton1Click(Sender: TObject);
begin
Edit1.Text:=uppercase(Edit1.Text);

if trim(Edit1.Text) = '' then   //Se o Edit1 for igual à VAZIO
begin
ADOQuery1.Active:=false;
DBGrid1.Options:=[];
Label3.Caption:='Nenhum Funcionário';
btnpagamento.Enabled:=False;
MessageDlg(#13+'Digite o nome de um Funcionário cadastrado!', mtwarning, [mbOk], 0);
Edit1.Text:='';
Edit1.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      ADOQuery1.sql.Add('Select * from funcionarios where nome like "'+uppercase(trim(Edit1.Text))+'%"');
      ADOQuery1.open;

      DBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
      btnpagamento.Enabled:=True;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Funcionários'
   else
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Funcionário';

if ADOQuery1.RecordCount = 0 then   //Caso não apareça nenhum registro
begin
ADOQuery1.Active:=false;
DBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
Label3.Caption:='Nenhum Funcionário';
btnpagamento.Enabled:=False;
MessageDlg(#13+'Funcionário não encontrado no Sistema!', mtwarning, [mbOk], 0);
Edit1.Text:='';
Edit1.SetFocus;
end;

end;
end;

procedure TForm7.SpeedButton2Click(Sender: TObject);
begin
if trim(Edit2.Text) = '' then   //Se o Edit2 for igual à VAZIO
begin
aux:=Label1.Caption;
vet:=length(aux);
delete(aux,vet,1);

ADOQuery1.Active:=false;
DBGrid1.Options:=[];
Label3.Caption:='Nenhum Funcionário';
btnpagamento.Enabled:=False;
MessageDlg(#13+'Digite um '+aux+' válido!', mtwarning, [mbOk], 0);
Edit2.Text:='';
Edit2.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      ADOQuery1.sql.Add('Select * from funcionarios where cpf = "'+uppercase(trim(Edit2.Text))+'"');
      ADOQuery1.open;

      DBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
      btnpagamento.Enabled:=True;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Funcionários'
   else
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Funcionário';

if ADOQuery1.RecordCount = 0 then   //Caso não apareça nenhum registro
begin
ADOQuery1.Active:=false;
DBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
Label3.Caption:='Nenhum Funcionário';
btnpagamento.Enabled:=False;
MessageDlg(#13+'Funcionário não encontrado no Sistema!', mtwarning, [mbOk], 0);
Edit2.Text:='';
Edit2.SetFocus;
end

end;
end;

procedure TForm7.Edit1KeyPress(Sender: TObject; var Key: Char);
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
Edit1.SetFocus;
end;

if key = #13 then
begin
Edit1.Text:=uppercase(Edit1.Text);

if trim(Edit1.Text) = '' then   //Se o Edit1 for igual à VAZIO
begin
ADOQuery1.Active:=false;
DBGrid1.Options:=[];
Label3.Caption:='Nenhum Funcionário';
btnpagamento.Enabled:=False;
MessageDlg(#13+'Digite o nome de um Funcionário cadastrado!', mtwarning, [mbOk], 0);
Edit1.Text:='';
Edit1.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      ADOQuery1.sql.Add('Select * from funcionarios where nome like "'+uppercase(trim(Edit1.Text))+'%"');
      ADOQuery1.open;

      DBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
      btnpagamento.Enabled:=True;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Funcionários'
   else
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Funcionário';

if ADOQuery1.RecordCount = 0 then   //Caso não apareça nenhum registro
begin
ADOQuery1.Active:=false;
DBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
Label3.Caption:='Nenhum Funcionário';
btnpagamento.Enabled:=False;
MessageDlg(#13+'Funcionário não encontrado no Sistema!', mtwarning, [mbOk], 0);
Edit1.Text:='';
Edit1.SetFocus;
end

end;
end;

end;

procedure TForm7.Edit2KeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_-+={}[]?;:,.|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVXYZW';
min = 'abcdefghijklmnopqrstuvxyzw';
Var
Str : String;
vet :integer;
aux :string;
begin

inherited;
Str := key;
if (Pos(Str,especiais+mai+min)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
Edit2.SetFocus;
end;

if key = #13 then
begin

if trim(Edit2.Text) = '' then   //Se o Edit1 for igual à VAZIO
begin
aux:=Label1.Caption;
vet:=length(aux);
delete(aux,vet,1);

ADOQuery1.Active:=false;
DBGrid1.Options:=[];
Label3.Caption:='Nenhum Funcionário';
btnpagamento.Enabled:=False;
MessageDlg(#13+'Digite um '+aux+' válido!', mtwarning, [mbOk], 0);
Edit2.Text:='';
Edit2.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      ADOQuery1.sql.Add('Select * from funcionarios where cpf = "'+uppercase(trim(Edit2.Text))+'"');
      ADOQuery1.open;

      DBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
      btnpagamento.Enabled:=True;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Funcionários'
   else
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Funcionário';

if ADOQuery1.RecordCount = 0 then   //Caso não apareça nenhum registro
begin
ADOQuery1.Active:=false;
DBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
Label3.Caption:='Nenhum Funcionário';
btnpagamento.Enabled:=False;
MessageDlg(#13+'Funcionário não encontrado no Sistema!', mtwarning, [mbOk], 0);
Edit2.Text:='';
Edit2.SetFocus;
end

end;
end;

end;

procedure TForm7.Timer1Timer(Sender: TObject);
begin
if (DBText1.Caption <> '') then
Label10.Caption:=Format('%5.2m',[StrToFloat(DBText1.Caption)])
else
Label10.Caption:='';
end;

procedure TForm7.btnpagamentoClick(Sender: TObject);
begin
Form7.Enabled:=False;
Application.CreateForm(TForm18, Form18);{Carrega form na memória}
Form18.ShowModal;{Mostra form em modo exclusivo}
Form18.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TForm7.Edit1Enter(Sender: TObject);
begin
ADOQuery1.Active:=false;
Edit2.Clear;
btnpagamento.Enabled:=False;
DBGrid1.Options:=[];
Label3.Caption:='Nenhum Funcionário';
end;

procedure TForm7.Edit2Enter(Sender: TObject);
begin
ADOQuery1.Active:=false;
Edit1.Clear;
btnpagamento.Enabled:=False;
DBGrid1.Options:=[];
Label3.Caption:='Nenhum Funcionário';
end;

end.

