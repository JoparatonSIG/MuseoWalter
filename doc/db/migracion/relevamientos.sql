INSERT INTO
  museotest.Relevamientos
  (
    ObraId,
    fechaRelev,
    fechaCatalog,
    fechaRevision,
    quienRelevo,
    quienCatalogo,
    quienReviso,
    observaciones,
    creacion,
    modifica
  )
  SELECT
    IdIdentificacion,
    FechaRelev,
    FechaCatalog,
    FechaRevision,
    QienRelevo,
    QuienCatalogo,
    QuienReviso,
    observaciones,
      now(),
      now()
FROM original.relevamiento ori
LEFT OUTER JOIN museotest.Obras o
  ON (ori.IdIdentificacion = o.id)
ORDER BY ori.IdIdentificacion ASC;
