object Form3: TForm3
  Left = 665
  Top = 155
  Width = 456
  Height = 312
  Caption = 'Kategori'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 38
    Height = 15
    Caption = 'NAME'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 232
    Width = 116
    Height = 15
    Caption = 'MASUKKAN NAME'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 80
    Top = 16
    Width = 329
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 88
    Top = 48
    Width = 57
    Height = 25
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 48
    Width = 57
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 232
    Top = 48
    Width = 57
    Height = 25
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 80
    Width = 409
    Height = 145
    DataSource = DataModule1.Dskategori
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit2: TEdit
    Left = 144
    Top = 232
    Width = 281
    Height = 21
    TabOrder = 5
    OnChange = Edit2Change
  end
  object Button4: TButton
    Left = 376
    Top = 48
    Width = 49
    Height = 25
    Caption = 'REPORT'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 16
    Top = 48
    Width = 57
    Height = 25
    Caption = 'NEW'
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 304
    Top = 48
    Width = 57
    Height = 25
    Caption = 'CANCEL'
    TabOrder = 8
    OnClick = Button6Click
  end
end
