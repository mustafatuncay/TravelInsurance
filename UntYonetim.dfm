object FrmYonetim: TFrmYonetim
  Left = 0
  Top = 0
  ClientHeight = 506
  ClientWidth = 762
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 762
    Height = 465
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Kullan'#305'c'#305' Haklar'#305
      object Label2: TLabel
        Left = 523
        Top = 4
        Width = 43
        Height = 13
        Caption = 'Haklar :'
      end
      object Label3: TLabel
        Left = 47
        Top = 14
        Width = 73
        Height = 13
        Caption = 'Kullan'#305'c'#305' Ad'#305' :'
      end
      object Label4: TLabel
        Left = 87
        Top = 42
        Width = 32
        Height = 13
        Caption = #350'ifre :'
      end
      object Label5: TLabel
        Left = 13
        Top = 70
        Width = 110
        Height = 13
        Caption = #350'ifreyi Tekrarlay'#305'n :'
      end
      object AdvListe: TAdvStringGrid
        Left = 3
        Top = 139
        Width = 479
        Height = 278
        Cursor = crDefault
        Align = alCustom
        ColCount = 3
        RowCount = 2
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        OnDblClick = AdvListeDblClick
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          'Kullan'#305'c'#305' Ad'#305
          #350'ifre')
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
        Version = '7.2.8.0'
        ColWidths = (
          40
          158
          170)
      end
      object ChkLbHaklar: TCheckListBox
        Left = 505
        Top = 23
        Width = 241
        Height = 250
        ItemHeight = 13
        Items.Strings = (
          'Sat'#305#351'lar/Rezervasyon'
          'Turizm Rapor'
          'Kredi Kart'#305' Yat'#305'r'#305'mlar'#305
          'Opsiyonlar'
          'Sigorta '#304#351'lemleri'
          'Sigorta Rapor'
          'Sigorta Hesap Rapor'
          'Sigorta Uyar'#305
          'Ajanda'
          #350'irket Gelir-Gider'
          'Hesaplama'
          'Tan'#305'mlamalar'
          'Otel Kay'#305't'
          'Transfer Firmalar'#305
          'Tur Firmalar'#305
          'M'#252#351'teri Kay'#305't'
          'Y'#246'netim Ayarlar'#305)
        TabOrder = 1
      end
      object BtnKaydet: TButton
        Left = 10
        Top = 108
        Width = 75
        Height = 25
        Caption = 'Kaydet'
        TabOrder = 2
        OnClick = BtnKaydetClick
      end
      object BtnGuncelle: TButton
        Left = 91
        Top = 108
        Width = 75
        Height = 25
        Caption = 'G'#252'ncelle'
        Enabled = False
        TabOrder = 3
        OnClick = BtnGuncelleClick
      end
      object BtnSil: TButton
        Left = 172
        Top = 108
        Width = 75
        Height = 25
        Caption = 'Sil'
        Enabled = False
        TabOrder = 4
        OnClick = BtnSilClick
      end
      object BtnYeni: TButton
        Left = 253
        Top = 108
        Width = 75
        Height = 25
        Caption = 'Yeni'
        TabOrder = 5
        OnClick = BtnYeniClick
      end
      object TxtKullaniciAdi: TEdit
        Left = 123
        Top = 11
        Width = 239
        Height = 21
        TabOrder = 6
      end
      object TxtSifre: TEdit
        Left = 124
        Top = 39
        Width = 238
        Height = 21
        PasswordChar = '*'
        TabOrder = 7
      end
      object TxtTekrarSifre: TEdit
        Left = 124
        Top = 67
        Width = 238
        Height = 21
        PasswordChar = '*'
        TabOrder = 8
      end
      object ChkSelect: TCheckBox
        Left = 505
        Top = 3
        Width = 17
        Height = 17
        TabOrder = 9
        OnClick = ChkSelectClick
      end
      object ChkOdemeOnay: TCheckBox
        Left = 505
        Top = 285
        Width = 124
        Height = 17
        Caption = #214'deme Onay'
        TabOrder = 10
      end
      object ChkGuncellemeOnay: TCheckBox
        Left = 505
        Top = 308
        Width = 124
        Height = 17
        Caption = 'G'#252'ncelleme Onay'
        TabOrder = 11
      end
      object ChkSilmeOnay: TCheckBox
        Left = 505
        Top = 331
        Width = 124
        Height = 17
        Caption = 'Silme Onay'
        TabOrder = 12
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 762
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label6: TLabel
      Left = 7
      Top = 7
      Width = 244
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'Y'#214'NET'#304'M AYARLARI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object Qry1: TADOQuery
    Connection = Dm.Cnn1
    Parameters = <>
    Left = 416
    Top = 8
  end
end
