# 📌 SmartTaskFlow – Base de Datos (SQL Server)

Este repositorio contiene el diseño, la creación y toda la lógica de la base de datos que construí para mi proyecto **SmartTaskFlow**, un sistema de gestión de tareas con control de usuarios, roles, prioridades, estados y notificaciones.
Aquí incluyo **tablas, stored procedures, triggers y datos iniciales** para dejar la base completamente funcional.

---

## 🗄️ 1. Descripción del Proyecto

SmartTaskFlow es un proyecto que estoy desarrollando para gestionar tareas y flujos de trabajo entre distintos usuarios.
Diseñé la base de datos con enfoque en:

* Control de usuarios y roles
* Administración de tareas con su prioridad y estado
* Generación de notificaciones automáticas
* Integración sencilla con C#
* Seguridad mediante stored procedures para evitar SQL Injection

Este repositorio está dedicado exclusivamente a la **capa de base de datos**.

---

## 📂 2. Estructura del Repositorio

```
SmartTaskFlow-SQLServer/
│
├── Database/
│   ├── Tables/                # Scripts de creación de tablas
│   ├── Stored Procedures/     # CRUD por entidad
│   ├── Triggers/              # Automatización (notificaciones)
│   └── Seed/                  # Datos iniciales
│
└── README.md
```

---

## 🧩 3. Modelo Entidad–Relación (ERD)

Mi modelo está compuesto por las siguientes entidades principales:

* Usuarios
* Roles
* Tareas
* Estados
* Prioridades
* Notificaciones

Relaciones importantes:

* Cada usuario tiene un rol.
* Cada tarea pertenece a un usuario.
* Las tareas usan estado y prioridad.
* Las notificaciones se generan manualmente o automáticamente con triggers.

---

## 🔧 4. Triggers Implementados

### ✔️ `trg_tarea_creada`

Este trigger se ejecuta después de insertar una tarea.
Su función es generar automáticamente una notificación para el usuario correspondiente, incluyendo:

* id del usuario
* id de la tarea
* un mensaje descriptivo
* la fecha/hora del sistema

Lo hice para mantener el sistema más automatizado sin depender del backend.

---

## ⚙️ 5. Stored Procedures Incluidos

Implementé CRUD para todas las entidades:

* Usuarios
* Tareas
* Roles
* Prioridades
* Estados
* Notificaciones

Todos los SP incluyen:

* Transacciones
* Manejo de errores con TRY/CATCH
* Buenas prácticas contra SQL Injection
* Parámetros validados
* Consultas limpias y organizadas

---

## 🛡️ 6. Seguridad y Buenas Prácticas

Mi enfoque principal fue mantener la base segura:

* Toda la comunicación es mediante Stored Procedures
* No permito consultas directas desde C#
* Uso triggers solo donde tiene sentido (notificaciones o auditoría ligera)

---

## 🚀 7. Integración con C#

Esta base de datos está lista para usarse con:

* ADO.NET
* Entity Framework
* Dapper

Mi recomendación es incluir dentro del proyecto C# una carpeta `/Database` para mantener scripts o migraciones.

---

## 📥 8. Cómo usar este repositorio

### Clonar:

```sh
git clone https://github.com/guillermolopez-git/SmartTaskFlow-SQLServer.git
```

### Ejecutar en SSMS:

1. Abrir SQL Server Management Studio
2. Ejecutar los scripts en este orden:

   * Tablas
   * Stored Procedures
   * Triggers
   * Seed (datos iniciales)




