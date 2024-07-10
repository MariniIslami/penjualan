program Penjualan;

uses
  Forms,
  Menu in 'Menu.pas' {Form1},
  Login in 'Login.pas' {Form2},
  Kategori in 'Kategori.pas' {Form3},
  Data_Modul in 'Data_Modul.pas' {DataModule1: TDataModule},
  satuan in 'satuan.pas' {Form4},
  suplier in 'suplier.pas' {Form5},
  kustomer in 'kustomer.pas' {Form6},
  user in 'user.pas' {Form7},
  report in 'report.pas' {Form8};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
