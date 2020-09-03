/*
SQLyog Enterprise - MySQL GUI v8.05 
MySQL - 5.5.16 : Database - sic
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`sic` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sic`;

/*Table structure for table `afecta` */

DROP TABLE IF EXISTS `afecta`;

CREATE TABLE `afecta` (
  `id_transaccion` int(11) NOT NULL,
  `CODIGO` int(11) NOT NULL,
  PRIMARY KEY (`id_transaccion`,`CODIGO`),
  KEY `FK_AFECTA` (`CODIGO`),
  CONSTRAINT `FK_AFECTA` FOREIGN KEY (`CODIGO`) REFERENCES `cuenta` (`CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `afecta` */

/*Table structure for table `cuenta` */

DROP TABLE IF EXISTS `cuenta`;

CREATE TABLE `cuenta` (
  `CODIGO` int(11) NOT NULL,
  `cue_codigo` int(11) DEFAULT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `DEBE` double(10,2) DEFAULT '0.00',
  `HABER` double(10,2) DEFAULT '0.00',
  `ESTADOFINANCIERO` int(11) NOT NULL,
  `OPERACIONENESTADO` int(11) NOT NULL,
  `PRECIO` double(10,2) DEFAULT NULL,
  `CANTIDAD` int(11) DEFAULT NULL,
  PRIMARY KEY (`CODIGO`),
  KEY `FK_POSEE1` (`cue_codigo`),
  CONSTRAINT `FK_POSEE1` FOREIGN KEY (`cue_codigo`) REFERENCES `cuentascatalogo` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cuenta` */

insert  into `cuenta`(`CODIGO`,`cue_codigo`,`NOMBRE`,`DEBE`,`HABER`,`ESTADOFINANCIERO`,`OPERACIONENESTADO`,`PRECIO`,`CANTIDAD`) values (110101,1101,'Caja Chica',0.00,2000.00,3,0,0.00,0),(110102,1101,'Banco',0.00,5000.00,3,0,NULL,0),(110103,1101,'Efectivo',55000.00,0.00,3,0,NULL,0),(110201,1102,'Cuentas Por Cobrar',0.00,0.00,3,0,0.00,0),(110202,1102,'Documentos Por Cobrar',0.00,0.00,3,0,0.00,0),(110301,1103,'Reserva Cuentas Incobrables',0.00,0.00,3,1,0.00,0),(110401,1104,'Inventario De Papel De Diario',2000.00,0.00,3,0,0.00,40),(110402,1104,'Inventario De Mecha',0.00,0.00,3,0,0.00,0),(110403,1104,'Inventario De Polvora',0.00,0.00,3,0,0.00,0),(110404,1104,'Inventario De Engrudo',0.00,0.00,3,0,0.00,0),(110405,1104,'Inventario De Papel De China',0.00,0.00,3,0,0.00,0),(110406,1104,'Inventario De Aserrin',0.00,0.00,3,0,0.00,0),(110501,1105,'Iva Credito Fiscal',0.00,0.00,3,0,0.00,0),(110601,1106,'Variacion GIF',0.00,0.00,3,0,NULL,NULL),(110701,1107,'Orden de fabricacion 01',0.00,0.00,3,0,NULL,NULL),(120101,1201,'Bancos',0.00,0.00,3,0,NULL,NULL),(120201,1202,'Terrenos',0.00,0.00,3,0,0.00,0),(120202,1202,'Edificios',0.00,0.00,3,0,0.00,0),(120203,1202,'Instalaciones',0.00,0.00,3,0,0.00,0),(120204,1202,'Moviliario y Equipo De Oficina',0.00,0.00,3,0,0.00,0),(120205,1202,'Equipo De Transporte',0.00,0.00,3,0,0.00,0),(120206,1202,'Otros Bienes',0.00,0.00,3,0,0.00,0),(120301,1203,'Depreciacion De Edificios',0.00,0.00,3,1,0.00,0),(120302,1203,'Depreciacion De Instalaciones',0.00,0.00,3,1,0.00,0),(120303,1203,'Depreciacion De Moviliario y Equipo',0.00,0.00,3,1,0.00,0),(120304,1203,'Depreciacion De Equipo De Transporte',0.00,0.00,3,1,0.00,0),(120305,1203,'Depreciacion De Otros Activos',0.00,0.00,3,1,0.00,0),(120401,1204,'Patentes y Marcas',0.00,0.00,3,0,0.00,0),(120501,1205,'Patentes y Marcas',0.00,0.00,3,1,0.00,0),(210101,2101,'Proveedores',0.00,0.00,3,0,0.00,0),(210102,2101,'Documentos por pagar',0.00,0.00,3,0,0.00,0),(210103,2101,'Pago a seguridad privada',0.00,0.00,3,0,0.00,0),(210201,2102,'Sobregiros bancarios',0.00,0.00,3,0,0.00,0),(210202,2102,'Prestamos a corto plazo',0.00,0.00,3,0,0.00,0),(210203,2102,'Porcion circulante de prestamos a largo plazo',0.00,0.00,3,0,0.00,0),(210204,2102,'Otros prestamos',0.00,0.00,3,0,0.00,0),(210301,2103,'Salarios',0.00,0.00,3,0,0.00,0),(210302,2103,'Comisiones',0.00,0.00,3,0,0.00,0),(210303,2103,'Vacaciones',0.00,0.00,3,0,0.00,0),(210304,2103,'Aguinaldos',0.00,0.00,3,0,0.00,0),(210401,2104,'ISSS',0.00,0.00,1,0,0.00,0),(210402,2104,'AFP',0.00,0.00,1,0,0.00,0),(210403,2104,'Retencion del impuesto sobre la renta',0.00,0.00,1,0,0.00,0),(210501,2105,'Iva debito fiscal',0.00,0.00,3,0,0.00,0),(220101,2201,'Cuentas por pagar',0.00,0.00,3,0,0.00,0),(220102,2201,'Documentos por pagar',0.00,0.00,3,0,0.00,0),(310101,3101,'Capital social',0.00,49000.00,4,0,0.00,0),(310201,3102,'Utilidad',0.00,0.00,2,0,0.00,0),(320101,3201,'Gastos por robo',0.00,0.00,2,1,0.00,0),(320102,3201,'Retiro por uso personal',0.00,0.00,2,1,0.00,0),(410101,4101,'Gasto por salario',0.00,0.00,1,1,0.00,0),(410102,4101,'Gasto por servicio prestado',0.00,0.00,1,1,0.00,0),(410103,4101,'Costo de lo vendido',0.00,0.00,1,1,0.00,0),(410104,4101,'Gasto por servicios basicos',0.00,0.00,1,1,0.00,0),(410105,4101,'Gasto por gasolina',0.00,0.00,1,1,0.00,0),(410106,4101,'Gasto de venta',0.00,0.00,1,1,0.00,0),(410107,4101,'Gasto de administracion',0.00,0.00,1,1,0.00,0),(410108,4101,'Gasto por descuento no aprovechado',0.00,0.00,1,1,0.00,0),(420101,4201,'Ingreso por ventas',0.00,1000.00,1,0,NULL,0),(420102,4201,'Ingreso por descuento aprovechados',0.00,0.00,1,0,0.00,0);

/*Table structure for table `cuentascatalogo` */

DROP TABLE IF EXISTS `cuentascatalogo`;

CREATE TABLE `cuentascatalogo` (
  `codigo` int(11) NOT NULL,
  `cuenta` varchar(100) DEFAULT NULL,
  `id_tipocuenta` int(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `FK_TIENE1` (`cuenta`),
  KEY `tiene1` (`id_tipocuenta`),
  CONSTRAINT `tiene1` FOREIGN KEY (`id_tipocuenta`) REFERENCES `tiposcuenta` (`id_tipocuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cuentascatalogo` */

insert  into `cuentascatalogo`(`codigo`,`cuenta`,`id_tipocuenta`) values (1101,'Efectivo y equivalentes',1),(1102,'Cuentas y documentos por cobrar',1),(1103,'Estimacion para cuentas incobrables',1),(1104,'inventarios',1),(1105,'Iva credito fiscal',1),(1106,'Varacion GIF',1),(1107,'Ordenes de Fabricacion',1),(1108,'Costos de fabricacion',1),(1201,'Efectivo restringido',1),(1202,'Propiedad planta y equipo',1),(1203,'Depreciacion acumulada de planta y equipo ',1),(1204,'Activos intangibles',1),(1205,'Amortizacion de intangibles ',1),(1206,'Cuentas y documentos por cobrar a largo plazo',1),(1207,'Estimacion cuentas incobrables a largo plazo',1),(2101,'Cuentas y documentos por pagar',2),(2102,'Prestamos y sobregiros bancarios',2),(2103,'Remuneraciones y prestamos por pagar a empleados',2),(2104,'Retenciones y descuentos',2),(2105,'Iva debito fiscal',2),(2201,'Cuentas y documentos por pagar',2),(3101,'Capital social',3),(3102,'Utilidad',3),(3201,'Desinversiones',3),(4101,'Gastos y costos',2),(4201,'Ingresos',2);

/*Table structure for table `empleado` */

DROP TABLE IF EXISTS `empleado`;

CREATE TABLE `empleado` (
  `IDEMPLEADO` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBREEMPRESA` varchar(50) DEFAULT NULL,
  `NOMBREEMPLEADO` varchar(100) NOT NULL,
  `SALARIO` double NOT NULL,
  PRIMARY KEY (`IDEMPLEADO`),
  KEY `FK_TIENE2` (`NOMBREEMPRESA`),
  CONSTRAINT `FK_TIENE2` FOREIGN KEY (`NOMBREEMPRESA`) REFERENCES `empresa` (`NOMBREEMPRESA`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `empleado` */

insert  into `empleado`(`IDEMPLEADO`,`NOMBREEMPRESA`,`NOMBREEMPLEADO`,`SALARIO`) values (16,NULL,'Jorge Gutierrez',500),(17,NULL,'Kevin Melara',400),(18,NULL,'Italo Umaña',350),(19,NULL,'Bennett Melara',300),(20,NULL,'Walter Lemus',200),(21,NULL,'Jose Rodriguez',400),(22,NULL,'Luis de Jesus',400),(23,NULL,'Carlos Juarez',400),(24,NULL,'Maria Ena',300),(25,NULL,'Enrique Garcia',300),(26,NULL,'Alirio Suarez',300),(27,NULL,'Marianela Cordero',200);

/*Table structure for table `empresa` */

DROP TABLE IF EXISTS `empresa`;

CREATE TABLE `empresa` (
  `NOMBREEMPRESA` varchar(50) NOT NULL,
  PRIMARY KEY (`NOMBREEMPRESA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `empresa` */

insert  into `empresa`(`NOMBREEMPRESA`) values ('PIROTECNIA EL KRILIN');

/*Table structure for table `periodocontable` */

DROP TABLE IF EXISTS `periodocontable`;

CREATE TABLE `periodocontable` (
  `FECHAINICIO` date NOT NULL,
  `FECHAFINAL` date DEFAULT NULL,
  `IDPERIODOCONTABLE` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`IDPERIODOCONTABLE`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `periodocontable` */

insert  into `periodocontable`(`FECHAINICIO`,`FECHAFINAL`,`IDPERIODOCONTABLE`) values ('2014-11-28','2015-11-29',1),('2014-12-02','2015-11-29',2),('2015-11-29','2015-11-29',3),('2015-11-29','2015-11-29',4);

/*Table structure for table `tiposcuenta` */

DROP TABLE IF EXISTS `tiposcuenta`;

CREATE TABLE `tiposcuenta` (
  `id_tipocuenta` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tipocuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tiposcuenta` */

insert  into `tiposcuenta`(`id_tipocuenta`,`tipo`) values (1,'Activo'),(2,'Pasivo'),(3,'Capital');

/*Table structure for table `transacciones` */

DROP TABLE IF EXISTS `transacciones`;

CREATE TABLE `transacciones` (
  `id_transaccion` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_transaccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transacciones` */

insert  into `transacciones`(`id_transaccion`,`descripcion`,`fecha`) values (0,'Ingreso por venta','2015-11-29');

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(30) NOT NULL,
  `contrasena` varchar(30) NOT NULL,
  `tipo_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `usuarios` */

insert  into `usuarios`(`id_usuario`,`usuario`,`contrasena`,`tipo_usuario`) values (28,'jorge','1234',1),(30,'Admin','1234',2);

/* Procedure structure for procedure `sp_idtransaccion` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_idtransaccion` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_idtransaccion`(inout vid_transaccion int)
BEGIN
    set vid_transaccion=(select (max(id_transaccion)) from transacciones)+1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_iniciarperiodo` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_iniciarperiodo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_iniciarperiodo`()
BEGIN
     declare capital double(10,2) default 0;
     DECLARE capitalHab DOUBLE(10,2) DEFAULT 0;
     set capital=(SELECT SUM(debe)-SUM(haber) FROM cuenta WHERE (estadofinanciero = 1 OR estadofinanciero = 2 OR estadofinanciero = 4) AND (debe != 0 OR haber != 0));
     INSERT INTO periodocontable(FECHAINICIO,FECHAFINAL) VALUES(CURDATE(),NULL);
     UPDATE cuenta SET DEBE=0.00,HABER=0.00, CANTIDAD=0, PRECIO=0.00 where  ESTADOFINANCIERO=1 or ESTADOFINANCIERO=2;
     delete from transacciones;
      if(capital>=0) then
      begin
      UPDATE cuenta SET DEBE=capital,HABER=0.00, CANTIDAD=0, PRECIO=0.00 WHERE(CODIGO=310101);
     end;
     end if;
 
     IF(capital<0) THEN
      BEGIN
      UPDATE cuenta SET DEBE=0.00,HABER=capital*-1, CANTIDAD=0, PRECIO=0.00 WHERE(CODIGO=310101);
     END;
     END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_insertar_cuentas` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_insertar_cuentas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_cuentas`(
    vCodigo int,
    vCuenta varchar(50),
    vTipo VARCHAR(50),
    vSDeudor Double(10,2),
    vSAcreedor DOUBLE(10,2),
    vCantidad INT
    )
BEGIN
    DECLARE sumaDeudor DOUBLE(10,2) default 0 ;
    DECLARE sumaAcreedor DOUBLE(10,2) DEFAULT 0 ;
    DECLARE cantidadT int DEFAULT 0 ;
    declare vPrecio DOUBLE(10,2) DEFAULT 0 ;
    SET cantidadT=(SELECT SUM(CANTIDAD) FROM cuenta WHERE(CODIGO=vCodigo))+vCantidad;
    set sumaDeudor=(select sum(DEBE) from cuenta where(CODIGO=vCodigo))+vSDeudor;
    SET sumaAcreedor=(SELECT SUM(HABER) FROM cuenta WHERE(CODIGO=vCodigo))+vSAcreedor;
    set vPrecio=(sumaDeudor-sumaAcreedor)/cantidadT;
    if((select count(1) from cuenta where(CODIGO=vCodigo))>0) then
    update cuenta set DEBE=sumaDeudor,HABER=sumaAcreedor, CANTIDAD=cantidadT, PRECIO=vPrecio where(CODIGO=vCodigo);
    select "Ingresado con exito!!";
    end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_insertar_orden` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_insertar_orden` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_orden`(
    vCodigo INT,
    vCuenta VARCHAR(50),
    vTipo VARCHAR(50),
    vSDeudor DOUBLE(10,2),
    vSAcreedor DOUBLE(10,2),
    vCantidad INT
    )
BEGIN
    DECLARE sumaDeudor DOUBLE(10,2) DEFAULT 0 ;
    DECLARE sumaAcreedor DOUBLE(10,2) DEFAULT 0 ;
    DECLARE cantidadT INT DEFAULT 0 ;
    #DECLARE vPrecio DOUBLE(10,2) DEFAULT 0 ;
    SET cantidadT=(SELECT SUM(CANTIDAD) FROM cuenta WHERE(CODIGO=vCodigo))+vCantidad;
    SET sumaDeudor=(SELECT SUM(DEBE) FROM cuenta WHERE(CODIGO=vCodigo))+vSDeudor;
    SET sumaAcreedor=(SELECT SUM(HABER) FROM cuenta WHERE(CODIGO=vCodigo))+vSAcreedor;
    #SET vPrecio=(sumaDeudor-sumaAcreedor)/cantidadT;
    IF((SELECT COUNT(1) FROM cuenta WHERE(CODIGO=vCodigo))>0) THEN
    UPDATE cuenta SET DEBE=sumaDeudor,HABER=sumaAcreedor WHERE(CODIGO=vCodigo);
    SELECT "Ingresado con exito!!";
    END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_inventarios` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_inventarios` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_inventarios`()
BEGIN
      select CODIGO, PRECIO FROM cuenta WHERE CODIGO>=110401 && CODIGO<=110408;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_nuevaCuenta` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_nuevaCuenta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_nuevaCuenta`(vCodigo int, vCueCod int, vNombre varchar(50), vEstado int, vOperacion int)
BEGIN
        insert into cuenta(CODIGO, cue_codigo, NOMBRE, ESTADOFINANCIERO, OPERACIONENESTADO) values(vCodigo, vCueCod,vNombre, vEstado, vOperacion );
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_obtenerCodigo` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_obtenerCodigo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_obtenerCodigo`( inout vCodigo int)
BEGIN
      DECLARE auxCodigo INT;
      if((SELECT MAX(CODIGO) FROM cuenta WHERE cue_codigo=vCodigo) is null) then
      set auxCodigo=(vCodigo*100)+1;
      set vCodigo=auxCodigo;
      else
      set auxCodigo=(select max(CODIGO) from cuenta where cue_codigo=vCodigo);
      set vCodigo=auxCodigo+1;
      end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_orden` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_orden` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_orden`(inout orden double(10,2))
BEGIN
    set orden=(SELECT debe FROM cuenta WHERE codigo='110701');
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_proceso_periodo` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_proceso_periodo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_proceso_periodo`(inout periodoProceso int, INOUT numPeriodo int)
BEGIN
     set numPeriodo=(select MAx(IDPERIODOCONTABLE)FROM periodocontable);
 
     if((select count(1) from periodocontable)>0)then
 
         if((select FECHAFINAL FROM periodocontable where (IDPERIODOCONTABLE=(select MAX(IDPERIODOCONTABLE) from periodocontable)))is null)then
             set periodoProceso=1;
         else
             SET periodoProceso=0;
         end if;
 
     else
       SET periodoProceso=2;
     end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saldarCuentas` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saldarCuentas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saldarCuentas`( op int, vCod int)
BEGIN
 
    DECLARE deb DOUBLE(10,2) DEFAULT 0;
    DECLARE hab DOUBLE(10,2) DEFAULT 0;
    DECLARE dif DOUBLE(10,2) DEFAULT 0;
 
 if(op=0) then
 begin
 select * from cuenta;
 end;
 end if;
 
   if(op=1) then
   BEGIN
   set deb=(select DEBE from cuenta where CODIGO=vCod);
   set hab=(SELECT HABER FROM cuenta WHERE CODIGO=vCod);
   set dif=deb-hab;
   UPDATE periodocontable SET  FECHAFINAL=CURDATE() WHERE IDPERIODOCONTABLE=(SELECT MAX(IDPERIODOCONTABLE));
   
   if(dif>0) then
      update cuenta set DEBE=dif, HABER='0.00' where CODIGO=vCod;
   else
      UPDATE cuenta SET DEBE='0.00', HABER=(dif*-1) WHERE CODIGO=vCod;
   end if;
 end;
   END IF;
end */$$
DELIMITER ;

/* Procedure structure for procedure `sp_tablacatalogo` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_tablacatalogo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tablacatalogo`(vcodigo_cuenta int)
BEGIN
       SELECT s.CODIGO, s.NOMBRE, (SELECT t.tipo FROM tiposcuenta t, cuentascatalogo c  WHERE (t.id_tipocuenta=c.id_tipocuenta and c.codigo=vcodigo_cuenta)) as tipocuenta
       FROM cuenta s where s.cue_codigo=vcodigo_cuenta;      
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
