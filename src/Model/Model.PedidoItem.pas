unit Model.PedidoItem;

interface

uses
  Model.Produto, System.SysUtils;

type
  TPedidoItem = class
  private
    FProduto: TProduto;
    FQuantidade: Integer;
    FValorUnitario: Currency;
    FValorTotal: Currency;
  public
    constructor Create;
    destructor Destroy; override;

    procedure CalculaTotal;

    property Produto: TProduto read FProduto write FProduto;
    property Quantidade: Integer read FQuantidade write FQuantidade;
    property ValorUnitario: Currency read FValorUnitario write FValorUnitario;
    property ValorTotal: Currency read FValorTotal write FValorTotal;
  end;

implementation

{ TPedidoItem }

procedure TPedidoItem.CalculaTotal;
begin
  FValorTotal := FQuantidade * FValorUnitario;
end;

constructor TPedidoItem.Create;
begin
  FProduto := TProduto.Create;
end;

destructor TPedidoItem.Destroy;
begin
  FreeAndNil(FProduto);
  inherited;
end;

end.
