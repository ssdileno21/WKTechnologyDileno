unit DAO.ConnectionFactory;

interface

uses
  DAO.IConnection, UConfigDatabase, FireDAC.Comp.Client, System.SysUtils;

type
  TConnectionFactory = class(TInterfacedObject, IConnection)
  private
    FConfigDataBase: TConfigDatabase;
  public
    constructor Create(const AIniPath: string);
    destructor Destroy; override;
    function GetConnection: TFDConnection;
  end;

implementation

{ TConnectionFactory }

constructor TConnectionFactory.Create(const AIniPath: string);
begin
  inherited Create;
  FConfigDataBase := TConfigDatabase.Create(AIniPath);
end;

destructor TConnectionFactory.Destroy;
begin
  FreeAndNil(FConfigDataBase);
  inherited;
end;

function TConnectionFactory.GetConnection: TFDConnection;
begin
  Result := FConfigDataBase.GetConnection;
end;

end.
