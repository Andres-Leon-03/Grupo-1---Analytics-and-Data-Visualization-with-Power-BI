-- PREGUNTA 01 ¿Cual es el porcentaje de participación de la familia "PPR Tubería" sobre el monto total de ventas en dólares de enero del 2025?

SELECT 
    MONTH(v.fecha) AS mes,
    (SUM(CASE WHEN p.familia = 'PPR Tubería' THEN vd.monto ELSE 0 END) / 
    SUM(vd.monto) * 100) AS porcentaje_participacion
FROM G1.ventas_detalle vd
JOIN G1.producto p ON vd.producto_id = p.producto_id
JOIN G1.ventas v ON vd.venta_id = v.venta_id
WHERE YEAR(v.fecha) = 2025
GROUP BY mes
ORDER BY mes;


-- PREGUNTA 02 ¿Productos más vendidos de la familia "PPR Tubería" en dólares de enero 2025?

SELECT 
    FLOOR(MONTH(v.fecha) / 3) + 1 AS trimestre,
    (SUM(CASE WHEN p.familia = 'PPR Tubería' THEN vd.monto ELSE 0 END) / 
    SUM(vd.monto) * 100) AS porcentaje_participacion
FROM G1.ventas_detalle vd
JOIN G1.producto p ON vd.producto_id = p.producto_id
JOIN G1.ventas v ON vd.venta_id = v.venta_id
WHERE YEAR(v.fecha) = 2025
GROUP BY trimestre
ORDER BY trimestre;


-- PREGUNTA 03 ¿Cuál es la tendencia de participación de la familia de productos PPR Tubería en las ventas totales a lo largo del 2025?

SELECT 
    MONTH(v.fecha) AS mes,
    (SUM(CASE WHEN p.familia = 'PPR Tubería' THEN vd.monto ELSE 0 END) / 
    SUM(vd.monto) * 100) AS porcentaje_participacion
FROM G1.ventas_detalle vd
JOIN G1.producto p ON vd.producto_id = p.producto_id
JOIN G1.ventas v ON vd.venta_id = v.venta_id
WHERE YEAR(v.fecha) = 2025
GROUP BY mes
ORDER BY mes;


-- PREGUNTA 04 ¿Cómo varió la participación de PPR Tubería por trimestres el año 2025?

SELECT 
    FLOOR(MONTH(v.fecha) / 3) + 1 AS trimestre,
    (SUM(CASE WHEN p.familia = 'PPR Tubería' THEN vd.monto ELSE 0 END) / 
    SUM(vd.monto) * 100) AS porcentaje_participacion
FROM G1.ventas_detalle vd
JOIN G1.producto p ON vd.producto_id = p.producto_id
JOIN G1.ventas v ON vd.venta_id = v.venta_id
WHERE YEAR(v.fecha) = 2025
GROUP BY trimestre
ORDER BY trimestre;


-- PREGUNTA 05 ¿Cuál es el monto total de ventas en dólares de la familia "PPR Tubería" durante enero de 2025?

SELECT 
    SUM(vd.monto) AS monto_total_ppr_tuberia
FROM G1.ventas_detalle vd
JOIN G1.producto p ON vd.producto_id = p.producto_id
JOIN G1.ventas v ON vd.venta_id = v.venta_id
WHERE p.familia = 'PPR Tubería' 
  AND YEAR(v.fecha) = 2025
  AND MONTH(v.fecha) = 1;


-- PREGUNTA 06 ¿Cuál es el monto total de ventas en dólares de la empresa (todas las familias) durante enero de 2025?

SELECT 
    SUM(vd.monto) AS monto_total_ventas_empresa
FROM G1.ventas_detalle vd
JOIN G1.ventas v ON vd.venta_id = v.venta_id
WHERE YEAR(v.fecha) = 2025 
  AND MONTH(v.fecha) = 1;


-- PREGUNTA 07 ¿Cuál es el porcentaje de participación de la familia "PPR Tubería" en las ventas totales de enero de 2025?

SELECT 
    (SUM(CASE WHEN p.familia = 'PPR Tubería' THEN vd.monto ELSE 0 END) / 
    SUM(vd.monto) * 100) AS porcentaje_participacion_ppr_tuberia
FROM G1.ventas_detalle vd
JOIN G1.producto p ON vd.producto_id = p.producto_id
JOIN G1.ventas v ON vd.venta_id = v.venta_id
WHERE YEAR(v.fecha) = 2025
  AND MONTH(v.fecha) = 1;


-- PREGUNTA 08 ¿Cuál es el monto de ventas de la familia "PPR Tubería" por cliente durante enero de 2025?

SELECT 
    c.nombre AS cliente,
    SUM(vd.monto) AS monto_ventas_cliente
FROM G1.ventas_detalle vd
JOIN G1.producto p ON vd.producto_id = p.producto_id
JOIN G1.ventas v ON vd.venta_id = v.venta_id
JOIN G1.clientes c ON v.cliente_id = c.cliente_id
WHERE p.familia = 'PPR Tubería' 
  AND YEAR(v.fecha) = 2025
  AND MONTH(v.fecha) = 1
GROUP BY c.nombre
ORDER BY monto_ventas_cliente DESC;


-- PREGUNTA 09 ¿Cuáles son los productos más vendidos de la familia "PPR Tubería" en términos de monto de ventas durante enero de 2025?

SELECT 
    p.nombre AS producto,
    SUM(vd.monto) AS total_ventas_producto
FROM G1.ventas_detalle vd
JOIN G1.producto p ON vd.producto_id = p.producto_id
JOIN G1.ventas v ON vd.venta_id = v.venta_id
WHERE p.familia = 'PPR Tubería' 
  AND YEAR(v.fecha) = 2025
  AND MONTH(v.fecha) = 1
GROUP BY p.nombre
ORDER BY total_ventas_producto DESC;


-- PREGUNTA 10 ¿Cuál es el porcentaje de participación de la familia "PPR Tubería" en las ventas totales en dólares de enero de 2025, considerando sólo las facturas emitidas?

SELECT 
    (SUM(CASE WHEN p.familia = 'PPR Tubería' THEN f.monto_factura_dolares ELSE 0 END) / 
    SUM(f.monto_factura_dolares) * 100) AS porcentaje_participacion_ppr_tuberia_facturas
FROM G1.facturas f
JOIN G1.ventas v ON f.venta_id = v.venta_id
JOIN G1.ventas_detalle vd ON v.venta_id = vd.venta_id
JOIN G1.producto p ON vd.producto_id = p.producto_id
WHERE YEAR(f.fecha_emision) = 2025
  AND MONTH(f.fecha_emision) = 1;
