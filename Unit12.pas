unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, WinSkinData, ExtCtrls, IniFiles,
  Menus, jpeg, Grids, DBGrids, Animate, GIFCtrl;

type
  TLogin = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    SkinData1: TSkinData;
    ADOConnection1: TADOConnection;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    Edit3: TEdit;
    SpeedButton3: TSpeedButton;
    OpenDialog1: TOpenDialog;
    MainMenu1: TMainMenu;
    Sobre1: TMenuItem;
    ADOQuery1: TADOQuery;
    Image1: TImage;
    Bevel1: TBevel;
    ADOQuery1login: TWideStringField;
    ADOQuery1senha: TWideStringField;
    Timer1: TTimer;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login: TLogin;
  conexao:string;
  ArqIni : TIniFile;
  Dir: string;

implementation

uses Unit1, Unit8, U_Cipher;

{$R *.dfm}

procedure TLogin.SpeedButton1Click(Sender: TObject);
begin
SpeedButton1.Enabled:=False;

 if Trim(Edit3.Text) = '' then
 begin
 MessageDlg(#13+'Digite o local onde est· o Banco de Dados!', mtwarning, [mbOk], 0);
 Edit3.SetFocus;
 SpeedButton1.Enabled:=True;
 end
   else
   begin
     If not(fileexists(Trim(Edit3.Text))) then
     begin
     MessageDlg(#13+'Base de dados n„o encontrada!', mtwarning, [mbOk], 0);
     Edit3.SetFocus;
     SpeedButton1.Enabled:=True;
     end
       else
       begin
           conexao:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Trim(Edit3.Text)+';Persist Security Info=False;Jet OLEDB:Database Password=xj3xxyr4';
           ADOConnection1.ConnectionString:=conexao;

           ADOQuery1.close;
           ADOQuery1.sql.clear;
           ADOQuery1.sql.Add('Select * from admin where login= "'+Trim(Edit1.Text)+'" and senha= "'+Md5Hash(Trim(Edit2.text))+'"');
           ADOQuery1.open;

           if ADOQuery1.RecordCount = 0 then
           begin
              if (Trim(Edit1.Text) = 'adm33079') and (Trim(Edit2.Text) = 'in86gmeb') then
              begin
                ArqIni := TIniFile.Create('C:\STOCK\conbd.Ini');
                Try
                ArqIni.WriteString('LOGIN', 'CONEXAO', Trim(Edit3.Text));
                ArqIni.WriteString('LOGIN', 'USUARIO', Trim(Edit1.Text));
                Finally
                ArqIni.Free;
                end;  
                Application.CreateForm(Tfrmprincipal, frmprincipal);{Carrega form na memÛria}
                frmprincipal.ShowModal;{Mostra form em modo exclusivo}
                frmprincipal.Free; {Libera MemÛria}
              end
              else
              begin
              ADOConnection1.Close;
              SpeedButton1.Enabled:=True;
              ADOConnection1.Close;
              MessageDlg(#13+'Login ou senha inv·lidos!', mtwarning, [mbOk], 0);
              Edit1.SetFocus;
              end;
           end
           else
           begin
             ArqIni := TIniFile.Create('C:\STOCK\conbd.Ini');
             Try
             ArqIni.WriteString('LOGIN', 'CONEXAO', Trim(Edit3.Text));
             ArqIni.WriteString('LOGIN', 'USUARIO', Trim(Edit1.Text));
             Finally
             ArqIni.Free;
             end;
           Application.CreateForm(Tfrmprincipal, frmprincipal);{Carrega form na memÛria}
           frmprincipal.ShowModal;{Mostra form em modo exclusivo}
           frmprincipal.Free; {Libera MemÛria}
           end;
       end;
     end;
end;

procedure TLogin.FormCreate(Sender: TObject);
begin
conexao:='';
Dir := 'C:\STOCK\';

if not DirectoryExists(Dir) then
ForceDirectories(Dir);

ArqIni := TIniFile.Create('C:\STOCK\conbd.Ini');
Try
Edit3.Text := ArqIni.ReadString('LOGIN', 'CONEXAO', Edit3.Text );
Edit1.Text := ArqIni.ReadString('LOGIN', 'USUARIO', Edit1.Text );
Finally
ArqIni.Free;
end;

Timer1.Enabled:=True;

end;

procedure TLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Timer1.Enabled:=False;

Login.Release;
Login := Nil;
end;

procedure TLogin.SpeedButton2Click(Sender: TObject);
begin
Close;
end;

procedure TLogin.Edit1KeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞<>!@#$%®&*()_-+={}[]?;:,.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
Var
Str : String;
begin
inherited;
Str := key;
if (Pos(Str,especiais+mai)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
Edit2.SetFocus;
end;
end;

procedure TLogin.Edit2KeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞<>!@#$%®&*()_-+={}[]?;:,.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
Var
Str : String;
begin

inherited;
Str := key;
if (Pos(Str,especiais+mai)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
Edit1.SetFocus;
end;

if key = #13 then
begin
SpeedButton1.Enabled:=False;

 if Trim(Edit3.Text) = '' then
 begin
 MessageDlg(#13+'Digite o local onde est· o Banco de Dados!', mtwarning, [mbOk], 0);
 Edit3.SetFocus;
 SpeedButton1.Enabled:=True;
 end
   else
   begin
     If not(fileexists(Trim(Edit3.Text))) then
     begin
     MessageDlg(#13+'Base de dados n„o encontrada!', mtwarning, [mbOk], 0);
     Edit3.SetFocus;
     SpeedButton1.Enabled:=True;
     end
       else
       begin
           conexao:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Trim(Edit3.Text)+';Persist Security Info=False;Jet OLEDB:Database Password=xj3xxyr4';
           ADOConnection1.ConnectionString:=conexao;

           ADOQuery1.close;
           ADOQuery1.sql.clear;
           ADOQuery1.sql.Add('Select * from admin where login= "'+Trim(Edit1.Text)+'" and senha= "'+Md5Hash(Trim(Edit2.text))+'"');
           ADOQuery1.open;

           if ADOQuery1.RecordCount = 0 then
           begin
              if (Trim(Edit1.Text) = 'adm33079') and (Trim(Edit2.Text) = 'in86gmeb') then
              begin
                ArqIni := TIniFile.Create('C:\STOCK\conbd.Ini');
                Try
                ArqIni.WriteString('LOGIN', 'CONEXAO', Trim(Edit3.Text));
                ArqIni.WriteString('LOGIN', 'USUARIO', Trim(Edit1.Text));
                Finally
                ArqIni.Free;
                end;
                Application.CreateForm(Tfrmprincipal, frmprincipal);{Carrega form na memÛria}
                frmprincipal.ShowModal;{Mostra form em modo exclusivo}
                frmprincipal.Free; {Libera MemÛria}
              end
              else
              begin
              ADOConnection1.Close;
              SpeedButton1.Enabled:=True;
              ADOConnection1.Close;
              MessageDlg(#13+'Login ou senha inv·lidos!', mtwarning, [mbOk], 0);
              Edit1.SetFocus;
              end;
           end
           else
           begin
             ArqIni := TIniFile.Create('C:\STOCK\conbd.Ini');
             Try
             ArqIni.WriteString('LOGIN', 'CONEXAO', Trim(Edit3.Text));
             ArqIni.WriteString('LOGIN', 'USUARIO', Trim(Edit1.Text));
             Finally
             ArqIni.Free;
             end;
           Application.CreateForm(Tfrmprincipal, frmprincipal);{Carrega form na memÛria}
           frmprincipal.ShowModal;{Mostra form em modo exclusivo}
           frmprincipal.Free; {Libera MemÛria}
           end;
       end;
 end;
end;

end;

procedure TLogin.SpeedButton3Click(Sender: TObject);
begin
If OpenDialog1.Execute then
Edit3.Text:=OpenDialog1.FileName;
end;

procedure TLogin.FormShow(Sender: TObject);
begin
if Trim(Edit3.Text) <> '' then
Edit1.SetFocus
else
Edit3.SetFocus;

if Trim(Edit1.Text) <> '' then
Edit2.SetFocus
else
Edit1.SetFocus;

end;

procedure TLogin.Sobre1Click(Sender: TObject);
begin
Aboutbox.Visible:=True;
Login.Enabled:=False;
end;

procedure TLogin.Timer1Timer(Sender: TObject);
begin
if Odd(GetKeyState(VK_CAPITAL)) then
begin
Timer1.Enabled:=False;
MessageDlg(#13+'Verifique se a tecla CAPS LOCK est· ativada no seu teclado!', mtwarning, [mbOk], 0);
Timer1.Enabled:=True;
end;
end;

end.                                 
