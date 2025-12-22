object Form21: TForm21
  Left = 336
  Top = 260
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'PEDIDOS - CADASTRO'
  ClientHeight = 609
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object fechar: TSpeedButton
    Left = 709
    Top = 571
    Width = 36
    Height = 29
    Glyph.Data = {
      0E060000424D0E06000000000000360000002800000016000000160000000100
      180000000000D8050000C30E0000C30E00000000000000000000FFFFFFF2F2F2
      F2F2F2D3D3D3E8E8E8F5F5F5DBDBDBDDDDDDECECECEEEEEED3D3D3EBEBEBF7F7
      F723230F4F4F00B2B2A8E9E9E9D6D6D6EBEBEBFAFAFAFFFFFFFFFFFF0000FFFF
      FFF0F0F0D8D8D8EDEDEDEAEAEADFDFDFDCDCDCF4F4F4E6E6E6D7D7D7F2F2F2E7
      E7E7DDDDDD4C4C0CFFFF006868119B9B9BF4F4F4E7E7E7DBDBDBE6E6E6FFFFFF
      0000D3D3D3E4E4E4EFEFEFE4E4E4D8D8D8EDEDEDF3F3F3D3D3D3E7E7E7F1F1F1
      DFDFDFDBDBDBECECEC4D4D0DFFFF008D8D00515105878781DFDFDFEDEDEDECEC
      ECD3D3D30000E6E6E6EDEDEDE1E1E1DBDBDBF5F5F5E3E3E3DCDCDCEAEAEAEAEA
      EAE0E0E0DBDBDBF6F6F6E3E3E34D4D0DFFFF008F8F007F7F0056560DA1A1A1E2
      E2E2DBDBDBF3F3F300004B4B4B5050504E4E4E4848484F4F4F5050504A4A4A4C
      4C4C444444F0F0F0F3F3F3D3D3D3E7E7E74E4E0EFFFF008F8F007F7F007D7D00
      4C4C0D3232324848484E4E4E0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBF4A4A4ADFDFDFDFDFDFE9E9E9EBEBEB4D4D0DFFFF008F8F007F7F
      007F7F00474700636363BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFB0B0B0BFBFBF4040403F3F3F3737373737373F3F3F434303FFFF008F
      8F007F7F007F7F00474700636363BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBF3D3D3D8F8F8F3E3E3E7F7F7F7F7F7F7F7F7F7F7F7F474707
      FFFF008F8F007F7F007F7F00474700636363BFBFBFBFBFBF0000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBF3C3C304D4D141515137F7F7F7F7F7F7F7F7F7F7F
      7F474707FFFF008D8D007777007D7D00474700636363BFBFBFBFBFBF0000BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF4646309A9A004545046161617F7F7F7F
      7F7F7F7F7F474707FFFF005F5F08171717676700474700636363BFBFBFBFBFBF
      0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF474727EDED0092920045450E
      6363637F7F7F7F7F7F474707FFFF004747276B6B6B676700474700636363BFBF
      BFBFBFBF0000AEAEAE57574531310A272700272700272700424200FFFF00F9F9
      009898004242006363637F7F7F474707FFFF007E7E002727006E6E0047470063
      6363BFBFBFBFBFBF00008989898C8C13CFCF01CFCF00CFCF00CFCF00D5D500FF
      FF00FFFF00EDED0098980045450E616161474707FFFF008F8F007F7F007F7F00
      474700636363BFBFBFBFBFBF0000898989A1A113FEFE2CFFFFAFFFFFAFFFFFAF
      FFFFAFFFFFAFFFFFDBFFFF6DE3E3004B4B095B5B5B474707FFFF008F8F007F7F
      007F7F00474700636363BFBFBFBFBFBF0000A7A7A76F6F4879790C7A7A0A7A7A
      0A7A7A0A8A8A09FFFF3EFFFF70E4E4005F5F005858587F7F7F474707FFFF008F
      8F007F7F007F7F00474700636363BFBFBFBFBFBF0000BFBFBFB1B1B1A9A9A9A9
      A9A9A9A9A9A9A9A94C4C2CFFFF0DE6E6075959085858537F7F7F7F7F7F474707
      FFFF008F8F007F7F007F7F00474700636363BFBFBFBFBFBF0000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBF505030E3E3005F5F035757577F7F7F7F7F7F7F7F
      7F474707FFFF008F8F007F7F007F7F00474700636363BFBFBFBFBFBF0000BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF4242356E6E2521211B7F7F7F7F7F7F7F
      7F7F7F7F7F5E5E52999906D5D5008787007F7F00474700636363BFBFBFBFBFBF
      0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7070708888884444447F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F565656999906DBDB00898900474700636363BFBF
      BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF4444
      447F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F5E5E529B9B03D7D7004C4C0076
      7676BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBF4141415656565656565656565656565656565656565656562E2E2E888807
      65650C888888BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBF9696968989898989898989898989898989898989898989898989
      89898989898989B1B1B1BFBFBFBFBFBF0000}
    OnClick = fecharClick
  end
  object Bevel4: TBevel
    Left = -1
    Top = 487
    Width = 754
    Height = 10
    Shape = bsTopLine
  end
  object Label10: TLabel
    Left = 11
    Top = 10
    Width = 73
    Height = 16
    Caption = 'Pedido n'#186':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 88
    Top = 12
    Width = 50
    Height = 13
    AutoSize = True
    DataField = 'C'#243'digo'
    DataSource = DataSource4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 43
    Top = 72
    Width = 44
    Height = 16
    Caption = 'Cliente:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 27
    Top = 50
    Width = 63
    Height = 16
    Caption = 'Vendedor:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 176
    Width = 49
    Height = 16
    Caption = 'Modelo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 320
    Top = 576
    Width = 8
    Height = 13
    Caption = '0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label14: TLabel
    Left = 359
    Top = 292
    Width = 34
    Height = 13
    Caption = 'Total:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 396
    Top = 292
    Width = 42
    Height = 13
    Caption = 'R$0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn04: TSpeedButton
    Left = 329
    Top = 232
    Width = 23
    Height = 22
    Hint = 'Apaga todos os modelos selecionados da sua lista'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      DE030000424DDE03000000000000360000002800000011000000120000000100
      180000000000A803000000000000000000000000000000000000BDB6B5525152
      0000000000000000000000000000000000000000000000000000000000000000
      00000000BDB6B5BDB6B5BDB6B50000000063AEADADE7FFADE7FFADE7FF9CDFFF
      ADE7FF9CDFFFADE7FF9CDFFFADE7FF9CDFFFB5E7FF525152525152EFEFEFBDB6
      B5009CDFFF5251529CDFFF004173004173004173004173ADE7FF004173004173
      004173004173ADE7FF424142A5A2A5000000BDB6B50000000063AEAD9CDFFFAD
      E7FF9CDFFFADE7FF9CDFFFB5E7FF9CDFFFADE7FF9CDFFFADE7FF9CDFFF525152
      A5A2A5000000BDB6B500ADE7FF525152ADE7FF0041730041730041730041739C
      DFFF004173004173004173004173B5E7FF424142A5A2A5000000BDB6B5000000
      004A86A50800FF0800FFADE7FFADE7FFADE7FFADE7FFADE7FFB5E7FF9CDFFFB5
      E7FF9CDFFF525152A5A2A5000000BDB6B5009CDFFF525152ADE7FF0800FF0800
      FF004173000084B5E7FF000084004173004173004173B5E7FF525152A5A2A500
      0000BDB6B50000000063AEAD9CDFFFB5E7FF0800FF0800FF9CDFFF9CDFFFB5E7
      FF9CDFFF9CDFFF9CDFFF9CDFFF424142A5A2A5000000BDB6B5000800FF0800FF
      0800FF0800FF0800FF0800FF0800FF52717B4A86A54A86A552717B4A86A5B5E7
      FF525152A5A2A5000000BDB6B5000800FF0800FF0800FF0800FF0800FF0800FF
      0800FFB5E7FF9CDFFFB5E7FFB5E7FFB5E7FF9CDFFF525152A5A2A5000000BDB6
      B500ADE7FF5251529CDFFF4241420800FF0800FF525152424142525152424142
      525152424142B5E7FF424142A5A2A5000000BDB6B50000000063AEADADE7FF08
      00FF0800FF525152525152525152525152525152525152525152B5E7FF525152
      A5A2A5000000BDB6B5009CDFFF9C9E9C0800FF0800FF9CDFFF9CDFFF9CDFFF9C
      DFFF9CDFFF9CDFFF9CDFFF9CDFFF9CDFFF424142A5A2A5000000BDB6B500BDB6
      B552717B52717B52717B52717B52717B52717B52717B52717B52717B52717B52
      717B52717B525152A5A2A5000000BDB6B500BDB6B5EFEFEF424142EFF7FFEFF7
      FFEFF7FFEFF7FFEFF7FFEFF7FFEFF7FFEFF7FFEFF7FFEFF7FFEFF7FFA5A2A500
      0000BDB6B500BDB6B5EFEFEFEFEFEF52717B52717B52717B52717B52717B5271
      7B52717B52717B52717B52717B52717B52717B000000BDB6B500BDB6B5EFEFEF
      EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
      EFEFEFEFEFEFEFEFEFEFBDB6B500BDB6B5BDB6B5BDB6B5BDB6B5BDB6B5BDB6B5
      BDB6B5BDB6B5BDB6B5BDB6B5BDB6B5BDB6B5BDB6B5BDB6B5BDB6B5BDB6B5BDB6
      B500}
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = btn04Click
  end
  object btn01: TSpeedButton
    Left = 329
    Top = 208
    Width = 23
    Height = 22
    Hint = 'Adiciona o modelo selecionado para sua lista'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      EE010000424DEE0100000000000036000000280000000D0000000B0000000100
      180000000000B801000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF9C9E9C9C9E9C9C9E9C9C9E9CFFFFFFFFFFFFFFFFFFFFFF
      FF00FFFFFFFFFFFFFFFFFFFFFFFF39C33939C33939C33939C3399C9E9CFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF39C33939C33939C33939
      C3399C9E9CFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF9C9E9C9C9E9C9C9E9C31CB
      6331CB6339C33939C3399C9E9C9C9E9C9C9E9C9C9E9C9C9E9C004AD3734AD373
      4AD3734AD37331CB6331CB6331CB6331CB6339C33939C33939C33939C3399C9E
      9C005ADB8C5ADB8C5ADB8C4AD3734AD3734AD37331CB6331CB6331CB6339C339
      39C33939C3399C9E9C005ADB8C5ADB8C5ADB8C5ADB8C5ADB8C4AD3734AD3734A
      D37331CB6331CB6339C33939C3399C9E9C005ADB8C5ADB8C5ADB8C5ADB8C5ADB
      8C5ADB8C5ADB8C4AD37331CB6331CB6331CB6339C339FFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFF5ADB8C5ADB8C5ADB8C5ADB8C9C9E9CFFFFFFFFFFFFFFFFFFFFFF
      FF00FFFFFFFFFFFFFFFFFFFFFFFF5ADB8C5ADB8C5ADB8C5ADB8C9C9E9CFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF5ADB8C5ADB8C5ADB8C5A
      DB8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = btn01Click
  end
  object Label4: TLabel
    Left = 19
    Top = 328
    Width = 73
    Height = 16
    Caption = 'Pagamento:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 19
    Top = 504
    Width = 74
    Height = 16
    Caption = 'Acr'#233'scimos:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 40
    Top = 528
    Width = 50
    Height = 16
    Caption = 'Entrega:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label21: TLabel
    Left = 180
    Top = 512
    Width = 88
    Height = 13
    Caption = 'Formato: 00,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 180
    Top = 536
    Width = 130
    Height = 13
    Caption = 'Formato: dd/mm/aaaa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 400
    Top = 136
    Width = 60
    Height = 13
    Caption = 'NomeCliente'
    Visible = False
  end
  object Label6: TLabel
    Left = 246
    Top = 358
    Width = 18
    Height = 16
    Caption = 'N'#186':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 246
    Top = 334
    Width = 40
    Height = 16
    Caption = 'Titular:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 246
    Top = 406
    Width = 18
    Height = 16
    Caption = 'N'#186':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label16: TLabel
    Left = 246
    Top = 382
    Width = 40
    Height = 16
    Caption = 'Titular:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label18: TLabel
    Left = 246
    Top = 454
    Width = 18
    Height = 16
    Caption = 'N'#186':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label17: TLabel
    Left = 246
    Top = 430
    Width = 40
    Height = 16
    Caption = 'Titular:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = -1
    Top = 314
    Width = 754
    Height = 9
    Shape = bsTopLine
  end
  object Bevel2: TBevel
    Left = -17
    Top = 39
    Width = 730
    Height = 9
    Shape = bsTopLine
  end
  object Bevel3: TBevel
    Left = -1
    Top = 559
    Width = 754
    Height = 9
    Shape = bsTopLine
  end
  object Label19: TLabel
    Left = 486
    Top = 358
    Width = 17
    Height = 16
    Caption = 'R$'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label20: TLabel
    Left = 486
    Top = 406
    Width = 17
    Height = 16
    Caption = 'R$'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label22: TLabel
    Left = 486
    Top = 454
    Width = 17
    Height = 16
    Caption = 'R$'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 616
    Top = 34
    Width = 129
    Height = 95
    TabOrder = 20
    object novo: TSpeedButton
      Left = 16
      Top = 19
      Width = 97
      Height = 22
      Caption = 'Novo Pedido'
      Glyph.Data = {
        B6020000424DB60200000000000036000000280000000D000000100000000100
        1800000000008002000000000000000000000000000000000000FFFFFF636363
        6363636363636363636363636363636363636363636363636363636363636363
        6300A5736BDEB5A5D6ADA5D6A59CD6A59CD6A59CD6A59CD6A59CD6A59CD6A59C
        D6A59CBD948C63636300BD8473F7E7D6FFE7C6FFE7CEFFDEC6F7CEADF7CEADFF
        D6ADFFD6ADFFD6ADFFD6A5E7BDB563636300BD8473EFE7DEFFE7CEFFE7CEFFE7
        C6FFDEC6F7CEADFFD6B5FFD6B5F7CEADFFD6A5E7BDB563636300CE847BEFE7DE
        F7E7D6990033990033990033990033990033FFD6B5F7CEADFFCEBDF7CEAD6363
        6300C6947BEFE7DEF7E7D6FFEFD6F7E7D6FFE7C6FFDEC6FFE7CEFFD6B5FFD6B5
        F7CEADF7CEAD63636300CE9C84E7E7E7F7EFE799003399003399003399003399
        0033990033FFD6B5F7CEADFFCEBD63636300DEA584EFEFE7FFEFDEFFEFDEF7E7
        D6FFEFD6FFDEC6FFE7CEFFDEC6FFE7C6F7CEADE7C6B563636300DEA584FFFFF7
        EFEFE7990033990033990033990033990033990033990033FFDEBDFFCEBD6363
        6300DEA584FFFFF7F7EFE7F7EFE7FFEFD6F7E7D6FFEFD6FFEFD6F7E7D6FFE7CE
        FFDEC6E7C6B563636300DEA584FEFDFDFEFDFD99003399003399003399003399
        0033990033990033FFE7CEE7C6B563636300DEA584FEFDFDFFFFF7FEFDFDF7EF
        E7F7EFE7E7E7E7FFF7E7FFEFDEFFEFDEFFE7CEE7BDB563636300DEA584FEFDFD
        FEFDFD990033990033990033990033F7E7D6FFD6CEFFD6CEF7B5ADF7B5AD6363
        6300DEA584FEFDFDFFFFF7FEFDFDFFFFF7FEFDFDFFFFF7F7EFE7F7A542F7A542
        D68C42636363FFFFFF00DEA584FEFDFDFEFDFDFEFDFDFFFFF7FEFDFDFFFFF7FE
        FDFDDEA584E7AD6B636363FFFFFFFFFFFF00DEA584DEA584DEA584DEA584DEA5
        84DEA584DEA584DEA584DEA584636363FFFFFFFFFFFFFFFFFF00}
      OnClick = novoClick
    end
    object gravar: TSpeedButton
      Left = 16
      Top = 59
      Width = 97
      Height = 22
      Caption = 'Gravar'
      Glyph.Data = {
        1A020000424D1A0200000000000036000000280000000E0000000B0000000100
        180000000000E401000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFF3FF188E42108231FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF219242CEF7DECEF7DE108231FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF21964ACEF7
        DE39EB7B39EB7BCEF7DE108231FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFF29964ACEF7DE42EF8452EF8C42EF8439EB7BCEF7DE108231FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFF319652CEF7DE6BF39C7BF7AD94DBAD9CEBB54A
        EF8C39EB7BCEF7DE108231FFFFFFFFFFFFFFFFFF0000008229CEF7DE8CFBB594
        FBBD9CD7AD086D29087931ADEBC652EF9439EB84CEF7DE108639FFFFFFFFFFFF
        0000087931D6EFDEBDFFD6A5D7B5086D29FFFFFFFFFFFF087931B5EBC65AEF94
        39EF84CEF7DE188A39FFF3F70000FFFFFF08793184BE94086D29FFFFFFFFFFFF
        FFFFFFFFFFFF087931B5E7C663F39C42EF84CEF7DE188A390000FFFFFFFFFFFF
        086D29FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF087931BDE7CE84F7ADCEF7
        DE188A420000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF087931C6E3CE188A42FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF188642FFFFFFFFFFFF0000}
      OnClick = gravarClick
    end
    object Bevel5: TBevel
      Left = 0
      Top = 49
      Width = 128
      Height = 9
      Shape = bsTopLine
    end
  end
  object dbvendedor: TComboBox
    Left = 96
    Top = 48
    Width = 297
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    OnChange = dbvendedorChange
    OnEnter = dbvendedorEnter
  end
  object ListBox1: TListBox
    Left = 96
    Top = 72
    Width = 297
    Height = 97
    ItemHeight = 13
    TabOrder = 1
    OnClick = ListBox1Click
  end
  object ListBox2: TListBox
    Left = 96
    Top = 176
    Width = 225
    Height = 113
    ItemHeight = 13
    TabOrder = 2
  end
  object ListBox3: TListBox
    Left = 360
    Top = 176
    Width = 225
    Height = 113
    ItemHeight = 13
    MultiSelect = True
    TabOrder = 3
  end
  object Memo1: TMemo
    Left = 240
    Top = 568
    Width = 57
    Height = 25
    ScrollBars = ssBoth
    TabOrder = 21
    Visible = False
  end
  object DBMemo1: TDBMemo
    Left = 24
    Top = 568
    Width = 209
    Height = 33
    DataField = 'modelo'
    DataSource = DataSource4
    ScrollBars = ssBoth
    TabOrder = 22
    Visible = False
  end
  object p3: TCheckBox
    Left = 96
    Top = 368
    Width = 97
    Height = 17
    BiDiMode = bdLeftToRight
    Caption = 'Cheque 30'
    ParentBiDiMode = False
    TabOrder = 6
    OnClick = p3Click
  end
  object p2: TCheckBox
    Left = 96
    Top = 344
    Width = 97
    Height = 17
    Caption = #192' Vista - Cheque'
    TabOrder = 5
    OnClick = p2Click
  end
  object p1: TCheckBox
    Left = 96
    Top = 328
    Width = 113
    Height = 17
    Caption = #192' Vista - Dinheiro'
    TabOrder = 4
    OnClick = p1Click
  end
  object p4: TCheckBox
    Left = 96
    Top = 384
    Width = 97
    Height = 17
    Caption = 'Cheque 30/60'
    TabOrder = 7
    OnClick = p4Click
  end
  object p5: TCheckBox
    Left = 96
    Top = 400
    Width = 113
    Height = 17
    Caption = 'Cheque 30/60/90'
    TabOrder = 8
    OnClick = p5Click
  end
  object dbentrega: TDBEdit
    Left = 96
    Top = 528
    Width = 81
    Height = 21
    DataField = 'entrega'
    DataSource = DataSource4
    MaxLength = 10
    TabOrder = 19
    OnKeyPress = dbentregaKeyPress
  end
  object dbacrescimo: TDBEdit
    Left = 96
    Top = 504
    Width = 81
    Height = 21
    DataField = 'acrescimos'
    DataSource = DataSource4
    TabOrder = 18
    OnKeyPress = dbacrescimoKeyPress
  end
  object DBEdit5: TDBEdit
    Left = 296
    Top = 428
    Width = 297
    Height = 21
    DataField = 'nome_cheque3'
    DataSource = DataSource4
    Enabled = False
    TabOrder = 15
    OnExit = DBEdit5Exit
    OnKeyPress = DBEdit5KeyPress
  end
  object DBEdit6: TDBEdit
    Left = 296
    Top = 452
    Width = 161
    Height = 21
    DataField = 'n_cheque3'
    DataSource = DataSource4
    Enabled = False
    TabOrder = 16
    OnKeyPress = DBEdit6KeyPress
  end
  object DBEdit1: TDBEdit
    Left = 296
    Top = 332
    Width = 297
    Height = 21
    DataField = 'nome_cheque1'
    DataSource = DataSource4
    Enabled = False
    TabOrder = 9
    OnExit = DBEdit1Exit
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit2: TDBEdit
    Left = 296
    Top = 356
    Width = 161
    Height = 21
    DataField = 'n_cheque1'
    DataSource = DataSource4
    Enabled = False
    TabOrder = 10
    OnKeyPress = DBEdit2KeyPress
  end
  object DBEdit3: TDBEdit
    Left = 296
    Top = 380
    Width = 297
    Height = 21
    DataField = 'nome_cheque2'
    DataSource = DataSource4
    Enabled = False
    TabOrder = 12
    OnExit = DBEdit3Exit
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit4: TDBEdit
    Left = 296
    Top = 404
    Width = 161
    Height = 21
    DataField = 'n_cheque2'
    DataSource = DataSource4
    Enabled = False
    TabOrder = 13
    OnKeyPress = DBEdit4KeyPress
  end
  object DBEdit7: TDBEdit
    Left = 504
    Top = 356
    Width = 89
    Height = 21
    DataField = 'valor_cheque1'
    DataSource = DataSource4
    Enabled = False
    ParentColor = True
    TabOrder = 11
    OnKeyPress = DBEdit7KeyPress
  end
  object DBEdit8: TDBEdit
    Left = 504
    Top = 404
    Width = 89
    Height = 21
    DataField = 'valor_cheque2'
    DataSource = DataSource4
    Enabled = False
    ParentColor = True
    TabOrder = 14
    OnKeyPress = DBEdit8KeyPress
  end
  object DBEdit9: TDBEdit
    Left = 504
    Top = 452
    Width = 89
    Height = 21
    DataField = 'valor_cheque3'
    DataSource = DataSource4
    Enabled = False
    ParentColor = True
    TabOrder = 17
    OnKeyPress = DBEdit9KeyPress
  end
  object Edit1: TEdit
    Left = 344
    Top = 576
    Width = 121
    Height = 21
    TabOrder = 23
    Visible = False
  end
  object DBMemo2: TDBMemo
    Left = 864
    Top = 184
    Width = 129
    Height = 33
    DataField = 'pano_tipo'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 24
    Visible = False
  end
  object DBMemo3: TDBMemo
    Left = 1000
    Top = 184
    Width = 57
    Height = 33
    DataField = 'pano'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 25
    Visible = False
  end
  object DBMemo4: TDBMemo
    Left = 1000
    Top = 224
    Width = 57
    Height = 33
    DataField = 'madeira'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 26
    Visible = False
  end
  object DBMemo5: TDBMemo
    Left = 864
    Top = 224
    Width = 129
    Height = 33
    DataField = 'madeira_tipo'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 27
    Visible = False
  end
  object DBMemo6: TDBMemo
    Left = 864
    Top = 264
    Width = 129
    Height = 33
    DataField = 'flocos_tipo'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 28
    Visible = False
  end
  object DBMemo7: TDBMemo
    Left = 1000
    Top = 264
    Width = 57
    Height = 33
    DataField = 'flocos'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 29
    Visible = False
  end
  object DBMemo8: TDBMemo
    Left = 864
    Top = 304
    Width = 129
    Height = 33
    DataField = 'pregos_tipo'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 30
    Visible = False
  end
  object DBMemo9: TDBMemo
    Left = 1000
    Top = 304
    Width = 57
    Height = 33
    DataField = 'pregos'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 31
    Visible = False
  end
  object DBMemo10: TDBMemo
    Left = 864
    Top = 344
    Width = 129
    Height = 33
    DataField = 'espuma_tipo'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 32
    Visible = False
  end
  object DBMemo11: TDBMemo
    Left = 1000
    Top = 344
    Width = 57
    Height = 33
    DataField = 'espuma'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 33
    Visible = False
  end
  object DBMemo12: TDBMemo
    Left = 864
    Top = 384
    Width = 129
    Height = 33
    DataField = 'grampos_tipo'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 34
    Visible = False
  end
  object DBMemo13: TDBMemo
    Left = 1000
    Top = 384
    Width = 57
    Height = 33
    DataField = 'grampos'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 35
    Visible = False
  end
  object DBMemo14: TDBMemo
    Left = 864
    Top = 424
    Width = 129
    Height = 33
    DataField = 'percinta_tipo'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 36
    Visible = False
  end
  object DBMemo15: TDBMemo
    Left = 1000
    Top = 424
    Width = 57
    Height = 33
    DataField = 'percinta'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 37
    Visible = False
  end
  object Memo2: TMemo
    Left = 768
    Top = 184
    Width = 89
    Height = 33
    ScrollBars = ssBoth
    TabOrder = 38
    Visible = False
  end
  object Memo3: TMemo
    Left = 768
    Top = 224
    Width = 89
    Height = 33
    ScrollBars = ssBoth
    TabOrder = 39
    Visible = False
  end
  object Memo4: TMemo
    Left = 768
    Top = 264
    Width = 89
    Height = 33
    ScrollBars = ssBoth
    TabOrder = 40
    Visible = False
  end
  object Memo5: TMemo
    Left = 768
    Top = 304
    Width = 89
    Height = 33
    ScrollBars = ssBoth
    TabOrder = 41
    Visible = False
  end
  object Memo6: TMemo
    Left = 768
    Top = 344
    Width = 89
    Height = 33
    ScrollBars = ssBoth
    TabOrder = 42
    Visible = False
  end
  object Memo7: TMemo
    Left = 768
    Top = 384
    Width = 89
    Height = 33
    ScrollBars = ssBoth
    TabOrder = 43
    Visible = False
  end
  object Memo8: TMemo
    Left = 768
    Top = 424
    Width = 89
    Height = 33
    ScrollBars = ssBoth
    TabOrder = 44
    Visible = False
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery4
    Left = 224
    Top = 8
  end
  object ADOQuery4: TADOQuery
    Connection = Login.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from pedidos')
    Left = 192
    Top = 8
    object ADOQuery4Cdigo: TAutoIncField
      FieldName = 'C'#243'digo'
      ReadOnly = True
    end
    object ADOQuery4nome: TWideStringField
      FieldName = 'nome'
      Size = 150
    end
    object ADOQuery4cliente: TWideStringField
      FieldName = 'cliente'
      Size = 150
    end
    object ADOQuery4modelo: TMemoField
      FieldName = 'modelo'
      BlobType = ftMemo
    end
    object ADOQuery4pagamento: TWideStringField
      FieldName = 'pagamento'
      Size = 1
    end
    object ADOQuery4nome_cheque1: TWideStringField
      FieldName = 'nome_cheque1'
      Size = 150
    end
    object ADOQuery4n_cheque1: TWideStringField
      FieldName = 'n_cheque1'
      Size = 50
    end
    object ADOQuery4nome_cheque2: TWideStringField
      FieldName = 'nome_cheque2'
      Size = 150
    end
    object ADOQuery4n_cheque2: TWideStringField
      FieldName = 'n_cheque2'
      Size = 50
    end
    object ADOQuery4nome_cheque3: TWideStringField
      FieldName = 'nome_cheque3'
      Size = 150
    end
    object ADOQuery4n_cheque3: TWideStringField
      FieldName = 'n_cheque3'
      Size = 50
    end
    object ADOQuery4entrega: TDateTimeField
      FieldName = 'entrega'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object ADOQuery4acrescimos: TBCDField
      FieldName = 'acrescimos'
      Precision = 19
    end
    object ADOQuery4valor_modelos: TBCDField
      FieldName = 'valor_modelos'
      Precision = 19
    end
    object ADOQuery4valor_total: TBCDField
      FieldName = 'valor_total'
      Precision = 19
    end
    object ADOQuery4data_pedido: TDateTimeField
      FieldName = 'data_pedido'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object ADOQuery4status: TWideStringField
      FieldName = 'status'
      Size = 15
    end
    object ADOQuery4horario: TWideStringField
      FieldName = 'horario'
      Size = 8
    end
    object ADOQuery4cod_vendedor: TWideStringField
      FieldName = 'cod_vendedor'
      Size = 50
    end
    object ADOQuery4valor_cheque1: TBCDField
      FieldName = 'valor_cheque1'
      Precision = 19
    end
    object ADOQuery4valor_cheque2: TBCDField
      FieldName = 'valor_cheque2'
      Precision = 19
    end
    object ADOQuery4valor_cheque3: TBCDField
      FieldName = 'valor_cheque3'
      Precision = 19
    end
    object ADOQuery4mes: TWideStringField
      FieldName = 'mes'
      Size = 9
    end
    object ADOQuery4ano: TWideStringField
      FieldName = 'ano'
      Size = 4
    end
  end
  object ADOQuery2: TADOQuery
    Connection = Login.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select nome from cad_vend')
    Left = 400
    Top = 96
    object ADOQuery2nome: TWideStringField
      FieldName = 'nome'
      Size = 150
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Login.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cad_cli')
    Left = 400
    Top = 48
    object ADOQuery1Cdigo: TAutoIncField
      FieldName = 'C'#243'digo'
      ReadOnly = True
    end
    object ADOQuery1nome: TWideStringField
      FieldName = 'nome'
      Size = 150
    end
    object ADOQuery1vendedor: TWideStringField
      FieldName = 'vendedor'
      Size = 150
    end
  end
  object ADOQuery3: TADOQuery
    Connection = Login.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from modelos')
    Left = 56
    Top = 200
    object ADOQuery3Cdigo: TAutoIncField
      FieldName = 'C'#243'digo'
      ReadOnly = True
    end
    object ADOQuery3nome: TWideStringField
      FieldName = 'nome'
      Size = 150
    end
    object ADOQuery3valor: TBCDField
      FieldName = 'valor'
      Precision = 19
    end
    object ADOQuery3pano: TMemoField
      FieldName = 'pano'
      BlobType = ftMemo
    end
    object ADOQuery3madeira: TMemoField
      FieldName = 'madeira'
      BlobType = ftMemo
    end
    object ADOQuery3flocos: TMemoField
      FieldName = 'flocos'
      BlobType = ftMemo
    end
    object ADOQuery3pregos: TMemoField
      FieldName = 'pregos'
      BlobType = ftMemo
    end
    object ADOQuery3espuma: TMemoField
      FieldName = 'espuma'
      BlobType = ftMemo
    end
    object ADOQuery3grampos: TMemoField
      FieldName = 'grampos'
      BlobType = ftMemo
    end
    object ADOQuery3percinta: TMemoField
      FieldName = 'percinta'
      BlobType = ftMemo
    end
    object ADOQuery3pano_tipo: TMemoField
      FieldName = 'pano_tipo'
      BlobType = ftMemo
    end
    object ADOQuery3madeira_tipo: TMemoField
      FieldName = 'madeira_tipo'
      BlobType = ftMemo
    end
    object ADOQuery3flocos_tipo: TMemoField
      FieldName = 'flocos_tipo'
      BlobType = ftMemo
    end
    object ADOQuery3pregos_tipo: TMemoField
      FieldName = 'pregos_tipo'
      BlobType = ftMemo
    end
    object ADOQuery3espuma_tipo: TMemoField
      FieldName = 'espuma_tipo'
      BlobType = ftMemo
    end
    object ADOQuery3grampos_tipo: TMemoField
      FieldName = 'grampos_tipo'
      BlobType = ftMemo
    end
    object ADOQuery3percinta_tipo: TMemoField
      FieldName = 'percinta_tipo'
      BlobType = ftMemo
    end
  end
  object ADOQuery5: TADOQuery
    Connection = Login.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cheques')
    Left = 600
    Top = 328
    object ADOQuery1nome_cheque: TWideStringField
      FieldName = 'nome_cheque'
      Size = 150
    end
    object ADOQuery1n_cheque: TWideStringField
      FieldName = 'n_cheque'
      Size = 50
    end
    object ADOQuery5valor: TBCDField
      FieldName = 'valor'
      Precision = 19
    end
  end
  object ADOQuery6: TADOQuery
    Connection = Login.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from pano')
    Left = 592
    Top = 176
    object ADOQuery6tipo: TWideStringField
      FieldName = 'tipo'
      Size = 25
    end
    object ADOQuery6qtde: TWideStringField
      FieldName = 'qtde'
      Size = 15
    end
  end
  object ADOQuery7: TADOQuery
    Connection = Login.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from caixa')
    Left = 472
    Top = 568
    object ADOQuery1valor: TBCDField
      FieldName = 'valor'
      Precision = 19
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 512
    Top = 568
  end
  object ADOQuery8: TADOQuery
    Connection = Login.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from madeira')
    Left = 592
    Top = 208
    object ADOQuery8tipo: TWideStringField
      FieldName = 'tipo'
      Size = 25
    end
    object ADOQuery8qtde: TWideStringField
      FieldName = 'qtde'
      Size = 15
    end
  end
  object ADOQuery9: TADOQuery
    Connection = Login.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from espuma')
    Left = 592
    Top = 240
    object ADOQuery9tipo: TWideStringField
      FieldName = 'tipo'
      Size = 25
    end
    object ADOQuery9qtde: TWideStringField
      FieldName = 'qtde'
      Size = 15
    end
  end
  object ADOQuery10: TADOQuery
    Connection = Login.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from flocos')
    Left = 624
    Top = 176
    object ADOQuery10tipo: TWideStringField
      FieldName = 'tipo'
      Size = 25
    end
    object ADOQuery10qtde: TWideStringField
      FieldName = 'qtde'
      Size = 15
    end
  end
  object ADOQuery11: TADOQuery
    Connection = Login.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from grampos')
    Left = 624
    Top = 208
    object ADOQuery11tipo: TWideStringField
      FieldName = 'tipo'
      Size = 25
    end
    object ADOQuery11qtde: TWideStringField
      FieldName = 'qtde'
      Size = 15
    end
  end
  object ADOQuery12: TADOQuery
    Connection = Login.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from pregos')
    Left = 624
    Top = 240
    object ADOQuery12tipo: TWideStringField
      FieldName = 'tipo'
      Size = 25
    end
    object ADOQuery12qtde: TWideStringField
      FieldName = 'qtde'
      Size = 15
    end
  end
  object ADOQuery13: TADOQuery
    Connection = Login.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from pecinta')
    Left = 656
    Top = 176
    object ADOQuery13tipo: TWideStringField
      FieldName = 'tipo'
      Size = 25
    end
    object ADOQuery13qtde: TWideStringField
      FieldName = 'qtde'
      Size = 15
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery3
    Left = 56
    Top = 232
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 432
    Top = 48
  end
  object banco_aux: TADOQuery
    Connection = Login.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from aux')
    Left = 328
    Top = 256
    object banco_auxtipo: TWideStringField
      FieldName = 'tipo'
      Size = 25
    end
    object banco_auxqtde: TWideStringField
      FieldName = 'qtde'
      Size = 15
    end
  end
  object Timer2: TTimer
    Interval = 1
    OnTimer = Timer2Timer
    Left = 656
    Top = 208
  end
end
