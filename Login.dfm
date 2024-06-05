object Form2: TForm2
  Left = 552
  Top = 205
  Width = 418
  Height = 206
  Caption = 'Login'
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
    Left = 136
    Top = 16
    Width = 54
    Height = 13
    Caption = 'USERNAME'
  end
  object Label2: TLabel
    Left = 136
    Top = 48
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
  end
  object Edit1: TEdit
    Left = 200
    Top = 16
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 136
    Top = 104
    Width = 113
    Height = 25
    Caption = 'LOGIN'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 104
    Width = 107
    Height = 25
    Caption = 'CLOSE'
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 200
    Top = 48
    Width = 169
    Height = 21
    TabOrder = 3
  end
end
