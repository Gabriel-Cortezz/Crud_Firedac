object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 20
  object Label1: TLabel
    Left = 40
    Top = 310
    Width = 41
    Height = 20
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 40
    Top = 344
    Width = 23
    Height = 20
    Caption = 'Cpf'
  end
  object Label3: TLabel
    Left = 40
    Top = 384
    Width = 133
    Height = 20
    Caption = 'Data de nascimento'
  end
  object Codigo: TLabel
    Left = 408
    Top = 312
    Width = 49
    Height = 20
    Caption = 'Codigo'
  end
  object btnCriar: TButton
    Left = 24
    Top = 24
    Width = 105
    Height = 41
    Caption = 'Criar'
    TabOrder = 0
    OnClick = btnCriarClick
  end
  object btnEditar: TButton
    Left = 248
    Top = 24
    Width = 105
    Height = 41
    Caption = 'Editar'
    TabOrder = 1
    OnClick = btnEditarClick
  end
  object btnExcluir: TButton
    Left = 464
    Top = 24
    Width = 105
    Height = 41
    Caption = 'Excluir'
    TabOrder = 2
    OnClick = btnExcluirClick
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 96
    Width = 545
    Height = 177
    DataSource = DataModule3.DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnSairdaAplicacao: TButton
    Left = 496
    Top = 377
    Width = 105
    Height = 41
    Caption = 'Sair'
    TabOrder = 4
    OnClick = btnSairdaAplicacaoClick
  end
  object CaixaNome: TEdit
    Left = 104
    Top = 307
    Width = 281
    Height = 28
    TabOrder = 5
  end
  object CaixaCpf: TEdit
    Left = 104
    Top = 341
    Width = 281
    Height = 28
    TabOrder = 6
  end
  object datanascimento: TDateTimePicker
    Left = 192
    Top = 384
    Width = 193
    Height = 28
    Date = 45359.000000000000000000
    Time = 0.012490949076891410
    TabOrder = 7
  end
  object Caixadecodigo: TEdit
    Left = 480
    Top = 307
    Width = 121
    Height = 28
    TabOrder = 8
  end
end
