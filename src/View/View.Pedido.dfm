object frmPedido: TfrmPedido
  Left = 0
  Top = 0
  Caption = 'Teste do Dileno - Tela de Pedidos'
  ClientHeight = 492
  ClientWidth = 654
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object GroupBoxCliente: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 648
    Height = 46
    Align = alTop
    Caption = 'Cliente'
    TabOrder = 0
    ExplicitWidth = 630
    object btnPesquisarCliente: TSpeedButton
      AlignWithMargins = True
      Left = 538
      Top = 20
      Width = 105
      Height = 21
      Align = alRight
      Caption = 'Pesquisar'
      OnClick = btnPesquisarClienteClick
      ExplicitLeft = 480
      ExplicitTop = 24
      ExplicitHeight = 22
    end
    object edtCodigoCliente: TEdit
      AlignWithMargins = True
      Left = 5
      Top = 20
      Width = 65
      Height = 21
      Align = alLeft
      TabOrder = 0
      OnExit = edtCodigoClienteExit
      OnKeyPress = edtCodigoClienteKeyPress
      ExplicitHeight = 23
    end
    object edtNomeCliente: TEdit
      AlignWithMargins = True
      Left = 76
      Top = 20
      Width = 456
      Height = 21
      Align = alClient
      Color = clBtnFace
      Enabled = False
      TabOrder = 1
      ExplicitWidth = 438
      ExplicitHeight = 23
    end
  end
  object GroupBoxProduto: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 55
    Width = 648
    Height = 66
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 630
    object lbProduto: TLabel
      Left = 9
      Top = 7
      Width = 46
      Height = 15
      Caption = 'Produto:'
    end
    object lbQuantidade: TLabel
      Left = 368
      Top = 7
      Width = 62
      Height = 15
      Caption = 'Quantidade'
    end
    object lbVlrUnitario: TLabel
      Left = 436
      Top = 7
      Width = 71
      Height = 15
      Caption = 'Valor Unit'#225'rio'
    end
    object btnAdicionarItem: TSpeedButton
      Left = 522
      Top = 28
      Width = 105
      Height = 21
      Caption = 'Adicionar'
      OnClick = btnAdicionarItemClick
    end
    object edtCodigoProduto: TEdit
      Left = 5
      Top = 28
      Width = 65
      Height = 23
      TabOrder = 0
      OnExit = edtCodigoProdutoExit
      OnKeyPress = edtCodigoProdutoKeyPress
    end
    object edtDescricaoProduto: TEdit
      Left = 76
      Top = 28
      Width = 286
      Height = 23
      Color = clBtnFace
      Enabled = False
      TabOrder = 1
    end
    object edtQuantidade: TEdit
      Left = 368
      Top = 28
      Width = 65
      Height = 23
      TabOrder = 2
      OnKeyPress = edtQuantidadeKeyPress
    end
    object edtValorUnitario: TEdit
      Left = 436
      Top = 28
      Width = 74
      Height = 23
      TabOrder = 3
      OnExit = edtValorUnitarioExit
      OnKeyPress = edtValorUnitarioKeyPress
    end
  end
  object pnItens: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 164
    Width = 648
    Height = 297
    Align = alClient
    BorderStyle = bsSingle
    TabOrder = 2
    ExplicitWidth = 630
    object dbnItens: TDBNavigator
      AlignWithMargins = True
      Left = 615
      Top = 4
      Width = 25
      Height = 285
      DataSource = dsItens
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alRight
      Kind = dbnVertical
      TabOrder = 0
      ExplicitLeft = 597
    end
    object dbgItens: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 605
      Height = 285
      Align = alClient
      DataSource = dsItens
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnKeyDown = dbgItensKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'codigo'
          Title.Caption = 'C'#243'digo'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Title.Caption = 'Descri'#231#227'o'
          Width = 220
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'quantidade'
          Title.Caption = 'Quantidade'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor_unitario'
          Title.Caption = 'Valor Unit'#225'rio'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor_total'
          Title.Caption = 'Total'
          Width = 100
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 467
    Width = 648
    Height = 22
    Align = alBottom
    TabOrder = 3
    ExplicitWidth = 630
    object lbTotal: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 640
      Height = 14
      Align = alClient
      Alignment = taRightJustify
      ExplicitLeft = 623
      ExplicitWidth = 3
      ExplicitHeight = 15
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 127
    Width = 648
    Height = 31
    Align = alTop
    TabOrder = 4
    ExplicitWidth = 630
    object btnCancelar: TSpeedButton
      AlignWithMargins = True
      Left = 539
      Top = 4
      Width = 105
      Height = 23
      Align = alRight
      Caption = 'Cancelar'
      Enabled = False
      OnClick = btnCancelarClick
      ExplicitLeft = 521
      ExplicitTop = 8
    end
    object btnCarregarPedido: TSpeedButton
      AlignWithMargins = True
      Left = 206
      Top = 4
      Width = 105
      Height = 23
      Align = alRight
      Caption = 'Pesquisar Pedido'
      OnClick = btnCarregarPedidoClick
      ExplicitLeft = 95
      ExplicitTop = 0
    end
    object btnGravarPedido: TSpeedButton
      AlignWithMargins = True
      Left = 428
      Top = 4
      Width = 105
      Height = 23
      Align = alRight
      Caption = 'Gravar'
      Enabled = False
      OnClick = btnGravarPedidoClick
      ExplicitLeft = 480
      ExplicitTop = 24
      ExplicitHeight = 22
    end
    object btnDeletarPedido: TSpeedButton
      AlignWithMargins = True
      Left = 317
      Top = 4
      Width = 105
      Height = 23
      Align = alRight
      Caption = 'Deletar Pedido'
      OnClick = btnDeletarPedidoClick
      ExplicitTop = 8
    end
  end
  object MemItems: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 411
    Top = 327
    object MemItemscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object MemItemsdescricao: TStringField
      FieldName = 'descricao'
      Size = 150
    end
    object MemItemsquantidade: TIntegerField
      FieldName = 'quantidade'
    end
    object MemItemsvalor_unitario: TCurrencyField
      FieldName = 'valor_unitario'
    end
    object MemItemsvalor_total: TCurrencyField
      FieldName = 'valor_total'
    end
  end
  object dsItens: TDataSource
    DataSet = MemItems
    Left = 315
    Top = 327
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 483
    Top = 212
  end
end
