INSERT INTO
  museotest.Estructuras
  (
    id,
    estructura,
    creacion,
    modifica
  )
  SELECT
  IdEstructura,
  Estructura,
    now(),
    now()
FROM original.estructura ori
LEFT OUTER JOIN museotest.Estructuras o
  ON (ori.IdEstructura = o.id)
ORDER BY ori.IdEstructura ASC;
