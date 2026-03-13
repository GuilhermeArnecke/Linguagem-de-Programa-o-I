object FormRelatoriosCidadesPadrao: TFormRelatoriosCidadesPadrao
  Left = 0
  Top = 0
  Caption = 'FormRelatoriosCidadesPadrao'
  ClientHeight = 586
  ClientWidth = 1048
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object ReportCidade: TRLReport
    Left = 0
    Top = 0
    Width = 1191
    Height = 1684
    DataSource = DsDados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -20
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 57
      Top = 57
      Width = 1077
      Height = 83
      AutoSize = True
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 235
        Top = 20
        Width = 192
        Height = 23
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Cidades'
      end
      object RLLabel5: TRLLabel
        Left = 16
        Top = 60
        Width = 26
        Height = 23
        Caption = 'ID'
      end
      object RLLabel3: TRLLabel
        Left = 203
        Top = 58
        Width = 125
        Height = 23
        Caption = 'Nome Cidade'
      end
      object RLLabel4: TRLLabel
        Left = 445
        Top = 55
        Width = 68
        Height = 23
        Caption = 'Estado'
      end
    end
    object RLBand2: TRLBand
      Left = 57
      Top = 227
      Width = 1077
      Height = 113
      AutoSize = True
      BandType = btFooter
      object RLSystemInfo1: TRLSystemInfo
        Left = 539
        Top = 90
        Width = 62
        Height = 23
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 399
        Top = 90
        Width = 134
        Height = 23
        Info = itPageNumber
        Text = ''
      end
      object RLLabel2: TRLLabel
        Left = 252
        Top = 90
        Width = 141
        Height = 23
        Caption = 'N'#250'mero P'#225'gina'
      end
    end
    object RLBand3: TRLBand
      Left = 57
      Top = 140
      Width = 1077
      Height = 87
      object RLDBText1: TRLDBText
        Left = 16
        Top = 58
        Width = 111
        Height = 23
        DataField = 'ID_CIDADE'
        DataSource = DsDados
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 203
        Top = 58
        Width = 123
        Height = 23
        DataField = 'DESCRICAO'
        DataSource = DsDados
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 445
        Top = 58
        Width = 156
        Height = 23
        DataField = 'DescricaoEstado'
        DataSource = DsDados
        Text = ''
      end
    end
  end
  object DsDados: TDataSource
    Left = 569
    Top = 476
  end
end
