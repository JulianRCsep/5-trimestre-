/*facil*/
select NombreUsuario, Email From Registro;
select Respuesta, Fecha from interaccion;

/*subcompleja*/
select Perfil.NombreUsuario, Interaccion.Fecha from perfil inner join  Interaccion ON Perfil.IdPerfil = Interaccion.Perfil_Perfil;

SELECT Perfil.NombreUsuario, COUNT(Interaccion.idInter) AS CantidadInteracciones
FROM Perfil
INNER JOIN Interaccion ON Perfil.idPerfil = Interaccion.Perfil_Perfil
GROUP BY Perfil.NombreUsuario;

/*dificil*/
SELECT Perfil.NombreUsuario, Perfil.Email, COUNT(Interaccion.idInter) AS TotalInteracciones
FROM Perfil
LEFT JOIN Interaccion ON Perfil.idPerfil = Interaccion.Perfil_Perfil
GROUP BY Perfil.NombreUsuario, Perfil.Email
ORDER BY TotalInteracciones DESC;

