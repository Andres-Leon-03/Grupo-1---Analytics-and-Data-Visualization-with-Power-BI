CREATE TABLE G1.producto (
    producto_id INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    familia VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255),
    precio DECIMAL(10, 2) NOT NULL
);


CREATE TABLE G1.productos_familias (
    familia_id INT PRIMARY KEY,
    nombre_familia VARCHAR(255) NOT NULL,
    descripcion_familia VARCHAR(255)
);


CREATE TABLE G1.clientes (
    cliente_id INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    tipo_documento VARCHAR(50),
    numero_documento VARCHAR(50),
    direccion VARCHAR(255),
    telefono VARCHAR(20),
    correo VARCHAR(50)
);


CREATE TABLE G1.ventas (
    venta_id INT PRIMARY KEY,
    fecha DATE NOT NULL,
    monto_total_dolares DECIMAL(15, 2) NOT NULL,
    cliente_id INT,
    FOREIGN KEY (cliente_id) REFERENCES G1.clientes(cliente_id)
);


CREATE TABLE G1.facturas (
    factura_id INT PRIMARY KEY,
    venta_id INT,
    numero_factura VARCHAR(100) NOT NULL,
    fecha_emision DATE NOT NULL,
    monto_factura_dolares DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (venta_id) REFERENCES G1.ventas(venta_id)
);


CREATE TABLE G1.promociones (
    promocion_id INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255),
    tipo_descuento VARCHAR(50) NOT NULL,
    valor_descuento DECIMAL(10, 2) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE
);


CREATE TABLE G1.descuentos (
    descuento_id INT PRIMARY KEY,
    promocion_id INT,
    familia_id INT,
    producto_id INT,
    FOREIGN KEY (promocion_id) REFERENCES G1.promociones(promocion_id),
    FOREIGN KEY (familia_id) REFERENCES G1.productos_familias(familia_id),
    FOREIGN KEY (producto_id) REFERENCES G1.producto(producto_id)
);


CREATE TABLE G1.ventas_detalle (
    venta_detalle_id INT PRIMARY KEY,
    venta_id INT,
    producto_id INT,
    cantidad INT NOT NULL,
    monto DECIMAL(15, 2) NOT NULL,  
    descuento_id INT,  
    FOREIGN KEY (venta_id) REFERENCES G1.ventas(venta_id),
    FOREIGN KEY (producto_id) REFERENCES G1.producto(producto_id),
    FOREIGN KEY (descuento_id) REFERENCES G1.descuentos(descuento_id)
);