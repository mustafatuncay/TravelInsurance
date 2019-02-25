object FrmRapor: TFrmRapor
  Left = 0
  Top = 0
  ClientHeight = 755
  ClientWidth = 1268
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1268
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 4
      Width = 97
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'RAPOR'
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
    Top = 741
    Width = 1268
    Height = 14
    Align = alBottom
    TabOrder = 1
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 1268
    Height = 700
    ActivePage = TabSheet12
    Align = alClient
    TabOrder = 2
    object TabSheet12: TTabSheet
      Caption = 'Acente Genel Sat'#305#351' Raporu'
      ImageIndex = 11
      object Panel16: TPanel
        Left = 0
        Top = 0
        Width = 1260
        Height = 233
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 396
          Top = 2
          Width = 56
          Height = 13
          Caption = 'Kaydeden'
        end
        object Label3: TLabel
          Left = 567
          Top = 2
          Width = 69
          Height = 13
          Caption = 'G'#252'ncelleyen'
        end
        object Label17: TLabel
          Left = 740
          Top = 138
          Width = 105
          Height = 13
          Caption = 'Hava / Deniz Yolu :'
        end
        object ChkAgenteKayitTarihi: TCheckBox
          Left = 18
          Top = 60
          Width = 81
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Kay'#305't Tarihi'
          TabOrder = 0
        end
        object DtAgente1: TDateTimePicker
          Left = 103
          Top = 59
          Width = 93
          Height = 21
          Date = 40838.452489490740000000
          Time = 40838.452489490740000000
          TabOrder = 1
        end
        object DtAgente2: TDateTimePicker
          Left = 202
          Top = 59
          Width = 93
          Height = 21
          Date = 40838.452489490740000000
          Time = 40838.452489490740000000
          TabOrder = 2
        end
        object TxtBorc: TEdit
          Left = 1129
          Top = 166
          Width = 71
          Height = 21
          Alignment = taRightJustify
          Color = 8454143
          TabOrder = 3
          Visible = False
        end
        object Edit1: TEdit
          Left = 1143
          Top = 166
          Width = 66
          Height = 21
          Alignment = taRightJustify
          Color = 8454143
          TabOrder = 4
          Visible = False
        end
        object Edit2: TEdit
          Left = 1164
          Top = 166
          Width = 72
          Height = 21
          Alignment = taRightJustify
          Color = 8454143
          TabOrder = 5
          Visible = False
        end
        object GroupBox7: TGroupBox
          Left = 0
          Top = 5
          Width = 381
          Height = 55
          Caption = 'M'#252#351'teri'
          TabOrder = 6
          object CmbAcenteMusteriAdi: TComboBox
            Left = 7
            Top = 21
            Width = 180
            Height = 21
            AutoCompleteDelay = 50000
            DropDownCount = 20
            ItemHeight = 13
            TabOrder = 0
            OnChange = CmbAcenteMusteriAdiChange
          end
          object CmbAcenteMusteriSoyAdi: TComboBox
            Left = 193
            Top = 21
            Width = 180
            Height = 21
            AutoCompleteDelay = 50000
            DropDownCount = 20
            ItemHeight = 13
            TabOrder = 1
            OnChange = CmbAcenteMusteriSoyAdiChange
          end
          object ChkAcenteMusteri: TCheckBox
            Left = 56
            Top = -2
            Width = 15
            Height = 17
            TabOrder = 2
          end
        end
        object RbBorcuOlanlar: TRadioButton
          Left = 22
          Top = 114
          Width = 102
          Height = 17
          Caption = 'Borcu Olanlar'
          TabOrder = 7
        end
        object RbAcenteOdenen: TRadioButton
          Left = 130
          Top = 114
          Width = 78
          Height = 17
          Caption = #214'denenler'
          TabOrder = 8
        end
        object RbAgenteTumu: TRadioButton
          Left = 219
          Top = 114
          Width = 60
          Height = 17
          Caption = 'T'#252'm'#252
          Checked = True
          TabOrder = 9
          TabStop = True
        end
        object Edit3: TEdit
          Left = 1183
          Top = 174
          Width = 66
          Height = 21
          Alignment = taRightJustify
          Color = 8454143
          TabOrder = 10
          Visible = False
        end
        object ChkATur: TCheckBox
          Left = 957
          Top = 3
          Width = 40
          Height = 17
          Caption = 'Tur'
          Checked = True
          State = cbChecked
          TabOrder = 11
          OnClick = ChkATurClick
        end
        object ChkAOtel: TCheckBox
          Left = 801
          Top = 6
          Width = 44
          Height = 17
          Caption = 'Otel'
          Checked = True
          State = cbChecked
          TabOrder = 12
          OnClick = ChkAOtelClick
        end
        object ChkATransfer: TCheckBox
          Left = 868
          Top = 5
          Width = 68
          Height = 18
          Caption = 'Transfer'
          Checked = True
          State = cbChecked
          TabOrder = 13
          OnClick = ChkATransferClick
        end
        object ChkABilet: TCheckBox
          Left = 740
          Top = 6
          Width = 45
          Height = 17
          Caption = 'Bilet'
          Checked = True
          State = cbChecked
          TabOrder = 14
          OnClick = ChkABiletClick
        end
        object Button7: TButton
          Left = 1164
          Top = 66
          Width = 75
          Height = 25
          Caption = 'D'#252'zeltme'
          TabOrder = 15
          Visible = False
          OnClick = Button7Click
        end
        object ChkOdeme: TCheckBox
          Left = 8
          Top = 87
          Width = 91
          Height = 17
          Alignment = taLeftJustify
          Caption = #214'deme Tarihi'
          Checked = True
          State = cbChecked
          TabOrder = 16
        end
        object DtOdeme1: TDateTimePicker
          Left = 104
          Top = 86
          Width = 93
          Height = 21
          Date = 40838.452489490740000000
          Time = 40838.452489490740000000
          TabOrder = 17
        end
        object DtOdeme2: TDateTimePicker
          Left = 202
          Top = 86
          Width = 93
          Height = 21
          Date = 40838.452489490740000000
          Time = 40838.452489490740000000
          TabOrder = 18
        end
        object TxtAgentePnr: TEdit
          Left = 791
          Top = 29
          Width = 121
          Height = 21
          TabOrder = 19
          Visible = False
        end
        object ChkAgentePnr: TCheckBox
          Left = 748
          Top = 31
          Width = 37
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Pnr'
          TabOrder = 20
          Visible = False
        end
        object GrpYolcu: TGroupBox
          Left = 744
          Top = 54
          Width = 225
          Height = 75
          Caption = 'Yolcular'
          TabOrder = 21
          object TxtYAdi: TEdit
            Left = 71
            Top = 16
            Width = 121
            Height = 21
            TabOrder = 0
          end
          object TxtYSoyadi: TEdit
            Left = 71
            Top = 43
            Width = 121
            Height = 21
            TabOrder = 1
          end
          object ChkYAdi: TCheckBox
            Left = 28
            Top = 14
            Width = 37
            Height = 26
            Alignment = taLeftJustify
            Caption = 'Ad'#305
            TabOrder = 2
          end
          object ChkYSoyAdi: TCheckBox
            Left = 12
            Top = 41
            Width = 53
            Height = 26
            Alignment = taLeftJustify
            Caption = 'Soyad'#305
            TabOrder = 3
          end
        end
        object ChkAyniGun: TCheckBox
          Left = 22
          Top = 137
          Width = 156
          Height = 17
          Caption = 'Bug'#252'n Kay'#305't Olmayanlar'
          TabOrder = 22
        end
        object ChkKullanilanKart: TCheckBox
          Left = 10
          Top = 162
          Width = 106
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Kullan'#305'lan  Kart :'
          TabOrder = 23
        end
        object CmbAgenteKullanilanKart: TComboBox
          Left = 121
          Top = 160
          Width = 158
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 24
        end
        object Button1: TButton
          Left = 83
          Top = 202
          Width = 75
          Height = 25
          Caption = 'Yazd'#305'r'
          TabOrder = 25
          OnClick = Button1Click
        end
        object Button18: TButton
          Left = 1164
          Top = 35
          Width = 75
          Height = 25
          Caption = 'Listele'
          TabOrder = 26
          Visible = False
          OnClick = Button18Click
        end
        object Button2: TButton
          Left = 1164
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Listele'
          TabOrder = 27
          Visible = False
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 2
          Top = 202
          Width = 75
          Height = 25
          Caption = 'Listele'
          TabOrder = 28
          OnClick = Button3Click
        end
        object ChkKullanici: TCheckListBox
          Left = 396
          Top = 18
          Width = 153
          Height = 209
          ItemHeight = 13
          TabOrder = 29
        end
        object ChkKullanici2: TCheckListBox
          Left = 567
          Top = 18
          Width = 153
          Height = 209
          ItemHeight = 13
          TabOrder = 30
        end
        object CmbHavaDenizYolu: TComboBox
          Left = 740
          Top = 157
          Width = 239
          Height = 21
          ItemHeight = 13
          TabOrder = 31
          Items.Strings = (
            'Editable')
        end
      end
      object AdvAgente: TAdvStringGrid
        Left = 0
        Top = 233
        Width = 1260
        Height = 439
        Cursor = crDefault
        Align = alClient
        ColCount = 21
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        ScrollBars = ssBoth
        TabOrder = 1
        OnDblClick = AdvAgenteDblClick
        HoverRowCells = [hcNormal, hcSelected]
        OnGetAlignment = AdvAgenteGetAlignment
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          'Kay'#305't Tarihi'
          #304#351'lem'
          ''
          'M'#252#351'teri Ad'#305
          'M'#252#351'teri Soyad'#305
          'A'#231#305'klama'
          'Net'
          'Komisyon'
          'Di'#287'er Kom.'
          'Toplam'
          #214'deme '#350'ekli 1'
          #214'deme Tutar 1'
          #214'deme '#350'ekli 2'
          #214'deme Tutar 2'
          #214'deme '#350'ekli 3'
          #214'deme Tutar 3'
          'Kalan'
          'Kart')
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
        FixedColWidth = 45
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
        SortSettings.Show = True
        Version = '7.8.7.0'
        ColWidths = (
          45
          77
          74
          106
          159
          142
          154
          75
          75
          81
          88
          91
          86
          91
          88
          91
          77
          100
          138
          59
          8)
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'Sat'#305#351' Kart'#305' Raporu'
      ImageIndex = 9
      object Panel14: TPanel
        Left = 0
        Top = 0
        Width = 1260
        Height = 97
        Align = alTop
        TabOrder = 0
        object GroupBox6: TGroupBox
          Left = 0
          Top = 5
          Width = 288
          Height = 55
          Caption = 'M'#252#351'teri'
          TabOrder = 1
          object CmbKartMusAdi: TComboBox
            Left = 7
            Top = 21
            Width = 133
            Height = 21
            AutoCompleteDelay = 50000
            Style = csDropDownList
            DropDownCount = 20
            ItemHeight = 13
            TabOrder = 0
            OnChange = CmbKartMusAdiChange
          end
          object CmbKartMusSoyadi: TComboBox
            Left = 146
            Top = 21
            Width = 133
            Height = 21
            AutoCompleteDelay = 50000
            Style = csDropDownList
            DropDownCount = 20
            ItemHeight = 13
            TabOrder = 1
            OnChange = CmbKartMusSoyadiChange
          end
          object ChkKArtMusteri: TCheckBox
            Left = 56
            Top = -2
            Width = 15
            Height = 17
            TabOrder = 2
          end
        end
        object BtkKartListele: TButton
          Left = 0
          Top = 66
          Width = 75
          Height = 25
          Caption = 'Listele'
          TabOrder = 0
          OnClick = BtkKartListeleClick
        end
        object ChkBilet: TCheckBox
          Left = 336
          Top = 26
          Width = 45
          Height = 17
          Caption = 'Bilet'
          TabOrder = 2
        end
        object ChkTransfer: TCheckBox
          Left = 488
          Top = 26
          Width = 68
          Height = 18
          Caption = 'Transfer'
          TabOrder = 3
        end
        object ChkOtelx: TCheckBox
          Left = 416
          Top = 26
          Width = 44
          Height = 17
          Caption = 'Otel'
          TabOrder = 4
        end
        object ChkTur: TCheckBox
          Left = 589
          Top = 26
          Width = 40
          Height = 17
          Caption = 'Tur'
          TabOrder = 5
        end
      end
      object AdvKArt: TAdvStringGrid
        Left = 0
        Top = 97
        Width = 1260
        Height = 575
        Cursor = crDefault
        Align = alClient
        ColCount = 11
        RowCount = 2
        ScrollBars = ssBoth
        TabOrder = 1
        OnDblClick = AdvKArtDblClick
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          'Kay'#305't Tarihi'
          'M'#252#351'teri Ad'#305
          'M'#252#351'teri Soyad'#305
          'M'#252#351'teri TelNo'
          'M'#252#351'teri Adres'
          'A'#231#305'klama'
          'Bilet Sat'#305#351
          'Otel Sat'#305#351
          'Transfer'
          'Tur')
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
        FixedColWidth = 50
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
          50
          77
          103
          106
          126
          214
          215
          64
          62
          55
          53)
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Kredi Kartlar'#305
      ImageIndex = 4
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 1260
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label13: TLabel
          Left = 135
          Top = 19
          Width = 136
          Height = 13
          Caption = 'Kullan'#305'lan  Kart ('#304#351'yeri) :'
        end
        object Button9: TButton
          Left = 20
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Listele'
          TabOrder = 0
          OnClick = Button9Click
        end
        object CmbKullanilanKart: TComboBox
          Left = 277
          Top = 16
          Width = 158
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 1
        end
        object Button13: TButton
          Left = 822
          Top = 14
          Width = 75
          Height = 25
          Caption = 'Yazd'#305'r'
          TabOrder = 2
          OnClick = Button13Click
        end
        object DtKK1: TDateTimePicker
          Left = 565
          Top = 16
          Width = 100
          Height = 21
          Date = 40857.586004687500000000
          Time = 40857.586004687500000000
          TabOrder = 3
        end
        object DtKK2: TDateTimePicker
          Left = 671
          Top = 16
          Width = 100
          Height = 21
          Date = 40857.586004687500000000
          Time = 40857.586004687500000000
          TabOrder = 4
        end
        object ChkKKTarih: TCheckBox
          Left = 512
          Top = 18
          Width = 49
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Tarih'
          TabOrder = 5
        end
      end
      object AdvKrediKarti: TAdvStringGrid
        Left = 0
        Top = 49
        Width = 1260
        Height = 623
        Cursor = crDefault
        Align = alClient
        FixedCols = 0
        RowCount = 2
        FixedRows = 0
        ScrollBars = ssBoth
        TabOrder = 1
        GridLineColor = clWhite
        HoverRowCells = [hcNormal, hcSelected]
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
        FilterEdit.TypeNames.Strings = (
          'Starts with'
          'Ends with'
          'Contains'
          'Not contains'
          'Equal'
          'Not equal'
          'Clear')
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
        PrintSettings.Borders = pbNoborder
        PrintSettings.BorderStyle = psClear
        PrintSettings.PageNumSep = '/'
        PrintSettings.NoAutoSize = True
        PrintSettings.NoAutoSizeRow = True
        PrintSettings.PrintGraphics = True
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
      end
    end
  end
  object Qry1: TADOQuery
    Connection = Dm.Cnn1
    Parameters = <>
    Left = 728
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
    Version = '3.13'
    Left = 632
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
  object SaveDialog1: TSaveDialog
    Left = 568
  end
  object Qry3: TADOQuery
    Connection = Dm.Cnn1
    Parameters = <>
    Left = 784
  end
  object ASP: TADOStoredProc
    Connection = Dm.Cnn1
    Parameters = <>
    Left = 832
    Top = 256
  end
end
