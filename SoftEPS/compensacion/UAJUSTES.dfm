object frmajustes: Tfrmajustes
  Left = 75
  Top = 29
  Width = 695
  Height = 509
  Caption = 'Ajustes Por Numero de Declaracion'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 0
    Top = 257
    Width = 687
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Splitter3: TSplitter
    Left = 0
    Top = 369
    Width = 687
    Height = 5
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 687
    Height = 113
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 282
      Top = 87
      Width = 124
      Height = 13
      Caption = 'Numero Declaraci'#243'n :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 208
      Top = 40
      Width = 228
      Height = 16
      Caption = 'Ajustes por numero de Declaracion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 616
      Top = 8
      Width = 53
      Height = 16
      Caption = 'SOFTEPS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 411
      Top = 82
      Width = 79
      Height = 21
      Color = clMoneyGreen
      TabOrder = 0
    end
    object Button1: TButton
      Left = 501
      Top = 78
      Width = 75
      Height = 25
      Caption = '&Aceptar'
      Default = True
      TabOrder = 1
      OnClick = Button1Click
    end
    object GroupBox2: TGroupBox
      Left = 116
      Top = 60
      Width = 421
      Height = 7
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 113
    Width = 687
    Height = 144
    Align = alTop
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 17
      Width = 685
      Height = 126
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 685
      Height = 16
      Align = alTop
      Caption = 'Bases de Calculo'
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 260
    Width = 687
    Height = 109
    Align = alTop
    TabOrder = 2
    object DBGrid2: TDBGrid
      Left = 1
      Top = 17
      Width = 685
      Height = 91
      Align = alClient
      DataSource = DataSource3
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 685
      Height = 16
      Align = alTop
      Caption = 'Bases de Calculo Dependientes'
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 374
    Width = 687
    Height = 108
    Align = alClient
    TabOrder = 3
    object DBGrid3: TDBGrid
      Left = 1
      Top = 29
      Width = 685
      Height = 78
      Align = alClient
      DataSource = DataSource2
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object Panel7: TPanel
      Left = 1
      Top = 1
      Width = 685
      Height = 28
      Align = alTop
      Caption = 'Liquidacion Compensacion'
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object DBNavigator1: TDBNavigator
        Left = 9
        Top = 3
        Width = 168
        Height = 18
        DataSource = DataSource2
        VisibleButtons = [nbEdit, nbPost, nbCancel]
        TabOrder = 0
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = dmcompensa.qrymcbasesdecalculo1
    Left = 480
    Top = 154
  end
  object DataSource2: TDataSource
    DataSet = dmcompensa.qrymcliquidacion
    Left = 562
    Top = 146
  end
  object DataSource3: TDataSource
    DataSet = dmcompensa.qrymcbasesdep2
    Left = 520
    Top = 147
  end
end
