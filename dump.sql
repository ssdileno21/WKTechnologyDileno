-- database
CREATE DATABASE IF NOT EXISTS wktestedileno;
USE wktestedileno;

-- Tabela Clientes
CREATE TABLE cliente (
  codigo INT AUTO_INCREMENT PRIMARY KEY,
  nome   VARCHAR(100) NOT NULL,
  cidade VARCHAR(50),
  uf     CHAR(2),
  INDEX idx_cliente_nome (nome)
);

-- Tabela Produtos
CREATE TABLE produto (
  codigo      INT AUTO_INCREMENT PRIMARY KEY,
  descricao   VARCHAR(150) NOT NULL,
  preco_venda DECIMAL(10,2) NOT NULL,
  INDEX idx_produto_descricao (descricao)
);

-- insert cliente
INSERT INTO cliente(nome,cidade,uf) VALUES
('Dileno Silva dos Santos', 'Pedro Leopoldo', 'MG'),
('João Santos', 'Rio de Janeiro', 'RJ'),
('Ana Oliveira', 'Belo Horizonte', 'MG'),
('Pedro Souza', 'Curitiba', 'PR'),
('Carla Pereira', 'Porto Alegre', 'RS'),
('Rafael Costa', 'Salvador', 'BA'),
('Juliana Fernandes', 'Fortaleza', 'CE'),
('Lucas Almeida', 'Brasília', 'DF'),
('Fernanda Rodrigues', 'Manaus', 'AM'),
('Carlos Lima', 'Recife', 'PE'),
('Patrícia Gomes', 'São Paulo', 'SP'),
('Bruno Ribeiro', 'Florianópolis', 'SC'),
('Amanda Alves', 'Vitória', 'ES'),
('Gustavo Rocha', 'Goiânia', 'GO'),
('Beatriz Martins', 'Campinas', 'SP'),
('Thiago Carvalho', 'Santos', 'SP'),
('Renata Dias', 'Uberlândia', 'MG'),
('Marcelo Teixeira', 'Natal', 'RN'),
('Camila Menezes', 'João Pessoa', 'PB'),
('Eduardo Barros', 'Maceió', 'AL');

-- insert produto
INSERT INTO produto(descricao,preco_venda) VALUES
('Smartphone Samsung Galaxy S21', 3599.00),
('Notebook Dell Inspiron 15', 4899.00),
('Headset Logitech G430', 299.90),
('Mouse Microsoft Wireless Mobile 1850', 129.50),
('Teclado Mecânico Redragon Kumara', 249.90),
('Monitor LG 24" Full HD', 799.00),
('SSD Kingston A400 480GB', 329.00),
('Pendrive SanDisk Ultra 64GB', 59.90),
('Webcam Logitech C920 HD', 399.00),
('Impressora HP DeskJet 2723', 399.90),
('Roteador TP-Link Archer C6', 249.00),
('Caixa de Som JBL Go 2', 179.90),
('Câmera Mirrorless Sony Alpha a6000', 3499.00),
('Smartwatch Xiaomi Mi Band 6', 219.00),
('Tablet Samsung Galaxy Tab A7', 1799.00),
('Cabo HDMI 2m Ugreen', 49.90),
('Fonte ATX Corsair 550W', 329.90),
('Placa de Vídeo NVIDIA GTX 1660', 1899.00),
('Memória RAM Crucial 8GB DDR4', 249.00),
('Estabilizador SMS Neon 300VA', 199.90);

-- Tabela Pedidos
CREATE TABLE pedido (
  numero_pedido   INT PRIMARY KEY,
  data_emissao    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  codigo_cliente  INT NOT NULL,
  valor_total     DECIMAL(12,2) NOT NULL,
  FOREIGN KEY (codigo_cliente) REFERENCES cliente(codigo),
  INDEX idx_pedido_data (data_emissao)
);

-- Tabela Itens do Pedido
CREATE TABLE item_pedido (
  id               INT AUTO_INCREMENT PRIMARY KEY,
  numero_pedido    INT NOT NULL,
  codigo_produto   INT NOT NULL,
  quantidade       INT NOT NULL,
  valor_unitario   DECIMAL(10,2) NOT NULL,
  valor_total      DECIMAL(12,2) NOT NULL,
  FOREIGN KEY (numero_pedido)  
    REFERENCES pedido(numero_pedido)
    ON DELETE CASCADE,
  FOREIGN KEY (codigo_produto) 
    REFERENCES produto(codigo),
  INDEX idx_itempedido_pedido (numero_pedido)
);

