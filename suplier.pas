unit suplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label10: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    Edit10: TEdit;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure Button4Click(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    function editFull: Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  a: string;

implementation

uses
  Data_Modul;

{$R *.dfm}

procedure TForm5.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text := DataModule1.Zsuplier.Fields[1].AsString;
Edit2.Text := DataModule1.Zsuplier.Fields[2].AsString;
Edit3.Text := DataModule1.Zsuplier.Fields[3].AsString;
Edit4.Text := DataModule1.Zsuplier.Fields[4].AsString;
Edit5.Text := DataModule1.Zsuplier.Fields[5].AsString;
Edit6.Text := DataModule1.Zsuplier.Fields[6].AsString;
Edit7.Text := DataModule1.Zsuplier.Fields[7].AsString;
Edit8.Text := DataModule1.Zsuplier.Fields[8].AsString;
Edit9.Text := DataModule1.Zsuplier.Fields[9].AsString;
a := DataModule1.Zsuplier.Fields[0].AsString;

Edit1.Enabled := True;
Edit2.Enabled := True;
Edit3.Enabled := True;
Edit4.Enabled := True;
Edit5.Enabled := True;
Edit6.Enabled := True;
Edit7.Enabled := True;
Edit8.Enabled := True;
Edit9.Enabled := True;
Button2.Enabled := True;
Button3.Enabled := True;
Button6.Enabled := True;
Button1.Enabled := False;
Button5.Enabled := False;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
if not editFull then
  begin
    ShowMessage('Data Tidak Boleh Kosong!');
  end else
    if DataModule1.Zsuplier.Locate('nik', Edit1.Text,[]) or
      DataModule1.Zsuplier.Locate('name', Edit2.Text,[]) or
      DataModule1.Zsuplier.Locate('telp', Edit3.Text,[]) or
      DataModule1.Zsuplier.Locate('email', Edit4.Text,[]) or
      DataModule1.Zsuplier.Locate('alamat', Edit5.Text,[]) or
      DataModule1.Zsuplier.Locate('perusahaan', Edit6.Text,[]) or
      DataModule1.Zsuplier.Locate('nama_bank', Edit7.Text,[]) or
      DataModule1.Zsuplier.Locate('nama_akun_bank', Edit8.Text,[]) or
      DataModule1.Zsuplier.Locate('no_akun_bank', Edit9.Text,[]) then
    begin
      ShowMessage('Data Sudah Ada Dalam Sistem!');
    end else

   begin // insert
   with DataModule1.Zsuplier do
   begin
      SQL.Clear;
      SQL.Add('insert into suplier values(null,"'+Edit1.Text+'", "'+Edit2.Text+'", "'+Edit3.Text+'", "'+Edit4.Text+'", "'+Edit5.Text+'", "'+Edit6.Text+'", "'+Edit7.Text+'", "'+Edit8.Text+'", "'+Edit9.Text+'")');
      ExecSQL;

      SQL.Clear;
      SQL.Add('select * from suplier');
      Open;
   end;
   ShowMessage('Data Berhasil Disimpan');
   end;
   posisiawal;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
begin
if not editFull then
  begin
    ShowMessage('Data Tidak Boleh Kosong!');
  end else
    if(DataModule1.Zsuplier.Fields[1].AsString = Edit1.Text) and
      (DataModule1.Zsuplier.Fields[2].AsString = Edit2.Text) and
      (DataModule1.Zsuplier.Fields[3].AsString = Edit3.Text) and
      (DataModule1.Zsuplier.Fields[4].AsString = Edit4.Text) and
      (DataModule1.Zsuplier.Fields[5].AsString = Edit5.Text) and
      (DataModule1.Zsuplier.Fields[6].AsString = Edit6.Text) and
      (DataModule1.Zsuplier.Fields[7].AsString = Edit7.Text) and
      (DataModule1.Zsuplier.Fields[8].AsString = Edit8.Text) and
      (DataModule1.Zsuplier.Fields[9].AsString = Edit9.Text) then
    begin
      ShowMessage('Data Sudah Ada Dalam Sistem!');
    end else
   begin //update
   with DataModule1.Zsuplier do
   begin
      SQL.Clear;
      if Edit1.Text <> '' then
      SQL.Add('update suplier set nik= "'+Edit1.text+'" where id= "'+a+'"');
      ExecSQL;

      SQL.Clear;
      if Edit2.Text <> '' then
      SQL.Add('update suplier set name= "'+Edit2.text+'" where id= "'+a+'"');
      ExecSQL;

      SQL.Clear;
      if Edit3.Text <> '' then
      SQL.Add('update suplier set telp= "'+Edit3.text+'" where id= "'+a+'"');
      ExecSQL;

      SQL.Clear;
      if Edit4.Text <> '' then
      SQL.Add('update suplier set email= "'+Edit4.text+'" where id= "'+a+'"');
      ExecSQL;

      SQL.Clear;
      if Edit5.Text <> '' then
      SQL.Add('update suplier set alamat= "'+Edit5.text+'" where id= "'+a+'"');
      ExecSQL;

      SQL.Clear;
      if Edit6.Text <> '' then
      SQL.Add('update suplier set perusahaan= "'+Edit6.text+'" where id= "'+a+'"');
      ExecSQL;

      SQL.Clear;
      if Edit7.Text <> '' then
      SQL.Add('update suplier set nama_bank= "'+Edit7.text+'" where id= "'+a+'"');
      ExecSQL;

      SQL.Clear;
      if Edit8.Text <> '' then
      SQL.Add('update suplier set nama_akun_bank= "'+Edit8.text+'" where id= "'+a+'"');
      ExecSQL;

      SQL.Clear;
      if Edit9.Text <> '' then
      SQL.Add('update suplier set no_akun_bank= "'+Edit9.text+'" where id= "'+a+'"');
      ExecSQL;

      SQL.Clear;
      SQL.Add('select * from suplier');
      Open;
   end;
   ShowMessage('Data Berhasil Diupdate');
   end;
   posisiawal;
end;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
  if MessageDlg('Apakah Anda Yakin Menghapus Data ini',mtWarning,[mbYes,mbNo],0)=mryes then
  begin
  with DataModule1.Zsuplier do
  begin
    SQL.Clear;
    SQL.Add('delete from suplier where id= "'+a+'"');
    ExecSQL;

    SQL.Clear;
    SQL.Add('select * from suplier');
    Open;
  end;
  ShowMessage('Data Berhasil Didelete!');
  end else
  begin
  ShowMessage('Data Berhasil Dihapus!');
  end;
  posisiawal;
end;

procedure TForm5.posisiawal;
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
  Edit6.Enabled := False;
  Edit7.Enabled := False;
  Edit8.Enabled := False;
  Edit9.Enabled := False;
end;

procedure TForm5.bersih;
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
Edit8.Clear;
Edit9.Clear;
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
with DataModule1.Zsuplier do
  begin
    SQL.Clear;
    SQL.Add('select*from suplier where name = "'+Edit1.Text+'", "'+Edit2.Text+'", "'+Edit3.Text+'", "'+Edit4.Text+'","'+Edit5.Text+'", "'+Edit6.Text+'", "'+Edit7.Text+'","'+Edit8.Text+'","'+Edit9.Text+'"');
    Open;
  end;
end;

procedure TForm5.Edit10Change(Sender: TObject);
begin
with DataModule1.Zsuplier do
  begin
    SQL.Clear;
    SQL.Add('select * from  suplier where name like "%'+Edit10.Text+'%"');
    Open;
  end;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.Button5Click(Sender: TObject);
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
Edit6.Enabled := True;
Edit7.Enabled := True;
Edit8.Enabled := True;
Edit9.Enabled := True;
end;

procedure TForm5.Button6Click(Sender: TObject);
begin
bersih;
posisiawal;
end;

function TForm5.editFull: Boolean;
begin
Result := (Edit1.Text <> '') and
          (Edit2.Text <> '') and
          (Edit3.Text <> '') and
          (Edit4.Text <> '') and
          (Edit5.Text <> '') and
          (Edit6.Text <> '') and
          (Edit7.Text <> '') and
          (Edit8.Text <> '') and
          (Edit9.Text <> '');

end;

end.
