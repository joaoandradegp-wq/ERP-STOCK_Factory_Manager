unit Unit19;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB, StdCtrls, Mask, DBCtrls, Buttons;

type
  TForm19 = class(TForm)
    fechar: TSpeedButton;
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    Bevel3: TBevel;
    Image1: TImage;
    SpeedButton2: TSpeedButton;
    DBEdit1: TDBEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    ADOQuery1: TADOQuery;
    ADOQuery1valor: TBCDField;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    Timer1: TTimer;
    DBText2: TDBText;
    Label5: TLabel;
    ADOQuery2tipo: TWideStringField;
    ADOQuery2nome: TWideStringField;
    ADOQuery2cpf: TWideStringField;
    ADOQuery2valores: TBCDField;
    ADOQuery2data: TDateTimeField;
    ADOQuery2horario: TWideStringField;
    Label6: TLabel;
    Edit3: TEdit;
    procedure fecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form19: TForm19;

implementation

uses Unit1, Unit5, Unit12;

{$R *.dfm}

procedure TForm19.fecharClick(Sender: TObject);
begin
Close;
end;

procedure TForm19.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if ADOQuery1.Active=True then
ADOQuery1.Active:=false;
if ADOQuery2.Active=True then
ADOQuery2.Active:=false;

Form5.Enabled:=True;

Timer1.Enabled:=False;

//Abaixo para Liberar o Form da MemÛria
Form19.Release;
Form19 := Nil;
end;

procedure TForm19.FormActivate(Sender: TObject);
begin
ADOQuery1.Active:=True;
Timer1.Enabled:=True;
Edit1.SetFocus;
end;

procedure TForm19.SpeedButton2Click(Sender: TObject);
begin
Edit1.Clear;
Edit3.Clear;
Edit2.Clear;
Edit4.Clear;
Edit1.SetFocus;
end;

procedure TForm19.Edit1KeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞<>!@#$%®&*()_-+={}[]?;:.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
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
Edit1.SetFocus;
end;

end;

procedure TForm19.SpeedButton1Click(Sender: TObject);
var
aux: Real;
begin
ADOQuery2.Active:=True;
if MessageDlg(#13+'Deseja realizar o pagamento de '+Edit2.Text+' para o Vendedor '+DBText1.Caption+'?',mtConfirmation, [mbyes, mbno],0) = mrYes then
  begin
if (StrToFloat(Edit4.text) > StrToFloat(DBText2.Caption) ) then
MessageDlg(#13+'O valor do pagamento excede o limite dos lucros do vendedor que È de '+Label5.Caption+'.', mtwarning, [mbOk], 0)
else
begin
  if (StrToFloat(Edit4.text) > StrToFloat(DBEdit1.Text) ) then
  MessageDlg(#13+'O valor do pagamento excede o limite do caixa que È de '+DBEdit1.Text+'.', mtwarning, [mbOk], 0)
  else
  begin
  ADOQuery1.Edit;
  aux:=StrToFloat(DBEdit1.Text)-StrToFloat(Edit4.Text);
  DBEdit1.Text:=FloatToStr(aux);
  ADOQuery1.Post;

  ADOQuery2.Append;
  ADOQuery2.FieldByName('tipo').Text:='VENDEDOR';
  ADOQuery2.FieldByName('nome').Text:=DBText1.Caption;
  ADOQuery2.FieldByName('cpf').Text:=Form5.dbcpf.Text;
  ADOQuery2.FieldByName('valores').Text:=Edit4.Text;
  
  //Abaixo reduz o valor pago do caixa do vendedor
  Form5.ADOQuery1.Edit;
  Form5.ADOQuery1.FieldByName('caixa_vend').Text:=FloatToStr(StrToFloat(Form5.ADOQuery1.FieldByName('caixa_vend').Text) - StrToFloat(Edit4.Text));
  Form5.ADOQuery1.Post;

  ADOQuery2.FieldByName('data').Text:=DateToStr(date);
  ADOQuery2.FieldByName('horario').Text:=TimeToStr(time);
  ADOQuery2.Post;

  ADOQuery2.Active:=False;
  Timer1.Enabled:=False;
  SpeedButton2.Enabled:=False;
  SpeedButton1.Enabled:=False;
  Edit1.Enabled:=False;
  Edit3.Enabled:=False;

   if (DBText2.Caption = '0') then
   begin
   Label5.Caption:=Format('%5.2m',[StrToFloat(DBText2.Caption)]);
   Label5.Font.Color:=clred;
   end
     else
     begin
     Label5.Caption:=Format('%5.2m',[StrToFloat(DBText2.Caption)]);
     Label5.Font.Color:=clblack;
     end;

  MessageDlg(#13+'Pagamento efetuado com sucesso!', mtInformation, [mbOk], 0);
end;

  end;
end;

end;

procedure TForm19.Timer1Timer(Sender: TObject);
begin
if (Trim(Edit2.Text) = '') or (Edit2.Text = 'R$ 0,00') then
SpeedButton1.Enabled:=False
else
SpeedButton1.Enabled:=True;

 if (DBText2.Caption = '0') then
 begin
 Label5.Caption:=Format('%5.2m',[StrToFloat(DBText2.Caption)]);
 Label5.Font.Color:=clred;
 end
  else
  begin
  Label5.Caption:=Format('%5.2m',[StrToFloat(DBText2.Caption)]);
  Label5.Font.Color:=clblack;
  end;

end;

procedure TForm19.Edit3KeyPress(Sender: TObject; var Key: Char);
Const
especiais = '<>!@#$%®&*()_-+={}[]?;:.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVXYZW';
min = 'abcdefghijklmnopqrstuvxyzw';
var
Str : String;
pagamento: Real;
begin
inherited;
Str := key;
if (Pos(Str,especiais+mai+min)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
Edit3.SetFocus;
end;

  if (Key = #13) and (Trim(Edit3.Text) <> '') then
  begin
  pagamento:=(StrToFloat(Edit4.Text)+ StrToFloat(Edit3.Text));
  Edit2.Text:=Format('%5.2m',[pagamento]);
  Edit4.Text:=FloatToStr(pagamento);
  end;

end;

procedure TForm19.Edit1Exit(Sender: TObject);
var
pagamento: Real;
begin
  if Trim(Edit1.Text) <> '' then
  begin
  pagamento:=StrToFloat(Edit1.Text);
  Edit2.Text:=Format('%5.2m',[pagamento]);
  Edit4.Text:=FloatToStr(pagamento);
  end
  else
  begin
  Edit4.Text:='0';
  Edit2.Text:=Format('%5.2m',[StrToFloat(Edit4.Text)]);
  end;
end;

procedure TForm19.Edit1Change(Sender: TObject);
begin
Edit3.Clear;
Edit2.Clear;
end;

end.
