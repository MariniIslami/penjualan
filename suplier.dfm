object Form5: TForm5
  Left = 138
  Top = 132
  Width = 457
  Height = 493
  Caption = 'suplier'
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
    Top = 40
    Width = 33
    Height = 14
    Caption = 'NAME'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 64
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
    Top = 88
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
    Top = 112
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
    Top = 136
    Width = 74
    Height = 14
    Caption = 'PERUSAHAAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 32
    Top = 160
    Width = 67
    Height = 14
    Caption = 'NAMA BANK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 32
    Top = 184
    Width = 66
    Height = 14
    Caption = 'AKUN BANK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 32
    Top = 208
    Width = 84
    Height = 14
    Caption = 'NO AKUN BANK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 32
    Top = 416
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
  object Edit1: TEdit
    Left = 120
    Top = 16
    Width = 289
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 120
    Top = 40
    Width = 289
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 120
    Top = 64
    Width = 289
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 120
    Top = 88
    Width = 289
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 120
    Top = 112
    Width = 289
    Height = 21
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 120
    Top = 136
    Width = 289
    Height = 21
    TabOrder = 5
  end
  object Edit7: TEdit
    Left = 120
    Top = 160
    Width = 289
    Height = 21
    TabOrder = 6
  end
  object Edit8: TEdit
    Left = 120
    Top = 184
    Width = 289
    Height = 21
    TabOrder = 7
  end
  object Edit9: TEdit
    Left = 120
    Top = 208
    Width = 289
    Height = 21
    TabOrder = 8
  end
  object Button1: TButton
    Left = 120
    Top = 240
    Width = 57
    Height = 25
    Caption = 'INSERT'
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 192
    Top = 240
    Width = 65
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 10
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 272
    Top = 240
    Width = 57
    Height = 25
    Caption = 'DELETE'
    TabOrder = 11
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 272
    Width = 377
    Height = 137
    DataSource = DataModule1.Dssuplier
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit10: TEdit
    Left = 152
    Top = 416
    Width = 169
    Height = 21
    TabOrder = 13
    OnChange = Edit10Change
  end
  object Button4: TButton
    Left = 336
    Top = 416
    Width = 65
    Height = 25
    Caption = 'CARI'
    TabOrder = 14
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 32
    Top = 240
    Width = 65
    Height = 25
    Caption = 'NEW'
    TabOrder = 15
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 352
    Top = 240
    Width = 59
    Height = 25
    Caption = 'CANCEL'
    TabOrder = 16
    OnClick = Button6Click
  end
end
