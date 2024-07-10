object Form2: TForm2
  Left = 587
  Top = 304
  Width = 347
  Height = 140
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
    Left = 24
    Top = 16
    Width = 54
    Height = 13
    Caption = 'USERNAME'
  end
  object Edit1: TEdit
    Left = 96
    Top = 16
    Width = 209
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 96
    Top = 56
    Width = 105
    Height = 25
    Caption = 'LOGIN'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 208
    Top = 56
    Width = 97
    Height = 25
    Caption = 'CLOSE'
    TabOrder = 2
    OnClick = Button2Click
  end
end
