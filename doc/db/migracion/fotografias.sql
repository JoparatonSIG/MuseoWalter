INSERT INTO
       museotest.fotografias
       (
        id, ObraId, foto, codArchivoFotografico, numRollo, numFoto, fotografo, fecha, creacion, modifica
        )
SELECT
      IdFotografías, IdIdentificacion, foto, codArchivoFotografico, numRollo, numFoto, fotografo, fecha, now(), now()
FROM original.fotografias ori
LEFT OUTER JOIN museotest.Obras o
  ON (ori.IdIdentificacion = o.id)
ORDER BY ori.IdFotografías ASC;
