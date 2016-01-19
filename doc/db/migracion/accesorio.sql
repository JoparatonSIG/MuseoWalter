INSERT INTO
       museotest.accesorios
       (
       id, ObraId, objetoCodigo, relacion, creacion, modifica
       )
SELECT
      IdAccesorios, IdIdentificacion, ObjetoCodigo, Relacion, now(), now()
FROM original.accesorios ori
LEFT OUTER JOIN museotest.Obras o
  ON (ori.IdIdentificacion = o.id)
ORDER BY ori.IdAccesorios ASC;
