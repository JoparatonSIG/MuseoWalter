<<<<<<< HEAD
INSERT INTO
       museotest.fotografias
       (
        id, ObraId, foto, codArchivoFotografico, numRollo, numFoto, fotografo, fecha, creacion, modifica
        )
SELECT
      IdFotografías, IdIdentificacion, foto, codArchivoFotografico, numRollo, numFoto, fotografo, fecha, now(), now()
FROM original.fotografias ori
ORDER BY ori.IdFotografías ASC;
=======
INSERT INTO
       museotest.fotografias
       (
        id, ObraId, foto, codArchivoFotografico, numRollo, numFoto, fotografo, fecha, creacion, modifica
        )
SELECT
      IdFotografías, IdIdentificacion, foto, codArchivoFotografico, numRollo, numFoto, fotografo, fecha, now(), now()
FROM original.fotografias ori
ORDER BY ori.IdFotografías ASC;
>>>>>>> 37e5bc5a3d8bf58190f21f672f4b971cbcf19bd2
