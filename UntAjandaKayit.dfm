﻿object FrmAjandaKayit: TFrmAjandaKayit
  Left = 0
  Top = 0
  Caption = 'Ajanda Kay'#305't'
  ClientHeight = 595
  ClientWidth = 599
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 30
    Top = 56
    Width = 34
    Height = 13
    Caption = 'Konu :'
  end
  object Label3: TLabel
    Left = 34
    Top = 81
    Width = 30
    Height = 13
    Caption = #304'lgili :'
  end
  object Label6: TLabel
    Left = 15
    Top = 107
    Width = 49
    Height = 13
    Caption = #304'leti'#351'im :'
  end
  object Label12: TLabel
    Left = 9
    Top = 131
    Width = 55
    Height = 13
    Caption = #304'lgilenen :'
  end
  object Label4: TLabel
    Left = 27
    Top = 156
    Width = 37
    Height = 13
    Caption = 'Tutar :'
  end
  object Label7: TLabel
    Left = 39
    Top = 180
    Width = 25
    Height = 13
    Caption = 'Not :'
  end
  object Label5: TLabel
    Left = 177
    Top = 337
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
  object Label8: TLabel
    Left = 182
    Top = 156
    Width = 25
    Height = 13
    Caption = 'Pnr :'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 599
    Height = 41
    Align = alTop
    TabOrder = 8
    object Label1: TLabel
      Left = 16
      Top = 7
      Width = 177
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'AJANDA KAYIT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 548
    Width = 599
    Height = 47
    Align = alBottom
    TabOrder = 9
    object BtnKaydet: TButton
      Left = 220
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Kaydet'
      TabOrder = 0
      OnClick = BtnKaydetClick
    end
    object BtnGuncelle: TButton
      Left = 301
      Top = 11
      Width = 75
      Height = 25
      Caption = 'G'#252'ncelle'
      TabOrder = 1
      OnClick = BtnGuncelleClick
    end
    object BtnTemizle: TButton
      Left = 382
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Temizle'
      TabOrder = 2
      OnClick = BtnTemizleClick
    end
    object BtnSil: TButton
      Left = 463
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Sil'
      TabOrder = 3
      OnClick = BtnSilClick
    end
  end
  object TxtKonu: TEdit
    Left = 70
    Top = 53
    Width = 411
    Height = 21
    TabOrder = 0
  end
  object Txtilgili: TEdit
    Left = 70
    Top = 78
    Width = 411
    Height = 21
    TabOrder = 1
  end
  object Txtiletişim: TEdit
    Left = 70
    Top = 104
    Width = 411
    Height = 21
    TabOrder = 2
  end
  object Txtilgilenen: TEdit
    Left = 70
    Top = 128
    Width = 411
    Height = 21
    TabOrder = 3
  end
  object MemNot: TMemo
    Left = 70
    Top = 177
    Width = 521
    Height = 138
    ScrollBars = ssVertical
    TabOrder = 6
  end
  object CurrTutar: TAdvMoneyEdit
    Left = 70
    Top = 153
    Width = 103
    Height = 21
    EditType = etMoney
    Precision = 2
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Separator = ';'
    Align = alCustom
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Color = clWhite
    Enabled = True
    TabOrder = 4
    Text = '0.00'
    Visible = True
    Version = '1.1.1.1'
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
    Left = 3
    Top = 326
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
    TabOrder = 10
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 39
    Top = 326
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
    TabOrder = 11
    OnClick = BitBtn5Click
  end
  object AdvYolcuListesi: TAdvStringGrid
    Left = 4
    Top = 362
    Width = 591
    Height = 190
    Cursor = crDefault
    FixedCols = 0
    RowCount = 2
    ScrollBars = ssBoth
    TabOrder = 7
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
      'Do'#287'um Tarihi'
      'Passport No')
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
    FixedColWidth = 51
    FixedRowHeight = 22
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%.2f'
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
    Version = '5.6.0.0'
    ColWidths = (
      51
      153
      168
      91
      101)
    RowHeights = (
      22
      22)
  end
  object TxtPnr: TEdit
    Left = 210
    Top = 153
    Width = 169
    Height = 21
    TabOrder = 5
  end
  object Qry1: TADOQuery
    Connection = Dm.Cnn1
    Parameters = <>
    Left = 416
    Top = 8
  end
end
