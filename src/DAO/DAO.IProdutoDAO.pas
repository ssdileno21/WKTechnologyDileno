unit DAO.IProdutoDAO;

interface

uses
  System.Generics.Collections, Model.Produto;

type
  IProdutoDAO = interface
    ['{00829EC1-E47B-42AC-92EB-B21EBAD460A2}']
    function ListarTodos: TObjectList<TProduto>;
    function BuscarPorCodigo(const ACodigo: Integer): TProduto;
  end;

implementation

end.
