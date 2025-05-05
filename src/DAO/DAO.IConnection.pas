unit DAO.IConnection;

interface

uses
  FireDAC.Comp.Client;

type
  IConnection = interface
    ['{E07EE4F6-1135-4A5E-91CB-BA77E403E576}']
    function GetConnection: TFDConnection;
  end;

implementation

end.
