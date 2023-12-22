CREATE TABLE cliente (
  cpf VARCHAR(11) PRIMARY KEY,
  nome VARCHAR(50),
  data_cadastro DATE
);


INSERT INTO cliente (cpf, nome, data_cadastro)
VALUES
	('12121212121', 'guilherme', '2023-12-21'),
	('31313131313', 'joão', '2023-12-21'),
	('45454545454', 'lucas', '2023-12-21'),
	('95959595955', 'Henrique', '2023-12-20');

CREATE OR REPLACE FUNCTION contar_clientes_cadastrados(parametro_data_cadastro DATE)
RETURNS INT
AS $$
DECLARE
    total_clientes INT;
BEGIN
    SELECT COUNT(*) INTO total_clientes
    FROM cliente
    WHERE DATE(data_cadastro) = parametro_data_cadastro;

    RETURN total_clientes;
END;
$$ LANGUAGE plpgsql;

SELECT contar_clientes_cadastrados('2023-12-21');