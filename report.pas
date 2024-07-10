unit report;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet;

type
  TForm8 = class(TForm)
    frxRKategori: TfrxReport;
    frxDbDsKategori: TfrxDBDataset;
    frxDBDsKustomer: TfrxDBDataset;
    frxRKustomer: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses
  Data_Modul;

{$R *.dfm}

end.
