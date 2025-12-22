unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls, ToolWin, ComCtrls, StdCtrls, Printers, Buttons, DB, DBTables,
  DBCtrls, ExtDlgs, jpeg, WinSkinData, ADODB, Mask, IniFiles;

type
  TFrmprincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastrar1: TMenuItem;
    Consultar1: TMenuItem;
    Sobre1: TMenuItem;
    Sair1: TMenuItem;
    con_funcionarios: TMenuItem;
    ToolBar1: TToolBar;
    StatusBar1: TStatusBar;
    ToolBar2: TToolBar;
    SpeedButton8: TSpeedButton;
    Timer1: TTimer;
    SpeedButton9: TSpeedButton;
    cad_vendedores: TMenuItem;
    cad_clientes: TMenuItem;
    cad_estoque: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    cad_modelos: TMenuItem;
    SpeedButton14: TSpeedButton;
    N2: TMenuItem;
    N3: TMenuItem;
    SpeedButton15: TSpeedButton;
    ToolButton5: TToolButton;
    cad_funcionarios: TMenuItem;
    con_vendedores: TMenuItem;
    con_clientes: TMenuItem;
    con_estoque: TMenuItem;
    con_caixa: TMenuItem;
    SpeedButton13: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    N4: TMenuItem;
    cad_pedidos: TMenuItem;
    Pedidos2: TMenuItem;
    N5: TMenuItem;
    ADOQuery1: TADOQuery;
    ADOQuery1login: TWideStringField;
    DataSource1: TDataSource;
    ADOQuery1nome: TWideStringField;
    cad_usuarios: TMenuItem;
    SpeedButton7: TSpeedButton;
    ToolButton4: TToolButton;
    ToolButton7: TToolButton;
    dblogin: TDBText;
    SpeedButton10: TSpeedButton;
    Image1: TImage;
    SpeedButton11: TSpeedButton;
    ToolButton8: TToolButton;
    RelatriodePagamentos1: TMenuItem;
    SpeedButton12: TSpeedButton;
    ToolButton10: TToolButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    Cheques1: TMenuItem;
    SpeedButton18: TSpeedButton;
    ToolButton6: TToolButton;
    N1: TMenuItem;
    Grficos1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure con_funcionariosClick(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cad_vendedoresClick(Sender: TObject);
    procedure cad_clientesClick(Sender: TObject);
    procedure cad_modelosClick(Sender: TObject);
    procedure cad_estoqueClick(Sender: TObject);
    procedure con_vendedoresClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure cad_funcionariosClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure con_estoqueClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure con_clientesClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure cad_usuariosClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure con_caixaClick(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure RelatriodePagamentos1Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure cad_pedidosClick(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure Cheques1Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure Pedidos2Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure Grficos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmprincipal: TFrmprincipal;
  //Variáveis para pegar o nome dos Labels
  aux :string;
  vet :integer;
  //Variáveis pra extrair arquivos do tipo WORD
  MSWord: Variant;
  Dir: string;

implementation
uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10, Unit11, Unit12, Unit13, Unit14, Unit15, Unit16, Unit17, Unit18,
  Unit20_cadcliente, Unit21, Unit22, Unit23;
{$R *.DFM}

function mostrahora:string;
begin
  mostrahora:=timetostr(time);
end;

function mostradata:string;
var
  dthoje:tdatetime;
  diasemana:integer;
  strdiasemana:string;
begin
  dthoje:=date;
  diasemana:=dayofweek(dthoje);
  case diasemana of
  1:strdiasemana:='Domingo';
  2:strdiasemana:='Segunda-feira';
  3:strdiasemana:='Terça-feira';
  4:strdiasemana:='Quarta-feira';
  5:strdiasemana:='Quinta-feira';
  6:strdiasemana:='Sexta-feira';
  7:strdiasemana:='Sábado';
  end;
  mostradata:=strdiasemana+' '+datetostr(dthoje);
end;

procedure TFrmprincipal.Sair1Click(Sender: TObject);
begin
close;
end;

procedure TFrmprincipal.SpeedButton8Click(Sender: TObject);
begin
Close;
end;

procedure TFrmprincipal.Timer1Timer(Sender: TObject);
begin
  STATUSBAR1.PANELS[0].TEXT:=mostrahora();
  STATUSBAR1.PANELS[1].TEXT:=mostradata();
  if Trim(dblogin.Caption) = '' then
  begin
  STATUSBAR1.PANELS[2].TEXT:='Administrador';
  SpeedButton1.Enabled:=False;
  SpeedButton2.Enabled:=False;
  SpeedButton3.Enabled:=False;
  SpeedButton4.Enabled:=False;
  SpeedButton5.Enabled:=False;
  SpeedButton6.Enabled:=False;
  SpeedButton9.Enabled:=False;
  SpeedButton10.Enabled:=False;
  SpeedButton11.Enabled:=False;
  SpeedButton12.Enabled:=False;
  SpeedButton13.Enabled:=False;
  SpeedButton14.Enabled:=False;
  SpeedButton15.Enabled:=False;
  SpeedButton16.Enabled:=False;
  SpeedButton17.Enabled:=False;
  SpeedButton18.Enabled:=False;
  cad_vendedores.Enabled:=False;
  cad_clientes.Enabled:=False;
  cad_funcionarios.Enabled:=False;
  cad_estoque.Enabled:=False;
  cad_modelos.Enabled:=False;
  cad_pedidos.Enabled:=False;
  con_vendedores.Enabled:=False;
  con_clientes.Enabled:=False;
  con_funcionarios.Enabled:=False;
  con_estoque.Enabled:=False;
  Pedidos2.Enabled:=False;
  con_caixa.Enabled:=False;
  Cheques1.Enabled:=False;
  RelatriodePagamentos1.Enabled:=False;
  Grficos1.Enabled:=False;
  end
  else
  begin
  STATUSBAR1.PANELS[2].TEXT:=dblogin.Caption;
  SpeedButton9.Enabled:=True;
  end;
end;

procedure TFrmprincipal.con_funcionariosClick(Sender: TObject);
begin
Application.CreateForm(TForm7, Form7);{Carrega form na memória}
Form7.ShowModal;{Mostra form em modo exclusivo}
Form7.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.Sobre1Click(Sender: TObject);
begin
Aboutbox.Visible:=True;
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if ADOQuery1.Active=True then
ADOQuery1.Active:=false;

frmprincipal.Release;
frmprincipal := Nil;
Login.Close;
end;

procedure TFrmprincipal.FormCreate(Sender: TObject);
begin
Login.Visible:=False;
Login.ADOQuery1.Active:=False;
end;

procedure TFrmprincipal.cad_vendedoresClick(Sender: TObject);
begin
Application.CreateForm(TForm2, Form2);{Carrega form na memória}
Form2.ShowModal;{Mostra form em modo exclusivo}
Form2.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.cad_clientesClick(Sender: TObject);
begin
Application.CreateForm(TForm20, Form20);{Carrega form na memória}
Form20.ShowModal;{Mostra form em modo exclusivo}
Form20.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.cad_modelosClick(Sender: TObject);
begin
Application.CreateForm(TForm10, Form10);{Carrega form na memória}
Form10.ShowModal;{Mostra form em modo exclusivo}
Form10.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.cad_estoqueClick(Sender: TObject);
begin
Application.CreateForm(TForm4, Form4);{Carrega form na memória}
Form4.ShowModal;{Mostra form em modo exclusivo}
Form4.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.con_vendedoresClick(Sender: TObject);
begin
Application.CreateForm(TForm5, Form5);{Carrega form na memória}
Form5.ShowModal;{Mostra form em modo exclusivo}
Form5.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.SpeedButton1Click(Sender: TObject);
begin
Application.CreateForm(TForm2, Form2);{Carrega form na memória}
Form2.ShowModal;{Mostra form em modo exclusivo}
Form2.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.SpeedButton6Click(Sender: TObject);
begin
Application.CreateForm(TForm20, Form20);{Carrega form na memória}
Form20.ShowModal;{Mostra form em modo exclusivo}
Form20.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.cad_funcionariosClick(Sender: TObject);
begin
Application.CreateForm(TForm13, Form13);{Carrega form na memória}
Form13.ShowModal;{Mostra form em modo exclusivo}
Form13.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.SpeedButton2Click(Sender: TObject);
begin
Application.CreateForm(TForm13, Form13);{Carrega form na memória}
Form13.ShowModal;{Mostra form em modo exclusivo}
Form13.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.SpeedButton13Click(Sender: TObject);
begin
Application.CreateForm(TForm4, Form4);{Carrega form na memória}
Form4.ShowModal;{Mostra form em modo exclusivo}
Form4.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.SpeedButton14Click(Sender: TObject);
begin
Application.CreateForm(TForm9, Form9);{Carrega form na memória}
Form9.ShowModal;{Mostra form em modo exclusivo}
Form9.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.con_estoqueClick(Sender: TObject);
begin
Application.CreateForm(TForm9, Form9);{Carrega form na memória}
Form9.ShowModal;{Mostra form em modo exclusivo}
Form9.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.SpeedButton3Click(Sender: TObject);
begin
Application.CreateForm(TForm5, Form5);{Carrega form na memória}
Form5.ShowModal;{Mostra form em modo exclusivo}
Form5.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.con_clientesClick(Sender: TObject);
begin
Application.CreateForm(TForm14, Form14);{Carrega form na memória}
Form14.ShowModal;{Mostra form em modo exclusivo}
Form14.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.SpeedButton4Click(Sender: TObject);
begin
Application.CreateForm(TForm7, Form7);{Carrega form na memória}
Form7.ShowModal;{Mostra form em modo exclusivo}
Form7.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.SpeedButton5Click(Sender: TObject);
begin
Application.CreateForm(TForm14, Form14);{Carrega form na memória}
Form14.ShowModal;{Mostra form em modo exclusivo}
Form14.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.FormActivate(Sender: TObject);
var
aux: string;
begin
ArqIni := TIniFile.Create('C:\STOCK\conbd.Ini');
Try
aux := ArqIni.ReadString('LOGIN', 'USUARIO', aux );
Finally
ArqIni.Free;
end;

ADOQuery1.close;
ADOQuery1.sql.clear;
ADOQuery1.sql.Add('Select * from admin where login= "'+aux+'"');
ADOQuery1.open;

ADOQuery1.Active:=True;
end;

procedure TFrmprincipal.ToolButton4Click(Sender: TObject);
begin
Application.CreateForm(TForm15, Form15);{Carrega form na memória}
Form15.ShowModal;{Mostra form em modo exclusivo}
Form15.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.cad_usuariosClick(Sender: TObject);
begin
Application.CreateForm(TForm15, Form15);{Carrega form na memória}
Form15.ShowModal;{Mostra form em modo exclusivo}
Form15.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.SpeedButton7Click(Sender: TObject);
begin
Application.CreateForm(TForm15, Form15);{Carrega form na memória}
Form15.ShowModal;{Mostra form em modo exclusivo}
Form15.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.SpeedButton9Click(Sender: TObject);
begin
Application.CreateForm(TForm11, Form11);{Carrega form na memória}
Form11.ShowModal;{Mostra form em modo exclusivo}
Form11.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.SpeedButton10Click(Sender: TObject);
begin
Application.CreateForm(TForm6, Form6);{Carrega form na memória}
Form6.ShowModal;{Mostra form em modo exclusivo}
Form6.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.con_caixaClick(Sender: TObject);
begin
Application.CreateForm(TForm6, Form6);{Carrega form na memória}
Form6.ShowModal;{Mostra form em modo exclusivo}
Form6.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.SpeedButton11Click(Sender: TObject);
begin
Application.CreateForm(TForm10, Form10);{Carrega form na memória}
Form10.ShowModal;{Mostra form em modo exclusivo}
Form10.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.RelatriodePagamentos1Click(Sender: TObject);
begin
Application.CreateForm(TForm16, Form16);{Carrega form na memória}
Form16.ShowModal;{Mostra form em modo exclusivo}
Form16.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.SpeedButton12Click(Sender: TObject);
begin
Application.CreateForm(TForm16, Form16);{Carrega form na memória}
Form16.ShowModal;{Mostra form em modo exclusivo}
Form16.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.cad_pedidosClick(Sender: TObject);
begin
Application.CreateForm(TForm21, Form21);{Carrega form na memória}
Form21.ShowModal;{Mostra form em modo exclusivo}
Form21.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.SpeedButton16Click(Sender: TObject);
begin
Application.CreateForm(TForm21, Form21);{Carrega form na memória}
Form21.ShowModal;{Mostra form em modo exclusivo}
Form21.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.SpeedButton17Click(Sender: TObject);
begin
Application.CreateForm(TForm22, Form22);{Carrega form na memória}
Form22.ShowModal;{Mostra form em modo exclusivo}
Form22.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.Cheques1Click(Sender: TObject);
begin
Application.CreateForm(TForm22, Form22);{Carrega form na memória}
Form22.ShowModal;{Mostra form em modo exclusivo}
Form22.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.SpeedButton18Click(Sender: TObject);
begin
Application.CreateForm(TForm23, Form23);{Carrega form na memória}
Form23.ShowModal;{Mostra form em modo exclusivo}
Form23.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.Pedidos2Click(Sender: TObject);
begin
Application.CreateForm(TForm23, Form23);{Carrega form na memória}
Form23.ShowModal;{Mostra form em modo exclusivo}
Form23.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.SpeedButton15Click(Sender: TObject);
begin
Application.CreateForm(TForm17, Form17);{Carrega form na memória}
Form17.ShowModal;{Mostra form em modo exclusivo}
Form17.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

procedure TFrmprincipal.Grficos1Click(Sender: TObject);
begin
Application.CreateForm(TForm17, Form17);{Carrega form na memória}
Form17.ShowModal;{Mostra form em modo exclusivo}
Form17.Free; {Libera Memória}
frmprincipal.Enabled:=False;
end;

end.
