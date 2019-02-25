object FrmGelir: TFrmGelir
  Left = 0
  Top = 0
  Caption = 'PreviewModal'
  ClientHeight = 719
  ClientWidth = 1056
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1056
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 4
      Width = 289
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'REZERVASYON / SATI'#350'LAR '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object LblKartNo: TLabel
      Left = 612
      Top = 9
      Width = 96
      Height = 19
      Caption = 'KART  NO : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object MemVoucher: TMemo
      Left = 352
      Top = 7
      Width = 185
      Height = 28
      TabOrder = 0
      Visible = False
    end
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 191
    Width = 1048
    Height = 530
    ActivePage = TabTransfer
    Align = alCustom
    TabOrder = 1
    object TabBiletSatis: TTabSheet
      Caption = 'B'#304'LET SATI'#350
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label5: TLabel
        Left = 45
        Top = 55
        Width = 72
        Height = 13
        Caption = #220'r'#252'n '#199'e'#351'idi  :'
      end
      object Label8: TLabel
        Left = 765
        Top = 84
        Width = 59
        Height = 13
        Caption = 'Net Fiyat'#305' :'
      end
      object Label9: TLabel
        Left = 763
        Top = 107
        Width = 61
        Height = 13
        Caption = 'Komisyon :'
      end
      object Label10: TLabel
        Left = 730
        Top = 130
        Width = 94
        Height = 13
        Caption = 'Di'#287'er Komisyon :'
      end
      object Label11: TLabel
        Left = 745
        Top = 177
        Width = 79
        Height = 13
        Caption = 'Toplam Fiyat :'
      end
      object Label12: TLabel
        Left = 635
        Top = 200
        Width = 189
        Height = 13
        Caption = 'Geri '#304'ade  Miktar'#305' ('#304'ptal Sonras'#305') :'
      end
      object Label21: TLabel
        Left = 53
        Top = 28
        Width = 63
        Height = 13
        Caption = 'OBS Tarihi :'
      end
      object Label7: TLabel
        Left = 219
        Top = 28
        Width = 60
        Height = 13
        Caption = 'OBS Saati :'
      end
      object Label17: TLabel
        Left = 12
        Top = 79
        Width = 105
        Height = 13
        Caption = 'Hava / Deniz Yolu :'
      end
      object Label13: TLabel
        Left = 688
        Top = 4
        Width = 136
        Height = 13
        Caption = 'Kullan'#305'lan  Kart ('#304#351'yeri) :'
      end
      object Label4: TLabel
        Left = 784
        Top = 54
        Width = 40
        Height = 13
        Caption = #350'irket :'
      end
      object Label20: TLabel
        Left = 13
        Top = 353
        Width = 58
        Height = 13
        Caption = 'A'#231#305'klama :'
      end
      object Label22: TLabel
        Left = 729
        Top = 154
        Width = 95
        Height = 13
        Caption = 'Tarih De'#287'i'#351'ikli'#287'i :'
      end
      object Label99: TLabel
        Left = 790
        Top = 318
        Width = 37
        Height = 13
        Caption = 'Kalan :'
      end
      object Label6: TLabel
        Left = 185
        Top = 178
        Width = 124
        Height = 19
        Caption = 'YOLCU L'#304'STES'#304
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CmbUrunCesidi: TComboBox
        Left = 122
        Top = 52
        Width = 239
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        TabOrder = 4
      end
      object TxtNereden: TEdit
        Left = 122
        Top = 113
        Width = 127
        Height = 21
        TabOrder = 7
      end
      object TxtNereye: TEdit
        Left = 121
        Top = 145
        Width = 127
        Height = 21
        TabOrder = 13
      end
      object ChkBiletiptali: TCheckBox
        Left = 942
        Top = 197
        Width = 79
        Height = 22
        Caption = 'Bilet '#304'ptali'
        TabOrder = 22
      end
      object ChkNereden: TCheckBox
        Left = 12
        Top = 115
        Width = 105
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Nereden / Giri'#351
        TabOrder = 6
        OnClick = ChkNeredenClick
      end
      object ChkNereye: TCheckBox
        Left = 15
        Top = 148
        Width = 100
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Nereye / '#199#305'k'#305#351
        TabOrder = 12
        OnClick = ChkNereyeClick
      end
      object DtObsSaat: TDateTimePicker
        Left = 285
        Top = 25
        Width = 76
        Height = 21
        Date = 40616.692361111110000000
        Time = 40616.692361111110000000
        Kind = dtkTime
        TabOrder = 3
      end
      object DtObsTarihi: TDateTimePicker
        Left = 122
        Top = 25
        Width = 90
        Height = 21
        Date = 40616.692930520830000000
        Time = 40616.692930520830000000
        TabOrder = 2
      end
      object CmbHavaDenizYolu: TComboBox
        Left = 122
        Top = 76
        Width = 239
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        TabOrder = 5
        Items.Strings = (
          'Editable')
      end
      object ChkOnay: TCheckBox
        Left = 220
        Top = 3
        Width = 89
        Height = 22
        Caption = 'Onay Verildi'
        Color = clWhite
        ParentColor = False
        TabOrder = 1
      end
      object CmbKullanilanKart: TComboBox
        Left = 830
        Top = 1
        Width = 158
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        TabOrder = 10
        OnChange = CmbKullanilanKartChange
      end
      object CmbSirket: TComboBox
        Left = 830
        Top = 51
        Width = 158
        Height = 21
        ItemHeight = 0
        TabOrder = 14
      end
      object ChkObsiyon: TCheckBox
        Left = 136
        Top = 3
        Width = 65
        Height = 22
        Caption = 'Opsiyon'
        TabOrder = 0
      end
      object MemAciklama: TMemo
        Left = 77
        Top = 353
        Width = 396
        Height = 66
        ParentShowHint = False
        ScrollBars = ssVertical
        ShowHint = False
        TabOrder = 9
      end
      object Panel2: TPanel
        Left = 0
        Top = 472
        Width = 1040
        Height = 30
        Align = alBottom
        Color = clWhite
        ParentBackground = False
        TabOrder = 21
        object BtnBiletKaydet: TButton
          Left = 621
          Top = 2
          Width = 75
          Height = 25
          Caption = 'Kaydet'
          TabOrder = 0
          OnClick = BtnBiletKaydetClick
        end
        object BtnBiletGuncelle: TButton
          Left = 701
          Top = 2
          Width = 75
          Height = 25
          Caption = 'G'#252'ncelle'
          TabOrder = 1
          OnClick = BtnBiletGuncelleClick
        end
        object BtnBiletTemizle: TButton
          Left = 783
          Top = 2
          Width = 75
          Height = 25
          Caption = 'Temizle'
          TabOrder = 2
          OnClick = BtnBiletTemizleClick
        end
        object BtnBiletSil: TButton
          Left = 864
          Top = 2
          Width = 75
          Height = 25
          Caption = 'Sil'
          TabOrder = 3
          OnClick = BtnBiletSilClick
        end
        object Button1: TButton
          Left = 19
          Top = 1
          Width = 119
          Height = 25
          Caption = 'FATURA YAZDIR'
          TabOrder = 4
          Visible = False
          OnClick = Button1Click
        end
      end
      object CurrToplamFiyat: TAdvMoneyEdit
        Left = 830
        Top = 174
        Width = 103
        Height = 21
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Align = alCustom
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = 8454143
        TabOrder = 19
        Text = '0.00'
        Visible = True
        OnChange = CurrToplamFiyatChange
        Version = '1.1.2.6'
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
      end
      object CurrNetFiyati: TAdvMoneyEdit
        Left = 830
        Top = 80
        Width = 103
        Height = 21
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Align = alCustom
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        TabOrder = 15
        Text = '0.00'
        Visible = True
        OnChange = CurrNetFiyatiChange
        Version = '1.1.2.6'
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
      end
      object CurrKomisyon: TAdvMoneyEdit
        Left = 830
        Top = 104
        Width = 103
        Height = 21
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Align = alCustom
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        TabOrder = 16
        Text = '0.00'
        Visible = True
        OnChange = CurrKomisyonChange
        Version = '1.1.2.6'
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
      end
      object CurrDigerKomisyon: TAdvMoneyEdit
        Left = 830
        Top = 124
        Width = 103
        Height = 21
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Align = alCustom
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        TabOrder = 17
        Text = '0.00'
        Visible = True
        OnChange = CurrDigerKomisyonChange
        Version = '1.1.2.6'
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
      end
      object CurrTarihDegisikligi: TAdvMoneyEdit
        Left = 830
        Top = 151
        Width = 103
        Height = 21
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Align = alCustom
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        TabOrder = 18
        Text = '0.00'
        Visible = True
        OnChange = CurrTarihDegisikligiChange
        Version = '1.1.2.6'
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
      end
      object CurrGeriiade: TAdvMoneyEdit
        Left = 830
        Top = 197
        Width = 103
        Height = 21
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Align = alCustom
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        TabOrder = 20
        Text = '0.00'
        Visible = True
        OnChange = CurrGeriiadeChange
        Version = '1.1.2.6'
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
      end
      object CurrKullanilanKart: TAdvMoneyEdit
        Left = 830
        Top = 27
        Width = 158
        Height = 21
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Align = alCustom
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        ReadOnly = True
        TabOrder = 11
        Text = '0.00'
        Visible = False
        Version = '1.1.2.6'
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
      end
      object BitBtn4: TBitBtn
        Left = 11
        Top = 167
        Width = 30
        Height = 30
        DoubleBuffered = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A751C1A751C0B6F0F0B6F0F0B6F
          0D0B6F0D086B0B086B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A751C72D288
          22C34D22C34D22C24B22C24B1DAC3B086B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF1A751C6ED08421C04D21BE4C21BE4A21BE4A1CA839086B0BFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF1A751C6ED18421C04F21C04F21C04D21BE4C1CAA3B08
          6B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A751C6ED08621C25021C24F21C0
          4F21C04F1CAB3C086B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A751C6ED287
          1EC3531EC25221C25021C24F1CAD3E086B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF1A751C6FD58C21C55521C3531EC3531EC2521CAF3F086B0BFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF1A751C5CCB7C1FC6581FC65721C55521C3551BAE4208
          6B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2083291A751C
          1A751C1A751C1A751C1A751C1A751C1A751C086B0B5CCB7C1FC85B1FC65A1FC6
          581FC6581BAE42086B0B086B0B086B0B086B0B086B0B086B0B086B0B086B0B08
          6B0B278D3446CE781BB44D1BB44D1BB44D1BB44D1BB44D1BB44D1BB44D5CCB7C
          1FC95E1FC95D1FC85B1FC65A1BAE421BAE421BB44D1BB44D1BB44D1BB44D1BB4
          4D1BB44D1BAE4210801C28903555ED9F18D16D1ED36E1ED16D1ED16B1ED0691E
          D0681ECE661FCD631FCD621FCB601FC95E1FC95D1FC85B1FC65A1FC6581FC658
          1FC55721C55521C3531EC35321C04F12831D28933855F0A218D4711CD5731CD5
          711CD36E1ED16D1ED16B1ED0691ED0681ECE661FCD651FCD621FCB601FC95E1F
          C95D1FC85B1FC85B1FC6571FC6581FC55721C55521C04F12872029963B53F2A5
          17D8751CD8761CD6741CD5731CD5711CD36E1ED36D1ED16B1ED0691ED0681ECE
          661FCE651FCD631FCB601FCB5E1FC95D1FC85D1FC85B1FC65A1FC65821C04F12
          8B23299B3E4FF4A714DA7717DA7917D87718D77618D47118D57019D46F1BD370
          1ED36E1ED16B1ED0691ED0681ECE661DCD641CCC611BC95F1BC95D1BC75B1BC6
          5A1BC6581FC65A128E262B9E416CFFBD4CEFA34EF0A24FEE9F4FEE9E4FED9C51
          EB9B53E89A18D5701CD5711CD3701ED36E1ED16D1DCF681CCC6154E38F52E38D
          52E28B52E08952E08852DD8655E28A1E9832249E3C249E3C249E3C249E3C249E
          3C249E3C249E3C249E3C249E3C6EE5A01CD8761CD6731CD5711CD37019C35E12
          8C23128C23128C23128C23128C23128C23128C23128C23128C23FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E98326EE5A01BD9791CD9781CD8
          761CD67419C35E1E9832FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E98326DEAA6
          1BDC7E1BDB7C1BDB7B1BD9781BC8641E9832FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF1E983270ECA619E08319DE8119DC7E1BDB7C1BCB681E9832FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF1E983270ECA819E08419E08419E08319DE8119CF6D1E
          9832FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E98326FEEAA19E08419E08419E0
          8419E08419D2731E9832FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E98326EF0AA
          12DE7F12DE7F12DE7F12DE7F14D3701E9832FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF249E3C6EF0AC8AFFCE8AFFCE8AFFCE8AFFCE72F2AF249E3CFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF249E3C2CBB5331C15731C15731C15731C1572CBB5324
          9E3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 25
        OnClick = BitBtn4Click
      end
      object BitBtn5: TBitBtn
        Left = 47
        Top = 167
        Width = 30
        Height = 30
        DoubleBuffered = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0100AF0301CD0000CA0000CA0000
          C90000C90000C80000C80000C80000C60000C60000C40000C40000C40000C300
          00C20000C20100C00100BF0200BE0300BD0200BC0200BD0000AD0C0CD96288FF
          274CFF2A4CFF294AFF2748FF2342FF223FFF1F3DFF1E3BFF1C36FF1A33FF1930
          FF172DFF1528FF1424FF1220FF111BFF1018FF0F14FF0E12FF0D0DFF0909FF05
          00CD1D1CE35E84FF2A4DFF2C4FFF2749FF2749FF2645FF2443FF233EFF203BFF
          1D39FF1C37FF1B33FF1830FF172DFF152AFF1426FF1323FF111EFF101BFF0F17
          FF0E14FF0E12FF0200DB534FF086A3FF3057FF2C50FF2C4FFF2B4EFF2A49FF27
          49FF2645FF2542FF233EFF203BFF1C39FF1D37FF1B36FF1830FF172DFF152AFF
          1426FF1323FF111EFF101BFF1019FF0300E54D4AF5A2BAFF7994FF5F7EFF456A
          FF3257FF294EFF284CFF2847FF2547FF2545FF2441FF2340FF203BFF1C39FF1D
          37FF1B36FF1830FF172EFF152BFF1426FF1323FF1221FF0200EE4E4BFAA0BAFF
          7594FF7897FF7995FF7594FF6B8BFF6080FF4A6CFF4467FF3356FF3453FF2041
          FF203DFF1E3BFF1B36FF1934FF1832FF1630FF132BFF1229FF1226FF1025FF00
          00F74F4CFF9FB9FF7292FF7494FF7594FF7493FF7491FF6E8FFF6F8EFF6D8CFF
          6C8BFF6B89FF6B87FF6786FF6683FF647FFF637DFF6079FF5F78FF5D75FF5A72
          FF556EFF5771FF3F3EFF5755FFB4CCFF9EB8FFA0B9FFA0B9FFA0B9FF9FB7FF9F
          B7FF9AB5FF9BB4FF98B3FF97B1FF94ADFF93ABFF92AAFF91A8FF8FA6FF8EA6FF
          8C9FFF8A9FFF889EFF889DFF86A0FF514EFF463EFF5D5BFF5B58FF5B58FF5B58
          FF5B58FF5B58FF5B58FF5C58FF5C58FF5C58FF5B58FF5B58FF5B58FF5B58FF5A
          58FF5A58FF5A58FF5B58FF5B56FF5B56FF5A56FF5C58FF463EFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 26
        OnClick = BitBtn5Click
      end
      object AdvBiletYolcuListesi: TAdvStringGrid
        Left = 11
        Top = 199
        Width = 462
        Height = 105
        Cursor = crDefault
        ColCount = 4
        FixedCols = 0
        RowCount = 2
        ScrollBars = ssBoth
        TabOrder = 8
        HoverRowCells = [hcNormal, hcSelected]
        OnCanEditCell = AdvBiletYolcuListesiCanEditCell
        OnGetEditorType = AdvBiletYolcuListesiGetEditorType
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          'T'#252'r'#252
          'Ad'#305
          'Soyad'#305
          'Do'#287'um Tarihi')
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
        ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownHeader.Font.Color = clWindowText
        ControlLook.DropDownHeader.Font.Height = -11
        ControlLook.DropDownHeader.Font.Name = 'Tahoma'
        ControlLook.DropDownHeader.Font.Style = []
        ControlLook.DropDownHeader.Visible = True
        ControlLook.DropDownHeader.Buttons = <>
        ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownFooter.Font.Color = clWindowText
        ControlLook.DropDownFooter.Font.Height = -11
        ControlLook.DropDownFooter.Font.Name = 'Tahoma'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDownClear = '(All)'
        FilterEdit.TypeNames.Strings = (
          'Starts with'
          'Ends with'
          'Contains'
          'Not contains'
          'Equal'
          'Not equal'
          'Clear')
        FixedColWidth = 51
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'Tahoma'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'Tahoma'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurence'
        SearchFooter.HintFindPrev = 'Find previous occurence'
        SearchFooter.HintHighlight = 'Highlight occurences'
        SearchFooter.MatchCaseCaption = 'Match case'
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.8.7.0'
        ColWidths = (
          51
          154
          138
          91)
        RowHeights = (
          22
          22)
      end
      object CurrBKalan: TAdvMoneyEdit
        Left = 831
        Top = 315
        Width = 101
        Height = 21
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Align = alCustom
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = 8454143
        TabOrder = 23
        Text = '0.00'
        Visible = True
        OnChange = CurrBKalanChange
        Version = '1.1.2.6'
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
      end
      object ChkBOdendi: TCheckBox
        Left = 946
        Top = 315
        Width = 60
        Height = 22
        Caption = #214'dendi'
        TabOrder = 24
        OnClick = ChkBOdendiClick
      end
      object GroupBox4: TGroupBox
        Left = 518
        Top = 219
        Width = 415
        Height = 90
        Caption = #214'deme'
        TabOrder = 27
        object CmbB1: TComboBox
          Left = 106
          Top = 14
          Width = 200
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 1
          OnChange = CmbB1Change
        end
        object CurrB1: TAdvMoneyEdit
          Left = 309
          Top = 15
          Width = 101
          Height = 21
          EditAlign = eaRight
          EditType = etMoney
          EmptyTextStyle = []
          Precision = 2
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Align = alCustom
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          Color = clWhite
          TabOrder = 2
          Text = '0.00'
          Visible = True
          OnChange = CurrB1Change
          Version = '1.1.2.6'
          CalculatorLook.ButtonWidth = 24
          CalculatorLook.ButtonHeight = 24
          CalculatorLook.ButtonColor = clSilver
          CalculatorLook.Color = clWhite
          CalculatorLook.Flat = False
          CalculatorLook.Font.Charset = DEFAULT_CHARSET
          CalculatorLook.Font.Color = clWindowText
          CalculatorLook.Font.Height = -11
          CalculatorLook.Font.Name = 'Tahoma'
          CalculatorLook.Font.Style = []
        end
        object CmbB2: TComboBox
          Left = 106
          Top = 38
          Width = 200
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 4
          OnChange = CmbB2Change
        end
        object CurrB2: TAdvMoneyEdit
          Left = 309
          Top = 39
          Width = 101
          Height = 21
          EditAlign = eaRight
          EditType = etMoney
          EmptyTextStyle = []
          Precision = 2
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Align = alCustom
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          Color = clWhite
          TabOrder = 5
          Text = '0.00'
          Visible = True
          OnChange = CurrB2Change
          Version = '1.1.2.6'
          CalculatorLook.ButtonWidth = 24
          CalculatorLook.ButtonHeight = 24
          CalculatorLook.ButtonColor = clSilver
          CalculatorLook.Color = clWhite
          CalculatorLook.Flat = False
          CalculatorLook.Font.Charset = DEFAULT_CHARSET
          CalculatorLook.Font.Color = clWindowText
          CalculatorLook.Font.Height = -11
          CalculatorLook.Font.Name = 'Tahoma'
          CalculatorLook.Font.Style = []
        end
        object CmbB3: TComboBox
          Left = 106
          Top = 62
          Width = 200
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 7
          OnChange = CmbB3Change
        end
        object CurrB3: TAdvMoneyEdit
          Left = 309
          Top = 62
          Width = 101
          Height = 21
          EditAlign = eaRight
          EditType = etMoney
          EmptyTextStyle = []
          Precision = 2
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Align = alCustom
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          Color = clWhite
          TabOrder = 8
          Text = '0.00'
          Visible = True
          OnChange = CurrB3Change
          Version = '1.1.2.6'
          CalculatorLook.ButtonWidth = 24
          CalculatorLook.ButtonHeight = 24
          CalculatorLook.ButtonColor = clSilver
          CalculatorLook.Color = clWhite
          CalculatorLook.Flat = False
          CalculatorLook.Font.Charset = DEFAULT_CHARSET
          CalculatorLook.Font.Color = clWindowText
          CalculatorLook.Font.Height = -11
          CalculatorLook.Font.Name = 'Tahoma'
          CalculatorLook.Font.Style = []
        end
        object DtB1: TDateTimePicker
          Left = 7
          Top = 15
          Width = 93
          Height = 21
          Date = 40616.692930520830000000
          Time = 40616.692930520830000000
          TabOrder = 0
        end
        object DtB2: TDateTimePicker
          Left = 7
          Top = 38
          Width = 93
          Height = 21
          Date = 40616.692930520830000000
          Time = 40616.692930520830000000
          TabOrder = 3
        end
        object DtB3: TDateTimePicker
          Left = 7
          Top = 61
          Width = 93
          Height = 21
          Date = 40616.692930520830000000
          Time = 40616.692930520830000000
          TabOrder = 6
        end
      end
      object Panel7: TPanel
        Left = 246
        Top = 97
        Width = 457
        Height = 40
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 28
        Visible = False
        object Label18: TLabel
          Left = 358
          Top = -1
          Width = 25
          Height = 13
          Caption = 'Pnr :'
        end
        object Label87: TLabel
          Left = 271
          Top = -1
          Width = 50
          Height = 13
          Caption = 'Ucus No :'
        end
        object Label14: TLabel
          Left = 190
          Top = 0
          Width = 60
          Height = 13
          Caption = 'Var'#305#351' Saati'
        end
        object Label23: TLabel
          Left = 106
          Top = 0
          Width = 65
          Height = 13
          Caption = 'Kalk'#305#351' Saati'
        end
        object Label88: TLabel
          Left = 13
          Top = 0
          Width = 68
          Height = 13
          Caption = 'Kalk'#305#351' Tarihi'
        end
        object DtNereden: TDateTimePicker
          Left = 11
          Top = 16
          Width = 89
          Height = 21
          Date = 40842.628292708330000000
          Time = 40842.628292708330000000
          TabOrder = 0
        end
        object DtSaat1: TDateTimePicker
          Left = 106
          Top = 16
          Width = 72
          Height = 21
          Date = 40842.628292708330000000
          Time = 40842.628292708330000000
          Kind = dtkTime
          TabOrder = 1
        end
        object TxtUcusNo1: TEdit
          Left = 271
          Top = 16
          Width = 81
          Height = 21
          TabOrder = 3
        end
        object TxtPnr: TEdit
          Left = 358
          Top = 16
          Width = 97
          Height = 21
          TabOrder = 4
        end
        object DtSaat1x: TDateTimePicker
          Left = 187
          Top = 16
          Width = 72
          Height = 21
          Date = 40842.628292708330000000
          Time = 40842.628292708330000000
          Kind = dtkTime
          TabOrder = 2
        end
      end
      object Panel8: TPanel
        Left = 253
        Top = 143
        Width = 450
        Height = 25
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 29
        Visible = False
        object DtNereye: TDateTimePicker
          Left = 4
          Top = 1
          Width = 89
          Height = 21
          Date = 40842.628292708330000000
          Time = 40842.628292708330000000
          TabOrder = 0
        end
        object DtSaat2: TDateTimePicker
          Left = 99
          Top = 1
          Width = 72
          Height = 21
          Date = 40842.628292708330000000
          Time = 40842.628292708330000000
          Kind = dtkTime
          TabOrder = 1
        end
        object TxtUcusNo2: TEdit
          Left = 263
          Top = 1
          Width = 81
          Height = 21
          TabOrder = 4
        end
        object TxtPnr2: TEdit
          Left = 350
          Top = 1
          Width = 97
          Height = 21
          TabOrder = 3
        end
        object DtSaat2x: TDateTimePicker
          Left = 180
          Top = 1
          Width = 72
          Height = 21
          Date = 40842.628292708330000000
          Time = 40842.628292708330000000
          Kind = dtkTime
          TabOrder = 2
        end
      end
    end
    object TabOtelSatis: TTabSheet
      Caption = 'OTEL SATI'#350
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label24: TLabel
        Left = 27
        Top = 12
        Width = 50
        Height = 13
        Caption = 'Otel Ad'#305' :'
      end
      object Label25: TLabel
        Left = 12
        Top = 37
        Width = 65
        Height = 13
        Caption = 'Otel Adres :'
      end
      object Label26: TLabel
        Left = 3
        Top = 62
        Width = 74
        Height = 13
        Caption = 'Otel Telefon :'
      end
      object Label27: TLabel
        Left = 822
        Top = 36
        Width = 66
        Height = 13
        Caption = 'Giri'#351' Tarihi :'
      end
      object Label28: TLabel
        Left = 821
        Top = 60
        Width = 67
        Height = 13
        Caption = #199#305'k'#305#351' Tarihi :'
      end
      object Label29: TLabel
        Left = 621
        Top = 85
        Width = 64
        Height = 13
        Caption = 'Oda Say'#305's'#305' :'
      end
      object Label30: TLabel
        Left = 586
        Top = 36
        Width = 99
        Height = 13
        Caption = 'Konaklama '#350'ekli :'
      end
      object Label31: TLabel
        Left = 47
        Top = 112
        Width = 30
        Height = 13
        Caption = #304'lgili :'
      end
      object Label36: TLabel
        Left = 807
        Top = 192
        Width = 79
        Height = 13
        Caption = 'Toplam Fiyat :'
      end
      object Label38: TLabel
        Left = 15
        Top = 87
        Width = 62
        Height = 13
        Caption = 'Otel Email :'
      end
      object Label39: TLabel
        Left = 596
        Top = 61
        Width = 88
        Height = 13
        Caption = 'Oda Kategorisi :'
      end
      object Label41: TLabel
        Left = 116
        Top = 203
        Width = 207
        Height = 19
        Caption = 'KONAKLAYACAK K'#304#350#304'LER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label32: TLabel
        Left = 19
        Top = 135
        Width = 58
        Height = 13
        Caption = 'A'#231#305'klama :'
      end
      object Label58: TLabel
        Left = 549
        Top = 9
        Width = 136
        Height = 13
        Caption = 'Kullan'#305'lan  Kart ('#304#351'yeri) :'
      end
      object Label60: TLabel
        Left = 827
        Top = 145
        Width = 59
        Height = 13
        Caption = 'Net Fiyat'#305' :'
      end
      object Label61: TLabel
        Left = 825
        Top = 169
        Width = 61
        Height = 13
        Caption = 'Komisyon :'
      end
      object Label89: TLabel
        Left = 852
        Top = 309
        Width = 37
        Height = 13
        Caption = 'Kalan :'
      end
      object TxtKonaklamaSekli: TEdit
        Left = 691
        Top = 33
        Width = 99
        Height = 21
        TabOrder = 8
      end
      object Txtilgili: TEdit
        Left = 83
        Top = 109
        Width = 253
        Height = 21
        TabOrder = 4
      end
      object DtGirisTarihi: TDateTimePicker
        Left = 894
        Top = 32
        Width = 100
        Height = 21
        Date = 41164.609712916670000000
        Time = 41164.609712916670000000
        TabOrder = 11
      end
      object DtCikisTarihi: TDateTimePicker
        Left = 894
        Top = 57
        Width = 100
        Height = 21
        Date = 41164.609712916670000000
        Time = 41164.609712916670000000
        TabOrder = 13
      end
      object CurrOdaSayisi: TMoneyEdit
        Left = 691
        Top = 82
        Width = 100
        Height = 22
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = '3'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        Version = '1.1.1.0'
      end
      object AdvKisiler: TAdvStringGrid
        Left = 6
        Top = 228
        Width = 542
        Height = 130
        Cursor = crDefault
        FixedCols = 0
        RowCount = 2
        ScrollBars = ssBoth
        TabOrder = 6
        HoverRowCells = [hcNormal, hcSelected]
        OnCanEditCell = AdvKisilerCanEditCell
        OnGetEditorType = AdvKisilerGetEditorType
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          'T'#252'r'#252
          'Ad'#305
          'Soyad'#305
          'Do'#287'um Tarihi'
          'Oda No')
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
        ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownHeader.Font.Color = clWindowText
        ControlLook.DropDownHeader.Font.Height = -11
        ControlLook.DropDownHeader.Font.Name = 'Tahoma'
        ControlLook.DropDownHeader.Font.Style = []
        ControlLook.DropDownHeader.Visible = True
        ControlLook.DropDownHeader.Buttons = <>
        ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownFooter.Font.Color = clWindowText
        ControlLook.DropDownFooter.Font.Height = -11
        ControlLook.DropDownFooter.Font.Name = 'Tahoma'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDownClear = '(All)'
        FilterEdit.TypeNames.Strings = (
          'Starts with'
          'Ends with'
          'Contains'
          'Not contains'
          'Equal'
          'Not equal'
          'Clear')
        FixedColWidth = 51
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'Tahoma'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'Tahoma'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurence'
        SearchFooter.HintFindPrev = 'Find previous occurence'
        SearchFooter.HintHighlight = 'Highlight occurences'
        SearchFooter.MatchCaseCaption = 'Match case'
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.8.7.0'
        ColWidths = (
          51
          161
          143
          91
          56)
        RowHeights = (
          22
          22)
      end
      object BtnEkle: TBitBtn
        Left = 3
        Top = 196
        Width = 30
        Height = 30
        DoubleBuffered = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A751C1A751C0B6F0F0B6F0F0B6F
          0D0B6F0D086B0B086B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A751C72D288
          22C34D22C34D22C24B22C24B1DAC3B086B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF1A751C6ED08421C04D21BE4C21BE4A21BE4A1CA839086B0BFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF1A751C6ED18421C04F21C04F21C04D21BE4C1CAA3B08
          6B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A751C6ED08621C25021C24F21C0
          4F21C04F1CAB3C086B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A751C6ED287
          1EC3531EC25221C25021C24F1CAD3E086B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF1A751C6FD58C21C55521C3531EC3531EC2521CAF3F086B0BFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF1A751C5CCB7C1FC6581FC65721C55521C3551BAE4208
          6B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2083291A751C
          1A751C1A751C1A751C1A751C1A751C1A751C086B0B5CCB7C1FC85B1FC65A1FC6
          581FC6581BAE42086B0B086B0B086B0B086B0B086B0B086B0B086B0B086B0B08
          6B0B278D3446CE781BB44D1BB44D1BB44D1BB44D1BB44D1BB44D1BB44D5CCB7C
          1FC95E1FC95D1FC85B1FC65A1BAE421BAE421BB44D1BB44D1BB44D1BB44D1BB4
          4D1BB44D1BAE4210801C28903555ED9F18D16D1ED36E1ED16D1ED16B1ED0691E
          D0681ECE661FCD631FCD621FCB601FC95E1FC95D1FC85B1FC65A1FC6581FC658
          1FC55721C55521C3531EC35321C04F12831D28933855F0A218D4711CD5731CD5
          711CD36E1ED16D1ED16B1ED0691ED0681ECE661FCD651FCD621FCB601FC95E1F
          C95D1FC85B1FC85B1FC6571FC6581FC55721C55521C04F12872029963B53F2A5
          17D8751CD8761CD6741CD5731CD5711CD36E1ED36D1ED16B1ED0691ED0681ECE
          661FCE651FCD631FCB601FCB5E1FC95D1FC85D1FC85B1FC65A1FC65821C04F12
          8B23299B3E4FF4A714DA7717DA7917D87718D77618D47118D57019D46F1BD370
          1ED36E1ED16B1ED0691ED0681ECE661DCD641CCC611BC95F1BC95D1BC75B1BC6
          5A1BC6581FC65A128E262B9E416CFFBD4CEFA34EF0A24FEE9F4FEE9E4FED9C51
          EB9B53E89A18D5701CD5711CD3701ED36E1ED16D1DCF681CCC6154E38F52E38D
          52E28B52E08952E08852DD8655E28A1E9832249E3C249E3C249E3C249E3C249E
          3C249E3C249E3C249E3C249E3C6EE5A01CD8761CD6731CD5711CD37019C35E12
          8C23128C23128C23128C23128C23128C23128C23128C23128C23FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E98326EE5A01BD9791CD9781CD8
          761CD67419C35E1E9832FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E98326DEAA6
          1BDC7E1BDB7C1BDB7B1BD9781BC8641E9832FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF1E983270ECA619E08319DE8119DC7E1BDB7C1BCB681E9832FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF1E983270ECA819E08419E08419E08319DE8119CF6D1E
          9832FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E98326FEEAA19E08419E08419E0
          8419E08419D2731E9832FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E98326EF0AA
          12DE7F12DE7F12DE7F12DE7F14D3701E9832FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF249E3C6EF0AC8AFFCE8AFFCE8AFFCE8AFFCE72F2AF249E3CFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF249E3C2CBB5331C15731C15731C15731C1572CBB5324
          9E3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 12
        OnClick = BtnEkleClick
      end
      object CmbOdaKategori: TComboBox
        Left = 690
        Top = 57
        Width = 99
        Height = 21
        ItemHeight = 0
        TabOrder = 9
        Items.Strings = (
          'Sng'
          'Dbl'
          'Trpl'
          'Family Room')
      end
      object BtnCikar: TBitBtn
        Left = 39
        Top = 196
        Width = 30
        Height = 30
        DoubleBuffered = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0100AF0301CD0000CA0000CA0000
          C90000C90000C80000C80000C80000C60000C60000C40000C40000C40000C300
          00C20000C20100C00100BF0200BE0300BD0200BC0200BD0000AD0C0CD96288FF
          274CFF2A4CFF294AFF2748FF2342FF223FFF1F3DFF1E3BFF1C36FF1A33FF1930
          FF172DFF1528FF1424FF1220FF111BFF1018FF0F14FF0E12FF0D0DFF0909FF05
          00CD1D1CE35E84FF2A4DFF2C4FFF2749FF2749FF2645FF2443FF233EFF203BFF
          1D39FF1C37FF1B33FF1830FF172DFF152AFF1426FF1323FF111EFF101BFF0F17
          FF0E14FF0E12FF0200DB534FF086A3FF3057FF2C50FF2C4FFF2B4EFF2A49FF27
          49FF2645FF2542FF233EFF203BFF1C39FF1D37FF1B36FF1830FF172DFF152AFF
          1426FF1323FF111EFF101BFF1019FF0300E54D4AF5A2BAFF7994FF5F7EFF456A
          FF3257FF294EFF284CFF2847FF2547FF2545FF2441FF2340FF203BFF1C39FF1D
          37FF1B36FF1830FF172EFF152BFF1426FF1323FF1221FF0200EE4E4BFAA0BAFF
          7594FF7897FF7995FF7594FF6B8BFF6080FF4A6CFF4467FF3356FF3453FF2041
          FF203DFF1E3BFF1B36FF1934FF1832FF1630FF132BFF1229FF1226FF1025FF00
          00F74F4CFF9FB9FF7292FF7494FF7594FF7493FF7491FF6E8FFF6F8EFF6D8CFF
          6C8BFF6B89FF6B87FF6786FF6683FF647FFF637DFF6079FF5F78FF5D75FF5A72
          FF556EFF5771FF3F3EFF5755FFB4CCFF9EB8FFA0B9FFA0B9FFA0B9FF9FB7FF9F
          B7FF9AB5FF9BB4FF98B3FF97B1FF94ADFF93ABFF92AAFF91A8FF8FA6FF8EA6FF
          8C9FFF8A9FFF889EFF889DFF86A0FF514EFF463EFF5D5BFF5B58FF5B58FF5B58
          FF5B58FF5B58FF5B58FF5C58FF5C58FF5C58FF5B58FF5B58FF5B58FF5B58FF5A
          58FF5A58FF5A58FF5B58FF5B56FF5B56FF5A56FF5C58FF463EFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 20
        OnClick = BtnCikarClick
      end
      object CmbOtelAdi: TComboBox
        Left = 83
        Top = 7
        Width = 253
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        TabOrder = 0
        OnChange = CmbOtelAdiChange
        Items.Strings = (
          'Sng'
          'Dbl'
          'Trpl'
          'Family Room')
      end
      object CmbOtelAdres: TComboBox
        Left = 83
        Top = 34
        Width = 253
        Height = 21
        Style = csSimple
        Enabled = False
        ItemHeight = 0
        TabOrder = 1
        Items.Strings = (
          'Sng'
          'Dbl'
          'Trpl'
          'Family Room')
      end
      object CmbOtelTelefon: TComboBox
        Left = 83
        Top = 59
        Width = 253
        Height = 21
        Style = csSimple
        Enabled = False
        ItemHeight = 0
        TabOrder = 2
        Items.Strings = (
          'Sng'
          'Dbl'
          'Trpl'
          'Family Room')
      end
      object CmbOtelEmail: TComboBox
        Left = 83
        Top = 84
        Width = 253
        Height = 21
        Style = csSimple
        Enabled = False
        ItemHeight = 0
        TabOrder = 3
        Items.Strings = (
          'Sng'
          'Dbl'
          'Trpl'
          'Family Room')
      end
      object Panel3: TPanel
        Left = 0
        Top = 471
        Width = 1040
        Height = 31
        Align = alBottom
        Color = clWhite
        ParentBackground = False
        TabOrder = 21
        object BtnOtelKaydet: TButton
          Left = 621
          Top = 3
          Width = 75
          Height = 25
          Caption = 'Kaydet'
          TabOrder = 0
          OnClick = BtnOtelKaydetClick
        end
        object BtnOtelGuncelle: TButton
          Left = 702
          Top = 3
          Width = 75
          Height = 25
          Caption = 'G'#252'ncelle'
          Enabled = False
          TabOrder = 1
          OnClick = BtnOtelGuncelleClick
        end
        object BtnOtelTemizle: TButton
          Left = 783
          Top = 3
          Width = 75
          Height = 25
          Caption = 'Temizle'
          TabOrder = 2
          OnClick = BtnOtelTemizleClick
        end
        object BtnOtelSil: TButton
          Left = 864
          Top = 3
          Width = 75
          Height = 25
          Caption = 'Sil'
          Enabled = False
          TabOrder = 3
          OnClick = BtnOtelSilClick
        end
        object Button6: TButton
          Left = 18
          Top = 2
          Width = 119
          Height = 25
          Caption = 'FATURA YAZDIR'
          TabOrder = 4
          Visible = False
        end
      end
      object MemOtelAciklama: TMemo
        Left = 83
        Top = 135
        Width = 253
        Height = 50
        ScrollBars = ssVertical
        TabOrder = 5
      end
      object CurrOtelToplamFiyat: TAdvMoneyEdit
        Left = 893
        Top = 189
        Width = 101
        Height = 21
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Align = alCustom
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = 8454143
        TabOrder = 16
        Text = '0.00'
        Visible = True
        Version = '1.1.2.6'
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
      end
      object CmbOtelKullanilanKart: TComboBox
        Left = 691
        Top = 6
        Width = 158
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        TabOrder = 7
        OnChange = CmbOtelKullanilanKartChange
      end
      object CurrOtelKullanilanKart: TAdvMoneyEdit
        Left = 857
        Top = 6
        Width = 121
        Height = 21
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Align = alCustom
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        ReadOnly = True
        TabOrder = 22
        Text = '0.00'
        Visible = True
        Version = '1.1.2.6'
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
      end
      object CurrOtelNetFiyat: TAdvMoneyEdit
        Left = 893
        Top = 142
        Width = 101
        Height = 21
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Align = alCustom
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        TabOrder = 14
        Text = '0.00'
        Visible = True
        OnChange = CurrOtelNetFiyatChange
        Version = '1.1.2.6'
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
      end
      object CurrOtelKomisyon: TAdvMoneyEdit
        Left = 893
        Top = 166
        Width = 101
        Height = 21
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Align = alCustom
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        TabOrder = 15
        Text = '0.00'
        Visible = True
        OnChange = CurrOtelKomisyonChange
        Version = '1.1.2.6'
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
      end
      object CurrOKalan: TAdvMoneyEdit
        Left = 893
        Top = 306
        Width = 101
        Height = 21
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Align = alCustom
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = 8454143
        TabOrder = 18
        Text = '0.00'
        Visible = True
        OnChange = CurrOKalanChange
        Version = '1.1.2.6'
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
      end
      object ChkOOdendi: TCheckBox
        Left = 934
        Top = 333
        Width = 60
        Height = 22
        Caption = #214'dendi'
        TabOrder = 19
        OnClick = ChkOOdendiClick
      end
      object GroupBox1: TGroupBox
        Left = 577
        Top = 211
        Width = 417
        Height = 90
        Caption = #214'deme'
        TabOrder = 17
        object CmbO1: TComboBox
          Left = 106
          Top = 15
          Width = 190
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 0
          OnChange = CmbO1Change
        end
        object CurrO1: TAdvMoneyEdit
          Left = 307
          Top = 12
          Width = 101
          Height = 21
          EditAlign = eaRight
          EditType = etMoney
          EmptyTextStyle = []
          Precision = 2
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Align = alCustom
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          Color = clWhite
          TabOrder = 1
          Text = '0.00'
          Visible = True
          OnChange = CurrO1Change
          Version = '1.1.2.6'
          CalculatorLook.ButtonWidth = 24
          CalculatorLook.ButtonHeight = 24
          CalculatorLook.ButtonColor = clSilver
          CalculatorLook.Color = clWhite
          CalculatorLook.Flat = False
          CalculatorLook.Font.Charset = DEFAULT_CHARSET
          CalculatorLook.Font.Color = clWindowText
          CalculatorLook.Font.Height = -11
          CalculatorLook.Font.Name = 'Tahoma'
          CalculatorLook.Font.Style = []
        end
        object CmbO2: TComboBox
          Left = 106
          Top = 38
          Width = 190
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 2
          OnChange = CmbO2Change
        end
        object CurrO2: TAdvMoneyEdit
          Left = 307
          Top = 35
          Width = 101
          Height = 21
          EditAlign = eaRight
          EditType = etMoney
          EmptyTextStyle = []
          Precision = 2
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Align = alCustom
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          Color = clWhite
          TabOrder = 3
          Text = '0.00'
          Visible = True
          OnChange = CurrO2Change
          Version = '1.1.2.6'
          CalculatorLook.ButtonWidth = 24
          CalculatorLook.ButtonHeight = 24
          CalculatorLook.ButtonColor = clSilver
          CalculatorLook.Color = clWhite
          CalculatorLook.Flat = False
          CalculatorLook.Font.Charset = DEFAULT_CHARSET
          CalculatorLook.Font.Color = clWindowText
          CalculatorLook.Font.Height = -11
          CalculatorLook.Font.Name = 'Tahoma'
          CalculatorLook.Font.Style = []
        end
        object CmbO3: TComboBox
          Left = 106
          Top = 61
          Width = 190
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 4
          OnChange = CmbO3Change
        end
        object CurrO3: TAdvMoneyEdit
          Left = 307
          Top = 62
          Width = 101
          Height = 21
          EditAlign = eaRight
          EditType = etMoney
          EmptyTextStyle = []
          Precision = 2
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Align = alCustom
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          Color = clWhite
          TabOrder = 5
          Text = '0.00'
          Visible = True
          OnChange = CurrO3Change
          Version = '1.1.2.6'
          CalculatorLook.ButtonWidth = 24
          CalculatorLook.ButtonHeight = 24
          CalculatorLook.ButtonColor = clSilver
          CalculatorLook.Color = clWhite
          CalculatorLook.Flat = False
          CalculatorLook.Font.Charset = DEFAULT_CHARSET
          CalculatorLook.Font.Color = clWindowText
          CalculatorLook.Font.Height = -11
          CalculatorLook.Font.Name = 'Tahoma'
          CalculatorLook.Font.Style = []
        end
        object DtO1: TDateTimePicker
          Left = 7
          Top = 15
          Width = 93
          Height = 21
          Date = 40616.692930520830000000
          Time = 40616.692930520830000000
          TabOrder = 6
        end
        object DtO2: TDateTimePicker
          Left = 7
          Top = 38
          Width = 93
          Height = 21
          Date = 40616.692930520830000000
          Time = 40616.692930520830000000
          TabOrder = 7
        end
        object DtO3: TDateTimePicker
          Left = 7
          Top = 61
          Width = 93
          Height = 21
          Date = 40616.692930520830000000
          Time = 40616.692930520830000000
          TabOrder = 8
        end
      end
      object Button4: TButton
        Left = 489
        Top = 112
        Width = 75
        Height = 25
        Caption = 'Button4'
        TabOrder = 23
        Visible = False
        OnClick = Button4Click
      end
    end
    object TabTransfer: TTabSheet
      Caption = 'TRANSFER'
      ImageIndex = 2
      object Label35: TLabel
        Left = 228
        Top = 168
        Width = 32
        Height = 13
        Caption = 'Ara'#231' :'
      end
      object Label37: TLabel
        Left = 809
        Top = 333
        Width = 79
        Height = 13
        Caption = 'Toplam Fiyat :'
      end
      object Label42: TLabel
        Left = 57
        Top = 8
        Width = 24
        Height = 13
        Caption = 'Ad'#305' :'
      end
      object Label43: TLabel
        Left = 35
        Top = 28
        Width = 44
        Height = 13
        Caption = 'Soyad'#305' :'
      end
      object Label44: TLabel
        Left = 35
        Top = 51
        Width = 44
        Height = 13
        Caption = 'Cep No :'
      end
      object Label49: TLabel
        Left = 18
        Top = 168
        Width = 61
        Height = 13
        Caption = 'Ki'#351'i Say'#305's'#305' :'
      end
      object Label50: TLabel
        Left = 29
        Top = 76
        Width = 50
        Height = 13
        Caption = 'Otel Ad'#305' :'
      end
      object Label51: TLabel
        Left = 5
        Top = 100
        Width = 74
        Height = 13
        Caption = 'Otel Telefon :'
      end
      object Label52: TLabel
        Left = 14
        Top = 123
        Width = 65
        Height = 13
        Caption = 'Otel Adres :'
      end
      object Label55: TLabel
        Left = 17
        Top = 146
        Width = 62
        Height = 13
        Caption = 'Otel Email :'
      end
      object Label56: TLabel
        Left = 21
        Top = 193
        Width = 58
        Height = 13
        Caption = 'A'#231#305'klama :'
      end
      object Label59: TLabel
        Left = 1
        Top = 238
        Width = 136
        Height = 13
        Caption = 'Kullan'#305'lan  Kart ('#304#351'yeri) :'
      end
      object Label62: TLabel
        Left = 829
        Top = 287
        Width = 59
        Height = 13
        Caption = 'Net Fiyat'#305' :'
      end
      object Label63: TLabel
        Left = 827
        Top = 310
        Width = 61
        Height = 13
        Caption = 'Komisyon :'
      end
      object Label64: TLabel
        Left = 37
        Top = 266
        Width = 98
        Height = 13
        Caption = 'Transfer Firmas'#305' :'
      end
      object Label93: TLabel
        Left = 844
        Top = 447
        Width = 37
        Height = 13
        Caption = 'Kalan :'
      end
      object Label19: TLabel
        Left = 177
        Top = 302
        Width = 124
        Height = 19
        Caption = 'YOLCU L'#304'STES'#304
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object TxtTransferAdi: TEdit
        Left = 85
        Top = 5
        Width = 302
        Height = 21
        TabOrder = 0
      end
      object TxtTransferSoyadi: TEdit
        Left = 85
        Top = 28
        Width = 302
        Height = 21
        TabOrder = 1
      end
      object TxtTransferCepNo: TEdit
        Left = 85
        Top = 51
        Width = 302
        Height = 21
        TabOrder = 2
      end
      object CmbTransferOtelAdi: TComboBox
        Left = 85
        Top = 74
        Width = 302
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 3
        OnChange = CmbTransferOtelAdiChange
        Items.Strings = (
          'Sng'
          'Dbl'
          'Trpl'
          'Family Room')
      end
      object CmbTransferOtelTel: TComboBox
        Left = 85
        Top = 97
        Width = 302
        Height = 21
        Style = csSimple
        Enabled = False
        ItemHeight = 13
        TabOrder = 4
        Items.Strings = (
          'Sng'
          'Dbl'
          'Trpl'
          'Family Room')
      end
      object CmbTransferOtelAdres: TComboBox
        Left = 85
        Top = 120
        Width = 302
        Height = 21
        Style = csSimple
        Enabled = False
        ItemHeight = 13
        TabOrder = 5
        Items.Strings = (
          'Sng'
          'Dbl'
          'Trpl'
          'Family Room')
      end
      object GrpTransfer1: TGroupBox
        Left = 500
        Top = 15
        Width = 491
        Height = 126
        Caption = 'Transfer 1'
        TabOrder = 16
        object Label33: TLabel
          Left = 11
          Top = 20
          Width = 53
          Height = 13
          Caption = 'Nereden :'
        end
        object Label34: TLabel
          Left = 18
          Top = 46
          Width = 46
          Height = 13
          Caption = 'Nereye :'
        end
        object Label45: TLabel
          Left = 18
          Top = 80
          Width = 206
          Height = 13
          Caption = 'U'#231'u'#351' Kodu, Numaras'#305' , Ucus Firmas'#305'  :'
        end
        object Label47: TLabel
          Left = 277
          Top = 70
          Width = 90
          Height = 13
          Caption = 'U'#231'ak '#304'ni'#351' Saati :'
        end
        object TxtT1Nereden: TEdit
          Left = 68
          Top = 16
          Width = 202
          Height = 21
          TabOrder = 0
        end
        object TxtT1Nereye: TEdit
          Left = 68
          Top = 43
          Width = 202
          Height = 21
          TabOrder = 1
        end
        object Dt1NeredenTarih: TDateTimePicker
          Left = 274
          Top = 16
          Width = 92
          Height = 21
          Date = 40616.692930520830000000
          Time = 40616.692930520830000000
          TabOrder = 2
        end
        object Dt1NeredenSaat: TDateTimePicker
          Left = 372
          Top = 16
          Width = 77
          Height = 21
          Date = 40616.692930520830000000
          Time = 40616.692930520830000000
          Kind = dtkTime
          TabOrder = 3
        end
        object Dt1NereyeTarih: TDateTimePicker
          Left = 275
          Top = 43
          Width = 92
          Height = 21
          Date = 40616.692930520830000000
          Time = 40616.692930520830000000
          TabOrder = 4
        end
        object Dt1NereyeSaat: TDateTimePicker
          Left = 373
          Top = 43
          Width = 77
          Height = 21
          Date = 40616.692930520830000000
          Time = 40616.692930520830000000
          Kind = dtkTime
          TabOrder = 5
          Visible = False
        end
        object TxtT1UcusKodu: TEdit
          Left = 17
          Top = 99
          Width = 432
          Height = 21
          TabOrder = 6
        end
        object Dt1inisSaati: TDateTimePicker
          Left = 372
          Top = 66
          Width = 77
          Height = 21
          Date = 40616.692930520830000000
          Time = 40616.692930520830000000
          Kind = dtkTime
          TabOrder = 7
        end
      end
      object CmbArac: TComboBox
        Left = 266
        Top = 166
        Width = 121
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 8
        Items.Strings = (
          'Salon '
          'VIP Vito'
          'Minib'#252's'
          'Midib'#252's'
          'Otob'#252's')
      end
      object RbTekYon: TRadioButton
        Left = 492
        Top = -2
        Width = 67
        Height = 17
        Caption = 'Tek Y'#246'n'
        Checked = True
        TabOrder = 14
        TabStop = True
        OnClick = RbTekYonClick
      end
      object RbCiftYon: TRadioButton
        Left = 565
        Top = -2
        Width = 67
        Height = 17
        Caption = #199'ift Y'#246'n'
        TabOrder = 15
        OnClick = RbCiftYonClick
      end
      object CurrKisiSayi: TMoneyEdit
        Left = 85
        Top = 166
        Width = 121
        Height = 22
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = '3'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        Version = '1.1.1.0'
      end
      object GrpTransfer2: TGroupBox
        Left = 499
        Top = 147
        Width = 491
        Height = 135
        Caption = 'Transfer 2'
        TabOrder = 17
        Visible = False
        object Label46: TLabel
          Left = 11
          Top = 20
          Width = 53
          Height = 13
          Caption = 'Nereden :'
        end
        object Label48: TLabel
          Left = 18
          Top = 46
          Width = 46
          Height = 13
          Caption = 'Nereye :'
        end
        object Label53: TLabel
          Left = 18
          Top = 88
          Width = 206
          Height = 13
          Caption = 'U'#231'u'#351' Kodu, Numaras'#305' , Ucus Firmas'#305'  :'
        end
        object Label54: TLabel
          Left = 277
          Top = 70
          Width = 90
          Height = 13
          Caption = 'U'#231'ak '#304'ni'#351' Saati :'
        end
        object TxtT2Nereden: TEdit
          Left = 68
          Top = 16
          Width = 202
          Height = 21
          TabOrder = 0
        end
        object TxtT2Nereye: TEdit
          Left = 68
          Top = 43
          Width = 202
          Height = 21
          TabOrder = 1
        end
        object Dt2NeredenTarih: TDateTimePicker
          Left = 274
          Top = 16
          Width = 92
          Height = 21
          Date = 40616.692930520830000000
          Time = 40616.692930520830000000
          TabOrder = 2
        end
        object Dt2NeredenSaat: TDateTimePicker
          Left = 372
          Top = 16
          Width = 77
          Height = 21
          Date = 40616.692930520830000000
          Time = 40616.692930520830000000
          Kind = dtkTime
          TabOrder = 3
        end
        object Dt2NereyeTarih: TDateTimePicker
          Left = 275
          Top = 43
          Width = 92
          Height = 21
          Date = 40616.692930520830000000
          Time = 40616.692930520830000000
          TabOrder = 4
        end
        object Dt2NereyeSaat: TDateTimePicker
          Left = 372
          Top = 43
          Width = 77
          Height = 21
          Date = 40616.692930520830000000
          Time = 40616.692930520830000000
          Kind = dtkTime
          TabOrder = 5
          Visible = False
        end
        object TxtT2UcusKodu: TEdit
          Left = 18
          Top = 107
          Width = 431
          Height = 21
          TabOrder = 6
        end
        object Dt2inisSaati: TDateTimePicker
          Left = 373
          Top = 67
          Width = 77
          Height = 21
          Date = 40616.692930520830000000
          Time = 40616.692930520830000000
          Kind = dtkTime
          TabOrder = 7
        end
      end
      object CmbTransferOtelEmail: TComboBox
        Left = 85
        Top = 143
        Width = 302
        Height = 21
        Style = csSimple
        Enabled = False
        ItemHeight = 13
        TabOrder = 6
        Items.Strings = (
          'Sng'
          'Dbl'
          'Trpl'
          'Family Room')
      end
      object Panel4: TPanel
        Left = 0
        Top = 472
        Width = 1040
        Height = 30
        Align = alBottom
        Color = clWhite
        ParentBackground = False
        TabOrder = 24
        object BtnTransferKaydet: TButton
          Left = 112
          Top = 2
          Width = 75
          Height = 25
          Caption = 'Kaydet'
          TabOrder = 0
          OnClick = BtnTransferKaydetClick
        end
        object BtnTransferGuncelle: TButton
          Left = 193
          Top = 2
          Width = 75
          Height = 25
          Caption = 'G'#252'ncelle'
          Enabled = False
          TabOrder = 1
          OnClick = BtnTransferGuncelleClick
        end
        object BtnTransferTemizle: TButton
          Left = 274
          Top = 2
          Width = 75
          Height = 25
          Caption = 'Temizle'
          TabOrder = 2
          OnClick = BtnTransferTemizleClick
        end
        object BtnTransferSil: TButton
          Left = 355
          Top = 2
          Width = 75
          Height = 25
          Caption = 'Sil'
          Enabled = False
          TabOrder = 3
          OnClick = BtnTransferSilClick
        end
      end
      object MemTransfer: TMemo
        Left = 85
        Top = 190
        Width = 302
        Height = 43
        ScrollBars = ssVertical
        TabOrder = 9
      end
      object CurrTransferToplamFiyat: TAdvMoneyEdit
        Left = 890
        Top = 330
        Width = 100
        Height = 21
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Align = alCustom
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = 8454143
        TabOrder = 20
        Text = '0.00'
        Visible = True
        Version = '1.1.2.6'
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
      end
      object CmbTransferKullanilanKart: TComboBox
        Left = 141
        Top = 236
        Width = 158
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 10
        OnChange = CmbTransferKullanilanKartChange
      end
      object CurrTransferKullanilanKart: TAdvMoneyEdit
        Left = 305
        Top = 236
        Width = 96
        Height = 21
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Align = alCustom
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        ReadOnly = True
        TabOrder = 11
        Text = '0.00'
        Visible = True
        Version = '1.1.2.6'
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
      end
      object CurrTransferNetFiyat: TAdvMoneyEdit
        Left = 890
        Top = 284
        Width = 100
        Height = 21
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Align = alCustom
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        TabOrder = 18
        Text = '0.00'
        Visible = True
        OnChange = CurrTransferNetFiyatChange
        Version = '1.1.2.6'
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
      end
      object CurrTransferKomisyon: TAdvMoneyEdit
        Left = 890
        Top = 307
        Width = 100
        Height = 21
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Align = alCustom
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        TabOrder = 19
        Text = '0.00'
        Visible = True
        OnChange = CurrTransferKomisyonChange
        Version = '1.1.2.6'
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
      end
      object CmbTransferFirma: TComboBox
        Left = 141
        Top = 263
        Width = 158
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 12
      end
      object GroupBox2: TGroupBox
        Left = 573
        Top = 352
        Width = 417
        Height = 90
        Caption = #214'deme'
        TabOrder = 21
        object CmbT1: TComboBox
          Left = 105
          Top = 11
          Width = 200
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 1
          OnChange = CmbT1Change
        end
        object CurrT1: TAdvMoneyEdit
          Left = 312
          Top = 14
          Width = 101
          Height = 21
          EditAlign = eaRight
          EditType = etMoney
          EmptyTextStyle = []
          Precision = 3
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Align = alCustom
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          Color = clWhite
          TabOrder = 2
          Text = '0.000'
          Visible = True
          OnChange = CurrT1Change
          Version = '1.1.2.6'
          CalculatorLook.ButtonWidth = 24
          CalculatorLook.ButtonHeight = 24
          CalculatorLook.ButtonColor = clSilver
          CalculatorLook.Color = clWhite
          CalculatorLook.Flat = False
          CalculatorLook.Font.Charset = DEFAULT_CHARSET
          CalculatorLook.Font.Color = clWindowText
          CalculatorLook.Font.Height = -11
          CalculatorLook.Font.Name = 'Tahoma'
          CalculatorLook.Font.Style = []
        end
        object CmbT2: TComboBox
          Left = 106
          Top = 38
          Width = 200
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 4
          OnChange = CmbT2Change
        end
        object CurrT2: TAdvMoneyEdit
          Left = 312
          Top = 37
          Width = 101
          Height = 21
          EditAlign = eaRight
          EditType = etMoney
          EmptyTextStyle = []
          Precision = 2
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Align = alCustom
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          Color = clWhite
          TabOrder = 5
          Text = '0.00'
          Visible = True
          OnChange = CurrT2Change
          Version = '1.1.2.6'
          CalculatorLook.ButtonWidth = 24
          CalculatorLook.ButtonHeight = 24
          CalculatorLook.ButtonColor = clSilver
          CalculatorLook.Color = clWhite
          CalculatorLook.Flat = False
          CalculatorLook.Font.Charset = DEFAULT_CHARSET
          CalculatorLook.Font.Color = clWindowText
          CalculatorLook.Font.Height = -11
          CalculatorLook.Font.Name = 'Tahoma'
          CalculatorLook.Font.Style = []
        end
        object CmbT3: TComboBox
          Left = 106
          Top = 61
          Width = 200
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 7
          OnChange = CmbT3Change
        end
        object CurrT3: TAdvMoneyEdit
          Left = 312
          Top = 60
          Width = 101
          Height = 21
          EditAlign = eaRight
          EditType = etMoney
          EmptyTextStyle = []
          Precision = 2
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Align = alCustom
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          Color = clWhite
          TabOrder = 8
          Text = '0.00'
          Visible = True
          OnChange = CurrT3Change
          Version = '1.1.2.6'
          CalculatorLook.ButtonWidth = 24
          CalculatorLook.ButtonHeight = 24
          CalculatorLook.ButtonColor = clSilver
          CalculatorLook.Color = clWhite
          CalculatorLook.Flat = False
          CalculatorLook.Font.Charset = DEFAULT_CHARSET
          CalculatorLook.Font.Color = clWindowText
          CalculatorLook.Font.Height = -11
          CalculatorLook.Font.Name = 'Tahoma'
          CalculatorLook.Font.Style = []
        end
        object DtT1: TDateTimePicker
          Left = 7
          Top = 15
          Width = 93
          Height = 21
          Date = 40616.692930520830000000
          Time = 40616.692930520830000000
          TabOrder = 0
        end
        object DtT2: TDateTimePicker
          Left = 7
          Top = 38
          Width = 93
          Height = 21
          Date = 40616.692930520830000000
          Time = 40616.692930520830000000
          TabOrder = 3
        end
        object DtT3: TDateTimePicker
          Left = 7
          Top = 61
          Width = 93
          Height = 21
          Date = 40616.692930520830000000
          Time = 40616.692930520830000000
          TabOrder = 6
        end
      end
      object CurrTKalan: TAdvMoneyEdit
        Left = 885
        Top = 445
        Width = 100
        Height = 21
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Align = alCustom
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = 8454143
        TabOrder = 22
        Text = '0.00'
        Visible = True
        OnChange = CurrTKalanChange
        Version = '1.1.2.6'
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
      end
      object ChkTOdendi: TCheckBox
        Left = 925
        Top = 469
        Width = 60
        Height = 22
        Caption = #214'dendi'
        TabOrder = 23
        OnClick = ChkTOdendiClick
      end
      object BitBtn6: TBitBtn
        Left = 3
        Top = 291
        Width = 30
        Height = 30
        DoubleBuffered = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A751C1A751C0B6F0F0B6F0F0B6F
          0D0B6F0D086B0B086B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A751C72D288
          22C34D22C34D22C24B22C24B1DAC3B086B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF1A751C6ED08421C04D21BE4C21BE4A21BE4A1CA839086B0BFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF1A751C6ED18421C04F21C04F21C04D21BE4C1CAA3B08
          6B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A751C6ED08621C25021C24F21C0
          4F21C04F1CAB3C086B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A751C6ED287
          1EC3531EC25221C25021C24F1CAD3E086B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF1A751C6FD58C21C55521C3531EC3531EC2521CAF3F086B0BFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF1A751C5CCB7C1FC6581FC65721C55521C3551BAE4208
          6B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2083291A751C
          1A751C1A751C1A751C1A751C1A751C1A751C086B0B5CCB7C1FC85B1FC65A1FC6
          581FC6581BAE42086B0B086B0B086B0B086B0B086B0B086B0B086B0B086B0B08
          6B0B278D3446CE781BB44D1BB44D1BB44D1BB44D1BB44D1BB44D1BB44D5CCB7C
          1FC95E1FC95D1FC85B1FC65A1BAE421BAE421BB44D1BB44D1BB44D1BB44D1BB4
          4D1BB44D1BAE4210801C28903555ED9F18D16D1ED36E1ED16D1ED16B1ED0691E
          D0681ECE661FCD631FCD621FCB601FC95E1FC95D1FC85B1FC65A1FC6581FC658
          1FC55721C55521C3531EC35321C04F12831D28933855F0A218D4711CD5731CD5
          711CD36E1ED16D1ED16B1ED0691ED0681ECE661FCD651FCD621FCB601FC95E1F
          C95D1FC85B1FC85B1FC6571FC6581FC55721C55521C04F12872029963B53F2A5
          17D8751CD8761CD6741CD5731CD5711CD36E1ED36D1ED16B1ED0691ED0681ECE
          661FCE651FCD631FCB601FCB5E1FC95D1FC85D1FC85B1FC65A1FC65821C04F12
          8B23299B3E4FF4A714DA7717DA7917D87718D77618D47118D57019D46F1BD370
          1ED36E1ED16B1ED0691ED0681ECE661DCD641CCC611BC95F1BC95D1BC75B1BC6
          5A1BC6581FC65A128E262B9E416CFFBD4CEFA34EF0A24FEE9F4FEE9E4FED9C51
          EB9B53E89A18D5701CD5711CD3701ED36E1ED16D1DCF681CCC6154E38F52E38D
          52E28B52E08952E08852DD8655E28A1E9832249E3C249E3C249E3C249E3C249E
          3C249E3C249E3C249E3C249E3C6EE5A01CD8761CD6731CD5711CD37019C35E12
          8C23128C23128C23128C23128C23128C23128C23128C23128C23FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E98326EE5A01BD9791CD9781CD8
          761CD67419C35E1E9832FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E98326DEAA6
          1BDC7E1BDB7C1BDB7B1BD9781BC8641E9832FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF1E983270ECA619E08319DE8119DC7E1BDB7C1BCB681E9832FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF1E983270ECA819E08419E08419E08319DE8119CF6D1E
          9832FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E98326FEEAA19E08419E08419E0
          8419E08419D2731E9832FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E98326EF0AA
          12DE7F12DE7F12DE7F12DE7F14D3701E9832FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF249E3C6EF0AC8AFFCE8AFFCE8AFFCE8AFFCE72F2AF249E3CFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF249E3C2CBB5331C15731C15731C15731C1572CBB5324
          9E3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 25
        OnClick = BitBtn6Click
      end
      object BitBtn7: TBitBtn
        Left = 39
        Top = 291
        Width = 30
        Height = 30
        DoubleBuffered = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0100AF0301CD0000CA0000CA0000
          C90000C90000C80000C80000C80000C60000C60000C40000C40000C40000C300
          00C20000C20100C00100BF0200BE0300BD0200BC0200BD0000AD0C0CD96288FF
          274CFF2A4CFF294AFF2748FF2342FF223FFF1F3DFF1E3BFF1C36FF1A33FF1930
          FF172DFF1528FF1424FF1220FF111BFF1018FF0F14FF0E12FF0D0DFF0909FF05
          00CD1D1CE35E84FF2A4DFF2C4FFF2749FF2749FF2645FF2443FF233EFF203BFF
          1D39FF1C37FF1B33FF1830FF172DFF152AFF1426FF1323FF111EFF101BFF0F17
          FF0E14FF0E12FF0200DB534FF086A3FF3057FF2C50FF2C4FFF2B4EFF2A49FF27
          49FF2645FF2542FF233EFF203BFF1C39FF1D37FF1B36FF1830FF172DFF152AFF
          1426FF1323FF111EFF101BFF1019FF0300E54D4AF5A2BAFF7994FF5F7EFF456A
          FF3257FF294EFF284CFF2847FF2547FF2545FF2441FF2340FF203BFF1C39FF1D
          37FF1B36FF1830FF172EFF152BFF1426FF1323FF1221FF0200EE4E4BFAA0BAFF
          7594FF7897FF7995FF7594FF6B8BFF6080FF4A6CFF4467FF3356FF3453FF2041
          FF203DFF1E3BFF1B36FF1934FF1832FF1630FF132BFF1229FF1226FF1025FF00
          00F74F4CFF9FB9FF7292FF7494FF7594FF7493FF7491FF6E8FFF6F8EFF6D8CFF
          6C8BFF6B89FF6B87FF6786FF6683FF647FFF637DFF6079FF5F78FF5D75FF5A72
          FF556EFF5771FF3F3EFF5755FFB4CCFF9EB8FFA0B9FFA0B9FFA0B9FF9FB7FF9F
          B7FF9AB5FF9BB4FF98B3FF97B1FF94ADFF93ABFF92AAFF91A8FF8FA6FF8EA6FF
          8C9FFF8A9FFF889EFF889DFF86A0FF514EFF463EFF5D5BFF5B58FF5B58FF5B58
          FF5B58FF5B58FF5B58FF5C58FF5C58FF5C58FF5B58FF5B58FF5B58FF5B58FF5A
          58FF5A58FF5A58FF5B58FF5B56FF5B56FF5A56FF5C58FF463EFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 26
        OnClick = BitBtn7Click
      end
      object AdvTransferYolcuListesi: TAdvStringGrid
        Left = 3
        Top = 323
        Width = 462
        Height = 105
        Cursor = crDefault
        ColCount = 4
        FixedCols = 0
        RowCount = 2
        ScrollBars = ssBoth
        TabOrder = 13
        HoverRowCells = [hcNormal, hcSelected]
        OnCanEditCell = AdvTransferYolcuListesiCanEditCell
        OnGetEditorType = AdvTransferYolcuListesiGetEditorType
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          'T'#252'r'#252
          'Ad'#305
          'Soyad'#305
          'Do'#287'um Tarihi')
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
        ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownHeader.Font.Color = clWindowText
        ControlLook.DropDownHeader.Font.Height = -11
        ControlLook.DropDownHeader.Font.Name = 'Tahoma'
        ControlLook.DropDownHeader.Font.Style = []
        ControlLook.DropDownHeader.Visible = True
        ControlLook.DropDownHeader.Buttons = <>
        ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownFooter.Font.Color = clWindowText
        ControlLook.DropDownFooter.Font.Height = -11
        ControlLook.DropDownFooter.Font.Name = 'Tahoma'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDownClear = '(All)'
        FilterEdit.TypeNames.Strings = (
          'Starts with'
          'Ends with'
          'Contains'
          'Not contains'
          'Equal'
          'Not equal'
          'Clear')
        FixedColWidth = 51
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'Tahoma'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'Tahoma'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurence'
        SearchFooter.HintFindPrev = 'Find previous occurence'
        SearchFooter.HintHighlight = 'Highlight occurences'
        SearchFooter.MatchCaseCaption = 'Match case'
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.8.7.0'
        ColWidths = (
          51
          154
          138
          91)
        RowHeights = (
          22
          22)
      end
    end
    object TabTur: TTabSheet
      Caption = 'TUR'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label65: TLabel
        Left = 124
        Top = 13
        Width = 46
        Height = 13
        Caption = 'Tur Ad'#305' :'
      end
      object Label66: TLabel
        Left = 87
        Top = 37
        Width = 83
        Height = 13
        Caption = 'Voucher Kodu :'
      end
      object Label67: TLabel
        Left = 101
        Top = 59
        Width = 69
        Height = 13
        Caption = #220'r'#252'n '#199'e'#351'idi :'
      end
      object Label68: TLabel
        Left = 101
        Top = 82
        Width = 69
        Height = 13
        Caption = 'Tur Firmas'#305' :'
      end
      object Label69: TLabel
        Left = 38
        Top = 106
        Width = 132
        Height = 13
        Caption = 'Ba'#351'lang'#305#231' Tarih && Saat :'
      end
      object Label70: TLabel
        Left = 6
        Top = 150
        Width = 164
        Height = 13
        Caption = 'Ba'#351'lang'#305#231' / Bulu'#351'ma Noktas'#305' :'
      end
      object Label71: TLabel
        Left = 95
        Top = 173
        Width = 75
        Height = 13
        Caption = 'Biti'#351' Noktas'#305' :'
      end
      object Label72: TLabel
        Left = 112
        Top = 240
        Width = 58
        Height = 13
        Caption = 'A'#231#305'klama :'
      end
      object Label74: TLabel
        Left = 79
        Top = 196
        Width = 91
        Height = 13
        Caption = 'Rehber Bilgileri :'
      end
      object Label75: TLabel
        Left = 643
        Top = 10
        Width = 51
        Height = 13
        Caption = 'Yeti'#351'kin :'
      end
      object Label76: TLabel
        Left = 789
        Top = 10
        Width = 40
        Height = 13
        Caption = 'Cocuk :'
      end
      object Label77: TLabel
        Left = 924
        Top = 10
        Width = 41
        Height = 13
        Caption = 'Bebek :'
      end
      object Label78: TLabel
        Left = 141
        Top = 298
        Width = 124
        Height = 19
        Caption = 'YOLCU L'#304'STES'#304
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label79: TLabel
        Left = 813
        Top = 198
        Width = 79
        Height = 13
        Caption = 'Toplam Fiyat :'
      end
      object Label80: TLabel
        Left = 831
        Top = 147
        Width = 59
        Height = 13
        Caption = 'Net Fiyat'#305' :'
      end
      object Label81: TLabel
        Left = 831
        Top = 171
        Width = 61
        Height = 13
        Caption = 'Komisyon :'
      end
      object Label82: TLabel
        Left = 34
        Top = 219
        Width = 136
        Height = 13
        Caption = 'Kullan'#305'lan  Kart ('#304#351'yeri) :'
      end
      object Label40: TLabel
        Left = 67
        Top = 126
        Width = 103
        Height = 13
        Caption = 'Biti'#351' Tarih && Saat :'
      end
      object Label73: TLabel
        Left = 599
        Top = 38
        Width = 99
        Height = 13
        Caption = 'Konaklama '#350'ekli :'
      end
      object Label83: TLabel
        Left = 594
        Top = 65
        Width = 104
        Height = 13
        Caption = 'Konaklama Bilgisi :'
      end
      object Label84: TLabel
        Left = 618
        Top = 90
        Width = 79
        Height = 13
        Caption = 'Ula'#351#305'm Bilgisi :'
      end
      object Label85: TLabel
        Left = 609
        Top = 116
        Width = 88
        Height = 13
        Caption = 'Oda Kategorisi :'
      end
      object Label97: TLabel
        Left = 858
        Top = 318
        Width = 37
        Height = 13
        Caption = 'Kalan :'
      end
      object CmbTurUrunCesidi: TComboBox
        Left = 176
        Top = 56
        Width = 253
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        TabOrder = 2
        Items.Strings = (
          'YURT '#304#199#304
          'YURT DISI'
          'CRU'#304'S'
          'K'#220'LT'#220'R')
      end
      object CmbTurFirmasi: TComboBox
        Left = 176
        Top = 79
        Width = 253
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        TabOrder = 3
        Items.Strings = (
          'ETS TUR'
          'MNG TUR'
          'JOLLY TUR'
          'PTONTO TUR'
          '( TANIMLAMALARDA EKLENEB'#304'LS'#304'N DAHA FAZLASI)')
      end
      object DtBasTarih: TDateTimePicker
        Left = 176
        Top = 103
        Width = 92
        Height = 21
        Date = 40616.692930520830000000
        Time = 40616.692930520830000000
        TabOrder = 4
      end
      object DtBasSaat: TDateTimePicker
        Left = 274
        Top = 103
        Width = 86
        Height = 21
        Date = 40616.692361111110000000
        Time = 40616.692361111110000000
        Kind = dtkTime
        TabOrder = 5
      end
      object CurrYetiskin: TMoneyEdit
        Left = 704
        Top = 7
        Width = 46
        Height = 21
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
        TabOrder = 15
        Version = '1.1.1.0'
      end
      object CurrCocuk: TMoneyEdit
        Left = 835
        Top = 7
        Width = 46
        Height = 21
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
        TabOrder = 16
        Version = '1.1.1.0'
      end
      object CurrBebek: TMoneyEdit
        Left = 971
        Top = 7
        Width = 40
        Height = 21
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
        TabOrder = 17
        Version = '1.1.1.0'
      end
      object BitBtn3: TBitBtn
        Left = 64
        Top = 291
        Width = 30
        Height = 30
        DoubleBuffered = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0100AF0301CD0000CA0000CA0000
          C90000C90000C80000C80000C80000C60000C60000C40000C40000C40000C300
          00C20000C20100C00100BF0200BE0300BD0200BC0200BD0000AD0C0CD96288FF
          274CFF2A4CFF294AFF2748FF2342FF223FFF1F3DFF1E3BFF1C36FF1A33FF1930
          FF172DFF1528FF1424FF1220FF111BFF1018FF0F14FF0E12FF0D0DFF0909FF05
          00CD1D1CE35E84FF2A4DFF2C4FFF2749FF2749FF2645FF2443FF233EFF203BFF
          1D39FF1C37FF1B33FF1830FF172DFF152AFF1426FF1323FF111EFF101BFF0F17
          FF0E14FF0E12FF0200DB534FF086A3FF3057FF2C50FF2C4FFF2B4EFF2A49FF27
          49FF2645FF2542FF233EFF203BFF1C39FF1D37FF1B36FF1830FF172DFF152AFF
          1426FF1323FF111EFF101BFF1019FF0300E54D4AF5A2BAFF7994FF5F7EFF456A
          FF3257FF294EFF284CFF2847FF2547FF2545FF2441FF2340FF203BFF1C39FF1D
          37FF1B36FF1830FF172EFF152BFF1426FF1323FF1221FF0200EE4E4BFAA0BAFF
          7594FF7897FF7995FF7594FF6B8BFF6080FF4A6CFF4467FF3356FF3453FF2041
          FF203DFF1E3BFF1B36FF1934FF1832FF1630FF132BFF1229FF1226FF1025FF00
          00F74F4CFF9FB9FF7292FF7494FF7594FF7493FF7491FF6E8FFF6F8EFF6D8CFF
          6C8BFF6B89FF6B87FF6786FF6683FF647FFF637DFF6079FF5F78FF5D75FF5A72
          FF556EFF5771FF3F3EFF5755FFB4CCFF9EB8FFA0B9FFA0B9FFA0B9FF9FB7FF9F
          B7FF9AB5FF9BB4FF98B3FF97B1FF94ADFF93ABFF92AAFF91A8FF8FA6FF8EA6FF
          8C9FFF8A9FFF889EFF889DFF86A0FF514EFF463EFF5D5BFF5B58FF5B58FF5B58
          FF5B58FF5B58FF5B58FF5C58FF5C58FF5C58FF5B58FF5B58FF5B58FF5B58FF5A
          58FF5A58FF5A58FF5B58FF5B56FF5B56FF5A56FF5C58FF463EFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 28
        OnClick = BitBtn3Click
      end
      object AdvYolcuListesi: TAdvStringGrid
        Left = 28
        Top = 323
        Width = 479
        Height = 89
        Cursor = crDefault
        ColCount = 4
        FixedCols = 0
        RowCount = 2
        ScrollBars = ssBoth
        TabOrder = 14
        HoverRowCells = [hcNormal, hcSelected]
        OnCanEditCell = AdvYolcuListesiCanEditCell
        OnGetEditorType = AdvYolcuListesiGetEditorType
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          'T'#252'r'#252
          'Ad'#305
          'Soyad'#305
          'Do'#287'um Tarihi')
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
        ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownHeader.Font.Color = clWindowText
        ControlLook.DropDownHeader.Font.Height = -11
        ControlLook.DropDownHeader.Font.Name = 'Tahoma'
        ControlLook.DropDownHeader.Font.Style = []
        ControlLook.DropDownHeader.Visible = True
        ControlLook.DropDownHeader.Buttons = <>
        ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownFooter.Font.Color = clWindowText
        ControlLook.DropDownFooter.Font.Height = -11
        ControlLook.DropDownFooter.Font.Name = 'Tahoma'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDownClear = '(All)'
        FilterEdit.TypeNames.Strings = (
          'Starts with'
          'Ends with'
          'Contains'
          'Not contains'
          'Equal'
          'Not equal'
          'Clear')
        FixedColWidth = 51
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'Tahoma'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'Tahoma'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurence'
        SearchFooter.HintFindPrev = 'Find previous occurence'
        SearchFooter.HintHighlight = 'Highlight occurences'
        SearchFooter.MatchCaseCaption = 'Match case'
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.8.7.0'
        ColWidths = (
          51
          161
          143
          91)
        RowHeights = (
          22
          22)
      end
      object BitBtn2: TBitBtn
        Left = 28
        Top = 291
        Width = 30
        Height = 30
        DoubleBuffered = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A751C1A751C0B6F0F0B6F0F0B6F
          0D0B6F0D086B0B086B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A751C72D288
          22C34D22C34D22C24B22C24B1DAC3B086B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF1A751C6ED08421C04D21BE4C21BE4A21BE4A1CA839086B0BFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF1A751C6ED18421C04F21C04F21C04D21BE4C1CAA3B08
          6B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A751C6ED08621C25021C24F21C0
          4F21C04F1CAB3C086B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A751C6ED287
          1EC3531EC25221C25021C24F1CAD3E086B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF1A751C6FD58C21C55521C3531EC3531EC2521CAF3F086B0BFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF1A751C5CCB7C1FC6581FC65721C55521C3551BAE4208
          6B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2083291A751C
          1A751C1A751C1A751C1A751C1A751C1A751C086B0B5CCB7C1FC85B1FC65A1FC6
          581FC6581BAE42086B0B086B0B086B0B086B0B086B0B086B0B086B0B086B0B08
          6B0B278D3446CE781BB44D1BB44D1BB44D1BB44D1BB44D1BB44D1BB44D5CCB7C
          1FC95E1FC95D1FC85B1FC65A1BAE421BAE421BB44D1BB44D1BB44D1BB44D1BB4
          4D1BB44D1BAE4210801C28903555ED9F18D16D1ED36E1ED16D1ED16B1ED0691E
          D0681ECE661FCD631FCD621FCB601FC95E1FC95D1FC85B1FC65A1FC6581FC658
          1FC55721C55521C3531EC35321C04F12831D28933855F0A218D4711CD5731CD5
          711CD36E1ED16D1ED16B1ED0691ED0681ECE661FCD651FCD621FCB601FC95E1F
          C95D1FC85B1FC85B1FC6571FC6581FC55721C55521C04F12872029963B53F2A5
          17D8751CD8761CD6741CD5731CD5711CD36E1ED36D1ED16B1ED0691ED0681ECE
          661FCE651FCD631FCB601FCB5E1FC95D1FC85D1FC85B1FC65A1FC65821C04F12
          8B23299B3E4FF4A714DA7717DA7917D87718D77618D47118D57019D46F1BD370
          1ED36E1ED16B1ED0691ED0681ECE661DCD641CCC611BC95F1BC95D1BC75B1BC6
          5A1BC6581FC65A128E262B9E416CFFBD4CEFA34EF0A24FEE9F4FEE9E4FED9C51
          EB9B53E89A18D5701CD5711CD3701ED36E1ED16D1DCF681CCC6154E38F52E38D
          52E28B52E08952E08852DD8655E28A1E9832249E3C249E3C249E3C249E3C249E
          3C249E3C249E3C249E3C249E3C6EE5A01CD8761CD6731CD5711CD37019C35E12
          8C23128C23128C23128C23128C23128C23128C23128C23128C23FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E98326EE5A01BD9791CD9781CD8
          761CD67419C35E1E9832FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E98326DEAA6
          1BDC7E1BDB7C1BDB7B1BD9781BC8641E9832FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF1E983270ECA619E08319DE8119DC7E1BDB7C1BCB681E9832FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF1E983270ECA819E08419E08419E08319DE8119CF6D1E
          9832FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E98326FEEAA19E08419E08419E0
          8419E08419D2731E9832FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E98326EF0AA
          12DE7F12DE7F12DE7F12DE7F14D3701E9832FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF249E3C6EF0AC8AFFCE8AFFCE8AFFCE8AFFCE72F2AF249E3CFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF249E3C2CBB5331C15731C15731C15731C1572CBB5324
          9E3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 29
        OnClick = BitBtn2Click
      end
      object CurrTurToplamFiyat: TAdvMoneyEdit
        Left = 898
        Top = 193
        Width = 100
        Height = 21
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Align = alCustom
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = 8454143
        TabOrder = 24
        Text = '0.00'
        Visible = True
        Version = '1.1.2.6'
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
      end
      object CurrTurNetFiyat: TAdvMoneyEdit
        Left = 898
        Top = 144
        Width = 100
        Height = 21
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Align = alCustom
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        AutoSize = False
        Color = clWhite
        TabOrder = 22
        Text = '0.00'
        Visible = True
        OnChange = CurrTurNetFiyatChange
        Version = '1.1.2.6'
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
      end
      object CurrTurKomisyon: TAdvMoneyEdit
        Left = 898
        Top = 168
        Width = 100
        Height = 21
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Align = alCustom
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        TabOrder = 23
        Text = '0.00'
        Visible = True
        OnChange = CurrTurKomisyonChange
        Version = '1.1.2.6'
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
      end
      object CmbTurKullanilanKart: TComboBox
        Left = 176
        Top = 216
        Width = 158
        Height = 21
        ItemHeight = 0
        TabOrder = 11
        OnChange = CmbTransferKullanilanKartChange
      end
      object CurrTurKullanilanKart: TAdvMoneyEdit
        Left = 340
        Top = 216
        Width = 89
        Height = 21
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Align = alCustom
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        ReadOnly = True
        TabOrder = 12
        Text = '0.00'
        Visible = True
        Version = '1.1.2.6'
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
      end
      object DtBitTarih: TDateTimePicker
        Left = 176
        Top = 124
        Width = 92
        Height = 21
        Date = 40616.692930520830000000
        Time = 40616.692930520830000000
        TabOrder = 6
      end
      object DtBitSaat: TDateTimePicker
        Left = 274
        Top = 124
        Width = 86
        Height = 21
        Date = 40616.692361111110000000
        Time = 40616.692361111110000000
        Kind = dtkTime
        TabOrder = 7
      end
      object TxtTurKonaklamaSekli: TEdit
        Left = 703
        Top = 35
        Width = 303
        Height = 21
        TabOrder = 18
      end
      object TxtTurKonaklamaBilgisi: TEdit
        Left = 703
        Top = 62
        Width = 303
        Height = 21
        TabOrder = 19
      end
      object TxtUlasimBilgisi: TEdit
        Left = 703
        Top = 87
        Width = 303
        Height = 21
        TabOrder = 20
      end
      object CmbTurOdaKategori: TComboBox
        Left = 703
        Top = 113
        Width = 99
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        TabOrder = 21
        Items.Strings = (
          'Sng'
          'Dbl'
          'Trpl'
          'Family Room')
      end
      object MemTur: TMemo
        Left = 176
        Top = 241
        Width = 253
        Height = 50
        ScrollBars = ssVertical
        TabOrder = 13
      end
      object TxtVoucherKodu: TEdit
        Left = 176
        Top = 33
        Width = 253
        Height = 21
        TabOrder = 1
      end
      object TxtBaslangicNoktasi: TEdit
        Left = 176
        Top = 147
        Width = 253
        Height = 21
        TabOrder = 8
      end
      object TxtBitisNoktasi: TEdit
        Left = 176
        Top = 170
        Width = 253
        Height = 21
        TabOrder = 9
      end
      object TxtRehberBilgileri: TEdit
        Left = 176
        Top = 193
        Width = 253
        Height = 21
        TabOrder = 10
      end
      object BtnTurGuncelle: TButton
        Left = 696
        Top = 373
        Width = 75
        Height = 25
        Caption = 'G'#252'ncelle'
        Enabled = False
        TabOrder = 30
        OnClick = BtnTurGuncelleClick
      end
      object BtnTurSil: TButton
        Left = 857
        Top = 373
        Width = 75
        Height = 25
        Caption = 'Sil'
        Enabled = False
        TabOrder = 31
        OnClick = BtnTurSilClick
      end
      object BtnTurTemizle: TButton
        Left = 777
        Top = 373
        Width = 75
        Height = 25
        Caption = 'Temizle'
        TabOrder = 32
        OnClick = BtnTurTemizleClick
      end
      object BtnTurKaydet: TButton
        Left = 615
        Top = 373
        Width = 75
        Height = 25
        Caption = 'Kaydet'
        TabOrder = 33
        OnClick = BtnTurKaydetClick
      end
      object CurrTuKAlan: TAdvMoneyEdit
        Left = 899
        Top = 315
        Width = 101
        Height = 21
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Align = alCustom
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = 8454143
        TabOrder = 26
        Text = '0.00'
        Visible = True
        OnChange = CurrTuKAlanChange
        Version = '1.1.2.6'
        CalculatorLook.ButtonWidth = 24
        CalculatorLook.ButtonHeight = 24
        CalculatorLook.ButtonColor = clSilver
        CalculatorLook.Color = clWhite
        CalculatorLook.Flat = False
        CalculatorLook.Font.Charset = DEFAULT_CHARSET
        CalculatorLook.Font.Color = clWindowText
        CalculatorLook.Font.Height = -11
        CalculatorLook.Font.Name = 'Tahoma'
        CalculatorLook.Font.Style = []
      end
      object ChkTuOdendi: TCheckBox
        Left = 901
        Top = 337
        Width = 60
        Height = 22
        Caption = #214'dendi'
        TabOrder = 27
        OnClick = ChkTuOdendiClick
      end
      object GroupBox3: TGroupBox
        Left = 577
        Top = 217
        Width = 422
        Height = 90
        Caption = #214'deme'
        TabOrder = 25
        object CmbTu1: TComboBox
          Left = 106
          Top = 14
          Width = 200
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 1
          OnChange = CmbTu1Change
        end
        object CurrTu1: TAdvMoneyEdit
          Left = 312
          Top = 12
          Width = 101
          Height = 21
          EditAlign = eaRight
          EditType = etMoney
          EmptyTextStyle = []
          Precision = 2
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Align = alCustom
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          Color = clWhite
          TabOrder = 2
          Text = '0.00'
          Visible = True
          OnChange = CurrTu1Change
          Version = '1.1.2.6'
          CalculatorLook.ButtonWidth = 24
          CalculatorLook.ButtonHeight = 24
          CalculatorLook.ButtonColor = clSilver
          CalculatorLook.Color = clWhite
          CalculatorLook.Flat = False
          CalculatorLook.Font.Charset = DEFAULT_CHARSET
          CalculatorLook.Font.Color = clWindowText
          CalculatorLook.Font.Height = -11
          CalculatorLook.Font.Name = 'Tahoma'
          CalculatorLook.Font.Style = []
        end
        object CmbTu2: TComboBox
          Left = 106
          Top = 38
          Width = 200
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 4
          OnChange = CmbTu2Change
        end
        object CurrTu2: TAdvMoneyEdit
          Left = 312
          Top = 35
          Width = 101
          Height = 21
          EditAlign = eaRight
          EditType = etMoney
          EmptyTextStyle = []
          Precision = 2
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Align = alCustom
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          Color = clWhite
          TabOrder = 5
          Text = '0.00'
          Visible = True
          OnChange = CurrTu2Change
          Version = '1.1.2.6'
          CalculatorLook.ButtonWidth = 24
          CalculatorLook.ButtonHeight = 24
          CalculatorLook.ButtonColor = clSilver
          CalculatorLook.Color = clWhite
          CalculatorLook.Flat = False
          CalculatorLook.Font.Charset = DEFAULT_CHARSET
          CalculatorLook.Font.Color = clWindowText
          CalculatorLook.Font.Height = -11
          CalculatorLook.Font.Name = 'Tahoma'
          CalculatorLook.Font.Style = []
        end
        object CmbTu3: TComboBox
          Left = 106
          Top = 61
          Width = 200
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 7
          OnChange = CmbTu3Change
        end
        object CurrTu3: TAdvMoneyEdit
          Left = 312
          Top = 58
          Width = 101
          Height = 21
          EditAlign = eaRight
          EditType = etMoney
          EmptyTextStyle = []
          Precision = 2
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Align = alCustom
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          Color = clWhite
          TabOrder = 8
          Text = '0.00'
          Visible = True
          OnChange = CurrTu3Change
          Version = '1.1.2.6'
          CalculatorLook.ButtonWidth = 24
          CalculatorLook.ButtonHeight = 24
          CalculatorLook.ButtonColor = clSilver
          CalculatorLook.Color = clWhite
          CalculatorLook.Flat = False
          CalculatorLook.Font.Charset = DEFAULT_CHARSET
          CalculatorLook.Font.Color = clWindowText
          CalculatorLook.Font.Height = -11
          CalculatorLook.Font.Name = 'Tahoma'
          CalculatorLook.Font.Style = []
        end
        object DtTu1: TDateTimePicker
          Left = 7
          Top = 15
          Width = 93
          Height = 21
          Date = 40616.692930520830000000
          Time = 40616.692930520830000000
          TabOrder = 0
        end
        object DtTu2: TDateTimePicker
          Left = 7
          Top = 38
          Width = 93
          Height = 21
          Date = 40616.692930520830000000
          Time = 40616.692930520830000000
          TabOrder = 3
        end
        object DtTu3: TDateTimePicker
          Left = 7
          Top = 61
          Width = 93
          Height = 21
          Date = 40616.692930520830000000
          Time = 40616.692930520830000000
          TabOrder = 6
        end
      end
      object TxtTurAdi: TEdit
        Left = 176
        Top = 10
        Width = 253
        Height = 21
        TabOrder = 0
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 41
    Width = 1056
    Height = 136
    Align = alTop
    BevelInner = bvRaised
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object Image1: TImage
      Left = 587
      Top = 93
      Width = 96
      Height = 37
      Cursor = crHandPoint
      AutoSize = True
      DragCursor = crHandPoint
      Picture.Data = {
        0A544A504547496D616765EE120000FFD8FFE000104A46494600010200006400
        640000FFEC00114475636B7900010004000000500000FFE20C584943435F5052
        4F46494C4500010100000C484C696E6F021000006D6E74725247422058595A20
        07CE00020009000600310000616373704D534654000000004945432073524742
        0000000000000000000000000000F6D6000100000000D32D4850202000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000116370727400000150000000336465736300000184
        0000006C77747074000001F000000014626B707400000204000000147258595A
        00000218000000146758595A0000022C000000146258595A0000024000000014
        646D6E640000025400000070646D6464000002C400000088767565640000034C
        0000008676696577000003D4000000246C756D69000003F8000000146D656173
        0000040C0000002474656368000004300000000C725452430000043C0000080C
        675452430000043C0000080C625452430000043C0000080C7465787400000000
        436F70797269676874202863292031393938204865776C6574742D5061636B61
        726420436F6D70616E7900006465736300000000000000127352474220494543
        36313936362D322E310000000000000000000000127352474220494543363139
        36362D322E310000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000058595A2000000000
        0000F35100010000000116CC58595A2000000000000000000000000000000000
        58595A200000000000006FA2000038F50000039058595A200000000000006299
        0000B785000018DA58595A2000000000000024A000000F840000B6CF64657363
        000000000000001649454320687474703A2F2F7777772E6965632E6368000000
        00000000000000001649454320687474703A2F2F7777772E6965632E63680000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000064657363000000000000002E4945432036313936
        362D322E312044656661756C742052474220636F6C6F7572207370616365202D
        207352474200000000000000000000002E4945432036313936362D322E312044
        656661756C742052474220636F6C6F7572207370616365202D20735247420000
        000000000000000000000000000000000000000064657363000000000000002C
        5265666572656E63652056696577696E6720436F6E646974696F6E20696E2049
        454336313936362D322E3100000000000000000000002C5265666572656E6365
        2056696577696E6720436F6E646974696F6E20696E2049454336313936362D32
        2E31000000000000000000000000000000000000000000000000000076696577
        000000000013A4FE00145F2E0010CF140003EDCC0004130B00035C9E00000001
        58595A2000000000004C09560050000000571FE76D6561730000000000000001
        000000000000000000000000000000000000028F000000027369672000000000
        4352542063757276000000000000040000000005000A000F00140019001E0023
        0028002D00320037003B00400045004A004F00540059005E00630068006D0072
        0077007C00810086008B00900095009A009F00A400A900AE00B200B700BC00C1
        00C600CB00D000D500DB00E000E500EB00F000F600FB01010107010D01130119
        011F0125012B01320138013E0145014C0152015901600167016E0175017C0183
        018B0192019A01A101A901B101B901C101C901D101D901E101E901F201FA0203
        020C0214021D0226022F02380241024B0254025D02670271027A0284028E0298
        02A202AC02B602C102CB02D502E002EB02F50300030B03160321032D03380343
        034F035A03660372037E038A039603A203AE03BA03C703D303E003EC03F90406
        04130420042D043B0448045504630471047E048C049A04A804B604C404D304E1
        04F004FE050D051C052B053A05490558056705770586059605A605B505C505D5
        05E505F6060606160627063706480659066A067B068C069D06AF06C006D106E3
        06F507070719072B073D074F076107740786079907AC07BF07D207E507F8080B
        081F08320846085A086E0882089608AA08BE08D208E708FB09100925093A094F
        09640979098F09A409BA09CF09E509FB0A110A270A3D0A540A6A0A810A980AAE
        0AC50ADC0AF30B0B0B220B390B510B690B800B980BB00BC80BE10BF90C120C2A
        0C430C5C0C750C8E0CA70CC00CD90CF30D0D0D260D400D5A0D740D8E0DA90DC3
        0DDE0DF80E130E2E0E490E640E7F0E9B0EB60ED20EEE0F090F250F410F5E0F7A
        0F960FB30FCF0FEC1009102610431061107E109B10B910D710F511131131114F
        116D118C11AA11C911E81207122612451264128412A312C312E3130313231343
        1363138313A413C513E5140614271449146A148B14AD14CE14F0151215341556
        1578159B15BD15E0160316261649166C168F16B216D616FA171D174117651789
        17AE17D217F7181B18401865188A18AF18D518FA19201945196B199119B719DD
        1A041A2A1A511A771A9E1AC51AEC1B141B3B1B631B8A1BB21BDA1C021C2A1C52
        1C7B1CA31CCC1CF51D1E1D471D701D991DC31DEC1E161E401E6A1E941EBE1EE9
        1F131F3E1F691F941FBF1FEA20152041206C209820C420F0211C2148217521A1
        21CE21FB22272255228222AF22DD230A23382366239423C223F0241F244D247C
        24AB24DA250925382568259725C725F726272657268726B726E827182749277A
        27AB27DC280D283F287128A228D429062938296B299D29D02A022A352A682A9B
        2ACF2B022B362B692B9D2BD12C052C392C6E2CA22CD72D0C2D412D762DAB2DE1
        2E162E4C2E822EB72EEE2F242F5A2F912FC72FFE3035306C30A430DB3112314A
        318231BA31F2322A3263329B32D4330D3346337F33B833F1342B3465349E34D8
        3513354D358735C235FD3637367236AE36E937243760379C37D738143850388C
        38C839053942397F39BC39F93A363A743AB23AEF3B2D3B6B3BAA3BE83C273C65
        3CA43CE33D223D613DA13DE03E203E603EA03EE03F213F613FA23FE240234064
        40A640E74129416A41AC41EE4230427242B542F7433A437D43C044034447448A
        44CE45124555459A45DE4622466746AB46F04735477B47C04805484B489148D7
        491D496349A949F04A374A7D4AC44B0C4B534B9A4BE24C2A4C724CBA4D024D4A
        4D934DDC4E254E6E4EB74F004F494F934FDD5027507150BB51065150519B51E6
        5231527C52C75313535F53AA53F65442548F54DB5528557555C2560F565C56A9
        56F75744579257E0582F587D58CB591A596959B85A075A565AA65AF55B455B95
        5BE55C355C865CD65D275D785DC95E1A5E6C5EBD5F0F5F615FB36005605760AA
        60FC614F61A261F56249629C62F06343639763EB6440649464E9653D659265E7
        663D669266E8673D679367E9683F689668EC6943699A69F16A486A9F6AF76B4F
        6BA76BFF6C576CAF6D086D606DB96E126E6B6EC46F1E6F786FD1702B708670E0
        713A719571F0724B72A67301735D73B87414747074CC7528758575E1763E769B
        76F8775677B37811786E78CC792A798979E77A467AA57B047B637BC27C217C81
        7CE17D417DA17E017E627EC27F237F847FE5804780A8810A816B81CD82308292
        82F4835783BA841D848084E3854785AB860E867286D7873B879F8804886988CE
        8933899989FE8A648ACA8B308B968BFC8C638CCA8D318D988DFF8E668ECE8F36
        8F9E9006906E90D6913F91A89211927A92E3934D93B69420948A94F4955F95C9
        9634969F970A977597E0984C98B89924999099FC9A689AD59B429BAF9C1C9C89
        9CF79D649DD29E409EAE9F1D9F8B9FFAA069A0D8A147A1B6A226A296A306A376
        A3E6A456A4C7A538A5A9A61AA68BA6FDA76EA7E0A852A8C4A937A9A9AA1CAA8F
        AB02AB75ABE9AC5CACD0AD44ADB8AE2DAEA1AF16AF8BB000B075B0EAB160B1D6
        B24BB2C2B338B3AEB425B49CB513B58AB601B679B6F0B768B7E0B859B8D1B94A
        B9C2BA3BBAB5BB2EBBA7BC21BC9BBD15BD8FBE0ABE84BEFFBF7ABFF5C070C0EC
        C167C1E3C25FC2DBC358C3D4C451C4CEC54BC5C8C646C6C3C741C7BFC83DC8BC
        C93AC9B9CA38CAB7CB36CBB6CC35CCB5CD35CDB5CE36CEB6CF37CFB8D039D0BA
        D13CD1BED23FD2C1D344D3C6D449D4CBD54ED5D1D655D6D8D75CD7E0D864D8E8
        D96CD9F1DA76DAFBDB80DC05DC8ADD10DD96DE1CDEA2DF29DFAFE036E0BDE144
        E1CCE253E2DBE363E3EBE473E4FCE584E60DE696E71FE7A9E832E8BCE946E9D0
        EA5BEAE5EB70EBFBEC86ED11ED9CEE28EEB4EF40EFCCF058F0E5F172F1FFF28C
        F319F3A7F434F4C2F550F5DEF66DF6FBF78AF819F8A8F938F9C7FA57FAE7FB77
        FC07FC98FD29FDBAFE4BFEDCFF6DFFFFFFEE002641646F62650064C000000001
        0300150403060A0D00000F5300001069000011B0000012ECFFDB008400020202
        0202020202020203020202030403020203040504040404040506050505050505
        060607070807070609090A0A09090C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010303
        03050405090606090D0B090B0D0F0E0E0E0E0F0F0C0C0C0C0C0F0F0C0C0C0C0C
        0C0F0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC2
        0011080025006003011100021101031101FFC400BD0001000300030000000000
        0000000000000005060701040801010101010101000000000000000000000006
        0405030710000104020201030500000000000000000003040515021430243213
        3306011112343511000004060102050500000000000000000001020391D13292
        0435113112304172B2742151B122231200020202020203000000000000000000
        00013132F0023081217111411213000201020603000301000000000000000001
        11F0F130213141C1D15171916181A1B1FFDA000C03010002110311000001D53E
        73F4FAEE1E80000000DE2CA1BCF915790F8F70000000DE2DA071E95B088C7B80
        000006EF6D0356F2F680C7B80000039369A693B5F638BD10000000590FFFDA00
        08010100010502959A92FAC85C4A9712A5C4A9712A5C4A9712A5C4A9712A5C4A
        9712A7C5A41CBD6D23FD0E2F86F8C87EFF0017C37C64A156C9E523B291D948EC
        A476523B291D948ECA476523B291D9F1B619314D6D5FCBA674CE99D33A674CE9
        9D33A674C6FE97DBFFDA000801020001050272E94F5369536953695369536953
        69536953695369536952396C94C5C7B9C515E2E3DCE28AF15E372CB3AB50AB50
        AB50AB50AB50AB50AB50AB50AB50AB5066DBD0C793FFDA00080103000105026A
        CD2F4B51135113511351135113511351135113511351124D0C53CDB7B5C531E4
        DBDAE298F26F2986185BA45BA45BA45BA45BA45BA45BA45BA45BA45BA43E75B1
        9727FFDA0008010202063F027E4B32CCB32CCB32CCB32CCB32CC7FA36F6F8F63
        6F6F8F61BD5C928944A25128944A251289479E5FFFDA0008010302063F02D7E5
        7D15455154551545515455154550BF3F66BE971EA6BE971EA2D764FC10F3B21E
        7643CEC879D90F3B21E7643CEC879D90F3B21E76788E5FFFDA0008010101063F
        02CB4B796E32DB4EA9B6D0D9F697093E3C86C322F31B0C8BCC6C322F31B0C8BC
        C6C322F31B0C8BCC6C322F31B0C8BCC6C322F31B0C8BCC3E9CA70DD532B22438
        7D7832F319DF21CF71F8797EA4FE0677C873DC7E1E5FA921F75A5A7B5D59AF85
        73D4FEBF615371390A9B89C854DC4E42A6E27215371390A9B89C854DC4E42A6E
        27215371390A9B89C839DEAEE5BA7CAB8E83F6EBE1FF0031FFDA000801010301
        3F2175D34A87D7F26E24A2F928BE4A2F928BE4A2F928BE4A2F928BE4A2F928BE
        4CF2AE0BCA86DE1AC40CF975CB13353FC33460F41A6C964DBE19B366CD9B366C
        D9B369242DDA12509293393F83DDFC5D9EEFE2ECF77F1767BBF8BB3DDFC5D9EE
        FE2ECF77F1767BBF8BB3DDFC5D8BF37F1767A03FFFDA0008010203013F2186A7
        4936B2CB4C8B81702E05C0B81702E05C0B817025A4C32BDE70FF00B115EF387F
        D88564869CE77FD32FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FA
        FA1AC4D2DFCC5FFFDA0008010303013F219825B68DB79EB99624589162458916
        24589162458916245890EC48869B15EF0B0FF9195EF0B0FF0091939024651B7B
        68B6A16D42DA85B50B6A16D42DA85B50B6A16D41296908BF78BFFFDA000C0301
        0002110311000010D24924921400000002C00000006324924907800000024FFF
        DA0008010103013F107BCDEB4834CB513739BF10B0FB76EDDBB76EDDBB7676C5
        8654DD6621BCF389C90CDB5EADAF0E629D939B15092DF2AFAD6EF255A9387961
        3B76EDDBB76EDDBB4D706D8C4615A9D2226F56DB697AC85CC4A59C2764184184
        1841841841841841841824D44C0CBCA76649727FFFDA0008010203013F108FED
        899A433D9AB712E7FC2EFECBBFB2EFECBBFB2EFECBBFB2EFECBBFB2EFECBBFB1
        48C7524DEB0D68DEF1E75291E78750F0CA479E1D43C325E9106469B4B5948A74
        D30F1E3C78F1E3C78F1E35156E5C68850929CDFB85EB17FFDA0008010303013F
        104517C84D2AB76894C24BFD2A6E0A9B82A6E0A9B82A6E0A9B82A6E0A9B82A6E
        0A9B813AD58DA6E4E252DA6745965894A9DE56252A7794426C26AC9A484F309C
        253AE1922448912244891224D9B04A6252E5B71296D94BD35CF17FFFD9}
      OnClick = Image1Click
    end
    object imgSil: TImage
      Left = 842
      Top = 59
      Width = 96
      Height = 37
      Cursor = crHandPoint
      AutoSize = True
      DragCursor = crHandPoint
      Enabled = False
      Picture.Data = {
        0A544A504547496D616765EE120000FFD8FFE000104A46494600010200006400
        640000FFEC00114475636B7900010004000000500000FFE20C584943435F5052
        4F46494C4500010100000C484C696E6F021000006D6E74725247422058595A20
        07CE00020009000600310000616373704D534654000000004945432073524742
        0000000000000000000000000000F6D6000100000000D32D4850202000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000116370727400000150000000336465736300000184
        0000006C77747074000001F000000014626B707400000204000000147258595A
        00000218000000146758595A0000022C000000146258595A0000024000000014
        646D6E640000025400000070646D6464000002C400000088767565640000034C
        0000008676696577000003D4000000246C756D69000003F8000000146D656173
        0000040C0000002474656368000004300000000C725452430000043C0000080C
        675452430000043C0000080C625452430000043C0000080C7465787400000000
        436F70797269676874202863292031393938204865776C6574742D5061636B61
        726420436F6D70616E7900006465736300000000000000127352474220494543
        36313936362D322E310000000000000000000000127352474220494543363139
        36362D322E310000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000058595A2000000000
        0000F35100010000000116CC58595A2000000000000000000000000000000000
        58595A200000000000006FA2000038F50000039058595A200000000000006299
        0000B785000018DA58595A2000000000000024A000000F840000B6CF64657363
        000000000000001649454320687474703A2F2F7777772E6965632E6368000000
        00000000000000001649454320687474703A2F2F7777772E6965632E63680000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000064657363000000000000002E4945432036313936
        362D322E312044656661756C742052474220636F6C6F7572207370616365202D
        207352474200000000000000000000002E4945432036313936362D322E312044
        656661756C742052474220636F6C6F7572207370616365202D20735247420000
        000000000000000000000000000000000000000064657363000000000000002C
        5265666572656E63652056696577696E6720436F6E646974696F6E20696E2049
        454336313936362D322E3100000000000000000000002C5265666572656E6365
        2056696577696E6720436F6E646974696F6E20696E2049454336313936362D32
        2E31000000000000000000000000000000000000000000000000000076696577
        000000000013A4FE00145F2E0010CF140003EDCC0004130B00035C9E00000001
        58595A2000000000004C09560050000000571FE76D6561730000000000000001
        000000000000000000000000000000000000028F000000027369672000000000
        4352542063757276000000000000040000000005000A000F00140019001E0023
        0028002D00320037003B00400045004A004F00540059005E00630068006D0072
        0077007C00810086008B00900095009A009F00A400A900AE00B200B700BC00C1
        00C600CB00D000D500DB00E000E500EB00F000F600FB01010107010D01130119
        011F0125012B01320138013E0145014C0152015901600167016E0175017C0183
        018B0192019A01A101A901B101B901C101C901D101D901E101E901F201FA0203
        020C0214021D0226022F02380241024B0254025D02670271027A0284028E0298
        02A202AC02B602C102CB02D502E002EB02F50300030B03160321032D03380343
        034F035A03660372037E038A039603A203AE03BA03C703D303E003EC03F90406
        04130420042D043B0448045504630471047E048C049A04A804B604C404D304E1
        04F004FE050D051C052B053A05490558056705770586059605A605B505C505D5
        05E505F6060606160627063706480659066A067B068C069D06AF06C006D106E3
        06F507070719072B073D074F076107740786079907AC07BF07D207E507F8080B
        081F08320846085A086E0882089608AA08BE08D208E708FB09100925093A094F
        09640979098F09A409BA09CF09E509FB0A110A270A3D0A540A6A0A810A980AAE
        0AC50ADC0AF30B0B0B220B390B510B690B800B980BB00BC80BE10BF90C120C2A
        0C430C5C0C750C8E0CA70CC00CD90CF30D0D0D260D400D5A0D740D8E0DA90DC3
        0DDE0DF80E130E2E0E490E640E7F0E9B0EB60ED20EEE0F090F250F410F5E0F7A
        0F960FB30FCF0FEC1009102610431061107E109B10B910D710F511131131114F
        116D118C11AA11C911E81207122612451264128412A312C312E3130313231343
        1363138313A413C513E5140614271449146A148B14AD14CE14F0151215341556
        1578159B15BD15E0160316261649166C168F16B216D616FA171D174117651789
        17AE17D217F7181B18401865188A18AF18D518FA19201945196B199119B719DD
        1A041A2A1A511A771A9E1AC51AEC1B141B3B1B631B8A1BB21BDA1C021C2A1C52
        1C7B1CA31CCC1CF51D1E1D471D701D991DC31DEC1E161E401E6A1E941EBE1EE9
        1F131F3E1F691F941FBF1FEA20152041206C209820C420F0211C2148217521A1
        21CE21FB22272255228222AF22DD230A23382366239423C223F0241F244D247C
        24AB24DA250925382568259725C725F726272657268726B726E827182749277A
        27AB27DC280D283F287128A228D429062938296B299D29D02A022A352A682A9B
        2ACF2B022B362B692B9D2BD12C052C392C6E2CA22CD72D0C2D412D762DAB2DE1
        2E162E4C2E822EB72EEE2F242F5A2F912FC72FFE3035306C30A430DB3112314A
        318231BA31F2322A3263329B32D4330D3346337F33B833F1342B3465349E34D8
        3513354D358735C235FD3637367236AE36E937243760379C37D738143850388C
        38C839053942397F39BC39F93A363A743AB23AEF3B2D3B6B3BAA3BE83C273C65
        3CA43CE33D223D613DA13DE03E203E603EA03EE03F213F613FA23FE240234064
        40A640E74129416A41AC41EE4230427242B542F7433A437D43C044034447448A
        44CE45124555459A45DE4622466746AB46F04735477B47C04805484B489148D7
        491D496349A949F04A374A7D4AC44B0C4B534B9A4BE24C2A4C724CBA4D024D4A
        4D934DDC4E254E6E4EB74F004F494F934FDD5027507150BB51065150519B51E6
        5231527C52C75313535F53AA53F65442548F54DB5528557555C2560F565C56A9
        56F75744579257E0582F587D58CB591A596959B85A075A565AA65AF55B455B95
        5BE55C355C865CD65D275D785DC95E1A5E6C5EBD5F0F5F615FB36005605760AA
        60FC614F61A261F56249629C62F06343639763EB6440649464E9653D659265E7
        663D669266E8673D679367E9683F689668EC6943699A69F16A486A9F6AF76B4F
        6BA76BFF6C576CAF6D086D606DB96E126E6B6EC46F1E6F786FD1702B708670E0
        713A719571F0724B72A67301735D73B87414747074CC7528758575E1763E769B
        76F8775677B37811786E78CC792A798979E77A467AA57B047B637BC27C217C81
        7CE17D417DA17E017E627EC27F237F847FE5804780A8810A816B81CD82308292
        82F4835783BA841D848084E3854785AB860E867286D7873B879F8804886988CE
        8933899989FE8A648ACA8B308B968BFC8C638CCA8D318D988DFF8E668ECE8F36
        8F9E9006906E90D6913F91A89211927A92E3934D93B69420948A94F4955F95C9
        9634969F970A977597E0984C98B89924999099FC9A689AD59B429BAF9C1C9C89
        9CF79D649DD29E409EAE9F1D9F8B9FFAA069A0D8A147A1B6A226A296A306A376
        A3E6A456A4C7A538A5A9A61AA68BA6FDA76EA7E0A852A8C4A937A9A9AA1CAA8F
        AB02AB75ABE9AC5CACD0AD44ADB8AE2DAEA1AF16AF8BB000B075B0EAB160B1D6
        B24BB2C2B338B3AEB425B49CB513B58AB601B679B6F0B768B7E0B859B8D1B94A
        B9C2BA3BBAB5BB2EBBA7BC21BC9BBD15BD8FBE0ABE84BEFFBF7ABFF5C070C0EC
        C167C1E3C25FC2DBC358C3D4C451C4CEC54BC5C8C646C6C3C741C7BFC83DC8BC
        C93AC9B9CA38CAB7CB36CBB6CC35CCB5CD35CDB5CE36CEB6CF37CFB8D039D0BA
        D13CD1BED23FD2C1D344D3C6D449D4CBD54ED5D1D655D6D8D75CD7E0D864D8E8
        D96CD9F1DA76DAFBDB80DC05DC8ADD10DD96DE1CDEA2DF29DFAFE036E0BDE144
        E1CCE253E2DBE363E3EBE473E4FCE584E60DE696E71FE7A9E832E8BCE946E9D0
        EA5BEAE5EB70EBFBEC86ED11ED9CEE28EEB4EF40EFCCF058F0E5F172F1FFF28C
        F319F3A7F434F4C2F550F5DEF66DF6FBF78AF819F8A8F938F9C7FA57FAE7FB77
        FC07FC98FD29FDBAFE4BFEDCFF6DFFFFFFEE002641646F62650064C000000001
        0300150403060A0D00000F5300001069000011B0000012ECFFDB008400020202
        0202020202020203020202030403020203040504040404040506050505050505
        060607070807070609090A0A09090C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010303
        03050405090606090D0B090B0D0F0E0E0E0E0F0F0C0C0C0C0C0F0F0C0C0C0C0C
        0C0F0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC2
        0011080025006003011100021101031101FFC400BD0001000300030000000000
        0000000000000005060701040801010101010101000000000000000000000006
        0405030710000104020201030500000000000000000003040515021430243213
        3306011112343511000004060102050500000000000000000001020391D13292
        0435113112304172B2742151B122231200020202020203000000000000000000
        00013132F0023081217111411213000201020603000301000000000000000001
        11F0F130213141C1D15171916181A1B1FFDA000C03010002110311000001D53E
        73F4FAEE1E80000000DE2CA1BCF915790F8F70000000DE2DA071E95B088C7B80
        000006EF6D0356F2F680C7B80000039369A693B5F638BD10000000590FFFDA00
        08010100010502959A92FAC85C4A9712A5C4A9712A5C4A9712A5C4A9712A5C4A
        9712A7C5A41CBD6D23FD0E2F86F8C87EFF0017C37C64A156C9E523B291D948EC
        A476523B291D948ECA476523B291D9F1B619314D6D5FCBA674CE99D33A674CE9
        9D33A674C6FE97DBFFDA000801020001050272E94F5369536953695369536953
        69536953695369536952396C94C5C7B9C515E2E3DCE28AF15E372CB3AB50AB50
        AB50AB50AB50AB50AB50AB50AB50AB5066DBD0C793FFDA00080103000105026A
        CD2F4B51135113511351135113511351135113511351124D0C53CDB7B5C531E4
        DBDAE298F26F2986185BA45BA45BA45BA45BA45BA45BA45BA45BA45BA43E75B1
        9727FFDA0008010202063F027E4B32CCB32CCB32CCB32CCB32CC7FA36F6F8F63
        6F6F8F61BD5C928944A25128944A251289479E5FFFDA0008010302063F02D7E5
        7D15455154551545515455154550BF3F66BE971EA6BE971EA2D764FC10F3B21E
        7643CEC879D90F3B21E7643CEC879D90F3B21E76788E5FFFDA0008010101063F
        02CB4B796E32DB4EA9B6D0D9F697093E3C86C322F31B0C8BCC6C322F31B0C8BC
        C6C322F31B0C8BCC6C322F31B0C8BCC6C322F31B0C8BCC3E9CA70DD532B22438
        7D7832F319DF21CF71F8797EA4FE0677C873DC7E1E5FA921F75A5A7B5D59AF85
        73D4FEBF615371390A9B89C854DC4E42A6E27215371390A9B89C854DC4E42A6E
        27215371390A9B89C839DEAEE5BA7CAB8E83F6EBE1FF0031FFDA000801010301
        3F2175D34A87D7F26E24A2F928BE4A2F928BE4A2F928BE4A2F928BE4A2F928BE
        4CF2AE0BCA86DE1AC40CF975CB13353FC33460F41A6C964DBE19B366CD9B366C
        D9B369242DDA12509293393F83DDFC5D9EEFE2ECF77F1767BBF8BB3DDFC5D9EE
        FE2ECF77F1767BBF8BB3DDFC5D8BF37F1767A03FFFDA0008010203013F2186A7
        4936B2CB4C8B81702E05C0B81702E05C0B817025A4C32BDE70FF00B115EF387F
        D88564869CE77FD32FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FA
        FA1AC4D2DFCC5FFFDA0008010303013F219825B68DB79EB99624589162458916
        24589162458916245890EC48869B15EF0B0FF9195EF0B0FF0091939024651B7B
        68B6A16D42DA85B50B6A16D42DA85B50B6A16D41296908BF78BFFFDA000C0301
        0002110311000010D24924921400000002C00000006324924907800000024FFF
        DA0008010103013F107BCDEB4834CB513739BF10B0FB76EDDBB76EDDBB7676C5
        8654DD6621BCF389C90CDB5EADAF0E629D939B15092DF2AFAD6EF255A9387961
        3B76EDDBB76EDDBB4D706D8C4615A9D2226F56DB697AC85CC4A59C2764184184
        1841841841841841841824D44C0CBCA76649727FFFDA0008010203013F108FED
        899A433D9AB712E7FC2EFECBBFB2EFECBBFB2EFECBBFB2EFECBBFB2EFECBBFB1
        48C7524DEB0D68DEF1E75291E78750F0CA479E1D43C325E9106469B4B5948A74
        D30F1E3C78F1E3C78F1E35156E5C68850929CDFB85EB17FFDA0008010303013F
        104517C84D2AB76894C24BFD2A6E0A9B82A6E0A9B82A6E0A9B82A6E0A9B82A6E
        0A9B813AD58DA6E4E252DA6745965894A9DE56252A7794426C26AC9A484F309C
        253AE1922448912244891224D9B04A6252E5B71296D94BD35CF17FFFD9}
      OnClick = imgSilClick
    end
    object imgGuncelle: TImage
      Left = 732
      Top = 95
      Width = 96
      Height = 37
      Cursor = crHandPoint
      AutoSize = True
      DragCursor = crHandPoint
      Enabled = False
      Picture.Data = {
        0A544A504547496D616765EE120000FFD8FFE000104A46494600010200006400
        640000FFEC00114475636B7900010004000000500000FFE20C584943435F5052
        4F46494C4500010100000C484C696E6F021000006D6E74725247422058595A20
        07CE00020009000600310000616373704D534654000000004945432073524742
        0000000000000000000000000000F6D6000100000000D32D4850202000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000116370727400000150000000336465736300000184
        0000006C77747074000001F000000014626B707400000204000000147258595A
        00000218000000146758595A0000022C000000146258595A0000024000000014
        646D6E640000025400000070646D6464000002C400000088767565640000034C
        0000008676696577000003D4000000246C756D69000003F8000000146D656173
        0000040C0000002474656368000004300000000C725452430000043C0000080C
        675452430000043C0000080C625452430000043C0000080C7465787400000000
        436F70797269676874202863292031393938204865776C6574742D5061636B61
        726420436F6D70616E7900006465736300000000000000127352474220494543
        36313936362D322E310000000000000000000000127352474220494543363139
        36362D322E310000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000058595A2000000000
        0000F35100010000000116CC58595A2000000000000000000000000000000000
        58595A200000000000006FA2000038F50000039058595A200000000000006299
        0000B785000018DA58595A2000000000000024A000000F840000B6CF64657363
        000000000000001649454320687474703A2F2F7777772E6965632E6368000000
        00000000000000001649454320687474703A2F2F7777772E6965632E63680000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000064657363000000000000002E4945432036313936
        362D322E312044656661756C742052474220636F6C6F7572207370616365202D
        207352474200000000000000000000002E4945432036313936362D322E312044
        656661756C742052474220636F6C6F7572207370616365202D20735247420000
        000000000000000000000000000000000000000064657363000000000000002C
        5265666572656E63652056696577696E6720436F6E646974696F6E20696E2049
        454336313936362D322E3100000000000000000000002C5265666572656E6365
        2056696577696E6720436F6E646974696F6E20696E2049454336313936362D32
        2E31000000000000000000000000000000000000000000000000000076696577
        000000000013A4FE00145F2E0010CF140003EDCC0004130B00035C9E00000001
        58595A2000000000004C09560050000000571FE76D6561730000000000000001
        000000000000000000000000000000000000028F000000027369672000000000
        4352542063757276000000000000040000000005000A000F00140019001E0023
        0028002D00320037003B00400045004A004F00540059005E00630068006D0072
        0077007C00810086008B00900095009A009F00A400A900AE00B200B700BC00C1
        00C600CB00D000D500DB00E000E500EB00F000F600FB01010107010D01130119
        011F0125012B01320138013E0145014C0152015901600167016E0175017C0183
        018B0192019A01A101A901B101B901C101C901D101D901E101E901F201FA0203
        020C0214021D0226022F02380241024B0254025D02670271027A0284028E0298
        02A202AC02B602C102CB02D502E002EB02F50300030B03160321032D03380343
        034F035A03660372037E038A039603A203AE03BA03C703D303E003EC03F90406
        04130420042D043B0448045504630471047E048C049A04A804B604C404D304E1
        04F004FE050D051C052B053A05490558056705770586059605A605B505C505D5
        05E505F6060606160627063706480659066A067B068C069D06AF06C006D106E3
        06F507070719072B073D074F076107740786079907AC07BF07D207E507F8080B
        081F08320846085A086E0882089608AA08BE08D208E708FB09100925093A094F
        09640979098F09A409BA09CF09E509FB0A110A270A3D0A540A6A0A810A980AAE
        0AC50ADC0AF30B0B0B220B390B510B690B800B980BB00BC80BE10BF90C120C2A
        0C430C5C0C750C8E0CA70CC00CD90CF30D0D0D260D400D5A0D740D8E0DA90DC3
        0DDE0DF80E130E2E0E490E640E7F0E9B0EB60ED20EEE0F090F250F410F5E0F7A
        0F960FB30FCF0FEC1009102610431061107E109B10B910D710F511131131114F
        116D118C11AA11C911E81207122612451264128412A312C312E3130313231343
        1363138313A413C513E5140614271449146A148B14AD14CE14F0151215341556
        1578159B15BD15E0160316261649166C168F16B216D616FA171D174117651789
        17AE17D217F7181B18401865188A18AF18D518FA19201945196B199119B719DD
        1A041A2A1A511A771A9E1AC51AEC1B141B3B1B631B8A1BB21BDA1C021C2A1C52
        1C7B1CA31CCC1CF51D1E1D471D701D991DC31DEC1E161E401E6A1E941EBE1EE9
        1F131F3E1F691F941FBF1FEA20152041206C209820C420F0211C2148217521A1
        21CE21FB22272255228222AF22DD230A23382366239423C223F0241F244D247C
        24AB24DA250925382568259725C725F726272657268726B726E827182749277A
        27AB27DC280D283F287128A228D429062938296B299D29D02A022A352A682A9B
        2ACF2B022B362B692B9D2BD12C052C392C6E2CA22CD72D0C2D412D762DAB2DE1
        2E162E4C2E822EB72EEE2F242F5A2F912FC72FFE3035306C30A430DB3112314A
        318231BA31F2322A3263329B32D4330D3346337F33B833F1342B3465349E34D8
        3513354D358735C235FD3637367236AE36E937243760379C37D738143850388C
        38C839053942397F39BC39F93A363A743AB23AEF3B2D3B6B3BAA3BE83C273C65
        3CA43CE33D223D613DA13DE03E203E603EA03EE03F213F613FA23FE240234064
        40A640E74129416A41AC41EE4230427242B542F7433A437D43C044034447448A
        44CE45124555459A45DE4622466746AB46F04735477B47C04805484B489148D7
        491D496349A949F04A374A7D4AC44B0C4B534B9A4BE24C2A4C724CBA4D024D4A
        4D934DDC4E254E6E4EB74F004F494F934FDD5027507150BB51065150519B51E6
        5231527C52C75313535F53AA53F65442548F54DB5528557555C2560F565C56A9
        56F75744579257E0582F587D58CB591A596959B85A075A565AA65AF55B455B95
        5BE55C355C865CD65D275D785DC95E1A5E6C5EBD5F0F5F615FB36005605760AA
        60FC614F61A261F56249629C62F06343639763EB6440649464E9653D659265E7
        663D669266E8673D679367E9683F689668EC6943699A69F16A486A9F6AF76B4F
        6BA76BFF6C576CAF6D086D606DB96E126E6B6EC46F1E6F786FD1702B708670E0
        713A719571F0724B72A67301735D73B87414747074CC7528758575E1763E769B
        76F8775677B37811786E78CC792A798979E77A467AA57B047B637BC27C217C81
        7CE17D417DA17E017E627EC27F237F847FE5804780A8810A816B81CD82308292
        82F4835783BA841D848084E3854785AB860E867286D7873B879F8804886988CE
        8933899989FE8A648ACA8B308B968BFC8C638CCA8D318D988DFF8E668ECE8F36
        8F9E9006906E90D6913F91A89211927A92E3934D93B69420948A94F4955F95C9
        9634969F970A977597E0984C98B89924999099FC9A689AD59B429BAF9C1C9C89
        9CF79D649DD29E409EAE9F1D9F8B9FFAA069A0D8A147A1B6A226A296A306A376
        A3E6A456A4C7A538A5A9A61AA68BA6FDA76EA7E0A852A8C4A937A9A9AA1CAA8F
        AB02AB75ABE9AC5CACD0AD44ADB8AE2DAEA1AF16AF8BB000B075B0EAB160B1D6
        B24BB2C2B338B3AEB425B49CB513B58AB601B679B6F0B768B7E0B859B8D1B94A
        B9C2BA3BBAB5BB2EBBA7BC21BC9BBD15BD8FBE0ABE84BEFFBF7ABFF5C070C0EC
        C167C1E3C25FC2DBC358C3D4C451C4CEC54BC5C8C646C6C3C741C7BFC83DC8BC
        C93AC9B9CA38CAB7CB36CBB6CC35CCB5CD35CDB5CE36CEB6CF37CFB8D039D0BA
        D13CD1BED23FD2C1D344D3C6D449D4CBD54ED5D1D655D6D8D75CD7E0D864D8E8
        D96CD9F1DA76DAFBDB80DC05DC8ADD10DD96DE1CDEA2DF29DFAFE036E0BDE144
        E1CCE253E2DBE363E3EBE473E4FCE584E60DE696E71FE7A9E832E8BCE946E9D0
        EA5BEAE5EB70EBFBEC86ED11ED9CEE28EEB4EF40EFCCF058F0E5F172F1FFF28C
        F319F3A7F434F4C2F550F5DEF66DF6FBF78AF819F8A8F938F9C7FA57FAE7FB77
        FC07FC98FD29FDBAFE4BFEDCFF6DFFFFFFEE002641646F62650064C000000001
        0300150403060A0D00000F5300001069000011B0000012ECFFDB008400020202
        0202020202020203020202030403020203040504040404040506050505050505
        060607070807070609090A0A09090C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010303
        03050405090606090D0B090B0D0F0E0E0E0E0F0F0C0C0C0C0C0F0F0C0C0C0C0C
        0C0F0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC2
        0011080025006003011100021101031101FFC400BD0001000300030000000000
        0000000000000005060701040801010101010101000000000000000000000006
        0405030710000104020201030500000000000000000003040515021430243213
        3306011112343511000004060102050500000000000000000001020391D13292
        0435113112304172B2742151B122231200020202020203000000000000000000
        00013132F0023081217111411213000201020603000301000000000000000001
        11F0F130213141C1D15171916181A1B1FFDA000C03010002110311000001D53E
        73F4FAEE1E80000000DE2CA1BCF915790F8F70000000DE2DA071E95B088C7B80
        000006EF6D0356F2F680C7B80000039369A693B5F638BD10000000590FFFDA00
        08010100010502959A92FAC85C4A9712A5C4A9712A5C4A9712A5C4A9712A5C4A
        9712A7C5A41CBD6D23FD0E2F86F8C87EFF0017C37C64A156C9E523B291D948EC
        A476523B291D948ECA476523B291D9F1B619314D6D5FCBA674CE99D33A674CE9
        9D33A674C6FE97DBFFDA000801020001050272E94F5369536953695369536953
        69536953695369536952396C94C5C7B9C515E2E3DCE28AF15E372CB3AB50AB50
        AB50AB50AB50AB50AB50AB50AB50AB5066DBD0C793FFDA00080103000105026A
        CD2F4B51135113511351135113511351135113511351124D0C53CDB7B5C531E4
        DBDAE298F26F2986185BA45BA45BA45BA45BA45BA45BA45BA45BA45BA43E75B1
        9727FFDA0008010202063F027E4B32CCB32CCB32CCB32CCB32CC7FA36F6F8F63
        6F6F8F61BD5C928944A25128944A251289479E5FFFDA0008010302063F02D7E5
        7D15455154551545515455154550BF3F66BE971EA6BE971EA2D764FC10F3B21E
        7643CEC879D90F3B21E7643CEC879D90F3B21E76788E5FFFDA0008010101063F
        02CB4B796E32DB4EA9B6D0D9F697093E3C86C322F31B0C8BCC6C322F31B0C8BC
        C6C322F31B0C8BCC6C322F31B0C8BCC6C322F31B0C8BCC3E9CA70DD532B22438
        7D7832F319DF21CF71F8797EA4FE0677C873DC7E1E5FA921F75A5A7B5D59AF85
        73D4FEBF615371390A9B89C854DC4E42A6E27215371390A9B89C854DC4E42A6E
        27215371390A9B89C839DEAEE5BA7CAB8E83F6EBE1FF0031FFDA000801010301
        3F2175D34A87D7F26E24A2F928BE4A2F928BE4A2F928BE4A2F928BE4A2F928BE
        4CF2AE0BCA86DE1AC40CF975CB13353FC33460F41A6C964DBE19B366CD9B366C
        D9B369242DDA12509293393F83DDFC5D9EEFE2ECF77F1767BBF8BB3DDFC5D9EE
        FE2ECF77F1767BBF8BB3DDFC5D8BF37F1767A03FFFDA0008010203013F2186A7
        4936B2CB4C8B81702E05C0B81702E05C0B817025A4C32BDE70FF00B115EF387F
        D88564869CE77FD32FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FA
        FA1AC4D2DFCC5FFFDA0008010303013F219825B68DB79EB99624589162458916
        24589162458916245890EC48869B15EF0B0FF9195EF0B0FF0091939024651B7B
        68B6A16D42DA85B50B6A16D42DA85B50B6A16D41296908BF78BFFFDA000C0301
        0002110311000010D24924921400000002C00000006324924907800000024FFF
        DA0008010103013F107BCDEB4834CB513739BF10B0FB76EDDBB76EDDBB7676C5
        8654DD6621BCF389C90CDB5EADAF0E629D939B15092DF2AFAD6EF255A9387961
        3B76EDDBB76EDDBB4D706D8C4615A9D2226F56DB697AC85CC4A59C2764184184
        1841841841841841841824D44C0CBCA76649727FFFDA0008010203013F108FED
        899A433D9AB712E7FC2EFECBBFB2EFECBBFB2EFECBBFB2EFECBBFB2EFECBBFB1
        48C7524DEB0D68DEF1E75291E78750F0CA479E1D43C325E9106469B4B5948A74
        D30F1E3C78F1E3C78F1E35156E5C68850929CDFB85EB17FFDA0008010303013F
        104517C84D2AB76894C24BFD2A6E0A9B82A6E0A9B82A6E0A9B82A6E0A9B82A6E
        0A9B813AD58DA6E4E252DA6745965894A9DE56252A7794426C26AC9A484F309C
        253AE1922448912244891224D9B04A6252E5B71296D94BD35CF17FFFD9}
      OnClick = imgGuncelleClick
    end
    object ImgKaydet: TImage
      Left = 731
      Top = 59
      Width = 96
      Height = 37
      Cursor = crHandPoint
      AutoSize = True
      DragCursor = crHandPoint
      Picture.Data = {
        0A544A504547496D616765EE120000FFD8FFE000104A46494600010200006400
        640000FFEC00114475636B7900010004000000500000FFE20C584943435F5052
        4F46494C4500010100000C484C696E6F021000006D6E74725247422058595A20
        07CE00020009000600310000616373704D534654000000004945432073524742
        0000000000000000000000000000F6D6000100000000D32D4850202000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000116370727400000150000000336465736300000184
        0000006C77747074000001F000000014626B707400000204000000147258595A
        00000218000000146758595A0000022C000000146258595A0000024000000014
        646D6E640000025400000070646D6464000002C400000088767565640000034C
        0000008676696577000003D4000000246C756D69000003F8000000146D656173
        0000040C0000002474656368000004300000000C725452430000043C0000080C
        675452430000043C0000080C625452430000043C0000080C7465787400000000
        436F70797269676874202863292031393938204865776C6574742D5061636B61
        726420436F6D70616E7900006465736300000000000000127352474220494543
        36313936362D322E310000000000000000000000127352474220494543363139
        36362D322E310000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000058595A2000000000
        0000F35100010000000116CC58595A2000000000000000000000000000000000
        58595A200000000000006FA2000038F50000039058595A200000000000006299
        0000B785000018DA58595A2000000000000024A000000F840000B6CF64657363
        000000000000001649454320687474703A2F2F7777772E6965632E6368000000
        00000000000000001649454320687474703A2F2F7777772E6965632E63680000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000064657363000000000000002E4945432036313936
        362D322E312044656661756C742052474220636F6C6F7572207370616365202D
        207352474200000000000000000000002E4945432036313936362D322E312044
        656661756C742052474220636F6C6F7572207370616365202D20735247420000
        000000000000000000000000000000000000000064657363000000000000002C
        5265666572656E63652056696577696E6720436F6E646974696F6E20696E2049
        454336313936362D322E3100000000000000000000002C5265666572656E6365
        2056696577696E6720436F6E646974696F6E20696E2049454336313936362D32
        2E31000000000000000000000000000000000000000000000000000076696577
        000000000013A4FE00145F2E0010CF140003EDCC0004130B00035C9E00000001
        58595A2000000000004C09560050000000571FE76D6561730000000000000001
        000000000000000000000000000000000000028F000000027369672000000000
        4352542063757276000000000000040000000005000A000F00140019001E0023
        0028002D00320037003B00400045004A004F00540059005E00630068006D0072
        0077007C00810086008B00900095009A009F00A400A900AE00B200B700BC00C1
        00C600CB00D000D500DB00E000E500EB00F000F600FB01010107010D01130119
        011F0125012B01320138013E0145014C0152015901600167016E0175017C0183
        018B0192019A01A101A901B101B901C101C901D101D901E101E901F201FA0203
        020C0214021D0226022F02380241024B0254025D02670271027A0284028E0298
        02A202AC02B602C102CB02D502E002EB02F50300030B03160321032D03380343
        034F035A03660372037E038A039603A203AE03BA03C703D303E003EC03F90406
        04130420042D043B0448045504630471047E048C049A04A804B604C404D304E1
        04F004FE050D051C052B053A05490558056705770586059605A605B505C505D5
        05E505F6060606160627063706480659066A067B068C069D06AF06C006D106E3
        06F507070719072B073D074F076107740786079907AC07BF07D207E507F8080B
        081F08320846085A086E0882089608AA08BE08D208E708FB09100925093A094F
        09640979098F09A409BA09CF09E509FB0A110A270A3D0A540A6A0A810A980AAE
        0AC50ADC0AF30B0B0B220B390B510B690B800B980BB00BC80BE10BF90C120C2A
        0C430C5C0C750C8E0CA70CC00CD90CF30D0D0D260D400D5A0D740D8E0DA90DC3
        0DDE0DF80E130E2E0E490E640E7F0E9B0EB60ED20EEE0F090F250F410F5E0F7A
        0F960FB30FCF0FEC1009102610431061107E109B10B910D710F511131131114F
        116D118C11AA11C911E81207122612451264128412A312C312E3130313231343
        1363138313A413C513E5140614271449146A148B14AD14CE14F0151215341556
        1578159B15BD15E0160316261649166C168F16B216D616FA171D174117651789
        17AE17D217F7181B18401865188A18AF18D518FA19201945196B199119B719DD
        1A041A2A1A511A771A9E1AC51AEC1B141B3B1B631B8A1BB21BDA1C021C2A1C52
        1C7B1CA31CCC1CF51D1E1D471D701D991DC31DEC1E161E401E6A1E941EBE1EE9
        1F131F3E1F691F941FBF1FEA20152041206C209820C420F0211C2148217521A1
        21CE21FB22272255228222AF22DD230A23382366239423C223F0241F244D247C
        24AB24DA250925382568259725C725F726272657268726B726E827182749277A
        27AB27DC280D283F287128A228D429062938296B299D29D02A022A352A682A9B
        2ACF2B022B362B692B9D2BD12C052C392C6E2CA22CD72D0C2D412D762DAB2DE1
        2E162E4C2E822EB72EEE2F242F5A2F912FC72FFE3035306C30A430DB3112314A
        318231BA31F2322A3263329B32D4330D3346337F33B833F1342B3465349E34D8
        3513354D358735C235FD3637367236AE36E937243760379C37D738143850388C
        38C839053942397F39BC39F93A363A743AB23AEF3B2D3B6B3BAA3BE83C273C65
        3CA43CE33D223D613DA13DE03E203E603EA03EE03F213F613FA23FE240234064
        40A640E74129416A41AC41EE4230427242B542F7433A437D43C044034447448A
        44CE45124555459A45DE4622466746AB46F04735477B47C04805484B489148D7
        491D496349A949F04A374A7D4AC44B0C4B534B9A4BE24C2A4C724CBA4D024D4A
        4D934DDC4E254E6E4EB74F004F494F934FDD5027507150BB51065150519B51E6
        5231527C52C75313535F53AA53F65442548F54DB5528557555C2560F565C56A9
        56F75744579257E0582F587D58CB591A596959B85A075A565AA65AF55B455B95
        5BE55C355C865CD65D275D785DC95E1A5E6C5EBD5F0F5F615FB36005605760AA
        60FC614F61A261F56249629C62F06343639763EB6440649464E9653D659265E7
        663D669266E8673D679367E9683F689668EC6943699A69F16A486A9F6AF76B4F
        6BA76BFF6C576CAF6D086D606DB96E126E6B6EC46F1E6F786FD1702B708670E0
        713A719571F0724B72A67301735D73B87414747074CC7528758575E1763E769B
        76F8775677B37811786E78CC792A798979E77A467AA57B047B637BC27C217C81
        7CE17D417DA17E017E627EC27F237F847FE5804780A8810A816B81CD82308292
        82F4835783BA841D848084E3854785AB860E867286D7873B879F8804886988CE
        8933899989FE8A648ACA8B308B968BFC8C638CCA8D318D988DFF8E668ECE8F36
        8F9E9006906E90D6913F91A89211927A92E3934D93B69420948A94F4955F95C9
        9634969F970A977597E0984C98B89924999099FC9A689AD59B429BAF9C1C9C89
        9CF79D649DD29E409EAE9F1D9F8B9FFAA069A0D8A147A1B6A226A296A306A376
        A3E6A456A4C7A538A5A9A61AA68BA6FDA76EA7E0A852A8C4A937A9A9AA1CAA8F
        AB02AB75ABE9AC5CACD0AD44ADB8AE2DAEA1AF16AF8BB000B075B0EAB160B1D6
        B24BB2C2B338B3AEB425B49CB513B58AB601B679B6F0B768B7E0B859B8D1B94A
        B9C2BA3BBAB5BB2EBBA7BC21BC9BBD15BD8FBE0ABE84BEFFBF7ABFF5C070C0EC
        C167C1E3C25FC2DBC358C3D4C451C4CEC54BC5C8C646C6C3C741C7BFC83DC8BC
        C93AC9B9CA38CAB7CB36CBB6CC35CCB5CD35CDB5CE36CEB6CF37CFB8D039D0BA
        D13CD1BED23FD2C1D344D3C6D449D4CBD54ED5D1D655D6D8D75CD7E0D864D8E8
        D96CD9F1DA76DAFBDB80DC05DC8ADD10DD96DE1CDEA2DF29DFAFE036E0BDE144
        E1CCE253E2DBE363E3EBE473E4FCE584E60DE696E71FE7A9E832E8BCE946E9D0
        EA5BEAE5EB70EBFBEC86ED11ED9CEE28EEB4EF40EFCCF058F0E5F172F1FFF28C
        F319F3A7F434F4C2F550F5DEF66DF6FBF78AF819F8A8F938F9C7FA57FAE7FB77
        FC07FC98FD29FDBAFE4BFEDCFF6DFFFFFFEE002641646F62650064C000000001
        0300150403060A0D00000F5300001069000011B0000012ECFFDB008400020202
        0202020202020203020202030403020203040504040404040506050505050505
        060607070807070609090A0A09090C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010303
        03050405090606090D0B090B0D0F0E0E0E0E0F0F0C0C0C0C0C0F0F0C0C0C0C0C
        0C0F0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC2
        0011080025006003011100021101031101FFC400BD0001000300030000000000
        0000000000000005060701040801010101010101000000000000000000000006
        0405030710000104020201030500000000000000000003040515021430243213
        3306011112343511000004060102050500000000000000000001020391D13292
        0435113112304172B2742151B122231200020202020203000000000000000000
        00013132F0023081217111411213000201020603000301000000000000000001
        11F0F130213141C1D15171916181A1B1FFDA000C03010002110311000001D53E
        73F4FAEE1E80000000DE2CA1BCF915790F8F70000000DE2DA071E95B088C7B80
        000006EF6D0356F2F680C7B80000039369A693B5F638BD10000000590FFFDA00
        08010100010502959A92FAC85C4A9712A5C4A9712A5C4A9712A5C4A9712A5C4A
        9712A7C5A41CBD6D23FD0E2F86F8C87EFF0017C37C64A156C9E523B291D948EC
        A476523B291D948ECA476523B291D9F1B619314D6D5FCBA674CE99D33A674CE9
        9D33A674C6FE97DBFFDA000801020001050272E94F5369536953695369536953
        69536953695369536952396C94C5C7B9C515E2E3DCE28AF15E372CB3AB50AB50
        AB50AB50AB50AB50AB50AB50AB50AB5066DBD0C793FFDA00080103000105026A
        CD2F4B51135113511351135113511351135113511351124D0C53CDB7B5C531E4
        DBDAE298F26F2986185BA45BA45BA45BA45BA45BA45BA45BA45BA45BA43E75B1
        9727FFDA0008010202063F027E4B32CCB32CCB32CCB32CCB32CC7FA36F6F8F63
        6F6F8F61BD5C928944A25128944A251289479E5FFFDA0008010302063F02D7E5
        7D15455154551545515455154550BF3F66BE971EA6BE971EA2D764FC10F3B21E
        7643CEC879D90F3B21E7643CEC879D90F3B21E76788E5FFFDA0008010101063F
        02CB4B796E32DB4EA9B6D0D9F697093E3C86C322F31B0C8BCC6C322F31B0C8BC
        C6C322F31B0C8BCC6C322F31B0C8BCC6C322F31B0C8BCC3E9CA70DD532B22438
        7D7832F319DF21CF71F8797EA4FE0677C873DC7E1E5FA921F75A5A7B5D59AF85
        73D4FEBF615371390A9B89C854DC4E42A6E27215371390A9B89C854DC4E42A6E
        27215371390A9B89C839DEAEE5BA7CAB8E83F6EBE1FF0031FFDA000801010301
        3F2175D34A87D7F26E24A2F928BE4A2F928BE4A2F928BE4A2F928BE4A2F928BE
        4CF2AE0BCA86DE1AC40CF975CB13353FC33460F41A6C964DBE19B366CD9B366C
        D9B369242DDA12509293393F83DDFC5D9EEFE2ECF77F1767BBF8BB3DDFC5D9EE
        FE2ECF77F1767BBF8BB3DDFC5D8BF37F1767A03FFFDA0008010203013F2186A7
        4936B2CB4C8B81702E05C0B81702E05C0B817025A4C32BDE70FF00B115EF387F
        D88564869CE77FD32FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FA
        FA1AC4D2DFCC5FFFDA0008010303013F219825B68DB79EB99624589162458916
        24589162458916245890EC48869B15EF0B0FF9195EF0B0FF0091939024651B7B
        68B6A16D42DA85B50B6A16D42DA85B50B6A16D41296908BF78BFFFDA000C0301
        0002110311000010D24924921400000002C00000006324924907800000024FFF
        DA0008010103013F107BCDEB4834CB513739BF10B0FB76EDDBB76EDDBB7676C5
        8654DD6621BCF389C90CDB5EADAF0E629D939B15092DF2AFAD6EF255A9387961
        3B76EDDBB76EDDBB4D706D8C4615A9D2226F56DB697AC85CC4A59C2764184184
        1841841841841841841824D44C0CBCA76649727FFFDA0008010203013F108FED
        899A433D9AB712E7FC2EFECBBFB2EFECBBFB2EFECBBFB2EFECBBFB2EFECBBFB1
        48C7524DEB0D68DEF1E75291E78750F0CA479E1D43C325E9106469B4B5948A74
        D30F1E3C78F1E3C78F1E35156E5C68850929CDFB85EB17FFDA0008010303013F
        104517C84D2AB76894C24BFD2A6E0A9B82A6E0A9B82A6E0A9B82A6E0A9B82A6E
        0A9B813AD58DA6E4E252DA6745965894A9DE56252A7794426C26AC9A484F309C
        253AE1922448912244891224D9B04A6252E5B71296D94BD35CF17FFFD9}
      OnClick = ImgKaydetClick
    end
    object LblKaydet: TLabel
      Left = 752
      Top = 66
      Width = 44
      Height = 16
      Cursor = crHandPoint
      Caption = 'Kaydet'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      OnClick = ImgKaydetClick
    end
    object LblGuncelle: TLabel
      Left = 752
      Top = 102
      Width = 57
      Height = 16
      Cursor = crHandPoint
      Caption = 'G'#252'ncelle'
      Enabled = False
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      OnClick = imgGuncelleClick
    end
    object LblSil: TLabel
      Left = 880
      Top = 66
      Width = 17
      Height = 16
      Cursor = crHandPoint
      Caption = 'Sil'
      Enabled = False
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      OnClick = imgSilClick
    end
    object Label57: TLabel
      Left = 6
      Top = 60
      Width = 58
      Height = 13
      Caption = 'A'#231#305'klama :'
    end
    object imgYeni: TImage
      Left = 842
      Top = 95
      Width = 96
      Height = 37
      Cursor = crHandPoint
      AutoSize = True
      DragCursor = crHandPoint
      Picture.Data = {
        0A544A504547496D616765EE120000FFD8FFE000104A46494600010200006400
        640000FFEC00114475636B7900010004000000500000FFE20C584943435F5052
        4F46494C4500010100000C484C696E6F021000006D6E74725247422058595A20
        07CE00020009000600310000616373704D534654000000004945432073524742
        0000000000000000000000000000F6D6000100000000D32D4850202000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000116370727400000150000000336465736300000184
        0000006C77747074000001F000000014626B707400000204000000147258595A
        00000218000000146758595A0000022C000000146258595A0000024000000014
        646D6E640000025400000070646D6464000002C400000088767565640000034C
        0000008676696577000003D4000000246C756D69000003F8000000146D656173
        0000040C0000002474656368000004300000000C725452430000043C0000080C
        675452430000043C0000080C625452430000043C0000080C7465787400000000
        436F70797269676874202863292031393938204865776C6574742D5061636B61
        726420436F6D70616E7900006465736300000000000000127352474220494543
        36313936362D322E310000000000000000000000127352474220494543363139
        36362D322E310000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000058595A2000000000
        0000F35100010000000116CC58595A2000000000000000000000000000000000
        58595A200000000000006FA2000038F50000039058595A200000000000006299
        0000B785000018DA58595A2000000000000024A000000F840000B6CF64657363
        000000000000001649454320687474703A2F2F7777772E6965632E6368000000
        00000000000000001649454320687474703A2F2F7777772E6965632E63680000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000064657363000000000000002E4945432036313936
        362D322E312044656661756C742052474220636F6C6F7572207370616365202D
        207352474200000000000000000000002E4945432036313936362D322E312044
        656661756C742052474220636F6C6F7572207370616365202D20735247420000
        000000000000000000000000000000000000000064657363000000000000002C
        5265666572656E63652056696577696E6720436F6E646974696F6E20696E2049
        454336313936362D322E3100000000000000000000002C5265666572656E6365
        2056696577696E6720436F6E646974696F6E20696E2049454336313936362D32
        2E31000000000000000000000000000000000000000000000000000076696577
        000000000013A4FE00145F2E0010CF140003EDCC0004130B00035C9E00000001
        58595A2000000000004C09560050000000571FE76D6561730000000000000001
        000000000000000000000000000000000000028F000000027369672000000000
        4352542063757276000000000000040000000005000A000F00140019001E0023
        0028002D00320037003B00400045004A004F00540059005E00630068006D0072
        0077007C00810086008B00900095009A009F00A400A900AE00B200B700BC00C1
        00C600CB00D000D500DB00E000E500EB00F000F600FB01010107010D01130119
        011F0125012B01320138013E0145014C0152015901600167016E0175017C0183
        018B0192019A01A101A901B101B901C101C901D101D901E101E901F201FA0203
        020C0214021D0226022F02380241024B0254025D02670271027A0284028E0298
        02A202AC02B602C102CB02D502E002EB02F50300030B03160321032D03380343
        034F035A03660372037E038A039603A203AE03BA03C703D303E003EC03F90406
        04130420042D043B0448045504630471047E048C049A04A804B604C404D304E1
        04F004FE050D051C052B053A05490558056705770586059605A605B505C505D5
        05E505F6060606160627063706480659066A067B068C069D06AF06C006D106E3
        06F507070719072B073D074F076107740786079907AC07BF07D207E507F8080B
        081F08320846085A086E0882089608AA08BE08D208E708FB09100925093A094F
        09640979098F09A409BA09CF09E509FB0A110A270A3D0A540A6A0A810A980AAE
        0AC50ADC0AF30B0B0B220B390B510B690B800B980BB00BC80BE10BF90C120C2A
        0C430C5C0C750C8E0CA70CC00CD90CF30D0D0D260D400D5A0D740D8E0DA90DC3
        0DDE0DF80E130E2E0E490E640E7F0E9B0EB60ED20EEE0F090F250F410F5E0F7A
        0F960FB30FCF0FEC1009102610431061107E109B10B910D710F511131131114F
        116D118C11AA11C911E81207122612451264128412A312C312E3130313231343
        1363138313A413C513E5140614271449146A148B14AD14CE14F0151215341556
        1578159B15BD15E0160316261649166C168F16B216D616FA171D174117651789
        17AE17D217F7181B18401865188A18AF18D518FA19201945196B199119B719DD
        1A041A2A1A511A771A9E1AC51AEC1B141B3B1B631B8A1BB21BDA1C021C2A1C52
        1C7B1CA31CCC1CF51D1E1D471D701D991DC31DEC1E161E401E6A1E941EBE1EE9
        1F131F3E1F691F941FBF1FEA20152041206C209820C420F0211C2148217521A1
        21CE21FB22272255228222AF22DD230A23382366239423C223F0241F244D247C
        24AB24DA250925382568259725C725F726272657268726B726E827182749277A
        27AB27DC280D283F287128A228D429062938296B299D29D02A022A352A682A9B
        2ACF2B022B362B692B9D2BD12C052C392C6E2CA22CD72D0C2D412D762DAB2DE1
        2E162E4C2E822EB72EEE2F242F5A2F912FC72FFE3035306C30A430DB3112314A
        318231BA31F2322A3263329B32D4330D3346337F33B833F1342B3465349E34D8
        3513354D358735C235FD3637367236AE36E937243760379C37D738143850388C
        38C839053942397F39BC39F93A363A743AB23AEF3B2D3B6B3BAA3BE83C273C65
        3CA43CE33D223D613DA13DE03E203E603EA03EE03F213F613FA23FE240234064
        40A640E74129416A41AC41EE4230427242B542F7433A437D43C044034447448A
        44CE45124555459A45DE4622466746AB46F04735477B47C04805484B489148D7
        491D496349A949F04A374A7D4AC44B0C4B534B9A4BE24C2A4C724CBA4D024D4A
        4D934DDC4E254E6E4EB74F004F494F934FDD5027507150BB51065150519B51E6
        5231527C52C75313535F53AA53F65442548F54DB5528557555C2560F565C56A9
        56F75744579257E0582F587D58CB591A596959B85A075A565AA65AF55B455B95
        5BE55C355C865CD65D275D785DC95E1A5E6C5EBD5F0F5F615FB36005605760AA
        60FC614F61A261F56249629C62F06343639763EB6440649464E9653D659265E7
        663D669266E8673D679367E9683F689668EC6943699A69F16A486A9F6AF76B4F
        6BA76BFF6C576CAF6D086D606DB96E126E6B6EC46F1E6F786FD1702B708670E0
        713A719571F0724B72A67301735D73B87414747074CC7528758575E1763E769B
        76F8775677B37811786E78CC792A798979E77A467AA57B047B637BC27C217C81
        7CE17D417DA17E017E627EC27F237F847FE5804780A8810A816B81CD82308292
        82F4835783BA841D848084E3854785AB860E867286D7873B879F8804886988CE
        8933899989FE8A648ACA8B308B968BFC8C638CCA8D318D988DFF8E668ECE8F36
        8F9E9006906E90D6913F91A89211927A92E3934D93B69420948A94F4955F95C9
        9634969F970A977597E0984C98B89924999099FC9A689AD59B429BAF9C1C9C89
        9CF79D649DD29E409EAE9F1D9F8B9FFAA069A0D8A147A1B6A226A296A306A376
        A3E6A456A4C7A538A5A9A61AA68BA6FDA76EA7E0A852A8C4A937A9A9AA1CAA8F
        AB02AB75ABE9AC5CACD0AD44ADB8AE2DAEA1AF16AF8BB000B075B0EAB160B1D6
        B24BB2C2B338B3AEB425B49CB513B58AB601B679B6F0B768B7E0B859B8D1B94A
        B9C2BA3BBAB5BB2EBBA7BC21BC9BBD15BD8FBE0ABE84BEFFBF7ABFF5C070C0EC
        C167C1E3C25FC2DBC358C3D4C451C4CEC54BC5C8C646C6C3C741C7BFC83DC8BC
        C93AC9B9CA38CAB7CB36CBB6CC35CCB5CD35CDB5CE36CEB6CF37CFB8D039D0BA
        D13CD1BED23FD2C1D344D3C6D449D4CBD54ED5D1D655D6D8D75CD7E0D864D8E8
        D96CD9F1DA76DAFBDB80DC05DC8ADD10DD96DE1CDEA2DF29DFAFE036E0BDE144
        E1CCE253E2DBE363E3EBE473E4FCE584E60DE696E71FE7A9E832E8BCE946E9D0
        EA5BEAE5EB70EBFBEC86ED11ED9CEE28EEB4EF40EFCCF058F0E5F172F1FFF28C
        F319F3A7F434F4C2F550F5DEF66DF6FBF78AF819F8A8F938F9C7FA57FAE7FB77
        FC07FC98FD29FDBAFE4BFEDCFF6DFFFFFFEE002641646F62650064C000000001
        0300150403060A0D00000F5300001069000011B0000012ECFFDB008400020202
        0202020202020203020202030403020203040504040404040506050505050505
        060607070807070609090A0A09090C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010303
        03050405090606090D0B090B0D0F0E0E0E0E0F0F0C0C0C0C0C0F0F0C0C0C0C0C
        0C0F0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC2
        0011080025006003011100021101031101FFC400BD0001000300030000000000
        0000000000000005060701040801010101010101000000000000000000000006
        0405030710000104020201030500000000000000000003040515021430243213
        3306011112343511000004060102050500000000000000000001020391D13292
        0435113112304172B2742151B122231200020202020203000000000000000000
        00013132F0023081217111411213000201020603000301000000000000000001
        11F0F130213141C1D15171916181A1B1FFDA000C03010002110311000001D53E
        73F4FAEE1E80000000DE2CA1BCF915790F8F70000000DE2DA071E95B088C7B80
        000006EF6D0356F2F680C7B80000039369A693B5F638BD10000000590FFFDA00
        08010100010502959A92FAC85C4A9712A5C4A9712A5C4A9712A5C4A9712A5C4A
        9712A7C5A41CBD6D23FD0E2F86F8C87EFF0017C37C64A156C9E523B291D948EC
        A476523B291D948ECA476523B291D9F1B619314D6D5FCBA674CE99D33A674CE9
        9D33A674C6FE97DBFFDA000801020001050272E94F5369536953695369536953
        69536953695369536952396C94C5C7B9C515E2E3DCE28AF15E372CB3AB50AB50
        AB50AB50AB50AB50AB50AB50AB50AB5066DBD0C793FFDA00080103000105026A
        CD2F4B51135113511351135113511351135113511351124D0C53CDB7B5C531E4
        DBDAE298F26F2986185BA45BA45BA45BA45BA45BA45BA45BA45BA45BA43E75B1
        9727FFDA0008010202063F027E4B32CCB32CCB32CCB32CCB32CC7FA36F6F8F63
        6F6F8F61BD5C928944A25128944A251289479E5FFFDA0008010302063F02D7E5
        7D15455154551545515455154550BF3F66BE971EA6BE971EA2D764FC10F3B21E
        7643CEC879D90F3B21E7643CEC879D90F3B21E76788E5FFFDA0008010101063F
        02CB4B796E32DB4EA9B6D0D9F697093E3C86C322F31B0C8BCC6C322F31B0C8BC
        C6C322F31B0C8BCC6C322F31B0C8BCC6C322F31B0C8BCC3E9CA70DD532B22438
        7D7832F319DF21CF71F8797EA4FE0677C873DC7E1E5FA921F75A5A7B5D59AF85
        73D4FEBF615371390A9B89C854DC4E42A6E27215371390A9B89C854DC4E42A6E
        27215371390A9B89C839DEAEE5BA7CAB8E83F6EBE1FF0031FFDA000801010301
        3F2175D34A87D7F26E24A2F928BE4A2F928BE4A2F928BE4A2F928BE4A2F928BE
        4CF2AE0BCA86DE1AC40CF975CB13353FC33460F41A6C964DBE19B366CD9B366C
        D9B369242DDA12509293393F83DDFC5D9EEFE2ECF77F1767BBF8BB3DDFC5D9EE
        FE2ECF77F1767BBF8BB3DDFC5D8BF37F1767A03FFFDA0008010203013F2186A7
        4936B2CB4C8B81702E05C0B81702E05C0B817025A4C32BDE70FF00B115EF387F
        D88564869CE77FD32FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FA
        FA1AC4D2DFCC5FFFDA0008010303013F219825B68DB79EB99624589162458916
        24589162458916245890EC48869B15EF0B0FF9195EF0B0FF0091939024651B7B
        68B6A16D42DA85B50B6A16D42DA85B50B6A16D41296908BF78BFFFDA000C0301
        0002110311000010D24924921400000002C00000006324924907800000024FFF
        DA0008010103013F107BCDEB4834CB513739BF10B0FB76EDDBB76EDDBB7676C5
        8654DD6621BCF389C90CDB5EADAF0E629D939B15092DF2AFAD6EF255A9387961
        3B76EDDBB76EDDBB4D706D8C4615A9D2226F56DB697AC85CC4A59C2764184184
        1841841841841841841824D44C0CBCA76649727FFFDA0008010203013F108FED
        899A433D9AB712E7FC2EFECBBFB2EFECBBFB2EFECBBFB2EFECBBFB2EFECBBFB1
        48C7524DEB0D68DEF1E75291E78750F0CA479E1D43C325E9106469B4B5948A74
        D30F1E3C78F1E3C78F1E35156E5C68850929CDFB85EB17FFDA0008010303013F
        104517C84D2AB76894C24BFD2A6E0A9B82A6E0A9B82A6E0A9B82A6E0A9B82A6E
        0A9B813AD58DA6E4E252DA6745965894A9DE56252A7794426C26AC9A484F309C
        253AE1922448912244891224D9B04A6252E5B71296D94BD35CF17FFFD9}
      OnClick = imgYeniClick
    end
    object LblYeni: TLabel
      Left = 861
      Top = 102
      Width = 57
      Height = 16
      Cursor = crHandPoint
      Caption = 'Yeni Kart'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      OnClick = imgYeniClick
    end
    object imgYazdir: TImage
      Left = 587
      Top = 59
      Width = 96
      Height = 37
      Cursor = crHandPoint
      AutoSize = True
      DragCursor = crHandPoint
      Picture.Data = {
        0A544A504547496D616765EE120000FFD8FFE000104A46494600010200006400
        640000FFEC00114475636B7900010004000000500000FFE20C584943435F5052
        4F46494C4500010100000C484C696E6F021000006D6E74725247422058595A20
        07CE00020009000600310000616373704D534654000000004945432073524742
        0000000000000000000000000000F6D6000100000000D32D4850202000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000116370727400000150000000336465736300000184
        0000006C77747074000001F000000014626B707400000204000000147258595A
        00000218000000146758595A0000022C000000146258595A0000024000000014
        646D6E640000025400000070646D6464000002C400000088767565640000034C
        0000008676696577000003D4000000246C756D69000003F8000000146D656173
        0000040C0000002474656368000004300000000C725452430000043C0000080C
        675452430000043C0000080C625452430000043C0000080C7465787400000000
        436F70797269676874202863292031393938204865776C6574742D5061636B61
        726420436F6D70616E7900006465736300000000000000127352474220494543
        36313936362D322E310000000000000000000000127352474220494543363139
        36362D322E310000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000058595A2000000000
        0000F35100010000000116CC58595A2000000000000000000000000000000000
        58595A200000000000006FA2000038F50000039058595A200000000000006299
        0000B785000018DA58595A2000000000000024A000000F840000B6CF64657363
        000000000000001649454320687474703A2F2F7777772E6965632E6368000000
        00000000000000001649454320687474703A2F2F7777772E6965632E63680000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000064657363000000000000002E4945432036313936
        362D322E312044656661756C742052474220636F6C6F7572207370616365202D
        207352474200000000000000000000002E4945432036313936362D322E312044
        656661756C742052474220636F6C6F7572207370616365202D20735247420000
        000000000000000000000000000000000000000064657363000000000000002C
        5265666572656E63652056696577696E6720436F6E646974696F6E20696E2049
        454336313936362D322E3100000000000000000000002C5265666572656E6365
        2056696577696E6720436F6E646974696F6E20696E2049454336313936362D32
        2E31000000000000000000000000000000000000000000000000000076696577
        000000000013A4FE00145F2E0010CF140003EDCC0004130B00035C9E00000001
        58595A2000000000004C09560050000000571FE76D6561730000000000000001
        000000000000000000000000000000000000028F000000027369672000000000
        4352542063757276000000000000040000000005000A000F00140019001E0023
        0028002D00320037003B00400045004A004F00540059005E00630068006D0072
        0077007C00810086008B00900095009A009F00A400A900AE00B200B700BC00C1
        00C600CB00D000D500DB00E000E500EB00F000F600FB01010107010D01130119
        011F0125012B01320138013E0145014C0152015901600167016E0175017C0183
        018B0192019A01A101A901B101B901C101C901D101D901E101E901F201FA0203
        020C0214021D0226022F02380241024B0254025D02670271027A0284028E0298
        02A202AC02B602C102CB02D502E002EB02F50300030B03160321032D03380343
        034F035A03660372037E038A039603A203AE03BA03C703D303E003EC03F90406
        04130420042D043B0448045504630471047E048C049A04A804B604C404D304E1
        04F004FE050D051C052B053A05490558056705770586059605A605B505C505D5
        05E505F6060606160627063706480659066A067B068C069D06AF06C006D106E3
        06F507070719072B073D074F076107740786079907AC07BF07D207E507F8080B
        081F08320846085A086E0882089608AA08BE08D208E708FB09100925093A094F
        09640979098F09A409BA09CF09E509FB0A110A270A3D0A540A6A0A810A980AAE
        0AC50ADC0AF30B0B0B220B390B510B690B800B980BB00BC80BE10BF90C120C2A
        0C430C5C0C750C8E0CA70CC00CD90CF30D0D0D260D400D5A0D740D8E0DA90DC3
        0DDE0DF80E130E2E0E490E640E7F0E9B0EB60ED20EEE0F090F250F410F5E0F7A
        0F960FB30FCF0FEC1009102610431061107E109B10B910D710F511131131114F
        116D118C11AA11C911E81207122612451264128412A312C312E3130313231343
        1363138313A413C513E5140614271449146A148B14AD14CE14F0151215341556
        1578159B15BD15E0160316261649166C168F16B216D616FA171D174117651789
        17AE17D217F7181B18401865188A18AF18D518FA19201945196B199119B719DD
        1A041A2A1A511A771A9E1AC51AEC1B141B3B1B631B8A1BB21BDA1C021C2A1C52
        1C7B1CA31CCC1CF51D1E1D471D701D991DC31DEC1E161E401E6A1E941EBE1EE9
        1F131F3E1F691F941FBF1FEA20152041206C209820C420F0211C2148217521A1
        21CE21FB22272255228222AF22DD230A23382366239423C223F0241F244D247C
        24AB24DA250925382568259725C725F726272657268726B726E827182749277A
        27AB27DC280D283F287128A228D429062938296B299D29D02A022A352A682A9B
        2ACF2B022B362B692B9D2BD12C052C392C6E2CA22CD72D0C2D412D762DAB2DE1
        2E162E4C2E822EB72EEE2F242F5A2F912FC72FFE3035306C30A430DB3112314A
        318231BA31F2322A3263329B32D4330D3346337F33B833F1342B3465349E34D8
        3513354D358735C235FD3637367236AE36E937243760379C37D738143850388C
        38C839053942397F39BC39F93A363A743AB23AEF3B2D3B6B3BAA3BE83C273C65
        3CA43CE33D223D613DA13DE03E203E603EA03EE03F213F613FA23FE240234064
        40A640E74129416A41AC41EE4230427242B542F7433A437D43C044034447448A
        44CE45124555459A45DE4622466746AB46F04735477B47C04805484B489148D7
        491D496349A949F04A374A7D4AC44B0C4B534B9A4BE24C2A4C724CBA4D024D4A
        4D934DDC4E254E6E4EB74F004F494F934FDD5027507150BB51065150519B51E6
        5231527C52C75313535F53AA53F65442548F54DB5528557555C2560F565C56A9
        56F75744579257E0582F587D58CB591A596959B85A075A565AA65AF55B455B95
        5BE55C355C865CD65D275D785DC95E1A5E6C5EBD5F0F5F615FB36005605760AA
        60FC614F61A261F56249629C62F06343639763EB6440649464E9653D659265E7
        663D669266E8673D679367E9683F689668EC6943699A69F16A486A9F6AF76B4F
        6BA76BFF6C576CAF6D086D606DB96E126E6B6EC46F1E6F786FD1702B708670E0
        713A719571F0724B72A67301735D73B87414747074CC7528758575E1763E769B
        76F8775677B37811786E78CC792A798979E77A467AA57B047B637BC27C217C81
        7CE17D417DA17E017E627EC27F237F847FE5804780A8810A816B81CD82308292
        82F4835783BA841D848084E3854785AB860E867286D7873B879F8804886988CE
        8933899989FE8A648ACA8B308B968BFC8C638CCA8D318D988DFF8E668ECE8F36
        8F9E9006906E90D6913F91A89211927A92E3934D93B69420948A94F4955F95C9
        9634969F970A977597E0984C98B89924999099FC9A689AD59B429BAF9C1C9C89
        9CF79D649DD29E409EAE9F1D9F8B9FFAA069A0D8A147A1B6A226A296A306A376
        A3E6A456A4C7A538A5A9A61AA68BA6FDA76EA7E0A852A8C4A937A9A9AA1CAA8F
        AB02AB75ABE9AC5CACD0AD44ADB8AE2DAEA1AF16AF8BB000B075B0EAB160B1D6
        B24BB2C2B338B3AEB425B49CB513B58AB601B679B6F0B768B7E0B859B8D1B94A
        B9C2BA3BBAB5BB2EBBA7BC21BC9BBD15BD8FBE0ABE84BEFFBF7ABFF5C070C0EC
        C167C1E3C25FC2DBC358C3D4C451C4CEC54BC5C8C646C6C3C741C7BFC83DC8BC
        C93AC9B9CA38CAB7CB36CBB6CC35CCB5CD35CDB5CE36CEB6CF37CFB8D039D0BA
        D13CD1BED23FD2C1D344D3C6D449D4CBD54ED5D1D655D6D8D75CD7E0D864D8E8
        D96CD9F1DA76DAFBDB80DC05DC8ADD10DD96DE1CDEA2DF29DFAFE036E0BDE144
        E1CCE253E2DBE363E3EBE473E4FCE584E60DE696E71FE7A9E832E8BCE946E9D0
        EA5BEAE5EB70EBFBEC86ED11ED9CEE28EEB4EF40EFCCF058F0E5F172F1FFF28C
        F319F3A7F434F4C2F550F5DEF66DF6FBF78AF819F8A8F938F9C7FA57FAE7FB77
        FC07FC98FD29FDBAFE4BFEDCFF6DFFFFFFEE002641646F62650064C000000001
        0300150403060A0D00000F5300001069000011B0000012ECFFDB008400020202
        0202020202020203020202030403020203040504040404040506050505050505
        060607070807070609090A0A09090C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010303
        03050405090606090D0B090B0D0F0E0E0E0E0F0F0C0C0C0C0C0F0F0C0C0C0C0C
        0C0F0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC2
        0011080025006003011100021101031101FFC400BD0001000300030000000000
        0000000000000005060701040801010101010101000000000000000000000006
        0405030710000104020201030500000000000000000003040515021430243213
        3306011112343511000004060102050500000000000000000001020391D13292
        0435113112304172B2742151B122231200020202020203000000000000000000
        00013132F0023081217111411213000201020603000301000000000000000001
        11F0F130213141C1D15171916181A1B1FFDA000C03010002110311000001D53E
        73F4FAEE1E80000000DE2CA1BCF915790F8F70000000DE2DA071E95B088C7B80
        000006EF6D0356F2F680C7B80000039369A693B5F638BD10000000590FFFDA00
        08010100010502959A92FAC85C4A9712A5C4A9712A5C4A9712A5C4A9712A5C4A
        9712A7C5A41CBD6D23FD0E2F86F8C87EFF0017C37C64A156C9E523B291D948EC
        A476523B291D948ECA476523B291D9F1B619314D6D5FCBA674CE99D33A674CE9
        9D33A674C6FE97DBFFDA000801020001050272E94F5369536953695369536953
        69536953695369536952396C94C5C7B9C515E2E3DCE28AF15E372CB3AB50AB50
        AB50AB50AB50AB50AB50AB50AB50AB5066DBD0C793FFDA00080103000105026A
        CD2F4B51135113511351135113511351135113511351124D0C53CDB7B5C531E4
        DBDAE298F26F2986185BA45BA45BA45BA45BA45BA45BA45BA45BA45BA43E75B1
        9727FFDA0008010202063F027E4B32CCB32CCB32CCB32CCB32CC7FA36F6F8F63
        6F6F8F61BD5C928944A25128944A251289479E5FFFDA0008010302063F02D7E5
        7D15455154551545515455154550BF3F66BE971EA6BE971EA2D764FC10F3B21E
        7643CEC879D90F3B21E7643CEC879D90F3B21E76788E5FFFDA0008010101063F
        02CB4B796E32DB4EA9B6D0D9F697093E3C86C322F31B0C8BCC6C322F31B0C8BC
        C6C322F31B0C8BCC6C322F31B0C8BCC6C322F31B0C8BCC3E9CA70DD532B22438
        7D7832F319DF21CF71F8797EA4FE0677C873DC7E1E5FA921F75A5A7B5D59AF85
        73D4FEBF615371390A9B89C854DC4E42A6E27215371390A9B89C854DC4E42A6E
        27215371390A9B89C839DEAEE5BA7CAB8E83F6EBE1FF0031FFDA000801010301
        3F2175D34A87D7F26E24A2F928BE4A2F928BE4A2F928BE4A2F928BE4A2F928BE
        4CF2AE0BCA86DE1AC40CF975CB13353FC33460F41A6C964DBE19B366CD9B366C
        D9B369242DDA12509293393F83DDFC5D9EEFE2ECF77F1767BBF8BB3DDFC5D9EE
        FE2ECF77F1767BBF8BB3DDFC5D8BF37F1767A03FFFDA0008010203013F2186A7
        4936B2CB4C8B81702E05C0B81702E05C0B817025A4C32BDE70FF00B115EF387F
        D88564869CE77FD32FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FAFA2FA
        FA1AC4D2DFCC5FFFDA0008010303013F219825B68DB79EB99624589162458916
        24589162458916245890EC48869B15EF0B0FF9195EF0B0FF0091939024651B7B
        68B6A16D42DA85B50B6A16D42DA85B50B6A16D41296908BF78BFFFDA000C0301
        0002110311000010D24924921400000002C00000006324924907800000024FFF
        DA0008010103013F107BCDEB4834CB513739BF10B0FB76EDDBB76EDDBB7676C5
        8654DD6621BCF389C90CDB5EADAF0E629D939B15092DF2AFAD6EF255A9387961
        3B76EDDBB76EDDBB4D706D8C4615A9D2226F56DB697AC85CC4A59C2764184184
        1841841841841841841824D44C0CBCA76649727FFFDA0008010203013F108FED
        899A433D9AB712E7FC2EFECBBFB2EFECBBFB2EFECBBFB2EFECBBFB2EFECBBFB1
        48C7524DEB0D68DEF1E75291E78750F0CA479E1D43C325E9106469B4B5948A74
        D30F1E3C78F1E3C78F1E35156E5C68850929CDFB85EB17FFDA0008010303013F
        104517C84D2AB76894C24BFD2A6E0A9B82A6E0A9B82A6E0A9B82A6E0A9B82A6E
        0A9B813AD58DA6E4E252DA6745965894A9DE56252A7794426C26AC9A484F309C
        253AE1922448912244891224D9B04A6252E5B71296D94BD35CF17FFFD9}
      OnClick = imgYazdirClick
    end
    object LblYazdir: TLabel
      Left = 614
      Top = 66
      Width = 39
      Height = 16
      Cursor = crHandPoint
      Caption = 'Yazd'#305'r'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      OnClick = imgYazdirClick
    end
    object Label86: TLabel
      Left = 597
      Top = 101
      Width = 71
      Height = 16
      Cursor = crHandPoint
      Caption = 'Email Yolla'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      OnClick = Image1Click
    end
    object GrpMusteriSirket: TGroupBox
      Left = 2
      Top = 2
      Width = 1052
      Height = 52
      Align = alTop
      Caption = 'M'#252#351'teri / '#350'irket'
      TabOrder = 0
      object Label2: TLabel
        Left = 38
        Top = 24
        Width = 24
        Height = 13
        Caption = 'Ad'#305' :'
      end
      object Label3: TLabel
        Left = 236
        Top = 24
        Width = 44
        Height = 13
        Caption = 'Soyad'#305' :'
      end
      object Label15: TLabel
        Left = 469
        Top = 24
        Width = 40
        Height = 13
        Caption = 'Tel No :'
      end
      object Label16: TLabel
        Left = 691
        Top = 24
        Width = 39
        Height = 13
        Caption = 'Adres :'
      end
      object BitBtn1: TBitBtn
        Left = 3
        Top = 21
        Width = 22
        Height = 21
        Caption = '+'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object CmbAdi: TComboBox
        Left = 70
        Top = 21
        Width = 160
        Height = 21
        AutoCompleteDelay = 50000
        CharCase = ecUpperCase
        DoubleBuffered = False
        DropDownCount = 20
        ItemHeight = 13
        ParentDoubleBuffered = False
        TabOrder = 1
        OnChange = CmbAdiChange
      end
      object CmbSoyadi: TComboBox
        Left = 286
        Top = 21
        Width = 160
        Height = 21
        AutoCompleteDelay = 50000
        CharCase = ecUpperCase
        DropDownCount = 20
        ItemHeight = 13
        TabOrder = 2
        OnChange = CmbSoyadiChange
      end
      object CmbCepTel1: TComboBox
        Left = 515
        Top = 21
        Width = 134
        Height = 21
        Style = csSimple
        Enabled = False
        ItemHeight = 13
        TabOrder = 3
      end
      object CmbAdres: TComboBox
        Left = 736
        Top = 21
        Width = 174
        Height = 21
        Style = csSimple
        Enabled = False
        ItemHeight = 13
        TabOrder = 4
      end
      object ChkYeniKayit: TCheckBox
        Left = 152
        Top = -2
        Width = 76
        Height = 17
        Caption = 'Yeni Kayit'
        TabOrder = 5
        Visible = False
      end
      object CmbEmail: TComboBox
        Left = 736
        Top = -3
        Width = 160
        Height = 21
        AutoCompleteDelay = 50000
        Style = csDropDownList
        DropDownCount = 20
        ItemHeight = 13
        TabOrder = 6
        Visible = False
      end
    end
    object MemKartAciklama: TMemo
      Left = 70
      Top = 60
      Width = 363
      Height = 65
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object ChkBiletSatis: TCheckBox
      Left = 462
      Top = 60
      Width = 97
      Height = 17
      Caption = 'B'#304'LET SATI'#350
      TabOrder = 2
    end
    object ChkOtelSatis: TCheckBox
      Left = 462
      Top = 79
      Width = 97
      Height = 14
      Caption = 'OTEL SATI'#350
      TabOrder = 3
    end
    object ChkTransfer: TCheckBox
      Left = 462
      Top = 95
      Width = 97
      Height = 16
      Caption = 'TRANSFER'
      TabOrder = 4
    end
    object ChkTur: TCheckBox
      Left = 462
      Top = 113
      Width = 49
      Height = 14
      Caption = 'TUR'
      TabOrder = 5
    end
    object Button2: TButton
      Left = 155
      Top = 73
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 6
      Visible = False
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 236
      Top = 73
      Width = 75
      Height = 25
      Caption = 'Button3'
      TabOrder = 7
      Visible = False
      OnClick = Button3Click
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 177
    Width = 1056
    Height = 8
    Align = alTop
    Color = 14090240
    ParentBackground = False
    TabOrder = 3
  end
  object Qry1: TADOQuery
    Connection = Dm.Cnn1
    Parameters = <>
    Left = 360
    Top = 65535
  end
  object gtPDFEngine1: TgtPDFEngine
    FileExtension = 'pdf'
    FileDescription = 'Adobe PDF Files'
    InputXRes = 96
    InputYRes = 96
    MeasurementUnit = muPixels
    ReferencePoint = rpBand
    FileName = 'C:\Users\Comp\Desktop\denemex'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageSettings.SourceDPI = 96
    ImageSettings.OutputImageFormat = ifJPEG
    Page.PaperSize = Custom
    Page.Width = 794.000000000000000000
    Page.Height = 1123.000000000000000000
    Page.BinNumber = 0
    FontEncoding = feWinAnsiEncoding
    Left = 448
    Top = 65535
  end
  object gtQRExportInterface1: TgtQRExportInterface
    Engine = gtPDFEngine1
    DoBeginDoc = True
    DoEndDoc = True
    Left = 552
    Top = 65535
  end
  object QRCompositeReport1: TQRCompositeReport
    OnAddReports = QRCompositeReport1AddReports
    Options = [FirstPageHeader, LastPageFooter, Compression]
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrinterSettings.Orientation = poPortrait
    PrinterSettings.PaperSize = Letter
    ReportTitle = 'Composite Report'
    PageCount = 0
    Left = 792
    Top = 65531
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 504
    Top = 208
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 464
    Top = 264
  end
  object IdSMTP1: TIdSMTP
    SASLMechanisms = <>
    Left = 464
    Top = 336
  end
end
