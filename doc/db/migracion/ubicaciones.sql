INSERT INTO
       museotest.ubicaciones
       (
         espacio, inmueble, propietario, creacion, modifica, ObraID, LugarId
        )
SELECT
       espacio, inmueble, propietario, now(), now(), IdIdentificacion, IdLugar
FROM original.ubicacion ori
LEFT OUTER JOIN museotest.lugares o
  ON (ori.IdLugar = o.id)
ORDER BY ori.IdIdentificacion ASC;
