object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 421
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbNomeAluno: TLabel
    Left = 32
    Top = 24
    Width = 76
    Height = 13
    Caption = 'Nome do Aluno:'
  end
  object lbnPrimeiraNota: TLabel
    Left = 32
    Top = 85
    Width = 41
    Height = 13
    Caption = '1'#170' Nota:'
  end
  object lbnSegundaNota: TLabel
    Left = 169
    Top = 85
    Width = 37
    Height = 13
    Caption = '2'#170' Nota'
  end
  object edtNome: TEdit
    Left = 32
    Top = 43
    Width = 433
    Height = 21
    TabOrder = 0
  end
  object btnGravar: TButton
    Left = 309
    Top = 100
    Width = 75
    Height = 25
    Caption = 'Gravar Aluno'
    TabOrder = 1
    OnClick = btnGravarClick
  end
  object btnLer: TButton
    Left = 390
    Top = 100
    Width = 75
    Height = 25
    Caption = 'Ler Aluno'
    TabOrder = 2
    OnClick = btnLerClick
  end
  object mmDiario: TMemo
    Left = 32
    Top = 131
    Width = 433
    Height = 262
    TabOrder = 3
  end
  object edtPrimeiraNota: TEdit
    Left = 32
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edtSegundaNota: TEdit
    Left = 169
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 5
  end
end
