unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, Grids, DBGrids, DB, ADODB, StdCtrls, DBCtrls;

type
  TForm3 = class(TForm)
    fechar: TSpeedButton;
    Bevel7: TBevel;
    DBGrid1: TDBGrid;
    Bevel1: TBevel;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBText1: TDBText;
    Label18: TLabel;
    Bevel2: TBevel;
    excluir: TSpeedButton;
    Label5: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    Bevel3: TBevel;
    ADOQuery1Cdigo: TAutoIncField;
    ADOQuery1nome: TWideStringField;
    ADOQuery1valor: TBCDField;
    ADOQuery1pano: TMemoField;
    ADOQuery1madeira: TMemoField;
    ADOQuery1flocos: TMemoField;
    ADOQuery1pregos: TMemoField;
    ADOQuery1espuma: TMemoField;
    ADOQuery1grampos: TMemoField;
    ADOQuery1percinta: TMemoField;
    ADOQuery1pano_tipo: TMemoField;
    ADOQuery1madeira_tipo: TMemoField;
    ADOQuery1flocos_tipo: TMemoField;
    ADOQuery1pregos_tipo: TMemoField;
    ADOQuery1espuma_tipo: TMemoField;
    ADOQuery1grampos_tipo: TMemoField;
    ADOQuery1percinta_tipo: TMemoField;
    Memo1: TMemo;
    Bevel4: TBevel;
    Timer2: TTimer;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo4: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo5: TDBMemo;
    DBMemo6: TDBMemo;
    DBMemo7: TDBMemo;
    DBMemo8: TDBMemo;
    DBMemo9: TDBMemo;
    DBMemo10: TDBMemo;
    DBMemo11: TDBMemo;
    DBMemo12: TDBMemo;
    DBMemo13: TDBMemo;
    DBMemo14: TDBMemo;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure excluirClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit10, Unit12;

{$R *.dfm}

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if ADOQuery1.Active = True then
ADOQuery1.Active:=False;

Form10.Enabled:=True;
Timer1.Enabled:=False;

//Abaixo para Liberar o Form da Memória
Form3.Release;
Form3 := Nil;
end;

procedure TForm3.fecharClick(Sender: TObject);
begin
Close;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
ADOQuery1.Active:=True;
Timer1.Enabled:=True;
end;

procedure TForm3.excluirClick(Sender: TObject);
begin
  if MessageDlg(#13+'Deseja realmente excluir o modelo '+ADOQuery1.FieldByName('nome').Value+'?',mtConfirmation, [mbyes, mbno],0) = mrYes then
  begin
  MessageDlg(#13+'Modelo '+ADOQuery1.FieldByName('nome').Value+' excluído com sucesso!', mtinformation, [mbOk], 0);
  ADOQuery1.Delete;

  Memo1.Clear;

  //Abaixo são os botões
  excluir.Enabled:=False;
  end;
end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin

if DBGrid1.SelectedField.Text = '' then
excluir.Enabled:=False;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label2.Caption:=IntToStr(ADOQuery1.RecordCount)+' Modelos'
   else
   Label2.Caption:=IntToStr(ADOQuery1.RecordCount)+' Modelo';

   if ADOQuery1.RecordCount = 0 then  //Pra contar a quantidade de Registros
   Label2.Caption:='Nenhum Modelo';

end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
Timer2.Enabled:=True;
excluir.Enabled:=True;
end;

procedure TForm3.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
Timer2.Enabled:=True;
excluir.Enabled:=True;
end;

procedure TForm3.Timer2Timer(Sender: TObject);
var
i: Integer;
begin
Memo1.Clear;
for i:=0 to DBMemo1.Lines.Count-1 Do
Memo1.Lines.Add(DBMemo1.Lines.Strings[i]+' - '+DBMemo2.Lines.Strings[i]+' m²');
for i:=0 to DBMemo3.Lines.Count-1 Do
Memo1.Lines.Add(DBMemo3.Lines.Strings[i]+' - '+DBMemo4.Lines.Strings[i]+' m³');
for i:=0 to DBMemo5.Lines.Count-1 Do
Memo1.Lines.Add(DBMemo5.Lines.Strings[i]+' - '+DBMemo6.Lines.Strings[i]+' kg');
for i:=0 to DBMemo7.Lines.Count-1 Do
Memo1.Lines.Add(DBMemo7.Lines.Strings[i]+' - '+DBMemo8.Lines.Strings[i]+' kg');
for i:=0 to DBMemo9.Lines.Count-1 Do
Memo1.Lines.Add(DBMemo9.Lines.Strings[i]+' - '+DBMemo10.Lines.Strings[i]+' kg');
for i:=0 to DBMemo11.Lines.Count-1 Do
Memo1.Lines.Add(DBMemo11.Lines.Strings[i]+' - '+DBMemo12.Lines.Strings[i]+' kg');
for i:=0 to DBMemo13.Lines.Count-1 Do
Memo1.Lines.Add(DBMemo13.Lines.Strings[i]+' - '+DBMemo14.Lines.Strings[i]+' kg');

Timer2.Enabled:=False;
end;

end.
 