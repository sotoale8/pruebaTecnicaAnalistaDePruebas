SELECT empresa.nombre_empresa, inventario_emp.nombre_inventario, COUNT(*) as cantidad_duplicados
FROM empresa
JOIN inventario_emp ON empresa.id_empresa = inventario_emp.id_empresa
JOIN equipos ON inventario_emp.id_inventario = equipos.id_inventario
GROUP BY empresa.nombre_empresa, inventario_emp.nombre_inventario
HAVING COUNT(*) > 1;
