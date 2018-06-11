object frmCadastro: TfrmCadastro
  Left = 0
  Top = 0
  Caption = #9734'*'#65381' '#65377' . '#10304#65377#10256' Cadastros '#65381' '#65377#10304#65381' *'#9734
  ClientHeight = 457
  ClientWidth = 649
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbPreencha: TLabel
    Left = 48
    Top = 27
    Width = 189
    Height = 13
    Caption = 'Por favor, preencha os campos abaixo:'
  end
  object lbNome: TLabel
    Left = 67
    Top = 61
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object lbBairro: TLabel
    Left = 68
    Top = 265
    Width = 32
    Height = 13
    Caption = 'Bairro:'
  end
  object lbEnder: TLabel
    Left = 61
    Top = 100
    Width = 32
    Height = 13
    Caption = 'Idade:'
  end
  object lbFone: TLabel
    Left = 71
    Top = 141
    Width = 28
    Height = 13
    Caption = 'Fone:'
  end
  object lbProfis: TLabel
    Left = 56
    Top = 182
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object lbCidade: TLabel
    Left = 67
    Top = 223
    Width = 37
    Height = 13
    Caption = 'Cidade:'
  end
  object lbEnfebaixo: TLabel
    Left = 8
    Top = 359
    Width = 462
    Height = 13
    Caption = #9495#9472#9473#9472#9473#9472#9473#9472#9473#9472#9473#9472#9473#9472#9473#9472#9473#8734#9670#8734#9670#8734#9473#9472#9473#9472#9473#9472#9473#9472#9473#9472#9473#9472#9473#9472#9473#9472#9499
  end
  object lbEnfecima: TLabel
    Left = 8
    Top = 8
    Width = 462
    Height = 13
    Caption = #9487#9472#9473#9472#9473#9472#9473#9472#9473#9472#9473#9472#9473#9472#9473#9472#9473#8734#9670#8734#9670#8734#9473#9472#9473#9472#9473#9472#9473#9472#9473#9472#9473#9472#9473#9472#9473#9472#9491
  end
  object lbCEP: TLabel
    Left = 73
    Top = 307
    Width = 23
    Height = 13
    Caption = 'CEP:'
  end
  object edNome: TEdit
    Left = 141
    Top = 58
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edBairro: TEdit
    Left = 140
    Top = 262
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edIdade: TEdit
    Left = 141
    Top = 98
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edEnder: TEdit
    Left = 142
    Top = 179
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edCidade: TEdit
    Left = 142
    Top = 220
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edFone: TMaskEdit
    Left = 142
    Top = 138
    Width = 115
    Height = 21
    EditMask = '!\(99\)00000-0000;1;_'
    MaxLength = 14
    TabOrder = 2
    Text = '(  )     -    '
  end
  object Button1: TButton
    Left = 334
    Top = 263
    Width = 118
    Height = 52
    Caption = 'Cadastrar'
    TabOrder = 9
    OnClick = Button1Click
  end
  object RadioGroup1: TRadioGroup
    Left = 323
    Top = 139
    Width = 137
    Height = 96
    Caption = 'Estado Civil:'
    Items.Strings = (
      'Casado(a)'
      'Solteiro(a)'
      'Vi'#250'vo(a)'
      'Divorciado(a)')
    TabOrder = 8
  end
  object RadioGroup2: TRadioGroup
    Left = 323
    Top = 51
    Width = 137
    Height = 62
    Caption = 'Sexo:'
    Items.Strings = (
      'Masculino'
      'Feminino')
    TabOrder = 7
  end
  object edcep: TMaskEdit
    Left = 142
    Top = 304
    Width = 119
    Height = 21
    EditMask = '00\-009\-999;1;_'
    MaxLength = 10
    TabOrder = 6
    Text = '  -   -   '
  end
end
