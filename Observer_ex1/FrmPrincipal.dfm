object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'FormPrincipal'
  ClientHeight = 305
  ClientWidth = 382
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 369
    Height = 21
    TabOrder = 0
    Text = 'Mensagem...'
  end
  object Button1: TButton
    Left = 8
    Top = 75
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 112
    Width = 369
    Height = 185
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
  end
  object CheckListBox1: TCheckListBox
    Left = 8
    Top = 35
    Width = 75
    Height = 32
    ItemHeight = 13
    Items.Strings = (
      'EMAIL'
      'SMS')
    TabOrder = 1
  end
end
