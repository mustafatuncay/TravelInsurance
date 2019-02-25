object FrmSigortaSuresi: TFrmSigortaSuresi
  Left = 0
  Top = 0
  Caption = 'Sigorta S'#252'resi'
  ClientHeight = 597
  ClientWidth = 1185
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1185
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 10
      Width = 217
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'S'#304'GORTA UYARI'
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
    Top = 41
    Width = 1185
    Height = 58
    Align = alTop
    TabOrder = 1
    object BtnListele3: TButton
      Left = 8
      Top = 9
      Width = 90
      Height = 25
      Caption = 'Listele'
      TabOrder = 0
      OnClick = BtnListele3Click
    end
    object Button12: TButton
      Left = 567
      Top = 4
      Width = 90
      Height = 25
      Caption = 'Yazd'#305'r'
      TabOrder = 1
      OnClick = Button12Click
    end
    object Button11: TButton
      Left = 567
      Top = 30
      Width = 90
      Height = 25
      Caption = 'Excele Aktar'
      TabOrder = 2
      OnClick = Button11Click
    end
    object ChkBasTarih: TCheckBox
      Left = 177
      Top = 8
      Width = 109
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Ba'#351'lang'#305#231' Tarihi :'
      TabOrder = 3
    end
    object DtBas1: TDateTimePicker
      Left = 292
      Top = 6
      Width = 105
      Height = 21
      Date = 41169.508907129630000000
      Time = 41169.508907129630000000
      TabOrder = 4
    end
    object DtBas2: TDateTimePicker
      Left = 402
      Top = 6
      Width = 105
      Height = 21
      Date = 41169.508907129630000000
      Time = 41169.508907129630000000
      TabOrder = 5
    end
    object DtBit2: TDateTimePicker
      Left = 402
      Top = 33
      Width = 105
      Height = 21
      Date = 41169.508907129630000000
      Time = 41169.508907129630000000
      TabOrder = 6
    end
    object DtBit1: TDateTimePicker
      Left = 292
      Top = 33
      Width = 105
      Height = 21
      Date = 41169.508907129630000000
      Time = 41169.508907129630000000
      TabOrder = 7
    end
    object ChkBitTarih: TCheckBox
      Left = 206
      Top = 35
      Width = 80
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Biti'#351' Tarihi :'
      TabOrder = 8
    end
  end
  object AdvListe: TAdvStringGrid
    Left = 0
    Top = 99
    Width = 1185
    Height = 498
    Cursor = crDefault
    Align = alClient
    ColCount = 17
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
    ScrollBars = ssBoth
    TabOrder = 2
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      ''
      'Ad'#305
      'Soyad'#305
      'Poli'#231'e No'
      'Kay'#305't Tarihi'
      'Ba'#351'. Tarih'
      'Ba'#351'. Saat'
      'Bit. Tarih'
      'Bit. Saat'
      'Plaka No'
      'Markas'#305
      'Model No'
      #304'mal Y'#305'l'#305
      'Taksit'
      'ToplamMiktar'
      ''
      'Bakiye')
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
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%.2f'
    MouseActions.DisjunctRowSelect = True
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
    SearchFooter.HintFindNext = 'Find next occurrence'
    SearchFooter.HintFindPrev = 'Find previous occurrence'
    SearchFooter.HintHighlight = 'Highlight occurrences'
    SearchFooter.MatchCaseCaption = 'Match case'
    Version = '5.6.0.0'
    ColWidths = (
      40
      131
      112
      77
      66
      73
      81
      92
      93
      81
      81
      56
      60
      46
      95
      5
      87)
  end
  object SaveDialog1: TSaveDialog
    Left = 760
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
    Left = 840
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
    Left = 800
  end
  object Qry1: TADOQuery
    Connection = Dm.Cnn1
    Parameters = <>
    Left = 728
  end
end
