object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1082#1083#1080#1077#1085#1090#1072
  ClientHeight = 392
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
      Left = 35
      Top = 24
      Width = 230
      Height = 24
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1076#1072#1085#1085#1099#1077' '#1082#1083#1080#1077#1085#1090#1072
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
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1082#1083#1080#1077#1085#1090#1072
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
        Width = 37
        Height = 24
        Caption = #1048#1084#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object namecont: TEdit
        Left = 168
        Top = 20
        Width = 121
        Height = 19
        TabOrder = 0
        Text = #1048#1084#1103
        OnClick = namecontClick
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
        Top = 15
        Width = 87
        Height = 24
        Caption = #1048#1048#1053'/'#1041#1048#1053
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object iinbiin: TEdit
        Left = 168
        Top = 17
        Width = 121
        Height = 19
        TabOrder = 0
        Text = #1048#1048#1053'/'#1041#1048#1053
        OnClick = iinbiinClick
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
        Width = 83
        Height = 24
        Caption = #1060#1072#1084#1080#1083#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object surnamecont: TEdit
        Left = 168
        Top = 18
        Width = 121
        Height = 19
        TabOrder = 0
        Text = #1060#1072#1084#1080#1083#1080#1103
        OnClick = surnamecontClick
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
        Width = 60
        Height = 24
        Caption = #1053#1086#1084#1077#1088
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object numbercont: TEdit
        Left = 168
        Top = 18
        Width = 121
        Height = 19
        TabOrder = 0
        Text = #1053#1086#1084#1077#1088
        OnClick = numbercontClick
      end
    end
  end
  object addcontr: TFDCommand
    Connection = RUT.FDConnection1
    CommandText.Strings = (
      
        'INSERT INTO contragents(ID, name,ibinn,surname,number) VALUES (g' +
        'en_id(gen_CONTRAGENTS_id,1),:name,:ibn,:surname,:number)')
    ParamData = <
      item
        Name = 'NAME'
        ParamType = ptInput
      end
      item
        Name = 'IBN'
        ParamType = ptInput
      end
      item
        Name = 'SURNAME'
        ParamType = ptInput
      end
      item
        Name = 'NUMBER'
        ParamType = ptInput
      end>
    Left = 296
    Top = 32
  end
end
