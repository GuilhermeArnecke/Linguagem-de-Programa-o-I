object FormRelatorioCidades: TFormRelatorioCidades
  Left = 0
  Top = 0
  Caption = 'FormRelatorioCidades'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RLReport: TRLReport
    Left = -8
    Top = 0
    Width = 1191
    Height = 1684
    DataSource = DsDados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -20
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand2: TRLBand
      Left = 57
      Top = 114
      Width = 1077
      Height = 55
      object RLDBText1: TRLDBText
        Left = 163
        Top = 16
        Width = 150
        Height = 23
        DataField = 'NOME_CIDADE'
        DataSource = DsDados
        Text = ''
      end
    end
    object RLBand1: TRLBand
      Left = 57
      Top = 57
      Width = 1077
      Height = 57
      BandType = btHeader
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 120
        Top = 18
        Width = 159
        Height = 28
        Caption = 'Relat'#243'rio Cidades'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand3: TRLBand
      Left = 57
      Top = 169
      Width = 1077
      Height = 72
      BandType = btFooter
      object RLSystemInfo1: TRLSystemInfo
        Left = 248
        Top = 32
        Width = 92
        Height = 23
        Info = itFullDate
        Text = ''
      end
    end
  end
  object DsDados: TDataSource
    Left = 392
    Top = 24
  end
end
