object TabOpt: TTabOpt
  Left = 415
  Top = 286
  BorderStyle = bsDialog
  Caption = 'Tab Settings'
  ClientHeight = 74
  ClientWidth = 205
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object TntLabel1: TTntLabel
    Left = 8
    Top = 8
    Width = 73
    Height = 13
    Caption = 'Tabulator width'
  end
  object TntButton1: TTntButton
    Left = 120
    Top = 8
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object TntButton2: TTntButton
    Left = 120
    Top = 40
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object JvSpinEdit1: TJvSpinEdit
    Left = 8
    Top = 32
    Width = 106
    Height = 21
    ButtonKind = bkClassic
    MaxValue = 256.000000000000000000
    MinValue = 1.000000000000000000
    Value = 1.000000000000000000
    TabOrder = 0
  end
end