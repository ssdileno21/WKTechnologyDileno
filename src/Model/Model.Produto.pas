unit Model.Produto;

interface

type
  TProduto = class
  private
    FCodigo: Integer;
    FDescricao: string;
    FPreco: Currency;
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Descricao: string read FDescricao write FDescricao;
    property Preco: Currency read FPreco write FPreco;
  end;

implementation

end.
