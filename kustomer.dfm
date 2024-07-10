object Form6: TForm6
  Left = 622
  Top = 173
  Width = 505
  Height = 457
  Caption = 'kustomer'
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
    Left = 32
    Top = 16
    Width = 20
    Height = 14
    Caption = 'NIK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 48
    Width = 34
    Height = 14
    Caption = 'NAMA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 80
    Width = 29
    Height = 14
    Caption = 'TELP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 112
    Width = 36
    Height = 14
    Caption = 'EMAIL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 32
    Top = 144
    Width = 48
    Height = 14
    Caption = 'ALAMAT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 32
    Top = 384
    Width = 100
    Height = 14
    Caption = 'MASUKKAN NAMA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 32
    Top = 176
    Width = 48
    Height = 14
    Caption = 'MEMBER'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 248
    Top = 176
    Width = 47
    Height = 14
    Caption = 'DISKON :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 248
    Width = 425
    Height = 120
    DataSource = DataModule1.Dskustomer
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit1: TEdit
    Left = 88
    Top = 16
    Width = 369
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 88
    Top = 48
    Width = 369
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 88
    Top = 80
    Width = 369
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 88
    Top = 112
    Width = 369
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 88
    Top = 144
    Width = 369
    Height = 21
    TabOrder = 5
  end
  object Edit6: TEdit
    Left = 144
    Top = 384
    Width = 313
    Height = 21
    TabOrder = 6
    OnChange = Edit6Change
  end
  object Button1: TButton
    Left = 104
    Top = 208
    Width = 57
    Height = 25
    Caption = 'INSERT'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 208
    Width = 65
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 256
    Top = 208
    Width = 57
    Height = 25
    Caption = 'DELETE'
    TabOrder = 9
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 400
    Top = 208
    Width = 57
    Height = 25
    Caption = 'REPORT'
    TabOrder = 10
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 32
    Top = 208
    Width = 57
    Height = 25
    Caption = 'NEW'
    TabOrder = 11
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 328
    Top = 208
    Width = 59
    Height = 25
    Caption = 'CANCEL'
    TabOrder = 12
    OnClick = Button6Click
  end
  object ComboBox1: TComboBox
    Left = 88
    Top = 176
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 13
    OnChange = ComboBox1Change
    OnDropDown = ComboBox1DropDown
  end
end
