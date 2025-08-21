object FormCadastroCidade: TFormCadastroCidade
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cidades'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object BtnNovo: TButton
    Left = 56
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 0
  end
  object BtnCancelar: TButton
    Left = 248
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
  end
  object BtnSalvar: TButton
    Left = 344
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
  end
  object BtnExcluir: TButton
    Left = 152
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 264
    Width = 569
    Height = 153
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
end
