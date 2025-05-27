object FImporta: TFImporta
  Left = 357
  Top = 279
  Width = 613
  Height = 228
  Caption = 'Importar Dados'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 46
    Top = 36
    Width = 53
    Height = 13
    Caption = 'Arquivo :'
  end
  object Button1: TButton
    Left = 162
    Top = 144
    Width = 281
    Height = 25
    Caption = 'Importar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 102
    Top = 80
    Width = 193
    Height = 17
    Caption = 'Limpar base atual'
    Checked = True
    State = cbChecked
    TabOrder = 0
  end
  object FilenameEdit1: TJvFilenameEdit
    Left = 104
    Top = 32
    Width = 473
    Height = 21
    TabOrder = 2
    Text = 'FilenameEdit1'
  end
end
