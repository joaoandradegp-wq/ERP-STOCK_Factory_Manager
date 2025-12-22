unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DB,
  ADODB;

type
  TForm9 = class(TForm)
    fechar: TSpeedButton;
    Bevel3: TBevel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    SpeedButton2: TSpeedButton;
    comboestoque: TComboBox;
    Label3: TLabel;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource3: TDataSource;
    ADOQuery3: TADOQuery;
    DataSource4: TDataSource;
    ADOQuery4: TADOQuery;
    DataSource5: TDataSource;
    ADOQuery5: TADOQuery;
    DataSource6: TDataSource;
    ADOQuery6: TADOQuery;
    DataSource7: TDataSource;
    ADOQuery7: TADOQuery;
    Bevel2: TBevel;
    Edit1: TEdit;
    btn_menos: TSpeedButton;
    ADOQuery1tipo: TWideStringField;
    ADOQuery1qtde: TWideStringField;
    ADOQuery2tipo: TWideStringField;
    ADOQuery2qtde: TWideStringField;
    ADOQuery3tipo: TWideStringField;
    ADOQuery3qtde: TWideStringField;
    ADOQuery4tipo: TWideStringField;
    ADOQuery4qtde: TWideStringField;
    ADOQuery5tipo: TWideStringField;
    ADOQuery5qtde: TWideStringField;
    ADOQuery6tipo: TWideStringField;
    ADOQuery6qtde: TWideStringField;
    ADOQuery7tipo: TWideStringField;
    ADOQuery7qtde: TWideStringField;
    Bevel4: TBevel;
    Timer1: TTimer;
    procedure fecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure comboestoqueChange(Sender: TObject);
    procedure btn_menosClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit1, Unit12;

{$R *.dfm}


procedure TForm9.fecharClick(Sender: TObject);
begin
Close;
end;

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if ADOQuery1.Active=True then
ADOQuery1.Active:=False;
if ADOQuery2.Active=True then
ADOQuery2.Active:=False;
if ADOQuery3.Active=True then
ADOQuery3.Active:=False;
if ADOQuery4.Active=True then
ADOQuery4.Active:=False;
if ADOQuery5.Active=True then
ADOQuery5.Active:=False;
if ADOQuery6.Active=True then
ADOQuery6.Active:=False;
if ADOQuery7.Active=True then
ADOQuery7.Active:=False;

Timer1.Enabled:=False;

DBGrid1.Options:=[dgColumnResize,dgRowSelect,dgConfirmDelete,dgCancelOnExit];
Label2.Caption:='Nenhum Registro';
Frmprincipal.Enabled:=True;

//Abaixo para Liberar o Form da MemÛria
Form9.Release;
Form9 := Nil;
end;

procedure TForm9.FormDestroy(Sender: TObject);
begin
frmprincipal.Enabled:=true;
end;

procedure TForm9.SpeedButton2Click(Sender: TObject);
begin
Edit1.Text:='';
SpeedButton2.Enabled:=False;
comboestoque.Enabled:=False;
DBGrid1.Enabled:=False;
Edit1.Enabled:=False;
btn_menos.Enabled:=False;

ADOQuery1.Active:=False;
ADOQuery2.Active:=False;
ADOQuery3.Active:=False;
ADOQuery4.Active:=False;
ADOQuery5.Active:=False;
ADOQuery6.Active:=False;
ADOQuery7.Active:=False;

ADOQuery1.Active:=True;
ADOQuery2.Active:=True;
ADOQuery3.Active:=True;
ADOQuery4.Active:=True;
ADOQuery5.Active:=True;
ADOQuery6.Active:=True;
ADOQuery7.Active:=True;

MessageDlg(#13+'Estoque de matÈrias-prima atualizado com sucesso!', mtinformation, [mbOk], 0);

comboestoque.Enabled:=True;
DBGrid1.Enabled:=True;
Edit1.Enabled:=True;
btn_menos.Enabled:=True;
end;

procedure TForm9.comboestoqueChange(Sender: TObject);
var
nome: String;
begin
Timer1.Enabled:=True;

       if comboestoque.ItemIndex = 0 then
       begin
       nome:='PANO';
       ADOQuery1.Active:=True;
       ADOQuery1.close;
       ADOQuery1.sql.clear;
       ADOQuery1.sql.Add('select * from pano order by tipo');
       ADOQuery1.open;
       DBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
       DBGrid1.Columns[1].Title.Caption:='Quantidade (m≤) ';
       DBGrid1.DataSource:=Datasource1;

        //Pra contar a quantidade de Registros
        if (ADOQuery1.RecordCount) > 1 then
        Label2.Caption:=IntToStr(ADOQuery1.RecordCount)+' Registros'
        else
        Label2.Caption:=IntToStr(ADOQuery1.RecordCount)+' Registro';

        if (ADOQuery1.RecordCount) = 0 then
        begin
        ADOQuery1.Active:=False;
        DBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
        Label2.Caption:='Nenhum Registro';
        MessageDlg(#13+'N„o existe estoque de '+nome+' cadastrado no Sistema!', mtwarning, [mbOk], 0);
        comboestoque.SetFocus;
        SpeedButton2.Enabled:=False;
        Edit1.Enabled:=False;
        btn_menos.Enabled:=False;
        end
        else
         begin
         DBGrid1.Enabled:=True;
         SpeedButton2.Enabled:=True;
         Edit1.Text:='';
         Edit1.Enabled:=True;
         btn_menos.Enabled:=True;
         end;

       end
       else if comboestoque.ItemIndex = 1 then
        begin
        nome:='MADEIRA';
        ADOQuery2.Active:=True;
        ADOQuery2.close;
        ADOQuery2.sql.clear;
//      ADOQuery2.sql.Add('Select tipo,sum(qtde) as qtde from madeira group by tipo');
        ADOQuery2.sql.Add('select * from madeira order by tipo');
        ADOQuery2.open;
        DBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
        DBGrid1.Columns[1].Title.Caption:='Quantidade (m≥) ';
        DBGrid1.DataSource:=Datasource2;

          //Pra contar a quantidade de Registros
          if (ADOQuery2.RecordCount) > 1 then
          Label2.Caption:=IntToStr(ADOQuery2.RecordCount)+' Registros'
          else
          Label2.Caption:=IntToStr(ADOQuery2.RecordCount)+' Registro';

          if (ADOQuery2.RecordCount) = 0 then
          begin
          ADOQuery2.Active:=False;
          DBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
          Label2.Caption:='Nenhum Registro';
          MessageDlg(#13+'N„o existe estoque de '+nome+' cadastrado no Sistema!', mtwarning, [mbOk], 0);
          comboestoque.SetFocus;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=False;
          btn_menos.Enabled:=False;
          end
          else
           begin
           DBGrid1.Enabled:=True;
           SpeedButton2.Enabled:=True;
           Edit1.Text:='';
           Edit1.Enabled:=True;
           btn_menos.Enabled:=True;
           end;

        end
          else if comboestoque.ItemIndex = 2 then
          begin
          nome:='FLOCOS';
          ADOQuery3.Active:=True;
          ADOQuery3.close;
          ADOQuery3.sql.clear;
          ADOQuery3.sql.Add('select * from flocos order by tipo');
          ADOQuery3.open;
          DBGrid1.Columns[1].Title.Caption:='Quantidade (kg) ';
          DBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
          DBGrid1.DataSource:=Datasource3;

            //Pra contar a quantidade de Registros
            if (ADOQuery3.RecordCount) > 1 then
            Label2.Caption:=IntToStr(ADOQuery3.RecordCount)+' Registros'
            else
            Label2.Caption:=IntToStr(ADOQuery3.RecordCount)+' Registro';

            if (ADOQuery3.RecordCount) = 0 then
            begin
            ADOQuery3.Active:=False;
            DBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
            Label2.Caption:='Nenhum Registro';
            MessageDlg(#13+'N„o existe estoque de '+nome+' cadastrado no Sistema!', mtwarning, [mbOk], 0);
            comboestoque.SetFocus;
            SpeedButton2.Enabled:=False;
            Edit1.Enabled:=False;
            btn_menos.Enabled:=False;
            end
            else
             begin
             DBGrid1.Enabled:=True;
             SpeedButton2.Enabled:=True;
             Edit1.Text:='';
             Edit1.Enabled:=True;
             btn_menos.Enabled:=True;
             end;

          end
            else if comboestoque.ItemIndex = 3 then
            begin
            nome:='ESPUMA';
            ADOQuery4.Active:=True;
            ADOQuery4.close;
            ADOQuery4.sql.clear;
            ADOQuery4.sql.Add('select * from espuma order by tipo');
            ADOQuery4.open;
            DBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
            DBGrid1.Columns[1].Title.Caption:='Quantidade (kg) ';
            DBGrid1.DataSource:=Datasource4;

              //Pra contar a quantidade de Registros
              if (ADOQuery4.RecordCount) > 1 then
              Label2.Caption:=IntToStr(ADOQuery4.RecordCount)+' Registros'
              else
              Label2.Caption:=IntToStr(ADOQuery4.RecordCount)+' Registro';

              if (ADOQuery4.RecordCount) = 0 then
              begin
              ADOQuery4.Active:=False;
              DBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
              Label2.Caption:='Nenhum Registro';
              MessageDlg(#13+'N„o existe estoque de '+nome+' cadastrado no Sistema!', mtwarning, [mbOk], 0);
              comboestoque.SetFocus;
              SpeedButton2.Enabled:=False;
              Edit1.Enabled:=False;
              btn_menos.Enabled:=False;
              end
              else
               begin
               DBGrid1.Enabled:=True;
               SpeedButton2.Enabled:=True;
               Edit1.Text:='';
               Edit1.Enabled:=True;
               btn_menos.Enabled:=True;
               end;

            end
              else if comboestoque.ItemIndex = 4 then
              begin
              nome:='GRAMPO';
              ADOQuery5.Active:=True;
              ADOQuery5.close;
              ADOQuery5.sql.clear;
              ADOQuery5.sql.Add('select * from grampos order by tipo');
              ADOQuery5.open;
              DBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
              DBGrid1.Columns[1].Title.Caption:='Quantidade (kg) ';
              DBGrid1.DataSource:=Datasource5;

                //Pra contar a quantidade de Registros
                if (ADOQuery5.RecordCount) > 1 then
                Label2.Caption:=IntToStr(ADOQuery5.RecordCount)+' Registros'
                else
                Label2.Caption:=IntToStr(ADOQuery5.RecordCount)+' Registro';

                if (ADOQuery5.RecordCount) = 0 then
                begin
                ADOQuery5.Active:=False;
                DBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
                Label2.Caption:='Nenhum Registro';
                MessageDlg(#13+'N„o existe estoque de '+nome+' cadastrado no Sistema!', mtwarning, [mbOk], 0);
                comboestoque.SetFocus;
                SpeedButton2.Enabled:=False;
                Edit1.Enabled:=False;
                btn_menos.Enabled:=False;
                end
                else
                 begin
                 DBGrid1.Enabled:=True;
                 SpeedButton2.Enabled:=True;
                 Edit1.Text:='';
                 Edit1.Enabled:=True;
                 btn_menos.Enabled:=True;
                 end;

              end
                else if comboestoque.ItemIndex = 5 then
                begin
                nome:='PREGO';
                ADOQuery6.Active:=True;
                ADOQuery6.close;
                ADOQuery6.sql.clear;
                ADOQuery6.sql.Add('select * from pregos order by tipo');
                ADOQuery6.open;
                DBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
                DBGrid1.Columns[1].Title.Caption:='Quantidade (kg) ';
                DBGrid1.DataSource:=Datasource6;

                  //Pra contar a quantidade de Registros
                  if (ADOQuery6.RecordCount) > 1 then
                  Label2.Caption:=IntToStr(ADOQuery6.RecordCount)+' Registros'
                  else
                  Label2.Caption:=IntToStr(ADOQuery6.RecordCount)+' Registro';

                  if (ADOQuery6.RecordCount) = 0 then
                  begin
                  ADOQuery6.Active:=False;
                  DBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
                  Label2.Caption:='Nenhum Registro';
                  MessageDlg(#13+'N„o existe estoque de '+nome+' cadastrado no Sistema!', mtwarning, [mbOk], 0);
                  comboestoque.SetFocus;
                  SpeedButton2.Enabled:=False;
                  Edit1.Enabled:=False;
                  btn_menos.Enabled:=False;
                  end
                  else
                   begin
                   DBGrid1.Enabled:=True;
                   SpeedButton2.Enabled:=True;
                   Edit1.Text:='';
                   Edit1.Enabled:=True;
                   btn_menos.Enabled:=True;
                   end;

                end
                  else if comboestoque.ItemIndex = 6 then
                  begin
                  nome:='PERCINTA';
                  ADOQuery7.Active:=True;
                  ADOQuery7.close;
                  ADOQuery7.sql.clear;
                  ADOQuery7.sql.Add('select * from pecinta order by tipo');
                  ADOQuery7.open;
                  DBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
                  DBGrid1.Columns[1].Title.Caption:='Quantidade (kg) ';
                  DBGrid1.DataSource:=Datasource7;

                    //Pra contar a quantidade de Registros
                    if (ADOQuery7.RecordCount) > 1 then
                    Label2.Caption:=IntToStr(ADOQuery7.RecordCount)+' Registros'
                    else
                    Label2.Caption:=IntToStr(ADOQuery7.RecordCount)+' Registro';

                    if (ADOQuery7.RecordCount) = 0 then
                    begin
                    ADOQuery7.Active:=False;
                    DBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
                    Label2.Caption:='Nenhum Registro';
                    MessageDlg(#13+'N„o existe estoque de '+nome+' cadastrado no Sistema!', mtwarning, [mbOk], 0);
                    comboestoque.SetFocus;
                    SpeedButton2.Enabled:=False;
                    Edit1.Enabled:=False;
                    btn_menos.Enabled:=False;
                    end
                    else
                     begin
                     DBGrid1.Enabled:=True;
                     SpeedButton2.Enabled:=True;
                     Edit1.Text:='';
                     Edit1.Enabled:=True;
                     btn_menos.Enabled:=True;
                     end;

                  end;
end;

procedure TForm9.btn_menosClick(Sender: TObject);
begin

if ( (comboestoque.ItemIndex = 0) and (Trim(Edit1.Text) <> '') ) then
begin
  if (StrToFloat(Edit1.Text) > ADOQuery1.FieldbyName('qtde').value) then
  MessageDlg(#13+'A quantidade m·xima que pode ser retirada do tipo '+ADOQuery1.FieldbyName('tipo').value+' È '+ADOQuery1.FieldbyName('qtde').value+'.', mtwarning, [mbOk], 0)
  else
  begin
   ADOQuery1.Edit;
   ADOQuery1.FieldbyName('qtde').value:=((ADOQuery1.FieldbyName('qtde').value) - StrToFloat(Edit1.Text));
   ADOQuery1.Post;
   if ADOQuery1.FieldbyName('qtde').value = 0 then
   ADOQuery1.Delete;

   //Pra contar a quantidade de Registros
   if (ADOQuery1.RecordCount) > 1 then
   Label2.Caption:=IntToStr(ADOQuery1.RecordCount)+' Registros'
   else
   Label2.Caption:=IntToStr(ADOQuery1.RecordCount)+' Registro';

   if (ADOQuery1.RecordCount) = 0 then
   Label2.Caption:='Nenhum Registro';
   
  end;
end;

if ( (comboestoque.ItemIndex = 1) and (Trim(Edit1.Text) <> '') ) then
begin
  if (StrToFloat(Edit1.Text) > ADOQuery2.FieldbyName('qtde').value) then
  MessageDlg(#13+'A quantidade m·xima que pode ser retirada do tipo '+ADOQuery2.FieldbyName('tipo').value+' È '+ADOQuery2.FieldbyName('qtde').value+'.', mtwarning, [mbOk], 0)
  else
  begin
   ADOQuery2.Edit;
   ADOQuery2.FieldbyName('qtde').value:=((ADOQuery2.FieldbyName('qtde').value) - StrToFloat(Edit1.Text));
   ADOQuery2.Post;
   if ADOQuery2.FieldbyName('qtde').value = 0 then
   ADOQuery2.Delete;

   //Pra contar a quantidade de Registros
   if (ADOQuery2.RecordCount) > 1 then
   Label2.Caption:=IntToStr(ADOQuery2.RecordCount)+' Registros'
   else
   Label2.Caption:=IntToStr(ADOQuery2.RecordCount)+' Registro';

   if (ADOQuery2.RecordCount) = 0 then
   Label2.Caption:='Nenhum Registro';

  end;
end;

if ( (comboestoque.ItemIndex = 2) and (Trim(Edit1.Text) <> '') ) then
begin
  if (StrToFloat(Edit1.Text) > ADOQuery3.FieldbyName('qtde').value) then
  MessageDlg(#13+'A quantidade m·xima que pode ser retirada do tipo '+ADOQuery3.FieldbyName('tipo').value+' È '+ADOQuery3.FieldbyName('qtde').value+'.', mtwarning, [mbOk], 0)
  else
  begin
   ADOQuery3.Edit;
   ADOQuery3.FieldbyName('qtde').value:=((ADOQuery3.FieldbyName('qtde').value) - StrToFloat(Edit1.Text));
   ADOQuery3.Post;
   if ADOQuery3.FieldbyName('qtde').value = 0 then
   ADOQuery3.Delete;

   //Pra contar a quantidade de Registros
   if (ADOQuery3.RecordCount) > 1 then
   Label2.Caption:=IntToStr(ADOQuery3.RecordCount)+' Registros'
   else
   Label2.Caption:=IntToStr(ADOQuery3.RecordCount)+' Registro';

   if (ADOQuery3.RecordCount) = 0 then
   Label2.Caption:='Nenhum Registro';

  end;
end;

if ( (comboestoque.ItemIndex = 3) and (Trim(Edit1.Text) <> '') ) then
begin
  if (StrToFloat(Edit1.Text) > ADOQuery4.FieldbyName('qtde').value) then
  MessageDlg(#13+'A quantidade m·xima que pode ser retirada do tipo '+ADOQuery4.FieldbyName('tipo').value+' È '+ADOQuery4.FieldbyName('qtde').value+'.', mtwarning, [mbOk], 0)
  else
  begin
   ADOQuery4.Edit;
   ADOQuery4.FieldbyName('qtde').value:=((ADOQuery4.FieldbyName('qtde').value) - StrToFloat(Edit1.Text));
   ADOQuery4.Post;
   if ADOQuery4.FieldbyName('qtde').value = 0 then
   ADOQuery4.Delete;

   //Pra contar a quantidade de Registros
   if (ADOQuery4.RecordCount) > 1 then
   Label2.Caption:=IntToStr(ADOQuery4.RecordCount)+' Registros'
   else
   Label2.Caption:=IntToStr(ADOQuery4.RecordCount)+' Registro';

   if (ADOQuery4.RecordCount) = 0 then
   Label2.Caption:='Nenhum Registro';

  end;
end;

if ( (comboestoque.ItemIndex = 4) and (Trim(Edit1.Text) <> '') ) then
begin
  if (StrToFloat(Edit1.Text) > ADOQuery5.FieldbyName('qtde').value) then
  MessageDlg(#13+'A quantidade m·xima que pode ser retirada do tipo '+ADOQuery5.FieldbyName('tipo').value+' È '+ADOQuery5.FieldbyName('qtde').value+'.', mtwarning, [mbOk], 0)
  else
  begin
   ADOQuery5.Edit;
   ADOQuery5.FieldbyName('qtde').value:=((ADOQuery5.FieldbyName('qtde').value) - StrToFloat(Edit1.Text));
   ADOQuery5.Post;
   if ADOQuery5.FieldbyName('qtde').value = 0 then
   ADOQuery5.Delete;

   //Pra contar a quantidade de Registros
   if (ADOQuery5.RecordCount) > 1 then
   Label2.Caption:=IntToStr(ADOQuery5.RecordCount)+' Registros'
   else
   Label2.Caption:=IntToStr(ADOQuery5.RecordCount)+' Registro';

   if (ADOQuery5.RecordCount) = 0 then
   Label2.Caption:='Nenhum Registro';

  end;
end;

if ( (comboestoque.ItemIndex = 5) and (Trim(Edit1.Text) <> '') ) then
begin
  if (StrToFloat(Edit1.Text) > ADOQuery6.FieldbyName('qtde').value) then
  MessageDlg(#13+'A quantidade m·xima que pode ser retirada do tipo '+ADOQuery6.FieldbyName('tipo').value+' È '+ADOQuery6.FieldbyName('qtde').value+'.', mtwarning, [mbOk], 0)
  else
  begin
   ADOQuery6.Edit;
   ADOQuery6.FieldbyName('qtde').value:=((ADOQuery6.FieldbyName('qtde').value) - StrToFloat(Edit1.Text));
   ADOQuery6.Post;
   if ADOQuery6.FieldbyName('qtde').value = 0 then
   ADOQuery6.Delete;

   //Pra contar a quantidade de Registros
   if (ADOQuery6.RecordCount) > 1 then
   Label2.Caption:=IntToStr(ADOQuery6.RecordCount)+' Registros'
   else
   Label2.Caption:=IntToStr(ADOQuery6.RecordCount)+' Registro';

   if (ADOQuery6.RecordCount) = 0 then
   Label2.Caption:='Nenhum Registro';

  end;
end;

if ( (comboestoque.ItemIndex = 6) and (Trim(Edit1.Text) <> '') ) then
begin
  if (StrToFloat(Edit1.Text) > ADOQuery7.FieldbyName('qtde').value) then
  MessageDlg(#13+'A quantidade m·xima que pode ser retirada do tipo '+ADOQuery7.FieldbyName('tipo').value+' È '+ADOQuery7.FieldbyName('qtde').value+'.', mtwarning, [mbOk], 0)
  else
  begin
   ADOQuery7.Edit;
   ADOQuery7.FieldbyName('qtde').value:=((ADOQuery7.FieldbyName('qtde').value) - StrToFloat(Edit1.Text));
   ADOQuery7.Post;
   if ADOQuery7.FieldbyName('qtde').value = 0 then
   ADOQuery7.Delete;

   //Pra contar a quantidade de Registros
   if (ADOQuery7.RecordCount) > 1 then
   Label2.Caption:=IntToStr(ADOQuery7.RecordCount)+' Registros'
   else
   Label2.Caption:=IntToStr(ADOQuery7.RecordCount)+' Registro';

   if (ADOQuery7.RecordCount) = 0 then
   Label2.Caption:='Nenhum Registro';

  end;
end;
Edit1.Text:='';
SpeedButton2.Enabled:=True;
btn_menos.Enabled:=True;

end;

procedure TForm9.Edit1KeyPress(Sender: TObject; var Key: Char);
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
Edit1.SetFocus;
end;
end;

procedure TForm9.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:='';
btn_menos.Enabled:=True;
end;

procedure TForm9.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
Edit1.Text:='';
btn_menos.Enabled:=True;
end;

procedure TForm9.Timer1Timer(Sender: TObject);
begin

if DBGrid1.SelectedField.Text = '' then
begin
SpeedButton2.Enabled:=False;
Edit1.Text:='';
Edit1.Enabled:=False;
btn_menos.Enabled:=False;
DBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
DBGrid1.Enabled:=False;
Timer1.Enabled:=False;
end;

end;

end.
