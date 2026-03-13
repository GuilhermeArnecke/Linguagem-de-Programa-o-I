object FormFiltroRelatorioCidades: TFormFiltroRelatorioCidades
  Left = 0
  Top = 0
  Caption = 'FormFiltroRelatorioCidades'
  ClientHeight = 535
  ClientWidth = 949
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 184
    Top = 112
    Width = 59
    Height = 28
    Caption = 'Estado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 184
    Top = 200
    Width = 61
    Height = 28
    Caption = 'Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object EdtEstado: TEdit
    Left = 280
    Top = 120
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object EdtCidade: TEdit
    Left = 280
    Top = 208
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object BtnRelatorio: TButton
    Left = 520
    Top = 179
    Width = 105
    Height = 49
    Caption = 'Relat'#243'rio'
    TabOrder = 2
    OnClick = BtnRelatorioClick
  end
  object QryConsulta: TFDQuery
    Connection = DMPrincipal.FDConexao
    Left = 240
    Top = 296
  end
end
