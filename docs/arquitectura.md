# Arquitectura Técnica del Sistema

## Modelo de Arquitectura por Capas (C4)

La solución se estructura en cuatro capas fundamentales:

### Capa de Presentación
- Interfaz web de Odoo (administradores, operadores, clientes)
- Aplicación móvil para conductores (React Native)
- Dashboards integrados de Odoo y Power BI

### Capa de Lógica de Negocio
Módulos funcionales de Odoo:
- **Fleet** (Gestión de flota)
- **Project** (Gestión de viajes/rutas)
- **Inventory** (Control de carga)
- **CRM** (Clientes)
- **Employees** (Conductores)
- **Attendances** (Jornadas)
- **Accounting** (Facturación y contabilidad)
- **Maintenance** (Mantenimiento de flota)

### Capa de Integración
- API Gateway (REST/XML-RPC) para comunicación con sistemas externos
- Message Broker (RabbitMQ / Apache Kafka) como buffer asíncrono
- Endpoints para GPS Tracking, app móvil, sistema de combustible y portal cliente

### Capa de Datos
- **PostgreSQL transaccional**: Operaciones diarias del ERP
- **Data Warehouse**: Almacenamiento histórico para análisis (BI)
- **ETL diario** (Apache Airflow) para extracción, transformación y carga

## Flujo de Datos Principal

1. El cliente solicita un servicio a través del portal web o CRM.
2. Se genera un viaje (proyecto) en Odoo.
3. Se asigna un camión (Flota) y un conductor (Empleados).
4. Durante el trayecto:
   - El GPS envía ubicación cada 30 segundos.
   - El conductor registra entregas y novedades desde la app móvil.
5. Los costos de combustible y mantenimiento se registran automáticamente.
6. Un proceso ETL diario extrae datos operativos hacia el Data Warehouse.
7. Power BI genera dashboards de rentabilidad, costos por camión y desempeño de conductores.

## Diagrama de Despliegue Físico

- **Servidor en la nube**: Odoo ERP + PostgreSQL (Odoo.sh, AWS o Azure)
- **Servidor de BI** (opcional): Data Warehouse + Power BI Gateway
- **Sistemas externos**: Servidores de GPS tracking y sistema de combustible
- **Dispositivos de usuario**: Navegadores web y aplicación móvil

## Seguridad por Capas

| Capa | Control |
|------|---------|
| Acceso | Autenticación con MFA, RBAC (control de acceso basado en roles) |
| Datos en tránsito | Cifrado TLS 1.3, HTTPS |
| Datos en reposo | Cifrado AES-256 (campos sensibles) |
| APIs | API Key rotada cada 90 días, rate limiting |
| Auditoría | Logs centralizados, monitoreo de accesos y cambios críticos |

*Basado en el documento de arquitectura técnica y modelo de datos de LogiTrans GT (Mayo 2026).*