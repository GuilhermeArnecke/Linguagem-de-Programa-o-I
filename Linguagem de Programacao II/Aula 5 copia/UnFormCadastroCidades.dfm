object FormCadastroCidade: TFormCadastroCidade
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cidades'
  ClientHeight = 617
  ClientWidth = 865
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object BtnNovo: TButton
    Left = 144
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 0
  end
  object BtnExcluir: TButton
    Left = 272
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 1
  end
  object BtnCancelar: TButton
    Left = 384
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
  end
  object BtnSalvar: TButton
    Left = 488
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 312
    Width = 841
    Height = 281
    DataSource = DSMunicipios
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DSMunicipios: TDataSource
    DataSet = DMPrincipal.QryCadastroCidades
    Left = 168
    Top = 168
  end
end
