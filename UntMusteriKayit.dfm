object FrmMusteriKayit: TFrmMusteriKayit
  Left = 0
  Top = 0
  Caption = 'M'#252#351'teri Kay'#305't'
  ClientHeight = 368
  ClientWidth = 623
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
  object Label2: TLabel
    Left = 58
    Top = 88
    Width = 24
    Height = 13
    Caption = 'Ad'#305' :'
  end
  object Label3: TLabel
    Left = 38
    Top = 118
    Width = 44
    Height = 13
    Caption = 'Soyad'#305' :'
  end
  object Label4: TLabel
    Left = 23
    Top = 212
    Width = 59
    Height = 13
    Caption = 'Yolcu Tipi :'
  end
  object Label5: TLabel
    Left = 35
    Top = 242
    Width = 47
    Height = 13
    Caption = 'Uyru'#287'u :'
  end
  object Label6: TLabel
    Left = 1
    Top = 181
    Width = 81
    Height = 13
    Caption = 'Do'#287'um Tarihi :'
  end
  object Label7: TLabel
    Left = 332
    Top = 53
    Width = 54
    Height = 13
    Caption = 'Cep Tel1 :'
  end
  object Label8: TLabel
    Left = 332
    Top = 85
    Width = 54
    Height = 13
    Caption = 'Cep Tel2 :'
  end
  object Label9: TLabel
    Left = 349
    Top = 117
    Width = 37
    Height = 13
    Caption = #304#351' Tel :'
  end
  object Label10: TLabel
    Left = 347
    Top = 149
    Width = 39
    Height = 13
    Caption = 'Ev Tel :'
  end
  object Label11: TLabel
    Left = 347
    Top = 181
    Width = 39
    Height = 13
    Caption = 'Adres :'
  end
  object Label12: TLabel
    Left = 350
    Top = 213
    Width = 36
    Height = 13
    Caption = 'Email :'
  end
  object Label13: TLabel
    Left = 9
    Top = 53
    Width = 78
    Height = 13
    Caption = 'M'#252#351'teri T'#252'r'#252' :'
  end
  object Label14: TLabel
    Left = 25
    Top = 145
    Width = 57
    Height = 13
    Caption = 'Kimlik No :'
  end
  object Label15: TLabel
    Left = 347
    Top = 265
    Width = 40
    Height = 13
    Caption = 'Notlar :'
  end
  object Label16: TLabel
    Left = 360
    Top = 240
    Width = 26
    Height = 13
    Caption = 'Fax :'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 623
    Height = 41
    Align = alTop
    TabOrder = 15
    object Label1: TLabel
      Left = 16
      Top = 7
      Width = 312
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'M'#220#350'TER'#304' / '#350#304'RKET KAYIT'
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
    Top = 321
    Width = 623
    Height = 47
    Align = alBottom
    TabOrder = 16
    object BtnKaydet: TButton
      Left = 288
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Kaydet'
      TabOrder = 0
      OnClick = BtnKaydetClick
    end
    object BtnGuncelle: TButton
      Left = 369
      Top = 11
      Width = 75
      Height = 25
      Caption = 'G'#252'ncelle'
      TabOrder = 1
      OnClick = BtnGuncelleClick
    end
    object BtnTemizle: TButton
      Left = 450
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Temizle'
      TabOrder = 2
      OnClick = BtnTemizleClick
    end
    object BtnSil: TButton
      Left = 531
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Sil'
      TabOrder = 3
      OnClick = BtnSilClick
    end
  end
  object TxtAdi: TEdit
    Left = 93
    Top = 82
    Width = 214
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object TxtSoyadi: TEdit
    Left = 93
    Top = 114
    Width = 214
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object CmbYolcuTipi: TComboBox
    Left = 93
    Top = 210
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'Yeti'#351'kin'
      'Asker'
      #214#287'renci'
      #199'ocuk'
      'Bebek')
  end
  object CmbUyruk: TComboBox
    Left = 93
    Top = 243
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'KKTC'
      'TC'
      'Diger')
  end
  object TxtCepTel1: TEdit
    Left = 392
    Top = 50
    Width = 214
    Height = 21
    TabOrder = 7
  end
  object TxtCepTel2: TEdit
    Left = 392
    Top = 82
    Width = 214
    Height = 21
    TabOrder = 8
  end
  object TxtisTel: TEdit
    Left = 392
    Top = 119
    Width = 214
    Height = 21
    TabOrder = 9
  end
  object TxtEvTel: TEdit
    Left = 392
    Top = 146
    Width = 214
    Height = 21
    TabOrder = 10
  end
  object TxtAdres: TEdit
    Left = 392
    Top = 178
    Width = 214
    Height = 21
    TabOrder = 11
  end
  object TxtEmail: TEdit
    Left = 392
    Top = 210
    Width = 214
    Height = 21
    TabOrder = 12
  end
  object DtDogumTarihi: TDateTimePicker
    Left = 93
    Top = 178
    Width = 145
    Height = 21
    Date = 40834.551424201390000000
    Time = 40834.551424201390000000
    TabOrder = 4
  end
  object CmbMusteriTuru: TComboBox
    Left = 93
    Top = 50
    Width = 214
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 2
    TabOrder = 0
    Text = 'Genel M'#252#351'teri'
    Items.Strings = (
      'Sigorta M'#252#351'terisi'
      'Turizm M'#252#351'terisi'
      'Genel M'#252#351'teri')
  end
  object TxtKimlikNo: TEdit
    Left = 93
    Top = 146
    Width = 214
    Height = 21
    TabOrder = 3
  end
  object MemNotlar: TMemo
    Left = 392
    Top = 265
    Width = 214
    Height = 54
    ScrollBars = ssVertical
    TabOrder = 14
  end
  object TxtFax: TEdit
    Left = 392
    Top = 237
    Width = 214
    Height = 21
    TabOrder = 13
  end
  object TxtAdi2: TEdit
    Left = 38
    Top = 270
    Width = 214
    Height = 21
    TabOrder = 17
    Visible = False
  end
  object TxtSoyadi2: TEdit
    Left = 38
    Top = 295
    Width = 214
    Height = 21
    TabOrder = 18
    Visible = False
  end
  object Qry1: TADOQuery
    Connection = Dm.Cnn1
    Parameters = <>
    Left = 416
    Top = 8
  end
end
