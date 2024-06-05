object Form4: TForm4
  Left = 766
  Top = 263
  Width = 456
  Height = 334
  Caption = 'satuan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 16
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object Label2: TLabel
    Left = 40
    Top = 48
    Width = 50
    Height = 13
    Caption = 'DISKRIPSI'
  end
  object Label3: TLabel
    Left = 40
    Top = 248
    Width = 86
    Height = 13
    Caption = 'MASUKKAN NAMA'
  end
  object Edit1: TEdit
    Left = 120
    Top = 16
    Width = 289
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 120
    Top = 48
    Width = 289
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 120
    Top = 80
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 224
    Top = 80
    Width = 83
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 336
    Top = 80
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 112
    Width = 369
    Height = 120
    DataSource = DataModule1.Dssatuan
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit3: TEdit
    Left = 136
    Top = 248
    Width = 185
    Height = 21
    TabOrder = 6
    Text = 'Edit3'
  end
  object Button4: TButton
    Left = 336
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Cari'
    TabOrder = 7
  end
end
