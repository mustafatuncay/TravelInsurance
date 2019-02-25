object FrmOtelKayit: TFrmOtelKayit
  Left = 0
  Top = 0
  Caption = 'Otel Kay'#305't'
  ClientHeight = 430
  ClientWidth = 465
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
    Left = 42
    Top = 64
    Width = 50
    Height = 13
    Caption = 'Otel Ad'#305' :'
  end
  object Label3: TLabel
    Left = 44
    Top = 92
    Width = 48
    Height = 13
    Caption = 'Telefon :'
  end
  object Label6: TLabel
    Left = 53
    Top = 120
    Width = 39
    Height = 13
    Caption = 'Adres :'
  end
  object Label12: TLabel
    Left = 49
    Top = 149
    Width = 43
    Height = 13
    Caption = 'Email 1:'
  end
  object Label4: TLabel
    Left = 49
    Top = 177
    Width = 43
    Height = 13
    Caption = 'Email 2:'
  end
  object Label5: TLabel
    Left = 66
    Top = 206
    Width = 26
    Height = 13
    Caption = 'Fax :'
  end
  object Label7: TLabel
    Left = 67
    Top = 320
    Width = 25
    Height = 13
    Caption = 'Not :'
  end
  object Label8: TLabel
    Left = 63
    Top = 234
    Width = 29
    Height = 13
    Caption = 'Msn :'
  end
  object Label9: TLabel
    Left = 45
    Top = 263
    Width = 47
    Height = 13
    Caption = 'Cep Tel :'
  end
  object Label10: TLabel
    Left = 62
    Top = 291
    Width = 30
    Height = 13
    Caption = #304'lgli : '
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 465
    Height = 41
    Align = alTop
    TabOrder = 10
    object Label1: TLabel
      Left = 16
      Top = 7
      Width = 177
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'OTEL KAYIT'
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
    Top = 383
    Width = 465
    Height = 47
    Align = alBottom
    TabOrder = 11
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
  object TxtOtelAdi: TEdit
    Left = 96
    Top = 61
    Width = 309
    Height = 21
    TabOrder = 0
  end
  object TxtTelefon: TEdit
    Left = 96
    Top = 89
    Width = 309
    Height = 21
    TabOrder = 1
  end
  object TxtAdres: TEdit
    Left = 96
    Top = 117
    Width = 309
    Height = 21
    TabOrder = 2
  end
  object TxtEmail: TEdit
    Left = 96
    Top = 146
    Width = 309
    Height = 21
    TabOrder = 3
    OnDblClick = TxtEmailDblClick
  end
  object TxtEmail2: TEdit
    Left = 96
    Top = 174
    Width = 309
    Height = 21
    TabOrder = 4
    OnDblClick = TxtEmail2DblClick
  end
  object TxtFax: TEdit
    Left = 96
    Top = 203
    Width = 309
    Height = 21
    TabOrder = 5
  end
  object MemNot: TMemo
    Left = 96
    Top = 320
    Width = 309
    Height = 57
    ScrollBars = ssVertical
    TabOrder = 9
  end
  object TxtMsn: TEdit
    Left = 96
    Top = 231
    Width = 309
    Height = 21
    TabOrder = 6
  end
  object TxtCepTel: TEdit
    Left = 96
    Top = 260
    Width = 309
    Height = 21
    TabOrder = 7
  end
  object Txtilgili: TEdit
    Left = 96
    Top = 288
    Width = 309
    Height = 21
    TabOrder = 8
  end
  object Qry1: TADOQuery
    Connection = Dm.Cnn1
    Parameters = <>
    Left = 416
    Top = 8
  end
end
