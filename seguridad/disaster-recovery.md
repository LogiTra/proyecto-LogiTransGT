# Plan de Recuperación ante Desastres (DRP)

## Objetivos de Recuperación

| Parámetro | Valor |
|-----------|-------|
| RTO (Recovery Time Objective) | 4 horas |
| RPO (Recovery Point Objective) | 15 minutos (base de datos transaccional) |

## Estrategia de Backup

| Tipo | Frecuencia | Retención |
|------|------------|-----------|
| Completo | Semanal (domingo 03:00) | 4 semanas |
| Diferencial | Diario (23:30) | 7 días |
| WAL (archivos de registro) | Cada 15 minutos | 7 días |
| Mensual | Primer día del mes | 12 meses |

## Almacenamiento
- **Local**: Servidor de respaldo en sitio.
- **Nube**: AWS S3 (región us-east-1) con cifrado AES-256.
- **Offline**: Copia en AWS S3 Glacier para retención mensual.

## Procedimiento de Restauración

1. Detener el servicio de Odoo.
2. Restaurar el último backup completo.
3. Aplicar los archivos WAL desde el momento previo al incidente.
4. Validar la integridad de la base de datos (`pg_restore --verify`).
5. Reiniciar servicios y verificar conectividad de APIs externas.

## Pruebas de Recuperación
- **Simulacro completo**: Cada 6 meses.
- **Prueba de restauración individual**: Semanal.

## Plan de Continuidad (High Availability)

- **Réplica en caliente (hot standby)**: Servidor secundario en zona diferente (nube).
- **Conmutación automática**: Si el servidor principal falla, el tráfico se redirige al réplica en menos de 1 hora.
- **Monitoreo proactivo**: Alertas en tiempo real ante caída de servicios críticos.

## Responsables
- **Ejecución de backups**: Especialista en Seguridad (Héctor García).
- **Restauración y pruebas**: Arquitecto Técnico (José Nimatuj).
- **Monitoreo**: Operaciones de TI.

*Basado en la propuesta de seguridad del proyecto (Mayo 2026).*