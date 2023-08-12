object frmPredio: TfrmPredio
  Left = 0
  Top = 0
  Caption = 'Pr'#233'dio'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 64
    Top = 72
    Width = 47
    Height = 15
    Caption = 'Inquilino'
  end
  object Label2: TLabel
    Left = 64
    Top = 138
    Width = 32
    Height = 15
    Caption = 'Andar'
  end
  object Label3: TLabel
    Left = 256
    Top = 138
    Width = 32
    Height = 15
    Caption = 'Andar'
  end
  object edtInquilino: TEdit
    Left = 64
    Top = 93
    Width = 121
    Height = 23
    TabOrder = 0
    Text = 'edtInquilino'
  end
  object edtAndar: TEdit
    Left = 64
    Top = 173
    Width = 121
    Height = 23
    TabOrder = 1
    Text = 'edtAndar'
  end
  object edtAndarSair: TEdit
    Left = 256
    Top = 173
    Width = 121
    Height = 23
    TabOrder = 2
    Text = 'edtAndarSair'
  end
  object memPredio: TMemo
    Left = 419
    Top = 69
    Width = 201
    Height = 276
    Lines.Strings = (
      'memPredio')
    TabOrder = 3
  end
  object btnAlugar: TButton
    Left = 64
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Alugar'
    TabOrder = 4
    OnClick = btnAlugarClick
  end
  object btnDesalugar: TButton
    Left = 256
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Desalugar'
    TabOrder = 5
    OnClick = btnDesalugarClick
  end
  object btnListar: TButton
    Left = 419
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Listar'
    TabOrder = 6
    OnClick = btnListarClick
  end
end
