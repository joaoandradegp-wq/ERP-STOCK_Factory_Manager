unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Db, DBTables, Mask, DBCtrls, Buttons, ExtCtrls,ComObj,
  ADODB, IdBaseComponent, IdComponent, IdRawBase, IdRawClient, IdIcmpClient;

type
  TForm5 = class(TForm)
    Bevel3: TBevel;
    SpeedButton1: TSpeedButton;
    Label16: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel4: TBevel;
    fechar: TSpeedButton;
    Bevel7: TBevel;
    Bevel2: TBevel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Label17: TLabel;
    Label8: TLabel;
    dbend: TDBMemo;
    Edit2: TEdit;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    ADOQuery1nome: TWideStringField;
    ADOQuery1cpf: TWideStringField;
    ADOQuery1endereco: TMemoField;
    Bevel5: TBevel;
    Label5: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    DBGrid2: TDBGrid;
    Timer1: TTimer;
    Label4: TLabel;
    ADOQuery1comissao: TWideStringField;
    btnpagamento: TSpeedButton;
    ADOQuery1caixa_vend: TBCDField;
    Label6: TLabel;
    Label7: TLabel;
    dbcpf: TDBEdit;
    dbcontato: TDBMemo;
    ADOQuery2nome: TWideStringField;
    ADOQuery2cpf_cnpj: TWideStringField;
    ADOQuery1contato: TMemoField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fecharClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Timer1Timer(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnpagamentoClick(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1, Unit12, Unit19;

{$R *.DFM}

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if ADOQuery1.Active=True then
ADOQuery1.Active:=false;

Timer1.Enabled:=False;

Edit1.Text:='';
Edit2.Text:='';
Label3.Caption:='Nenhum Cliente';
DBGrid1.Options:=[dgColumnResize,dgRowSelect,dgConfirmDelete,dgCancelOnExit];
Frmprincipal.Enabled:=True;

//Abaixo para Liberar o Form da Memória
Form5.Release;
Form5 := Nil;
end;


procedure TForm5.fecharClick(Sender: TObject);
begin
close;
end;

procedure TForm5.FormDestroy(Sender: TObject);
begin
frmprincipal.Enabled:=True;
end;

procedure TForm5.SpeedButton1Click(Sender: TObject);
begin
Edit1.Text:=uppercase(Edit1.Text);

if trim(Edit1.Text) = '' then   //Se o Edit1 for igual à VAZIO
begin
ADOQuery1.Active:=false;
ADOQuery2.Active:=false;
DBGrid1.Options:=[];
DBGrid2.Options:=[];
Label3.Caption:='Nenhum Cliente';
btnpagamento.Enabled:=False;
MessageDlg(#13+'Digite o nome de um Vendedor cadastrado!', mtwarning, [mbOk], 0);
Edit1.Text:='';
Edit1.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;
   ADOQuery2.close;
   ADOQuery2.sql.clear;

      ADOQuery1.sql.Add('Select * from cad_vend where nome like "'+uppercase(trim(Edit1.Text))+'%"');
      ADOQuery1.open;
      ADOQuery2.sql.Add('Select * from cad_cli where vendedor = "'+DBText1.Caption+'"');
      ADOQuery2.open;

      DBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
      DBGrid2.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
      btnpagamento.Enabled:=True;

   if ADOQuery2.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery2.RecordCount)+' Clientes'
   else
   Label3.Caption:=IntToStr(ADOQuery2.RecordCount)+' Cliente';

   if ADOQuery2.RecordCount = 0 then
   begin
   Label3.Caption:='Nenhum Cliente';
   DBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   end;


if ADOQuery1.RecordCount = 0 then   //Caso não apareça nenhum registro
begin
ADOQuery1.Active:=false;
DBGrid2.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
DBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
Label3.Caption:='Nenhum Cliente';
btnpagamento.Enabled:=False;
MessageDlg(#13+'Vendedor não encontrado no Sistema!', mtwarning, [mbOk], 0);
Edit1.Text:='';
Edit1.SetFocus;
end;
end;

end;

procedure TForm5.ComboBox2Click(Sender: TObject);
begin
ADOQuery1.Active:=false;
DBGrid1.Options:=[];
Label3.Caption:='Nenhum Cliente';
Edit1.Text:='';
end;

procedure TForm5.Edit1KeyPress(Sender: TObject; var Key: Char);
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
ADOQuery2.Active:=false;
DBGrid1.Options:=[];
DBGrid2.Options:=[];
Label3.Caption:='Nenhum Cliente';
btnpagamento.Enabled:=False;
MessageDlg(#13+'Digite um CPF válido!', mtwarning, [mbOk], 0);
Edit1.Text:='';
Edit1.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;
   ADOQuery2.close;
   ADOQuery2.sql.clear;

      ADOQuery1.sql.Add('Select * from cad_vend where nome like "'+uppercase(trim(Edit1.Text))+'%"');
      ADOQuery1.open;
      ADOQuery2.sql.Add('Select * from cad_cli where vendedor = "'+DBText1.Caption+'"');
      ADOQuery2.open;

      DBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
      DBGrid2.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
      btnpagamento.Enabled:=True;

   if ADOQuery2.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery2.RecordCount)+' Clientes'
   else
   Label3.Caption:=IntToStr(ADOQuery2.RecordCount)+' Cliente';

   if ADOQuery2.RecordCount = 0 then
   begin
   Label3.Caption:='Nenhum Cliente';
   DBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   end;

if ADOQuery1.RecordCount = 0 then   //Caso não apareça nenhum registro
begin
ADOQuery1.Active:=false;
DBGrid2.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
DBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
Label3.Caption:='Nenhum Cliente';
btnpagamento.Enabled:=False;
MessageDlg(#13+'Vendedor não encontrado no Sistema!', mtwarning, [mbOk], 0);
Edit1.Text:='';
Edit1.SetFocus;
end;
end;
end;

end;

procedure TForm5.FormActivate(Sender: TObject);
begin
Timer1.Enabled:=True;
Edit1.SetFocus;
end;

procedure TForm5.SpeedButton2Click(Sender: TObject);
begin
if trim(Edit2.Text) = '' then   //Se o Edit2 for igual à VAZIO
begin
ADOQuery1.Active:=false;
ADOQuery2.Active:=false;
DBGrid1.Options:=[];
DBGrid2.Options:=[];
Label3.Caption:='Nenhum Cliente';
btnpagamento.Enabled:=False;
MessageDlg(#13+'Digite um CPF válido!', mtwarning, [mbOk], 0);
Edit2.Text:='';
Edit2.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;
   ADOQuery2.close;
   ADOQuery2.sql.clear;

      ADOQuery1.sql.Add('Select * from cad_vend where cpf = "'+uppercase(trim(Edit2.Text))+'"');
      ADOQuery1.open;
      ADOQuery2.sql.Add('Select * from cad_cli where vendedor = "'+DBtext1.Caption+'"');
      ADOQuery2.open;

      DBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
      DBGrid2.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
      btnpagamento.Enabled:=True;

   if ADOQuery2.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery2.RecordCount)+' Clientes'
   else
   Label3.Caption:=IntToStr(ADOQuery2.RecordCount)+' Cliente';

   if ADOQuery2.RecordCount = 0 then
   begin
   Label3.Caption:='Nenhum Cliente';
   DBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   end;

if ADOQuery1.RecordCount = 0 then   //Caso não apareça nenhum registro
begin
ADOQuery1.Active:=false;
DBGrid2.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
DBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
Label3.Caption:='Nenhum Cliente';
btnpagamento.Enabled:=False;
MessageDlg(#13+'Vendedor não encontrado no Sistema!', mtwarning, [mbOk], 0);
Edit2.Text:='';
Edit2.SetFocus;
end
end;

end;

procedure TForm5.Edit2KeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_-+={}[]?;:,|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
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
Edit2.SetFocus;
end;

if key = #13 then
begin

if trim(Edit2.Text) = '' then   //Se o Edit1 for igual à VAZIO
begin
ADOQuery1.Active:=false;
ADOQuery2.Active:=false;
DBGrid1.Options:=[];
DBGrid2.Options:=[];
Label3.Caption:='Nenhum Cliente';
btnpagamento.Enabled:=False;
MessageDlg(#13+'Digite um CPF válido!', mtwarning, [mbOk], 0);
Edit2.Text:='';
Edit2.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;
   ADOQuery2.close;
   ADOQuery2.sql.clear;

      ADOQuery1.sql.Add('Select * from cad_vend where cpf = "'+uppercase(trim(Edit2.Text))+'"');
      ADOQuery1.open;
      ADOQuery2.sql.Add('Select * from cad_cli where vendedor = "'+DBtext1.Caption+'"');
      ADOQuery2.open;

      DBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
      DBGrid2.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
      btnpagamento.Enabled:=True;

   if ADOQuery2.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery2.RecordCount)+' Clientes'
   else
   Label3.Caption:=IntToStr(ADOQuery2.RecordCount)+' Cliente';

   if ADOQuery2.RecordCount = 0 then
   begin
   Label3.Caption:='Nenhum Cliente';
   DBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   end;

if ADOQuery1.RecordCount = 0 then   //Caso não apareça nenhum registro
begin
ADOQuery1.Active:=false;
DBGrid2.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
DBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
Label3.Caption:='Nenhum Cliente';
btnpagamento.Enabled:=False;
MessageDlg(#13+'Vendedor não encontrado no Sistema!', mtwarning, [mbOk], 0);
Edit2.Text:='';
Edit2.SetFocus;
end;
end;
end;

end;

procedure TForm5.DBGrid2CellClick(Column: TColumn);
begin
DBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
ADOQuery2.close;
ADOQuery2.sql.clear;
ADOQuery2.sql.Add('Select * from cad_cli where vendedor = "'+DBText1.Caption+'"');
ADOQuery2.open;

  if ADOQuery2.RecordCount = 0 then   //Caso não apareça nenhum registro
  begin
  ADOQuery2.Active:=false;
  Label3.Caption:='Nenhum Cliente';
  end
   else
   begin
      if ADOQuery2.RecordCount > 1 then  //Pra contar a quantidade de Registros
      Label3.Caption:=IntToStr(ADOQuery2.RecordCount)+' Clientes'
      else
      Label3.Caption:=IntToStr(ADOQuery2.RecordCount)+' Cliente';
   end;

end;

procedure TForm5.Timer1Timer(Sender: TObject);
begin
if (DBText2.Caption <> '') then
Label4.Caption:=DBText2.Caption+'%'
else
Label4.Caption:='';
end;

procedure TForm5.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
DBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
ADOQuery2.close;
ADOQuery2.sql.clear;
ADOQuery2.sql.Add('Select * from cad_cli where vendedor = "'+DBText1.Caption+'"');
ADOQuery2.open;

  if ADOQuery2.RecordCount = 0 then   //Caso não apareça nenhum registro
  begin
  ADOQuery2.Active:=false;
  Label3.Caption:='Nenhum Cliente';
  end
   else
   begin
      if ADOQuery2.RecordCount > 1 then  //Pra contar a quantidade de Registros
      Label3.Caption:=IntToStr(ADOQuery2.RecordCount)+' Clientes'
      else
      Label3.Caption:=IntToStr(ADOQuery2.RecordCount)+' Cliente';
   end;

end;

procedure TForm5.btnpagamentoClick(Sender: TObject);
begin
Form5.Enabled:=False;
Application.CreateForm(TForm19, Form19);{Carrega form na memória}
Form19.ShowModal;{Mostra form em modo exclusivo}
Form19.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TForm5.Edit1Enter(Sender: TObject);
begin
ADOQuery1.Active:=false;
ADOQuery2.Active:=false;
Edit2.Clear;
btnpagamento.Enabled:=False;
DBGrid1.Options:=[];
DBGrid2.Options:=[];
Label3.Caption:='Nenhum Cliente';
end;

procedure TForm5.Edit2Enter(Sender: TObject);
begin
ADOQuery1.Active:=false;
ADOQuery2.Active:=false;
Edit1.Clear;
btnpagamento.Enabled:=False;
DBGrid1.Options:=[];
DBGrid2.Options:=[];
Label3.Caption:='Nenhum Cliente';
end;

end.

