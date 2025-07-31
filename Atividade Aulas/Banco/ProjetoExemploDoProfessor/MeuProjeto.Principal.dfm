object MeuProjetoPrincipal: TMeuProjetoPrincipal
  Left = 0
  Top = 0
  Caption = 'MeuProjetoPrincipal'
  ClientHeight = 630
  ClientWidth = 838
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 192
    Top = 88
    object Cadastrodomeupenis1: TMenuItem
      Caption = 'Descadastramento'
      OnClick = Cadastrodomeupenis1Click
    end
  end
end
