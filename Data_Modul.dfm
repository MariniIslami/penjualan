object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 177
  Top = 119
  Height = 366
  Width = 314
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\VISUAL2\library_location\libmysql32.dll'
    Left = 40
    Top = 48
  end
  object Zkategori: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from kategori ')
    Params = <>
    Left = 136
    Top = 48
  end
  object Dskategori: TDataSource
    DataSet = Zkategori
    Left = 224
    Top = 48
  end
  object Zsatuan: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 136
    Top = 120
  end
  object Dssatuan: TDataSource
    DataSet = Zsatuan
    Left = 224
    Top = 120
  end
  object Zsuplier: TZQuery
    Params = <>
    Left = 136
    Top = 184
  end
  object Zkustomer: TZQuery
    Params = <>
    Left = 136
    Top = 256
  end
  object Dssuplier: TDataSource
    Left = 224
    Top = 184
  end
  object Dskustomer: TDataSource
    Left = 224
    Top = 256
  end
end
