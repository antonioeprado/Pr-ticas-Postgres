DELETE FROM compras WHERE (id_cliente, id_produto) IN (SELECT * FROM ( SELECT c.id, p.id FROM clientes c, produtos p WHERE c.nome='Martinha Lima Zambujal' AND p.nome='Fone Topo de Linha') AS d);
