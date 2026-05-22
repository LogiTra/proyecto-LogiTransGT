# Documentación de APIs de Integración - LogiTrans GT

## Autenticación

```http
Authorization: Bearer <api_key_por_sistema>
Content-Type: application/json
Accept: application/json
```

---

## 1. API de GPS Tracking

### `POST /api/gps/location`
Enviar ubicación cada 30 segundos.

#### Ejemplo

```json
{
  "vehicle_id": 101,
  "timestamp": "2026-04-30T14:35:00Z",
  "latitude": 14.634,
  "longitude": -90.515,
  "speed_khm": 65,
  "direction": "NW",
  "ignition": true
}
```

#### Respuesta

```json
{
  "status": "success",
  "message": "Location received",
  "processed_at": "2026-04-30T14:35:00Z"
}
```

### `GET /api/gps/vehicle/{id}`
Obtener última ubicación de un camión.

---

## 2. API de App Móvil Conductor

### `POST /api/delivery/checkpoint`
Registrar entrega o incidencia.

#### Ejemplo (entrega)

```json
{
  "task_id": 1234,
  "driver_id": 5678,
  "event_type": "delivery_confirmed",
  "timestamp": "2026-04-30T16:20:00Z",
  "location_lat": 14.634,
  "location_lon": -90.515,
  "signature_base64": "data:image/png;base64,...",
  "photo_url": "https://storage.logistrans.com/delivery_1234.jpg",
  "notes": "Entregado al almacén"
}
```

### `GET /api/tasks/{driver_id}`
Obtener tareas asignadas al conductor.

### `PUT /api/tasks/{task_id}/state`
Actualizar estado de una tarea (ej. `"in_progress"`, `"done"`).

### `POST /api/incident/report`
Reportar incidencia en ruta.

#### Ejemplo

```json
{
  "task_id": 1234,
  "driver_id": 5678,
  "incident_type": "mechanical_failure",
  "description": "Fallo en frenos",
  "timestamp": "2026-04-30T15:45:00Z"
}
```

---

## 3. API de Sistema de Combustible

### `POST /api/fuel/log`
Registrar consumo de combustible.

#### Ejemplo

```json
{
  "vehicle_id": 101,
  "driver_id": 5678,
  "timestamp": "2026-04-30T09:15:00Z",
  "liters": 150.5,
  "price_per_liter": 12.50,
  "total_amount": 1881.25,
  "odometer_km": 45320,
  "station_name": "Shell La Villa",
  "invoice_number": "F-123456"
}
```

### `GET /api/fuel/vehicle/{id}?month=YYYY-MM`
Obtener consumo mensual por camión.

---

## 4. API de Portal Cliente (Web)

### `POST /api/sale/order`
Crear nuevo pedido de transporte.

#### Ejemplo

```json
{
  "partner_id": 5050,
  "partner_name": "Distribuidora El Sol",
  "requested_date": "2026-05-10",
  "origin_address": "Zona 12, Guatemala",
  "destination_address": "Zona 3, Quetzaltenango",
  "products": [
    {
      "product_id": 100,
      "name": "Mercancía general",
      "weight_kg": 5000,
      "volume_m3": 25
    }
  ],
  "special_instructions": "Carga frágil"
}
```

### `GET /api/tracking/{shipment_id}`
Consultar estado de envío.

---

## 5. API de Mantenimiento (Talleres)

### `POST /api/maintenance/service`
Registrar mantenimiento realizado.

#### Ejemplo

```json
{
  "vehicle_id": 101,
  "service_date": "2026-04-28",
  "service_type": "preventive",
  "cost": 1250.00,
  "description": "Cambio de aceite y filtros",
  "next_service_km": 50000
}
```

---

## Códigos de Error

| Código | Descripción |
|---|---|
| 200 | Éxito |
| 400 | Solicitud inválida |
| 401 | No autorizado (API Key inválida) |
| 404 | Recurso no encontrado |
| 429 | Demasiadas peticiones (rate limit: 1000/minuto) |
| 500 | Error interno del servidor |
