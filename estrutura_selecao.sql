CREATE OR REPLACE FUNCTION fn_valor_aleatorio_entre
(lim_inferior INT, lim_superior INT) RETURNS INT AS
$$
BEGIN
	RETURN FLOOR(random() * (lim_inferior - lim_superior +1) + lim_inferior)::INT;
END
$$ LANGUAGE plpgsql;