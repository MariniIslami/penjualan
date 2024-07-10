unit satuan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Edit3: TEdit;
    Button5: TButton;
    Button6: TButton;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure Edit3Change(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  a:string;

implementation

uses
  Data_Modul, Menu;

{$R *.dfm}

procedure TForm4.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text := DataModule1.Zsatuan.Fields[1].AsString;
Edit2.Text := DataModule1.Zsatuan.Fields[2].AsString;
a := DataModule1.Zsatuan.Fields[0].AsString;

Edit1.Enabled := True;
Edit2.Enabled := True;
Button2.Enabled := True;
Button3.Enabled := True;
Button6.Enabled := True;
Button1.Enabled := False;
Button5.Enabled := False;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
  if Edit1.Text = '' then
   begin
     ShowMessage('Nama satuan tidak boleh kosong!');
   end else
   if Edit2.Text = '' then
   begin
     ShowMessage('Diskripsi kategori tidak boleh kosong!');
   end else
   if DataModule1.Zsatuan.Locate('name',Edit1.Text,[])then
   begin
      ShowMessage('nama satuan '+Edit1.Text+'sudah ada didalam sistem');
   end else
   begin // insert
   with DataModule1.Zsatuan do
   begin
      SQL.Clear;
      SQL.Add('insert into satuan values(null,"'+Edit1.Text+'", "'+Edit2.Text+'")');
      ExecSQL;

      SQL.Clear;
      SQL.Add('select * from satuan');
      Open;
   end;
   ShowMessage('Data Berhasil Disimpan');
   end;
   posisiawal;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  begin
  if Edit1.Text = '' then
   begin
     ShowMessage('Nama satuan tidak boleh kosong!');
   end else
  if Edit2.Text = '' then
  begin
    ShowMessage('Diskripsi tidak boleh kosong!');
  end else
   if (Edit1.Text = DataModule1.Zsatuan.Fields[1].AsString) and
      (Edit2.Text = DataModule1.Zsatuan.Fields[2].AsString) then
   begin
      ShowMessage('nama satuan dan diskripsi'+Edit1.Text+'Tidak Ada Perubahan');
   end else
   begin //update
   with DataModule1.Zsatuan do
   begin
      SQL.Clear;
      if Edit1.Text <> '' then
      SQL.Add('update satuan set name= "'+Edit1.text+'" where id= "'+a+'"');
      ExecSQL;

      SQL.Clear;
      if Edit2.Text <> '' then
      SQL.Add('update satuan set diskripsi= "'+Edit2.text+'" where id= "'+a+'"');
      ExecSQL;

      SQL.Clear;
      SQL.Add('select * from satuan');
      Open;
   end;
   ShowMessage('Data Berhasil Diupdate');
   end;
   posisiawal;
end;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Menghapuus Data ini',mtWarning,[mbYes,mbNo],0)=mryes then
begin
with DataModule1.Zsatuan do
begin
SQL.Clear;
SQL.Add('delete from satuan where id= "'+a+'"');
ExecSQL;

SQL.Clear;
SQL.Add('select * from satuan');
Open;
end;
ShowMessage('Data Berhasil Didelete!');
end else
begin
ShowMessage('Data Berhasil Dihapus!');
end;
posisiawal;
end;

procedure TForm4.posisiawal;
begin
  bersih;
  Button5.Enabled := True;
  Button1.Enabled := False;
  Button2.Enabled := False;
  Button3.Enabled := False;
  Button6.Enabled := False;
  Edit1.Enabled := False;
  Edit2.Enabled := False;
end;

procedure TForm4.bersih;
begin
Edit1.Clear;
Edit2.Clear;
end;

procedure TForm4.Edit3Change(Sender: TObject);
begin
with DataModule1.Zsatuan do
  begin
    SQL.Clear;
    SQL.Add('select * from  satuan where name like "%'+Edit3.Text+'%"');
    Open;
  end;
end;

procedure TForm4.Button6Click(Sender: TObject);
begin
bersih;
posisiawal;
end;

procedure TForm4.Button5Click(Sender: TObject);
begin
Button5.Enabled := False;
Button1.Enabled := True;
Button2.Enabled := False;
Button3.Enabled := False;
Button6.Enabled := True;
Edit1.Enabled := True;
Edit2.Enabled := True;
Edit3.Enabled := True;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
posisiawal;
end;

end.
