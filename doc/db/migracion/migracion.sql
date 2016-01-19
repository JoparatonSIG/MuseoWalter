INSERT INTO
  museotest.Obras
  (
    id,
    numero,
    codigo,
    codigoAnterior1,
    codigoAnterior2,
    denominacion,
    especialidad,
    epoca,
    autor,
    funcionOriginal,
    tecnicaMaterial,
    origen,
    creacion,
    modifica
  )
  SELECT
    ori.IdIdentificacion,
    ori.Numero,
    ori.Codigo,
    ori.CodigoAnterior1,
    ori.CodigoAnterior2,
    ori.Denominacion,
    ori.Especialidad,
    ori.Epoca,
    ori.Autor,
    ori.FuncionOriginal,
    ori.TecnicaMaterial,
    ori.Origen,
    now(),
    now()
FROM original.identificacion ori
LEFT OUTER JOIN museotest.Obras o
  ON (ori.IdIdentificacion = o.id)
ORDER BY ori.IdIdentificacion ASC;


/*comentario separador*/


INSERT INTO
       museotest.lugares
       (
        id, localidad, codigoLocalidad, municipio, provincia, codigoProvincia, departamento, creacion, modifica
        )
SELECT
      ori.IdLugar, ori.localidad, ori.codigoLocalidad, ori.municipio, ori.provincia, ori.codigoProvincia, ori.departamento, now(), now()
FROM original.lugar ori
LEFT OUTER JOIN museotest.lugares o
  ON (ori.IdLugar = o.id)
ORDER BY ori.IdLugar ASC;


/*comentario separador*/


INSERT INTO
       museotest.ubicaciones
       (
         espacio, inmueble, propietario, creacion, modifica, ObraID, LugarId
        )
SELECT
       ori.espacio, ori.inmueble, ori.propietario, now(), now(), ori.IdIdentificacion, ori.IdLugar
FROM original.ubicacion ori
LEFT OUTER JOIN museotest.lugares o
  ON (ori.IdLugar = o.id)
ORDER BY ori.IdIdentificacion ASC;


/*comentario separador*/


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
    ori.IdTipo,
    ori.Tipo,
    ori.Subtipo,
    ori.ValorPredeter,
    now(),
    now()
FROM original.analisistipo ori
LEFT OUTER JOIN museotest.tipoanalisis o
  ON (ori.IdTipo = o.id)
ORDER BY ori.IdTipo ASC;


/*comentario separador*/


INSERT INTO
  museotest.tecnicasarte
  (
    id,
    tecnicaArte,
    creacion,
    modifica
  )
  SELECT
    ori.IdTecnica,
    ori.Tecnica,
    now(),
    now()
FROM original.tecnicar ori
LEFT OUTER JOIN museotest.tecnicasarte o
  ON (ori.IdTecnica = o.id)
ORDER BY ori.IdTecnica ASC;


/*comentario separador*/


INSERT INTO
  museotest.tecnicas
  (
    id,
    tecnica,
    creacion,
    modifica
  )
  SELECT
    ori.IdTecnica,
    ori.Tecnica,
    now(),
    now()
FROM original.tecnica ori
LEFT OUTER JOIN museotest.tecnicas o
  ON (ori.IdTecnica = o.id)
ORDER BY ori.IdTecnica ASC;


/*comentario separador*/


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
    ori.IdIdentificacion,
    ori.FechaRelev,
    ori.FechaCatalog,
    ori.FechaRevision,
    ori.QienRelevo,
    ori.QuienCatalogo,
    ori.QuienReviso,
    ori.observaciones,
      now(),
      now()
FROM original.relevamiento ori
LEFT OUTER JOIN museotest.Obras o
  ON (ori.IdIdentificacion = o.id)
ORDER BY ori.IdIdentificacion ASC;


/*comentario separador*/


INSERT INTO
       museotest.fotografias
       (
        id, ObraId, foto, codArchivoFotografico, numRollo, numFoto, fotografo, fecha, creacion, modifica
        )
SELECT
      ori.IdFotografías, ori.IdIdentificacion, ori.foto, ori.codArchivoFotografico, ori.numRollo, ori.numFoto, ori.fotografo, ori.fecha, now(), now()
FROM original.fotografias ori
LEFT OUTER JOIN museotest.Obras o
  ON (ori.IdIdentificacion = o.id)
ORDER BY ori.IdFotografías ASC;


/*comentario separador*/


INSERT INTO
  museotest.Estructuras
  (
    id,
    estructura,
    creacion,
    modifica
  )
  SELECT
  ori.IdEstructura,
  ori.Estructura,
    now(),
    now()
FROM original.estructura ori
LEFT OUTER JOIN museotest.Estructuras o
  ON (ori.IdEstructura = o.id)
ORDER BY ori.IdEstructura ASC;


/*comentario separador*/


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
  ori.IdEspacio,
  ori.Espacio,
  ori.CodigoEspacio,
  ori.Inmuebles,
  ori.CodigoInmueble,
  ori.UbicaciónInmueble,
    now(),
    now()
FROM original.espacios ori
LEFT OUTER JOIN museotest.espacios o
  ON (ori.IdEspacio = o.id)
ORDER BY ori.IdEspacio ASC;


/*comentario separador*/


INSERT INTO
  museotest.Descripciones
  (
    id,
    ObraId,
    marcasInscripciones,
    alto,
    ancho,
    longitud,
    profundidad,
    diametro,
    espesor,
    peso,
    observaciones,
    descripcion,
    creacion,
    modifica
  )
  SELECT
  ori.IdDescripcion,
  ori.IdIdentificacion,
  ori.MarcasInscripciones,
  ori.DimAlto,
  ori.DimAncho,
  ori.DimLongitud,
  ori.DimProfundidad,
  ori.DimDiametro,
  ori.DimEspesor,
  ori.DimPeso,
  ori.Observaciones,
  ori.Descripcion,
    now(),
    now()
FROM original.descripcion ori
LEFT OUTER JOIN museotest.Obras o
  ON (ori.IdIdentificacion = o.id)
ORDER BY ori.IdDescripcion ASC;


/*comentario separador*/


INSERT INTO
  museotest.Conservaciones
  (
    id,
    ObraId,
    conservacion,
    condicionesSeguridad,
    creacion,
    modifica
  )
  SELECT
    ori.IdConservacion,
    ori.IdIdentificacion,
    ori.Conservacion,
    ori.CondicionesSeguridad,
    now(),
    now()
FROM original.conservacion ori
LEFT OUTER JOIN museotest.Obras o
  ON (ori.IdIdentificacion = o.id)
ORDER BY ori.IdConservacion ASC;


/*comentario separador*/


INSERT INTO
  museotest.analisis
  (
    analisis,
    ObraId,
    TipoAnalisisId,
    creacion,
    modifica
  )
  SELECT
    ori.Analisis,
    ori.IdIdentificacion,
    ori.IdTipo,
    now(),
    now()
FROM original.analisis ori
LEFT OUTER JOIN museotest.Obras o
  ON (ori.IdIdentificacion = o.id)
ORDER BY ori.IdIdentificacion ASC;


/*comentario separador*/


INSERT INTO
       museotest.accesorios
       (
       id, ObraId, objetoCodigo, relacion, creacion, modifica
       )
SELECT
      ori.IdAccesorios, ori.IdIdentificacion, ori.ObjetoCodigo, ori.Relacion, now(), now()
FROM original.accesorios ori
LEFT OUTER JOIN museotest.Obras o
  ON (ori.IdIdentificacion = o.id)
ORDER BY ori.IdAccesorios ASC;
