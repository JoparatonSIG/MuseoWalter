INSERT INTO
  museotest.tipoanalisis
  (
    id,
    tipo,
    subtipo,
    valorPredeterminado,
    creacion,
    modifica
  )
  SELECT
    IdTipo,
    Tipo,
    Subtipo,
    ValorPredeter,
    now(),
    now()
FROM original.analisistipo ori
LEFT OUTER JOIN museotest.tipoanalisis o
  ON (ori.IdTipo = o.id)
ORDER BY ori.IdTipo ASC;
