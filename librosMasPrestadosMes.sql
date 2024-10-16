SELECT titulo, COUNT(*) as total_prestamos
FROM Prestamo
JOIN Libro ON Prestamo.id_libro = Libro.id_libro
WHERE fecha_prestamo >= @fecha_inicio AND fecha_prestamo < @fecha_fin
GROUP BY titulo
ORDER BY total_prestamos DESC
LIMIT 5;
