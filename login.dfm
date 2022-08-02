object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 248
  ClientWidth = 375
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = -6
    Width = 585
    Height = 385
    Color = clBtnHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 64
      Top = 88
      Width = 241
      Height = 18
      Align = alCustom
      Anchors = [akLeft, akTop, akRight, akBottom]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' '#1080' '#1074#1086#1081#1076#1080#1090#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Button1: TButton
      Left = 288
      Top = 203
      Width = 75
      Height = 25
      Align = alCustom
      Caption = #1042#1086#1081#1090#1080
      TabOrder = 0
      OnClick = Button1Click
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 106
      Top = 125
      Width = 145
      Height = 21
      ListField = 'NAME'
      ListSource = peoplesouce
      TabOrder = 1
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 106
      Top = 152
      Properties.ListColumns = <>
      TabOrder = 2
      Width = 145
    end
  end
  object FDB: TFDConnection
    Params.Strings = (
      'CharacterSet=UtF8'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'ExtendedMetadata=True'
      'Database=C:\Users\Elewlian\Desktop\UMAG.FDB'
      'Port=3050'
      'Server=127.0.0.1'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 35
    Top = 28
  end
  object people: TFDQuery
    Connection = FDB
    Transaction = trRead
    SQL.Strings = (
      'select name from peoples;')
    Left = 160
    Top = 34
  end
  object peoplesouce: TDataSource
    DataSet = people
    Left = 256
    Top = 34
  end
  object trRead: TFDTransaction
    Options.ReadOnly = True
    Options.AutoStop = False
    Connection = FDB
    Left = 43
    Top = 156
  end
end
