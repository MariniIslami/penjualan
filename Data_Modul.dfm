object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 188
  Top = 165
  Height = 294
  Width = 468
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
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from suplier')
    Params = <>
    Left = 136
    Top = 184
  end
  object Zkustomer: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kustomer')
    Params = <>
    Left = 304
    Top = 48
  end
  object Dssuplier: TDataSource
    DataSet = Zsuplier
    Left = 224
    Top = 184
  end
  object Dskustomer: TDataSource
    DataSet = Zkustomer
    Left = 376
    Top = 48
  end
  object Zuser: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 304
    Top = 120
  end
  object Zbarang: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select*from barang')
    Params = <>
    Left = 304
    Top = 184
  end
  object Dsuser: TDataSource
    DataSet = Zuser
    Left = 376
    Top = 120
  end
  object Dsbarang: TDataSource
    DataSet = Zbarang
    Left = 376
    Top = 184
  end
end
