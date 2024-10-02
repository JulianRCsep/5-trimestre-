Drop database if exists Round10;
CREATE DATABASE Round10;
USE Round10;

CREATE TABLE Registro (
    Email INT NOT NULL,
    NombreUsuario VARCHAR(45) NOT NULL,
    Contrasena VARCHAR(255) NOT NULL,
    ConfirmarContrasena VARCHAR(255) NOT NULL,
    PRIMARY KEY (Email)
);


CREATE TABLE InicioSesion (
    IdEmail INT NOT NULL AUTO_INCREMENT,
    Email VARCHAR(45) NOT NULL,
    Contrasena VARCHAR(255) NOT NULL,
    Registro_Email INT NOT NULL,
    PRIMARY KEY (IdEmail),
    FOREIGN KEY (Registro_Email) REFERENCES Registro(Email)
);


CREATE TABLE Perfil (
    idPerfil INT NOT NULL AUTO_INCREMENT,
    NombreUsuario VARCHAR(45) NOT NULL,
    Email VARCHAR(45) NOT NULL,
    Descripcion VARCHAR(300),
    area VARCHAR(45),
    InicioSesion_IdEmail INT NOT NULL,
    InicioSesion_Registro_Email INT NOT NULL,
    PRIMARY KEY (idPerfil),
    FOREIGN KEY (InicioSesion_IdEmail) REFERENCES InicioSesion(IdEmail),
    FOREIGN KEY (InicioSesion_Registro_Email) REFERENCES InicioSesion(Registro_Email)
);


CREATE TABLE Interaccion (
    idInter INT NOT NULL AUTO_INCREMENT,
    Respuesta VARCHAR(1000),
    Fecha DATE,
    area VARCHAR(45),
    Perfil_Perfil INT NOT NULL,
    Perfil_InicioSesion_IdEmail INT NOT NULL,
    Perfil_InicioSesion_Registro_Email INT NOT NULL,
    PRIMARY KEY (idInter),
    FOREIGN KEY (Perfil_Perfil) REFERENCES Perfil(idPerfil),
    FOREIGN KEY (Perfil_InicioSesion_IdEmail) REFERENCES Perfil(InicioSesion_IdEmail),
    FOREIGN KEY (Perfil_InicioSesion_Registro_Email) REFERENCES Perfil(InicioSesion_Registro_Email)
);







