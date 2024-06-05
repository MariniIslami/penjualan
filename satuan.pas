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
    Button4: TButton;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
DataModule1.Zsatuan.SQL.Clear;
DataModule1.Zsatuan.SQL.Add('insert into satuan values(null,"'+Edit1.Text+'", "'+Edit2.Text+'")');
DataModule1.Zsatuan.ExecSQL;

DataModule1.Zsatuan.SQL.Clear;
DataModule1.Zsatuan.SQL.Add('select * from satuan');
DataModule1.Zsatuan.Open;
ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
DataModule1.Zsatuan.SQL.Clear;
if Edit1.Text <> '' then
DataModule1.Zsatuan.SQL.Add('update satuan set name= "'+Edit1.text+'" where id= "'+a+'"');
DataModule1.Zsatuan.ExecSQL;

DataModule1.Zsatuan.SQL.Clear;
if Edit2.Text <> '' then
DataModule1.Zsatuan.SQL.Add('update satuan set diskripsi= "'+Edit2.text+'" where id= "'+a+'"');
DataModule1.Zsatuan.ExecSQL;

DataModule1.Zsatuan.SQL.Clear;
DataModule1.Zsatuan.SQL.Add('select * from satuan');
DataModule1.Zsatuan.Open;
ShowMessage('Data Berhasil Diupdate!');
end;

end.
