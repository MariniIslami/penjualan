unit Data_Modul;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TDataModule1 = class(TDataModule)
    ZConnection1: TZConnection;
    Zkategori: TZQuery;
    Dskategori: TDataSource;
    Zsatuan: TZQuery;
    Dssatuan: TDataSource;
    Zsuplier: TZQuery;
    Zkustomer: TZQuery;
    Dssuplier: TDataSource;
    Dskustomer: TDataSource;
    Zuser: TZQuery;
    Zbarang: TZQuery;
    Dsuser: TDataSource;
    Dsbarang: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

uses
  Kategori, satuan, report;

{$R *.dfm}

end.
