object fData: TfData
  Left = 442
  Top = 273
  Width = 511
  Height = 239
  Caption = 'Arruma data'
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
    Left = 24
    Top = 12
    Width = 287
    Height = 13
    Caption = 'Procedimentos com data de ocorr'#234'ncia anterior '#224' '
  end
  object Label2: TLabel
    Left = 24
    Top = 36
    Width = 49
    Height = 13
    Caption = 'assumir '
  end
  object Label3: TLabel
    Left = 24
    Top = 60
    Width = 140
    Height = 13
    Caption = 'Ultimo dia do trimestre :'
  end
  object Button1: TButton
    Left = 95
    Top = 152
    Width = 313
    Height = 25
    Caption = 'Executar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ProgressBar1: TProgressBar
    Left = 15
    Top = 128
    Width = 473
    Height = 17
    TabOrder = 1
  end
  object DateEdit1: TJvDateEdit
    Left = 320
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object DateEdit2: TJvDateEdit
    Left = 88
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object DateEdit3: TJvDatePickerEdit
    Left = 176
    Top = 56
    Width = 121
    Height = 21
    AllowNoDate = True
    Checked = True
    TabOrder = 4
  end
end
