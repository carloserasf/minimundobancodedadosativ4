CREATE DATABASE american_chicken;
USE american_chicken;

CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    endereco VARCHAR(255)
);

CREATE TABLE Pedido (
    idPedido INT PRIMARY KEY AUTO_INCREMENT,
    dataHora DATETIME NOT NULL,
    status VARCHAR(20) NOT NULL,
    idCliente INT,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Pagamento (
    idPagamento INT PRIMARY KEY AUTO_INCREMENT,
    tipoPagamento ENUM('dinheiro', 'pix', 'cartao'),
    valorTotal DECIMAL(10,2),
    idPedido INT,
    FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido)
);

CREATE TABLE ItemCardapio (
    idItem INT PRIMARY KEY AUTO_INCREMENT,
    nomeItem VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL
);

CREATE TABLE PedidoItem (
    idPedidoItem INT PRIMARY KEY AUTO_INCREMENT,
    idPedido INT,
    idItem INT,
    quantidade INT NOT NULL,
    precoUnitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido),
    FOREIGN KEY (idItem) REFERENCES ItemCardapio(idItem)
);
