object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 143
  ClientWidth = 470
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
    Top = 32
    Width = 46
    Height = 13
    Caption = 'N'#250'mero 1'
  end
  object Label2: TLabel
    Left = 200
    Top = 32
    Width = 46
    Height = 13
    Caption = 'N'#250'mero 2'
  end
  object lblResultado: TLabel
    Left = 380
    Top = 88
    Width = 58
    Height = 13
    Caption = 'lblResultado'
  end
  object edtNumero1: TEdit
    Left = 24
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtNumero2: TEdit
    Left = 200
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnCalcular: TButton
    Left = 336
    Top = 49
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btnCalcularClick
  end
end
