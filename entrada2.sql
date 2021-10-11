CREATE DATABASE DBFase2;

USE DBFase2;

CREATE TABLE tbProducto (idproducto integer not null primary key,
  						 producto varchar(150) not null,
  						 fechacreacion date not null,
						 estado integer);

CREATE UNIQUE INDEX idx_producto ON tbProducto (idproducto);

CREATE TABLE tbCalificacion (idcalifica integer not null primary key,
							 item varchar(100) not null,
							 punteo integer not null);

CREATE UNIQUE INDEX idx_califica ON tbCalificacion (idcalifica);
						 
INSERT INTO tbProducto values(1,'Laptop Lenovo',NOW(),1);
INSERT INTO tbProducto values(2,'Bateria para Laptop Lenovo T420',NOW(),1);
INSERT INTO tbProducto values(3,'Teclado Inalambrico',NOW(),1);
INSERT INTO tbProducto values(4,'Mouse Inalambrico',NOW(),1);
INSERT INTO tbProducto values(5,'WIFI USB',NOW(),1);
INSERT INTO tbProducto values(6,'Laptop HP',NOW(),1);
INSERT INTO tbProducto values(7,'Teclado Flexible USB',NOW(),1);
INSERT INTO tbProducto values(8,'Laptop Samsung','2021-01-02',1);

--SELECT * from tbProducto;


CREATE FUNCTION ValidaRegistros(tabla varchar(50),cantidad integer) RETURNS integer AS $$
DECLARE 
	resultado integer = 0; 
	retorna   integer = 0;
BEGIN
	if tabla = 'tbProducto' then
            SELECT * FROM tbProducto;
	    resultado = 8;
    	if cantidad = resultado then
			retorna = 1;
			print(retorna);
		else 
			retorna = 0;
			print(retorna);
		end if;
	end if;

	if tabla = 'tbProductoUp' then
            SELECT * FROM tbProductoUp;
	    resultado = 2;
    	if cantidad = resultado then
			retorna = 11;
			print(retorna);
		else 
			retorna = 00;
			print(retorna);
		end if;
	end if;

	if tabla = 'tbbodega' then
	    SELECT * FROM tbbodega;
	    resultado = 6;
    	if cantidad = resultado then
			retorna = 111;
			print(retorna);
		else 
			retorna = 000;
			print(retorna);
		end if;
	end if;
RETURN retorna;
END
$$ LANGUAGE plpgsql;


insert into tbCalificacion values(1,'Create Table and Insert',ValidaRegistros('tbProducto',8));


insert into tbCalificacion values(1,'Create Table and Insert',1);

update tbProducto set estado = 2 where estado = 1;

insert into tbCalificacion values(2,'Update',1);

execute ValidaRegistros('tbProductoUp',2);

CREATE FUNCTION CALCULOS() RETURNS integer AS $$
DECLARE 
    hora integer = 0;
	SENO integer = 0;
	VALOR integer = 0;
	ABSOLUTO integer = 0;

BEGIN	
	hora  := (SELECT EXTRACT(HOUR FROM TIMESTAMP '2001-02-16 20:38:40'));
    	SENO  := (SELECT SIN(1));
    	VALOR  := TRUNC(SENO * hora, 1);
    	VALOR  := VALOR + LENGTH(SUBSTRING('FASE2',1,4));
    	ABSOLUTO  := ABS(SINH(-1));
    	ABSOLUTO := (ABSOLUTO * SQRT(225));
    	VALOR := (VALOR + ABSOLUTO)/ACOSD(0.5);
	IF VALOR > 1 THEN
		VALOR = 20;
		print(VALOR);
	ELSE
		VALOR = 10;
		print(VALOR);
	END IF;
RETURN VALOR;
END
$$ LANGUAGE plpgsql;

execute CALCULOS();

insert into tbCalificacion values(3,' Valida Funciones',10);

create table tbbodega (idbodega integer not null primary key,
					   bodega varchar(100) not null,
					   estado integer);
								  
CREATE INDEX index_bodega ON tbbodega (bodega);

create procedure sp_validainsert()
language plpgsql
as $$
begin
	insert into tbbodega values(1,'BODEGA CENTRAL',1);
	insert into tbbodega values(2,'BODEGA ZONA 12');
	insert into tbbodega values(3,'BODEGA ZONA 11',1);
	insert into tbbodega values(4,'BODEGA ZONA 1',1);
	insert into tbbodega values(5,'BODEGA ZONA 10',1);
end $$;
								 
EXECUTE sp_validainsert();
								 
insert into tbCalificacion values(4,'Valida Store Procedure',ValidaRegistros('tbbodega',5));
																			  

create procedure sp_validaupdate()
language plpgsql
as $$
begin
	update tbbodega set bodega = 'bodega zona 9' where idbodega = 4; 
end; $$

EXECUTE sp_validaupdate();

delete from tbbodega where idbodega = 4;

insert into tbCalificacion values(5,'Valida Delete',ValidaRegistros('tbbodega',4));
select * from tbbodega;




























