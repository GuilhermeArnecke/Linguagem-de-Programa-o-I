object FormCadastroCidade: TFormCadastroCidade
  Left = 0
  Top = 0
  Caption = 'Cadastro de cidades'
  ClientHeight = 549
  ClientWidth = 911
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object lblID: TLabel
    Left = 88
    Top = 99
    Width = 11
    Height = 15
    Caption = 'ID'
  end
  object LblNomeCidade: TLabel
    Left = 88
    Top = 136
    Width = 73
    Height = 15
    Caption = 'Nome Cidade'
  end
  object BtnNovo: TButton
    Left = 64
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 0
    OnClick = BtnNovoClick
  end
  object BtnExcluir: TButton
    Left = 168
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 1
    OnClick = BtnExcluirClick
  end
  object BtnCancelar: TButton
    Left = 288
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = BtnCancelarClick
  end
  object BtnSalvar: TButton
    Left = 392
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = BtnSalvarClick
  end
  object DBGrid1: TDBGrid
    Left = 64
    Top = 228
    Width = 721
    Height = 301
    DataSource = DsCidades
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DescricaoEstado'
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 122
    Top = 96
    Width = 121
    Height = 23
    DataField = 'ID_CIDADE'
    DataSource = DsCidades
    TabOrder = 5
  end
  object DBEdit2: TDBEdit
    Left = 184
    Top = 125
    Width = 121
    Height = 23
    DataField = 'DESCRICAO'
    DataSource = DsCidades
    TabOrder = 6
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 88
    Top = 157
    Width = 145
    Height = 23
    DataField = 'ID_ESTADO'
    DataSource = DsCidades
    KeyField = 'ID_ESTADO'
    ListField = 'NOME'
    ListSource = DsEstados
    TabOrder = 7
  end
  object DsCidades: TDataSource
    DataSet = DMCadastroCidades.QryCadastroCidades
    Left = 608
    Top = 40
  end
  object DsEstados: TDataSource
    DataSet = DMCadastroCidades.QryEstados
    Left = 688
    Top = 40
  end
end
