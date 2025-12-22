unit Unit23;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, OleServer, Excel2000, DB, ADODB, StdCtrls,
  Animate, GIFCtrl, Mask, DBCtrls, Grids, DBGrids;

type
  TForm23 = class(TForm)
    fechar: TSpeedButton;
    Bevel3: TBevel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    filtrar: TSpeedButton;
    Label3: TLabel;
    Bevel4: TBevel;
    Label14: TLabel;
    Label13: TLabel;
    Bevel5: TBevel;
    Label7: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    exportar: TSpeedButton;
    atualizar: TSpeedButton;
    excluir: TSpeedButton;
    Bevel6: TBevel;
    deletar: TSpeedButton;
    dbvalor: TDBEdit;
    dbnome: TDBEdit;
    dbcpf: TDBEdit;
    dbdata: TDBEdit;
    dbhorario: TDBEdit;
    Panel1: TPanel;
    RxGIFAnimator1: TRxGIFAnimator;
    ComboBox1: TComboBox;
    edit_data2: TEdit;
    edit_data1: TEdit;
    Panel2: TPanel;
    Image1: TImage;
    DataSource2: TDataSource;
    ADOQuery1: TADOQuery;
    Timer1: TTimer;
    ExcelApplication1: TExcelApplication;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    Edit2: TEdit;
    cheques: TSpeedButton;
    ADOQuery1Cdigo: TAutoIncField;
    ADOQuery1nome: TWideStringField;
    ADOQuery1cliente: TWideStringField;
    ADOQuery1modelo: TMemoField;
    ADOQuery1pagamento: TWideStringField;
    ADOQuery1nome_cheque1: TWideStringField;
    ADOQuery1n_cheque1: TWideStringField;
    ADOQuery1nome_cheque2: TWideStringField;
    ADOQuery1n_cheque2: TWideStringField;
    ADOQuery1nome_cheque3: TWideStringField;
    ADOQuery1n_cheque3: TWideStringField;
    ADOQuery1entrega: TDateTimeField;
    ADOQuery1valor_total: TBCDField;
    ADOQuery1data_pedido: TDateTimeField;
    ADOQuery1status: TWideStringField;
    ADOQuery1horario: TWideStringField;
    Label11: TLabel;
    dbdata_entrega: TDBText;
    localizar: TSpeedButton;
    Bevel7: TBevel;
    Edit3: TEdit;
    cbstatus: TDBComboBox;
    gravar: TSpeedButton;
    Bevel8: TBevel;
    cancelar: TSpeedButton;
    ADOQuery2: TADOQuery;
    ADOQuery2nome: TWideStringField;
    ADOQuery2comissao: TWideStringField;
    ADOQuery2caixa_vend: TBCDField;
    ADOQuery1valor_modelos: TBCDField;
    ADOQuery1cod_vendedor: TWideStringField;
    ADOQuery2Cdigo: TAutoIncField;
    ADOQuery1valor_cheque1: TBCDField;
    ADOQuery1valor_cheque2: TBCDField;
    ADOQuery1valor_cheque3: TBCDField;
    Edit1: TEdit;
    Label15: TLabel;
    db_npedido: TDBText;
    procedure fecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure filtrarClick(Sender: TObject);
    procedure edit_data1KeyPress(Sender: TObject; var Key: Char);
    procedure edit_data2KeyPress(Sender: TObject; var Key: Char);
    procedure dbcpfChange(Sender: TObject);
    procedure dbvalorChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure deletarClick(Sender: TObject);
    procedure excluirClick(Sender: TObject);
    procedure atualizarClick(Sender: TObject);
    procedure exportarClick(Sender: TObject);
    procedure localizarClick(Sender: TObject);
    procedure chequesClick(Sender: TObject);
    procedure cbstatusChange(Sender: TObject);
    procedure gravarClick(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form23: TForm23;

implementation

uses Unit1, Unit12;

{$R *.dfm}

Function ObterTermo(APosicao: Integer; ASeparador,ALinha: String): String;
var
  sAux: TStringList;
begin
  Result:='';
  sAux:=TStringList.Create;
  sAux.Text:=StringReplace(ALinha,ASeparador,#13#10,[rfReplaceAll, rfIgnoreCase]);
  if APosicao <= sAux.Count then
    Result:=sAux.Strings[APosicao-1];
  sAux.Free;
end;

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

procedure TForm23.fecharClick(Sender: TObject);
begin
Close;
end;

procedure TForm23.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if ADOQuery1.Active=True then
ADOQuery1.Active:=false;

Frmprincipal.Enabled:=True;

//Abaixo para Liberar o Form da MemÛria
Form23.Release;
Form23 := Nil;
end;

procedure TForm23.FormDestroy(Sender: TObject);
begin
Frmprincipal.Enabled:=True;
end;

procedure TForm23.filtrarClick(Sender: TObject);
begin
if ComboBox1.Text = '' then
begin
MessageDlg(#13+'Preencha corretamente por qual Status ser· pesquisado!', mtwarning, [mbOk], 0);
ComboBox1.SetFocus;
end

else if (edit_data1.Text = '') then
begin
MessageDlg(#13+'Preencha corretamente a data INICIAL ‡ ser pesquisada!', mtwarning, [mbOk], 0);
edit_data1.SetFocus;
end

else if length(edit_data1.Text) < 10 then
begin
MessageDlg(#13+'Digite a data INICIAL v·lida no formato DD/MM/AAAA!', mtwarning, [mbOk], 0);
edit_data1.SetFocus;
edit_data1.SelectAll;
end

else if ValidaData(edit_data1.Text,'DD/MM/AAAA') = False then
begin
MessageDlg(#13+'Digite a data INICIAL v·lida no formato DD/MM/AAAA!', mtwarning, [mbOk], 0);
edit_data1.SetFocus;
edit_data1.SelectAll;
end

else if (edit_data2.Text = '') then
begin
MessageDlg(#13+'Preencha corretamente a data FINAL ‡ ser pesquisada!', mtwarning, [mbOk], 0);
edit_data2.SetFocus;
end

else if length(edit_data2.Text) < 10 then
begin
MessageDlg(#13+'Digite a data FINAL v·lida no formato DD/MM/AAAA!', mtwarning, [mbOk], 0);
edit_data2.SetFocus;
edit_data2.SelectAll;
end

else if ValidaData(edit_data2.Text,'DD/MM/AAAA') = False then
begin
MessageDlg(#13+'Digite a data FINAL v·lida no formato DD/MM/AAAA!', mtwarning, [mbOk], 0);
edit_data2.SetFocus;
edit_data2.SelectAll;
end

else if StrToDate(edit_data1.Text) > StrToDate(edit_data2.Text) then
begin
MessageDlg(#13+'A data inicial n„o deve ser maior que a data final!', mtwarning, [mbOk], 0);
edit_data1.SetFocus;
end

else
begin
   ADOQuery1.Cancel;
   
   ADOQuery1.close;
   ADOQuery1.sql.clear;

   ADOQuery1.sql.Add('Select * from pedidos where (data_pedido between #'+edit_data1.Text+'# and #'+edit_data2.Text+'#) and status = "'+Trim(ComboBox1.Text)+'" order by data_pedido desc');

   ADOQuery1.open;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label2.Caption:=IntToStr(ADOQuery1.RecordCount)+' Pedidos'
   else
   Label2.Caption:=IntToStr(ADOQuery1.RecordCount)+' Pedido';

if ADOQuery1.RecordCount = 0 then   //Caso n„o apareÁa nenhum registro
begin
exportar.Enabled:=False;
atualizar.Enabled:=False;
deletar.Enabled:=False;
excluir.Enabled:=False;
DBGrid1.Options:=[];
DBGrid1.Enabled:=False;
Label2.Caption:='Nenhum Pedido';
MessageDlg(#13+'N„o existem Pedidos cadastrados no perÌodo de '+Trim(edit_data1.Text)+' atÈ '+Trim(edit_data2.Text)+' no Sistema!', mtwarning, [mbOk], 0);
edit_data1.SetFocus;
end
  else
  begin
  panel3.Visible:=False;
  exportar.Enabled:=True;
  atualizar.Enabled:=True;
  exportar.Enabled:=True;
  deletar.Enabled:=True;
  excluir.Enabled:=True;
  DBGrid1.Enabled:=True;
  DBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];

    if ((cbstatus.Text = 'ENTREGUE') or (cbstatus.Text = '')) then
    cbstatus.Enabled:=False
    else
    cbstatus.Enabled:=True;

  end;
end;
end;

procedure TForm23.edit_data1KeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞<>!@#$%®&*()_-+={}[]?;:.|\*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVXYZW';
min = 'abcdefghijklmnopqrstuvxyzw';
var
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
edit_data1.SetFocus;
end;
end;

procedure TForm23.edit_data2KeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞<>!@#$%®&*()_-+={}[]?;:.|\*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVXYZW';
min = 'abcdefghijklmnopqrstuvxyzw';
var
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
edit_data2.SetFocus;
end;
end;

procedure TForm23.dbcpfChange(Sender: TObject);
begin
if dbcpf.Text = '1' then
begin
edit2.Text:='¿ Vista - Dinheiro';
cheques.Enabled:=False;
end
else if dbcpf.Text = '2' then
begin
edit2.Text:='¿ Vista - Cheque';
cheques.Enabled:=True;
end
else if dbcpf.Text = '3' then
begin
edit2.Text:='Cheque 30';
cheques.Enabled:=True;
end
else if dbcpf.Text = '4' then
begin
edit2.Text:='Cheque 30/60';
cheques.Enabled:=True;
end
else if dbcpf.Text = '5' then
begin
edit2.Text:='Cheque 30/60/90';
cheques.Enabled:=True;
end
else
Edit2.Clear;

end;

procedure TForm23.dbvalorChange(Sender: TObject);
begin
if dbvalor.Text <> '' then
Edit1.Text:=Format('%5.2m',[StrToFloat(dbvalor.Text)])
else
Edit1.Clear;
end;

procedure TForm23.Timer1Timer(Sender: TObject);
begin
    ADOQuery1.Delete;

    if ADOQuery1.Eof = False then
    ADOQuery1.Next
    else
    begin
    Timer1.Enabled:=False;
    Panel2.Visible:=False;
    Panel1.Visible:=False;
    ComboBox1.Enabled:=True;
    edit_data1.Enabled:=True;
    edit_data2.Enabled:=True;
    filtrar.Enabled:=True;

    DBGrid1.Enabled:=True;

    dbdata_entrega.Enabled:=True;
    db_npedido.Enabled:=True;
    dbnome.Enabled:=True;
    DBEdit1.Enabled:=True;
    DBMemo1.Enabled:=True;
    Edit2.Enabled:=True;
    Edit1.Enabled:=True;
    dbdata.Enabled:=True;
    dbhorario.Enabled:=True;

     if ADOQuery1.RecordCount = 0 then
     begin
     Label2.Caption:='Nenhum Pedido';
     DBGrid1.Options:=[dgColumnResize,dgRowSelect,dgConfirmDelete,dgCancelOnExit];
     ADOQuery1.Active:=False;
     exportar.Enabled:=False;
     atualizar.Enabled:=False;
     excluir.Enabled:=False;
     deletar.Enabled:=False;
     end
      else
      begin
      exportar.Enabled:=False;
      atualizar.Enabled:=False;
      excluir.Enabled:=False;
      deletar.Enabled:=False;

          if dbcpf.Text = '1' then
          begin
          edit2.Text:='¿ Vista - Dinheiro';
          cheques.Enabled:=False;
          end
          else if dbcpf.Text = '2' then
          begin
          edit2.Text:='¿ Vista - Cheque';
          cheques.Enabled:=True;
          end
          else if dbcpf.Text = '3' then
          begin
          edit2.Text:='Cheque 30';
          cheques.Enabled:=True;
          end
          else if dbcpf.Text = '4' then
          begin
          edit2.Text:='Cheque 30/60';
          cheques.Enabled:=True;
          end
          else if dbcpf.Text = '5' then
          begin
          edit2.Text:='Cheque 30/60/90';
          cheques.Enabled:=True;
          end
          else
          Edit2.Clear;
      end;

      MessageDlg(#13+'Pedidos excluÌdos com sucesso!', mtinformation, [mbOk], 0);
      end;
end;

procedure TForm23.deletarClick(Sender: TObject);
begin
if MessageDlg(#13+'Deseja realmente excluir TODOS os pedidos do perÌodo de '+edit_data1.Text+' ‡ '+edit_data2.Text+' com status '+ComboBox1.text+'?',mtConfirmation, [mbyes, mbno],0) = mrYes then
begin
ComboBox1.Enabled:=False;
edit_data1.Enabled:=False;
edit_data2.Enabled:=False;
filtrar.Enabled:=False;
exportar.Enabled:=False;
atualizar.Enabled:=False;
excluir.Enabled:=False;
deletar.Enabled:=False;
cheques.Enabled:=False;

DBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
DBGrid1.Enabled:=False;

cheques.Enabled:=False;
cbstatus.Enabled:=False;
dbdata_entrega.Enabled:=False;
db_npedido.Enabled:=False;
dbnome.Enabled:=False;
DBEdit1.Enabled:=False;
DBMemo1.Enabled:=False;
Edit2.Enabled:=False;
Edit1.Enabled:=False;
dbdata.Enabled:=False;
dbdata_entrega.Enabled:=False;
dbhorario.Enabled:=False;

ADOQuery1.First;
Panel1.Visible:=True;
Panel2.Visible:=True;
Timer1.Enabled:=True;
end;
end;

procedure TForm23.excluirClick(Sender: TObject);
begin
    if MessageDlg(#13+'Deseja realmente excluir o pedido abaixo?'+#13+#13+'Vendedor: '+dbnome.Text+#13+'Cliente: '+DBEdit1.Text+#13+'Valor: '+Edit1.Text+#13#13+'Data: '+dbdata.Text+#13+'Hor·rio: '+dbhorario.Text,mtConfirmation, [mbyes, mbno],0) = mrYes then
    begin
    MessageDlg(#13+'Pedido excluÌdo com sucesso!', mtinformation, [mbOk], 0);
    ADOQuery1.Delete;
    ADOQuery1.Refresh;
    end;
end;

procedure TForm23.atualizarClick(Sender: TObject);
begin
atualizar.Enabled:=False;
ADOQuery1.Active:=false;
ADOQuery1.Active:=true;
ADOQuery1.Refresh;
atualizar.Enabled:=True;
MessageDlg(#13+'RelaÁ„o de pedidos atualizada com sucesso!', mtinformation, [mbOk], 0);
end;

procedure TForm23.exportarClick(Sender: TObject);
Var
  Cont :Integer;
  dia1,mes1,ano1 :String;
  dia2,mes2,ano2 :String;
  Dir :String;
begin
if MessageDlg(#13+'… necess·rio que o programa Microsoft Excel esteja instalado em seu computador.'+#13+'Deseja continuar?',mtConfirmation, [mbyes, mbno],0) = mrYes then
begin
Dir := 'C:\STOCK\Pedidos';

  if not DirectoryExists(Dir) then
  ForceDirectories(Dir)
  else
  begin
   Panel3.Visible:=True;
   DBGrid1.Enabled:=False;
   Panel1.Visible:=True;
   Panel2.Visible:=True;

   ComboBox1.Enabled:=False;
   edit_data1.Enabled:=False;
   edit_data2.Enabled:=False;
   filtrar.Enabled:=False;
   exportar.Enabled:=False;
   atualizar.Enabled:=False;
   excluir.Enabled:=False;
   deletar.Enabled:=False;
   fechar.Enabled:=False;
   cheques.Enabled:=False;

   cbstatus.Enabled:=False;
   dbdata_entrega.Enabled:=False;
   db_npedido.Enabled:=False;
   dbnome.Enabled:=False;
   DBEdit1.Enabled:=False;
   DBMemo1.Enabled:=False;
   Edit2.Enabled:=False;
   Edit1.Enabled:=False;
   dbdata.Enabled:=False;
   dbdata_entrega.Enabled:=False;
   dbhorario.Enabled:=False;


   dia1:=ObterTermo(1, '/', edit_data1.Text);
   mes1:=ObterTermo(2, '/', edit_data1.Text);
   ano1:=ObterTermo(3, '/', edit_data1.Text);
   dia2:=ObterTermo(1, '/', edit_data2.Text);
   mes2:=ObterTermo(2, '/', edit_data2.Text);
   ano2:=ObterTermo(3, '/', edit_data2.Text);

   Cont := 2;
   ExcelApplication1.Workbooks.Add(EmptyParam,0); // Cria um novo documento
   ExcelApplication1.Caption := 'PHOBOSTOCK 1.0 - Pedidos '+dia1+'/'+mes1+'/'+ano1+' ‡ '+dia2+'/'+mes2+'/'+ano2;
   ExcelApplication1.Visible[0] := True;// Se false, o excel ir· rodar em background.
   If(Not(ADOQuery1.Active))Then
   ADOQuery1.Active := True;

   ExcelApplication1.Range['A1','A1'].Value2 := 'Status';
   ExcelApplication1.Range['B1','B1'].Value2 := 'Vendedor';
   ExcelApplication1.Range['C1','C1'].Value2 := 'Cliente';
   ExcelApplication1.Range['D1','D1'].Value2 := 'Modelo';
   ExcelApplication1.Range['E1','E1'].Value2 := 'Pagamento';
   ExcelApplication1.Range['F1','F1'].Value2 := 'Valor (R$)';
   ExcelApplication1.Range['G1','G1'].Value2 := 'Data';
   ExcelApplication1.Range['H1','H1'].Value2 := 'Entrega';
   ExcelApplication1.Range['I1','I1'].Value2 := 'Hor·rio';
   ExcelApplication1.Range['A1','I1'].Font.Color := clBlack;
   ExcelApplication1.Range['A1','I1'].Interior.Color := clgray;
   ADOQuery1.First;
   While(Not(ADOQuery1.Eof))do
   Begin
      With(ExcelApplication1)Do
      Begin
      ExcelApplication1.Columns.AutoFit;
         Range['A'+IntToStr(Cont),'A'+IntToStr(Cont)].Value2 := ' '+ADOQuery1.FieldByName('status').AsString+' ';
         Range['B'+IntToStr(Cont),'B'+IntToStr(Cont)].Value2 := ' '+ADOQuery1.FieldByName('nome').AsString+' ';
         Range['C'+IntToStr(Cont),'C'+IntToStr(Cont)].Value2 := ' '+ADOQuery1.FieldByName('cliente').AsString+' ';
         Range['D'+IntToStr(Cont),'D'+IntToStr(Cont)].Value2 := ' '+Trim(ADOQuery1.FieldByName('modelo').AsString);
         Range['E'+IntToStr(Cont),'E'+IntToStr(Cont)].Value2 := ' '+ADOQuery1.FieldByName('pagamento').AsString+' ';
         Range['F'+IntToStr(Cont),'F'+IntToStr(Cont)].Value2 := ' '+Format('%5.2m',[StrToFloat(ADOQuery1.FieldByName('valor_total').AsString)])+' ';
         Range['G'+IntToStr(Cont),'G'+IntToStr(Cont)].Value2 := ' '+Formatdatetime('dd/mm/yyyy',StrToDate(ADOQuery1.FieldByName('data_pedido').AsString))+' ';
         Range['H'+IntToStr(Cont),'H'+IntToStr(Cont)].Value2 := ' '+Formatdatetime('dd/mm/yyyy',StrToDate(ADOQuery1.FieldByName('entrega').AsString))+' ';
         Range['I'+IntToStr(Cont),'I'+IntToStr(Cont)].Value2 := ' '+ADOQuery1.FieldByName('horario').AsString+' ';
         ADOQuery1.Next;
         Cont := Cont + 1;
      End;
   End;
   //ExcelApplication1.ActiveWorkbook.SaveCopyAs('C:\teste.xls',0); // Salva uma copia do documento em C:\ com o nome de teste.xls
   ExcelApplication1.ActiveWorkbook.SaveCopyAs(Dir+'\'+Combobox1.Text+' ('+dia1+'-'+mes1+'-'+ano1+' ‡ '+dia2+'-'+mes2+'-'+ano2+').xls',0);
   MessageDlg(#13+'Arquivos extraidos para o Excel com sucesso!', mtinformation, [mbOk], 0);

   Panel2.Visible:=False;
   Panel1.Visible:=False;
   DBGrid1.Enabled:=True;
   Panel3.Visible:=False;

   ComboBox1.Enabled:=True;
   edit_data1.Enabled:=True;
   edit_data2.Enabled:=True;
   filtrar.Enabled:=True;
   atualizar.Enabled:=True;
   excluir.Enabled:=True;
   deletar.Enabled:=True;
   fechar.Enabled:=True;

          if dbcpf.Text = '1' then
          begin
          edit2.Text:='¿ Vista - Dinheiro';
          cheques.Enabled:=False;
          end
          else if dbcpf.Text = '2' then
          begin
          edit2.Text:='¿ Vista - Cheque';
          cheques.Enabled:=True;
          end
          else if dbcpf.Text = '3' then
          begin
          edit2.Text:='Cheque 30';
          cheques.Enabled:=True;
          end
          else if dbcpf.Text = '4' then
          begin
          edit2.Text:='Cheque 30/60';
          cheques.Enabled:=True;
          end
          else if dbcpf.Text = '5' then
          begin
          edit2.Text:='Cheque 30/60/90';
          cheques.Enabled:=True;
          end
          else
          Edit2.Clear;

   cbstatus.Enabled:=True;
   dbdata_entrega.Enabled:=True;
   db_npedido.Enabled:=True;
   dbnome.Enabled:=True;
   DBEdit1.Enabled:=True;
   DBMemo1.Enabled:=True;
   Edit2.Enabled:=True;
   Edit1.Enabled:=True;
   dbdata.Enabled:=True;
   dbdata_entrega.Enabled:=True;
   dbhorario.Enabled:=True;
   end;
end;
end;

procedure TForm23.localizarClick(Sender: TObject);
begin
ADOQuery1.Cancel;
Combobox1.ItemIndex:=-1;
edit_data1.Clear;
edit_data2.Clear;

Edit3.Clear;
Edit3.Text:=Trim(Inputbox('Consulta','Digite o N∫ do Pedido:',''));


if not (Edit3.Text = '') then
begin

    ADOQuery1.Active:=True;
    panel3.Visible:=True;

    if not ADOQuery1.Locate('CÛdigo', trim(Edit3.Text), []) then
    begin
    ADOQuery1.Active:=false;

    if ((cbstatus.Text = 'ENTREGUE') or (cbstatus.Text = '')) then
    cbstatus.Enabled:=False
    else
    cbstatus.Enabled:=True;

    DBGrid1.Options:=[];
    //Abaixo s„o os botıes
    exportar.Enabled:=False;
    atualizar.Enabled:=False;
    excluir.Enabled:=False;
    deletar.Enabled:=False;

    MessageDlg(#13+'O pedido '+Edit3.Text+' n„o foi encontrado no Sistema!', mtwarning, [mbOk], 0);
    end
      else
      begin
      if ((cbstatus.Text = 'ENTREGUE') or (cbstatus.Text = '')) then
      cbstatus.Enabled:=False
      else
      cbstatus.Enabled:=True;
   
      DBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
      //Abaixo s„o os botıes
      exportar.Enabled:=False;
      atualizar.Enabled:=True;
      excluir.Enabled:=True;
      deletar.Enabled:=False;
      end;
end
else
MessageDlg(#13+'O pedido n„o foi encontrado no Sistema!', mtwarning, [mbOk], 0);
end;

procedure TForm23.chequesClick(Sender: TObject);
begin
if dbcpf.Text = '2' then
MessageDlg(#13+'***RELA«√O DE PAGAMENTO COM CHEQUES ***'+#13#13+Edit2.Text+#13#13+'Titular: '+ADOQuery1.FieldByName('nome_cheque1').Text+#13+'N∫: '+ADOQuery1.FieldByName('n_cheque1').Text+#13+'Valor: '+Format('%5.2m',[StrToFloat(ADOQuery1.FieldByName('valor_cheque1').AsString)])+#13, mtinformation, [mbOk], 0)
else if dbcpf.Text = '3' then
MessageDlg(#13+'***RELA«√O DE PAGAMENTO COM CHEQUES ***'+#13#13+Edit2.Text+#13#13+'Titular: '+ADOQuery1.FieldByName('nome_cheque1').Text+#13+'N∫: '+ADOQuery1.FieldByName('n_cheque1').Text+#13+'Valor: '+Format('%5.2m',[StrToFloat(ADOQuery1.FieldByName('valor_cheque1').AsString)])+#13, mtinformation, [mbOk], 0)
else if dbcpf.Text = '4' then
MessageDlg(#13+'***RELA«√O DE PAGAMENTO COM CHEQUES ***'+#13#13+Edit2.Text+#13#13+'Titular: '+ADOQuery1.FieldByName('nome_cheque1').Text+#13+'N∫: '+ADOQuery1.FieldByName('n_cheque1').Text+#13+'Valor: '+Format('%5.2m',[StrToFloat(ADOQuery1.FieldByName('valor_cheque1').AsString)])+#13#13+'Titular: '+ADOQuery1.FieldByName('nome_cheque2').Text+#13+'N∫: '+ADOQuery1.FieldByName('n_cheque2').Text+#13+'Valor: '+Format('%5.2m',[StrToFloat(ADOQuery1.FieldByName('valor_cheque2').AsString)])+#13, mtinformation, [mbOk], 0)
else if dbcpf.Text = '5' then
MessageDlg(#13+'***RELA«√O DE PAGAMENTO COM CHEQUES ***'+#13#13+Edit2.Text+#13#13+'Titular: '+ADOQuery1.FieldByName('nome_cheque1').Text+#13+'N∫: '+ADOQuery1.FieldByName('n_cheque1').Text+#13+'Valor: '+Format('%5.2m',[StrToFloat(ADOQuery1.FieldByName('valor_cheque1').AsString)])+#13#13+'Titular: '+ADOQuery1.FieldByName('nome_cheque2').Text+#13+'N∫: '+ADOQuery1.FieldByName('n_cheque2').Text+#13+'Valor: '+Format('%5.2m',[StrToFloat(ADOQuery1.FieldByName('valor_cheque2').AsString)])+#13#13+'Titular: '+ADOQuery1.FieldByName('nome_cheque3').Text+#13+'N∫: '+ADOQuery1.FieldByName('n_cheque3').Text+#13+'Valor: '+Format('%5.2m',[StrToFloat(ADOQuery1.FieldByName('valor_cheque3').AsString)])+#13, mtinformation, [mbOk], 0);
end;

procedure TForm23.cbstatusChange(Sender: TObject);
begin
ADOQuery1.Edit;
gravar.Enabled:=True;
cancelar.Enabled:=True;
end;

procedure TForm23.gravarClick(Sender: TObject);
var
calculo: Real;
begin
ADOQuery1.Post;
gravar.Enabled:=False;
cancelar.Enabled:=False;

if cbstatus.ItemIndex = 2 then
begin
ADOQuery2.Open;
ADOQuery2.Locate('CÛdigo',ADOQuery1.FieldByName('cod_vendedor').Text, []);
calculo:=(StrToFloat(ADOQuery2.FieldByName('caixa_vend').Text)+(StrToFloat(ADOQuery1.FieldByName('valor_modelos').Text) * StrToFloat('0,0'+ADOQuery2.FieldByName('comissao').Text)));
ADOQuery2.Edit;
ADOQuery2.FieldByName('caixa_vend').Text:=FloatToStr(calculo);
ADOQuery2.Post;
ADOQuery2.Close;
cbstatus.Enabled:=False;
end;



end;

procedure TForm23.cancelarClick(Sender: TObject);
begin
ADOQuery1.Cancel;
gravar.Enabled:=False;
cancelar.Enabled:=False;
end;

procedure TForm23.DBGrid1CellClick(Column: TColumn);
begin
if ((cbstatus.Text = 'ENTREGUE') or (cbstatus.Text = '')) then
cbstatus.Enabled:=False
else
cbstatus.Enabled:=True;
end;

procedure TForm23.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((cbstatus.Text = 'ENTREGUE') or (cbstatus.Text = '')) then
cbstatus.Enabled:=False
else
cbstatus.Enabled:=True;
end;

end.

