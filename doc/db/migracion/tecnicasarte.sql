INSERT INTO
  museotest.tecnicasarte
  (
    id,
    tecnicaArte,
    creacion,
    modifica
  )
  SELECT
    IdTecnica,
    Tecnica,
    now(),
    now()
FROM original.tecnicar ori
LEFT OUTER JOIN museotest.tecnicasarte o
  ON (ori.IdTecnica = o.id)
ORDER BY ori.IdTecnica ASC;
