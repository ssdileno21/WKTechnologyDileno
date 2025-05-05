unit Controller.ProdutoController;

interface

uses
  DAO.IConnection, DAO.IProdutoDAO, DAO.ProdutoDAO, Model.Produto, System.Generics.Collections;

type
  TProdutoController = class
  private
    FProdutoDAO: IProdutoDAO;
  public
    constructor Create(const AConn: IConnection);
    destructor Destroy; override;
    function BuscarPorCodigo(const ACodigo: Integer): TProduto;
  end;

implementation

{ TProdutoController }

function TProdutoController.BuscarPorCodigo(const ACodigo: Integer): TProduto;
begin
  Result := FProdutoDAO.BuscarPorCodigo(ACodigo);
end;

constructor TProdutoController.Create(const AConn: IConnection);
begin
  inherited Create;
  FProdutoDAO := TProdutoDAO.Create(AConn);
end;

destructor TProdutoController.Destroy;
begin
  inherited;
end;

end.
