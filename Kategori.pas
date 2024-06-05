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
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
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
  Menu, Login, Data_Modul;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
DataModule1.Zkategori.SQL.Clear;
DataModule1.Zkategori.SQL.Add('insert into kategori values(null,"'+Edit1.Text+'")');
DataModule1.Zkategori.ExecSQL;

DataModule1.Zkategori.SQL.Clear;
DataModule1.Zkategori.SQL.Add('select * from kategori');
DataModule1.Zkategori.Open;
ShowMessage('Data Berhasil Disimpan!');
end;
procedure TForm3.Button2Click(Sender: TObject);
begin
DataModule1.Zkategori.SQL.Clear;
DataModule1.Zkategori.SQL.Add('update kategori set name= "'+Edit1.text+'" where id= "'+a+'"');
DataModule1.Zkategori.ExecSQL;

DataModule1.Zkategori.SQL.Clear;
DataModule1.Zkategori.SQL.Add('select * from kategori');
DataModule1.Zkategori.Open;
ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:= DataModule1.Zkategori.Fields[1].AsString;
a:=DataModule1.Zkategori.Fields[0].AsString;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
DataModule1.Zkategori.SQL.Clear;
DataModule1.Zkategori.SQL.Add('delete from kategori where id= "'+a+'"');
DataModule1.Zkategori.ExecSQL;

DataModule1.Zkategori.SQL.Clear;
DataModule1.Zkategori.SQL.Add('select * from kategori');
DataModule1.Zkategori.Open;
ShowMessage('Data Berhasil Didelete!');
end;

end.
