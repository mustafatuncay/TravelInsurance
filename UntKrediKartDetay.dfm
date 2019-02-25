object FrmKrediKartDetay: TFrmKrediKartDetay
  Left = 0
  Top = 0
  ClientHeight = 400
  ClientWidth = 1054
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1054
    Height = 41
    Align = alTop
    TabOrder = 0
    object lblbaslik: TLabel
      Left = 0
      Top = 10
      Width = 321
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'HESAP EXTRES'#304
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object lblbilgi: TLabel
      Left = 360
      Top = 10
      Width = 321
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = '.........'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 1054
    Height = 40
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Label10: TLabel
      Left = 752
      Top = -1
      Width = 73
      Height = 13
      Caption = 'Toplam Fiyat'
    end
    object Label1: TLabel
      Left = 845
      Top = 0
      Width = 88
      Height = 13
      Caption = 'Toplam Odenen'
    end
    object Label2: TLabel
      Left = 939
      Top = -1
      Width = 76
      Height = 13
      Caption = 'Toplam Kalan'
    end
    object BtnListele: TButton
      Left = 15
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Listele'
      TabOrder = 0
      OnClick = BtnListeleClick
    end
    object CurrToplamFiyat: TMoneyEdit
      Left = 750
      Top = 15
      Width = 91
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
      Color = 8454143
      TabOrder = 1
      Version = '1.1.1.0'
    end
    object Button15: TButton
      Left = 166
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Yazd'#305'r'
      TabOrder = 2
      OnClick = Button15Click
    end
    object Button1: TButton
      Left = 507
      Top = 9
      Width = 90
      Height = 25
      Caption = 'Excele Aktar'
      TabOrder = 3
      OnClick = Button1Click
    end
    object CurrToplamOdenen: TMoneyEdit
      Left = 847
      Top = 15
      Width = 84
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
      Color = 8454143
      TabOrder = 4
      Version = '1.1.1.0'
    end
    object CurrToplamKalan: TMoneyEdit
      Left = 938
      Top = 15
      Width = 89
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
      Color = 8454143
      TabOrder = 5
      Version = '1.1.1.0'
    end
  end
  object AdvListe: TAdvStringGrid
    Left = 0
    Top = 81
    Width = 1054
    Height = 319
    Cursor = crDefault
    Align = alClient
    ColCount = 10
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 2
    OnDblClick = AdvListeDblClick
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      ''
      'KayitTarihi'
      'MusAdi'
      'MusSoyadi'
      'HavaDenizYolu'
      'Nereden'
      'Nereye'
      'Fiyat'
      #214'denen'
      'Kalan')
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
    FixedColWidth = 40
    FixedRowHeight = 22
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -13
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%.2f'
    PrintSettings.Time = ppTopRight
    PrintSettings.Date = ppTopRight
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.Title = ppTopCenter
    PrintSettings.Font.Charset = DEFAULT_CHARSET
    PrintSettings.Font.Color = clWindowText
    PrintSettings.Font.Height = -19
    PrintSettings.Font.Name = 'Tahoma'
    PrintSettings.Font.Style = [fsBold]
    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
    PrintSettings.FixedFont.Color = clWindowText
    PrintSettings.FixedFont.Height = -16
    PrintSettings.FixedFont.Name = 'Tahoma'
    PrintSettings.FixedFont.Style = []
    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
    PrintSettings.HeaderFont.Color = clWindowText
    PrintSettings.HeaderFont.Height = -16
    PrintSettings.HeaderFont.Name = 'Tahoma'
    PrintSettings.HeaderFont.Style = [fsBold]
    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
    PrintSettings.FooterFont.Color = clWindowText
    PrintSettings.FooterFont.Height = -16
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
      40
      98
      144
      147
      129
      96
      98
      89
      91
      96)
  end
  object Qry1: TADOQuery
    Connection = Dm.Cnn1
    Parameters = <>
    Left = 576
    Top = 8
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
    Left = 672
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
    Left = 384
  end
  object SaveDialog1: TSaveDialog
    Left = 312
  end
end
