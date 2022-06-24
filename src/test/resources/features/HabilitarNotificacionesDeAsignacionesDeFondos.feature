#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz

Feature: Habilitar notificaciones de Asignaciones de fondos

  Background:
    Given El usuario ejecuta el navegador
    And El sistema muestra el navegador
    And El usuario captura la URL
    When El sistema muestra la página

  Scenario: Habilitar notificaciones de Asignaciones de fondos al ingresar como Admin Master
    And El usuario captura sus credenciales de "AdminMaster" y da clic en Continuar
    When El sistema muestra el campo para capturar la contraseña
    And El usuario captura su contraseña de "AdminMaster" y da clic en Iniciar sesión
    And El sistema muestra la pantalla principal con el mensaje de Bienvenida
    And El usuario da clic en Empresarial EdenRed
    And El sistema muestra módulo de "Dashboard"

    And El usuario selecciona módulo de "Configuración"
    And El sistema muestra por defecto sección de "Facturación"

    And El usuario selecciona sección de "Notificaciones"
    When El sistema muestra sección de "Notificaciones"

    And El usuario selecciona opción de "Operaciones"
    And El sistema muestra sección de "Administración" de operaciones

    And El usuario despliega información de "Asignaciones" de fondos
    When El sistema muestra la información de "Asignaciones" de fondos
    And El usuario habilita switch de asignaciones "en linea"

    And El sistema habilita botón de "Guardar" y muestra resumen de Habilitar notificaciones
    And El usuario da click en botón "Guardar" para habilitar notificaciones
    And El sistema muestra cintillo verde con leyenda "Cambios guardados exitosamente"

    And El usuario da click en botón "Mi Cuenta"
    When El sistema muestra opciones de usuario
    And El usuario da click en botón de "Cerrar sesión"
    Then El sistema cierra la sesión y muestra la página de acceso

  Scenario: Habilitar notificaciones de Asignaciones de fondos al ingresar como Admin Usuario
    And El usuario captura sus credenciales de "AdminUsuario" y da clic en Continuar
    When El sistema muestra el campo para capturar la contraseña
    And El usuario captura su contraseña de "AdminUsuario" y da clic en Iniciar sesión
    And El sistema muestra la pantalla principal con el mensaje de Bienvenida
    And El usuario da clic en Empresarial EdenRed
    And El sistema muestra módulo de "Dashboard"

    And El usuario selecciona módulo de "Configuración"
    And El sistema muestra por defecto sección de "Facturación"

    And El usuario selecciona sección de "Notificaciones"
    When El sistema muestra sección de "Notificaciones"

    And El usuario selecciona opción de "Operaciones"
    And El sistema muestra sección de "Administración" de operaciones

    And El usuario despliega información de "Asignaciones" de fondos
    When El sistema muestra la información de "Asignaciones" de fondos
    And El usuario habilita switch de asignaciones "en linea"

    And El sistema habilita botón de "Guardar" y muestra resumen de Habilitar notificaciones
    And El usuario da click en botón "Guardar" para habilitar notificaciones
    And El sistema muestra cintillo verde con leyenda "Cambios guardados exitosamente"

    And El usuario da click en botón "Mi Cuenta"
    When El sistema muestra opciones de usuario
    And El usuario da click en botón de "Cerrar sesión"
    Then El sistema cierra la sesión y muestra la página de acceso