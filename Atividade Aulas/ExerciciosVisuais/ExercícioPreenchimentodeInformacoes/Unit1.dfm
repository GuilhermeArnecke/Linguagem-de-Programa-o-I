object Cadastro: TCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro'
  ClientHeight = 629
  ClientWidth = 1117
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1117
    Height = 633
    Color = clCornsilk
    ParentBackground = False
    TabOrder = 0
    object StringGrid1: TStringGrid
      Left = 448
      Top = 48
      Width = 656
      Height = 537
      TabStop = False
      DefaultColWidth = 75
      DefaultColAlignment = taCenter
      FixedCols = 0
      RowCount = 6
      TabOrder = 2
      ColWidths = (
        85
        91
        81
        81
        82)
    end
    object StaticText1: TStaticText
      Left = 488
      Top = 13
      Width = 87
      Height = 29
      Caption = 'Users List'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      TabOrder = 9
    end
    object Edit1: TEdit
      Left = 32
      Top = 48
      Width = 297
      Height = 23
      TabOrder = 0
      Text = 'Insira Nome'
    end
    object MaskEdit1: TMaskEdit
      Left = 32
      Top = 224
      Width = 177
      Height = 23
      TabOrder = 3
      Text = 'Insira Telefone'
    end
    object StaticText2: TStaticText
      Left = 32
      Top = 13
      Width = 58
      Height = 29
      Caption = 'Nome'
      Color = clWindowText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsUnderline]
      ParentColor = False
      ParentFont = False
      TabOrder = 10
    end
    object StaticText3: TStaticText
      Left = 32
      Top = 101
      Width = 59
      Height = 29
      Caption = 'E-mail'
      Color = clWindowText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsUnderline]
      ParentColor = False
      ParentFont = False
      TabOrder = 11
    end
    object Edit2: TEdit
      Left = 32
      Top = 136
      Width = 297
      Height = 23
      TabOrder = 1
      Text = 'Insira E-mail'
    end
    object StaticText4: TStaticText
      Left = 32
      Top = 189
      Width = 81
      Height = 29
      Caption = 'Telefone'
      Color = clWindowText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsUnderline]
      ParentColor = False
      ParentFont = False
      TabOrder = 12
    end
    object Edit3: TEdit
      Left = 32
      Top = 392
      Width = 297
      Height = 23
      TabOrder = 5
      Text = 'Insira Senha'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 32
      Top = 312
      Width = 186
      Height = 23
      Date = 45743.000000000000000000
      Time = 0.844345613426412500
      TabOrder = 4
    end
    object StaticText5: TStaticText
      Left = 32
      Top = 277
      Width = 105
      Height = 29
      Caption = 'Anivers'#225'rio'
      Color = clWindowText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsUnderline]
      ParentColor = False
      ParentFont = False
      TabOrder = 13
    end
    object StaticText6: TStaticText
      Left = 32
      Top = 357
      Width = 58
      Height = 29
      Caption = 'Senha'
      Color = clWindowText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsUnderline]
      ParentColor = False
      ParentFont = False
      TabOrder = 14
    end
    object Button1: TButton
      Left = 32
      Top = 531
      Width = 297
      Height = 54
      Caption = 'Confirmar Cadastro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = Button1Click
    end
    object RadioGroup1: TRadioGroup
      Left = 32
      Top = 429
      Width = 297
      Height = 85
      Caption = 'Tipo de Usu'#225'rio'
      Color = clWhite
      ParentBackground = False
      ParentColor = False
      TabOrder = 15
    end
    object RadioButton1: TRadioButton
      Left = 48
      Top = 472
      Width = 113
      Height = 17
      Caption = 'Usu'#225'rio Comum'
      TabOrder = 6
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 200
      Top = 472
      Width = 113
      Height = 17
      Caption = 'Administrador'
      TabOrder = 7
      TabStop = True
    end
  end
end
