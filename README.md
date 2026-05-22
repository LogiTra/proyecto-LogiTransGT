# Proyecto de Implementación ERP - LogiTrans GT

[![Odoo](https://img.shields.io/badge/Odoo-17.0-blue)](https://www.odoo.com)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-15-green)](https://www.postgresql.org)
[![License](https://img.shields.io/badge/License-MIT-yellow)](LICENSE)

## Descripción del Proyecto

LogiTrans GT es una empresa ficticia de transporte terrestre de carga pesada, fundada en 2010 en Quetzaltenango, Guatemala. Cuenta con **50 camiones**, **120 empleados** y **5 sedes** a nivel nacional. Este proyecto implementa **Odoo ERP** como núcleo del sistema, integrando:

- **GPS Tracking** en tiempo real
- **Aplicación móvil** para conductores
- **Sistema de combustible**
- **Data Warehouse** + **Power BI** para análisis ejecutivo

La solución resuelve los problemas actuales: procesos manuales en Excel, falta de trazabilidad, facturación tardía y desconocimiento de la ubicación de los camiones.

## Tecnologías Utilizadas

| Componente | Tecnología | Versión |
|------------|------------|---------|
| ERP | Odoo (Community) | 17.0 |
| Base de datos transaccional | PostgreSQL | 15+ |
| Data Warehouse | PostgreSQL / SQL Server | - |
| BI y Dashboards | Power BI + Odoo Dashboards | - |
| Middleware / Message Broker | RabbitMQ / Apache Kafka | - |
| API Gateway | Python + Odoo JSON-RPC / XML-RPC | - |
| Aplicación móvil (conductores) | React Native + Odoo API | - |
| GPS Tracking | Proveedor externo con API REST | - |
| ETL | Apache Airflow / Python scripts | - |
| Infraestructura | AWS / Azure (nube) | - |

## Instrucciones de Instalación Paso a Paso

### Requisitos previos
- Servidor Ubuntu 22.04 LTS (mínimo 4GB RAM, 2 vCPUs, 50GB SSD)
- Usuario con privilegios `sudo`
- Puerto 80, 443, 8069 abiertos (o configurar firewall)


## Contribuidores del Equipo

| Nombre | Rol |
|--------|-----|
| Cindy María José Reyna Ortíz | Project Manager |
| José Nimatuj | Arquitecto Técnico / Desarrollador / Configurador ERP |
| Ubaldo Ordoñez | Analista BI |
| Héctor García | Especialista en Seguridad |

**Curso:** Administración de Tecnologías de Información  
**Universidad:** Mariano Gálvez de Guatemala  
**Fecha:** Mayo 2026