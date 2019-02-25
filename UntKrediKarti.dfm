object FrmKrediKarti: TFrmKrediKarti
  Left = 0
  Top = 0
  Caption = 'Kredi Kart'#305
  ClientHeight = 420
  ClientWidth = 515
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 515
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 4
      Width = 321
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'KRED'#304' KARTI - YATIRIMLAR'
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
    Top = 400
    Width = 515
    Height = 20
    Align = alBottom
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 515
    Height = 104
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object Label13: TLabel
      Left = 15
      Top = 14
      Width = 136
      Height = 13
      Caption = 'Kullan'#305'lan  Kart ('#304#351'yeri) :'
    end
    object Label8: TLabel
      Left = 58
      Top = 41
      Width = 93
      Height = 13
      Caption = 'Yat'#305'r'#305'lan Miktar :'
    end
    object Label21: TLabel
      Left = 364
      Top = 14
      Width = 35
      Height = 13
      Caption = 'Tarih :'
    end
    object BtnKaydet: TButton
      Left = 352
      Top = 73
      Width = 75
      Height = 25
      Caption = 'Kaydet'
      TabOrder = 0
      OnClick = BtnKaydetClick
    end
    object BtnSil: TButton
      Left = 433
      Top = 73
      Width = 75
      Height = 25
      Caption = 'Sil'
      TabOrder = 1
      OnClick = BtnSilClick
    end
    object CmbKullanilanKart: TComboBox
      Left = 157
      Top = 11
      Width = 158
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      OnChange = CmbKullanilanKartChange
    end
    object CurrLimit: TMoneyEdit
      Left = 157
      Top = 38
      Width = 158
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
      TabOrder = 3
      Version = '1.1.1.0'
    end
    object DtTarih: TDateTimePicker
      Left = 405
      Top = 10
      Width = 99
      Height = 21
      Date = 40842.628292708330000000
      Time = 40842.628292708330000000
      TabOrder = 4
    end
  end
  object AdvListe: TAdvStringGrid
    Left = 0
    Top = 145
    Width = 515
    Height = 255
    Cursor = crDefault
    Align = alClient
    ColCount = 3
    RowCount = 2
    ScrollBars = ssBoth
    TabOrder = 3
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      ''
      'Tarih'
      'Yat'#305'r'#305'lan Miktar')
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
      40
      82
      144)
  end
  object Qry1: TADOQuery
    Connection = Dm.Cnn1
    Parameters = <>
    Left = 384
    Top = 8
  end
end
