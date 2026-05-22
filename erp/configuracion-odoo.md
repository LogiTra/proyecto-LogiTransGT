# Configuración de Módulos Odoo para LogiTrans GT

Este documento describe la configuración necesaria en los módulos de Odoo para adaptarlos a la operación de transporte de carga.

## 1. Fleet (Gestión de Flota)

- **Categorías de vehículos**: Crear "Carga pesada" y "Apoyo liviano".
- **Campos personalizados**:
  - `x_insurance_expiry` (fecha vencimiento seguro)
  - `x_last_technical_review` (fecha última revisión técnica)
  - `x_max_load_kg` (carga máxima en kg)
- **Registro de consumos**: Activar la opción "Registrar consumos de combustible" en configuración.

## 2. Maintenance (Mantenimiento)

- **Tipos de mantenimiento**: Preventivo, Correctivo, Predictivo.
- **Equipos**: Cada camión debe registrarse como "Equipo" en mantenimiento.
- **Programación automática**:
  - Cada 5,000 km: Revisión general.
  - Cada 10,000 km: Cambio de aceite y filtros.
  - Cada 20,000 km: Revisión de motor.

## 3. Inventory (Inventario)

- **Ubicaciones**:
  - `Almacén Principal / Stock` (repuestos, llantas)
  - `Almacén Principal / Carga en Tránsito` (mercancía en ruta)
  - `Almacén Principal / Clientes` (entregado)
- **Categorías de productos**: Repuestos, Combustible, Mercancía general.
- **Tipos de operación**: Recepción (compras), Entrega (ventas), Transferencia interna.

## 4. Project (Gestión de Viajes)

- **Etapas del proyecto**:
  1. Cotización
  2. Planificado
  3. En ruta
  4. Entregado
  5. Facturado
  6. Cancelado
- **Tareas típicas** (plantillas): Carga, Transporte ruta 1, Transporte ruta 2, Descarga, Incidencias.
- **Campos personalizados**:
  - `x_origin_address`
  - `x_destination_address`
  - `x_total_weight_kg`
  - `x_estimated_km`

## 5. Employees (Empleados)

- **Departamentos**: Operaciones, Ventas, Finanzas, RRHH, TI.
- **Puestos**: Conductor de carga pesada, Ayudante de ruta, Despachador, Supervisor de flota.
- **Campos personalizados**: Número de licencia, fecha vencimiento, categoría de licencia.

## 6. Attendances (Asistencia)

- **Horarios**:
  - Turno matutino: 06:00 - 14:00
  - Turno vespertino: 14:00 - 22:00
  - Turno nocturno: 22:00 - 06:00
- **Kiosko móvil**: Activar para que conductores registren entrada/salida desde la app.

## 7. Accounting (Contabilidad)

- **Plan de cuentas adaptado** (ejemplos):
  - 1-01-01 Caja y Bancos (Activo)
  - 1-03-01 Flota de Camiones (Activo Fijo)
  - 4-01-01 Ingresos por Transporte (Ingreso)
  - 5-01-01 Combustible (Gasto)
  - 5-01-02 Mantenimiento (Gasto)
  - 5-01-03 Salarios Conductores (Gasto)
- **Impuestos**: IVA 12% (Guatemala), Retención ISR 5% (si aplica).
- **Facturación electrónica (FEL)**: Se requiere un conector específico para SAT Guatemala (módulo de terceros o desarrollo propio).

## 8. CRM

- **Etapas**: Nuevo → Contactado → Propuesta enviada → Negociación → Ganado → Perdido.
- **Campos personalizados**: Frecuencia de envíos (semanal, quincenal), valor estimado del contrato.

## 9. Sales (Ventas)

- **Productos/servicios**:
  - Transporte por kilómetro (tarifa por km)
  - Transporte por peso (Q/tonelada)
  - Carga completa (FTL)
  - Carga parcial (LTL)
  - Servicio express
- **Plantillas de cotización**: Predefinir rutas comunes y tarifas por cliente.

## 10. Integraciones

### GPS Tracking
Crear modelo personalizado `gps.location` con campos: vehicle_id, latitude, longitude, speed, timestamp.

### App Móvil Conductor
Exponer APIs REST para obtener tareas, actualizar estado, reportar entregas e incidencias.

*Para más detalles de integración, ver `/integracion/api-documentation.md`.*