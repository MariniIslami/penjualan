object Form8: TForm8
  Left = 268
  Top = 166
  Width = 263
  Height = 234
  Caption = 'Report'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frxRKategori: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45476.570645833300000000
    ReportOptions.LastChange = 45476.578472164400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 32
    Datasets = <
      item
        DataSet = frxDbDsKategori
        DataSetName = 'frxDbDsKategori'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 291.023810000000000000
          Top = 15.118120000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'LAPORAN DATA KATEGORI')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 30.236240000000000000
        Top = 83.149660000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Left = 226.771800000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '              ID                                       NAMA')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 52.913420000000000000
        Top = 173.858380000000000000
        Width = 793.701300000000000000
        DataSet = frxDbDsKategori
        DataSetName = 'frxDbDsKategori'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 226.771800000000000000
          Top = 15.118120000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'id'
          DataSet = frxDbDsKategori
          DataSetName = 'frxDbDsKategori'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbDsKategori."id"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 381.732530000000000000
          Top = 15.118120000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DataField = 'name'
          DataSet = frxDbDsKategori
          DataSetName = 'frxDbDsKategori'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbDsKategori."name"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDbDsKategori: TfrxDBDataset
    UserName = 'frxDbDsKategori'
    CloseDataSource = False
    DataSet = DataModule1.Zkategori
    Left = 136
    Top = 32
  end
  object frxDBDsKustomer: TfrxDBDataset
    UserName = 'frxDBDsKustomer'
    CloseDataSource = False
    DataSet = DataModule1.Zkustomer
    Left = 136
    Top = 96
  end
  object frxRKustomer: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45483.755841250000000000
    ReportOptions.LastChange = 45483.765609849500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 96
    Datasets = <
      item
        DataSet = frxDBDsKustomer
        DataSetName = 'frxDBDsKustomer'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 190.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      object ReportTitle1: TfrxReportTitle
        Height = 34.015770000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 75.590600000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '       ID')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 90.708720000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '         NIK')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 185.196970000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '        NAMA')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 283.464750000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '     TELEPON')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 389.291590000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '           EMAIL')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 510.236550000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '     ALAMAT')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 604.724800000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '     MEMBER')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDsKustomer
        DataSetName = 'frxDBDsKustomer'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'id'
          DataSet = frxDBDsKustomer
          DataSetName = 'frxDBDsKustomer'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDsKustomer."id"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 90.708720000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'nik'
          DataSet = frxDBDsKustomer
          DataSetName = 'frxDBDsKustomer'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDsKustomer."nik"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 185.196970000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'name'
          DataSet = frxDBDsKustomer
          DataSetName = 'frxDBDsKustomer'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDsKustomer."name"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 283.464750000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'telp'
          DataSet = frxDBDsKustomer
          DataSetName = 'frxDBDsKustomer'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDsKustomer."telp"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 389.291590000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'email'
          DataSet = frxDBDsKustomer
          DataSetName = 'frxDBDsKustomer'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDsKustomer."email"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 510.236550000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDsKustomer
          DataSetName = 'frxDBDsKustomer'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDsKustomer."alamat"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 604.724800000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'member'
          DataSet = frxDBDsKustomer
          DataSetName = 'frxDBDsKustomer'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDsKustomer."member"]')
          ParentFont = False
        end
      end
      object Memo1: TfrxMemoView
        Left = 253.228510000000000000
        Top = 11.338590000000000000
        Width = 241.889920000000000000
        Height = 30.236240000000000000
        DisplayFormat.DecimalSeparator = ','
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8 = (
          'Laporan Data Kustomer')
        ParentFont = False
      end
    end
  end
end
