-- 1. Listar todos os clientes
SELECT * FROM Cliente;

-- 2. Listar pedidos com nome do cliente (JOIN)
SELECT p.idPedido, c.nome, p.dataHora, p.status
FROM Pedido p
JOIN Cliente c ON c.idCliente = p.idCliente;

-- 3. Buscar itens acima de 20 reais
SELECT * FROM ItemCardapio
WHERE preco > 20
ORDER BY preco DESC;

-- 4. Listar itens de um pedido
SELECT p.idPedido, i.nomeItem, pi.quantidade, pi.precoUnitario
FROM PedidoItem pi
JOIN ItemCardapio i ON i.idItem = pi.idItem
JOIN Pedido p ON p.idPedido = pi.idPedido
WHERE p.idPedido = 1;

-- 5. Mostrar total pago por cada pedido
SELECT p.idPedido, g.tipoPagamento, g.valorTotal
FROM Pagamento g
JOIN Pedido p ON p.idPedido = g.idPedido;
