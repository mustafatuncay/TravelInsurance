object FrmSigortaislemleri: TFrmSigortaislemleri
  Left = 0
  Top = 0
  Caption = 'Sigorta '#304#351'lemleri'
  ClientHeight = 650
  ClientWidth = 1146
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1146
    Height = 36
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 4
      Width = 249
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'S'#304'GORTA '#304#350'LEMLER'#304
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 87
    Width = 1146
    Height = 563
    Align = alClient
    BevelOuter = bvLowered
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object Label16: TLabel
      Left = 4
      Top = 156
      Width = 89
      Height = 13
      Caption = 'Ba'#351'lama Tarihi :'
    end
    object Label12: TLabel
      Left = 15
      Top = 10
      Width = 76
      Height = 13
      Caption = 'Sigorta T'#252'r'#252' :'
    end
    object Label14: TLabel
      Left = 28
      Top = 181
      Width = 65
      Height = 13
      Caption = 'Biti'#351' Tarihi :'
    end
    object Label20: TLabel
      Left = 37
      Top = 62
      Width = 56
      Height = 13
      Caption = 'Poli'#231'e No :'
    end
    object Label23: TLabel
      Left = 24
      Top = 30
      Width = 67
      Height = 13
      Caption = 'Para Birimi :'
    end
    object Label4: TLabel
      Left = 8
      Top = 132
      Width = 85
      Height = 13
      Caption = 'Sigorta S'#252'resi :'
    end
    object Label25: TLabel
      Left = 175
      Top = 132
      Width = 15
      Height = 13
      Caption = 'Ay'
    end
    object Label27: TLabel
      Left = 908
      Top = 6
      Width = 40
      Height = 13
      Caption = 'Notlar :'
    end
    object Label28: TLabel
      Left = 27
      Top = 108
      Width = 66
      Height = 13
      Caption = 'M'#252#351'teri No :'
    end
    object Label33: TLabel
      Left = 18
      Top = 85
      Width = 75
      Height = 13
      Caption = 'Yenileme No :'
    end
    object Label42: TLabel
      Left = 45
      Top = 203
      Width = 47
      Height = 13
      Caption = 'Cep Tel :'
    end
    object DtTrafik1: TDateTimePicker
      Left = 96
      Top = 153
      Width = 92
      Height = 21
      Date = 40935.693603287040000000
      Time = 40935.693603287040000000
      TabOrder = 6
    end
    object DtTrafik2: TDateTimePicker
      Left = 96
      Top = 177
      Width = 92
      Height = 21
      Date = 40935.693603287040000000
      Time = 40935.693603287040000000
      TabOrder = 8
    end
    object DtsTrafik1: TDateTimePicker
      Left = 195
      Top = 153
      Width = 72
      Height = 21
      Date = 40935.693603287040000000
      Time = 40935.693603287040000000
      Kind = dtkTime
      TabOrder = 7
    end
    object DtsTrafik2: TDateTimePicker
      Left = 195
      Top = 177
      Width = 72
      Height = 21
      Date = 40935.693603287040000000
      Time = 40935.693603287040000000
      Kind = dtkTime
      TabOrder = 9
    end
    object CmbSigortaTuru: TComboBox
      Left = 94
      Top = 4
      Width = 165
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = CmbSigortaTuruChange
      Items.Strings = (
        'TRAF'#304'K S'#304'GORTASI'
        'KASKO S'#304'GORTASI'
        'SEYAHAT S'#304'GORTASI'
        'EV S'#304'GORTASI'
        #304#350'YER'#304' S'#304'GORTASI'
        'ANADOLU HAYAT'
        'SAGLIK SIGORTASI'
        'FERDI KAZA SIGORTASI'
        'TEKNE SIGORTASI'
        'DIGER SIGORTALAR')
    end
    object TxtPoliceNo: TEdit
      Left = 96
      Top = 59
      Width = 168
      Height = 21
      TabOrder = 2
    end
    object GroupBox2: TGroupBox
      Left = 4
      Top = 253
      Width = 263
      Height = 304
      Caption = 'TAKS'#304'TLER'
      TabOrder = 10
      object Label7: TLabel
        Left = 128
        Top = 14
        Width = 88
        Height = 13
        Caption = 'Toplam Miktar :'
      end
      object Label11: TLabel
        Left = 71
        Top = 16
        Width = 41
        Height = 13
        Caption = 'Taksit :'
      end
      object Label21: TLabel
        Left = 9
        Top = 17
        Width = 56
        Height = 13
        Caption = 'Y'#252'zdelik  :'
      end
      object CurrToplamMiktar: TMoneyEdit
        Left = 128
        Top = 33
        Width = 88
        Height = 21
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
        TabOrder = 2
        Version = '1.1.1.0'
        OnChange = CurrToplamMiktarChange
      end
      object AdvListe: TAdvStringGrid
        Left = 3
        Top = 56
        Width = 257
        Height = 215
        Cursor = crDefault
        Align = alCustom
        ColCount = 4
        DefaultRowHeight = 25
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing]
        PopupMenu = PopupMenu1
        ScrollBars = ssBoth
        TabOrder = 3
        HoverRowCells = [hcNormal, hcSelected]
        OnGetAlignment = AdvListeGetAlignment
        OnCanEditCell = AdvListeCanEditCell
        OnCellsChanged = AdvListeCellsChanged
        OnGetEditorType = AdvListeGetEditorType
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          'Tarih'
          'Miktar'
          ''
          #214'deme Tarihi'
          #214'deme A'#231#305'klama')
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
        FixedColWidth = 30
        FixedRowHeight = 25
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
        SearchFooter.HintFindNext = 'Find next occurrence'
        SearchFooter.HintFindPrev = 'Find previous occurrence'
        SearchFooter.HintHighlight = 'Highlight occurrences'
        SearchFooter.MatchCaseCaption = 'Match case'
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.8.7.0'
        ColWidths = (
          30
          96
          75
          3)
        RowHeights = (
          25
          25)
        object Image2: TImage
          Left = 89
          Top = 108
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
        object Image1: TImage
          Left = 89
          Top = 78
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
      end
      object CurrTaksit: TMoneyEdit
        Left = 71
        Top = 33
        Width = 51
        Height = 21
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
        TabOrder = 1
        Version = '1.1.1.0'
        OnChange = CurrTaksitChange
      end
      object BitBtn4: TBitBtn
        Left = 222
        Top = 33
        Width = 24
        Height = 21
        DoubleBuffered = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000CFCFCFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFECECECFFFFFF6B73FF3131B53131BD3131BD3131BD3131C631
          31C63131BD3131BD3131B53131B53131AD3131A56363FFFFFFFFFFFFFF3131C6
          3131DE3131EF3131F73131F73131EF3131F73131EF3131EF3131EF3131E73131
          DE3131C631319CFFFFFFFFFFFF3131D63131EF3139FF3139FF3139FF3139FF31
          39FF3139FF3139FF3139FF3139FF3131E73131CE3131ADFFFFFFFFFFFF3131E7
          3139FF3139FF3139FF3139FF3139FFFFFFFF848CFF3139FF3139FF3139FF3131
          F73131DE3131B5FFFFFFFFFFFF3131EF3139FF3139FF3139FF3139FF3139FFFF
          FFFF848CFF3139FF3139FF3139FF3139FF3131E73131BDFFFFFFFFFFFF3139FF
          3139FF3139FF3139FF3139FF3139FFFFFFFF848CFF3139FF3139FF3139FF3139
          FF3131EF3131C6FFFFFFFFFFFF3139FF3139FF848CFF848CFF848CFF848CFFFF
          FFFF848CFF848CFF848CFF848CFF3131F73131EF3131CEFFFFFFFFFFFF3139FF
          3139FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3131
          EF3131EF3131CEFFFFFFFFFFFF3139FF3942FF3942FF3139FF3139FF3139FFFF
          FFFF848CFF3139FF3139FF3131F73131EF3131EF3131CEFFFFFFFFFFFF3139FF
          5252FF5252FF3942FF3139FF3139FFFFFFFF848CFF3139FF3139FF3131F73131
          EF3131EF3131CEFFFFFFFFFFFF3942FF6B6BFF6363FF424AFF3942FF3942FFFF
          FFFF848CFF3139FF3139FF3139FF3131F73131F73131CEFFFFFFFFFFFF5252FF
          848CFF6B6BFF5252FF4A4AFF424AFFFFFFFF848CFF3139FF3139FF3139FF3139
          FF3131F73131CEFFFFFFFFFFFF6363FF9C9CFF848CFF6B6BFF6363FF5252FF4A
          4AFF424AFF3942FF3139FF3139FF3139FF3131F73131BDFFFFFFFFFFFFC6CEFF
          6363FF4A4AFF3942FF3139FF3139FF3139FF3139FF3139FF3139FF3139FF3131
          F73131DE7B84FFFFFFFFF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA}
        ParentDoubleBuffered = False
        TabOrder = 4
        OnClick = BitBtn4Click
      end
      object CurrGenelToplam: TMoneyEdit
        Left = 147
        Top = 277
        Width = 71
        Height = 21
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
        ReadOnly = True
        TabOrder = 5
        Version = '1.1.1.0'
      end
      object CurrYuzdelik: TMoneyEdit
        Left = 9
        Top = 33
        Width = 56
        Height = 21
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
        TabOrder = 0
        Version = '1.1.1.0'
      end
    end
    object GrbHesap: TGroupBox
      Left = 286
      Top = 269
      Width = 858
      Height = 292
      Caption = 'HESAPLAR'
      TabOrder = 12
      object Label2: TLabel
        Left = 5
        Top = 41
        Width = 89
        Height = 13
        Caption = #214'denen Miktar :'
      end
      object Label3: TLabel
        Left = 224
        Top = 16
        Width = 58
        Height = 13
        Caption = 'A'#231#305'klama :'
      end
      object Label22: TLabel
        Left = 12
        Top = 16
        Width = 81
        Height = 13
        Caption = #214'deme Tarihi :'
      end
      object Label24: TLabel
        Left = 241
        Top = 41
        Width = 41
        Height = 13
        Caption = 'Hesap :'
      end
      object Label47: TLabel
        Left = 378
        Top = 41
        Width = 67
        Height = 13
        Caption = 'Makbuz No :'
      end
      object AdvHesap: TAdvStringGrid
        Left = 3
        Top = 65
        Width = 822
        Height = 221
        Cursor = crDefault
        ColCount = 6
        RowCount = 2
        ScrollBars = ssBoth
        TabOrder = 5
        HoverRowCells = [hcNormal, hcSelected]
        OnGetAlignment = AdvHesapGetAlignment
        OnCanEditCell = AdvHesapCanEditCell
        OnGetEditorType = AdvHesapGetEditorType
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          'Tarih'
          'A'#231#305'klama'
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
        FilterDropDownClear = '(All)'
        FilterEdit.TypeNames.Strings = (
          'Starts with'
          'Ends with'
          'Contains'
          'Not contains'
          'Equal'
          'Not equal'
          'Clear')
        FixedColWidth = 30
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
        Version = '7.8.7.0'
        ColWidths = (
          30
          76
          431
          82
          77
          84)
      end
      object BitBtn1: TBitBtn
        Left = 581
        Top = 38
        Width = 24
        Height = 21
        DoubleBuffered = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000CFCFCFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFECECECFFFFFF6B73FF3131B53131BD3131BD3131BD3131C631
          31C63131BD3131BD3131B53131B53131AD3131A56363FFFFFFFFFFFFFF3131C6
          3131DE3131EF3131F73131F73131EF3131F73131EF3131EF3131EF3131E73131
          DE3131C631319CFFFFFFFFFFFF3131D63131EF3139FF3139FF3139FF3139FF31
          39FF3139FF3139FF3139FF3139FF3131E73131CE3131ADFFFFFFFFFFFF3131E7
          3139FF3139FF3139FF3139FF3139FFFFFFFF848CFF3139FF3139FF3139FF3131
          F73131DE3131B5FFFFFFFFFFFF3131EF3139FF3139FF3139FF3139FF3139FFFF
          FFFF848CFF3139FF3139FF3139FF3139FF3131E73131BDFFFFFFFFFFFF3139FF
          3139FF3139FF3139FF3139FF3139FFFFFFFF848CFF3139FF3139FF3139FF3139
          FF3131EF3131C6FFFFFFFFFFFF3139FF3139FF848CFF848CFF848CFF848CFFFF
          FFFF848CFF848CFF848CFF848CFF3131F73131EF3131CEFFFFFFFFFFFF3139FF
          3139FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3131
          EF3131EF3131CEFFFFFFFFFFFF3139FF3942FF3942FF3139FF3139FF3139FFFF
          FFFF848CFF3139FF3139FF3131F73131EF3131EF3131CEFFFFFFFFFFFF3139FF
          5252FF5252FF3942FF3139FF3139FFFFFFFF848CFF3139FF3139FF3131F73131
          EF3131EF3131CEFFFFFFFFFFFF3942FF6B6BFF6363FF424AFF3942FF3942FFFF
          FFFF848CFF3139FF3139FF3139FF3131F73131F73131CEFFFFFFFFFFFF5252FF
          848CFF6B6BFF5252FF4A4AFF424AFFFFFFFF848CFF3139FF3139FF3139FF3139
          FF3131F73131CEFFFFFFFFFFFF6363FF9C9CFF848CFF6B6BFF6363FF5252FF4A
          4AFF424AFF3942FF3139FF3139FF3139FF3131F73131BDFFFFFFFFFFFFC6CEFF
          6363FF4A4AFF3942FF3139FF3139FF3139FF3139FF3139FF3139FF3139FF3131
          F73131DE7B84FFFFFFFFF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA}
        ParentDoubleBuffered = False
        TabOrder = 4
        OnClick = BitBtn1Click
      end
      object DtOdemeTarihi: TDateTimePicker
        Left = 99
        Top = 13
        Width = 112
        Height = 21
        Date = 40977.745806354160000000
        Time = 40977.745806354160000000
        TabOrder = 0
      end
      object TxtOdemeAciklama: TEdit
        Left = 288
        Top = 14
        Width = 537
        Height = 21
        TabOrder = 2
      end
      object CmbHesap: TComboBox
        Left = 288
        Top = 38
        Width = 79
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 3
        Text = 'Alacak'
        OnChange = CmbSigortaTuruChange
        Items.Strings = (
          'Bor'#231
          'Alacak')
      end
      object CurrOdenenMiktar: TAdvMoneyEdit
        Left = 99
        Top = 38
        Width = 112
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
        Color = 8454143
        TabOrder = 1
        Text = '0.00'
        Visible = True
        Version = '1.1.2.6'
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
      object BitBtn6: TBitBtn
        Left = 789
        Top = 38
        Width = 24
        Height = 21
        DoubleBuffered = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFDFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFBFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD4B3FBAA67FCB87EFCB77DFC
          B77DFCB77DFCB77DFCB77DFCB97FFB9F55FFFFFFFFFFFFFFFFFFFFFFFFFEEEE1
          FCB172FB7F1DFEEBDAFCB376FCB77DFCB77DFCB77DFCB77DFCB77DFCB377FDC0
          90FCAB67FCC18FFFFFFFFFFFFFFB9E50FFFFFFFCA462FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB47EFFFFFFFDD9BCFCC99FFFFDFBFCAF70
          FFFFFFFCA869FDE1CCFCA768FCAC6FFCAC6FFCAC6FFCAC6FFCAC70FCA76AFCBE
          8FFFFFFFFFFFFFFCB885FFFEFCFCAE6EFFFFFFFCAB6CFCBE90FCC095FCC095FC
          C095FCC095FCC095FCC095FCC49BFB8E3CFFFFFFFFFFFFFCBA87FFFEFCFCAE6E
          FFFFFFFFFFFFFEF9F3FEF9F4FEF9F4FEF9F4FEF9F4FEF9F4FEF9F4FEF9F4FFFF
          FFFFFFFFFFFFFFFCBA87FFFEFCFCAE6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBB77CFFFFFFFFFFFFFCB987FFFEFCFBAE6C
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBC
          86FFFFFFFFFFFFFBB681FFFFFFFCB275FCB47FFCB986FCB887FCB785FCB785FC
          B785FCB785FCB785FCB785FCB786FCC091FCBA8AFB9E52FEF1E5FFFFFFFFFFFF
          FFFFFFFC9F58FFFFFFFEF9F4FEF9F4FEF9F4FEF9F4FEF9F4FEF9F4FFFFFFFCAD
          71FFF9F4FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCA462FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB27BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFCA360FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6
          7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBA462FEFBF7FEFAF5FEF9F4FE
          F9F4FEF9F4FEF9F4FFFBF6ECEFF1CF803EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFDFCFBB37AFCB785FCB785FCB785FCB785FCB785FCB785FEB784FFD8
          B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 6
        OnClick = BitBtn6Click
      end
      object TxtMakbuzNo: TEdit
        Left = 449
        Top = 38
        Width = 115
        Height = 21
        TabOrder = 7
      end
    end
    object CmbParaBirimi: TComboBox
      Left = 94
      Top = 27
      Width = 82
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        'Euro'
        'Sterlin'
        'TL')
    end
    object Panel2: TPanel
      Left = 273
      Top = 257
      Width = 869
      Height = 6
      Color = 14408667
      ParentBackground = False
      TabOrder = 13
    end
    object Panel7: TPanel
      Left = 273
      Top = 262
      Width = 7
      Height = 299
      Color = 14408667
      ParentBackground = False
      TabOrder = 14
    end
    object Panel3: TPanel
      Left = 286
      Top = 217
      Width = 337
      Height = 35
      Align = alCustom
      BevelKind = bkSoft
      TabOrder = 15
      object BtnKaydet: TButton
        Left = 5
        Top = 1
        Width = 75
        Height = 25
        Caption = 'Kaydet'
        TabOrder = 0
        OnClick = BtnKaydetClick
      end
      object BtnGuncelle: TButton
        Left = 86
        Top = 0
        Width = 75
        Height = 25
        Caption = 'G'#252'ncelle'
        TabOrder = 1
        OnClick = BtnGuncelleClick
      end
      object BtnTemizle: TButton
        Left = 167
        Top = 1
        Width = 75
        Height = 25
        Caption = 'Yeni Kay'#305't'
        TabOrder = 2
        OnClick = BtnTemizleClick
      end
      object BtnSil: TButton
        Left = 248
        Top = 1
        Width = 75
        Height = 25
        Caption = 'Sil'
        TabOrder = 3
        OnClick = BtnSilClick
      end
    end
    object CurrSigortaSuresi: TMoneyEdit
      Left = 96
      Top = 129
      Width = 71
      Height = 21
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
      TabOrder = 5
      Version = '1.1.1.0'
      OnKeyUp = CurrSigortaSuresiKeyUp
    end
    object MemNotlar: TMemo
      Left = 912
      Top = 25
      Width = 145
      Height = 171
      ScrollBars = ssVertical
      TabOrder = 11
    end
    object TxtMusteriNo: TEdit
      Left = 96
      Top = 105
      Width = 168
      Height = 21
      TabOrder = 4
    end
    object TxtYenilemeNo: TEdit
      Left = 96
      Top = 82
      Width = 168
      Height = 21
      TabOrder = 3
    end
    object Sayfalar: TAdvPageControl
      Left = 260
      Top = 8
      Width = 650
      Height = 206
      ActivePage = AnadoluHayat
      ActiveFont.Charset = DEFAULT_CHARSET
      ActiveFont.Color = clWindowText
      ActiveFont.Height = -11
      ActiveFont.Name = 'Tahoma'
      ActiveFont.Style = []
      Align = alCustom
      DoubleBuffered = True
      DefaultTextColor = clWhite
      DefaultTabColor = clWhite
      DefaultTabColorTo = clWhite
      ActiveColor = clWhite
      ActiveColorTo = clWhite
      TabBorderColor = clWhite
      TabSheetBorderColor = clWhite
      TabHoverColor = clWhite
      TabHoverColorTo = clWhite
      TabHoverBorder = clWhite
      TabBackGroundColor = clWhite
      TabMargin.RightMargin = 0
      TabOverlap = 0
      Version = '2.0.0.6'
      PersistPagesState.Location = plRegistry
      PersistPagesState.Enabled = False
      TabHeight = 1
      TabOrder = 16
      TabPosition = tpBottom
      object Diger: TAdvTabSheet
        Color = clWhite
        ColorTo = clNone
        TabColor = clWhite
        TabColorTo = clWhite
        TextColor = clWhite
        object Label87: TLabel
          Left = 85
          Top = 46
          Width = 24
          Height = 13
          Caption = 'Adi :'
        end
        object Label88: TLabel
          Left = 65
          Top = 70
          Width = 44
          Height = 13
          Caption = 'Soyadi :'
        end
        object Label89: TLabel
          Left = 52
          Top = 96
          Width = 57
          Height = 13
          Caption = 'Kimlik No :'
        end
        object Label91: TLabel
          Left = 33
          Top = 122
          Width = 76
          Height = 13
          Caption = 'Sigorta T'#252'r'#252' :'
        end
        object TxtDigerAdi: TEdit
          Left = 112
          Top = 43
          Width = 121
          Height = 21
          Color = clWhite
          TabOrder = 0
        end
        object TxtDigerSoyadi: TEdit
          Left = 112
          Top = 68
          Width = 121
          Height = 21
          Color = clWhite
          TabOrder = 1
        end
        object TxtDigerKimlikNo: TEdit
          Left = 112
          Top = 93
          Width = 121
          Height = 21
          Color = clWhite
          TabOrder = 2
        end
        object TxtDigerSigortaTuru: TEdit
          Left = 112
          Top = 118
          Width = 121
          Height = 21
          Color = clWhite
          TabOrder = 3
        end
      end
      object Evisyeri: TAdvTabSheet
        Color = clWhite
        ColorTo = clNone
        TabColor = clWhite
        TabColorTo = clWhite
        TextColor = clWhite
        object Label58: TLabel
          Left = 50
          Top = 62
          Width = 24
          Height = 13
          Caption = 'Adi :'
        end
        object Label59: TLabel
          Left = 30
          Top = 86
          Width = 44
          Height = 13
          Caption = 'Soyadi :'
        end
        object Label60: TLabel
          Left = 17
          Top = 112
          Width = 57
          Height = 13
          Caption = 'Kimlik No :'
        end
        object Label62: TLabel
          Left = 268
          Top = 60
          Width = 70
          Height = 13
          Caption = 'Bina De'#287'eri :'
        end
        object Label63: TLabel
          Left = 238
          Top = 84
          Width = 100
          Height = 13
          Caption = 'Demirba'#351' De'#287'eri :'
        end
        object Label64: TLabel
          Left = 235
          Top = 108
          Width = 103
          Height = 13
          Caption = 'Elektronik De'#287'eri :'
        end
        object Label65: TLabel
          Left = 216
          Top = 132
          Width = 122
          Height = 13
          Caption = 'Cam K'#305'r'#305'lmas'#305' De'#287'eri :'
        end
        object Label66: TLabel
          Left = 444
          Top = 49
          Width = 39
          Height = 13
          Caption = 'Adres :'
        end
        object Label67: TLabel
          Left = 14
          Top = 137
          Width = 60
          Height = 13
          Caption = #304#351'yeri Ad'#305' :'
        end
        object Label68: TLabel
          Left = 256
          Top = 156
          Width = 82
          Height = 13
          Caption = 'Emtea De'#287'eri :'
        end
        object Label69: TLabel
          Left = 17
          Top = 164
          Width = 91
          Height = 13
          Caption = 'Deprem De'#287'eri :'
        end
        object PnlX: TPanel
          Left = 34
          Top = 7
          Width = 487
          Height = 44
          BevelKind = bkSoft
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label17: TLabel
            Left = 2
            Top = 11
            Width = 82
            Height = 13
            Caption = 'Tanzim Tarihi :'
          end
          object Label19: TLabel
            Left = 218
            Top = 10
            Width = 35
            Height = 13
            Caption = 'S'#305'fat'#305' :'
          end
          object DtTanzim: TDateTimePicker
            Left = 90
            Top = 7
            Width = 111
            Height = 21
            Date = 40935.693603287040000000
            Time = 40935.693603287040000000
            TabOrder = 0
          end
          object CmbSifati: TComboBox
            Left = 259
            Top = 7
            Width = 111
            Height = 21
            ItemHeight = 13
            TabOrder = 1
            Items.Strings = (
              'K'#304'RACI'
              'MAL SAH'#304'B'#304)
          end
        end
        object TxtEvisAdi: TEdit
          Left = 79
          Top = 59
          Width = 121
          Height = 21
          Color = clWhite
          TabOrder = 1
        end
        object TxtEvisSoyadi: TEdit
          Left = 79
          Top = 84
          Width = 121
          Height = 21
          Color = clWhite
          TabOrder = 2
        end
        object TxtEvisKimlikNo: TEdit
          Left = 79
          Top = 109
          Width = 121
          Height = 21
          Color = clWhite
          TabOrder = 3
        end
        object CurrEvisBinaDegeri: TMoneyEdit
          Left = 342
          Top = 57
          Width = 88
          Height = 21
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
          Color = clWhite
          TabOrder = 4
          Version = '1.1.1.0'
        end
        object CurrEvisDemirbasDegeri: TMoneyEdit
          Left = 342
          Top = 81
          Width = 88
          Height = 21
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
          Color = clWhite
          TabOrder = 5
          Version = '1.1.1.0'
        end
        object CurrEvisElektronikDegeri: TMoneyEdit
          Left = 342
          Top = 105
          Width = 88
          Height = 21
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
          Color = clWhite
          TabOrder = 6
          Version = '1.1.1.0'
        end
        object CurrEvisCamKirilmasiDegeri: TMoneyEdit
          Left = 342
          Top = 129
          Width = 88
          Height = 21
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
          Color = clWhite
          TabOrder = 7
          Version = '1.1.1.0'
        end
        object MemEvisAdres: TMemo
          Left = 444
          Top = 68
          Width = 185
          Height = 65
          Color = clWhite
          TabOrder = 8
        end
        object TxtEvisisyeriAdi: TEdit
          Left = 79
          Top = 134
          Width = 121
          Height = 21
          Color = clWhite
          TabOrder = 9
        end
        object CurrEvisEmteaDegeri: TMoneyEdit
          Left = 342
          Top = 153
          Width = 88
          Height = 21
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
          Color = clWhite
          TabOrder = 10
          Version = '1.1.1.0'
        end
        object CurrEvisDepremDegeri: TMoneyEdit
          Left = 112
          Top = 161
          Width = 88
          Height = 21
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
          Color = clWhite
          TabOrder = 11
          Version = '1.1.1.0'
        end
        object CmbEvisKagir: TComboBox
          Left = 444
          Top = 140
          Width = 128
          Height = 21
          Color = clWhite
          ItemHeight = 13
          TabOrder = 12
          Items.Strings = (
            'Tam Kag'#305'r'
            'Yar'#305' Kag'#305'r')
        end
        object CmbEvisTur: TComboBox
          Left = 444
          Top = 165
          Width = 128
          Height = 21
          Color = clWhite
          ItemHeight = 13
          TabOrder = 13
          Items.Strings = (
            'Apartman'
            'M'#252'stakil')
        end
      end
      object TrafikKasko: TAdvTabSheet
        Color = clWhite
        ColorTo = clNone
        TabColor = clWhite
        TabColorTo = clWhite
        TextColor = clWhite
        object PnlTrafikKasko: TPanel
          Left = 11
          Top = 17
          Width = 631
          Height = 158
          BevelKind = bkSoft
          TabOrder = 0
          object Label6: TLabel
            Left = 6
            Top = 9
            Width = 96
            Height = 13
            Caption = 'Plaka Numaras'#305'  :'
          end
          object Label18: TLabel
            Left = 51
            Top = 35
            Width = 51
            Height = 13
            Caption = #304'mal Y'#305'l'#305' :'
          end
          object Label5: TLabel
            Left = 327
            Top = 35
            Width = 43
            Height = 13
            Caption = 'Modeli :'
          end
          object Label13: TLabel
            Left = 319
            Top = 8
            Width = 51
            Height = 13
            Caption = 'Markas'#305' :'
          end
          object Label26: TLabel
            Left = 273
            Top = 84
            Width = 97
            Height = 13
            Caption = 'Araban'#305'n De'#287'eri :'
          end
          object Label29: TLabel
            Left = 45
            Top = 59
            Width = 57
            Height = 13
            Caption = 'Motor No :'
          end
          object Label30: TLabel
            Left = 56
            Top = 84
            Width = 46
            Height = 13
            Caption = 'Sasi No :'
          end
          object Label31: TLabel
            Left = 332
            Top = 59
            Width = 38
            Height = 13
            Caption = 'Rengi :'
          end
          object Label32: TLabel
            Left = 31
            Top = 111
            Width = 71
            Height = 13
            Caption = 'Motor G'#252'c'#252' :'
          end
          object TxtTrafikPlaka: TEdit
            Left = 108
            Top = 7
            Width = 141
            Height = 21
            TabOrder = 0
          end
          object CmbTrafikimalyili: TComboBox
            Left = 108
            Top = 31
            Width = 83
            Height = 21
            ItemHeight = 13
            TabOrder = 1
            Items.Strings = (
              '2026'
              '2025'
              '2024'
              '2023'
              '2022'
              '2021'
              '2020'
              '2019'
              '2018'
              '2017'
              '2016'
              '2015'
              '2014'
              '2013'
              '2012'
              '2011'
              '2010'
              '2009'
              '2008'
              '2007'
              '2006'
              '2005'
              '2004'
              '2003'
              '2002'
              '2001'
              '2000'
              '1999'
              '1998'
              '1997'
              '1996'
              '1995'
              '1994'
              '1993'
              '1992'
              '1991'
              '1990'
              '1989'
              '1988'
              '1987'
              '1986'
              '1985'
              '1984'
              '1983'
              '1982'
              '1981'
              '1980'
              '1979'
              '1978'
              '1977'
              '1976'
              '1975'
              '1974')
          end
          object TxtTrafikModelNo: TEdit
            Left = 373
            Top = 30
            Width = 163
            Height = 21
            TabOrder = 6
          end
          object TxtMarka: TEdit
            Left = 372
            Top = 5
            Width = 163
            Height = 21
            TabOrder = 5
          end
          object CurrArabaDeger: TMoneyEdit
            Left = 372
            Top = 81
            Width = 93
            Height = 21
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
            TabOrder = 8
            Version = '1.1.1.0'
          end
          object CmbArabaDegerParaBirim: TComboBox
            Left = 471
            Top = 81
            Width = 64
            Height = 21
            ItemHeight = 13
            TabOrder = 9
            Items.Strings = (
              'Euro'
              'Sterlin'
              'TL'
              'Dollar')
          end
          object TxtMotorNo: TEdit
            Left = 108
            Top = 56
            Width = 141
            Height = 21
            TabOrder = 2
          end
          object TxtSasiNo: TEdit
            Left = 108
            Top = 81
            Width = 141
            Height = 21
            TabOrder = 3
          end
          object TxtRenk: TEdit
            Left = 373
            Top = 56
            Width = 163
            Height = 21
            TabOrder = 7
          end
          object TxtMotorGucu: TEdit
            Left = 108
            Top = 108
            Width = 141
            Height = 21
            TabOrder = 4
          end
        end
      end
      object Saglik: TAdvTabSheet
        Color = clWhite
        ColorTo = clNone
        TabColor = clWhite
        TabColorTo = clWhite
        TextColor = clWhite
        object PnlSaglikSigortasi: TPanel
          Left = 58
          Top = 20
          Width = 567
          Height = 157
          BevelKind = bkSoft
          TabOrder = 0
          object Label35: TLabel
            Left = 11
            Top = 6
            Width = 68
            Height = 13
            Caption = 'Paket T'#252'r'#252' :'
          end
          object Label38: TLabel
            Left = 274
            Top = 34
            Width = 61
            Height = 13
            Caption = 'Ki'#351'i Say'#305's'#305' :'
          end
          object Label36: TLabel
            Left = 205
            Top = 6
            Width = 81
            Height = 13
            Caption = 'Do'#287'um Tarihi :'
          end
          object CmbPaketTuru: TComboBox
            Left = 85
            Top = 3
            Width = 111
            Height = 21
            ItemHeight = 13
            TabOrder = 0
            Items.Strings = (
              '2012'
              '2011'
              '2010'
              '2009'
              '2008'
              '2007'
              '2006'
              '2005'
              '2004'
              '2003'
              '2002'
              '2001'
              '2000'
              '1999'
              '1998'
              '1997'
              '1996'
              '1995'
              '1994'
              '1993'
              '1992'
              '1991'
              '1990'
              '1989'
              '1988'
              '1987'
              '1986'
              '1985'
              '1984'
              '1983'
              '1982'
              '1981'
              '1980'
              '1979'
              '1978'
              '1977'
              '1976'
              '1975'
              '1974')
          end
          object CurrKisiSayisi: TMoneyEdit
            Left = 341
            Top = 31
            Width = 60
            Height = 21
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
            TabOrder = 1
            Version = '1.1.1.0'
          end
          object DTDogumTarihi: TDateTimePicker
            Left = 293
            Top = 3
            Width = 111
            Height = 21
            Date = 40935.693603287040000000
            Time = 40935.693603287040000000
            TabOrder = 2
          end
          object BitBtn3: TBitBtn
            Left = 11
            Top = 26
            Width = 30
            Height = 30
            DoubleBuffered = True
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A751C1A751C0B6F0F0B6F0F0B6F
              0D0B6F0D086B0B086B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A751C72D288
              22C34D22C34D22C24B22C24B1DAC3B086B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF1A751C6ED08421C04D21BE4C21BE4A21BE4A1CA839086B0BFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF1A751C6ED18421C04F21C04F21C04D21BE4C1CAA3B08
              6B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A751C6ED08621C25021C24F21C0
              4F21C04F1CAB3C086B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A751C6ED287
              1EC3531EC25221C25021C24F1CAD3E086B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF1A751C6FD58C21C55521C3531EC3531EC2521CAF3F086B0BFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF1A751C5CCB7C1FC6581FC65721C55521C3551BAE4208
              6B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2083291A751C
              1A751C1A751C1A751C1A751C1A751C1A751C086B0B5CCB7C1FC85B1FC65A1FC6
              581FC6581BAE42086B0B086B0B086B0B086B0B086B0B086B0B086B0B086B0B08
              6B0B278D3446CE781BB44D1BB44D1BB44D1BB44D1BB44D1BB44D1BB44D5CCB7C
              1FC95E1FC95D1FC85B1FC65A1BAE421BAE421BB44D1BB44D1BB44D1BB44D1BB4
              4D1BB44D1BAE4210801C28903555ED9F18D16D1ED36E1ED16D1ED16B1ED0691E
              D0681ECE661FCD631FCD621FCB601FC95E1FC95D1FC85B1FC65A1FC6581FC658
              1FC55721C55521C3531EC35321C04F12831D28933855F0A218D4711CD5731CD5
              711CD36E1ED16D1ED16B1ED0691ED0681ECE661FCD651FCD621FCB601FC95E1F
              C95D1FC85B1FC85B1FC6571FC6581FC55721C55521C04F12872029963B53F2A5
              17D8751CD8761CD6741CD5731CD5711CD36E1ED36D1ED16B1ED0691ED0681ECE
              661FCE651FCD631FCB601FCB5E1FC95D1FC85D1FC85B1FC65A1FC65821C04F12
              8B23299B3E4FF4A714DA7717DA7917D87718D77618D47118D57019D46F1BD370
              1ED36E1ED16B1ED0691ED0681ECE661DCD641CCC611BC95F1BC95D1BC75B1BC6
              5A1BC6581FC65A128E262B9E416CFFBD4CEFA34EF0A24FEE9F4FEE9E4FED9C51
              EB9B53E89A18D5701CD5711CD3701ED36E1ED16D1DCF681CCC6154E38F52E38D
              52E28B52E08952E08852DD8655E28A1E9832249E3C249E3C249E3C249E3C249E
              3C249E3C249E3C249E3C249E3C6EE5A01CD8761CD6731CD5711CD37019C35E12
              8C23128C23128C23128C23128C23128C23128C23128C23128C23FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E98326EE5A01BD9791CD9781CD8
              761CD67419C35E1E9832FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E98326DEAA6
              1BDC7E1BDB7C1BDB7B1BD9781BC8641E9832FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF1E983270ECA619E08319DE8119DC7E1BDB7C1BCB681E9832FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF1E983270ECA819E08419E08419E08319DE8119CF6D1E
              9832FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E98326FEEAA19E08419E08419E0
              8419E08419D2731E9832FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E98326EF0AA
              12DE7F12DE7F12DE7F12DE7F14D3701E9832FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF249E3C6EF0AC8AFFCE8AFFCE8AFFCE8AFFCE72F2AF249E3CFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF249E3C2CBB5331C15731C15731C15731C1572CBB5324
              9E3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentDoubleBuffered = False
            TabOrder = 3
            OnClick = BitBtn3Click
          end
          object BitBtn5: TBitBtn
            Left = 47
            Top = 26
            Width = 30
            Height = 30
            DoubleBuffered = True
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0100AF0301CD0000CA0000CA0000
              C90000C90000C80000C80000C80000C60000C60000C40000C40000C40000C300
              00C20000C20100C00100BF0200BE0300BD0200BC0200BD0000AD0C0CD96288FF
              274CFF2A4CFF294AFF2748FF2342FF223FFF1F3DFF1E3BFF1C36FF1A33FF1930
              FF172DFF1528FF1424FF1220FF111BFF1018FF0F14FF0E12FF0D0DFF0909FF05
              00CD1D1CE35E84FF2A4DFF2C4FFF2749FF2749FF2645FF2443FF233EFF203BFF
              1D39FF1C37FF1B33FF1830FF172DFF152AFF1426FF1323FF111EFF101BFF0F17
              FF0E14FF0E12FF0200DB534FF086A3FF3057FF2C50FF2C4FFF2B4EFF2A49FF27
              49FF2645FF2542FF233EFF203BFF1C39FF1D37FF1B36FF1830FF172DFF152AFF
              1426FF1323FF111EFF101BFF1019FF0300E54D4AF5A2BAFF7994FF5F7EFF456A
              FF3257FF294EFF284CFF2847FF2547FF2545FF2441FF2340FF203BFF1C39FF1D
              37FF1B36FF1830FF172EFF152BFF1426FF1323FF1221FF0200EE4E4BFAA0BAFF
              7594FF7897FF7995FF7594FF6B8BFF6080FF4A6CFF4467FF3356FF3453FF2041
              FF203DFF1E3BFF1B36FF1934FF1832FF1630FF132BFF1229FF1226FF1025FF00
              00F74F4CFF9FB9FF7292FF7494FF7594FF7493FF7491FF6E8FFF6F8EFF6D8CFF
              6C8BFF6B89FF6B87FF6786FF6683FF647FFF637DFF6079FF5F78FF5D75FF5A72
              FF556EFF5771FF3F3EFF5755FFB4CCFF9EB8FFA0B9FFA0B9FFA0B9FF9FB7FF9F
              B7FF9AB5FF9BB4FF98B3FF97B1FF94ADFF93ABFF92AAFF91A8FF8FA6FF8EA6FF
              8C9FFF8A9FFF889EFF889DFF86A0FF514EFF463EFF5D5BFF5B58FF5B58FF5B58
              FF5B58FF5B58FF5B58FF5C58FF5C58FF5C58FF5B58FF5B58FF5B58FF5B58FF5A
              58FF5A58FF5A58FF5B58FF5B56FF5B56FF5A56FF5C58FF463EFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentDoubleBuffered = False
            TabOrder = 4
            OnClick = BitBtn5Click
          end
          object AdvKisiler: TAdvStringGrid
            Left = 11
            Top = 58
            Width = 462
            Height = 85
            Cursor = crDefault
            ColCount = 4
            FixedCols = 0
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
            ScrollBars = ssBoth
            TabOrder = 5
            HoverRowCells = [hcNormal, hcSelected]
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ColumnHeaders.Strings = (
              'T'#252'r'#252
              'Ad'#305
              'Soyad'#305
              'Do'#287'um Tarihi')
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
            FixedColWidth = 51
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
              51
              154
              138
              91)
            RowHeights = (
              22
              22)
          end
        end
      end
      object AnadoluHayat: TAdvTabSheet
        Color = clWhite
        ColorTo = clNone
        TabColor = clWhite
        TabColorTo = clWhite
        TextColor = clWhite
        object PnlAnadoluHayat: TPanel
          Left = 17
          Top = 16
          Width = 634
          Height = 165
          BevelKind = bkSoft
          TabOrder = 0
          object Label34: TLabel
            Left = 13
            Top = 10
            Width = 86
            Height = 13
            Caption = 'Sigorta T'#252'r'#252' 2 :'
          end
          object Label39: TLabel
            Left = 18
            Top = 34
            Width = 81
            Height = 13
            Caption = 'Do'#287'um Tarihi :'
          end
          object Label37: TLabel
            Left = 48
            Top = 56
            Width = 51
            Height = 13
            Caption = 'Cinsiyet :'
          end
          object Label40: TLabel
            Left = 8
            Top = 80
            Width = 91
            Height = 13
            Caption = #214'denecek Prim :'
          end
          object Label41: TLabel
            Left = 35
            Top = 104
            Width = 64
            Height = 13
            Caption = 'Para Primi :'
          end
          object Label70: TLabel
            Left = 342
            Top = 11
            Width = 88
            Height = 13
            Caption = 'Sigorta Ettiren :'
          end
          object Label71: TLabel
            Left = 356
            Top = 35
            Width = 74
            Height = 13
            Caption = 'Sigortal'#305' Ad'#305' :'
          end
          object Label72: TLabel
            Left = 336
            Top = 57
            Width = 94
            Height = 13
            Caption = 'Sigortal'#305' Soyad'#305' :'
          end
          object Label74: TLabel
            Left = 384
            Top = 82
            Width = 39
            Height = 13
            Caption = 'Adres :'
          end
          object Label75: TLabel
            Left = 376
            Top = 130
            Width = 112
            Height = 13
            Caption = 'Ka'#231' Y'#305'l Para Alacak :'
          end
          object CmbSigortaTuru2: TComboBox
            Left = 105
            Top = 7
            Width = 200
            Height = 21
            ItemHeight = 13
            TabOrder = 0
            Items.Strings = (
              'Se'#231'enekli Gelece'#287'in Sigortas'#305
              'Herkese Hayat Sigortas'#305)
          end
          object DtDogum: TDateTimePicker
            Left = 105
            Top = 30
            Width = 111
            Height = 21
            Date = 40935.693603287040000000
            Time = 40935.693603287040000000
            TabOrder = 1
          end
          object CmbCinsiyet: TComboBox
            Left = 105
            Top = 53
            Width = 111
            Height = 21
            ItemHeight = 13
            TabOrder = 2
            Items.Strings = (
              'Erkek'
              'Kad'#305'n')
          end
          object CurrOdenecekPrim: TMoneyEdit
            Left = 105
            Top = 77
            Width = 111
            Height = 21
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
            TabOrder = 3
            Version = '1.1.1.0'
            OnKeyUp = CurrSigortaSuresiKeyUp
          end
          object CmbParaBirimi2: TComboBox
            Left = 105
            Top = 101
            Width = 111
            Height = 21
            ItemHeight = 13
            TabOrder = 4
            OnChange = CmbSigortaTuruChange
            Items.Strings = (
              'Euro'
              'Sterlin'
              'TL')
          end
          object TxtSigortaEttiren: TEdit
            Left = 436
            Top = 8
            Width = 162
            Height = 21
            Color = clWhite
            TabOrder = 5
          end
          object TxtSigortaliAdi: TEdit
            Left = 436
            Top = 32
            Width = 162
            Height = 21
            Color = clWhite
            TabOrder = 6
          end
          object TxtSigortaliSoyadi: TEdit
            Left = 436
            Top = 54
            Width = 162
            Height = 21
            Color = clWhite
            TabOrder = 7
          end
          object MemAhAdres: TMemo
            Left = 437
            Top = 82
            Width = 159
            Height = 41
            Color = clWhite
            ScrollBars = ssVertical
            TabOrder = 8
          end
          object CurrKacYilParaAlacak: TMoneyEdit
            Left = 494
            Top = 127
            Width = 64
            Height = 21
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
            Color = clWhite
            TabOrder = 9
            Version = '1.1.1.0'
          end
        end
      end
      object Tekne: TAdvTabSheet
        Color = clWhite
        ColorTo = clNone
        TabColor = clWhite
        TabColorTo = clWhite
        TextColor = clWhite
        object PnlTekneSigortasi: TPanel
          Left = 14
          Top = 1
          Width = 629
          Height = 193
          BevelKind = bkSoft
          TabOrder = 0
          object Label49: TLabel
            Left = 306
            Top = 168
            Width = 60
            Height = 13
            Caption = 'Tekne Y'#305'l'#305' :'
          end
          object Label50: TLabel
            Left = 285
            Top = 116
            Width = 81
            Height = 13
            Caption = 'Tekne Degeri :'
          end
          object Label51: TLabel
            Left = 285
            Top = 142
            Width = 81
            Height = 13
            Caption = 'Tekne Modeli :'
          end
          object Label76: TLabel
            Left = 83
            Top = 15
            Width = 24
            Height = 13
            Caption = 'Adi :'
          end
          object Label77: TLabel
            Left = 63
            Top = 39
            Width = 44
            Height = 13
            Caption = 'Soyadi :'
          end
          object Label78: TLabel
            Left = 50
            Top = 65
            Width = 57
            Height = 13
            Caption = 'Kimlik No :'
          end
          object Label79: TLabel
            Left = 25
            Top = 89
            Width = 81
            Height = 13
            Caption = 'Dogum Tarihi :'
          end
          object Label80: TLabel
            Left = 43
            Top = 115
            Width = 62
            Height = 13
            Caption = 'Tekne Ad'#305' :'
          end
          object Label81: TLabel
            Left = 36
            Top = 142
            Width = 71
            Height = 13
            Caption = 'Motor G'#252'c'#252' :'
          end
          object Label82: TLabel
            Left = 11
            Top = 169
            Width = 96
            Height = 13
            Caption = 'Tekne Uzunlu'#287'u :'
          end
          object Label83: TLabel
            Left = 344
            Top = 12
            Width = 91
            Height = 13
            Caption = 'Tekne Geni'#351'li'#287'i :'
          end
          object Label84: TLabel
            Left = 246
            Top = 32
            Width = 189
            Height = 13
            Caption = #304'lk Ko'#231'anda Kay'#305'tl'#305' Oldu'#287'u Liman :'
          end
          object Label85: TLabel
            Left = 281
            Top = 51
            Width = 154
            Height = 13
            Caption = #350'u an Kay'#305'tl'#305' Oldu'#287'u Liman :'
          end
          object Label86: TLabel
            Left = 343
            Top = 70
            Width = 92
            Height = 13
            Caption = 'Ta'#351#305'd'#305#287#305' Bayrak :'
          end
          object TxtTekneModeli: TEdit
            Left = 373
            Top = 139
            Width = 188
            Height = 21
            TabOrder = 0
          end
          object TxtTekneYili: TEdit
            Left = 373
            Top = 165
            Width = 188
            Height = 21
            TabOrder = 1
          end
          object CurrTekneDegeri: TMoneyEdit
            Left = 373
            Top = 113
            Width = 94
            Height = 21
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
            TabOrder = 2
            Version = '1.1.1.0'
          end
          object CmbTekneParaBirimi: TComboBox
            Left = 473
            Top = 112
            Width = 82
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 3
            Items.Strings = (
              'Euro'
              'Sterlin'
              'TL')
          end
          object TxtTAdi: TEdit
            Left = 111
            Top = 12
            Width = 121
            Height = 21
            Color = clWhite
            TabOrder = 4
          end
          object TxtTSoyadi: TEdit
            Left = 111
            Top = 37
            Width = 121
            Height = 21
            Color = clWhite
            TabOrder = 5
          end
          object TxtTKimlikNo: TEdit
            Left = 111
            Top = 62
            Width = 121
            Height = 21
            Color = clWhite
            TabOrder = 6
          end
          object DtTDogumTarihi: TDateTimePicker
            Left = 113
            Top = 85
            Width = 102
            Height = 21
            Date = 41773.512494189820000000
            Time = 41773.512494189820000000
            Color = clRed
            TabOrder = 7
          end
          object TxtTTekneAdi: TEdit
            Left = 111
            Top = 112
            Width = 121
            Height = 21
            Color = clWhite
            TabOrder = 8
          end
          object TxtTMotorGucu: TEdit
            Left = 111
            Top = 139
            Width = 121
            Height = 21
            Color = clWhite
            TabOrder = 9
          end
          object TxtTTekneUzunlugu: TEdit
            Left = 111
            Top = 166
            Width = 121
            Height = 21
            Color = clWhite
            TabOrder = 10
          end
          object TxtTTekneGeniisligi: TEdit
            Left = 441
            Top = 9
            Width = 121
            Height = 21
            Color = clWhite
            TabOrder = 11
          end
          object TxtTKayitLiman: TEdit
            Left = 441
            Top = 30
            Width = 121
            Height = 21
            Color = clWhite
            TabOrder = 12
          end
          object TxtTSuanKayitLiman: TEdit
            Left = 441
            Top = 51
            Width = 121
            Height = 21
            Color = clWhite
            TabOrder = 13
          end
          object TxtTBayrak: TEdit
            Left = 441
            Top = 71
            Width = 121
            Height = 21
            Color = clWhite
            TabOrder = 14
          end
        end
      end
      object FerdiKaza: TAdvTabSheet
        Color = clWhite
        ColorTo = clNone
        TabColor = clWhite
        TabColorTo = clWhite
        TextColor = clWhite
        object PnlFerdiKazaSigortasi: TPanel
          Left = 20
          Top = 3
          Width = 620
          Height = 147
          BevelKind = bkSoft
          TabOrder = 0
          object Label44: TLabel
            Left = 16
            Top = 12
            Width = 81
            Height = 13
            Caption = 'Dogum Tarihi :'
          end
          object Label45: TLabel
            Left = 4
            Top = 89
            Width = 93
            Height = 13
            Caption = 'Teminat Degeri :'
          end
          object Label43: TLabel
            Left = 73
            Top = 36
            Width = 24
            Height = 13
            Caption = 'Ad'#305' :'
          end
          object Label46: TLabel
            Left = 53
            Top = 62
            Width = 44
            Height = 13
            Caption = 'Soyad'#305' :'
          end
          object Label53: TLabel
            Left = 337
            Top = 14
            Width = 57
            Height = 13
            Caption = 'Kimlik No :'
          end
          object Label55: TLabel
            Left = 322
            Top = 41
            Width = 76
            Height = 13
            Caption = 'Passport No : '
          end
          object Label56: TLabel
            Left = 354
            Top = 63
            Width = 40
            Height = 13
            Caption = 'Uyruk :'
          end
          object Label57: TLabel
            Left = 354
            Top = 87
            Width = 39
            Height = 13
            Caption = 'Adres :'
          end
          object Txtisim: TEdit
            Left = 104
            Top = 33
            Width = 188
            Height = 21
            TabOrder = 0
          end
          object DtDogum2: TDateTimePicker
            Left = 104
            Top = 6
            Width = 111
            Height = 21
            Date = 40935.693603287040000000
            Time = 40935.693603287040000000
            TabOrder = 1
          end
          object TxtSoyisim: TEdit
            Left = 104
            Top = 59
            Width = 188
            Height = 21
            TabOrder = 2
          end
          object CurrTeminatDegeri: TMoneyEdit
            Left = 104
            Top = 86
            Width = 94
            Height = 21
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
            TabOrder = 3
            Version = '1.1.1.0'
          end
          object TxtFkKimlikNo: TEdit
            Left = 397
            Top = 11
            Width = 188
            Height = 21
            Color = clWhite
            TabOrder = 4
          end
          object TxtFkPassportNo: TEdit
            Left = 398
            Top = 38
            Width = 188
            Height = 21
            Color = clWhite
            TabOrder = 5
          end
          object TxtFkUyruk: TEdit
            Left = 398
            Top = 60
            Width = 188
            Height = 21
            Color = clWhite
            TabOrder = 6
          end
          object CmbFkParaBirimi: TComboBox
            Left = 204
            Top = 87
            Width = 66
            Height = 21
            Color = clWhite
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 7
            Text = 'TL'
            Items.Strings = (
              'TL'
              'Euro'
              'Dollar')
          end
          object MemFkAdres: TMemo
            Left = 401
            Top = 87
            Width = 183
            Height = 43
            Color = clWhite
            ScrollBars = ssVertical
            TabOrder = 8
          end
        end
      end
    end
    object TxtCepTel2: TEdit
      Left = 95
      Top = 200
      Width = 163
      Height = 21
      Color = clWhite
      TabOrder = 17
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 36
    Width = 1146
    Height = 51
    Align = alTop
    Caption = 'M'#252#351'teri'
    Color = 11075496
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object Label8: TLabel
      Left = 39
      Top = 24
      Width = 24
      Height = 13
      Caption = 'Ad'#305' :'
    end
    object Label9: TLabel
      Left = 248
      Top = 24
      Width = 44
      Height = 13
      Caption = 'Soyad'#305' :'
    end
    object Label15: TLabel
      Left = 489
      Top = 24
      Width = 47
      Height = 13
      Caption = 'Cep Tel :'
    end
    object Label10: TLabel
      Left = 693
      Top = 24
      Width = 39
      Height = 13
      Caption = 'Adres :'
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
      AutoCompleteDelay = 50000
      Style = csDropDownList
      CharCase = ecUpperCase
      DropDownCount = 20
      ItemHeight = 13
      TabOrder = 1
      OnChange = CmbAdiChange
    end
    object CmbSoyadi: TComboBox
      Left = 298
      Top = 21
      Width = 183
      Height = 21
      AutoCompleteDelay = 50000
      Style = csDropDownList
      CharCase = ecUpperCase
      DropDownCount = 20
      ItemHeight = 13
      TabOrder = 2
      OnChange = CmbSoyadiChange
    end
    object CmbCepTel1: TComboBox
      Left = 542
      Top = 21
      Width = 145
      Height = 21
      AutoCompleteDelay = 50000
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      TabOrder = 3
      OnChange = CmbCepTel1Change
    end
    object CmbAdres: TComboBox
      Left = 736
      Top = 21
      Width = 285
      Height = 21
      AutoCompleteDelay = 50000
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      TabOrder = 4
      OnChange = CmbAdresChange
    end
    object ChkSec: TCheckBox
      Left = 68
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
  object Qry1: TADOQuery
    Connection = Dm.Cnn1
    Parameters = <>
    Left = 712
    Top = 8
  end
  object PopupMenu1: TPopupMenu
    Left = 608
    object dendi1: TMenuItem
      Caption = #214'dendi'
      OnClick = dendi1Click
    end
    object denmedi1: TMenuItem
      Caption = #214'denmedi'
      OnClick = denmedi1Click
    end
  end
  object AdvPreview: TAdvPreviewDialog
    CloseAfterPrint = True
    DialogCaption = 'Preview'
    DialogPrevBtn = 'Previous'
    DialogNextBtn = 'Next'
    DialogPrintBtn = 'Print'
    DialogCloseBtn = 'Close'
    Grid = AdvHesap
    PreviewFast = False
    PreviewWidth = 350
    PreviewHeight = 300
    PreviewLeft = 100
    PreviewTop = 100
    PreviewCenter = True
    ShowMaximized = True
    Left = 672
    Top = 304
  end
end
