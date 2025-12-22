unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, DBCtrls, StdCtrls, Mask, Grids, DBGrids, Buttons,
  ExtCtrls, ComObj, ADODB, IdBaseComponent, IdComponent, IdRawBase,
  IdRawClient, IdIcmpClient;

type
  TForm6 = class(TForm)
    fechar: TSpeedButton;
    Bevel7: TBevel;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    dbvalor: TDBEdit;
    edit_mais: TEdit;
    edit_menos: TEdit;
    Bevel1: TBevel;
    ADOQuery1valor: TBCDField;
    Timer1: TTimer;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label19: TLabel;
    Label4: TLabel;
    Bevel2: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fecharClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edit_maisKeyPress(Sender: TObject; var Key: Char);
    procedure edit_menosKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure edit_maisClick(Sender: TObject);
    procedure edit_menosClick(Sender: TObject);
    procedure edit_menosEnter(Sender: TObject);
    procedure edit_menosExit(Sender: TObject);
    procedure edit_maisEnter(Sender: TObject);
    procedure edit_maisExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1, Unit12;

{$R *.dfm}

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if ADOQuery1.Active=True then
ADOQuery1.Active:=false;

Timer1.Enabled:=False;

edit_mais.Text:='';
edit_menos.Text:='';
Frmprincipal.Enabled:=True;

//Abaixo para Liberar o Form da MemÛria
Form6.Release;
Form6 := Nil;
end;


procedure TForm6.fecharClick(Sender: TObject);
begin
close;
end;

procedure TForm6.FormDestroy(Sender: TObject);
begin
frmprincipal.Enabled:=True;
end;

procedure TForm6.FormActivate(Sender: TObject);
begin
ADOQuery1.Active:=True;
Timer1.Enabled:=True;

edit_mais.SetFocus;
end;

procedure TForm6.edit_maisKeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞<>!@#$%®&*()_-+={}[]?;:.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
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
edit_mais.SetFocus;
end;
end;

procedure TForm6.edit_menosKeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞<>!@#$%®&*()_-+={}[]?;:.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
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
edit_menos.SetFocus;
end;
end;

procedure TForm6.SpeedButton1Click(Sender: TObject);
var
aux:Real;
begin
ADOQuery1.Edit;
aux:=StrToFloat(dbvalor.Text)+StrToFloat(edit_mais.Text);
dbvalor.Text:=FloatToStr(aux);
ADOQuery1.Post;
edit_mais.Clear;
edit_mais.Text:='0';
edit_mais.SelectAll;
end;

procedure TForm6.SpeedButton2Click(Sender: TObject);
var
aux:Real;
begin
 if (StrToFloat(edit_menos.text) > StrToFloat(dbvalor.Text) ) then
 MessageDlg(#13+'O valor m·ximo que pode ser retirado do caixa È '+Format('%5.2m',[StrToFloat(dbvalor.Text)])+'.', mtwarning, [mbOk], 0)
  else
  begin
  ADOQuery1.Edit;
  aux:=StrToFloat(dbvalor.Text)-StrToFloat(edit_menos.Text);
  dbvalor.Text:=FloatToStr(aux);
  ADOQuery1.Post;
  edit_menos.Clear;
  edit_menos.Text:='0';
  edit_menos.SelectAll;
end;

end;

procedure TForm6.Timer1Timer(Sender: TObject);
var
aux:Real;
begin
aux:=StrToFloat(dbvalor.Text);
Label1.Caption:=Format('%5.2m',[aux]);

if (StrToFloat(dbvalor.Text) = 0) then
Label1.Font.Color:=clred
else
Label1.Font.Color:=clblack;

end;

procedure TForm6.edit_maisClick(Sender: TObject);
begin
edit_menos.Text:='0';
edit_mais.SelectAll;
end;

procedure TForm6.edit_menosClick(Sender: TObject);
begin
edit_mais.Text:='0';
edit_menos.SelectAll;
end;

procedure TForm6.edit_menosEnter(Sender: TObject);
begin
edit_mais.Text:='0';
edit_mais.SelectAll;
end;

procedure TForm6.edit_menosExit(Sender: TObject);
begin
edit_mais.Text:='0';
edit_menos.SelectAll;
end;

procedure TForm6.edit_maisEnter(Sender: TObject);
begin
edit_menos.Text:='0';
edit_menos.SelectAll;
end;

procedure TForm6.edit_maisExit(Sender: TObject);
begin
edit_menos.Text:='0';
edit_mais.SelectAll;
end;

end.

