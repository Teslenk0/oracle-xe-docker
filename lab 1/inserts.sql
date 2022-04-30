
--Oferentes
insert into Oferente (rut,razonSocial,nombre,direccion,fechaIngreso) values (1,'Oferente 1','Nombre 1','Direcci�n 1',to_date('31/08/2009','dd/mm/yyyy'));
insert into Oferente (rut,razonSocial,nombre,direccion,fechaIngreso) values (2,'Oferente 2','Nombre 2','Direcci�n 2',to_date('31/08/2009','dd/mm/yyyy'));
insert into Oferente (rut,razonSocial,nombre,direccion,fechaIngreso) values (3,'Oferente 3','Nombre 3','Direcci�n 3',to_date('31/08/2009','dd/mm/yyyy'));
insert into Oferente (rut,razonSocial,nombre,direccion,fechaIngreso) values (4,'Oferente 4','Nombre 4','Direcci�n 4',to_date('31/08/2009','dd/mm/yyyy'));
insert into Oferente (rut,razonSocial,nombre,direccion,fechaIngreso) values (5,'Oferente 5','Nombre 5','Direcci�n 5',to_date('31/08/2009','dd/mm/yyyy'));
insert into Oferente (rut,razonSocial,nombre,direccion,fechaIngreso) values (6,'Oferente 6','Nombre 6','Direcci�n 6',to_date('31/08/2009','dd/mm/yyyy'));
insert into Oferente (rut,razonSocial,nombre,direccion,fechaIngreso) values (7,'Oferente 7','Nombre 7','Direcci�n 7',to_date('31/08/2009','dd/mm/yyyy'));
insert into Oferente (rut,razonSocial,nombre,direccion,fechaIngreso) values (8,'Oferente 8','Nombre 8','Direcci�n 8',to_date('31/08/2009','dd/mm/yyyy'));
insert into Oferente (rut,razonSocial,nombre,direccion,fechaIngreso) values (9,'Oferente 9','Nombre 9','Direcci�n 9',to_date('31/08/2009','dd/mm/yyyy'));
commit;

--Ofertas de Trabajo
insert into OfertaTrabajo ( nroReferencia, rutOferente, puesto, disponibleDesde, cantVacantes, disponible) values (1,1,'Puesto 1',to_date('01/09/2009','dd/mm/yyyy'),1,'A');  
insert into OfertaTrabajo ( nroReferencia, rutOferente, puesto, disponibleDesde, cantVacantes, disponible) values (2,2,'Puesto 2',to_date('15/09/2009','dd/mm/yyyy'),1,'A');  
insert into OfertaTrabajo ( nroReferencia, rutOferente, puesto, disponibleDesde, cantVacantes, disponible) values (3,3,'Puesto 3',to_date('16/09/2009','dd/mm/yyyy'),5,'A');  
insert into OfertaTrabajo ( nroReferencia, rutOferente, puesto, disponibleDesde, cantVacantes, disponible) values (4,4,'Puesto 4',to_date('20/09/2009','dd/mm/yyyy'),2,'A');  
insert into OfertaTrabajo ( nroReferencia, rutOferente, puesto, disponibleDesde, cantVacantes, disponible) values (5,5,'Puesto 5',to_date('21/09/2009','dd/mm/yyyy'),1,'A');  
insert into OfertaTrabajo ( nroReferencia, rutOferente, puesto, disponibleDesde, cantVacantes, disponible) values (6,6,'Puesto 6',to_date('21/09/2009','dd/mm/yyyy'),1,'A');  
insert into OfertaTrabajo ( nroReferencia, rutOferente, puesto, disponibleDesde, cantVacantes, disponible) values (7,7,'Puesto 7',to_date('21/09/2009','dd/mm/yyyy'),3,'A');  
insert into OfertaTrabajo ( nroReferencia, rutOferente, puesto, disponibleDesde, cantVacantes, disponible) values (8,8,'Puesto 8',to_date('23/09/2009','dd/mm/yyyy'),4,'A');  
insert into OfertaTrabajo ( nroReferencia, rutOferente, puesto, disponibleDesde, cantVacantes, disponible) values (9,9,'Puesto 9',to_date('23/03/2009','dd/mm/yyyy'),1,'A');  
insert into OfertaTrabajo ( nroReferencia, rutOferente, puesto, disponibleDesde, cantVacantes, disponible) values (10,1,'Puesto 10',to_date('23/09/2009','dd/mm/yyyy'),8,'A');  
insert into OfertaTrabajo ( nroReferencia, rutOferente, puesto, disponibleDesde, cantVacantes, disponible) values (11,2,'Puesto 11',to_date('28/09/2009','dd/mm/yyyy'),2,'A');  
insert into OfertaTrabajo ( nroReferencia, rutOferente, puesto, disponibleDesde, cantVacantes, disponible) values (12,3,'Puesto 12',to_date('29/09/2009','dd/mm/yyyy'),3,'A');  
insert into OfertaTrabajo ( nroReferencia, rutOferente, puesto, disponibleDesde, cantVacantes, disponible) values (13,4,'Puesto 13',to_date('30/09/2009','dd/mm/yyyy'),4,'A');  
insert into OfertaTrabajo ( nroReferencia, rutOferente, puesto, disponibleDesde, cantVacantes, disponible) values (14,1,'Puesto 14',to_date('01/10/2009','dd/mm/yyyy'),5,'A');  
insert into OfertaTrabajo ( nroReferencia, rutOferente, puesto, disponibleDesde, cantVacantes, disponible) values (15,2,'Puesto 15',to_date('01/10/2009','dd/mm/yyyy'),1,'A');  
insert into OfertaTrabajo ( nroReferencia, rutOferente, puesto, disponibleDesde, cantVacantes, disponible) values (16,3,'Puesto 16',to_date('01/10/2009','dd/mm/yyyy'),1,'A');  
commit;

--Requisitos de las Ofertas de Trabajo
insert into RequisitoOferta ( nroReferencia, nroRequisito, excluyente, descripcion) values (1,1,'S','Descripcion requisito 1'); 
insert into RequisitoOferta ( nroReferencia, nroRequisito, excluyente, descripcion) values (1,2,'S','Descripcion requisito 2');        
insert into RequisitoOferta ( nroReferencia, nroRequisito, excluyente, descripcion) values (2,1,'N','Descripcion requisito 1');        
insert into RequisitoOferta ( nroReferencia, nroRequisito, excluyente, descripcion) values (3,1,'N','Descripcion requisito 1');        
insert into RequisitoOferta ( nroReferencia, nroRequisito, excluyente, descripcion) values (4,1,'N','Descripcion requisito 1');        
insert into RequisitoOferta ( nroReferencia, nroRequisito, excluyente, descripcion) values (5,1,'N','Descripcion requisito 1');        
insert into RequisitoOferta ( nroReferencia, nroRequisito, excluyente, descripcion) values (6,1,'N','Descripcion requisito 1');        
insert into RequisitoOferta ( nroReferencia, nroRequisito, excluyente, descripcion) values (7,1,'N','Descripcion requisito 1');        
insert into RequisitoOferta ( nroReferencia, nroRequisito, excluyente, descripcion) values (8,1,'N','Descripcion requisito 1');        
insert into RequisitoOferta ( nroReferencia, nroRequisito, excluyente, descripcion) values (9,1,'N','Descripcion requisito 1');        
insert into RequisitoOferta ( nroReferencia, nroRequisito, excluyente, descripcion) values (10,1,'N','Descripcion requisito 1');        
insert into RequisitoOferta ( nroReferencia, nroRequisito, excluyente, descripcion) values (11,1,'N','Descripcion requisito 1');        
insert into RequisitoOferta ( nroReferencia, nroRequisito, excluyente, descripcion) values (11,2,'N','Descripcion requisito 2');        
insert into RequisitoOferta ( nroReferencia, nroRequisito, excluyente, descripcion) values (12,1,'N','Descripcion requisito 1');        
insert into RequisitoOferta ( nroReferencia, nroRequisito, excluyente, descripcion) values (13,1,'N','Descripcion requisito 1');        
insert into RequisitoOferta ( nroReferencia, nroRequisito, excluyente, descripcion) values (14,1,'N','Descripcion requisito 1');        
insert into RequisitoOferta ( nroReferencia, nroRequisito, excluyente, descripcion) values (15,1,'N','Descripcion requisito 1');        
insert into RequisitoOferta ( nroReferencia, nroRequisito, excluyente, descripcion) values (16,1,'N','Descripcion requisito 1');        
insert into RequisitoOferta ( nroReferencia, nroRequisito, excluyente, descripcion) values (16,2,'N','Descripcion requisito 2');        
insert into RequisitoOferta ( nroReferencia, nroRequisito, excluyente, descripcion) values (5,2,'S','Descripcion requisito 2');        
insert into RequisitoOferta ( nroReferencia, nroRequisito, excluyente, descripcion) values (9,2,'N','Descripcion requisito 2');               
commit;

--Interesados
insert into Interesado ( ci, nombre, fNac, sexo, domicilio, cvPath) values (1,'Interesado 1',to_date('23/10/1982','dd/mm/yyyy'),'M','Domicilio 1','c:\CV1');  
insert into Interesado ( ci, nombre, fNac, sexo, domicilio, cvPath) values (2,'Interesado 2',to_date('04/07/1973','dd/mm/yyyy'),'F','Domicilio 2','c:\CV2'); 
insert into Interesado ( ci, nombre, fNac, sexo, domicilio, cvPath) values (3,'Interesado 3',to_date('08/07/1970','dd/mm/yyyy'),'M','Domicilio 3','c:\CV3'); 
insert into Interesado ( ci, nombre, fNac, sexo, domicilio, cvPath) values (4,'Interesado 4',to_date('26/06/1977','dd/mm/yyyy'),'M','Domicilio 4','c:\CV4'); 
insert into Interesado ( ci, nombre, fNac, sexo, domicilio, cvPath) values (5,'Interesado 5',to_date('21/02/1985','dd/mm/yyyy'),'F','Domicilio 5','c:\CV5'); 
insert into Interesado ( ci, nombre, fNac, sexo, domicilio, cvPath) values (6,'Interesado 6',to_date('27/01/1988','dd/mm/yyyy'),'F','Domicilio 6','c:\CV6'); 
insert into Interesado ( ci, nombre, fNac, sexo, domicilio, cvPath) values (7,'Interesado 7',to_date('05/04/1979','dd/mm/yyyy'),'F','Domicilio 7','c:\CV7'); 
insert into Interesado ( ci, nombre, fNac, sexo, domicilio, cvPath) values (8,'Interesado 8',to_date('30/12/1984','dd/mm/yyyy'),'M','Domicilio 8','c:\CV8'); 
insert into Interesado ( ci, nombre, fNac, sexo, domicilio, cvPath) values (9,'Interesado 9',to_date('29/08/1972','dd/mm/yyyy'),'M','Domicilio 9','c:\CV9'); 
insert into Interesado ( ci, nombre, fNac, sexo, domicilio, cvPath) values (10,'Interesado 10',to_date('02/09/1975','dd/mm/yyyy'),'F','Domicilio 10','c:\CV10'); 
commit;

--Postulaciones
insert into Postulacion ( ci, nroReferencia, fechaPostulacion, aspiraciones) values (1,1,to_date('02/09/2009','dd/mm/yyyy'),10000); 
insert into Postulacion ( ci, nroReferencia, fechaPostulacion, aspiraciones) values (1,2,to_date('15/09/2009','dd/mm/yyyy'),5000); 
insert into Postulacion ( ci, nroReferencia, fechaPostulacion, aspiraciones) values (2,3,to_date('18/09/2009','dd/mm/yyyy'),20000); 
insert into Postulacion ( ci, nroReferencia, fechaPostulacion, aspiraciones) values (3,4,to_date('22/09/2009','dd/mm/yyyy'),25000); 
insert into Postulacion ( ci, nroReferencia, fechaPostulacion, aspiraciones) values (4,5,to_date('24/09/2009','dd/mm/yyyy'),6000); 
insert into Postulacion ( ci, nroReferencia, fechaPostulacion, aspiraciones) values (5,6,to_date('23/09/2009','dd/mm/yyyy'),7000); 
insert into Postulacion ( ci, nroReferencia, fechaPostulacion, aspiraciones) values (5,2,to_date('16/09/2009','dd/mm/yyyy'),30000); 
insert into Postulacion ( ci, nroReferencia, fechaPostulacion, aspiraciones) values (5,3,to_date('19/09/2009','dd/mm/yyyy'),14000); 
insert into Postulacion ( ci, nroReferencia, fechaPostulacion, aspiraciones) values (6,5,to_date('25/09/2009','dd/mm/yyyy'),18000); 
insert into Postulacion ( ci, nroReferencia, fechaPostulacion, aspiraciones) values (7,10,to_date('25/09/2009','dd/mm/yyyy'),10000); 
commit;

--Cumplimiento de requisitos de los postulantes
insert into Post_Cumple_Req (ci, nroReferencia,nroRequisito,cumple) values (1,1,1,'S');
insert into Post_Cumple_Req (ci, nroReferencia,nroRequisito,cumple) values (1,1,2,'N');
insert into Post_Cumple_Req (ci, nroReferencia,nroRequisito,cumple) values (1,2,1,'S');
insert into Post_Cumple_Req (ci, nroReferencia,nroRequisito,cumple) values (2,3,1,'N');
insert into Post_Cumple_Req (ci, nroReferencia,nroRequisito,cumple) values (3,4,1,'N');
insert into Post_Cumple_Req (ci, nroReferencia,nroRequisito,cumple) values (4,5,1,'S');
insert into Post_Cumple_Req (ci, nroReferencia,nroRequisito,cumple) values (4,5,2,'S');
insert into Post_Cumple_Req (ci, nroReferencia,nroRequisito,cumple) values (5,6,1,'S');
insert into Post_Cumple_Req (ci, nroReferencia,nroRequisito,cumple) values (5,2,1,'S');
insert into Post_Cumple_Req (ci, nroReferencia,nroRequisito,cumple) values (5,3,1,'N');
insert into Post_Cumple_Req (ci, nroReferencia,nroRequisito,cumple) values (6,5,1,'S');
insert into Post_Cumple_Req (ci, nroReferencia,nroRequisito,cumple) values (6,5,2,'S');
insert into Post_Cumple_Req (ci, nroReferencia,nroRequisito,cumple) values (7,10,1,'S');
commit;
     