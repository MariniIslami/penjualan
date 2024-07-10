unit Kategori;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Edit2: TEdit;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure Button4Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;

implementation

uses
  Menu, Login, Data_Modul, report;

{$R *.dfm}

procedure Tform3.posisiawal;
begin
  bersih;
  Button5.Enabled := True;
  Button1.Enabled := False;
  Button2.Enabled := False;
  Button3.Enabled := False;
  Button6.Enabled := False;
  Edit1.Enabled := False;
end;

procedure Tform3.bersih;
begin
  Edit1.Clear;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  if Edit1.Text = '' then
   begin
     ShowMessage('Nama kategori tidak boleh kosong!');
   end else
   if DataModule1.Zkategori.Locate('name',Edit1.Text,[])then
   begin
      ShowMessage('nama kategori '+Edit1.Text+'sudah ada didalam sistem');
   end else
   begin // insert
   with DataModule1.Zkategori do
   begin
    SQL.Clear;
    SQL.Add('insert into kategori values(null,"'+Edit1.Text+'")');
    ExecSQL;

    SQL.Clear;
    SQL.Add('select * from kategori');
    Open;
   end;
   ShowMessage('Data Berhasil Disimpan');
   end;
   posisiawal;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  if Edit1.Text = '' then
   begin
     ShowMessage('Nama kategori tidak boleh kosong!');
   end else
   if Edit1.Text = DataModule1.Zkategori.Fields[1].AsString then
   begin
      ShowMessage('nama kategori '+Edit1.Text+'Tidak Ada Perubahan');
   end else
   begin // update
   with DataModule1.Zkategori do
   begin
      SQL.Clear;
      SQL.Add('update kategori set name= "'+Edit1.text+'" where id= "'+a+'"');
      ExecSQL;

      SQL.Clear;
      SQL.Add('select * from kategori');
      Open;
   end;
   ShowMessage('Data Berhasil Diupdate');
   end;
   posisiawal;
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:= DataModule1.Zkategori.Fields[1].AsString;
a:=DataModule1.Zkategori.Fields[0].AsString;

Edit1.Enabled := True;
Button2.Enabled := True;
Button3.Enabled := True;
Button6.Enabled := True;
Button1.Enabled := False;
Button5.Enabled := False;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Menghapuus Data ini',mtWarning,[mbYes,mbNo],0)=mryes then
begin
with DataModule1.Zkategori do
begin
SQL.Clear;
SQL.Add('delete from kategori where id= "'+a+'"');
ExecSQL;

SQL.Clear;
SQL.Add('select * from kategori');
Open;
end;
ShowMessage('Data Berhasil Didelete!');
end else
begin
ShowMessage('Data Berhasil Dihapus!');
end;
posisiawal;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  Form8.frxRKategori.ShowReport();
end;

procedure TForm3.Edit2Change(Sender: TObject);
begin
with DataModule1.Zkategori do
  begin
    SQL.Clear;
    SQL.Add('select * from  kategori where name like "%'+Edit2.Text+'%"');
    Open;
  end;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
Button5.Enabled := False;
Button1.Enabled := True;
Button2.Enabled := False;
Button3.Enabled := False;
Button6.Enabled := True;
Button4.Enabled := True;
Edit1.Enabled := True;
Edit2.Enabled := True;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
bersih;
posisiawal;
end;

end.
