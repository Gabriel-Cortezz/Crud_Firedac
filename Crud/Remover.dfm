object Excluir: TExcluir
  Left = 0
  Top = 0
  Caption = 'Excluir'
  ClientHeight = 405
  ClientWidth = 598
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 21
  object Label1: TLabel
    Left = 56
    Top = 104
    Width = 249
    Height = 21
    Caption = 'Codigo do Funcionario para excluir :'
  end
  object Label2: TLabel
    Left = 232
    Top = 26
    Width = 131
    Height = 21
    Caption = 'Excluir Funcionario'
  end
  object btnConfimarExclui: TButton
    Left = 88
    Top = 216
    Width = 105
    Height = 57
    Caption = 'Confimar'
    TabOrder = 0
    OnClick = btnConfimarExcluiClick
  end
  object btnCancelarExclui: TButton
    Left = 376
    Top = 216
    Width = 105
    Height = 57
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = btnCancelarExcluiClick
  end
  object CaixadeExcluir: TEdit
    Left = 320
    Top = 101
    Width = 193
    Height = 29
    TabOrder = 2
  end
end
