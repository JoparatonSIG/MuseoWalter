INSERT INTO
       museotest.obras
       (
        id, numero, codigo, codigoAnterior1, codigoAnterior2, denominacion, especialidad, epoca, autor, funcionOriginal, tecnicaMaterial, origen, creacion, modifica
        )
SELECT
      IdIdentificacion, Numero, Codigo, CodigoAnterior1, CodigoAnterior2, Denominacion, Especialidad, Epoca, Autor, FuncionOriginal, TecnicaMaterial, Origen, now(), now()
FROM original.identificacion ori
ORDER BY ori.IdIdentificacion ASC;