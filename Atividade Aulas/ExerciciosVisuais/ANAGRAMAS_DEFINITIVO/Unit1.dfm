object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Anagrama Bomb'#225'stico'
  ClientHeight = 555
  ClientWidth = 1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  TextHeight = 15
  object BigBack: TPanel
    Left = 0
    Top = 0
    Width = 1072
    Height = 555
    Align = alClient
    Caption = 'FormCreate'
    Color = clCream
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1066
    ExplicitHeight = 538
    object Painel_de_Respostas: TPanel
      Left = 1
      Top = 1
      Width = 1070
      Height = 113
      Align = alTop
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -80
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 1064
    end
    object Painel_de_Letras: TPanel
      Left = 1
      Top = 114
      Width = 1070
      Height = 105
      Align = alTop
      Color = clCornsilk
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 1064
      object Button1: TButton
        Left = 16
        Top = 13
        Width = 81
        Height = 81
        Caption = 'G'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -67
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 120
        Top = 13
        Width = 81
        Height = 81
        Caption = 'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -67
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 224
        Top = 13
        Width = 81
        Height = 81
        Caption = 'E'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -67
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 328
        Top = 13
        Width = 81
        Height = 81
        Caption = 'I'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -67
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 432
        Top = 13
        Width = 81
        Height = 81
        Caption = 'U'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -67
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 536
        Top = 13
        Width = 81
        Height = 81
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -67
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 640
        Top = 13
        Width = 81
        Height = 81
        Caption = 'R'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -67
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = Button7Click
      end
      object Dica: TButton
        Left = 880
        Top = 13
        Width = 145
        Height = 41
        Caption = 'Dica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = DicaClick
      end
      object Embaralhar: TButton
        Left = 880
        Top = 56
        Width = 145
        Height = 41
        Caption = 'Embaralhar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = EmbaralharClick
      end
      object Limpar: TButton
        Left = 776
        Top = 13
        Width = 98
        Height = 84
        Caption = 'Limpar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = LimparClick
      end
    end
    object Painel_de_Palavras: TPanel
      Left = 1
      Top = 219
      Width = 1070
      Height = 335
      Align = alClient
      Color = clCornsilk
      ParentBackground = False
      TabOrder = 2
      ExplicitWidth = 1064
      ExplicitHeight = 318
    end
  end
end
