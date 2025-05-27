object Form1: TForm1
  Left = 624
  Top = 269
  Width = 381
  Height = 343
  Caption = 'SIP - Tup'#227
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
  object Button1: TButton
    Left = 32
    Top = 48
    Width = 145
    Height = 28
    Caption = '1. Importar Dados'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 112
    Width = 145
    Height = 28
    Caption = '3. Processar Dados'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 32
    Top = 80
    Width = 145
    Height = 28
    Caption = '2. Alterar Datas'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 32
    Top = 144
    Width = 145
    Height = 28
    Caption = '4. Exportar Dados'
    TabOrder = 3
    OnClick = Button4Click
  end
  object XPManifest1: TXPManifest
    Left = 40
    Top = 8
  end
  object ZConnection1: TZConnection
    Protocol = 'postgresql'
    HostName = '192.168.14.2'
    Port = 5432
    Database = 'DBSIP'
    User = 'postgres'
    Password = 'porcos128'
    AutoCommit = True
    ReadOnly = False
    TransactIsolationLevel = tiNone
    Connected = False
    SQLHourGlass = False
    Left = 8
    Top = 8
  end
  object QrySip: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'select * from tbSip')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 168
    Top = 48
    object QrySipcodadm: TIntegerField
      FieldName = 'codadm'
    end
    object QrySipnumcontr: TIntegerField
      FieldName = 'numcontr'
    end
    object QrySipcodusuario: TIntegerField
      FieldName = 'codusuario'
    end
    object QrySipparentesco: TIntegerField
      FieldName = 'parentesco'
    end
    object QrySipnumguia: TIntegerField
      FieldName = 'numguia'
    end
    object QrySipguia: TStringField
      FieldName = 'guia'
      Size = 10
    end
    object QrySiptipoguia: TIntegerField
      FieldName = 'tipoguia'
    end
    object QrySipcontr: TStringField
      FieldName = 'contr'
      Size = 1
    end
    object QrySipgruproced: TIntegerField
      FieldName = 'gruproced'
    end
    object QrySipsubproced: TIntegerField
      FieldName = 'subproced'
    end
    object QrySipcodproced: TIntegerField
      FieldName = 'codproced'
    end
    object QrySipvalorguia: TFloatField
      FieldName = 'valorguia'
    end
    object QrySipvalorfilme: TFloatField
      FieldName = 'valorfilme'
    end
    object QrySipvalortaxa: TFloatField
      FieldName = 'valortaxa'
    end
    object QrySipcodesp: TIntegerField
      FieldName = 'codesp'
    end
    object QrySipdatservico: TDateField
      FieldName = 'datservico'
    end
    object QrySipqtdeproc: TFloatField
      FieldName = 'qtdeproc'
    end
    object QrySipdatnasc: TDateField
      FieldName = 'datnasc'
    end
    object QrySipdatbaixa: TDateField
      FieldName = 'datbaixa'
    end
    object QrySipcid: TStringField
      FieldName = 'cid'
      Size = 5
    end
    object QrySipsexo: TStringField
      FieldName = 'sexo'
      Size = 3
    end
    object QrySiptipoint: TStringField
      FieldName = 'tipoint'
      Size = 1
    end
    object QrySipsipok: TBooleanField
      FieldName = 'sipok'
    end
    object QrySipsipclas: TStringField
      FieldName = 'sipclas'
      Size = 10
    end
    object QrySipsipclas2: TStringField
      FieldName = 'sipclas2'
      Size = 10
    end
    object QrySipcodpessoapgto: TIntegerField
      FieldName = 'codpessoapgto'
    end
    object QrySipnomepessoapgto: TStringField
      FieldName = 'nomepessoapgto'
      Size = 80
    end
    object QrySipdatapgto: TDateField
      FieldName = 'datapgto'
    end
    object QrySiptipoproced: TStringField
      FieldName = 'tipoproced'
      Size = 2
    end
  end
  object QryDelSip: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'delete from tbSip')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 200
    Top = 48
    object IntegerField1: TIntegerField
      FieldName = 'codadm'
    end
    object IntegerField2: TIntegerField
      FieldName = 'numcontr'
    end
    object IntegerField3: TIntegerField
      FieldName = 'codusuario'
    end
    object IntegerField4: TIntegerField
      FieldName = 'parentesco'
    end
    object IntegerField5: TIntegerField
      FieldName = 'numguia'
    end
    object StringField1: TStringField
      FieldName = 'guia'
      Size = 10
    end
    object IntegerField6: TIntegerField
      FieldName = 'tipoguia'
    end
    object StringField2: TStringField
      FieldName = 'contr'
      Size = 1
    end
    object IntegerField7: TIntegerField
      FieldName = 'gruproced'
    end
    object IntegerField8: TIntegerField
      FieldName = 'subproced'
    end
    object IntegerField9: TIntegerField
      FieldName = 'codproced'
    end
    object FloatField1: TFloatField
      FieldName = 'valorguia'
    end
    object FloatField2: TFloatField
      FieldName = 'valorfilme'
    end
    object FloatField3: TFloatField
      FieldName = 'valortaxa'
    end
    object IntegerField10: TIntegerField
      FieldName = 'codesp'
    end
    object DateField1: TDateField
      FieldName = 'datservico'
    end
    object FloatField4: TFloatField
      FieldName = 'qtdeproc'
    end
    object DateField2: TDateField
      FieldName = 'datnasc'
    end
    object DateField3: TDateField
      FieldName = 'datbaixa'
    end
    object StringField3: TStringField
      FieldName = 'cid'
      Size = 5
    end
    object StringField4: TStringField
      FieldName = 'sexo'
      Size = 3
    end
    object StringField5: TStringField
      FieldName = 'tipoint'
      Size = 1
    end
    object BooleanField1: TBooleanField
      FieldName = 'sipok'
    end
    object StringField6: TStringField
      FieldName = 'sipclas'
      Size = 10
    end
    object StringField7: TStringField
      FieldName = 'sipclas2'
      Size = 10
    end
  end
  object QryConsultas: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      'update tbSip'
      'set SipClas = CASE WHEN CodEsp = 0 THEN '#39'A1.'#39
      '               WHEN CodEsp = 1 THEN '#39'A1.1'#39
      '               WHEN CodEsp = 2 THEN '#39'A1.'#39
      '               WHEN CodEsp = 3 THEN '#39'A1.'#39
      '               WHEN CodEsp = 4 THEN '#39'A1.3'#39
      '               WHEN CodEsp = 5 THEN '#39'A1.4'#39
      '               WHEN CodEsp = 6 THEN '#39'A1.'#39
      '               WHEN CodEsp = 7 THEN '#39'A1.'#39
      '               WHEN CodEsp = 8 THEN '#39'A1.2'#39
      '               WHEN CodEsp = 9 THEN '#39'A1.5'#39
      '               WHEN CodEsp = 10 THEN '#39'A1.6'#39
      '               WHEN CodEsp = 11 THEN '#39'A1.8'#39
      '               WHEN CodEsp = 12 THEN '#39'A1.10'#39
      '               WHEN CodEsp = 13 THEN '#39'A1.'#39
      '               WHEN CodEsp = 14 THEN '#39'A1.'#39
      '               WHEN CodEsp = 15 THEN '#39'A1.12'#39
      '               WHEN CodEsp = 16 THEN '#39'A1.13'#39
      '               WHEN CodEsp = 17 THEN '#39'A1.'#39
      '               WHEN CodEsp = 18 THEN '#39'A1.14'#39
      '               WHEN CodEsp = 19 THEN '#39'A1.15'#39
      '               WHEN CodEsp = 20 THEN '#39'A1.16'#39
      '               WHEN CodEsp = 21 THEN '#39'A1.24'#39
      '               WHEN CodEsp = 22 THEN '#39'A1.18'#39
      '               WHEN CodEsp = 23 THEN '#39'A1.'#39
      '               WHEN CodEsp = 24 THEN '#39'A1.19'#39
      '               WHEN CodEsp = 25 THEN '#39'A1.'#39
      '               WHEN CodEsp = 26 THEN '#39'A1.21'#39
      '               WHEN CodEsp = 27 THEN '#39'A1.'#39
      '               WHEN CodEsp = 28 THEN '#39'A1.'#39
      '               WHEN CodEsp = 29 THEN '#39'A1.'#39
      '               WHEN CodEsp = 30 THEN '#39'A1.25'#39
      '               WHEN CodEsp = 31 THEN '#39'A1.2'#39
      '               WHEN CodEsp = 32 THEN '#39'A1.'#39
      '               WHEN CodEsp = 33 THEN '#39'A1.'#39
      '               WHEN CodEsp = 34 THEN '#39'A2.'#39
      '               WHEN CodEsp = 35 THEN '#39'A1.'#39
      '               WHEN CodEsp = 36 THEN '#39'A1.'#39
      '               WHEN CodEsp = 37 THEN '#39'A2.'#39
      '               WHEN CodEsp = 38 THEN '#39'A2.'#39
      '               WHEN CodEsp = 39 THEN '#39'A1.22'#39
      '               WHEN CodEsp = 40 THEN '#39'A1.'#39
      '               WHEN CodEsp = 41 THEN '#39'A1.'#39
      '               WHEN CodEsp = 42 THEN '#39'A1.'#39
      '               WHEN CodEsp = 43 THEN '#39'A1.'#39
      '               WHEN CodEsp = 44 THEN '#39'A1.'#39
      '               WHEN CodEsp = 45 THEN '#39'A1.7'#39
      '               WHEN CodEsp = 46 THEN '#39'A1.'#39
      '               WHEN CodEsp = 47 THEN '#39'A1.'#39
      '               WHEN CodEsp = 48 THEN '#39'A1.'#39
      '               WHEN CodEsp = 49 THEN '#39'A1.'#39
      '               WHEN CodEsp = 50 THEN '#39'A1.23'#39
      '               WHEN CodEsp = 51 THEN '#39'A1.20'#39
      '               WHEN CodEsp = 52 THEN '#39'A1.9'#39
      '               WHEN CodEsp = 53 THEN '#39'A1.'#39
      '               WHEN CodEsp = 54 THEN '#39'A1.11'#39
      '               WHEN CodEsp = 55 THEN '#39'A1.'#39
      '               WHEN CodEsp = 56 THEN '#39'A1.17'#39
      '               WHEN CodEsp = 57 THEN '#39'A1.17'#39
      '               WHEN CodEsp = 58 THEN '#39'A1.'#39
      '               WHEN CodEsp = 59 THEN '#39'A1.'#39
      '               WHEN CodEsp = 60 THEN '#39'A1.'#39
      '               WHEN CodEsp = 61 THEN '#39'A1.'#39
      '               WHEN CodEsp = 62 THEN '#39'A1.'#39
      '               WHEN CodEsp = 63 THEN '#39'A1.'#39
      '               WHEN CodEsp = 64 THEN '#39'A1.'#39
      '               WHEN CodEsp = 65 THEN '#39'A1.'#39
      '               WHEN CodEsp = 66 THEN '#39'A1.'#39
      '               WHEN CodEsp = 67 THEN '#39'A1.'#39
      '               WHEN CodEsp = 68 THEN '#39'A1.8'#39
      '               WHEN CodEsp = 69 THEN '#39'A1.8'#39
      '               WHEN CodEsp = 70 THEN '#39'A1.'#39
      '               WHEN CodEsp = 71 THEN '#39'A1.'#39
      '               WHEN CodEsp = 72 THEN '#39'A1.'#39
      '               WHEN CodEsp = 73 THEN '#39'A1.'#39
      '               WHEN CodEsp = 74 THEN '#39'A1.'#39
      '               WHEN CodEsp = 75 THEN '#39'A1.'#39
      '               WHEN CodEsp = 76 THEN '#39'A1.2'#39
      '               WHEN CodEsp = 77 THEN '#39'A1.2'#39
      '               WHEN CodEsp = 78 THEN '#39'A1.20'#39
      '               WHEN CodEsp = 79 THEN '#39'A1.'#39
      '               WHEN CodEsp = 80 THEN '#39'A1.'#39
      '               WHEN CodEsp = 81 THEN '#39'A1.'#39
      '               WHEN CodEsp = 82 THEN '#39'A1.'#39
      '               WHEN CodEsp = 83 THEN '#39'A1.10'#39
      '               WHEN CodEsp = 84 THEN '#39'A1.'#39
      '               WHEN CodEsp = 99 THEN '#39'A1.'#39
      '               ELSE '#39'A1.'#39
      '          END,'
      '          SipOk = True'
      'where Guia = '#39'Normal'#39' and'
      '      gruproced = 0 and'
      '      subproced = 1 and'
      '      codproced = 14 and'
      '       SipOk = False')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 168
    Top = 112
  end
  object QryData: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'select DatServico, DatBaixa from TbSip')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 168
    Top = 80
    object QryDatadatservico: TDateField
      FieldName = 'datservico'
    end
    object QryDatadatbaixa: TDateField
      FieldName = 'datbaixa'
    end
  end
  object QryConsultasPS: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      'update tbSip'
      'set SipClas = '#39'A2.'#39', SipOk = True'
      'where gruproced = 0 and'
      '      subproced = 1 and'
      '      ( codproced = 73 or'
      '        codproced = 71 ) and'
      '      SipOk = False')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 200
    Top = 112
  end
  object QryItensB: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      'update tbSip'
      'set SipClas = '#39'B1'#39', SipOk = True'
      
        'where ( guia = '#39'Normal'#39' or ( Guia = '#39'Hospitalar'#39' and TipoGuia = ' +
        '4  ) )and'
      '      SipOk = False and'
      '      TipoProced = '#39'25'#39';'
      ''
      'update tbSip'
      'set SipClas = '#39'B2'#39', SipOk = True'
      
        'where ( guia = '#39'Normal'#39' or ( Guia = '#39'Hospitalar'#39' and TipoGuia = ' +
        '4  ) )and'
      '      SipOk = False and'
      
        '      ( ( gruproced = 10 and subproced = 10 and codproced = 1144' +
        '  ) or '
      
        '        ( gruproced = 0 and subproced = 1 and codproced = 6004  ' +
        ') or '
      
        '        ( gruproced = 50 and subproced = 0 and codproced = 586  ' +
        ') or '
      
        '        ( gruproced = 50 and subproced = 0 and codproced = 616  ' +
        ') );'
      ''
      'update tbSip'
      'set SipClas = '#39'B3'#39', SipOk = True'
      
        'where ( guia = '#39'Normal'#39' or ( Guia = '#39'Hospitalar'#39' and TipoGuia = ' +
        '4  ) )and'
      '      SipOk = False and'
      
        '      ( ( gruproced = 10 and subproced = 10 and codproced = 1179' +
        '  ) or '
      
        '        ( gruproced = 50 and subproced = 0 and codproced = 560 )' +
        ');'
      ''
      'update tbSip'
      'set SipClas = '#39'B4'#39', SipOk = True'
      
        'where ( guia = '#39'Normal'#39' or ( Guia = '#39'Hospitalar'#39' and TipoGuia = ' +
        '4  ) )and'
      '      SipOk = False and'
      
        '      ( ( gruproced = 10 and subproced = 10 and codproced = 1136' +
        ' ) or '
      
        '        ( gruproced = 0 and subproced = 1 and codproced = 16 ) o' +
        'r '
      
        '        ( gruproced = 0 and subproced = 1 and codproced = 17 ) o' +
        'r '
      
        '        ( gruproced = 0 and subproced = 1 and codproced = 21 ) o' +
        'r '
      
        '        ( gruproced = 10 and subproced = 10 and codproced = 1160' +
        ' ) or '
      
        '        ( gruproced = 50 and subproced = 0 and codproced = 55 ) ' +
        'or '
      
        '        ( gruproced = 50 and subproced = 0 and codproced = 80 ))' +
        ';'
      ''
      'update tbSip'
      'set SipClas = '#39'B5'#39', SipOk = True'
      
        'where ( guia = '#39'Normal'#39' or ( Guia = '#39'Hospitalar'#39' and TipoGuia = ' +
        '4  ) )and'
      '      SipOk = False and'
      
        '      ( ( gruproced = 10 and subproced = 20 and codproced = 1017' +
        ' ) or '
      
        '        ( gruproced = 20 and subproced = 10 and codproced = 4219' +
        ' ) or '
      
        '        ( gruproced = 12 and subproced = 1 and codproced = 14 ) ' +
        'or '
      
        '        ( gruproced = 20 and subproced = 10 and codproced = 4227' +
        ' ) or '
      
        '        ( gruproced = 12 and subproced = 1 and codproced = 49 ) ' +
        'or'
      
        '        ( gruproced = 10 and subproced = 10 and codproced = 1187' +
        ' ) or '
      
        '        ( gruproced = 20 and subproced = 10 and codproced = 4197' +
        ' ) or '
      
        '        ( gruproced = 12 and subproced = 1 and codproced = 30 ) ' +
        'or '
      
        '        ( gruproced = 20 and subproced = 10 and codproced = 4200' +
        ' ) or '
      
        '        ( gruproced = 12 and subproced = 1 and codproced = 22 ) ' +
        'or '
      
        '        ( gruproced = 0 and subproced = 1 and codproced = 5156 )' +
        ' or '
      
        '        ( gruproced = 12 and subproced = 1 and codproced = 10 ) ' +
        'or '
      
        '        ( gruproced = 12 and subproced = 1 and codproced = 57 ) ' +
        'or'
      
        '        ( gruproced = 50 and subproced = 0 and codproced = 470 )' +
        ' or'
      
        '        ( gruproced = 50 and subproced = 0 and codproced = 462 )' +
        ' or'
      
        '        ( gruproced = 50 and subproced = 0 and codproced = 489 )' +
        ' );'
      ''
      'update tbsip'
      'set qtdeproc = 0'
      'where TipoProced = '#39'T'#39';'
      ''
      'update TbSip '
      'set SipClas = '#39'B'#39', SipOk = True'
      'where Guia = '#39'Hospitalar'#39' and'
      '      TipoGuia = 4 and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      '                  where a.Guia = '#39'Hospitalar'#39' and'
      '                        a.TipoGuia = 4 and'
      '                        a.gruproced = 0 and'
      '                        a.subproced = 1 and'
      '                        a.SipOk = True );')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 232
    Top = 112
  end
  object QryItensC1: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      'update tbSip'
      'set SipClas = '#39'C1.'#39', SipOk = True'
      'where tipoproced = '#39'36'#39' and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'C1.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      '                        tipoproced = '#39'36'#39' and'
      '                        a.SipOk = True );'
      ''
      'update tbSip'
      'set SipClas = '#39'C2.'#39', SipOk = True'
      'where tipoproced = '#39'34'#39' and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'C2.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      '                        tipoproced = '#39'34'#39' and'
      '                        a.SipOk = True );'
      ''
      'update tbSip'
      'set SipClas = '#39'C3.'#39', SipOk = True'
      'where gruproced = 21 and'
      '      subproced = 1 and'
      '      codproced = 56 and'
      '      sexo = '#39'F'#39' and'
      
        '      extract( year from age( DatServico, datnasc ) ) between 25' +
        ' and 64 and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'C3.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      '                        gruproced = 21 and'
      '                        subproced = 1 and'
      '                        codproced = 56 and'
      '                        sexo = '#39'F'#39' and'
      
        '                        extract( year from age( DatServico, datn' +
        'asc ) ) between 25 and 64 and'
      '                        a.SipOk = True );'
      ''
      'update tbSip'
      'set SipClas = '#39'C4.'#39', SipOk = True'
      
        'where ( ( gruproced = 32 and subproced = 8 and codproced = 85 ) ' +
        'or'
      
        '        ( gruproced = 32 and subproced = 8 and codproced = 115 )' +
        ' or'
      
        '        ( gruproced = 31 and subproced = 11 and codproced = 61 )' +
        ' or'
      
        '        ( gruproced = 40 and subproced = 80 and codproced = 8122' +
        ' ) or'
      
        '        ( gruproced = 40 and subproced = 80 and codproced = 8130' +
        ' ) or'
      
        '        ( gruproced = 40 and subproced = 80 and codproced = 8149' +
        ' ) ) and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      ''
      'update TbSip '
      'set SipClas = '#39'C4.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      
        '                        ( ( gruproced = 32 and subproced = 8 and' +
        ' codproced = 85 ) or'
      
        '                          ( gruproced = 32 and subproced = 8 and' +
        ' codproced = 115 ) or'
      
        '                          ( gruproced = 31 and subproced = 11 an' +
        'd codproced = 61 ) or'
      
        '                          ( gruproced = 40 and subproced = 80 an' +
        'd codproced = 8122 ) or'
      
        '                          ( gruproced = 40 and subproced = 80 an' +
        'd codproced = 8130 ) or'
      
        '                          ( gruproced = 40 and subproced = 80 an' +
        'd codproced = 8149 ) ) and'
      '                        a.SipOk = True );'
      ''
      ''
      'update tbSip'
      'set SipClas = '#39'C5.'#39', SipOk = True'
      
        'where ( ( gruproced = 20 and subproced = 1 and codproced = 141 )' +
        ' ) and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      ''
      'update TbSip '
      'set SipClas = '#39'C5.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      
        '                        ( ( gruproced = 20 and subproced = 1 and' +
        ' codproced = 141 ) ) and'
      '                        a.SipOk = True );'
      ''
      '')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 264
    Top = 112
  end
  object QryItensC2: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      'update tbSip'
      'set SipClas = '#39'C6.'#39', SipOk = True'
      
        'where ( ( gruproced = 24 and subproced = 1 and codproced = 40 ) ' +
        'or'
      
        '        ( gruproced = 24 and subproced = 4 and codproced = 10 ) ' +
        ') and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      ''
      'update TbSip '
      'set SipClas = '#39'C6.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      
        '                        ( ( gruproced = 24 and subproced = 1 and' +
        ' codproced = 40 ) or'
      
        '                          ( gruproced = 24 and subproced = 4 and' +
        ' codproced = 10 ) ) and'
      '                        a.SipOk = True );'
      ''
      'update tbSip'
      'set SipClas = '#39'C7.'#39', SipOk = True'
      'where gruproced = 23 and'
      '      subproced = 1 and'
      '      codproced = 37 and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'C7.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      '                        gruproced = 23 and'
      '                        subproced = 1 and'
      '                        codproced = 37 and'
      '                        a.SipOk = True );'
      ''
      'update tbSip'
      'set SipClas = '#39'C8.'#39', SipOk = True'
      'where gruproced = 23 and'
      '      subproced = 1 and'
      '      codproced = 29 and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'C8.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      '                        gruproced = 23 and'
      '                        subproced = 1 and'
      '                        codproced = 29 and'
      '                        a.SipOk = True );'
      ''
      'update tbSip'
      'set SipClas = '#39'C9.'#39', SipOk = True'
      
        'where ( ( gruproced = 20 and subproced = 1 and codproced = 52 ) ' +
        'or'
      
        '        ( gruproced = 30 and subproced = 10 and codproced = 2020' +
        ' ) or'
      
        '        ( gruproced = 20 and subproced = 1 and codproced = 79 ) ' +
        ') and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'C9.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      
        '                        ( ( gruproced = 20 and subproced = 1 and' +
        ' codproced = 52 ) or'
      
        '                          ( gruproced = 30 and subproced = 10 an' +
        'd codproced = 2020 ) or'
      
        '                          ( gruproced = 20 and subproced = 1 and' +
        ' codproced = 79 ) ) and'
      '                        a.SipOk = True );'
      ''
      'update tbSip'
      'set SipClas = '#39'C10.1'#39', SipOk = True'
      
        'where ( ( gruproced = 32 and subproced = 8 and codproced = 50 ) ' +
        'or '
      
        '        ( gruproced = 40 and subproced = 80 and codproced = 8041' +
        ' ) ) and'
      '      sexo = '#39'F'#39' and'
      
        '      extract( year from age( DatServico, datnasc ) ) between 50' +
        ' and 69 and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'C10.1'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      
        '                        ( ( gruproced = 32 and subproced = 8 and' +
        ' codproced = 50 ) or '
      
        '                          ( gruproced = 40 and subproced = 80 an' +
        'd codproced = 8041 ) ) and'
      '                        sexo = '#39'F'#39' and'
      
        '                        extract( year from age( DatServico, datn' +
        'asc ) ) between 50 and 69 and'
      '                        a.SipOk = True );'
      ''
      'update tbSip'
      'set SipClas = '#39'C10.'#39', SipOk = True'
      
        'where ( ( gruproced = 32 and subproced = 8 and codproced = 50 ) ' +
        'or '
      
        '        ( gruproced = 40 and subproced = 80 and codproced = 8041' +
        ' ) ) and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'C10.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      
        '                        ( ( gruproced = 32 and subproced = 8 and' +
        ' codproced = 50 ) or '
      
        '                          ( gruproced = 40 and subproced = 80 an' +
        'd codproced = 8041 ) ) and'
      '                        a.SipOk = True and'
      '                        a.SipClas = '#39'C10.'#39' );'
      ''
      ''
      '')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 296
    Top = 112
  end
  object QryItensC3: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      'update tbSip'
      'set SipClas = '#39'C11.'#39', SipOk = True'
      
        'where ( ( gruproced = 31 and subproced = 1 and codproced = 40 ) ' +
        'or '
      
        '        ( gruproced = 40 and subproced = 70 and codproced = 1069' +
        ' ) or '
      
        '        ( gruproced = 40 and subproced = 70 and codproced = 1140' +
        ' ) ) and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'C11.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      
        '                        ( ( gruproced = 31 and subproced = 1 and' +
        ' codproced = 40 ) or '
      
        '                          ( gruproced = 40 and subproced = 70 an' +
        'd codproced = 1069 ) or '
      
        '                          ( gruproced = 40 and subproced = 70 an' +
        'd codproced = 1140 ) ) and'
      '                        a.SipOk = True );'
      ''
      'update tbSip'
      'set SipClas = '#39'C12.'#39', SipOk = True'
      
        'where ( ( gruproced = 31 and subproced = 4 and codproced = 71 ) ' +
        'or '
      
        '        ( gruproced = 31 and subproced = 4 and codproced = 80 ) ' +
        ') and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'C12.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      
        '                         ( ( gruproced = 31 and subproced = 4 an' +
        'd codproced = 71 ) or '
      
        '                           ( gruproced = 31 and subproced = 4 an' +
        'd codproced = 80 ) ) and'
      '                        a.SipOk = True );'
      ''
      ''
      'update tbSip'
      'set SipClas = '#39'C13.'#39', SipOk = True'
      
        'where ( ( gruproced = 28 and subproced = 1 and codproced = 1023 ' +
        ')) and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'C13.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      
        '                         ( ( gruproced = 28 and subproced = 1 an' +
        'd codproced = 1023 )) and'
      '                        a.SipOk = True );'
      ''
      'update tbSip'
      'set SipClas = '#39'C14.'#39', SipOk = True'
      'where gruproced = 28 and'
      '      subproced = 3 and'
      '      codproced = 176 and'
      
        '      extract( year from age( DatServico, datnasc ) ) between 50' +
        ' and 69 and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'C14.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      '                        gruproced = 28 and'
      '                        subproced = 3 and'
      '                        codproced = 176 and'
      
        '                        extract( year from age( DatServico, datn' +
        'asc ) ) between 50 and 69 and'
      '                        a.SipOk = True );'
      ''
      ''
      'update tbSip'
      'set SipClas = '#39'C15.'#39', SipOk = True'
      'where TipoProced = '#39'32'#39' and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'C15.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      '                         TipoProced = '#39'32'#39' and'
      '                        a.SipOk = True );'
      ''
      'update tbSip'
      'set SipClas = '#39'C16.'#39', SipOk = True'
      
        'where ( ( gruproced = 20 and subproced = 1 and codproced = 36 ) ' +
        'or '
      
        '        ( gruproced = 20 and subproced = 1 and codproced = 28 ) ' +
        ') and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'C16.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      
        '                        ( ( gruproced = 20 and subproced = 1 and' +
        ' codproced = 36 ) or '
      
        '                          ( gruproced = 20 and subproced = 1 and' +
        ' codproced = 28 ) ) and'
      '                        a.SipOk = True );')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 168
    Top = 144
  end
  object QryItensC4: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      'update tbSip'
      'set SipClas = '#39'C17.'#39', SipOk = True'
      
        'where ( ( gruproced = 33 and subproced = 1 and codproced = 21 ) ' +
        ') and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'C17.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      
        '                        ( ( gruproced = 33 and subproced = 1 and' +
        ' codproced = 21 ) ) and'
      '                        a.SipOk = True );'
      ''
      'update tbSip'
      'set SipClas = '#39'C18.'#39', SipOk = True'
      
        'where ( ( gruproced = 33 and subproced = 1 and codproced = 30 ) ' +
        ') and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'C18.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      
        '                        ( ( gruproced = 33 and subproced = 1 and' +
        ' codproced = 30 ) ) and'
      '                        a.SipOk = True );'
      ''
      'update tbSip'
      'set SipClas = '#39'C19.'#39', SipOk = True'
      
        'where ( ( gruproced = 33 and subproced = 1 and codproced = 13 ) ' +
        ') and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'C19.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      
        '                        ( ( gruproced = 33 and subproced = 1 and' +
        ' codproced = 13 ) ) and'
      '                        a.SipOk = True );'
      ''
      'update tbSip'
      'set SipClas = '#39'C20.'#39', SipOk = True'
      
        'where ( ( gruproced = 33 and subproced = 1 and codproced = 110 )' +
        ' ) and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'C20.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      
        '                        ( ( gruproced = 33 and subproced = 1 and' +
        ' codproced = 110 ) ) and'
      '                        a.SipOk = True );')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 200
    Top = 144
  end
  object QryItensD1: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      'update tbSip'
      'set SipClas = '#39'D1.'#39', SipOk = True'
      'where TipoProced = '#39'27'#39' and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'D1.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      '                        TipoProced = '#39'27'#39' and'
      '                        a.SipOk = True );'
      ''
      ''
      'update tbSip'
      'set SipClas = '#39'D2.'#39', SipOk = True'
      'where TipoProced = '#39'30'#39' and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'D2.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      '                        TipoProced = '#39'30'#39' and'
      '                        a.SipOk = True );'
      ''
      'update tbSip'
      'set SipClas = '#39'D3.'#39', SipOk = True'
      'where TipoProced = '#39'35'#39' and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'D3.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      '                        TipoProced = '#39'35'#39' and'
      '                        a.SipOk = True );'
      ''
      ''
      'update tbSip'
      'set SipClas = '#39'D4.'#39', SipOk = True'
      'where gruProced = 15 and subproced = 1 and codproced = 23 and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'D4.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      
        '                        gruProced = 15 and subproced = 1 and cod' +
        'proced = 23 and'
      '                        a.SipOk = True );'
      ''
      'update tbSip'
      'set SipClas = '#39'D5.'#39', SipOk = True'
      
        'where gruProced = 15 and subproced = 2 and ( codproced = 29 or c' +
        'odproced = 37 )and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'D5.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      
        '                        gruProced = 15 and subproced = 2 and ( c' +
        'odproced = 29 or codproced = 37 ) and'
      '                        a.SipOk = True );'
      ''
      ''
      'update tbSip'
      'set SipClas = '#39'D6.'#39', SipOk = True'
      
        'where ( ( gruproced = 31 and subproced = 30 and codproced = 3269' +
        ' ) or '
      
        '        ( gruproced = 31 and subproced = 30 and codproced = 3293' +
        ' ) ) and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      'update TbSip '
      'set SipClas = '#39'D6.'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      
        '                        ( ( gruproced = 31 and subproced = 30 an' +
        'd codproced = 3269 ) or '
      
        '                          ( gruproced = 31 and subproced = 30 an' +
        'd codproced = 3293 ) ) and'
      '                        a.SipOk = True );'
      ''
      'update tbSip'
      'set SipClas = '#39'C'#39', SipOk = True'
      'where ( TipoProced between '#39'19'#39' and '#39'24'#39' or'
      '        TipoProced between '#39'26'#39' and '#39'28'#39' or '
      '        TipoProced between '#39'31'#39' and '#39'34'#39' or'
      '        TipoProced between '#39'39'#39' and '#39'56'#39' or'
      '        TipoProced = '#39'36'#39' ) and'
      '( gruproced <> 56 or subproced <> 11 or codproced <> 103 ) and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      ''
      'update TbSip '
      'set SipClas = '#39'C'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      '                        ( TipoProced between '#39'19'#39' and '#39'24'#39' or'
      '                          TipoProced between '#39'26'#39' and '#39'28'#39' or '
      '                          TipoProced between '#39'31'#39' and '#39'34'#39' or'
      '                          TipoProced between '#39'39'#39' and '#39'56'#39' or'
      '                          TipoProced = '#39'36'#39' ) and'
      '( gruproced <> 56 or subproced <> 11 or codproced <> 103 ) and'
      '                        a.SipOk = True );'
      ''
      'update tbSip'
      'set SipClas = '#39'D'#39', SipOk = True'
      'where ( TipoProced = '#39'25'#39' or'
      '        TipoProced = '#39'29'#39' or '
      '        TipoProced = '#39'30'#39' or'
      '        TipoProced = '#39'35'#39' or'
      '        TipoProced = '#39'15'#39' or'
      
        '        ( gruproced = 0 and subproced = 5 and codproced = 16 ) )' +
        ' and'
      
        '      ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False; '
      ''
      ''
      'update TbSip '
      'set SipClas = '#39'D'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' and TipoGuia = 2 ) or ( Guia = '#39'Hospit' +
        'alar'#39' and TipoGuia = 4 ) ) and'
      '      SipOk = False and'
      '      TipoProced = '#39'T'#39' and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      
        '                  where ( ( a.Guia = '#39'Normal'#39' and a.TipoGuia = 2' +
        ' ) or ( a.Guia = '#39'Hospitalar'#39' and a.TipoGuia = 4 ) ) and'
      '                        ( TipoProced = '#39'25'#39' or'
      '                          TipoProced = '#39'29'#39' or '
      '                          TipoProced = '#39'30'#39' or'
      '                          TipoProced = '#39'35'#39' or'
      '                          TipoProced = '#39'15'#39' or'
      
        '                          ( gruproced = 0 and subproced = 5 and ' +
        'codproced = 16 ) ) and'
      '                        a.SipOk = True );'
      ''
      'update tbSip'
      'set SipClas = '#39'H'#39', SipOk = True'
      
        'where ( ( Guia = '#39'Normal'#39' ) or ( Guia = '#39'Hospitalar'#39' and TipoGui' +
        'a = 4 ) ) and'
      '      ( TipoProced = '#39'T'#39' or TipoProced = '#39'16'#39' ) and'
      '      SipOk = False; ')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 232
    Top = 144
  end
  object QryConfere: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      'select count(*) from TbSip'
      'where SipOk is false')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 328
    Top = 176
    object QryConferecount: TLargeintField
      FieldName = 'count'
      ReadOnly = True
    end
  end
  object QryItensE2: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      'update tbSip'
      'set SipClas = '#39'E2.1'#39', SipOk = True'
      
        'where ( ( gruproced = 43 and subproced = 2 and codproced = 259 )' +
        ' or'
      
        '             ( gruproced = 43 and subproced = 1 and codproced = ' +
        '237 ) or'
      
        '             ( gruproced = 31 and subproced = 0 and codproced = ' +
        '2390 )  ) and '
      '      Guia = '#39'Hospitalar'#39' and'
      '      TipoGuia = 3 and'
      '      SipOk = False;'
      '       '
      ''
      'update TbSip '
      'set SipClas = '#39'E2.1'#39', SipOk = True'
      'where Guia = '#39'Hospitalar'#39' and '
      '      TipoGuia = 3 and'
      '      SipOk = False and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      '                  where a.Guia = '#39'Hospitalar'#39' and '
      '                        ( a.TipoGuia = 3 or a.TipoGuia = 4 ) and'
      
        '                        ( ( gruproced = 43 and subproced = 2 and' +
        ' codproced = 259 ) or'
      
        '                          ( gruproced = 43 and subproced = 1 and' +
        ' codproced = 237 ) or'
      
        '                          ( gruproced = 31 and subproced = 0 and' +
        ' codproced = 2390 )  ) and '
      '                        a.SipOk = True and'
      '                        a.SipClas = '#39'E2.1'#39' );'
      ''
      'update tbSip'
      'set SipClas = '#39'E2.2'#39', SipOk = True'
      
        'where ( ( gruproced = 31 and subproced = 30 and codproced = 4010' +
        ' ) or'
      
        '        ( gruproced = 31 and subproced = 30 and codproced = 4052' +
        ' ) ) and '
      '      Guia = '#39'Hospitalar'#39' and'
      '      TipoGuia = 3 and'
      '      SipOk = False;'
      '       '
      ''
      'update TbSip '
      'set SipClas = '#39'E2.2'#39', SipOk = True'
      'where Guia = '#39'Hospitalar'#39' and '
      '      ( TipoGuia = 3 or TipoGuia = 4 ) and'
      '      SipOk = False and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      '                  where a.Guia = '#39'Hospitalar'#39' and '
      '                        a.TipoGuia = 3 and'
      
        '                        ( ( gruproced = 31 and subproced = 30 an' +
        'd codproced = 4010 ) or'
      
        '                          ( gruproced = 31 and subproced = 30 an' +
        'd codproced = 4052 ) ) and '
      '                        a.SipOk = True and'
      '                        a.SipClas = '#39'E2.2'#39' );'
      ''
      ''
      'update tbSip'
      'set SipClas = '#39'E2.3'#39', SipOk = True'
      
        'where ( ( gruproced = 56 and subproced = 11 and codproced = 103 ' +
        ') or'
      
        '             ( gruproced = 31 and subproced = 20 and codproced =' +
        ' 5070 ) ) and '
      '      Guia = '#39'Hospitalar'#39' and'
      '      ( TipoGuia = 3 or TipoGuia = 4 ) and'
      '      SipOk = False;'
      '       '
      ''
      'update TbSip '
      'set SipClas = '#39'E2.3'#39', SipOk = True'
      'where Guia = '#39'Hospitalar'#39' and '
      '      TipoGuia = 3 and'
      '      SipOk = False and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      '                  where a.Guia = '#39'Hospitalar'#39' and '
      '                        a.TipoGuia = 3 and'
      
        '                        ( ( gruproced = 56 and subproced = 11 an' +
        'd codproced = 103 ) or '
      
        '                          ( gruproced = 31 and subproced = 20 an' +
        'd codproced = 5070 ) ) and '
      '                        a.SipOk = True and'
      '                        a.SipClas = '#39'E2.3'#39' );'
      ''
      'update tbSip'
      'set SipClas = '#39'E2.4'#39', SipOk = True'
      
        'where ( ( gruproced = 52 and subproced = 12 and codproced = 104 ' +
        ') ) and '
      '      extract( year from age( DatServico, datnasc ) ) >= 60 and '
      '      Guia = '#39'Hospitalar'#39' and'
      '      TipoGuia = 3 and'
      '      SipOk = False;'
      '       '
      ''
      'update TbSip '
      'set SipClas = '#39'E2.4'#39', SipOk = True'
      'where Guia = '#39'Hospitalar'#39' and '
      '      TipoGuia = 3 and'
      '      SipOk = False and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      '                  where a.Guia = '#39'Hospitalar'#39' and '
      '                        a.TipoGuia = 3 and'
      
        '                        ( ( gruproced = 52 and subproced = 12 an' +
        'd codproced = 104 ) ) and '
      
        '                        extract( year from age( DatServico, datn' +
        'asc ) ) >= 60 and '
      '                        a.SipOk = True and'
      '                        a.SipClas = '#39'E2.4'#39' );'
      ''
      'update tbSip'
      'set SipClas = '#39'E2.5'#39', SipOk = True'
      
        'where ( ( gruproced = 52 and subproced = 11 and codproced = 265 ' +
        ') or'
      
        '        ( gruproced = 52 and subproced = 13 and codproced = 517 ' +
        ') ) and '
      '      Guia = '#39'Hospitalar'#39' and'
      '      TipoGuia = 3 and'
      '      SipOk = False;'
      '       '
      ''
      'update TbSip '
      'set SipClas = '#39'E2.5'#39', SipOk = True'
      'where Guia = '#39'Hospitalar'#39' and '
      '      TipoGuia = 3 and'
      '      SipOk = False and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      '                  where a.Guia = '#39'Hospitalar'#39' and '
      '                        a.TipoGuia = 3 and'
      
        '                        ( ( gruproced = 52 and subproced = 11 an' +
        'd codproced = 265 ) or'
      
        '                          ( gruproced = 52 and subproced = 13 an' +
        'd codproced = 517 ) ) and '
      '                        a.SipOk = True and'
      '                        a.SipClas = '#39'E2.5'#39' );'
      ''
      ''
      'update tbSip'
      'set SipClas = '#39'E2.6'#39', SipOk = True'
      
        'where ( ( gruproced = 40 and subproced = 5 and codproced = 41 ) ' +
        ') and '
      '      Guia = '#39'Hospitalar'#39' and'
      '      TipoGuia = 3 and'
      '      SipOk = False;'
      '       '
      ''
      'update TbSip '
      'set SipClas = '#39'E2.6'#39', SipOk = True'
      'where Guia = '#39'Hospitalar'#39' and '
      '      TipoGuia = 3 and'
      '      SipOk = False and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      '                  where a.Guia = '#39'Hospitalar'#39' and '
      '                        a.TipoGuia = 3 and'
      
        '                        ( ( gruproced = 40 and subproced = 5 and' +
        ' codproced = 41 ) ) and '
      '                        a.SipOk = True and'
      '                        a.SipClas = '#39'E2.6'#39' );'
      ''
      'update tbSip'
      'set SipClas = '#39'E2.7'#39', SipOk = True'
      
        'where ( ( gruproced = 30 and subproced = 80 and codproced = 6046' +
        ' ) or'
      
        '        ( gruproced = 40 and subproced = 4 and codproced = 135 )' +
        ' or'
      
        '        ( gruproced = 30 and subproced = 90 and codproced = 4137' +
        ' ) or'
      
        '        ( gruproced = 30 and subproced = 90 and codproced = 4145' +
        ' ) ) and '
      '      Guia = '#39'Hospitalar'#39' and'
      '      TipoGuia = 3 and'
      '      SipOk = False;'
      '       '
      ''
      'update TbSip '
      'set SipClas = '#39'E2.7'#39', SipOk = True'
      'where Guia = '#39'Hospitalar'#39' and '
      '      TipoGuia = 3 and'
      '      SipOk = False and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      '                  where a.Guia = '#39'Hospitalar'#39' and '
      '                        a.TipoGuia = 3 and'
      
        '                        ( ( gruproced = 30 and subproced = 80 an' +
        'd codproced = 6046 ) or'
      
        '                          ( gruproced = 40 and subproced = 4 and' +
        ' codproced = 135 ) or'
      
        '                          ( gruproced = 30 and subproced = 90 an' +
        'd codproced = 4137 ) or'
      
        '                          ( gruproced = 30 and subproced = 90 an' +
        'd codproced = 4145 ) ) and '
      '                        a.SipOk = True and'
      '                        a.SipClas = '#39'E2.7'#39' );')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 264
    Top = 144
  end
  object QryItensE3: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      'update tbSip'
      'set SipClas = '#39'E3.1'#39', SipOk = True'
      
        'where ( ( gruproced = 45 and subproced = 8 and codproced = 186 )' +
        ' ) and '
      '      Guia = '#39'Hospitalar'#39' and'
      '      TipoGuia = 3 and'
      '      SipOk = False;'
      '       '
      ''
      'update TbSip '
      'set SipClas = '#39'E3.1'#39', SipOk = True'
      'where Guia = '#39'Hospitalar'#39' and '
      '      TipoGuia = 3 and'
      '      SipOk = False and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      '                  where a.Guia = '#39'Hospitalar'#39' and '
      '                        a.TipoGuia = 3 and'
      
        '                        ( ( gruproced = 45 and subproced = 8 and' +
        ' codproced = 186 ) ) and '
      '                        a.SipOk = True and'
      '                        a.SipClas = '#39'E3.1'#39' );'
      ''
      'update tbSip'
      'set SipClas = '#39'E3.2'#39', SipOk = True'
      
        'where ( ( gruproced = 45 and subproced = 8 and codproced = 194 )' +
        ' ) and '
      '      Guia = '#39'Hospitalar'#39' and'
      '      TipoGuia = 3 and'
      '      SipOk = False;'
      '       '
      ''
      'update TbSip '
      'set SipClas = '#39'E3.2'#39', SipOk = True'
      'where Guia = '#39'Hospitalar'#39' and '
      '      TipoGuia = 3 and'
      '      SipOk = False and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      '                  where a.Guia = '#39'Hospitalar'#39' and '
      '                        a.TipoGuia = 3 and'
      
        '                        ( ( gruproced = 45 and subproced = 8 and' +
        ' codproced = 194 ) ) and '
      '                        a.SipOk = True and'
      '                        a.SipClas = '#39'E3.2'#39' );')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 296
    Top = 144
  end
  object QryItensE4_5: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      'update tbSip'
      'set SipClas = '#39'E4.1'#39', SipOk = True'
      'where substring( Upper( cid ), 1, 1 ) = '#39'J'#39' and '
      '      Guia = '#39'Hospitalar'#39' and'
      '      extract( year from age( DatServico, datnasc ) ) <=  5 and '
      '      TipoGuia = 3 and'
      '      SipOk = False;'
      '       '
      ''
      'update TbSip '
      'set SipClas = '#39'E4.1'#39', SipOk = True'
      'where Guia = '#39'Hospitalar'#39' and '
      '      TipoGuia = 3 and'
      '      SipOk = False and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      '                  where a.Guia = '#39'Hospitalar'#39' and '
      '                        a.TipoGuia = 3 and'
      
        '                        substring( Upper( cid ), 1, 1 ) = '#39'J'#39' an' +
        'd '
      
        '                        extract( year from age( DatServico, datn' +
        'asc ) ) <=  5 and '
      '                        a.SipOk = True and'
      '                        a.SipClas = '#39'E4.1'#39' );'
      ''
      'update tbSip'
      'set SipClas = '#39'E4.2'#39', SipOk = True'
      
        'where ( ( gruproced = 0 and subproced = 4 and codproced = 10 ) o' +
        'r '
      
        '        ( gruproced = 0 and subproced = 4 and codproced = 29 ) )' +
        ' and'
      '      Guia = '#39'Hospitalar'#39' and'
      '      extract( year from age( DatServico, datnasc ) ) <=  5 and '
      '      TipoGuia = 3 and'
      '      SipOk = False;'
      '       '
      ''
      'update TbSip '
      'set SipClas = '#39'E4.2'#39', SipOk = True'
      'where Guia = '#39'Hospitalar'#39' and '
      '      TipoGuia = 3 and'
      '      SipOk = False and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      '                  where a.Guia = '#39'Hospitalar'#39' and '
      '                        a.TipoGuia = 3 and'
      
        '                        ( ( gruproced = 0 and subproced = 4 and ' +
        'codproced = 10 ) or '
      
        '                          ( gruproced = 0 and subproced = 4 and ' +
        'codproced = 29 ) ) and'
      
        '                        extract( year from age( DatServico, datn' +
        'asc ) ) <=  5 and '
      '                        a.SipOk = True and'
      '                        a.SipClas = '#39'E4.2'#39' );'
      ''
      'update tbSip'
      'set SipClas = '#39'E5.'#39', SipOk = True'
      'where TipoInt = '#39'5'#39' and'
      '      TipoGuia = 3 and'
      '      SipOk = False;'
      '       '
      ''
      'update TbSip '
      'set SipClas = '#39'E5.'#39', SipOk = True'
      'where Guia = '#39'Hospitalar'#39' and '
      '      TipoGuia = 3 and'
      '      SipOk = False and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      '                  where a.Guia = '#39'Hospitalar'#39' and '
      '                        a.TipoGuia = 3 and'
      '                        TipoInt = '#39'5'#39' and'
      '                        a.SipOk = True and'
      '                        a.SipClas = '#39'E5.'#39' );'
      ''
      ''
      'update tbSip'
      'set SipClas = '#39'E4'#39', SipOk = True'
      'where ( TipoInt = '#39'4'#39' or'
      '        TipoInt = '#39'6'#39' ) and'
      '      TipoGuia = 3 and'
      '      extract( year from age( DatServico, datnasc ) ) <= 10 and'
      '      SipOk = False;'
      ''
      'update tbSip'
      'set SipClas = '#39'E3'#39', SipOk = True'
      'where TipoInt = '#39'3'#39' and'
      '      TipoGuia = 3 and'
      '      SipOk = False;'
      ''
      'update tbSip'
      'set SipClas = '#39'E2'#39', SipOk = True'
      'where TipoInt = '#39'2'#39' and'
      '      TipoGuia = 3 and'
      '      SipOk = False;'
      ''
      'update tbSip'
      'set SipClas = '#39'E1'#39', SipOk = True'
      'where TipoGuia = 3 and'
      '      SipOk = False;')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 168
    Top = 176
  end
  object QryItensF: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      'update tbSip'
      'set SipClas2 = '#39'F1.1.1'#39
      
        'where ( ( gruproced = 45 and subproced = 9 and codproced = 68 ) ' +
        'or'
      
        '        ( gruproced = 45 and subproced = 9 and codproced = 76 ) ' +
        'or'
      
        '        ( gruproced = 45 and subproced = 9 and codproced = 84 ) ' +
        'or'
      
        '        ( gruproced = 47 and subproced = 1 and codproced = 100 )' +
        ' or'
      
        '        ( gruproced = 47 and subproced = 1 and codproced = 96 ) ' +
        'or'
      
        '        ( gruproced = 47 and subproced = 1 and codproced = 282 )' +
        ' )and'
      '      TipoGuia = 3 and'
      '      SipClas2 is null;'
      ''
      'update TbSip '
      'set SipClas2 = '#39'F1.1.1'#39', SipOk = True'
      'where Guia = '#39'Hospitalar'#39' and '
      '      TipoGuia = 3 and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      '                  where a.Guia = '#39'Hospitalar'#39' and '
      '                        a.TipoGuia = 3 and'
      
        '                        ( ( gruproced = 45 and subproced = 9 and' +
        ' codproced = 68 ) or'
      
        '                          ( gruproced = 45 and subproced = 9 and' +
        ' codproced = 76 ) or'
      
        '                          ( gruproced = 45 and subproced = 9 and' +
        ' codproced = 84 ) or'
      
        '                          ( gruproced = 47 and subproced = 1 and' +
        ' codproced = 100 ) or'
      
        '                          ( gruproced = 47 and subproced = 1 and' +
        ' codproced = 96 ) or'
      
        '                          ( gruproced = 47 and subproced = 1 and' +
        ' codproced = 282 ) ) and '
      '                        a.SipClas2 = '#39'F1.1.1'#39' );'
      ''
      ''
      'update tbSip'
      'set SipClas2 = '#39'F1.1'#39
      'where ( Substring( Upper( Cid ), 1, 3 ) = '#39'C50'#39' or'
      '        Substring( Upper( Cid ), 1, 3 ) = '#39'D05'#39' )and'
      '      TipoGuia = 3 and'
      '      SipClas2 is null;'
      ''
      'update tbSip'
      'set SipClas2 = '#39'F1.2.1'#39
      
        'where ( ( gruproced = 45 and subproced = 5 and codproced = 66 ) ' +
        'or'
      
        '        ( gruproced = 45 and subproced = 5 and codproced = 74 ) ' +
        'or'
      
        '        ( gruproced = 45 and subproced = 5 and codproced = 82 ) ' +
        'or'
      
        '        ( gruproced = 45 and subproced = 5 and codproced = 90 ) ' +
        'or'
      
        '        ( gruproced = 45 and subproced = 5 and codproced = 112 )' +
        ' or'
      
        '        ( gruproced = 45 and subproced = 5 and codproced = 163 )' +
        ' or'
      
        '        ( gruproced = 31 and subproced = 30 and codproced = 3161' +
        ' )  )and'
      '      TipoGuia = 3 and'
      '      SipClas2 is null;'
      ''
      ''
      'update TbSip '
      'set SipClas2 = '#39'F1.2.1'#39', SipOk = True'
      'where Guia = '#39'Hospitalar'#39' and '
      '      TipoGuia = 3 and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      '                  where a.Guia = '#39'Hospitalar'#39' and '
      '                        a.TipoGuia = 3 and'
      
        '                        ( ( gruproced = 45 and subproced = 5 and' +
        ' codproced = 66 ) or'
      
        '                          ( gruproced = 45 and subproced = 5 and' +
        ' codproced = 74 ) or'
      
        '                          ( gruproced = 45 and subproced = 5 and' +
        ' codproced = 82 ) or'
      
        '                          ( gruproced = 45 and subproced = 5 and' +
        ' codproced = 90 ) or'
      
        '                          ( gruproced = 45 and subproced = 5 and' +
        ' codproced = 112 ) or'
      
        '                          ( gruproced = 45 and subproced = 5 and' +
        ' codproced = 163 ) or'
      
        '                          ( gruproced = 31 and subproced = 30 an' +
        'd codproced = 3161 )) and '
      '                        a.SipClas2 = '#39'F1.2.1'#39' );'
      ''
      ''
      'update tbSip'
      'set SipClas2 = '#39'F1.2'#39
      'where ( Substring( Upper( Cid ), 1, 3 ) = '#39'C53'#39' or'
      '        Substring( Upper( Cid ), 1, 3 ) = '#39'D06'#39' )and'
      '      TipoGuia = 3 and'
      '      SipClas2 is null;'
      ''
      'update tbSip'
      'set SipClas2 = '#39'F1.3.1'#39
      
        'where ( ( gruproced = 43 and subproced = 3 and codproced = 33 ) ' +
        'or'
      
        '        ( gruproced = 43 and subproced = 3 and codproced = 76 ) ' +
        'or'
      
        '        ( gruproced = 43 and subproced = 3 and codproced = 220 )' +
        ' or'
      
        '        ( gruproced = 43 and subproced = 3 and codproced = 327 )' +
        ' or'
      
        '        ( gruproced = 43 and subproced = 3 and codproced = 254 )' +
        ' )and'
      '      TipoGuia = 3 and'
      '      SipClas2 is null;'
      ''
      'update TbSip '
      'set SipClas2 = '#39'F1.3.1'#39', SipOk = True'
      'where Guia = '#39'Hospitalar'#39' and '
      '      TipoGuia = 3 and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      '                  where a.Guia = '#39'Hospitalar'#39' and '
      '                        a.TipoGuia = 3 and'
      
        '                        ( ( gruproced = 43 and subproced = 3 and' +
        ' codproced = 33 ) or'
      
        '                          ( gruproced = 43 and subproced = 3 and' +
        ' codproced = 76 ) or'
      
        '                          ( gruproced = 43 and subproced = 3 and' +
        ' codproced = 220 ) or'
      
        '                          ( gruproced = 43 and subproced = 3 and' +
        ' codproced = 327 ) or'
      
        '                          ( gruproced = 43 and subproced = 3 and' +
        ' codproced = 254 )) and '
      '                        a.SipClas2 = '#39'F1.3.1'#39' );'
      ''
      'update tbSip'
      'set SipClas2 = '#39'F1.3'#39
      'where ( Substring( Upper( Cid ), 1, 3 ) = '#39'C18'#39' or'
      '        Substring( Upper( Cid ), 1, 3 ) = '#39'C19'#39' or'
      '        Substring( Upper( Cid ), 1, 3 ) = '#39'C20'#39' or'
      '        Substring( Upper( Cid ), 1, 3 ) = '#39'D01'#39') and'
      '      TipoGuia = 3 and'
      '      SipClas2 is null;'
      ''
      'update tbSip'
      'set SipClas2 = '#39'F1.4.1'#39
      
        'where ( ( gruproced = 56 and subproced = 7 and codproced = 39 ) ' +
        'or'
      
        '        ( gruproced = 56 and subproced = 7 and codproced = 47 ) ' +
        ')and'
      '      TipoGuia = 3 and'
      '      SipClas2 is null;'
      ''
      'update TbSip '
      'set SipClas2 = '#39'F1.4.1'#39', SipOk = True'
      'where Guia = '#39'Hospitalar'#39' and '
      '      TipoGuia = 3 and'
      '      NumGuia in ( select a.NumGuia from tbsip a'
      '                  where a.Guia = '#39'Hospitalar'#39' and '
      '                        a.TipoGuia = 3 and'
      
        '                        ( ( gruproced = 56 and subproced = 7 and' +
        ' codproced = 39 ) or'
      
        '                           ( gruproced = 56 and subproced = 7 an' +
        'd codproced = 47 ) ) and '
      '                        a.SipClas2 = '#39'F1.4.1'#39' );'
      ''
      ''
      'update tbSip'
      'set SipClas2 = '#39'F1.4'#39
      'where ( Substring( Upper( Cid ), 1, 3 ) = '#39'C61'#39' )and'
      '      TipoGuia = 3 and'
      '      SipClas2 is null;'
      ''
      'update tbSip'
      'set SipClas2 = '#39'F1'#39
      'where ( Substring( Upper( Cid ), 1, 1 ) = '#39'C'#39' or '
      '        Substring( Upper( Cid ), 1, 1 ) = '#39'D'#39' )and'
      '      TipoGuia = 3 and'
      '      SipClas2 is null;'
      ''
      'update tbSip'
      'set SipClas2 = '#39'F2'#39
      'where ( Substring( Upper( Cid ), 1, 3 ) = '#39'E10'#39' or'
      '        Substring( Upper( Cid ), 1, 3 ) = '#39'E11'#39' or'
      '        Substring( Upper( Cid ), 1, 3 ) = '#39'E12'#39' or'
      '        Substring( Upper( Cid ), 1, 3 ) = '#39'E13'#39' or'
      '        Substring( Upper( Cid ), 1, 3 ) = '#39'E14'#39' )and'
      '      TipoGuia = 3 and'
      '      SipClas2 is null;'
      ''
      'update tbSip'
      'set SipClas2 = '#39'F3.1'#39
      'where ( Substring( Upper( Cid ), 1, 3 ) = '#39'I21'#39' or'
      '        Substring( Upper( Cid ), 1, 3 ) = '#39'I22'#39' )and'
      '      TipoGuia = 3 and'
      '      SipClas2 is null;'
      ''
      ''
      'update tbSip'
      'set SipClas2 = '#39'F3.2'#39
      'where ( Substring( Upper( Cid ), 1, 3 ) = '#39'I10'#39' or'
      '        Substring( Upper( Cid ), 1, 3 ) = '#39'I11'#39' or'
      '        Substring( Upper( Cid ), 1, 3 ) = '#39'I12'#39' or'
      '        Substring( Upper( Cid ), 1, 3 ) = '#39'I13'#39' or'
      '        Substring( Upper( Cid ), 1, 3 ) = '#39'I15'#39') and'
      '      TipoGuia = 3 and'
      '      SipClas2 is null;'
      ''
      'update tbSip'
      'set SipClas2 = '#39'F3.3'#39
      'where ( Substring( Upper( Cid ), 1, 3 ) = '#39'I50'#39' )and'
      '      TipoGuia = 3 and'
      '      SipClas2 is null;'
      ''
      ''
      'update tbSip'
      'set SipClas2 = '#39'F3.4.1'#39
      'where ( Substring( Upper( Cid ), 1, 3 ) = '#39'I64'#39' )and'
      '      TipoGuia = 3 and'
      '      SipClas2 is null;'
      ''
      'update tbSip'
      'set SipClas2 = '#39'F3.4'#39
      'where ( Substring( Upper( Cid ), 1, 3 ) = '#39'I60'#39' or'
      '        Substring( Upper( Cid ), 1, 3 ) = '#39'I61'#39' or'
      '        Substring( Upper( Cid ), 1, 3 ) = '#39'I62'#39' or'
      '        Substring( Upper( Cid ), 1, 3 ) = '#39'I63'#39' or'
      '        Substring( Upper( Cid ), 1, 3 ) = '#39'I64'#39' or'
      '        Substring( Upper( Cid ), 1, 3 ) = '#39'I65'#39' or'
      '        Substring( Upper( Cid ), 1, 3 ) = '#39'I66'#39' or'
      '        Substring( Upper( Cid ), 1, 3 ) = '#39'I67'#39' or'
      '        Substring( Upper( Cid ), 1, 3 ) = '#39'I68'#39' or'
      '        Substring( Upper( Cid ), 1, 3 ) = '#39'I69'#39' )and'
      '      TipoGuia = 3 and'
      '      SipClas2 is null;'
      ''
      'update tbSip'
      'set SipClas2 = '#39'F3'#39
      'where ( Substring( Upper( Cid ), 1, 1 ) = '#39'I'#39' )and'
      '      TipoGuia = 3 and'
      '      SipClas2 is null;'
      ''
      ''
      'update tbSip'
      'set SipClas2 = '#39'F4.1'#39
      'where ( Substring( Upper( Cid ), 1, 3 ) = '#39'J44'#39' )and'
      '      TipoGuia = 3 and'
      '      SipClas2 is null;'
      ''
      'update tbSip'
      'set SipClas2 = '#39'F4'#39
      'where ( Substring( Upper( Cid ), 1, 1 ) = '#39'J'#39' )and'
      '      TipoGuia = 3 and'
      '      SipClas2 is null;'
      ''
      'update tbSip'
      'set SipClas2 = '#39'F5'#39
      'where ( Substring( Upper( Cid ), 1, 1 ) = '#39'V'#39' or'
      '        Substring( Upper( Cid ), 1, 1 ) = '#39'W'#39' or'
      '        Substring( Upper( Cid ), 1, 1 ) = '#39'X'#39' or'
      '        Substring( Upper( Cid ), 1, 1 ) = '#39'Y'#39' )and'
      '      TipoGuia = 3 and'
      '      SipClas2 is null;'
      ''
      '       '
      '')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 200
    Top = 176
  end
  object QryAjustes: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      'update tbSip'
      'set SipClas = '#39'E1'#39', SipOk = True'
      'where Guia = '#39'Hospitalar'#39' and'
      
        '      ( ( gruproced = 0 and subproced = 2 and codproced = 10 ) o' +
        'r'
      
        '        ( gruproced = 0 and subproced = 4 and codproced = 10 ) )' +
        ' and'
      '      SipOk = False;')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 232
    Top = 176
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'csv'
    Filter = 'csv|*.csv'
    Left = 288
    Top = 56
  end
  object QryExpA: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      
        'select Contr, sum( ValorGuia + ValorTaxa + ValorFIlme) as Valor,' +
        ' sum( QtdeProc ) as Qtd, SipClas, '
      
        'CASE WHEN extract( month from DatBaixa ) = 1  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 2  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 3  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 4  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 5  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 6  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 7  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 8  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 9  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 10 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 11 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 12 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      'END as Trimestre,'
      
        'CASE WHEN extract( month from DatServico ) = 1  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 2  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 3  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 4  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 5  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 6  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 7  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 8  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 9  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 10 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 11 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 12 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      'END as TrimestreOcorrencia from TbSip'
      'where SipOk    = true and'
      '      substring( SipClas, 1, 1 ) = '#39'A'#39
      'group by contr, sipclas, trimestre, trimestreocorrencia'
      'order by sipclas, trimestre, trimestreocorrencia, contr')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 168
    Top = 216
    object QryExpAcontr: TStringField
      FieldName = 'contr'
      Size = 1
    end
    object QryExpAvalor: TFloatField
      FieldName = 'valor'
      ReadOnly = True
    end
    object QryExpAqtd: TFloatField
      FieldName = 'qtd'
      ReadOnly = True
    end
    object QryExpAsipclas: TStringField
      FieldName = 'sipclas'
      Size = 10
    end
    object QryExpAtrimestre: TMemoField
      FieldName = 'trimestre'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QryExpAtrimestreocorrencia: TMemoField
      FieldName = 'trimestreocorrencia'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object QryExpA2: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      
        'select Contr, sum( ValorGuia + ValorTaxa + ValorFilme) as Valor,' +
        ' sum( QtdeProc ) as Qtd, Substring( SipClas, 1, 2 )::varchar(2) ' +
        'as SipClas,'
      
        'CASE WHEN extract( month from DatBaixa ) = 1  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 2  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 3  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 4  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 5  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 6  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 7  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 8  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 9  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 10 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 11 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 12 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      'END as Trimestre,'
      
        'CASE WHEN extract( month from DatServico ) = 1  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 2  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 3  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 4  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 5  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 6  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 7  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 8  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 9  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 10 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 11 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 12 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      'END as TrimestreOcorrencia from TbSip'
      'where SipOk    = true and'
      '      substring( SipClas, 1, 1 ) = '#39'A'#39
      
        'group by substring( SipClas, 1, 2 ), contr, trimestre, trimestre' +
        'ocorrencia'
      'order by trimestre, trimestreocorrencia, contr')
    ParamCheck = False
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 200
    Top = 216
    object QryExpA2contr: TStringField
      FieldName = 'contr'
      Size = 1
    end
    object QryExpA2valor: TFloatField
      FieldName = 'valor'
      ReadOnly = True
    end
    object QryExpA2qtd: TFloatField
      FieldName = 'qtd'
      ReadOnly = True
    end
    object QryExpA2trimestre: TMemoField
      FieldName = 'trimestre'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QryExpA2trimestreocorrencia: TMemoField
      FieldName = 'trimestreocorrencia'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QryExpA2sipclas: TStringField
      FieldName = 'sipclas'
      ReadOnly = True
      Size = 2
    end
  end
  object QryExpB: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      
        'select Contr, sum( ValorGuia + ValorTaxa + ValorFIlme) as Valor,' +
        ' sum( QtdeProc ) as Qtd, SipClas, '
      
        'CASE WHEN extract( month from DatBaixa ) = 1  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 2  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 3  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 4  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 5  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 6  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 7  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 8  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 9  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 10 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 11 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 12 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      'END as Trimestre,'
      
        'CASE WHEN extract( month from DatServico ) = 1  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 2  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 3  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 4  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 5  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 6  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 7  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 8  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 9  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 10 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 11 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 12 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      'END as TrimestreOcorrencia from TbSip'
      'where SipOk    = true and'
      '      substring( SipClas, 1, 1 ) = '#39'B'#39
      'group by contr, sipclas, trimestre, trimestreocorrencia'
      'order by sipclas, trimestre, trimestreocorrencia, contr')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 168
    Top = 248
    object QryExpBcontr: TStringField
      FieldName = 'contr'
      Size = 1
    end
    object QryExpBvalor: TFloatField
      FieldName = 'valor'
      ReadOnly = True
    end
    object QryExpBqtd: TFloatField
      FieldName = 'qtd'
      ReadOnly = True
    end
    object QryExpBsipclas: TStringField
      FieldName = 'sipclas'
      Size = 10
    end
    object QryExpBtrimestre: TMemoField
      FieldName = 'trimestre'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QryExpBtrimestreocorrencia: TMemoField
      FieldName = 'trimestreocorrencia'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object QryExpB2: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      
        'select Contr, sum( ValorGuia + ValorTaxa + ValorFilme) as Valor,' +
        ' sum( QtdeProc ) as Qtd, Substring( SipClas, 1, 1 )::varchar(2) ' +
        'as SipClas,'
      
        'CASE WHEN extract( month from DatBaixa ) = 1  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 2  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 3  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 4  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 5  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 6  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 7  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 8  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 9  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 10 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 11 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 12 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      'END as Trimestre,'
      
        'CASE WHEN extract( month from DatServico ) = 1  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 2  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 3  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 4  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 5  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 6  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 7  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 8  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 9  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 10 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 11 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 12 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      'END as TrimestreOcorrencia from TbSip'
      'where SipOk    = true and'
      '      substring( SipClas, 1, 1 ) = '#39'B'#39
      
        'group by substring( SipClas, 1, 1 ), contr, trimestre, trimestre' +
        'ocorrencia'
      'order by trimestre, trimestreocorrencia, contr')
    ParamCheck = False
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 200
    Top = 248
    object QryExpB2contr: TStringField
      FieldName = 'contr'
      Size = 1
    end
    object QryExpB2valor: TFloatField
      FieldName = 'valor'
      ReadOnly = True
    end
    object QryExpB2qtd: TFloatField
      FieldName = 'qtd'
      ReadOnly = True
    end
    object QryExpB2sipclas: TStringField
      FieldName = 'sipclas'
      ReadOnly = True
      Size = 2
    end
    object QryExpB2trimestre: TMemoField
      FieldName = 'trimestre'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QryExpB2trimestreocorrencia: TMemoField
      FieldName = 'trimestreocorrencia'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object QryExpC: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      
        'select Contr, sum( ValorGuia + ValorTaxa + ValorFIlme) as Valor,' +
        ' sum( QtdeProc ) as Qtd, SipClas, '
      
        'CASE WHEN extract( month from DatBaixa ) = 1  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 2  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 3  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 4  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 5  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 6  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 7  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 8  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 9  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 10 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 11 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 12 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      'END as Trimestre,'
      
        'CASE WHEN extract( month from DatServico ) = 1  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 2  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 3  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 4  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 5  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 6  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 7  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 8  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 9  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 10 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 11 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 12 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      'END as TrimestreOcorrencia from TbSip'
      'where SipOk    = true and'
      '      substring( SipClas, 1, 1 ) = '#39'C'#39
      'group by contr, sipclas, trimestre, trimestreocorrencia'
      'order by sipclas, trimestre, trimestreocorrencia, contr')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 168
    Top = 280
    object QryExpCcontr: TStringField
      FieldName = 'contr'
      Size = 1
    end
    object QryExpCvalor: TFloatField
      FieldName = 'valor'
      ReadOnly = True
    end
    object QryExpCqtd: TFloatField
      FieldName = 'qtd'
      ReadOnly = True
    end
    object QryExpCsipclas: TStringField
      FieldName = 'sipclas'
      Size = 10
    end
    object QryExpCtrimestre: TMemoField
      FieldName = 'trimestre'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QryExpCtrimestreocorrencia: TMemoField
      FieldName = 'trimestreocorrencia'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object QryExpC2: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      
        'select Contr, sum( ValorGuia + ValorTaxa + ValorFilme) as Valor,' +
        ' sum( QtdeProc ) as Qtd, Substring( SipClas, 1, 1 )::varchar(2) ' +
        'as SipClas,'
      
        'CASE WHEN extract( month from DatBaixa ) = 1  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 2  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 3  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 4  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 5  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 6  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 7  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 8  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 9  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 10 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 11 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 12 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      'END as Trimestre,'
      
        'CASE WHEN extract( month from DatServico ) = 1  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 2  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 3  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 4  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 5  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 6  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 7  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 8  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 9  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 10 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 11 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 12 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      'END as TrimestreOcorrencia from TbSip'
      'where SipOk    = true and'
      '      substring( SipClas, 1, 1 ) = '#39'C'#39
      
        'group by substring( SipClas, 1, 1 ), contr, trimestre, trimestre' +
        'ocorrencia'
      'order by trimestre, trimestreocorrencia, contr')
    ParamCheck = False
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 200
    Top = 280
    object QryExpC2contr: TStringField
      FieldName = 'contr'
      Size = 1
    end
    object QryExpC2valor: TFloatField
      FieldName = 'valor'
      ReadOnly = True
    end
    object QryExpC2qtd: TFloatField
      FieldName = 'qtd'
      ReadOnly = True
    end
    object QryExpC2sipclas: TStringField
      FieldName = 'sipclas'
      ReadOnly = True
      Size = 2
    end
    object QryExpC2trimestre: TMemoField
      FieldName = 'trimestre'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QryExpC2trimestreocorrencia: TMemoField
      FieldName = 'trimestreocorrencia'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object QryExpD: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      
        'select Contr, sum( ValorGuia + ValorTaxa + ValorFIlme) as Valor,' +
        ' sum( QtdeProc ) as Qtd, SipClas, '
      
        'CASE WHEN extract( month from DatBaixa ) = 1  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 2  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 3  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 4  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 5  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 6  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 7  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 8  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 9  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 10 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 11 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 12 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      'END as Trimestre,'
      
        'CASE WHEN extract( month from DatServico ) = 1  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 2  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 3  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 4  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 5  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 6  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 7  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 8  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 9  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 10 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 11 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 12 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      'END as TrimestreOcorrencia from TbSip'
      'where SipOk    = true and'
      '      substring( SipClas, 1, 1 ) = '#39'D'#39
      'group by contr, sipclas, trimestre, trimestreocorrencia'
      'order by sipclas, trimestre, trimestreocorrencia, contr')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 240
    Top = 216
    object QryExpDcontr: TStringField
      FieldName = 'contr'
      Size = 1
    end
    object QryExpDvalor: TFloatField
      FieldName = 'valor'
      ReadOnly = True
    end
    object QryExpDqtd: TFloatField
      FieldName = 'qtd'
      ReadOnly = True
    end
    object QryExpDsipclas: TStringField
      FieldName = 'sipclas'
      Size = 10
    end
    object QryExpDtrimestre: TMemoField
      FieldName = 'trimestre'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QryExpDtrimestreocorrencia: TMemoField
      FieldName = 'trimestreocorrencia'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object QryExpD2: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      
        'select Contr, sum( ValorGuia + ValorTaxa + ValorFilme) as Valor,' +
        ' sum( QtdeProc ) as Qtd, Substring( SipClas, 1, 1 )::varchar(2) ' +
        'as SipClas,'
      
        'CASE WHEN extract( month from DatBaixa ) = 1  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 2  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 3  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 4  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 5  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 6  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 7  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 8  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 9  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 10 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 11 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 12 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      'END as Trimestre,'
      
        'CASE WHEN extract( month from DatServico ) = 1  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 2  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 3  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 4  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 5  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 6  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 7  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 8  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 9  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 10 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 11 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 12 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      'END as TrimestreOcorrencia from TbSip'
      'where SipOk    = true and'
      '      substring( SipClas, 1, 1 ) = '#39'D'#39
      
        'group by substring( SipClas, 1, 1 ), contr, trimestre, trimestre' +
        'ocorrencia'
      'order by trimestre, trimestreocorrencia, contr')
    ParamCheck = False
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 272
    Top = 216
    object QryExpD2contr: TStringField
      FieldName = 'contr'
      Size = 1
    end
    object QryExpD2valor: TFloatField
      FieldName = 'valor'
      ReadOnly = True
    end
    object QryExpD2qtd: TFloatField
      FieldName = 'qtd'
      ReadOnly = True
    end
    object QryExpD2sipclas: TStringField
      FieldName = 'sipclas'
      ReadOnly = True
      Size = 2
    end
    object QryExpD2trimestre: TMemoField
      FieldName = 'trimestre'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QryExpD2trimestreocorrencia: TMemoField
      FieldName = 'trimestreocorrencia'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object QryExpH: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      
        'select Contr, sum( ValorGuia + ValorTaxa + ValorFilme) as Valor,' +
        ' sum( QtdeProc ) as Qtd, Substring( SipClas, 1, 1 )::varchar(2) ' +
        'as SipClas,'
      
        'CASE WHEN extract( month from DatBaixa ) = 1  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 2  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 3  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 4  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 5  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 6  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 7  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 8  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 9  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 10 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 11 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 12 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      'END as Trimestre,'
      
        'CASE WHEN extract( month from DatServico ) = 1  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 2  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 3  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 4  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 5  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 6  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 7  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 8  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 9  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 10 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 11 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 12 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      'END as TrimestreOcorrencia from TbSip'
      'where SipOk    = true and'
      '      substring( SipClas, 1, 1 ) = '#39'H'#39
      
        'group by substring( SipClas, 1, 1 ), contr, trimestre, trimestre' +
        'ocorrencia'
      'order by trimestre, trimestreocorrencia, contr')
    ParamCheck = False
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 240
    Top = 248
    object QryExpHcontr: TStringField
      FieldName = 'contr'
      Size = 1
    end
    object QryExpHvalor: TFloatField
      FieldName = 'valor'
      ReadOnly = True
    end
    object QryExpHqtd: TFloatField
      FieldName = 'qtd'
      ReadOnly = True
    end
    object QryExpHsipclas: TStringField
      FieldName = 'sipclas'
      ReadOnly = True
      Size = 2
    end
    object QryExpHtrimestre: TMemoField
      FieldName = 'trimestre'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QryExpHtrimestreocorrencia: TMemoField
      FieldName = 'trimestreocorrencia'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object QryExpE: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      
        '((select Contr, 0 as valor, Count( * ) as Qtd, SipClas, Trimestr' +
        'e, TrimestreOcorrencia from ('
      'select Contr, NumGuia, SipClas, '
      
        'CASE WHEN extract( month from DatBaixa ) = 1  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 2  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 3  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 4  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 5  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 6  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 7  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 8  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 9  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 10 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 11 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 12 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      'END as Trimestre,'
      
        'CASE WHEN extract( month from DatServico ) = 1  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 2  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 3  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 4  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 5  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 6  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 7  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 8  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 9  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 10 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 11 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 12 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      'END as TrimestreOcorrencia from TbSip'
      'where SipOk    = true and'
      '      substring( SipClas, 1, 1 ) = '#39'E'#39
      'group by contr, NumGuia, sipclas, trimestre, trimestreocorrencia'
      
        'order by sipclas, trimestre, trimestreocorrencia, contr ) as Tab' +
        'elaGeral'
      'group by contr, sipclas, trimestre, trimestreocorrencia'
      'order by sipclas, trimestre, trimestreocorrencia, contr))'
      'union all'
      ''
      
        '((select Contr, sum( ValorGuia + ValorTaxa + ValorFIlme) as Valo' +
        'r, 0 as Qtd, substring( SipClas, 1, 1 ), '
      
        'CASE WHEN extract( month from DatBaixa ) = 1  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 2  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 3  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 4  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 5  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 6  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 7  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 8  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 9  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 10 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 11 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 12 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      'END as Trimestre,'
      
        'CASE WHEN extract( month from DatServico ) = 1  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 2  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 3  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 4  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 5  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 6  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 7  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 8  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 9  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 10 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 11 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 12 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      'END as TrimestreOcorrencia from TbSip'
      'where SipOk    = true and'
      '      substring( SipClas, 1, 1 ) = '#39'E'#39
      
        'group by contr, substring(sipclas, 1, 1), trimestre, trimestreoc' +
        'orrencia'
      
        'order by substring(sipclas, 1, 1), trimestre, trimestreocorrenci' +
        'a, contr)'
      ''
      'union all'
      ''
      
        '(select Contr, 0, Count( * ) as Qtd, sipclas, Trimestre, Trimest' +
        'reOcorrencia from ('
      'select Contr, NumGuia, substring(sipclas, 1, 1) as SipClas, '
      
        'CASE WHEN extract( month from DatBaixa ) = 1  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 2  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 3  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 4  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 5  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 6  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 7  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 8  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 9  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 10 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 11 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 12 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      'END as Trimestre,'
      
        'CASE WHEN extract( month from DatServico ) = 1  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 2  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 3  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 4  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 5  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 6  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 7  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 8  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 9  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 10 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 11 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 12 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      'END as TrimestreOcorrencia from TbSip'
      'where SipOk    = true and'
      '      substring( SipClas, 1, 1 ) = '#39'E'#39
      
        'group by contr, NumGuia, substring(sipclas, 1, 1), trimestre, tr' +
        'imestreocorrencia'
      
        'order by substring(sipclas, 1, 1), trimestre, trimestreocorrenci' +
        'a, contr ) as TabelaGeral'
      'group by contr, sipclas, trimestre, trimestreocorrencia'
      'order by sipclas, trimestre, trimestreocorrencia, contr))'
      '')
    ParamCheck = False
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 240
    Top = 280
    object QryExpEcontr: TStringField
      FieldName = 'contr'
      ReadOnly = True
      Size = 1
    end
    object QryExpEvalor: TFloatField
      FieldName = 'valor'
      ReadOnly = True
    end
    object QryExpEqtd: TLargeintField
      FieldName = 'qtd'
      ReadOnly = True
    end
    object QryExpEsipclas: TStringField
      FieldName = 'sipclas'
      ReadOnly = True
      Size = 10
    end
    object QryExpEtrimestre: TMemoField
      FieldName = 'trimestre'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QryExpEtrimestreocorrencia: TMemoField
      FieldName = 'trimestreocorrencia'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object QryExpF: TZQuery
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      
        '((select Contr, 0 as valor, Count( * ) as Qtd, SipClas2, Trimest' +
        're, TrimestreOcorrencia from ('
      'select Contr, NumGuia, SipClas2, '
      
        'CASE WHEN extract( month from DatBaixa ) = 1  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 2  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 3  THEN '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 4  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 5  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 6  THEN '#39'02'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 7  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 8  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 9  THEN '#39'03'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 10 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 11 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      
        '     WHEN extract( month from DatBaixa ) = 12 THEN '#39'04'#39' || '#39'/'#39' |' +
        '| EXTRACT(year FROM DatBaixa )'
      'END as Trimestre,'
      
        'CASE WHEN extract( month from DatServico ) = 1  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 2  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 3  THEN '#39'01'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 4  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 5  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 6  THEN '#39'02'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 7  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 8  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 9  THEN '#39'03'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 10 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 11 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      
        '     WHEN extract( month from DatServico ) = 12 THEN '#39'04'#39' || '#39'/'#39 +
        ' || EXTRACT(year FROM DatServico )'
      'END as TrimestreOcorrencia from TbSip'
      'where SipOk    = true and'
      '      substring( sipclas2, 1, 1 ) = '#39'F'#39
      
        'group by contr, NumGuia, sipclas2, trimestre, trimestreocorrenci' +
        'a'
      
        'order by sipclas2, trimestre, trimestreocorrencia, contr ) as Ta' +
        'belaGeral'
      'group by contr, sipclas2, trimestre, trimestreocorrencia'
      'order by sipclas2, trimestre, trimestreocorrencia, contr))')
    ParamCheck = False
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 272
    Top = 248
    object QryExpFcontr: TStringField
      FieldName = 'contr'
      ReadOnly = True
      Size = 1
    end
    object QryExpFvalor: TIntegerField
      FieldName = 'valor'
      ReadOnly = True
    end
    object QryExpFqtd: TLargeintField
      FieldName = 'qtd'
      ReadOnly = True
    end
    object QryExpFsipclas2: TStringField
      FieldName = 'sipclas2'
      ReadOnly = True
      Size = 10
    end
    object QryExpFtrimestre: TMemoField
      FieldName = 'trimestre'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QryExpFtrimestreocorrencia: TMemoField
      FieldName = 'trimestreocorrencia'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
end
