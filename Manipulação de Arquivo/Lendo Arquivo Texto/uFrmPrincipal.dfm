object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 465
  ClientWidth = 432
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
    Left = 48
    Top = 16
    Width = 135
    Height = 13
    Caption = 'Informe o nome do Arquivo:'
  end
  object edtArquivo: TEdit
    Left = 48
    Top = 40
    Width = 337
    Height = 21
    TabOrder = 0
  end
  object mmArquivo: TMemo
    Left = 48
    Top = 98
    Width = 337
    Height = 342
    TabOrder = 1
  end
  object btnLeitura: TButton
    Left = 48
    Top = 67
    Width = 75
    Height = 25
    Caption = 'Ler Arquivo'
    TabOrder = 2
    OnClick = btnLeituraClick
  end
end
