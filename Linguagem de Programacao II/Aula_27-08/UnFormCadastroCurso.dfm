object FormCadastroCurso: TFormCadastroCurso
  Left = 0
  Top = 0
  Caption = 'Cadastro de Curso'
  ClientHeight = 557
  ClientWidth = 906
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object lblID: TLabel
    Left = 120
    Top = 99
    Width = 11
    Height = 15
    Caption = 'ID'
  end
  object lblCodigo: TLabel
    Left = 120
    Top = 136
    Width = 39
    Height = 15
    Caption = 'Codigo'
  end
  object lblNome: TLabel
    Left = 120
    Top = 176
    Width = 67
    Height = 15
    Caption = 'Nome Curso'
  end
  object lblValor: TLabel
    Left = 120
    Top = 216
    Width = 77
    Height = 15
    Caption = 'Valor do Curso'
  end
  object DBGrid1: TDBGrid
    Left = 104
    Top = 252
    Width = 713
    Height = 285
    DataSource = DsCurso
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CURSO'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Width = 136
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 308
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Width = 145
        Visible = True
      end>
  end
  object BtnNovo: TButton
    Left = 112
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 1
    OnClick = BtnNovoClick
  end
  object BtnExcluir: TButton
    Left = 216
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 2
    OnClick = BtnExcluirClick
  end
  object BtnCancelar: TButton
    Left = 320
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = BtnCancelarClick
  end
  object BtnSalvar: TButton
    Left = 424
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = BtnSalvarClick
  end
  object ID: TDBEdit
    Left = 216
    Top = 96
    Width = 121
    Height = 23
    DataField = 'ID_CURSO'
    DataSource = DsCurso
    TabOrder = 5
  end
  object DBEdit1: TDBEdit
    Left = 216
    Top = 133
    Width = 121
    Height = 23
    DataField = 'CODIGO'
    DataSource = DsCurso
    TabOrder = 6
  end
  object DBEdit2: TDBEdit
    Left = 216
    Top = 173
    Width = 191
    Height = 23
    DataField = 'NOME'
    DataSource = DsCurso
    TabOrder = 7
  end
  object DBEdit3: TDBEdit
    Left = 216
    Top = 213
    Width = 89
    Height = 23
    DataField = 'VALOR'
    DataSource = DsCurso
    TabOrder = 8
  end
  object DsCurso: TDataSource
    DataSet = DMCadastroCurso.QryCadastroCurso
    Left = 800
    Top = 40
  end
end
