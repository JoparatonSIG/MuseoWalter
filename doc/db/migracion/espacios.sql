INSERT INTO
  museotest.Espacios
  (
    id,
    espacio,
    codigoEspacio,
    inmuebles,
    codigoInmueble,
    ubicacionInmueble,
    creacion,
    modifica
  )
  SELECT
  IdEspacio,
  Espacio,
  CodigoEspacio,
  Inmuebles,
  CodigoInmueble,
  UbicaciónInmueble,
    now(),
    now()
FROM original.espacios ori
LEFT OUTER JOIN museotest.espacios o
  ON (ori.IdEspacio = o.id)
ORDER BY ori.IdEspacio ASC;
