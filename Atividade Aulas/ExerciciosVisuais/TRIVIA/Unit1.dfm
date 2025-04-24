object FormMain: TFormMain
  AlignWithMargins = True
  Left = 0
  Top = 0
  Caption = 'TRIVIA'
  ClientHeight = 632
  ClientWidth = 902
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
    Width = 902
    Height = 161
    Align = alTop
    BevelOuter = bvLowered
    Caption = 'Painel Name Name'
    ShowCaption = False
    TabOrder = 0
    ExplicitWidth = 896
    object Contador: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 100
      Width = 880
      Height = 50
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      Alignment = taCenter
      Caption = 'Contador'
      ExplicitWidth = 50
      ExplicitHeight = 15
    end
    object Edit1: TEdit
      AlignWithMargins = True
      Left = 101
      Top = 51
      Width = 700
      Height = 39
      Margins.Left = 100
      Margins.Top = 50
      Margins.Right = 100
      Margins.Bottom = 0
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'Digite sua resposta'
      TextHint = 'Digite sua resposta'
      OnKeyDown = Edit1KeyDown
      ExplicitWidth = 694
    end
  end
  object PanelGlobal: TPanel
    Left = 0
    Top = 161
    Width = 902
    Height = 471
    Align = alClient
    Caption = 'PanelGlobal'
    ShowCaption = False
    TabOrder = 1
    ExplicitWidth = 896
    ExplicitHeight = 454
  end
end
