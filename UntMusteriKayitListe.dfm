object FrmMusteriKayitListe: TFrmMusteriKayitListe
  Left = 0
  Top = 0
  Caption = 'M'#252#351'teri Kay'#305't Listesi'
  ClientHeight = 617
  ClientWidth = 1222
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1222
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 7
      Width = 417
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'M'#220#350'TER'#304' KAYIT L'#304'STES'#304
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object Panel15: TPanel
    Left = 0
    Top = 41
    Width = 1222
    Height = 83
    Align = alTop
    TabOrder = 1
    object Label3: TLabel
      Left = 224
      Top = 36
      Width = 24
      Height = 13
      Caption = 'Ad'#305' :'
    end
    object Label4: TLabel
      Left = 387
      Top = 36
      Width = 44
      Height = 13
      Caption = 'Soyad'#305' :'
    end
    object Button7: TButton
      Left = 8
      Top = 2
      Width = 90
      Height = 25
      Caption = 'Listele'
      TabOrder = 0
      OnClick = Button7Click
    end
    object Button10: TButton
      Left = 8
      Top = 52
      Width = 90
      Height = 25
      Caption = 'Excele Aktar'
      TabOrder = 1
      OnClick = Button10Click
    end
    object Button16: TButton
      Left = 8
      Top = 28
      Width = 90
      Height = 25
      Caption = 'Yazd'#305'r'
      TabOrder = 2
      OnClick = Button16Click
    end
    object TxtAdi: TEdit
      Left = 254
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object TxtSoyadi: TEdit
      Left = 437
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object BitBtn4: TBitBtn
      Left = 699
      Top = 47
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
      TabOrder = 5
      OnClick = BitBtn4Click
    end
  end
  object AdvMusteri: TAdvStringGrid
    Left = 0
    Top = 124
    Width = 1222
    Height = 493
    Cursor = crDefault
    Align = alClient
    ColCount = 12
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 2
    OnDblClick = AdvMusteriDblClick
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      ''
      'Ad'#305
      'Soyad'#305
      'Do'#287'um Tarihi'
      'Yolcu Tipi'
      'Uyru'#287'u'
      'Cep Tel 1'
      'Cep Tel 2'
      #304#351' Tel'
      'Ev Tel'
      'Adres'
      'E-Mail')
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
    FixedColWidth = 35
    FixedRowHeight = 22
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%.2f'
    PrintSettings.Time = ppTopRight
    PrintSettings.Date = ppTopRight
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.PageNr = ppBottomRight
    PrintSettings.Title = ppTopCenter
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
    PrintSettings.HeaderFont.Height = -13
    PrintSettings.HeaderFont.Name = 'Tahoma'
    PrintSettings.HeaderFont.Style = [fsBold]
    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
    PrintSettings.FooterFont.Color = clWindowText
    PrintSettings.FooterFont.Height = -13
    PrintSettings.FooterFont.Name = 'Tahoma'
    PrintSettings.FooterFont.Style = [fsBold]
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
      35
      85
      94
      87
      92
      64
      95
      91
      88
      93
      170
      109)
  end
  object Qry1: TADOQuery
    Connection = Dm.Cnn1
    Parameters = <>
    Left = 504
    Top = 16
  end
  object AdvPreview: TAdvPreviewDialog
    CloseAfterPrint = False
    DialogCaption = 'Preview'
    DialogPrevBtn = 'Previous'
    DialogNextBtn = 'Next'
    DialogPrintBtn = 'Print'
    DialogCloseBtn = 'Close'
    PreviewFast = False
    PreviewWidth = 350
    PreviewHeight = 300
    PreviewLeft = 100
    PreviewTop = 100
    PreviewCenter = False
    Left = 680
  end
  object AdvExcel: TAdvGridExcelIO
    Options.ImportCellProperties = True
    Options.ImportLockedCellsAsReadonly = True
    Options.ExportOverwrite = omWarn
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportHiddenColumns = True
    Options.ExportReadonlyCellsAsLocked = True
    Options.ExportWordWrapped = True
    Options.ExportRawRTF = False
    Options.ExportHardBorders = True
    Options.ExportCellMargins = True
    UseUnicode = False
    GridStartRow = 0
    GridStartCol = 0
    Version = '3.2.1'
    Left = 632
  end
  object SaveDialog1: TSaveDialog
    Left = 568
  end
end
