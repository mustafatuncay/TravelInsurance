unit UntDm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDm = class(TDataModule)
    Cnn1: TADOConnection;
    Cnn2: TADOConnection;
    Qry2: TADOQuery;
    Qrylist: TADOQuery;
    Qry5: TADOQuery;
    Qry6: TADOQuery;
    Qry7: TADOQuery;
    Qry8: TADOQuery;
    Qry9: TADOQuery;
    Qry10: TADOQuery;
    Qry11: TADOQuery;
    Qry12: TADOQuery;
    Qry13: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

{$R *.dfm}

end.
