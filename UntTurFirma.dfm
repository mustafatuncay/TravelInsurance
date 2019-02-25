object FrmTurFirma: TFrmTurFirma
  Left = 0
  Top = 0
  Caption = 'Tur Firma'
  ClientHeight = 394
  ClientWidth = 459
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
    Left = 31
    Top = 64
    Width = 59
    Height = 13
    Caption = 'Firma Ad'#305' :'
  end
  object Label3: TLabel
    Left = 44
    Top = 94
    Width = 48
    Height = 13
    Caption = 'Telefon :'
  end
  object Label6: TLabel
    Left = 53
    Top = 121
    Width = 39
    Height = 13
    Caption = 'Adres :'
  end
  object Label12: TLabel
    Left = 49
    Top = 148
    Width = 43
    Height = 13
    Caption = 'Email 1:'
  end
  object Label4: TLabel
    Left = 49
    Top = 175
    Width = 43
    Height = 13
    Caption = 'Email 2:'
  end
  object Label5: TLabel
    Left = 66
    Top = 202
    Width = 26
    Height = 13
    Caption = 'Fax :'
  end
  object Label7: TLabel
    Left = 67
    Top = 264
    Width = 25
    Height = 13
    Caption = 'Not :'
  end
  object Label8: TLabel
    Left = 63
    Top = 229
    Width = 29
    Height = 13
    Caption = 'Msn :'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 459
    Height = 41
    Align = alTop
    TabOrder = 8
    object Label1: TLabel
      Left = 16
      Top = 7
      Width = 265
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'TUR F'#304'RMALARI'
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
    Top = 347
    Width = 459
    Height = 47
    Align = alBottom
    TabOrder = 9
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
  object TxtFirmaAdi: TEdit
    Left = 96
    Top = 61
    Width = 309
    Height = 21
    TabOrder = 0
  end
  object TxtTelefon: TEdit
    Left = 96
    Top = 91
    Width = 309
    Height = 21
    TabOrder = 1
  end
  object TxtAdres: TEdit
    Left = 96
    Top = 118
    Width = 309
    Height = 21
    TabOrder = 2
  end
  object TxtEmail: TEdit
    Left = 96
    Top = 145
    Width = 309
    Height = 21
    TabOrder = 3
  end
  object TxtEmail2: TEdit
    Left = 98
    Top = 172
    Width = 309
    Height = 21
    TabOrder = 4
  end
  object TxtFax: TEdit
    Left = 96
    Top = 199
    Width = 309
    Height = 21
    TabOrder = 5
  end
  object MemNot: TMemo
    Left = 96
    Top = 264
    Width = 309
    Height = 57
    ScrollBars = ssVertical
    TabOrder = 7
  end
  object TxtMsn: TEdit
    Left = 96
    Top = 226
    Width = 309
    Height = 21
    TabOrder = 6
  end
  object Qry1: TADOQuery
    Connection = Dm.Cnn1
    Parameters = <>
    Left = 416
    Top = 8
  end
end
