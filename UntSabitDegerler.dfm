object FrmSabitDegerler: TFrmSabitDegerler
  Left = 0
  Top = 0
  ClientHeight = 443
  ClientWidth = 373
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
    Width = 373
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 4
      Width = 207
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'TANIMLAMALAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 373
    Height = 402
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Tan'#305'mlamalar'
      object Panel2: TPanel
        Left = 0
        Top = 327
        Width = 365
        Height = 47
        Align = alBottom
        TabOrder = 0
        object Button1: TButton
          Left = 190
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Kaydet'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button4: TButton
          Left = 271
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Sil'
          TabOrder = 1
          OnClick = Button4Click
        end
      end
      object AdvListe: TAdvStringGrid
        Left = 0
        Top = 62
        Width = 365
        Height = 265
        Cursor = crDefault
        Align = alBottom
        ColCount = 2
        ScrollBars = ssBoth
        TabOrder = 1
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
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
        FixedColWidth = 25
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
          25
          289)
        RowHeights = (
          22
          22
          22
          22
          22
          22
          22
          22
          22
          22)
      end
      object TxtKriter: TEdit
        Left = 44
        Top = 35
        Width = 280
        Height = 21
        TabOrder = 2
      end
      object CmbKriter: TComboBox
        Left = 44
        Top = 8
        Width = 280
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 3
        OnChange = CmbKriterChange
        Items.Strings = (
          #220'r'#252'n '#199'e'#351'idi'
          'M'#252#351'teri '#214'deme T'#252'r'#252
          'Kullan'#305'lan Kart (i'#351'yeri)'
          'Gider T'#252'r'#252
          #350'irketler'
          'Hava/ Deniz Yolu'
          #304#351'lem T'#252'r'#252
          #214'deme '#350'ekli')
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Kredi Kart'#305' Limit Tan'#305'mlamas'#305
      ImageIndex = 1
      object Label8: TLabel
        Left = 79
        Top = 162
        Width = 64
        Height = 13
        Caption = 'Kart Limiti :'
      end
      object Label13: TLabel
        Left = 7
        Top = 135
        Width = 136
        Height = 13
        Caption = 'Kullan'#305'lan  Kart ('#304#351'yeri) :'
      end
      object Panel3: TPanel
        Left = 0
        Top = 327
        Width = 365
        Height = 47
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object BtnKaydet: TButton
          Left = 253
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Kaydet'
          TabOrder = 0
          OnClick = BtnKaydetClick
        end
        object BtnSil: TButton
          Left = 415
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Sil'
          TabOrder = 1
        end
      end
      object CurrLimit: TMoneyEdit
        Left = 156
        Top = 159
        Width = 156
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
        TabOrder = 1
        Version = '1.1.1.0'
      end
      object CmbKullanilanKart: TComboBox
        Left = 156
        Top = 132
        Width = 158
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 2
        OnChange = CmbKullanilanKartChange
        OnDropDown = CmbKullanilanKartDropDown
      end
    end
  end
  object Qry1: TADOQuery
    Connection = Dm.Cnn1
    Parameters = <>
    Left = 288
  end
end
