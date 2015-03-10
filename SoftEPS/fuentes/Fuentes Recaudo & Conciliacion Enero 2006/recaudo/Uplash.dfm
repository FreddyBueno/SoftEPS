object frmplas: Tfrmplas
  Left = 258
  Top = 210
  BorderStyle = bsNone
  Caption = 'Cargando la  aplicacion Autoliquidaciones'
  ClientHeight = 350
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 248
    Width = 426
    Height = 102
    Align = alBottom
    Caption = 'Autoliquidaciones'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Animate1: TAnimate
    Left = 0
    Top = 0
    Width = 426
    Height = 248
    Align = alClient
    Active = False
    CommonAVI = aviFindFolder
    StopFrame = 29
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 16
    Top = 302
  end
end
