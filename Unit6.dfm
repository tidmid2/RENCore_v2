object Form6: TForm6
  Left = 0
  Top = 0
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1052#1072#1075#1072#1079#1080#1085#1072
  ClientHeight = 391
  ClientWidth = 359
  Color = clBtnFace
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
    Top = 0
    Width = 361
    Height = 393
    Color = clWhite
    Ctl3D = False
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 0
    object Label2: TLabel
      Left = 59
      Top = 24
      Width = 241
      Height = 24
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1076#1072#1085#1085#1099#1077' '#1084#1072#1075#1072#1079#1080#1085#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 190
      Top = 336
      Width = 140
      Height = 41
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1084#1072#1075#1072#1079#1080#1085
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Panel2: TPanel
      Left = 26
      Top = 136
      Width = 304
      Height = 54
      BorderStyle = bsSingle
      TabOrder = 1
      object Label3: TLabel
        Left = 16
        Top = 15
        Width = 54
        Height = 24
        Caption = #1040#1076#1088#1077#1089
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object adressmagazin: TEdit
        Left = 168
        Top = 20
        Width = 121
        Height = 19
        TabOrder = 0
        Text = #1048#1084#1103
        OnClick = adressmagazinChange
      end
    end
    object Panel3: TPanel
      Left = 26
      Top = 76
      Width = 304
      Height = 54
      BorderStyle = bsSingle
      TabOrder = 2
      object Label1: TLabel
        Left = 16
        Top = 13
        Width = 88
        Height = 24
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object namemagazin: TEdit
        Left = 168
        Top = 17
        Width = 121
        Height = 19
        TabOrder = 0
        Text = #1053#1072#1079#1074#1072#1085#1080#1077
        OnClick = namemagazinChange
      end
    end
    object Panel4: TPanel
      Left = 26
      Top = 196
      Width = 304
      Height = 54
      BorderStyle = bsSingle
      TabOrder = 3
      object Label4: TLabel
        Left = 16
        Top = 15
        Width = 34
        Height = 24
        Caption = #1058#1080#1087
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object mgtypelookup: TDBLookupComboBox
        Left = 141
        Top = 17
        Width = 145
        Height = 19
        KeyField = 'ID'
        ListField = 'NAME'
        ListSource = mgtypeset
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Left = 26
      Top = 256
      Width = 304
      Height = 54
      BorderStyle = bsSingle
      TabOrder = 4
      object Label5: TLabel
        Left = 16
        Top = 15
        Width = 89
        Height = 24
        Caption = #1042#1083#1072#1076#1077#1083#1077#1094
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ownertypelookup: TDBLookupComboBox
        Left = 141
        Top = 17
        Width = 145
        Height = 19
        KeyField = 'ID'
        ListField = 'NAME'
        ListSource = Form2.contrset
        TabOrder = 0
      end
    end
  end
  object mgtypeset: TDataSource
    DataSet = mgtype
    Left = 64
    Top = 48
  end
  object mgtype: TFDQuery
    IndexFieldNames = 'NAME'
    Connection = RUT.FDConnection1
    SQL.Strings = (
      'select * from magazin_type')
    Left = 24
    Top = 48
  end
  object addmagaz: TFDCommand
    Connection = RUT.FDConnection1
    CommandText.Strings = (
      
        'INSERT INTO magazin(ID, name,address,idowner,idtype) VALUES (gen' +
        '_id(gen_CONTRAGENTS_id,1),:name,:adres,(select id from contragen' +
        'ts where name=:idowner),(select id from magazin_type where name=' +
        ':idtyp))')
    ParamData = <
      item
        Name = 'NAME'
        ParamType = ptInput
      end
      item
        Name = 'ADRES'
        ParamType = ptInput
      end
      item
        Name = 'IDOWNER'
        ParamType = ptInput
      end
      item
        Name = 'IDTYP'
        ParamType = ptInput
      end>
    Left = 24
    Top = 328
  end
end
