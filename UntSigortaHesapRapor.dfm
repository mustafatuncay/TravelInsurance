object FrmSigortaHesapRapor: TFrmSigortaHesapRapor
  Left = 0
  Top = 0
  Caption = 'Sigorta Hesap Rapor'
  ClientHeight = 599
  ClientWidth = 1131
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1131
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 4
      Width = 337
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'S'#304'GORTA HESAP RAPOR'
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
    Top = 41
    Width = 1131
    Height = 128
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object CmbParaBirimi: TComboBox
      Left = 89
      Top = 61
      Width = 82
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'Euro'
        'Sterlin'
        'TL')
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 1129
      Height = 51
      Align = alTop
      Caption = 'M'#252#351'teri'
      TabOrder = 1
      object Label8: TLabel
        Left = 9
        Top = 24
        Width = 24
        Height = 13
        Caption = 'Ad'#305' :'
      end
      object Label9: TLabel
        Left = 218
        Top = 23
        Width = 44
        Height = 13
        Caption = 'Soyad'#305' :'
      end
      object Label2: TLabel
        Left = 429
        Top = 24
        Width = 47
        Height = 13
        Caption = 'Cep Tel :'
      end
      object Label10: TLabel
        Left = 611
        Top = 22
        Width = 39
        Height = 13
        Caption = 'Adres :'
      end
      object Image1: TImage
        Left = 1133
        Top = 13
        Width = 24
        Height = 24
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
          00180806000000E0773DF8000002F44944415478DAED945B48145118C7FFB3E3
          EED22A86EE6DBCAFDA452DCAECA1877A9010ED22411016844A6017A807892834
          108A92A01223C48820332C4D822E509044456F221128A6E6AAEDAE9A23AEEB5E
          9DD99D39CD0EB658BA9A977AEA83330373CEF9FDE67CE73B87C25F0EEABFE09F
          0B98574C457E7A4E75D7A8199F727BA955156C7A9B46B62766E06AEA0D94741E
          C1886D6AF556301B7ED956012B67C1D7CFE3AB2308C2AB779C438E2A57865BB8
          6F70BB79587B1C2B17FC0E1FF40DC1CF8B18EC9A00AF152B5724C86A4B250F77
          D5C1409B64B8D9338060DD0C75DBE1F6F2608FB1CBDFE4B8A70CB9535015FAF3
          7EB719344DC3DAEFC0E4B80F6C192BB3E547DC6B8608AC284F644BD945A54C33
          432A0B4A5114751CE5432731E2FD0E9532026356B7D45C21B82C605E30A46063
          0ECE269CC15DF63E5A3F7E082B619E3194E811C592BC3D381F7B0917ADE5E871
          F642AD54C33E3E8DE13E07C64E8CFD3297CA786322A7B614A2DDD9810BF15538
          DC791AF63ECFBC12439381E4EDCC464D423DEAD8EB78C7BE97E02A4C39790C77
          4F62B46C6CCE1C2AB32D8D6C4B314013A18637C08595185B8C246B6B12D798D6
          A87EE97882C7A32D50D211703AFDE05C7E741698E75D35C53C6748B23EC6BFD9
          A8534E0B7E04A48FBB63F6A2B6BF2124313C3090A46C2D9A331BD0E16A47BDAD
          1E0A85026E5700ACD9094BF148D87DA3827707FCA85E67D4C2A45B0B5E141190
          5ABE76BF2C4170EF154053CE6D4C4C7B71CD7245EA17E0F508B0DBDC1828B22D
          581472A72421948F42A6490F7D7424B840405A898842DD015823BEE0E09AA3B0
          733EDC1AAE819377C2E715E1B673E8291C5CB4E2420382D5A4F2D3C848D72152
          A39625021190A249C6A1D862D40EDF94E1D35EB260CEC30A66CA90A8041A99EB
          F5A0950A088228A52C004EE0A0A054125C4A8D8347F7BE813F3EA0730632AD0C
          89A49548DFA0959244208A0482D43C5EFF92E1F30A82617C642431D11A249AA2
          A53411B85CFCB2E06105C130DC33105D7CD44C0D6159F005053F25C1F7ECBB65
          A9F1036A34723C9442E56B0000000049454E44AE426082}
        Stretch = True
        Visible = False
      end
      object Image2: TImage
        Left = 1163
        Top = 13
        Width = 24
        Height = 24
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
          00180806000000E0773DF80000052A4944415478DA9556596F1357183D77C68E
          3DB663C78E770742482190408020D44AA8AA4425A24640E9431F5A411FDABFD5
          F6813E542D45A24DCBD28856AAC44337A001D290346475E225B6335E623B9E99
          AFDFCCB8882D14AE75254BBEF79CEF9CEF7C3316E0B59ED84D52A80BC2EB8151
          28C2A8D511C9CC0BBCC2CAC7FB48F22A90BA4375AAD514A3A822BCF650885C72
          37398F1C807BEC4D88A00FFAEC0A1A976F404FAF219A5B7C29925CB497E45402
          EEB36F43DE9302152A685CBB89D6ED7B10F9A11152CE8F415009A46E404AF582
          B614D42F8C97B44C3618CFBE9824C3E08E448C948F4E0BD15187915E82080440
          529031AE40E48E1CD394770EC95458060CC69204573108D2FDA87EFA4DC52897
          3B93DB90A46DF0AAF7FC199F59A0FECF1463106310BB9144FDDA5D5DA47B07C8
          3D9C40478F0764F02DE203FC457E6D3F34D589DAD7574B9AAA0677E6979F2059
          0AEF20672A51F29D3B15948C36B890780B08594273268FC6541E6231B68B8453
          22653821DC3D9D8C4D6D1262254368A9322A97AE334939D8975BB248E6233BC9
          198F95FCE7C682B2A1429FB96F29B7C1051ACB15D4EF66402D830992BB856E90
          213924780F44E04AF96D1273C3543208430E61E3ABEBF5567A5531899DA9A4DE
          F5E1982C6BEBD066ECCA85248198A3FE4F11F539EEA7CE7725213D923D6B2A71
          48D43914114AB2F3311282837BA2B9C2A8FCFC07A8D1847FF438E4D63A278E2B
          07DBC2969840D5D9226A73454B4C7F66C1C27EC2D7699BC408EC0B4B9EA4B76D
          972984ABE174497D03EC8280BE380B7DF9A15DB910168A3AB781DA7CC9021C68
          833F4360AEFB9C0CB05DC181107C711F631B6D121DC2E3B37CA65A850B97ADDB
          264179B10CF5E18655F9E063E0CF2530D7648C49246174EF0D49BE88C7EAB9B5
          98C45A26382C2E54F335141E94AC2286B30BCFE06D3B447F9A4971C9943C1811
          4EC561DBF5D44DE2AEA6FFCAA259D9C2D1F5E5E7626D4BF06B770F29A918F5EC
          0D08A959E102A5270FF0AC08C58B9599326A2B39BC5E587979829BC104B97B52
          C68E936F48AEA57BE069665B9E26E06975B9D0EC1BC6CAC46F68ACAEE27829F3
          FF16FD128C913B9140EF9913F0E417A12DCCB53D273B311636D9570D8D23BC1F
          555F0C0B17AF624B2DE3AD8DCCF64DFE89C19544CCE87F6F54F26417D13287C8
          E1B4C1F9A3EB86754EE6DC13DA3DE1DE38060FA224F9B1383E8156B982138F29
          79F465A22B6A564E7BCE8E0A5F318DADC9496BFCCDAACDC28BE526D6D637ADB3
          89B00721BFABFD4461728EB273F8300A4E3FE6BF9B40B3AC627423670FDA9550
          5C40D30D2511C7FE3327E12DAEA13579A73DFE36419EC11772556205A2AD8076
          457D226291909530C14D7730891A8862F6871BA8AF65583D3F2CC6FD11B6254E
          83A74F8ACEF4025AD37FDB01E72DF3CE56EB98CBD748E74C9E2ADAD2BF0FC589
          7FA3FE8857C47C0AF4F6C3D1B4AB63F810CAD124A6C67FB448C4787C270DBD3B
          86F866198D5BB7ECB4308C099EA935F0A058E569269C6D4BFE6F5D664B255638
          10F221EE75B749EC61748F1C45C6E3C7FD6FF985737D60888EF12B533038715A
          4C4B24DEABF506A6372AD018FC7D75FDB971BE1808938349F6757522A9B85900
          B57BA2834646F0FBED7BBAB8144DD1E1703762CD0634C97E2AAE341A982A5749
          635B3E28175EF8CAFCD2DF4D0EB66BD0EF133D6EB725C2C14DCFBADCB8B35E80
          B8D019A280C3817D1E0FBCB28CB5E616E6366B68F1C1F395E24BBDF4BF600C33
          CCFD1E2F12AE0ED4741DD39B9B5035CD8EE9679E007570F52E4ECE26CB33B88E
          8F6BEA2BFD6DF9DC1B2053BF876D6E72A2B658C5279BAAF81728C276850B6912
          BA0000000049454E44AE426082}
        Stretch = True
        Visible = False
      end
      object CmbAdi: TComboBox
        Left = 39
        Top = 21
        Width = 172
        Height = 21
        AutoCompleteDelay = 50000
        Style = csDropDownList
        CharCase = ecUpperCase
        DropDownCount = 20
        ItemHeight = 13
        TabOrder = 0
        OnChange = CmbAdiChange
      end
      object CmbSoyadi: TComboBox
        Left = 263
        Top = 21
        Width = 160
        Height = 21
        AutoCompleteDelay = 50000
        Style = csDropDownList
        CharCase = ecUpperCase
        DropDownCount = 20
        ItemHeight = 13
        TabOrder = 1
        OnChange = CmbSoyadiChange
      end
      object CmbCepTel1: TComboBox
        Left = 480
        Top = 21
        Width = 123
        Height = 21
        AutoCompleteDelay = 50000
        Style = csDropDownList
        DropDownCount = 20
        ItemHeight = 13
        TabOrder = 2
        OnChange = CmbCepTel1Change
      end
      object CmbAdres: TComboBox
        Left = 656
        Top = 21
        Width = 265
        Height = 21
        AutoCompleteDelay = 50000
        Style = csDropDownList
        DropDownCount = 20
        ItemHeight = 13
        TabOrder = 3
        OnChange = CmbAdresChange
      end
      object ChkSec: TCheckBox
        Left = 284
        Top = -2
        Width = 37
        Height = 17
        Caption = 'Se'#231
        Checked = True
        State = cbChecked
        TabOrder = 4
        Visible = False
      end
      object ChkMusteri: TCheckBox
        Left = 52
        Top = -2
        Width = 17
        Height = 17
        TabOrder = 5
      end
    end
    object BtnListele: TButton
      Left = 8
      Top = 97
      Width = 62
      Height = 25
      Caption = 'Listele'
      TabOrder = 2
      OnClick = BtnListeleClick
    end
    object Button2: TButton
      Left = 89
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Yazd'#305'r'
      TabOrder = 3
      OnClick = Button2Click
    end
    object CmbBakiye: TComboBox
      Left = 767
      Top = 63
      Width = 152
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = 'Bakiyesi Ekside Olanlar'
      Items.Strings = (
        'Bakiyesi Ekside Olanlar'
        'Bakiyesi Art'#305'da Olanlar')
    end
    object ChkParaBirimi: TCheckBox
      Left = 4
      Top = 63
      Width = 79
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Para Birimi'
      TabOrder = 5
    end
    object Button1: TButton
      Left = 1024
      Top = 58
      Width = 145
      Height = 25
      Caption = #304'simleri Toparla '
      TabOrder = 6
      Visible = False
      OnClick = Button1Click
    end
    object ChkKayitTarihi: TCheckBox
      Left = 184
      Top = 64
      Width = 81
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Kay'#305't Tarihi'
      TabOrder = 7
    end
    object DtKayit1: TDateTimePicker
      Left = 269
      Top = 63
      Width = 93
      Height = 21
      Date = 40838.452489490740000000
      Time = 40838.452489490740000000
      TabOrder = 8
    end
    object DtKayit2: TDateTimePicker
      Left = 368
      Top = 63
      Width = 93
      Height = 21
      Date = 40838.452489490740000000
      Time = 40838.452489490740000000
      TabOrder = 9
    end
    object ChkOdeme: TCheckBox
      Left = 464
      Top = 67
      Width = 91
      Height = 17
      Alignment = taLeftJustify
      Caption = #214'deme Tarihi'
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
    object DtOdeme1: TDateTimePicker
      Left = 560
      Top = 64
      Width = 93
      Height = 21
      Date = 40838.452489490740000000
      Time = 40838.452489490740000000
      TabOrder = 11
    end
    object DtOdeme2: TDateTimePicker
      Left = 658
      Top = 64
      Width = 93
      Height = 21
      Date = 40838.452489490740000000
      Time = 40838.452489490740000000
      TabOrder = 12
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 169
    Width = 1131
    Height = 430
    ActivePage = Detay
    Align = alClient
    TabOrder = 2
    OnChange = PageControl1Change
    object Ozet: TTabSheet
      Caption = 'Ozet'
      object AdvListe: TAdvStringGrid
        Left = 0
        Top = 0
        Width = 1123
        Height = 402
        Cursor = crDefault
        Align = alClient
        ColCount = 7
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          'Ad'#305
          'Soyad'#305
          'Para Birimi'
          'Bor'#231
          'Alacak'
          'Bakiye')
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
        FilterDropDown.TextChecked = 'Checked'
        FilterDropDown.TextUnChecked = 'Unchecked'
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
        MouseActions.DisjunctRowSelect = True
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
        SearchFooter.HintFindNext = 'Find next occurrence'
        SearchFooter.HintFindPrev = 'Find previous occurrence'
        SearchFooter.HintHighlight = 'Highlight occurrences'
        SearchFooter.MatchCaseCaption = 'Match case'
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.2.8.0'
        ColWidths = (
          40
          158
          156
          79
          85
          84
          88)
      end
    end
    object Detay: TTabSheet
      Caption = 'Detay'
      ImageIndex = 1
      object AdvListe2: TAdvStringGrid
        Left = 0
        Top = 0
        Width = 1123
        Height = 402
        Cursor = crDefault
        Align = alClient
        ColCount = 9
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          'Kay'#305't Tarihi'
          'OdemeTarihi'
          'MusteriAdi'
          'MusteriSoyadi'
          'Aciklama'
          'Borc'
          'Alacak'
          'ParaBirimi')
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
        FilterDropDown.TextChecked = 'Checked'
        FilterDropDown.TextUnChecked = 'Unchecked'
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
        MouseActions.DisjunctRowSelect = True
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
        SearchFooter.HintFindNext = 'Find next occurrence'
        SearchFooter.HintFindPrev = 'Find previous occurrence'
        SearchFooter.HintHighlight = 'Highlight occurrences'
        SearchFooter.MatchCaseCaption = 'Match case'
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.2.8.0'
        ColWidths = (
          40
          84
          89
          133
          119
          319
          88
          78
          67)
      end
    end
  end
  object Qry1: TADOQuery
    Connection = Dm.Cnn1
    Parameters = <>
    Left = 592
    Top = 8
  end
  object Qry2: TADOQuery
    Connection = Dm.Cnn1
    Parameters = <>
    Left = 656
    Top = 8
  end
  object AdvPreview: TAdvPreviewDialog
    CloseAfterPrint = True
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
    PreviewCenter = True
    ShowMaximized = True
    Left = 840
    Top = 48
  end
end
