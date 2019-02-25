object FrmSirketGelirGiderKayit: TFrmSirketGelirGiderKayit
  Left = 0
  Top = 0
  Caption = 'Sirket Gelir - Gider Kayit'
  ClientHeight = 326
  ClientWidth = 466
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 52
    Top = 99
    Width = 25
    Height = 13
    Caption = 'T'#252'r :'
  end
  object Label4: TLabel
    Left = 40
    Top = 137
    Width = 37
    Height = 13
    Caption = 'Tutar :'
  end
  object Label7: TLabel
    Left = 19
    Top = 172
    Width = 58
    Height = 13
    Caption = 'A'#231#305'klama :'
  end
  object Label3: TLabel
    Left = 42
    Top = 62
    Width = 35
    Height = 13
    Caption = 'Tarih :'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 466
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 7
      Width = 337
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = #350#304'RKET GEL'#304'R - G'#304'DER KAYIT'
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
    Top = 279
    Width = 466
    Height = 47
    Align = alBottom
    TabOrder = 1
    object BtnKaydet: TButton
      Left = 132
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Kaydet'
      TabOrder = 0
      OnClick = BtnKaydetClick
    end
    object BtnGuncelle: TButton
      Left = 213
      Top = 11
      Width = 75
      Height = 25
      Caption = 'G'#252'ncelle'
      TabOrder = 1
      OnClick = BtnGuncelleClick
    end
    object BtnTemizle: TButton
      Left = 294
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Temizle'
      TabOrder = 2
      OnClick = BtnTemizleClick
    end
    object BtnSil: TButton
      Left = 375
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Sil'
      TabOrder = 3
      OnClick = BtnSilClick
    end
  end
  object MemAciklama: TMemo
    Left = 83
    Top = 172
    Width = 309
    Height = 57
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object CurrTutar: TAdvMoneyEdit
    Left = 83
    Top = 134
    Width = 103
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
    TabOrder = 3
    Text = '0.00'
    Visible = True
    Version = '1.1.2.5'
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
  object DtTarih: TDateTimePicker
    Left = 83
    Top = 58
    Width = 103
    Height = 21
    Date = 40616.692930520830000000
    Time = 40616.692930520830000000
    TabOrder = 4
  end
  object CmbTur: TComboBox
    Left = 83
    Top = 96
    Width = 103
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 5
    Text = 'Gelir'
    Items.Strings = (
      'Gelir'
      'Gider')
  end
  object Qry1: TADOQuery
    Connection = Dm.Cnn1
    Parameters = <>
    Left = 416
    Top = 8
  end
end
