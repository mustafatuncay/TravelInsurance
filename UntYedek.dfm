object FrmYedekAlma: TFrmYedekAlma
  Left = 0
  Top = 0
  ClientHeight = 406
  ClientWidth = 862
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
    Left = 592
    Top = 94
    Width = 65
    Height = 13
    Caption = 'Gider T'#252'r'#252' :'
  end
  object Label10: TLabel
    Left = 631
    Top = 113
    Width = 43
    Height = 13
    Caption = 'Miktar :'
  end
  object Label3: TLabel
    Left = 639
    Top = 86
    Width = 35
    Height = 13
    Caption = 'Tarih :'
  end
  object Label4: TLabel
    Left = 616
    Top = 147
    Width = 58
    Height = 13
    Caption = 'A'#231#305'klama :'
  end
  object Gauge1: TGauge
    Left = 0
    Top = 328
    Width = 862
    Height = 31
    Align = alBottom
    ForeColor = clRed
    Progress = 0
    ExplicitLeft = -21
    ExplicitTop = 123
    ExplicitWidth = 511
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 4
      Width = 207
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'YEDEK ALMA'
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
    Top = 359
    Width = 862
    Height = 47
    Align = alBottom
    TabOrder = 1
    object BtnKaydet: TButton
      Left = 172
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Kaydet'
      TabOrder = 0
      OnClick = BtnKaydetClick
    end
    object BtnGuncelle: TButton
      Left = 253
      Top = 11
      Width = 75
      Height = 25
      Caption = 'G'#252'ncelle'
      TabOrder = 1
      OnClick = BtnGuncelleClick
    end
    object BtnTemizle: TButton
      Left = 334
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Temizle'
      TabOrder = 2
      OnClick = BtnTemizleClick
    end
    object BtnSil: TButton
      Left = 415
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Sil'
      TabOrder = 3
      OnClick = BtnSilClick
    end
  end
  object CmbGiderTuru: TComboBox
    Left = 663
    Top = 56
    Width = 200
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 2
  end
  object DtTarih: TDateTimePicker
    Left = 680
    Top = 83
    Width = 119
    Height = 21
    Date = 40837.631585856480000000
    Time = 40837.631585856480000000
    TabOrder = 3
  end
  object MemAciklama: TMemo
    Left = 680
    Top = 144
    Width = 153
    Height = 89
    TabOrder = 4
  end
  object CurrMiktar: TMoneyEdit
    Left = 680
    Top = 110
    Width = 121
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
    TabOrder = 5
    Version = '1.1.1.0'
  end
  object Button1: TButton
    Left = 8
    Top = 54
    Width = 113
    Height = 25
    Caption = 'Yedek Al'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 85
    Width = 75
    Height = 25
    Caption = 'Sms Yolla'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 108
    Width = 75
    Height = 25
    Caption = 'SMS Yolla 2'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 139
    Width = 75
    Height = 25
    Caption = 'SMS Yolla 3'
    TabOrder = 9
    OnClick = Button4Click
  end
  object FileListBox1: TFileListBox
    Left = 253
    Top = 200
    Width = 145
    Height = 97
    ItemHeight = 13
    TabOrder = 10
  end
  object Qry1: TADOQuery
    Connection = Dm.Cnn1
    Parameters = <>
    Left = 400
    Top = 72
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 296
  end
  object IdSMTP1: TIdSMTP
    AuthType = satSASL
    SASLMechanisms = <>
    Left = 360
  end
end
