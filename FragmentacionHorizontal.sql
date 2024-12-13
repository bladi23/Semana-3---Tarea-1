--insert cliente1vertical(id, nombres, apellidos)



--select IdCliente, Nombres, Apellidos from Clientes





--select IdCliente, direccion, telefono, correo from Clientes
--select COUNT(*)FROM cliente1vertical

--Id solo pares
INSERT INTO Cliente3Horizontal (id, nombres, apellidos)
select IdCliente, Nombres, Apellidos from Clientes
WHERE IdCliente % 2 = 0; 


-- Id solo impares
INSERT INTO Cliente4Horizontal (id, Direccion, Telefono, Correo)
SELECT IdCliente, Direccion, Telefono, Correo
FROM Clientes
WHERE IdCliente % 2 = 1; 

SELECT 
    C1.id,
    C1.Nombres,
    C1.Apellidos,
    C2.Direccion,
    C2.Telefono,
    C2.Correo
FROM Cliente1Vertical C1
INNER JOIN Cliente2Vertical C2 ON C1.id = C2.id
UNION ALL
SELECT 
    C3.id,
    C3.Nombres,
    C3.Apellidos,
    C4.Direccion,
    C4.Telefono,
    C4.Correo
FROM Cliente3Horizontal C3
INNER JOIN Cliente4Horizontal C4 ON C3.id = C4.id;
