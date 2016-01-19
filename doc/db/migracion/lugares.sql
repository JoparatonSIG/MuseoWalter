INSERT INTO
       museotest.lugares
       (
        id, localidad, codigoLocalidad, municipio, provincia, codigoProvincia, departamento, creacion, modifica
        )
SELECT
      IdLugar, localidad, codigoLocalidad, municipio, provincia, codigoProvincia, departamento, now(), now()
FROM original.lugar ori
LEFT OUTER JOIN museotest.lugares o
  ON (ori.IdLugar = o.id)
ORDER BY ori.IdLugar ASC;
