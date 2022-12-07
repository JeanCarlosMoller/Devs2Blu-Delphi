object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 150
  ClientWidth = 203
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
    Left = 42
    Top = 48
    Width = 121
    Height = 13
    Alignment = taCenter
    Caption = 'Informe um n'#250'mero:'
  end
  object edtNumero: TEdit
    Left = 42
    Top = 67
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object bntTabuada: TButton
    Left = 65
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Tabuada'
    TabOrder = 1
    OnClick = bntTabuadaClick
  end
end
