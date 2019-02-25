object FrmSigortalar: TFrmSigortalar
  Left = 0
  Top = 0
  ClientHeight = 612
  ClientWidth = 1376
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 153
    Width = 1376
    Height = 459
    Cursor = crHandPoint
    ActivePage = KaskoSikortasi
    Align = alClient
    TabOrder = 0
    OnMouseDown = PageControl1MouseDown
    object TrafikSigortasi: TTabSheet
      Caption = 'TRAF'#304'K S'#304'GORTASI'
      object AdvTrafik: TAdvStringGrid
        Left = 0
        Top = 23
        Width = 1368
        Height = 408
        Cursor = crDefault
        Align = alClient
        ColCount = 16
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
        ScrollBars = ssBoth
        TabOrder = 0
        OnDblClick = AdvTrafikDblClick
        HoverRowCells = [hcNormal, hcSelected]
        OnGetAlignment = AdvTrafikGetAlignment
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          'Ad'#305
          'Soyad'#305
          'CepTel2'
          'Poli'#231'e No'
          'Kay'#305't Tarihi'
          'Ba'#351'. Tarih'
          'Bit. Tarih'
          'Plaka No'
          'Markas'#305
          'Model No'
          #304'mal Y'#305'l'#305
          'Taksit'
          'ToplamMiktar'
          'Bakiye'
          'Notlar')
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
        FixedColWidth = 40
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
        MouseActions.DisjunctRowSelect = True
        PrintSettings.Time = ppTopRight
        PrintSettings.Date = ppTopRight
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.PageNr = ppBottomRight
        PrintSettings.Title = ppBottomCenter
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
        PrintSettings.Orientation = poLandscape
        PrintSettings.FitToPage = fpShrink
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
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.8.7.0'
        ColWidths = (
          40
          127
          115
          93
          60
          79
          86
          86
          93
          81
          83
          69
          59
          87
          80
          136)
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1368
        Height = 23
        Align = alTop
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object CurrTrafik: TAdvMoneyEdit
          Left = 998
          Top = 0
          Width = 86
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
          Color = 8454143
          TabOrder = 0
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
      end
    end
    object KaskoSikortasi: TTabSheet
      Caption = 'KASKO S'#304'GORTASI'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1368
        Height = 23
        Align = alTop
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object CurrKasko: TAdvMoneyEdit
          Left = 1094
          Top = 0
          Width = 86
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
          Color = 8454143
          TabOrder = 0
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
      end
      object AdvKasko: TAdvStringGrid
        Left = 0
        Top = 23
        Width = 1368
        Height = 408
        Cursor = crDefault
        Align = alClient
        ColCount = 16
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
        ScrollBars = ssBoth
        TabOrder = 1
        OnDblClick = AdvKaskoDblClick
        HoverRowCells = [hcNormal, hcSelected]
        OnGetAlignment = AdvKaskoGetAlignment
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          'Ad'#305
          'Soyad'#305
          'CepTel2'
          'Poli'#231'e No'
          'Kay'#305't Tarihi'
          'Ba'#351'. Tarih'
          'Bit. Tarih'
          'Plaka No'
          'Markas'#305
          'Model No'
          #304'mal Y'#305'l'#305
          'Taksit'
          'ToplamMiktar'
          'Bakiye'
          'Notlar')
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
        FixedColWidth = 40
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
        MouseActions.DisjunctRowSelect = True
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
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.Orientation = poLandscape
        PrintSettings.FitToPage = fpShrink
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
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.8.7.0'
        ExplicitTop = 27
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
          65
          60
          94
          90
          125)
      end
    end
    object SeyahatSigortasi: TTabSheet
      Caption = 'SEYAHAT S'#304'GORTASI'
      ImageIndex = 2
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1368
        Height = 23
        Align = alTop
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object CurrSeyahat: TAdvMoneyEdit
          Left = 963
          Top = 0
          Width = 86
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
          Color = 8454143
          TabOrder = 0
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
      end
      object AdvSeyahat: TAdvStringGrid
        Left = 0
        Top = 23
        Width = 1368
        Height = 408
        Cursor = crDefault
        Align = alClient
        ColCount = 14
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
        ScrollBars = ssBoth
        TabOrder = 1
        OnDblClick = AdvSeyahatDblClick
        HoverRowCells = [hcNormal, hcSelected]
        OnGetAlignment = AdvSeyahatGetAlignment
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          'Ad'#305
          'Soyad'#305
          'CepTel2'
          'Poli'#231'e No'
          'Kay'#305't Tarihi'
          'Ba'#351'. Tarih'
          'Bit. Tarih'
          'S'#305'fat'#305
          'Tanzim Tarihi'
          'Taksit'
          'Toplam Miktar'
          'Bakiye'
          'Notlar')
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
        FixedColWidth = 40
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
        MouseActions.DisjunctRowSelect = True
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
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.Orientation = poLandscape
        PrintSettings.FitToPage = fpShrink
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
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.8.7.0'
        ColWidths = (
          40
          119
          123
          71
          65
          87
          78
          79
          84
          92
          92
          84
          106
          125)
      end
    end
    object EvSigortasi: TTabSheet
      Caption = 'EV S'#304'GORTASI'
      ImageIndex = 3
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1368
        Height = 23
        Align = alTop
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object CurrEv: TAdvMoneyEdit
          Left = 965
          Top = 1
          Width = 86
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
          Color = 8454143
          TabOrder = 0
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
      end
      object AdvEv: TAdvStringGrid
        Left = 0
        Top = 23
        Width = 1368
        Height = 408
        Cursor = crDefault
        Align = alClient
        ColCount = 14
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
        ScrollBars = ssBoth
        TabOrder = 1
        OnDblClick = AdvEvDblClick
        HoverRowCells = [hcNormal, hcSelected]
        OnGetAlignment = AdvEvGetAlignment
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          'Ad'#305
          'Soyad'#305
          'CepTel2'
          'Poli'#231'e No'
          'Kay'#305't Tarihi'
          'Ba'#351'. Tarih'
          'Bit. Tarih'
          'S'#305'fat'#305
          'Tanzim Tarihi'
          'Taksit'
          'Toplam Miktar'
          'Bakiye'
          'Notlar')
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
        FixedColWidth = 40
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
        MouseActions.DisjunctRowSelect = True
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
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.Orientation = poLandscape
        PrintSettings.FitToPage = fpShrink
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
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.8.7.0'
        ColWidths = (
          40
          140
          109
          71
          65
          91
          75
          79
          84
          93
          86
          91
          97
          116)
      end
    end
    object isYeriSigortasi: TTabSheet
      Caption = #304#350'YER'#304' S'#304'GORTASI'
      ImageIndex = 4
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 1368
        Height = 23
        Align = alTop
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object CurrisYeri: TAdvMoneyEdit
          Left = 998
          Top = 0
          Width = 86
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
          Color = 8454143
          TabOrder = 0
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
      end
      object AdvisYeri: TAdvStringGrid
        Left = 0
        Top = 23
        Width = 1368
        Height = 408
        Cursor = crDefault
        Align = alClient
        ColCount = 14
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
        ScrollBars = ssBoth
        TabOrder = 1
        OnDblClick = AdvisYeriDblClick
        HoverRowCells = [hcNormal, hcSelected]
        OnGetAlignment = AdvisYeriGetAlignment
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          'Ad'#305
          'Soyad'#305
          'CepTel2'
          'Poli'#231'e No'
          'Kay'#305't Tarihi'
          'Ba'#351'. Tarih'
          'Bit. Tarih'
          'S'#305'fat'#305
          'Tanzim Tarihi'
          'Taksit'
          'Toplam Miktar'
          'Bakiye'
          'Notlar')
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
        FixedColWidth = 40
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
        MouseActions.DisjunctRowSelect = True
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
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.Orientation = poLandscape
        PrintSettings.FitToPage = fpShrink
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
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.8.7.0'
        ColWidths = (
          40
          128
          134
          86
          65
          90
          78
          79
          84
          104
          90
          116
          85
          111)
      end
    end
    object AnadoluHayat: TTabSheet
      Caption = 'ANADOLU HAYAT'
      ImageIndex = 5
      object AdvAnadoluHayat: TAdvStringGrid
        Left = 0
        Top = 23
        Width = 1368
        Height = 408
        Cursor = crDefault
        Align = alClient
        ColCount = 14
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
        ScrollBars = ssBoth
        TabOrder = 0
        OnDblClick = AdvAnadoluHayatDblClick
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          'Ad'#305
          'Soyad'#305
          'CepTel2'
          'Poli'#231'e No'
          'Kay'#305't Tarihi'
          'Ba'#351'. Tarih'
          'Bit. Tarih'
          'S'#305'fat'#305
          'Tanzim Tarihi'
          'Taksit'
          'Toplam Miktar'
          'Bakiye'
          'Notlar')
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
        FixedColWidth = 40
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
        MouseActions.DisjunctRowSelect = True
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
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.Orientation = poLandscape
        PrintSettings.FitToPage = fpShrink
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
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.8.7.0'
        ColWidths = (
          40
          120
          110
          99
          65
          86
          78
          79
          84
          93
          95
          101
          115
          102)
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1368
        Height = 23
        Align = alTop
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object CurrAnadoluHayat: TAdvMoneyEdit
          Left = 998
          Top = 0
          Width = 86
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
          Color = 8454143
          TabOrder = 0
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
      end
    end
    object SaglikSigortasi: TTabSheet
      Caption = 'SA'#286'LIK S'#304'GORTASI'
      ImageIndex = 6
      object AdvSaglik: TAdvStringGrid
        Left = 0
        Top = 23
        Width = 1368
        Height = 408
        Cursor = crDefault
        Align = alClient
        ColCount = 14
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
        ScrollBars = ssBoth
        TabOrder = 0
        OnDblClick = AdvSaglikDblClick
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          'Ad'#305
          'Soyad'#305
          'CepTel2'
          'Poli'#231'e No'
          'Kay'#305't Tarihi'
          'Ba'#351'. Tarih'
          'Bit. Tarih'
          'S'#305'fat'#305
          'Tanzim Tarihi'
          'Taksit'
          'Toplam Miktar'
          'Bakiye'
          'Notlar')
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
        FixedColWidth = 40
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
        MouseActions.DisjunctRowSelect = True
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
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.Orientation = poLandscape
        PrintSettings.FitToPage = fpShrink
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
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.8.7.0'
        ColWidths = (
          40
          148
          105
          92
          65
          80
          78
          79
          84
          102
          56
          91
          87
          126)
      end
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 1368
        Height = 23
        Align = alTop
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object CurrSaglik: TAdvMoneyEdit
          Left = 998
          Top = 0
          Width = 86
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
          Color = 8454143
          TabOrder = 0
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
      end
    end
    object FerdiKazaSigortasi: TTabSheet
      Caption = 'FERD'#304' KAZA S'#304'GORTASI'
      ImageIndex = 7
      object AdvFerdiKazaSigortasi: TAdvStringGrid
        Left = 0
        Top = 23
        Width = 1368
        Height = 408
        Cursor = crDefault
        Align = alClient
        ColCount = 14
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
        ScrollBars = ssBoth
        TabOrder = 0
        OnDblClick = AdvFerdiKazaSigortasiDblClick
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          'Ad'#305
          'Soyad'#305
          'CepTel2'
          'Poli'#231'e No'
          'Kay'#305't Tarihi'
          'Ba'#351'. Tarih'
          'Bit. Tarih'
          'Ad'#305' 2'
          'Soyad'#305' 2'
          'Taksit'
          'Toplam Miktar'
          'Bakiye'
          'Notlar')
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
        FixedColWidth = 40
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
        MouseActions.DisjunctRowSelect = True
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
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.Orientation = poLandscape
        PrintSettings.FitToPage = fpShrink
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
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.8.7.0'
        ColWidths = (
          40
          124
          101
          103
          98
          86
          78
          79
          84
          69
          59
          100
          94
          127)
      end
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 1368
        Height = 23
        Align = alTop
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object CurrFerdiKaza: TAdvMoneyEdit
          Left = 998
          Top = 0
          Width = 86
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
          Color = 8454143
          TabOrder = 0
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
      end
    end
    object TekneSigortasi: TTabSheet
      Caption = 'TEKNE S'#304'GORTASI'
      ImageIndex = 8
      object AdvTekneSigortasi: TAdvStringGrid
        Left = 0
        Top = 23
        Width = 1368
        Height = 408
        Cursor = crDefault
        Align = alClient
        ColCount = 14
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
        ScrollBars = ssBoth
        TabOrder = 0
        OnDblClick = AdvTekneSigortasiDblClick
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          'Ad'#305
          'Soyad'#305
          'CepTel2'
          'Poli'#231'e No'
          'Kay'#305't Tarihi'
          'Ba'#351'. Tarih'
          'Bit. Tarih'
          'Ad'#305' 2'
          'Soyad'#305' 2'
          'Taksit'
          'Toplam Miktar'
          'Bakiye'
          'Notlar')
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
        FixedColWidth = 40
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
        MouseActions.DisjunctRowSelect = True
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
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.Orientation = poLandscape
        PrintSettings.FitToPage = fpShrink
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
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.8.7.0'
        ExplicitWidth = 1283
        ColWidths = (
          40
          125
          96
          90
          65
          87
          78
          79
          85
          89
          64
          91
          93
          156)
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1368
        Height = 23
        Align = alTop
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object CurrTekne: TAdvMoneyEdit
          Left = 998
          Top = 0
          Width = 86
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
          Color = 8454143
          TabOrder = 0
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
      end
    end
    object DigerSigortalar: TTabSheet
      Caption = 'D'#304#286'ER S'#304'GORTALAR'
      ImageIndex = 11
      object Panel13: TPanel
        Left = 0
        Top = 0
        Width = 1368
        Height = 23
        Align = alTop
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object CurrDiger: TAdvMoneyEdit
          Left = 998
          Top = 0
          Width = 86
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
          Color = 8454143
          TabOrder = 0
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
      end
      object AdvDiger: TAdvStringGrid
        Left = 0
        Top = 23
        Width = 1368
        Height = 408
        Cursor = crDefault
        Align = alClient
        ColCount = 14
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
        ScrollBars = ssBoth
        TabOrder = 1
        OnDblClick = AdvDigerDblClick
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          'Ad'#305
          'Soyad'#305
          'CepTel2'
          'Poli'#231'e No'
          'Kay'#305't Tarihi'
          'Ba'#351'. Tarih'
          'Bit. Tarih'
          'Ad'#305' 2'
          'Soyad'#305' 2'
          'Taksit'
          'Toplam Miktar'
          'Bakiye'
          'Notlar')
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
        FixedColWidth = 40
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
        MouseActions.DisjunctRowSelect = True
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
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.Orientation = poLandscape
        PrintSettings.FitToPage = fpShrink
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
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.8.7.0'
        ExplicitTop = 27
        ExplicitWidth = 1283
        ColWidths = (
          40
          125
          96
          90
          65
          87
          78
          79
          85
          89
          64
          91
          93
          156)
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1376
    Height = 153
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 663
      Top = 65
      Width = 40
      Height = 13
      Caption = 'Notlar :'
    end
    object GroupBox1: TGroupBox
      Left = 7
      Top = 4
      Width = 1277
      Height = 53
      Align = alCustom
      Caption = 'M'#252#351'teri'
      TabOrder = 0
      object Label8: TLabel
        Left = 24
        Top = 23
        Width = 24
        Height = 13
        Caption = 'Ad'#305' :'
      end
      object Label9: TLabel
        Left = 232
        Top = 24
        Width = 44
        Height = 13
        Caption = 'Soyad'#305' :'
      end
      object Label1: TLabel
        Left = 443
        Top = 25
        Width = 47
        Height = 13
        Caption = 'Cep Tel :'
      end
      object Label10: TLabel
        Left = 625
        Top = 23
        Width = 39
        Height = 13
        Caption = 'Adres :'
      end
      object Image1: TImage
        Left = 1133
        Top = 13
        Width = 24
        Height = 24
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
          00180806000000E0773DF8000002F44944415478DAED945B48145118C7FFB3E3
          EED22A86EE6DBCAFDA452DCAECA1877A9010ED22411016844A6017A807892834
          108A92A01223C48820332C4D822E509044456F221128A6E6AAEDAE9A23AEEB5E
          9DD99D39CD0EB658BA9A977AEA83330373CEF9FDE67CE73B87C25F0EEABFE09F
          0B98574C457E7A4E75D7A8199F727BA955156C7A9B46B62766E06AEA0D94741E
          C1886D6AF556301B7ED956012B67C1D7CFE3AB2308C2AB779C438E2A57865BB8
          6F70BB79587B1C2B17FC0E1FF40DC1CF8B18EC9A00AF152B5724C86A4B250F77
          D5C1409B64B8D9338060DD0C75DBE1F6F2608FB1CBDFE4B8A70CB9535015FAF3
          7EB719344DC3DAEFC0E4B80F6C192BB3E547DC6B8608AC284F644BD945A54C33
          432A0B4A5114751CE5432731E2FD0E9532026356B7D45C21B82C605E30A46063
          0ECE269CC15DF63E5A3F7E082B619E3194E811C592BC3D381F7B0917ADE5E871
          F642AD54C33E3E8DE13E07C64E8CFD3297CA786322A7B614A2DDD9810BF15538
          DC791AF63ECFBC12439381E4EDCC464D423DEAD8EB78C7BE97E02A4C39790C77
          4F62B46C6CCE1C2AB32D8D6C4B314013A18637C08595185B8C246B6B12D798D6
          A87EE97882C7A32D50D211703AFDE05C7E741698E75D35C53C6748B23EC6BFD9
          A8534E0B7E04A48FBB63F6A2B6BF2124313C3090A46C2D9A331BD0E16A47BDAD
          1E0A85026E5700ACD9094BF148D87DA3827707FCA85E67D4C2A45B0B5E141190
          5ABE76BF2C4170EF154053CE6D4C4C7B71CD7245EA17E0F508B0DBDC1828B22D
          581472A72421948F42A6490F7D7424B840405A898842DD015823BEE0E09AA3B0
          733EDC1AAE819377C2E715E1B673E8291C5CB4E2420382D5A4F2D3C848D72152
          A39625021190A249C6A1D862D40EDF94E1D35EB260CEC30A66CA90A8041A99EB
          F5A0950A088228A52C004EE0A0A054125C4A8D8347F7BE813F3EA0730632AD0C
          89A49548DFA0959244208A0482D43C5EFF92E1F30A82617C642431D11A249AA2
          A53411B85CFCB2E06105C130DC33105D7CD44C0D6159F005053F25C1F7ECBB65
          A9F1036A34723C9442E56B0000000049454E44AE426082}
        Stretch = True
        Visible = False
      end
      object Image2: TImage
        Left = 1163
        Top = 13
        Width = 24
        Height = 24
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
          00180806000000E0773DF80000052A4944415478DA9556596F1357183D77C68E
          3DB663C78E770742482190408020D44AA8AA4425A24640E9431F5A411FDABFD5
          F6813E542D45A24DCBD28856AAC44337A001D290346475E225B6335E623B9E99
          AFDFCCB8882D14AE75254BBEF79CEF9CEF7C3316E0B59ED84D52A80BC2EB8151
          28C2A8D511C9CC0BBCC2CAC7FB48F22A90BA4375AAD514A3A822BCF650885C72
          37398F1C807BEC4D88A00FFAEC0A1A976F404FAF219A5B7C29925CB497E45402
          EEB36F43DE9302152A685CBB89D6ED7B10F9A11152CE8F415009A46E404AF582
          B614D42F8C97B44C3618CFBE9824C3E08E448C948F4E0BD15187915E82080440
          529031AE40E48E1CD394770EC95458060CC69204573108D2FDA87EFA4DC52897
          3B93DB90A46DF0AAF7FC199F59A0FECF1463106310BB9144FDDA5D5DA47B07C8
          3D9C40478F0764F02DE203FC457E6D3F34D589DAD7574B9AAA0677E6979F2059
          0AEF20672A51F29D3B15948C36B890780B08594273268FC6541E6231B68B8453
          22653821DC3D9D8C4D6D1262254368A9322A97AE334939D8975BB248E6233BC9
          198F95FCE7C682B2A1429FB96F29B7C1051ACB15D4EF66402D830992BB856E90
          213924780F44E04AF96D1273C3543208430E61E3ABEBF5567A5531899DA9A4DE
          F5E1982C6BEBD066ECCA85248198A3FE4F11F539EEA7CE7725213D923D6B2A71
          48D43914114AB2F3311282837BA2B9C2A8FCFC07A8D1847FF438E4D63A278E2B
          07DBC2969840D5D9226A73454B4C7F66C1C27EC2D7699BC408EC0B4B9EA4B76D
          972984ABE174497D03EC8280BE380B7DF9A15DB910168A3AB781DA7CC9021C68
          833F4360AEFB9C0CB05DC181107C711F631B6D121DC2E3B37CA65A850B97ADDB
          264179B10CF5E18655F9E063E0CF2530D7648C49246174EF0D49BE88C7EAB9B5
          98C45A26382C2E54F335141E94AC2286B30BCFE06D3B447F9A4971C9943C1811
          4EC561DBF5D44DE2AEA6FFCAA259D9C2D1F5E5E7626D4BF06B770F29A918F5EC
          0D08A959E102A5270FF0AC08C58B9599326A2B39BC5E587979829BC104B97B52
          C68E936F48AEA57BE069665B9E26E06975B9D0EC1BC6CAC46F68ACAEE27829F3
          FF16FD128C913B9140EF9913F0E417A12DCCB53D273B311636D9570D8D23BC1F
          555F0C0B17AF624B2DE3AD8DCCF64DFE89C19544CCE87F6F54F26417D13287C8
          E1B4C1F9A3EB86754EE6DC13DA3DE1DE38060FA224F9B1383E8156B982138F29
          79F465A22B6A564E7BCE8E0A5F318DADC9496BFCCDAACDC28BE526D6D637ADB3
          89B00721BFABFD4461728EB273F8300A4E3FE6BF9B40B3AC627423670FDA9550
          5C40D30D2511C7FE3327E12DAEA13579A73DFE36419EC11772556205A2AD8076
          457D226291909530C14D7730891A8862F6871BA8AF65583D3F2CC6FD11B6254E
          83A74F8ACEF4025AD37FDB01E72DF3CE56EB98CBD748E74C9E2ADAD2BF0FC589
          7FA3FE8857C47C0AF4F6C3D1B4AB63F810CAD124A6C67FB448C4787C270DBD3B
          86F866198D5BB7ECB4308C099EA935F0A058E569269C6D4BFE6F5D664B255638
          10F221EE75B749EC61748F1C45C6E3C7FD6FF985737D60888EF12B533038715A
          4C4B24DEABF506A6372AD018FC7D75FDB971BE1808938349F6757522A9B85900
          B57BA2834646F0FBED7BBAB8144DD1E1703762CD0634C97E2AAE341A982A5749
          635B3E28175EF8CAFCD2DF4D0EB66BD0EF133D6EB725C2C14DCFBADCB8B35E80
          B8D019A280C3817D1E0FBCB28CB5E616E6366B68F1C1F395E24BBDF4BF600C33
          CCFD1E2F12AE0ED4741DD39B9B5035CD8EE9679E007570F52E4ECE26CB33B88E
          8F6BEA2BFD6DF9DC1B2053BF876D6E72A2B658C5279BAAF81728C276850B6912
          BA0000000049454E44AE426082}
        Stretch = True
        Visible = False
      end
      object CmbAdi: TComboBox
        Left = 53
        Top = 22
        Width = 172
        Height = 21
        AutoCompleteDelay = 50000
        Style = csDropDownList
        CharCase = ecUpperCase
        DropDownCount = 20
        ItemHeight = 13
        TabOrder = 0
        OnChange = CmbAdiChange
        OnDropDown = CmbAdiDropDown
      end
      object CmbSoyadi: TComboBox
        Left = 279
        Top = 22
        Width = 160
        Height = 21
        AutoCompleteDelay = 50000
        Style = csDropDownList
        CharCase = ecUpperCase
        DropDownCount = 20
        ItemHeight = 13
        TabOrder = 1
        OnChange = CmbSoyadiChange
        OnDropDown = CmbSoyadiDropDown
      end
      object CmbCepTel1: TComboBox
        Left = 494
        Top = 22
        Width = 123
        Height = 21
        AutoCompleteDelay = 50000
        Style = csDropDownList
        DropDownCount = 20
        ItemHeight = 13
        TabOrder = 2
        OnChange = CmbCepTel1Change
        OnDropDown = CmbCepTel1DropDown
      end
      object CmbAdres: TComboBox
        Left = 670
        Top = 22
        Width = 265
        Height = 21
        AutoCompleteDelay = 50000
        Style = csDropDownList
        DropDownCount = 20
        ItemHeight = 13
        TabOrder = 3
        OnChange = CmbAdresChange
        OnDropDown = CmbAdresDropDown
      end
      object ChkSec: TCheckBox
        Left = 210
        Top = -1
        Width = 37
        Height = 17
        Caption = 'Se'#231
        Checked = True
        State = cbChecked
        TabOrder = 4
        Visible = False
      end
      object ChkMusteri: TCheckBox
        Left = 56
        Top = -2
        Width = 17
        Height = 17
        TabOrder = 5
      end
    end
    object ChkBitTarih: TCheckBox
      Left = 34
      Top = 92
      Width = 80
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Biti'#351' Tarihi :'
      TabOrder = 1
    end
    object DtBit1: TDateTimePicker
      Left = 118
      Top = 90
      Width = 93
      Height = 21
      Date = 41169.508907129630000000
      Time = 41169.508907129630000000
      TabOrder = 2
    end
    object DtBit2: TDateTimePicker
      Left = 217
      Top = 90
      Width = 93
      Height = 21
      Date = 41169.508907129630000000
      Time = 41169.508907129630000000
      TabOrder = 3
    end
    object BtnListele: TButton
      Left = 18
      Top = 122
      Width = 75
      Height = 25
      Caption = 'Listele'
      TabOrder = 4
      OnClick = BtnListeleClick
    end
    object Button2: TButton
      Left = 99
      Top = 122
      Width = 75
      Height = 25
      Caption = 'Yazd'#305'r'
      TabOrder = 5
      OnClick = Button2Click
    end
    object CmbKriter: TComboBox
      Left = 391
      Top = 63
      Width = 111
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 6
      Items.Strings = (
        ''
        'Plaka No'
        'M'#252#351'teri No'
        'Poli'#231'e No')
    end
    object TxtKriter: TEdit
      Left = 508
      Top = 63
      Width = 121
      Height = 21
      TabOrder = 7
    end
    object DtBas2: TDateTimePicker
      Left = 217
      Top = 63
      Width = 93
      Height = 21
      Date = 41169.508907129630000000
      Time = 41169.508907129630000000
      TabOrder = 8
    end
    object DtBas1: TDateTimePicker
      Left = 118
      Top = 63
      Width = 93
      Height = 21
      Date = 41169.508907129630000000
      Time = 41169.508907129630000000
      TabOrder = 9
    end
    object ChkBasTarih: TCheckBox
      Left = 5
      Top = 65
      Width = 109
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Ba'#351'lang'#305#231' Tarihi :'
      TabOrder = 10
    end
    object RbAgenteTumu: TRadioButton
      Left = 590
      Top = 92
      Width = 60
      Height = 17
      Caption = 'T'#252'm'#252
      Checked = True
      TabOrder = 11
      TabStop = True
    end
    object RbBorcuOlanlar: TRadioButton
      Left = 393
      Top = 92
      Width = 102
      Height = 17
      Caption = 'Borcu Olanlar'
      TabOrder = 12
    end
    object RbAcenteOdenen: TRadioButton
      Left = 497
      Top = 92
      Width = 78
      Height = 17
      Caption = #214'denenler'
      TabOrder = 13
    end
    object Button1: TButton
      Left = 1223
      Top = 13
      Width = 49
      Height = 46
      Caption = 'D'#252'zenle'
      TabOrder = 14
      Visible = False
      OnClick = Button1Click
    end
    object TxtNotlar: TEdit
      Left = 709
      Top = 63
      Width = 368
      Height = 21
      TabOrder = 15
    end
    object DtKayit2: TDateTimePicker
      Left = 889
      Top = 90
      Width = 93
      Height = 21
      Date = 40838.452489490740000000
      Time = 40838.452489490740000000
      TabOrder = 16
    end
    object DtKayit1: TDateTimePicker
      Left = 790
      Top = 90
      Width = 93
      Height = 21
      Date = 40838.452489490740000000
      Time = 40838.452489490740000000
      TabOrder = 17
    end
    object ChkKayitTarihi: TCheckBox
      Left = 705
      Top = 91
      Width = 81
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Kay'#305't Tarihi'
      TabOrder = 18
    end
    object ChkOdemeAciklama: TCheckBox
      Left = 561
      Top = 127
      Width = 170
      Height = 17
      Caption = 'Odeme A'#231#305'klamas'#305' Arama'
      TabOrder = 19
    end
    object TxtOdemeAciklama: TEdit
      Left = 388
      Top = 126
      Width = 170
      Height = 21
      TabOrder = 20
    end
    object ChkMakbuzNo: TCheckBox
      Left = 939
      Top = 126
      Width = 86
      Height = 17
      Caption = 'Makbuz No'
      TabOrder = 21
    end
    object TxtMakbuzNo: TEdit
      Left = 864
      Top = 123
      Width = 72
      Height = 21
      TabOrder = 22
    end
  end
  object AdvPreview: TAdvPreviewDialog
    CloseAfterPrint = True
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
    PreviewCenter = True
    ShowMaximized = True
    Left = 1136
    Top = 56
  end
  object PopupMenu1: TPopupMenu
    Left = 1216
    Top = 56
    object eslimFii1: TMenuItem
      Caption = 'Teslim Fi'#351'i'
    end
  end
  object Qry1: TADOQuery
    Connection = Dm.Cnn1
    Parameters = <>
    Left = 1088
    Top = 64
  end
  object Qry2: TADOQuery
    Connection = Dm.Cnn1
    Parameters = <>
    Left = 1176
    Top = 56
  end
  object Qry3: TADOQuery
    Connection = Dm.Cnn1
    Parameters = <>
    Left = 1256
    Top = 64
  end
end
