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
    IdIdentificacion,
    Numero,
    Codigo,
    CodigoAnterior1,
    CodigoAnterior2,
    Denominacion,
    Especialidad,
    Epoca,
    Autor,
    FuncionOriginal,
    TecnicaMaterial,
    Origen,
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
      IdLugar, localidad, codigoLocalidad, municipio, provincia, codigoProvincia, departamento, now(), now()
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
       espacio, inmueble, propietario, now(), now(), IdIdentificacion, IdLugar
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
    IdTecnica,
    Tecnica,
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
    IdTecnica,
    Tecnica,
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


/*comentario separador*/


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


/*comentario separador*/


INSERT INTO
  museo.Estructuras
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
  IdDescripcion,
  IdIdentificacion,
  MarcasInscripciones,
  DimAlto,
  DimAncho,
  DimLongitud,
  DimProfundidad,
  DimDiametro,
  DimEspesor,
  DimPeso,
  Observaciones,
  Descripcion,
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
    IdConservacion,
    IdIdentificacion,
    Conservacion,
    CondicionesSeguridad,
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
    Analisis,
    IdIdentificacion,
    IdTipo,
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
      IdAccesorios, IdIdentificacion, ObjetoCodigo, Relacion, now(), now()
FROM original.accesorios ori
LEFT OUTER JOIN museotest.Obras o
  ON (ori.IdIdentificacion = o.id)
ORDER BY ori.IdAccesorios ASC;
