object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'VisualProject1'
  ClientHeight = 607
  ClientWidth = 884
  Color = clDimgray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object Button1: TButton
    Left = 384
    Top = 232
    Width = 129
    Height = 73
    Caption = 'Clica em mim'#13#10'por favor'
    TabOrder = 0
    OnClick = Button1Click
  end
  object TextBox: TEdit
    Left = 288
    Top = 184
    Width = 329
    Height = 23
    Alignment = taCenter
    CharCase = ecUpperCase
    TabOrder = 1
    Text = 'TEXTBOX'
    StyleName = 'Windows'
  end
end
