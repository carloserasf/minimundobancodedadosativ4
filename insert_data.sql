-- Inserindo clientes
INSERT INTO Cliente (nome, telefone, endereco) VALUES
('Carlos', '1199999999', 'Rua A, 123'),
('Stephanie', '1198888888', 'Rua B, 456');

-- Inserindo itens do cardápio
INSERT INTO ItemCardapio (nomeItem, preco) VALUES
('Frango Frito 300g', 22.90),
('Batata Frita Média', 12.50),
('Combo Frango + Batata', 32.90);

-- Inserindo pedidos
INSERT INTO Pedido (dataHora, status, idCliente) VALUES
(NOW(), 'finalizado', 1),
(NOW(), 'em preparo', 2);

-- Inserindo itens do pedido
INSERT INTO PedidoItem (idPedido, idItem, quantidade, precoUnitario) VALUES
(1, 1, 2, 22.90),
(1, 2, 1, 12.50),
(2, 3, 1, 32.90);

-- Inserindo pagamentos
INSERT INTO Pagamento (tipoPagamento, valorTotal, idPedido) VALUES
('pix', 58.30, 1),
('dinheiro', 32.90, 2);
