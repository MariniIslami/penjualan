unit kustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm6 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Label7: TLabel;
    ComboBox1: TComboBox;
    Label8: TLabel;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure Button4Click(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    function editFull: Boolean;
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox1DropDown(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  a: string;

implementation

uses
  Data_Modul, report;

{$R *.dfm}

procedure TForm6.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text := DataModule1.Zkustomer.Fields[1].AsString;
Edit2.Text := DataModule1.Zkustomer.Fields[2].AsString;
Edit3.Text := DataModule1.Zkustomer.Fields[3].AsString;
Edit4.Text := DataModule1.Zkustomer.Fields[4].AsString;
Edit5.Text := DataModule1.Zkustomer.Fields[5].AsString;
ComboBox1.Text := DataModule1.Zkustomer.Fields[6].AsString;

a := DataModule1.Zkustomer.Fields[0].AsString;
Edit1.Enabled := True;
Edit2.Enabled := True;
Edit3.Enabled := True;
Edit4.Enabled := True;
Edit5.Enabled := True;
ComboBox1.Enabled:= True;
Button2.Enabled := True;
Button3.Enabled := True;
Button6.Enabled := True;
Button1.Enabled := False;
Button5.Enabled := False;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
if not editFull then
  begin
    ShowMessage('Data Tidak Boleh Kosong!');
  end else
    if DataModule1.Zkustomer.Locate('nik', Edit1.Text,[]) or
    DataModule1.Zkustomer.Locate('name', Edit2.Text,[]) or
    DataModule1.Zkustomer.Locate('telp', Edit3.Text,[]) or
    DataModule1.Zkustomer.Locate('email', Edit4.Text,[]) or
    DataModule1.Zkustomer.Locate('alamat', Edit5.Text,[]) or
    DataModule1.Zkustomer.Locate('member', ComboBox1.Text,[]) then
    begin
      ShowMessage('Data Sudah Ada Dalam Sistem!');
    end else
   begin // insert
   with DataModule1.Zkustomer do
   begin
      SQL.Clear;
      SQL.Add('insert into kustomer value(null, "'+Edit1.Text+'", "'+Edit2.Text+'", "'+Edit3.Text+'", "'+Edit4.Text+'", "'+Edit5.Text+'", "'+ComboBox1.Text+'")');
      ExecSQL ;

      SQL.Clear;
      SQL.Add('select * from kustomer');
      Open;
   end;
   ShowMessage('Data Berhasil Disimpan');
   end;
   posisiawal;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  if not editFull then
  begin
    ShowMessage('Data Tidak Boleh Kosong!');
  end else
    if (DataModule1.Zkustomer.Fields[1].AsString = Edit1.Text) and
    (DataModule1.Zkustomer.Fields[2].AsString = Edit2.Text) and
    (DataModule1.Zkustomer.Fields[3].AsString = Edit3.Text) and
    (DataModule1.Zkustomer.Fields[4].AsString = Edit4.Text) and
    (DataModule1.Zkustomer.Fields[5].AsString = Edit5.Text) and
    (DataModule1.Zkustomer.Fields[6].AsString = ComboBox1.Text) then
    begin
      ShowMessage('Data Sudah Ada Dalam Sistem!');
    end else
   begin //update
   with DataModule1.Zkustomer do
   begin
      SQL.Clear;
      if Edit1.Text <> '' then
      SQL.Add('update kustomer set nik="'+Edit1.Text+'" where id= "'+a+'"');
      ExecSQL;

      SQL.Clear;
      if Edit2.Text <> '' then
      SQL.Add('update kustomer set name="'+Edit2.Text+'" where id= "'+a+'"');
      ExecSQL;

      SQL.Clear;
      if Edit3.Text <> '' then
      SQL.Add('update kustomer set telp="'+Edit3.Text+'" where id= "'+a+'"');
      ExecSQL;

      SQL.Clear;
      if Edit4.Text <> '' then
      SQL.Add('update kustomer set email="'+Edit4.Text+'" where id= "'+a+'"');
      ExecSQL;

      SQL.Clear;
      if Edit5.Text <> '' then
      SQL.Add('update kustomer set alamat="'+Edit5.Text+'" where id= "'+a+'"');
      ExecSQL;

      SQL.Clear;
      if ComboBox1.Text <> '' then
      SQL.Add('update kustomer set member="'+ComboBox1.Text+'" where id= "'+a+'"');
      ExecSQL;

      SQL.Clear;
      SQL.Add ('select * from kustomer');
      Open;
   end;
   ShowMessage('Data Berhasil Diupdate');
   end;
   posisiawal;
end;

procedure TForm6.posisiawal;
begin
bersih;
  Button5.Enabled := True;
  Button1.Enabled := False;
  Button2.Enabled := False;
  Button3.Enabled := False;
  Button6.Enabled := False;
  Edit1.Enabled := False;
  Edit2.Enabled := False;
  Edit3.Enabled := False;
  Edit4.Enabled := False;
  Edit5.Enabled := False;
end;

procedure TForm6.bersih;
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
form8.frxRKustomer.showReport();
end;

procedure TForm6.Edit6Change(Sender: TObject);
begin
with DataModule1.Zkustomer do
  begin
    SQL.Clear;
    SQL.Add('select * from  kustomer where name like "%'+Edit6.Text+'%"');
    Open;
  end;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
Button5.Enabled := False;
Button1.Enabled := True;
Button2.Enabled := False;
Button3.Enabled := False;
Button6.Enabled := True;
Button4.Enabled := True;
Edit1.Enabled := True;
Edit2.Enabled := True;
Edit3.Enabled := True;
Edit4.Enabled := True;
Edit5.Enabled := True;
ComboBox1.Enabled := True;
end;

procedure TForm6.Button6Click(Sender: TObject);
begin
bersih;
posisiawal;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Menghapus Data ini',mtWarning,[mbYes,mbNo],0)=mryes then
  begin
  with DataModule1.Zkustomer do
  begin
    SQL.Clear;
    SQL.Add('delete from kustomer where id= "'+a+'"');
    ExecSQL;

    SQL.Clear;
    SQL.Add('select * from kustomer');
    Open;
  end;
  ShowMessage('Data Berhasil Didelete!');
  end else
  begin
  ShowMessage('Data Berhasil Dihapus!');
  end;
  posisiawal;
end;

function TForm6.editFull: Boolean;
begin
Result := (Edit1.Text <> '') and
          (Edit2.Text <> '') and
          (Edit3.Text <> '') and
          (Edit4.Text <> '') and
          (Edit5.Text <> '');
end;

procedure TForm6.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.Text = 'ya' then
Label8.Caption := '10%'
else if ComboBox1.Text = 'tidak' then
Label8.Caption := '5%'
end;

procedure TForm6.ComboBox1DropDown(Sender: TObject);
begin
ComboBox1.Items.Clear;
ComboBox1.Items.Add('ya');
ComboBox1.Items.Add('tidak');
end;

end.
