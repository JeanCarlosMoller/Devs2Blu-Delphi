object frmProdutos: TfrmProdutos
  Left = 0
  Top = 0
  Caption = 'frmProdutos'
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
    Left = 16
    Top = 56
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 16
    Top = 96
    Width = 46
    Height = 13
    Caption = 'Descricao'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 16
    Top = 136
    Width = 81
    Height = 13
    Caption = 'idUnidadeMedida'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 16
    Top = 179
    Width = 91
    Height = 13
    Caption = 'Unidade de Medida'
    FocusControl = DBEdit3
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 224
    Width = 457
    Height = 174
    DataSource = DataSource1
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idUnidadeMedida'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LookupUnidadeMedida'
        Width = 170
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 16
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 72
    Width = 100
    Height = 21
    DataField = 'Id'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 112
    Width = 200
    Height = 21
    DataField = 'Descricao'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 152
    Width = 200
    Height = 21
    DataField = 'idUnidadeMedida'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 16
    Top = 197
    Width = 200
    Height = 21
    DataField = 'idUnidadeMedida'
    DataSource = DataSource1
    KeyField = 'Id'
    ListField = 'Descricao'
    ListSource = DataSource2
    TabOrder = 5
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.produto'
    Left = 400
    Top = 280
    object FDTable1Id: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTable1Descricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 250
    end
    object FDTable1idUnidadeMedida: TLongWordField
      FieldName = 'idUnidadeMedida'
      Origin = 'idUnidadeMedida'
      Required = True
    end
    object FDTableLookupUnidadeMedida: TStringField
      FieldKind = fkLookup
      FieldName = 'LookupUnidadeMedida'
      LookupDataSet = FDTableLookup
      LookupKeyFields = 'Id'
      LookupResultField = 'Descricao'
      KeyFields = 'idUnidadeMedida'
      Size = 100
      Lookup = True
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 400
    Top = 336
  end
  object FDTableLookup: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'unidademedida'
    Left = 416
    Top = 40
    object FDTableLookupId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTableLookupDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 100
    end
  end
  object DataSource2: TDataSource
    DataSet = FDTableLookup
    Left = 416
    Top = 104
  end
end
