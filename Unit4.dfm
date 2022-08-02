object RUT: TRUT
  Left = 0
  Top = 0
  Caption = 'RUT'
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
  OnActivate = CreateForm
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = -8
    Top = -22
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
    object Label2: TLabel
      Left = 40
      Top = 136
      Width = 83
      Height = 16
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 51
      Top = 169
      Width = 43
      Height = 16
      Caption = #1055#1072#1088#1086#1083#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 288
      Top = 219
      Width = 75
      Height = 25
      Align = alCustom
      Caption = #1042#1086#1081#1090#1080
      TabOrder = 0
      OnClick = Button1Click
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 144
      Top = 131
      Width = 145
      Height = 21
      KeyField = 'ID'
      ListField = 'NAME'
      ListSource = DataSource1
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 144
      Top = 168
      Width = 145
      Height = 21
      PasswordChar = '*'
      TabOrder = 2
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\UMAG.fdb'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=127.0.0.1'
      'Port=3050'
      'CharacterSet=UTF8'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 128
    Top = 16
  end
  object FDQuery1: TFDQuery
    IndexFieldNames = 'NAME'
    Connection = FDConnection1
    SQL.Strings = (
      'select * from peoples')
    Left = 80
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 24
    Top = 16
  end
end
