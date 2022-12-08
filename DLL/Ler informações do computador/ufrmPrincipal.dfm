object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 408
  ClientWidth = 453
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
    Top = 21
    Width = 104
    Height = 13
    Caption = 'Nome do Computador'
  end
  object Label2: TLabel
    Left = 24
    Top = 77
    Width = 80
    Height = 13
    Caption = 'Nome do usu'#225'rio'
  end
  object Label3: TLabel
    Left = 24
    Top = 136
    Width = 96
    Height = 13
    Caption = 'Diret'#243'rio do Sistema'
  end
  object Label4: TLabel
    Left = 24
    Top = 192
    Width = 102
    Height = 13
    Caption = 'Diret'#243'rio do Windows'
  end
  object Label5: TLabel
    Left = 24
    Top = 248
    Width = 84
    Height = 13
    Caption = 'Pasta Tempor'#225'ria'
  end
  object Label6: TLabel
    Left = 24
    Top = 304
    Width = 94
    Height = 13
    Caption = 'Vers'#227'o do Windows'
  end
  object edtNomePC: TEdit
    Left = 24
    Top = 40
    Width = 409
    Height = 21
    TabOrder = 0
  end
  object edtNomeUser: TEdit
    Left = 24
    Top = 96
    Width = 409
    Height = 21
    TabOrder = 1
  end
  object edtDirSistema: TEdit
    Left = 24
    Top = 155
    Width = 409
    Height = 21
    TabOrder = 2
  end
  object edtDirWindows: TEdit
    Left = 24
    Top = 211
    Width = 409
    Height = 21
    TabOrder = 3
  end
  object edtDirTemp: TEdit
    Left = 24
    Top = 267
    Width = 409
    Height = 21
    TabOrder = 4
  end
  object edtVersaoWindows: TEdit
    Left = 24
    Top = 323
    Width = 409
    Height = 21
    TabOrder = 5
  end
  object btnInformacoes: TButton
    Left = 184
    Top = 366
    Width = 75
    Height = 25
    Caption = 'Informa'#231#245'es'
    TabOrder = 6
    OnClick = btnInformacoesClick
  end
end
