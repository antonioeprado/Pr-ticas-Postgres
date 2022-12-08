INSERT INTO compras (id_cliente, id_produto) SELECT c.id, p.id FROM clientes c, produtos p WHERE c.nome='Chico Buarque de Holanda' AND p.nome='Violão Lava ME 2';
