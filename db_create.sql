CREATE  TABLE IF NOT EXISTS DEPARTAMENTO (
 id_depto serial PRIMARY KEY,
 nombre varchar(30)
);
CREATE TABLE IF NOT EXISTS PERSONAL(
	rut varchar(30) PRIMARY KEY,
	nombre varchar(30),
	id_depto serial,
	FOREIGN KEY(id_depto) REFERENCES DEPARTAMENTO(id_depto)
);
CREATE TABLE IF NOT EXISTS PROYECTO(
	id_proy serial PRIMARY KEY,
	descrip varchar(60)
	
);
CREATE TABLE IF NOT EXISTS PER_PROY(
	id_per_proy serial PRIMARY KEY,
	rut varchar(30),
	id_proy serial,
	FOREIGN KEY(id_proy) REFERENCES PROYECTO(id_proy),
	FOREIGN KEY(rut) REFERENCES PERSONAL(rut)
	
);
CREATE TABLE IF NOT EXISTS CIUDAD(
	id_ciudad serial,
	nombre varchar(10)
);
CREATE TABLE IF NOT EXISTS DIRECTOR (
	id_director serial,
	nombre varchar(15)
);
