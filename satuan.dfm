object Form4: TForm4
  Left = 488
  Top = 196
  Width = 489
  Height = 334
  Caption = 'satuan'
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
    Left = 40
    Top = 16
    Width = 41
    Height = 15
    Caption = 'NAMA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 48
    Width = 59
    Height = 15
    Caption = 'DISKRIPSI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 248
    Width = 119
    Height = 15
    Caption = 'MASUKKAN NAMA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 120
    Top = 16
    Width = 313
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 120
    Top = 48
    Width = 313
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 120
    Top = 80
    Width = 73
    Height = 25
    Caption = 'INSERT'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 80
    Width = 73
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 280
    Top = 80
    Width = 73
    Height = 25
    Caption = 'DELETE'
    TabOrder = 4
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 112
    Width = 393
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
    Left = 176
    Top = 248
    Width = 257
    Height = 21
    TabOrder = 6
    OnChange = Edit3Change
  end
  object Button5: TButton
    Left = 40
    Top = 80
    Width = 73
    Height = 25
    Caption = 'NEW'
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 360
    Top = 80
    Width = 75
    Height = 25
    Caption = 'CANCEL'
    TabOrder = 8
    OnClick = Button6Click
  end
end
