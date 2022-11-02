object frmPedidos: TfrmPedidos
  Left = 0
  Top = 0
  Caption = 'Pedidos'
  ClientHeight = 494
  ClientWidth = 623
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
    Left = 80
    Top = 56
    Width = 37
    Height = 13
    Caption = 'Numero'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 228
    Top = 56
    Width = 55
    Height = 13
    Caption = 'DataPedido'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 16
    Top = 101
    Width = 53
    Height = 13
    Caption = 'Comprador'
    FocusControl = DBEdit2
  end
  object Label5: TLabel
    Left = 16
    Top = 149
    Width = 55
    Height = 13
    Caption = 'Fornecedor'
    FocusControl = DBEdit2
  end
  object Label6: TLabel
    Left = 134
    Top = 224
    Width = 80
    Height = 13
    Caption = 'Itens de Pedidos'
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 16
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 72
    Width = 50
    Height = 21
    DataField = 'Id'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 80
    Top = 72
    Width = 134
    Height = 21
    DataField = 'Numero'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 228
    Top = 72
    Width = 134
    Height = 21
    DataField = 'DataPedido'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBLookupComboBoxComprador: TDBLookupComboBox
    Left = 16
    Top = 120
    Width = 346
    Height = 21
    DataField = 'idComprador'
    DataSource = DataSource1
    KeyField = 'Id'
    ListField = 'Nome'
    ListSource = DS_Comprador
    TabOrder = 4
  end
  object DBLookupComboBoxFornecedor: TDBLookupComboBox
    Left = 16
    Top = 168
    Width = 346
    Height = 21
    DataField = 'idFornecedor'
    DataSource = DataSource1
    KeyField = 'Id'
    ListField = 'Nome'
    ListSource = DS_Fornecedor
    TabOrder = 5
  end
  object DBNavigator2: TDBNavigator
    Left = 352
    Top = 253
    Width = 25
    Height = 225
    DataSource = DataSource2
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Kind = dbnVertical
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 253
    Width = 330
    Height = 225
    DataSource = DataSource2
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idProduto'
        Title.Caption = 'Id Produto'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LookupProduto'
        Title.Caption = 'Descri'#231#227'o Produto'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Width = 100
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 544
    Top = 88
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.pedidocompra'
    Left = 544
    Top = 32
    object FDTable1Id: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTable1Numero: TLongWordField
      FieldName = 'Numero'
      Origin = 'Numero'
      Required = True
    end
    object FDTable1DataPedido: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataPedido'
      Origin = 'DataPedido'
    end
    object FDTable1idComprador: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idComprador'
      Origin = 'idComprador'
    end
    object FDTable1idFornecedor: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idFornecedor'
      Origin = 'idFornecedor'
    end
  end
  object FDTableComprador: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.comprador'
    Left = 544
    Top = 168
  end
  object DS_Comprador: TDataSource
    DataSet = FDTableComprador
    Left = 544
    Top = 224
  end
  object DS_Fornecedor: TDataSource
    DataSet = FDTableFornecedor
    Left = 544
    Top = 360
  end
  object FDTableFornecedor: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.fornecedor'
    Left = 544
    Top = 304
  end
  object DataSource2: TDataSource
    DataSet = FDTable2
    Left = 408
    Top = 384
  end
  object FDTable2: TFDTable
    BeforePost = FDTable2BeforePost
    IndexFieldNames = 'Id'
    MasterSource = DataSource1
    MasterFields = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.itemcompra'
    Left = 464
    Top = 360
    object FDTable2Id: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTable2Quantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      Required = True
    end
    object FDTable2idPedidoCompra: TLongWordField
      FieldName = 'idPedidoCompra'
      Origin = 'idPedidoCompra'
      Required = True
    end
    object FDTable2idProduto: TLongWordField
      FieldName = 'idProduto'
      Origin = 'idProduto'
      Required = True
    end
    object FDTable2LookupProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'LookupProduto'
      LookupDataSet = FDTable3
      LookupKeyFields = 'Id'
      LookupResultField = 'Descricao'
      KeyFields = 'idProduto'
      Size = 250
      Lookup = True
    end
  end
  object FDTable3: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.produto'
    Left = 464
    Top = 416
    object FDTable3Id: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTable3Descricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 250
    end
    object FDTable3idUnidadeMedida: TLongWordField
      FieldName = 'idUnidadeMedida'
      Origin = 'idUnidadeMedida'
      Required = True
    end
  end
end
