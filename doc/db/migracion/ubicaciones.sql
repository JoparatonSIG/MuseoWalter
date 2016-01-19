<<<<<<< HEAD
INSERT INTO
       museotest.ubicaciones
       (
         espacio, inmueble, propietario, creacion, modifica, ObraID, LugarId
        )
SELECT
       espacio, inmueble, propietario, now(), now(), IdIdentificacion, IdLugar
FROM original.ubicacion ori
ORDER BY ori.IdIdentificacion ASC;
=======
INSERT INTO
       museotest.ubicaciones
       (
         espacio, inmueble, propietario, creacion, modifica, ObraID, LugarId
        )
SELECT
       espacio, inmueble, propietario, now(), now(), IdIdentificacion, IdLugar
FROM original.ubicacion ori
ORDER BY ori.IdIdentificacion ASC;
>>>>>>> 37e5bc5a3d8bf58190f21f672f4b971cbcf19bd2
