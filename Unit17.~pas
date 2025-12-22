unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Series, TeEngine, ExtCtrls, TeeProcs, Chart,
  DbChart, ComCtrls, DB, ADODB, ImgList, ComObj ;

type
  TForm17 = class(TForm)
    Bevel7: TBevel;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    DBChart1: TDBChart;
    Series1: TPieSeries;
    GroupBox2: TGroupBox;
    filtrar: TSpeedButton;
    Label6: TLabel;
    Label1: TLabel;
    combo_mes: TComboBox;
    edit_ano: TEdit;
    fechar: TSpeedButton;
    ADOQuery1: TADOQuery;
    ADOQuery1mes: TWideStringField;
    ADOQuery1ano: TWideStringField;
    ADOQuery1qtde: TIntegerField;
    ImageList1: TImageList;
    combo_graf: TComboBox;
    Label2: TLabel;
    assunto_b: TSpeedButton;
    ADOQuery1status: TWideStringField;
    TabSheet1: TTabSheet;
    DBChart2: TDBChart;
    BarSeries1: TBarSeries;
    DBChart4: TDBChart;
    BarSeries2: TBarSeries;
    DBChart3: TDBChart;
    Series2: TPieSeries;
    ADOQuery2: TADOQuery;
    ADOQuery2qtde: TIntegerField;
    ADOQuery2mes: TWideStringField;
    ADOQuery2ano: TWideStringField;
    ADOQuery2nome: TWideStringField;
    ADOQuery2status: TWideStringField;
    Image1: TImage;
    CheckBox1: TCheckBox;
    procedure fecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure filtrarClick(Sender: TObject);
    procedure assunto_bClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form17: TForm17;

implementation

uses Unit1, Unit12;

{$R *.dfm}

procedure TForm17.fecharClick(Sender: TObject);
begin
Close;
end;

procedure TForm17.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Frmprincipal.Enabled:=True;

//Abaixo para Liberar o Form da Memória
Form17.Release;
Form17 := Nil;
end;

procedure TForm17.FormDestroy(Sender: TObject);
begin
frmprincipal.Enabled:=True;
end;

procedure TForm17.filtrarClick(Sender: TObject);
var
erro: Boolean;
begin
erro:=False;

if combo_graf.ItemIndex = -1 then
begin
MessageDlg(#13+'Preencha corretamente o tipo de gráfico a ser gerado!', mtwarning, [mbOk], 0);
combo_graf.SetFocus;
erro:=True;
end

else if combo_mes.Text = '' then
begin
MessageDlg(#13+'Preencha corretamente o mês a ser pesquisado!', mtwarning, [mbOk], 0);
combo_mes.SetFocus;
erro:=True;
end

else if Trim(edit_ano.Text) = '' then
begin
MessageDlg(#13+'Preencha corretamente o ano a ser pesquisado!', mtwarning, [mbOk], 0);
edit_ano.SetFocus;
erro:=True;
end

else if Length(edit_ano.Text) <> 4 then
begin
MessageDlg(#13+'O ano deve estar no formato de 4 dígitos!', mtwarning, [mbOk], 0);
edit_ano.SetFocus;
erro:=True;
end;

if erro = False then
begin
  //Gráfico Pedidos - INICIO
  if PageControl2.ActivePage = TabSheet5 then
  begin
  assunto_b.Enabled:=True;

     if combo_graf.ItemIndex = 0 then
     begin
       DBChart4.Visible:=False;
       DBChart1.Visible:=True;

       Series1.Clear;

       ADOQuery1.close;
       ADOQuery1.sql.clear;
       ADOQuery1.sql.Add('Select COUNT(status) as qtde,status,mes,ano from pedidos where mes = "'+combo_mes.Text+'" and ano = "'+edit_ano.Text+'" group by status,mes,ano order by status');
       ADOQuery1.open;

       while not ADOQuery1.Eof do
       begin
       Series1.AddY(ADOQuery1qtde.Value, ADOQuery1status.AsString);
       ADOQuery1.Next;
       end;

        if ADOQuery1.RecordCount = 0 then   //Caso não apareça nenhum registro
        begin
        assunto_b.Enabled:=False;
        MessageDlg(#13+'Não existem registros do mês de '+combo_mes.Text+' de '+edit_ano.Text+' no Sistema!', mtwarning, [mbOk], 0);
        combo_mes.SetFocus;
        end;
        ADOQuery1.Close;

     end
      else
      begin
       DBChart4.Visible:=True;
       DBChart1.Visible:=False;

       BarSeries2.Clear;

       ADOQuery1.close;
       ADOQuery1.sql.clear;
       ADOQuery1.sql.Add('Select COUNT(status) as qtde,status,mes,ano from pedidos where mes = "'+combo_mes.Text+'" and ano = "'+edit_ano.Text+'" group by status,mes,ano order by status');
       ADOQuery1.open;

         while not ADOQuery1.Eof do
         begin
         BarSeries2.AddY(ADOQuery1qtde.Value, ADOQuery1status.AsString);
         ADOQuery1.Next;
         end;

         if ADOQuery1.RecordCount = 0 then   //Caso não apareça nenhum registro
         begin
         assunto_b.Enabled:=False;
         MessageDlg(#13+'Não existem registros do mês de '+combo_mes.Text+' de '+edit_ano.Text+' no Sistema!', mtwarning, [mbOk], 0);
         combo_mes.SetFocus;
         end;
         ADOQuery1.Close;
     end;
  end
  //Gráfico Pedidos - FIM
  else
  begin
  assunto_b.Enabled:=True;
     //Gráfico Vendedores - INICIO
     if combo_graf.ItemIndex = 0 then
     begin
       DBChart2.Visible:=False;
       DBChart3.Visible:=True;

       Series2.Clear;

       ADOQuery2.close;
       ADOQuery2.sql.clear;
       ADOQuery2.sql.Add('Select COUNT(status) as qtde,status,nome,mes,ano from pedidos where mes = "'+combo_mes.Text+'" and ano = "'+edit_ano.Text+'" group by status,nome,mes,ano order by nome');
       ADOQuery2.open;

       while not ADOQuery2.Eof do
       begin
       Series2.AddY(ADOQuery2qtde.Value, ADOQuery2nome.AsString+#13'('+ADOQuery2status.AsString+')');
       ADOQuery2.Next;
       end;

        if ADOQuery2.RecordCount = 0 then   //Caso não apareça nenhum registro
        begin
        assunto_b.Enabled:=False;
        MessageDlg(#13+'Não existem registros do mês de '+combo_mes.Text+' de '+edit_ano.Text+' no Sistema!', mtwarning, [mbOk], 0);
        combo_mes.SetFocus;
        end;
        ADOQuery2.Close;

     end
      else
      begin
       DBChart2.Visible:=True;
       DBChart3.Visible:=False;

       BarSeries1.Clear;

       ADOQuery2.close;
       ADOQuery2.sql.clear;
       ADOQuery2.sql.Add('Select COUNT(status) as qtde,status,nome,mes,ano from pedidos where mes = "'+combo_mes.Text+'" and ano = "'+edit_ano.Text+'" group by status,nome,mes,ano order by nome');
       ADOQuery2.open;

         while not ADOQuery2.Eof do
         begin
         BarSeries1.AddY(ADOQuery2qtde.Value, ADOQuery2nome.AsString+#13'('+ADOQuery2status.AsString+')');
         ADOQuery2.Next;
         end;

         if ADOQuery2.RecordCount = 0 then   //Caso não apareça nenhum registro
         begin
         assunto_b.Enabled:=False;
         MessageDlg(#13+'Não existem registros do mês de '+combo_mes.Text+' de '+edit_ano.Text+' no Sistema!', mtwarning, [mbOk], 0);
         combo_mes.SetFocus;
         end;
         ADOQuery2.Close;
     end;
  end;
  //Gráfico Vendedores - FIM

end;
end;

procedure TForm17.assunto_bClick(Sender: TObject);
var
MSWord: Variant;
caminho,sub_titulo,logo_caminho,data: String;
begin
if MessageDlg(#13+'É necessário que o programa Microsoft Word esteja instalado em seu computador.'+#13+'Deseja continuar?',mtConfirmation, [mbyes, mbno],0) = mrYes then
begin
data:=FormatDateTime('dd/mm/yyyy',date);

caminho:=ExtractFilePath(Application.Exename)+'\G01.bmp';
logo_caminho:=ExtractFilePath(Application.Exename)+'\logo_phobostock236.bmp';

Image1.Picture.Bitmap.SaveToFile(logo_caminho);

 if PageControl2.ActivePage = TabSheet5 then
  begin
  sub_titulo:='Relação de Status dos Pedidos';
    if DBChart1.Visible = true then
    DBChart1.SaveToBitmapFile(caminho)
    else
    DBChart4.SaveToBitmapFile(caminho);
  end
  else
  begin
  sub_titulo:='Relação de Status dos Pedidos por Vendedor';
    if DBChart3.Visible = true then
    DBChart3.SaveToBitmapFile(caminho)
    else
    DBChart2.SaveToBitmapFile(caminho);
  end;

//Abaixo já mexe com o Word
MSWord:= CreateOleObject ('Word.Basic');
MSWord.FileNew;
MSWord.AppShow;
MSWord.appmaximize;

MSWord.leftPara;

if CheckBox1.Checked = True then
MSWord.insertpicture(ExtractFilePath(Application.Exename)+'\logo.bmp');

MSWord.insert(#13);
MSWord.insert(#13);
MSWord.insert(#13);
MSWord.insert(#13);
MSWord.insert(#13);
MSWord.insert(#13);

MSWord.FontSize(16);
MSWord.CenterPara;
MSWord.insert('R.A ESTOFADOS');
MSWord.insert(#13);

MSWord.FontSize(16);
MSWord.italic;
MSWord.bold;
MSWord.insert(sub_titulo);
MSWord.insert(#13);MSWord.insert(#13);
MSWord.insert(#13);MSWord.insert(#13);
MSWord.insert(#13);MSWord.insert(#13);

MSWord.CenterPara;
MSWord.insertpicture(ExtractFilePath(Application.Exename)+'\G01.bmp');

MSWord.insert(#13);
MSWord.insert(#13);
MSWord.rightPara;
MSWord.insert(#13 +'--'+#13);
MSWord.insert('Gráfico extraído dia '+data+' às '+TimeToStr(time));

MSWord.insert(#13);MSWord.insert(#13);MSWord.insert(#13);
MSWord.insert(#13);MSWord.insert(#13);MSWord.insert(#13);

MSWord.insert(#13);MSWord.insert(#13);MSWord.insert(#13);

MSWord.leftPara;
MSWord.insertpicture(logo_caminho);

MessageDlg(#13+'Gráfico de Status de Pedidos gerado com sucesso!', mtinformation, [mbOk], 0);

Windows.DeleteFile(PCHAR(caminho));
Windows.DeleteFile(PCHAR(logo_caminho));
end;

end;

end.
