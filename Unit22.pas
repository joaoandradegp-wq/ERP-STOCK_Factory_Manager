unit Unit22;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls, Buttons;

type
  TForm22 = class(TForm)
    fechar: TSpeedButton;
    Bevel3: TBevel;
    Bevel1: TBevel;
    SpeedButton1: TSpeedButton;
    Label16: TLabel;
    Bevel2: TBevel;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Bevel4: TBevel;
    Label5: TLabel;
    DBGrid2: TDBGrid;
    Label2: TLabel;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery1nome_cheque: TWideStringField;
    ADOQuery1n_cheque: TWideStringField;
    ADOQuery1valor: TBCDField;
    excluir: TSpeedButton;
    Timer1: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure fecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure excluirClick(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form22: TForm22;

implementation

uses Unit1, Unit12;

{$R *.dfm}

procedure TForm22.FormActivate(Sender: TObject);
begin
Edit1.SetFocus;
end;

procedure TForm22.fecharClick(Sender: TObject);
begin
Close;
end;

procedure TForm22.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if ADOQuery1.Active=True then
ADOQuery1.Active:=false;

Timer1.Enabled:=False;

Edit1.Text:='';
Edit2.Text:='';
Label2.Caption:='Nenhum Cheque';
DBGrid2.Options:=[dgColumnResize,dgRowSelect,dgConfirmDelete,dgCancelOnExit];
Frmprincipal.Enabled:=True;

//Abaixo para Liberar o Form da Memória
Form22.Release;
Form22 := Nil;
end;

procedure TForm22.FormDestroy(Sender: TObject);
begin
Frmprincipal.Enabled:=True;
end;

procedure TForm22.SpeedButton1Click(Sender: TObject);
begin
Edit1.Text:=uppercase(Edit1.Text);

if trim(Edit1.Text) = '' then   //Se o Edit1 for igual à VAZIO
begin
ADOQuery1.Active:=false;
DBGrid2.Options:=[];
Label2.Caption:='Nenhum Cheque';
excluir.Enabled:=False;
MessageDlg(#13+'Digite o nome do Titular do cheque cadastrado!', mtwarning, [mbOk], 0);
Edit1.Text:='';
Edit1.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      ADOQuery1.sql.Add('Select * from cheques where nome_cheque like "'+uppercase(trim(Edit1.Text))+'%"');
      ADOQuery1.open;

      DBGrid2.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label2.Caption:=IntToStr(ADOQuery1.RecordCount)+' Cheques'
   else
   Label2.Caption:=IntToStr(ADOQuery1.RecordCount)+' Cheque';


if ADOQuery1.RecordCount = 0 then   //Caso não apareça nenhum registro
begin
ADOQuery1.Active:=false;
DBGrid2.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
Label2.Caption:='Nenhum Cheque';
excluir.Enabled:=False;
MessageDlg(#13+'Cheque não encontrado no Sistema!', mtwarning, [mbOk], 0);
Edit1.Text:='';
Edit1.SetFocus;
end
else
begin
Timer1.Enabled:=True;
DBGrid2.Enabled:=True;
excluir.Enabled:=True;
end;

end;

end;

procedure TForm22.SpeedButton2Click(Sender: TObject);
begin
if trim(Edit2.Text) = '' then   //Se o Edit2 for igual à VAZIO
begin
ADOQuery1.Active:=false;
DBGrid2.Options:=[];
Label2.Caption:='Nenhum Cheque';
excluir.Enabled:=False;
MessageDlg(#13+'Digite uma numeração válida de cheque!', mtwarning, [mbOk], 0);
Edit2.Text:='';
Edit2.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      ADOQuery1.sql.Add('Select * from cheques where n_cheque = "'+uppercase(trim(Edit2.Text))+'"');
      ADOQuery1.open;

      DBGrid2.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label2.Caption:=IntToStr(ADOQuery1.RecordCount)+' Cheques'
   else
   Label2.Caption:=IntToStr(ADOQuery1.RecordCount)+' Cheque';


if ADOQuery1.RecordCount = 0 then   //Caso não apareça nenhum registro
begin
ADOQuery1.Active:=false;
DBGrid2.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
Label2.Caption:='Nenhum Cheque';
excluir.Enabled:=False;
MessageDlg(#13+'Cheque não encontrado no Sistema!', mtwarning, [mbOk], 0);
Edit2.Text:='';
Edit2.SetFocus;
end
else
begin
Timer1.Enabled:=True;
DBGrid2.Enabled:=True;
excluir.Enabled:=True;
end;

end;

end;

procedure TForm22.Edit1Enter(Sender: TObject);
begin
ADOQuery1.Active:=false;
Edit2.Clear;
DBGrid2.Options:=[];
Label2.Caption:='Nenhum Cheque';
excluir.Enabled:=False;
end;

procedure TForm22.Edit2Enter(Sender: TObject);
begin
ADOQuery1.Active:=false;
Edit1.Clear;
DBGrid2.Options:=[];
Label2.Caption:='Nenhum Cheque';
excluir.Enabled:=False;
end;

procedure TForm22.Edit1KeyPress(Sender: TObject; var Key: Char);
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
DBGrid2.Options:=[];
Label2.Caption:='Nenhum Cheque';
excluir.Enabled:=False;
MessageDlg(#13+'Digite o nome do Titular do cheque cadastrado!', mtwarning, [mbOk], 0);
Edit1.Text:='';
Edit1.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      ADOQuery1.sql.Add('Select * from cheques where nome_cheque like "'+uppercase(trim(Edit1.Text))+'%"');
      ADOQuery1.open;

      DBGrid2.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label2.Caption:=IntToStr(ADOQuery1.RecordCount)+' Cheques'
   else
   Label2.Caption:=IntToStr(ADOQuery1.RecordCount)+' Cheque';


if ADOQuery1.RecordCount = 0 then   //Caso não apareça nenhum registro
begin
ADOQuery1.Active:=false;
DBGrid2.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
Label2.Caption:='Nenhum Cheque';
excluir.Enabled:=False;
MessageDlg(#13+'Cheque não encontrado no Sistema!', mtwarning, [mbOk], 0);
Edit1.Text:='';
Edit1.SetFocus;
end
else
begin
Timer1.Enabled:=True;
DBGrid2.Enabled:=True;
excluir.Enabled:=True;
end;

end;
end;

end;

procedure TForm22.Edit2KeyPress(Sender: TObject; var Key: Char);
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

if trim(Edit2.Text) = '' then   //Se o Edit2 for igual à VAZIO
begin
ADOQuery1.Active:=false;
DBGrid2.Options:=[];
Label2.Caption:='Nenhum Cheque';
excluir.Enabled:=False;
MessageDlg(#13+'Digite uma numeração válida de cheque!', mtwarning, [mbOk], 0);
Edit2.Text:='';
Edit2.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      ADOQuery1.sql.Add('Select * from cheques where n_cheque = "'+uppercase(trim(Edit2.Text))+'"');
      ADOQuery1.open;

      DBGrid2.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label2.Caption:=IntToStr(ADOQuery1.RecordCount)+' Cheques'
   else
   Label2.Caption:=IntToStr(ADOQuery1.RecordCount)+' Cheque';


if ADOQuery1.RecordCount = 0 then   //Caso não apareça nenhum registro
begin
ADOQuery1.Active:=false;
DBGrid2.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
Label2.Caption:='Nenhum Cheque';
excluir.Enabled:=False;
MessageDlg(#13+'Cheque não encontrado no Sistema!', mtwarning, [mbOk], 0);
Edit2.Text:='';
Edit2.SetFocus;
end
else
begin
Timer1.Enabled:=True;
DBGrid2.Enabled:=True;
excluir.Enabled:=True;
end;

end;
end;

end;

procedure TForm22.excluirClick(Sender: TObject);
begin
    if MessageDlg(#13+'Deseja realmente excluir o cheque selecionado?',mtConfirmation, [mbyes, mbno],0) = mrYes then
    begin
    MessageDlg(#13+'Cheque excluído com sucesso!', mtinformation, [mbOk], 0);
    ADOQuery1.Delete;
    ADOQuery1.Refresh;

    //Pra contar a quantidade de Registros
   if (ADOQuery1.RecordCount) > 1 then
   Label2.Caption:=IntToStr(ADOQuery1.RecordCount)+' Cheques'
   else
   Label2.Caption:=IntToStr(ADOQuery1.RecordCount)+' Cheque';

   if (ADOQuery1.RecordCount) = 0 then
   Label2.Caption:='Nenhum Cheque';

    end;
end;

procedure TForm22.DBGrid2CellClick(Column: TColumn);
begin
excluir.Enabled:=True;
end;

procedure TForm22.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
excluir.Enabled:=True;
end;

procedure TForm22.Timer1Timer(Sender: TObject);
begin

if DBGrid2.SelectedField.Text = '' then
begin
excluir.Enabled:=False;
DBGrid2.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
DBGrid2.Enabled:=False;
Timer1.Enabled:=False;
end;

end;

end.
