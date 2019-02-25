object Dm: TDm
  OldCreateOrder = False
  Height = 310
  Width = 465
  object Cnn1: TADOConnection
    LoginPrompt = False
    Left = 56
    Top = 8
  end
  object Cnn2: TADOConnection
    LoginPrompt = False
    Left = 16
    Top = 8
  end
  object Qry2: TADOQuery
    Connection = Cnn2
    Parameters = <>
    Left = 16
    Top = 64
  end
  object Qrylist: TADOQuery
    Connection = Cnn1
    CursorType = ctStatic
    Parameters = <>
    Left = 56
    Top = 64
  end
  object Qry5: TADOQuery
    Connection = Cnn1
    Parameters = <>
    Left = 264
    Top = 16
  end
  object Qry6: TADOQuery
    Connection = Cnn1
    Parameters = <>
    Left = 264
    Top = 72
  end
  object Qry7: TADOQuery
    Connection = Cnn1
    Parameters = <>
    Left = 264
    Top = 120
  end
  object Qry8: TADOQuery
    Connection = Cnn1
    Parameters = <>
    Left = 264
    Top = 184
  end
  object Qry9: TADOQuery
    Connection = Cnn1
    Parameters = <>
    Left = 264
    Top = 240
  end
  object Qry10: TADOQuery
    Connection = Cnn1
    Parameters = <>
    Left = 344
    Top = 16
  end
  object Qry11: TADOQuery
    Connection = Cnn1
    Parameters = <>
    Left = 344
    Top = 64
  end
  object Qry12: TADOQuery
    Connection = Cnn1
    Parameters = <>
    Left = 344
    Top = 128
  end
  object Qry13: TADOQuery
    Connection = Cnn1
    Parameters = <>
    Left = 344
    Top = 184
  end
end
