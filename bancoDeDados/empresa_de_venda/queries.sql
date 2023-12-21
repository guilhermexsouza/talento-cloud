CREATE TABLE produto (
  id_produto INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50),
  preco DECIMAL(10, 2)
);

CREATE TABLE venda (
  id_venda INT AUTO_INCREMENT PRIMARY KEY,
  quantidade INT,
  data_compra DATE,
  fk_id_produto INT,
  FOREIGN KEY (fk_id_produto) REFERENCES produto (id_produto)
);

INSERT INTO produto (nome, preco)
VALUES
	('Teclado', 19.90),
    ('Mouse', 11.90),
    ('Monitor', 391.18);

INSERT INTO venda (quantidade, data_compra, fk_id_produto)
VALUES
	(2, '2023-12-21', 1),
	(5, '2023-12-21', 3),
	(3, '2023-12-21', 2),
	(4, '2023-12-20', 2),
	(1, '2023-12-20', 3),
	(2, '2023-12-20', 1);

DELIMITER //

CREATE PROCEDURE levantamento_diario(IN p_data_compra DATE)
BEGIN
    SELECT
        data_compra,
        SUM(quantidade) AS total_produtos_comprados
    FROM
        venda
    WHERE
        data_compra = p_data_compra
    GROUP BY
        data_compra;
END //

DELIMITER ;

CALL levantamento_diario('2023-12-20');