INSERT INTO G1.producto (producto_id, nombre, familia, descripcion, precio)
VALUES
(1, 'Tubería PPR 20mm', 'PPR Tubería', 'Tubería para sistemas de agua potable', 10.00),
(2, 'Tubería PPR 25mm', 'PPR Tubería', 'Tubería para sistemas de agua potable', 12.00),
(3, 'Codo PPR 20mm', 'PPR Tubería', 'Codo para sistema PPR de 20mm', 5.50),
(4, 'Codo PPR 25mm', 'PPR Tubería', 'Codo para sistema PPR de 25mm', 7.00),
(5, 'Tee PPR 20mm', 'PPR Tubería', 'Tee para sistema PPR de 20mm', 15.00),
(6, 'Tubería PPR-ACCESORIO 20mm', 'PPR-ACCESORIO', 'Tubería de accesorios para PPR de 20mm', 8.00),
(7, 'Válvula PPR-ACCESORIO 50mm', 'PPR-ACCESORIO', 'Válvula de cierre para sistemas PPR', 25.00),
(8, 'Codo PPR-ACCESORIO 25mm', 'PPR-ACCESORIO', 'Codo de 25mm para accesorios PPR', 6.50),
(9, 'Tubería Drain 25mm', 'PPR-DRAIN SYSTEM', 'Tubería de drenaje 25mm', 9.00),
(10, 'Codo Drain 40mm', 'PPR-DRAIN SYSTEM', 'Codo para drenaje 40mm', 10.00),
(11, 'Tee Drain 50mm', 'PPR-DRAIN SYSTEM', 'Tee para drenaje 50mm', 16.00),
(12, 'Tubería ACI 32mm', 'PPR-ACI', 'Tubería para agua caliente PPR ACI', 12.50),
(13, 'Codo ACI 25mm', 'PPR-ACI', 'Codo para agua caliente PPR ACI', 6.75),
(14, 'Codo VALCO 40mm', 'VALCO', 'Codo de acero para sistemas industriales 40mm', 18.00),
(15, 'Tubería VALCO 50mm', 'VALCO', 'Tubería de acero para sistemas industriales 50mm', 22.00),
(16, 'Tubería PPR 40mm', 'PPR Tubería', 'Tubería para sistemas de agua potable', 18.00),
(17, 'Codo PPR 40mm', 'PPR Tubería', 'Codo para sistema PPR de 40mm', 10.00),
(18, 'Válvula PPR 50mm', 'PPR Tubería', 'Válvula para sistemas de agua potable de 50mm', 25.00),
(19, 'Codo PPR 50mm', 'PPR Tubería', 'Codo para sistema PPR de 50mm', 14.00),
(20, 'Válvula PPR 32mm', 'PPR Tubería', 'Válvula de cierre para sistemas de agua potable', 16.00);


INSERT INTO G1.productos_familias (familia_id, nombre_familia, descripcion_familia)
VALUES
(1, 'PPR Tubería', 'Tuberías y accesorios para sistemas de agua potable'),
(2, 'PPR-ACCESORIO', 'Accesorios para instalaciones de sistemas PPR'),
(3, 'PPR-DRAIN SYSTEM', 'Sistema de drenaje en PPR para industrias'),
(4, 'PPR-ACI', 'Tuberías para sistemas de agua caliente (PPR-ACI)'),
(5, 'VALCO', 'Productos de acero para sistemas industriales'),
(6, 'HERRAMIENTAS', 'Herramientas para instalación de sistemas de tuberías'),
(7, 'HERRAMIENTAS ELECTRICAS', 'Herramientas eléctricas para corte y soldadura de tubos'),
(8, 'MATERIALES DE CONSTRUCCION', 'Materiales para la construcción en general');


INSERT INTO G1.clientes (cliente_id, nombre, tipo_documento, numero_documento, direccion, telefono, correo)
VALUES
(1, 'Juan Pérez', 'DNI', '12345678', 'Av. Las Palmas 123', '999123456', 'juanperez@email.com'),
(2, 'Maria Gómez', 'RUC', '12345678901', 'Jr. Comercio 456', '988654321', 'maria@email.com'),
(3, 'Carlos Silva', 'DNI', '23456789', 'Av. San Martin 789', '997654321', 'carlos@email.com'),
(4, 'Lucía Fernández', 'RUC', '98765432100', 'Jr. Lima 345', '995678123', 'lucia@email.com'),
(5, 'Pedro Sánchez', 'DNI', '34567890', 'Av. El Sol 234', '988765432', 'pedro@email.com'),
(6, 'Ana Díaz', 'RUC', '87654321098', 'Calle Bolívar 567', '992345678', 'ana@email.com'),
(7, 'Carlos Martín', 'DNI', '98765432', 'Jr. Los Pinos 123', '993456789', 'carlosmartin@email.com'),
(8, 'Luisa Vargas', 'RUC', '54321098765', 'Calle 7 890', '994567890', 'luisa@email.com'),
(9, 'Roberto Ruiz', 'DNI', '12309876', 'Av. Los Álamos 567', '991234567', 'roberto@email.com'),
(10, 'Fernando García', 'RUC', '67890987654', 'Calle Perú 234', '998876543', 'fer@empresa.com'),
(11, 'Sandra Martínez', 'DNI', '56789012', 'Av. Sol 456', '990123456', 'sandra@email.com'),
(12, 'Miguel Soto', 'RUC', '45678901234', 'Jr. Mirasol 678', '992345690', 'miguel@email.com'),
(13, 'José Rodríguez', 'DNI', '78901234', 'Av. 28 de Julio 345', '990654321', 'jose@email.com'),
(14, 'Elena Herrera', 'RUC', '23456789012', 'Jr. Arenales 432', '994567123', 'elena@email.com'),
(15, 'Ricardo Ortega', 'DNI', '89012345', 'Av. La Molina 987', '993210987', 'ricardo@email.com');



INSERT INTO G1.ventas (venta_id, fecha, monto_total_dolares, cliente_id)
VALUES
(1, '2025-01-01', 2000.00, 1),
(2, '2025-01-02', 3500.00, 2),
(3, '2025-01-05', 1500.00, 3),
(4, '2025-01-07', 2700.00, 4),
(5, '2025-01-10', 4200.00, 5),
(6, '2025-01-12', 3800.00, 6),
(7, '2025-01-15', 2200.00, 7),
(8, '2025-01-18', 3100.00, 8),
(9, '2025-01-20', 1600.00, 9),
(10, '2025-01-22', 5400.00, 10),
(11, '2025-01-25', 4700.00, 11),
(12, '2025-01-28', 3300.00, 12),
(13, '2025-01-30', 2900.00, 13),
(14, '2025-01-31', 5100.00, 14),
(15, '2025-01-30', 3500.00, 15),
(16, '2024-12-01', 3100.00, 1),
(17, '2024-12-03', 2800.00, 2),
(18, '2024-12-08', 3900.00, 3),
(19, '2024-12-15', 4000.00, 4),
(20, '2024-12-18', 5300.00, 5),
(21, '2024-12-22', 4500.00, 6),
(22, '2024-11-10', 2700.00, 7),
(23, '2024-11-25', 2200.00, 8),
(24, '2024-11-30', 3500.00, 9);


INSERT INTO G1.facturas (factura_id, venta_id, numero_factura, fecha_emision, monto_factura_dolares)
VALUES
(1, 1, 'F001', '2025-01-01', 2000.00),
(2, 2, 'F002', '2025-01-02', 3500.00),
(3, 3, 'F003', '2025-01-05', 1500.00),
(4, 4, 'F004', '2025-01-07', 2700.00),
(5, 5, 'F005', '2025-01-10', 4200.00),
(6, 6, 'F006', '2025-01-12', 3800.00),
(7, 7, 'F007', '2025-01-15', 2200.00),
(8, 8, 'F008', '2025-01-18', 3100.00),
(9, 9, 'F009', '2025-01-20', 1600.00),
(10, 10, 'F010', '2025-01-22', 5400.00),
(11, 11, 'F011', '2025-01-25', 4700.00),
(12, 12, 'F012', '2025-01-28', 3300.00),
(13, 13, 'F013', '2025-01-30', 2900.00),
(14, 14, 'F014', '2025-01-31', 5100.00),
(15, 15, 'F015', '2025-01-30', 3500.00),
(16, 16, 'F016', '2024-12-01', 3100.00),  
(17, 17, 'F017', '2024-12-03', 2800.00), 
(18, 18, 'F018', '2024-12-08', 3900.00),  
(19, 19, 'F019', '2024-12-15', 4000.00),  
(20, 20, 'F020', '2024-12-18', 5300.00),  
(21, 21, 'F021', '2024-12-22', 4500.00),  
(22, 22, 'F022', '2024-11-10', 2700.00), 
(23, 23, 'F023', '2024-11-25', 2200.00), 
(24, 24, 'F024', '2024-11-30', 3500.00);  



INSERT INTO G1.promociones (promocion_id, nombre, descripcion, tipo_descuento, valor_descuento, fecha_inicio, fecha_fin)
VALUES
(1, 'Descuento enero', 'Descuento del 10% en todas las tuberías PPR', 'Porcentaje', 10.00, '2025-01-01', '2025-01-31'),
(2, 'Promoción verano', 'Descuento de $5 en cada válvula', 'Monto fijo', 5.00, '2025-01-01', '2025-01-31'),
(3, 'Promoción de inicio de año', 'Descuento de $10 en compras superiores a $1000', 'Monto fijo', 10.00, '2025-01-01', '2025-01-31'),
(4, 'Descuento especial', 'Descuento del 15% en productos de drenaje', 'Porcentaje', 15.00, '2025-01-01', '2025-01-31'),
(5, 'Descuento PPR', 'Promoción 20% en todas las ventas de tuberías PPR', 'Porcentaje', 20.00, '2025-01-01', '2025-01-31'),
(6, 'Descuento navideño', 'Descuento del 5% en todos los productos VALCO', 'Porcentaje', 5.00, '2024-12-01', '2024-12-31'),
(7, 'Descuento primavera', 'Descuento de $10 en todos los codos PPR', 'Monto fijo', 10.00, '2024-11-01', '2024-11-30');



INSERT INTO G1.descuentos (descuento_id, promocion_id, familia_id, producto_id)
VALUES
(1, 1, 1, 1),  -- Descuento 10% para PPR Tubería en producto Tubería PPR 20mm
(2, 1, 1, 2),  -- Descuento 10% para PPR Tubería en producto Tubería PPR 25mm
(3, 2, 5, 14), -- Descuento de $5 para productos VALCO en Codo VALCO 40mm
(4, 3, 1, 3),  -- Descuento de $10 para productos PPR Tubería en Codo PPR 20mm
(5, 4, 3, 10), -- Descuento 15% para productos PPR-DRAIN SYSTEM en Codo Drain 40mm
(6, 5, 1, 12), -- Descuento 20% para productos PPR Tubería en Tubería PPR-ACI 32mm
(7, 1, 1, 4),  -- Descuento 10% para PPR Tubería en Codo PPR 25mm
(8, 2, 1, 5),  -- Descuento de $5 para PPR Tubería en Tee PPR 20mm
(9, 3, 2, 6),  -- Descuento de $10 para productos PPR-ACCESORIO en Tubería PPR-ACCESORIO 20mm
(10, 4, 2, 7), -- Descuento 15% para productos PPR-ACCESORIO en Válvula PPR-ACCESORIO 50mm
(11, 5, 3, 8), -- Descuento 20% para productos PPR-DRAIN SYSTEM en Codo Drain 40mm
(12, 1, 4, 12), -- Descuento 10% para PPR-ACI en Tubería ACI 32mm
(13, 3, 4, 13), -- Descuento de $10 para productos PPR-ACI en Codo ACI 25mm
(14, 2, 5, 14), -- Descuento de $5 para VALCO en Codo VALCO 40mm
(15, 4, 5, 15), -- Descuento 15% para productos VALCO en Tubería VALCO 50mm
(16, 6, 5, 14), -- Descuento 5% para productos VALCO en Codo VALCO 40mm
(17, 7, 1, 17), -- Descuento $10 para productos PPR Tubería en Codo PPR 40mm
(18, 7, 1, 19); -- Descuento $10 para productos PPR Tubería en Codo PPR 50mm



INSERT INTO G1.ventas_detalle (venta_detalle_id, venta_id, producto_id, cantidad, monto, descuento_id)
VALUES
(1, 1, 1, 100, 1000.00, 1), -- Venta de 100 unidades de Tubería PPR 20mm con descuento 10%
(2, 2, 2, 150, 1800.00, 2), -- Venta de 150 unidades de Tubería PPR 25mm con descuento $5
(3, 3, 3, 80, 440.00, 3),   -- Venta de 80 unidades de Codo PPR 20mm con descuento de $10
(4, 4, 4, 60, 420.00, 4),   -- Venta de 60 unidades de Codo PPR 25mm con descuento 15%
(5, 5, 5, 120, 1800.00, 5), -- Venta de 120 unidades de Tee PPR 20mm con descuento 20%
(6, 6, 6, 90, 720.00, 6),   -- Venta de 90 unidades de Tubería PPR-ACCESORIO 20mm con descuento 10%
(7, 7, 7, 110, 715.00, 7),  -- Venta de 110 unidades de Válvula PPR-ACCESORIO 50mm con descuento de $5
(8, 8, 8, 130, 850.00, 8),  -- Venta de 130 unidades de Codo PPR-ACCESORIO 25mm con descuento 15%
(9, 9, 9, 95, 855.00, 9),   -- Venta de 95 unidades de Tubería Drain 25mm con descuento $10
(10, 10, 10, 85, 850.00, 10),-- Venta de 85 unidades de Codo Drain 40mm con descuento 15%
(11, 11, 11, 70, 1120.00, 11),-- Venta de 70 unidades de Tee Drain 50mm con descuento 20%
(12, 12, 12, 130, 1625.00, 12),-- Venta de 130 unidades de Tubería ACI 32mm con descuento 10%
(13, 13, 13, 120, 810.00, 13),-- Venta de 120 unidades de Codo ACI 25mm con descuento de $10
(14, 14, 14, 100, 1800.00, 14),-- Venta de 100 unidades de Codo VALCO 40mm con descuento de $5
(15, 15, 15, 110, 2420.00, 15),-- Venta de 110 unidades de Tubería VALCO 50mm con descuento 15%
(16, 16, 16, 50, 900.00, 1),  -- Venta de 50 unidades de Tubería PPR 40mm con descuento 10%
(17, 17, 18, 70, 1200.00, 2),  -- Venta de 70 unidades de Válvula PPR 50mm con descuento $5
(18, 18, 19, 40, 560.00, 3),  -- Venta de 40 unidades de Codo PPR 50mm con descuento 15%
(19, 19, 17, 100, 1000.00, 4), -- Venta de 100 unidades de Codo PPR 40mm con descuento de $10
(20, 20, 18, 80, 1280.00, 5);  -- Venta de 80 unidades de Válvula PPR 50mm con descuento $10
