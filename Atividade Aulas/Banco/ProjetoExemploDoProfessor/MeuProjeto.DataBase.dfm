object FDQuery1: TFDQuery1
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 720
  Width = 960
  PixelsPerInch = 144
  object Connection: TFDConnection
    Params.Strings = (
      'DriverID=SQLite'
      
        'Database=C:\Users\guilh\Documents\GitHub\Delphi\Atividade Aulas\' +
        'Banco\ProjetoExemploDoProfessor\MeuProjeto.db'
      'Server=localhost')
    Connected = True
    LoginPrompt = False
    Left = 120
    Top = 108
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 468
    Top = 108
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 168
    Top = 312
  end
  object FDQuery1: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'select * from lista_treino')
    Left = 568
    Top = 384
    object FDQuery1id_lista: TFDAutoIncField
      FieldName = 'id_lista'
      Origin = 'id_lista'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object FDQuery1id_exercicio: TIntegerField
      FieldName = 'id_exercicio'
      Origin = 'id_exercicio'
    end
    object FDQuery1id_cardapio: TIntegerField
      FieldName = 'id_cardapio'
      Origin = 'id_cardapio'
    end
    object FDQuery1nome_exercicio: TWideMemoField
      FieldName = 'nome_exercicio'
      Origin = 'nome_exercicio'
      BlobType = ftWideMemo
    end
    object FDQuery1calorias_queimadas: TFloatField
      FieldName = 'calorias_queimadas'
      Origin = 'calorias_queimadas'
    end
    object FDQuery1frequencia_exercicios: TIntegerField
      FieldName = 'frequencia_exercicios'
      Origin = 'frequencia_exercicios'
    end
    object FDQuery1repeticao_exercicio: TIntegerField
      FieldName = 'repeticao_exercicio'
      Origin = 'repeticao_exercicio'
    end
    object FDQuery1serie_exercicio: TIntegerField
      FieldName = 'serie_exercicio'
      Origin = 'serie_exercicio'
    end
  end
end
