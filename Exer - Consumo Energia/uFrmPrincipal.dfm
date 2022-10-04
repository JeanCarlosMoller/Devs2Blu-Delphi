object FMoller: TFMoller
  Left = 0
  Top = 0
  Caption = 'FMoller'
  ClientHeight = 371
  ClientWidth = 369
  Color = clGrayText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 224
    Top = 48
    Width = 44
    Height = 13
    Caption = 'Consumo'
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lb_titulo: TLabel
    Left = 88
    Top = 8
    Width = 205
    Height = 23
    Caption = 'Calculo Consumo En'#233'gia'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 319
    Top = 94
    Width = 26
    Height = 13
    Caption = 'KW/h'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 56
    Top = 256
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 224
    Top = 112
    Width = 45
    Height = 13
    Caption = 'Desconto'
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label5: TLabel
    Left = 332
    Top = 158
    Width = 13
    Height = 13
    Caption = 'R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object rdg_opcaoSelecao: TRadioGroup
    Left = 8
    Top = 48
    Width = 201
    Height = 113
    Caption = 'Selecione'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'Resid'#234'ncia. R$: 0,60 KW/h'
      'Com'#233'rcio.   R$: 0,48 KW/h'
      'Ind'#250'stria.   R$: 1,29 KW/h'
      'Fazenda.    R$ 2,18 KW/h')
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
  end
  object edt_consumoUsuario: TEdit
    Left = 224
    Top = 67
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btn_calculo: TButton
    Left = 272
    Top = 184
    Width = 73
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btn_calculoClick
  end
  object mm_listaConsumo: TMemo
    Left = 8
    Top = 228
    Width = 353
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 3
  end
  object btn_limpar: TButton
    Left = 8
    Top = 323
    Width = 73
    Height = 25
    Caption = 'Limpar'
    TabOrder = 4
    OnClick = btn_limparClick
  end
  object edt_descontoUsuario: TEdit
    Left = 224
    Top = 131
    Width = 121
    Height = 21
    TabOrder = 5
  end
end
