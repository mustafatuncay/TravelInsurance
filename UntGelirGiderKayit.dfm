object FrmGelirGiderKayit: TFrmGelirGiderKayit
  Left = 0
  Top = 0
  ClientHeight = 342
  ClientWidth = 508
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
  object Label10: TLabel
    Left = 48
    Top = 219
    Width = 31
    Height = 13
    Caption = 'Bor'#231' :'
  end
  object Label3: TLabel
    Left = 44
    Top = 133
    Width = 35
    Height = 13
    Caption = 'Tarih :'
  end
  object Label4: TLabel
    Left = 252
    Top = 178
    Width = 58
    Height = 13
    Caption = 'A'#231#305'klama :'
  end
  object Label6: TLabel
    Left = 12
    Top = 165
    Width = 67
    Height = 13
    Caption = #304#351'lem T'#252'r'#252' :'
  end
  object Label2: TLabel
    Left = 35
    Top = 251
    Width = 44
    Height = 13
    Caption = 'Alacak :'
  end
  object Label23: TLabel
    Left = 12
    Top = 193
    Width = 67
    Height = 13
    Caption = 'Para Birimi :'
  end
  object Label13: TLabel
    Left = 218
    Top = 136
    Width = 136
    Height = 13
    Caption = 'Kullan'#305'lan  Kart ('#304#351'yeri) :'
  end
  object Label7: TLabel
    Left = 3
    Top = 278
    Width = 76
    Height = 13
    Caption = #214'deme '#350'ekli :'
  end
  object Panel1: TPanel
    Left = 0
    Top = 80
    Width = 508
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 15
      Top = 8
      Width = 249
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'GEL'#304'R - G'#304'DER KAYIT'
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
    Top = 307
    Width = 508
    Height = 35
    Align = alBottom
    TabOrder = 1
    object BtnKaydet: TButton
      Left = 422
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Kaydet'
      TabOrder = 0
      OnClick = BtnKaydetClick
    end
  end
  object DtTarih: TDateTimePicker
    Left = 85
    Top = 131
    Width = 117
    Height = 21
    Date = 40837.631585856480000000
    Time = 40837.631585856480000000
    TabOrder = 2
  end
  object MemAciklama: TMemo
    Left = 252
    Top = 197
    Width = 245
    Height = 89
    TabOrder = 3
  end
  object CurrBorc: TMoneyEdit
    Left = 85
    Top = 216
    Width = 117
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
    TabOrder = 4
    Version = '1.1.1.0'
    OnChange = CurrBorcChange
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 508
    Height = 80
    Align = alTop
    Caption = 'M'#252#351'teri / '#350'irket'
    Color = 11075496
    ParentBackground = False
    ParentColor = False
    TabOrder = 5
    object Label8: TLabel
      Left = 39
      Top = 24
      Width = 24
      Height = 13
      Caption = 'Ad'#305' :'
    end
    object Label9: TLabel
      Left = 265
      Top = 24
      Width = 44
      Height = 13
      Caption = 'Soyad'#305' :'
    end
    object Label15: TLabel
      Left = 6
      Top = 51
      Width = 57
      Height = 13
      Caption = 'Kimlik No :'
    end
    object Label5: TLabel
      Left = 272
      Top = 51
      Width = 37
      Height = 13
      Caption = 'Tel No:'
    end
    object BitBtn2: TBitBtn
      Left = 11
      Top = 21
      Width = 22
      Height = 21
      Caption = '+'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object CmbAdi: TComboBox
      Left = 69
      Top = 21
      Width = 174
      Height = 21
      Style = csDropDownList
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 1
      OnChange = CmbAdiChange
    end
    object CmbSoyadi: TComboBox
      Left = 314
      Top = 21
      Width = 183
      Height = 21
      Style = csDropDownList
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 2
      OnChange = CmbSoyadiChange
    end
    object CmbKimlikNo: TComboBox
      Left = 69
      Top = 48
      Width = 174
      Height = 21
      Style = csSimple
      ItemHeight = 13
      TabOrder = 3
    end
    object CmbTelNo: TComboBox
      Left = 314
      Top = 48
      Width = 183
      Height = 21
      Style = csSimple
      ItemHeight = 13
      TabOrder = 4
    end
    object ChkSec: TCheckBox
      Left = 124
      Top = -2
      Width = 37
      Height = 17
      Caption = 'Se'#231
      Checked = True
      State = cbChecked
      TabOrder = 5
      Visible = False
    end
  end
  object CmbislemTuru: TComboBox
    Left = 85
    Top = 162
    Width = 117
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'Bilet Sat'#305#351
      'Otel Sat'#305#351
      'Transfer'
      'Sigorta')
  end
  object CurrAlacak: TMoneyEdit
    Left = 85
    Top = 246
    Width = 117
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
    TabOrder = 7
    Version = '1.1.1.0'
    OnChange = CurrAlacakChange
  end
  object CmbParaBirimi: TComboBox
    Left = 85
    Top = 189
    Width = 117
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 2
    TabOrder = 8
    Text = 'TL'
    Items.Strings = (
      'Euro'
      'Sterlin'
      'TL')
  end
  object CmbKullanilanKart: TComboBox
    Left = 360
    Top = 133
    Width = 137
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 9
  end
  object CmbOdemeSekli: TComboBox
    Left = 85
    Top = 275
    Width = 117
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 10
  end
  object Qry1: TADOQuery
    Connection = Dm.Cnn1
    Parameters = <>
    Left = 359
    Top = 7
  end
end
