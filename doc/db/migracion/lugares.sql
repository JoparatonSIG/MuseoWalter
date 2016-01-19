<<<<<<< HEAD
INSERT INTO
       museotest.lugares
       (
        id, localidad, codigoLocalidad, municipio, provincia, codigoProvincia, departamento, creacion, modifica
        )
SELECT
      IdLugar, localidad, codigoLocalidad, municipio, provincia, codigoProvincia, departamento, now(), now()
FROM original.lugar ori
ORDER BY ori.IdLugar ASC;
=======
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
>>>>>>> 37e5bc5a3d8bf58190f21f672f4b971cbcf19bd
