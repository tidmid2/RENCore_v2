object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #1057#1086#1079#1076#1072#1090#1100' '#1089#1076#1077#1083#1082#1091
  ClientHeight = 568
  ClientWidth = 1088
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
  object Panel3: TPanel
    Left = -1
    Top = 0
    Width = 1089
    Height = 569
    Caption = 'Panel3'
    TabOrder = 0
    object Panel4: TPanel
      Left = 129
      Top = 129
      Width = 960
      Height = 130
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Label8: TLabel
        Left = 336
        Top = -56
        Width = 31
        Height = 13
        Caption = 'Label8'
      end
      object Label10: TLabel
        Left = 219
        Top = 72
        Width = 4
        Height = 17
        Color = clMedGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 373
        Top = 80
        Width = 145
        Height = 21
        KeyField = 'ID'
        ListField = 'NAME'
        ListSource = RUT.DataSource1
        TabOrder = 0
        Visible = False
      end
      object Panel5: TPanel
        Left = -1
        Top = -1
        Width = 961
        Height = 41
        Color = clHighlight
        ParentBackground = False
        TabOrder = 1
        object Label12: TLabel
          Left = 220
          Top = 7
          Width = 55
          Height = 16
          Caption = #1052#1072#1075#1072#1079#1080#1085
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object cxDBLabel9: TcxDBLabel
        Left = 29
        Top = 70
        DataBinding.DataField = 'NAME'
        DataBinding.DataSource = RUT.DataSource1
        ParentColor = False
        ParentFont = False
        Style.BorderColor = clMedGray
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -14
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.Shadow = False
        Style.TextStyle = []
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        Height = 25
        Width = 105
      end
    end
    object Panel6: TPanel
      Left = 127
      Top = 257
      Width = 962
      Height = 130
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 375
        Top = 72
        Width = 145
        Height = 21
        KeyField = 'ID'
        ListField = 'NAME'
        ListSource = RUT.DataSource1
        TabOrder = 0
        Visible = False
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1089
        Height = 41
        Color = clHighlight
        ParentBackground = False
        TabOrder = 1
        object Label6: TLabel
          Left = 220
          Top = 8
          Width = 76
          Height = 16
          Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object cxDBLabel8: TcxDBLabel
        Left = 220
        Top = 72
        DataBinding.DataField = 'NAME'
        DataBinding.DataSource = RUT.DataSource1
        ParentColor = False
        ParentFont = False
        Style.BorderColor = clMedGray
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -14
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.Shadow = False
        Style.TextStyle = []
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        Height = 25
        Width = 105
      end
    end
    object Panel8: TPanel
      Left = 127
      Top = 384
      Width = 962
      Height = 130
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 375
        Top = 72
        Width = 145
        Height = 21
        KeyField = 'ID'
        ListField = 'NAME'
        ListSource = RUT.DataSource1
        TabOrder = 0
        Visible = False
      end
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 1089
        Height = 41
        Color = clHighlight
        ParentBackground = False
        TabOrder = 1
        object Label7: TLabel
          Left = 220
          Top = 9
          Width = 97
          Height = 16
          Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object cxDBLabel6: TcxDBLabel
        Left = 220
        Top = 71
        DataBinding.DataField = 'NAME'
        DataBinding.DataSource = RUT.DataSource1
        ParentColor = False
        ParentFont = False
        Style.BorderColor = clMedGray
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -14
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.Shadow = False
        Style.TextStyle = []
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        Height = 25
        Width = 105
      end
    end
    object Button5: TButton
      Left = 967
      Top = 526
      Width = 113
      Height = 25
      Caption = #1059#1090#1074#1077#1088#1076#1080#1090#1100
      TabOrder = 3
      OnClick = Button1Click2
    end
    object Button6: TButton
      Left = 831
      Top = 526
      Width = 113
      Height = 25
      Caption = #1047#1072#1076#1072#1090#1100' '#1091#1089#1090#1072#1085#1086#1074#1082#1091
      TabOrder = 4
      OnClick = Button1Click3
    end
  end
  object Panel10: TPanel
    Left = -1
    Top = -1
    Width = 129
    Height = 515
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 1
    object Button1: TButton
      Left = 9
      Top = 71
      Width = 113
      Height = 25
      Caption = #1053#1086#1074#1099#1081' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 10
      Top = 200
      Width = 113
      Height = 25
      Caption = #1053#1086#1074#1099#1081' '#1084#1072#1075#1072#1079#1080#1085
      TabOrder = 1
      OnClick = addmagazine
    end
    object Button3: TButton
      Left = 8
      Top = 329
      Width = 113
      Height = 25
      Caption = '+ '#1055#1088#1086#1075#1088#1072#1084#1084#1072
      TabOrder = 2
      OnClick = Button1Click3
    end
    object Button4: TButton
      Left = 8
      Top = 456
      Width = 113
      Height = 25
      Caption = '+ '#1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      TabOrder = 3
      OnClick = Button1Click3
    end
  end
  object Panel1: TPanel
    Left = 128
    Top = -1
    Width = 962
    Height = 130
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object Label9: TLabel
      Left = 392
      Top = 69
      Width = 4
      Height = 17
      Color = clMedGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label11: TLabel
      Left = 551
      Top = 69
      Width = 4
      Height = 17
      Color = clMedGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label13: TLabel
      Left = 702
      Top = 69
      Width = 4
      Height = 17
      Color = clMedGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label14: TLabel
      Left = 29
      Top = 69
      Width = 134
      Height = 17
      Caption = '*'#1040#1042#1058#1054#1053#1040#1047#1053#1040#1063#1045#1053#1048#1045'*'
      Color = clMedGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 813
      Top = 102
      Width = 145
      Height = 21
      KeyField = 'ID'
      TabOrder = 0
      Visible = False
    end
    object Panel2: TPanel
      Left = -1
      Top = 0
      Width = 961
      Height = 41
      Color = clHighlight
      ParentBackground = False
      TabOrder = 1
      object Label1: TLabel
        Left = 30
        Top = 9
        Width = 138
        Height = 19
        Caption = #1053#1086#1084#1077#1088' '#1076#1086#1075#1086#1074#1086#1088#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 220
        Top = 12
        Width = 96
        Height = 16
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 552
        Top = 12
        Width = 26
        Height = 16
        Caption = #1048#1084#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 703
        Top = 12
        Width = 60
        Height = 16
        Caption = #1060#1072#1084#1080#1083#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 393
        Top = 12
        Width = 59
        Height = 16
        Caption = #1048#1053#1053'/'#1041#1048#1053
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object cxDBLabel1: TcxDBLabel
      Left = 218
      Top = 67
      DataBinding.DataField = 'NAME'
      DataBinding.DataSource = RUT.DataSource1
      ParentColor = False
      ParentFont = False
      Style.BorderColor = clMedGray
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -14
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.Shadow = False
      Style.TextStyle = []
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      Height = 25
      Width = 105
    end
  end
  object contr: TFDQuery
    IndexFieldNames = 'NAME'
    Connection = RUT.FDConnection1
    SQL.Strings = (
      'select * from contragents')
    Left = 272
    Top = 520
  end
  object contrset: TDataSource
    DataSet = contr
    Left = 224
    Top = 520
  end
  object addnewdoc: TFDCommand
    Connection = RUT.FDConnection1
    CommandText.Strings = (
      
        'INSERT INTO documents(ID, idpeople,idclient,activation,descr,ido' +
        'per) '
      
        'VALUES (gen_id(gen_documents_id,1),(select id from peoples where' +
        ' name=:peop),(select id from contragents where name=:idcont),0,:' +
        'comment,1)')
    ParamData = <
      item
        Name = 'PEOP'
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDCONT'
        ParamType = ptInput
      end
      item
        Name = 'COMMENT'
        ParamType = ptInput
      end>
    Left = 407
    Top = 520
  end
end
