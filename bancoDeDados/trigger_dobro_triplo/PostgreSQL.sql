CREATE TABLE dobro_triplo (
  id_dobro SERIAL PRIMARY KEY,
  valor INT,
  dobro INT,
  triplo INT
);



CREATE OR REPLACE FUNCTION calcular_dobro_triplo()
RETURNS TRIGGER AS $$
BEGIN

  NEW.dobro := NEW.valor * 2;
  NEW.triplo := NEW.valor * 3;
  
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;



CREATE TRIGGER trigger_calcular_dobro_triplo
BEFORE INSERT ON dobro_triplo
FOR EACH ROW
EXECUTE FUNCTION calcular_dobro_triplo();



INSERT INTO dobro_triplo (valor)
VALUES
  (10),
  (15),
  (55);



SELECT * FROM dobro_triplo;