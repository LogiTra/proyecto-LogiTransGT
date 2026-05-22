# Manual de Instalación - Odoo ERP para LogiTrans GT

Este manual describe los pasos generales para la instalación del ERP Odoo en un entorno de producción. Para comandos detallados, consulte la documentación oficial de Odoo.

## Requisitos del Sistema

### Hardware (mínimo recomendado)
- CPU: 4 vCPUs
- RAM: 8 GB
- Almacenamiento: 100 GB SSD
- Red: 1 Gbps

### Software
- Sistema operativo: Ubuntu 22.04 LTS o superior
- Base de datos: PostgreSQL 15+
- Python 3.10+
- Servidor web: Nginx (opcional, para proxy inverso)
- Certificados SSL: Let's Encrypt / Certbot

## Pasos de Instalación

### 1. Preparación del servidor
- Actualizar el sistema operativo.
- Instalar dependencias base (Python, PostgreSQL, Git, herramientas de compilación).
- Configurar el firewall (puertos 80, 443, 8069).

### 2. Instalación de PostgreSQL
- Crear usuario `odoo` en PostgreSQL.
- Configurar autenticación y optimizaciones de rendimiento (shared_buffers, effective_cache_size).

### 3. Instalación de Odoo
- Clonar el repositorio oficial de Odoo (versión 17.0).
- Crear un entorno virtual de Python.
- Instalar los requisitos (requirements.txt).
- Crear el archivo de configuración (`/etc/odoo.conf`) con los parámetros de base de datos, addons_path, logs y workers.

### 4. Configuración del servicio
- Crear un usuario `odoo` sin privilegios de shell.
- Crear un archivo de servicio systemd (`/etc/systemd/system/odoo.service`).
- Iniciar y habilitar el servicio.

### 5. Proxy inverso con Nginx (recomendado)
- Configurar Nginx como proxy inverso para Odoo.
- Instalar certificado SSL con Certbot.

### 6. Configuración de integraciones
- Instalar y configurar RabbitMQ para el message broker.
- Configurar los endpoints de API para GPS, app móvil y sistema de combustible (ver `/integracion/api-documentation.md`).

### 7. Verificación final
- Acceder a Odoo desde el navegador.
- Crear la base de datos de producción.
- Instalar los módulos necesarios: Fleet, Maintenance, Inventory, Project, Employees, Attendances, Accounting, CRM, Sales.

## Requisitos Post-Instalación
- Configurar copias de seguridad automáticas (ver `/seguridad/backup-script.sh`).
- Establecer el plan de recuperación ante desastres (ver `/seguridad/disaster-recovery.md`).
- Asignar roles y permisos según la política RBAC.

*Nota: Para una instalación paso a paso con comandos específicos, consulte la documentación oficial de Odoo o al administrador del sistema.*