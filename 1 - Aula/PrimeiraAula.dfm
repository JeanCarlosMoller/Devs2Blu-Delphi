object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Primeira Aula '
  ClientHeight = 147
  ClientWidth = 337
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lb_principal: TLabel
    Left = 104
    Top = 32
    Width = 125
    Height = 30
    Caption = 'Meu Som '#201
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btn_cachorro: TButton
    Left = 128
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Cachorro'
    TabOrder = 0
    OnClick = btn_cachorroClick
  end
end
