object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 256
  ClientWidth = 418
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
    Top = 37
    Width = 67
    Height = 13
    Caption = 'Digite o Texto'
  end
  object Label2: TLabel
    Left = 40
    Top = 141
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
  end
  object Label3: TLabel
    Left = 256
    Top = 141
    Width = 28
    Height = 13
    Caption = 'Texto'
  end
  object edtTexto: TEdit
    Left = 40
    Top = 56
    Width = 337
    Height = 21
    TabOrder = 0
  end
  object btnMaisculas: TButton
    Left = 40
    Top = 96
    Width = 97
    Height = 25
    Caption = 'Maiusculas'
    TabOrder = 1
    OnClick = btnMaisculasClick
  end
  object btnMinusculas: TButton
    Left = 280
    Top = 96
    Width = 97
    Height = 25
    Caption = 'Minusculas'
    TabOrder = 2
    OnClick = btnMinusculasClick
  end
  object edtNumero: TSpinEdit
    Left = 40
    Top = 160
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
  object edtTextoConvertido: TEdit
    Left = 256
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object btnConverter: TButton
    Left = 176
    Top = 200
    Width = 75
    Height = 33
    Caption = 'Converter'
    TabOrder = 5
    OnClick = btnConverterClick
  end
end
