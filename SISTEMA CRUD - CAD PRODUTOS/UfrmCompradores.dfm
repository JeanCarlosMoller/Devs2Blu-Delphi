object frmCompradores: TfrmCompradores
  Left = 0
  Top = 0
  Caption = 'Compradores'
  ClientHeight = 406
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 64
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 104
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 144
    Width = 29
    Height = 13
    Caption = 'Cargo'
    FocusControl = DBEdit3
  end
  object DBGrid1: TDBGrid
    Left = 22
    Top = 224
    Width = 457
    Height = 174
    DataSource = DataSource2
    Enabled = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cargo'
        Width = 200
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 80
    Width = 100
    Height = 21
    DataField = 'Id'
    DataSource = DataSource2
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 117
    Width = 200
    Height = 21
    DataField = 'Nome'
    DataSource = DataSource2
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 160
    Width = 200
    Height = 21
    DataField = 'Cargo'
    DataSource = DataSource2
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 24
    Width = 240
    Height = 25
    DataSource = DataSource2
    TabOrder = 4
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.comprador'
    Left = 352
    Top = 80
    object FDTable1Id: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTable1Nome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 250
    end
    object FDTable1Cargo: TStringField
      FieldName = 'Cargo'
      Origin = 'Cargo'
      Required = True
      Size = 50
    end
  end
  object DataSource2: TDataSource
    DataSet = FDTable1
    Left = 352
    Top = 144
  end
end
