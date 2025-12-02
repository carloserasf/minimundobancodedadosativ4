-- Atualizações
UPDATE Cliente SET telefone = '1197777777' WHERE idCliente = 1;
UPDATE Pedido SET status = 'entregue' WHERE idPedido = 2;
UPDATE ItemCardapio SET preco = 25.90 WHERE idItem = 1;

-- Exclusões
DELETE FROM PedidoItem WHERE idPedidoItem = 1;
DELETE FROM Pagamento WHERE idPagamento = 2;
DELETE FROM Cliente WHERE idCliente = 2;
