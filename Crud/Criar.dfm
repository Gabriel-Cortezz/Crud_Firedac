object FormularioCriar: TFormularioCriar
  Left = 0
  Top = 0
  Caption = 'FormularioCriar'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 21
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 628
    Height = 21
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastro de Funcionario'
    ExplicitWidth = 169
  end
  object txtnome: TLabel
    Left = 104
    Top = 75
    Width = 57
    Height = 37
    Caption = 'Nome'
  end
  object txtCpf: TLabel
    Left = 104
    Top = 160
    Width = 43
    Height = 24
    Caption = 'Cpf'
  end
  object txtData: TLabel
    Left = 104
    Top = 227
    Width = 57
    Height = 29
    Caption = 'Data'
  end
  object btnConfimar: TButton
    Left = 104
    Top = 344
    Width = 113
    Height = 41
    Caption = 'Criar'
    TabOrder = 0
    OnClick = btnConfimarClick
  end
  object btnCancelar: TButton
    Left = 400
    Top = 344
    Width = 113
    Height = 41
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = btnCancelarClick
  end
  object Caixadenome: TEdit
    Left = 224
    Top = 72
    Width = 289
    Height = 42
    TabOrder = 2
  end
  object caixadecpf: TEdit
    Left = 224
    Top = 157
    Width = 289
    Height = 37
    TabOrder = 3
  end
  object Datadenascimento: TDateTimePicker
    Left = 224
    Top = 216
    Width = 289
    Height = 40
    Time = 0.883199189811421100
    TabOrder = 4
  end
end
