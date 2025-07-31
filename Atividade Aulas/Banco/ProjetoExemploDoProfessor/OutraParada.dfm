object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'OutraParada'
  ClientHeight = 665
  ClientWidth = 749
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 416
    Top = 208
    Width = 36
    Height = 15
    Caption = 'id_lista'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 416
    Top = 256
    Width = 61
    Height = 15
    Caption = 'id_exercicio'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 416
    Top = 304
    Width = 61
    Height = 15
    Caption = 'id_cardapio'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 416
    Top = 352
    Width = 82
    Height = 15
    Caption = 'nome_exercicio'
    FocusControl = DBMemo1
  end
  object Label5: TLabel
    Left = 416
    Top = 464
    Width = 103
    Height = 15
    Caption = 'calorias_queimadas'
    FocusControl = DBEdit4
  end
  object Label6: TLabel
    Left = 416
    Top = 512
    Width = 112
    Height = 15
    Caption = 'frequencia_exercicios'
    FocusControl = DBEdit5
  end
  object Label7: TLabel
    Left = 416
    Top = 560
    Width = 100
    Height = 15
    Caption = 'repeticao_exercicio'
    FocusControl = DBEdit6
  end
  object Label8: TLabel
    Left = 416
    Top = 608
    Width = 75
    Height = 15
    Caption = 'serie_exercicio'
    FocusControl = DBEdit7
  end
  object DBEdit1: TDBEdit
    Left = 416
    Top = 227
    Width = 154
    Height = 23
    DataField = 'id_lista'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 416
    Top = 272
    Width = 154
    Height = 23
    DataField = 'id_exercicio'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 416
    Top = 320
    Width = 154
    Height = 23
    DataField = 'id_cardapio'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBMemo1: TDBMemo
    Left = 416
    Top = 368
    Width = 185
    Height = 89
    DataField = 'nome_exercicio'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 416
    Top = 480
    Width = 154
    Height = 23
    DataField = 'calorias_queimadas'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 416
    Top = 528
    Width = 154
    Height = 23
    DataField = 'frequencia_exercicios'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 416
    Top = 576
    Width = 154
    Height = 23
    DataField = 'repeticao_exercicio'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit7: TDBEdit
    Left = 416
    Top = 629
    Width = 154
    Height = 23
    DataField = 'serie_exercicio'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1.FDQuery1
    Left = 680
    Top = 128
  end
end
