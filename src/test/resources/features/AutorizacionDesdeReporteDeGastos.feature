#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz

Feature: Autorización desde Reporte de gastos

  Background:
    Given El usuario ejecuta el navegador
    And El sistema muestra el navegador
    And El usuario captura la URL
    When El sistema muestra la página

  Scenario: Autorización desde Reporte de gastos al ingresar como Admin Master
    And El usuario captura sus credenciales de "AdminMaster" y da clic en Continuar
    When El sistema muestra el campo para capturar la contraseña
    And El usuario captura su contraseña de "AdminMaster" y da clic en Iniciar sesión
    And El sistema muestra la pantalla principal con el mensaje de Bienvenida
    And El usuario da clic en Empresarial EdenRed
    And El sistema muestra módulo de "Dashboard"

    And El usuario selecciona módulo de "Mis gastos"
    And El sistema muestra por defecto sección de "Saldos"

    And El usuario selecciona sección de "Autorizaciones"
    And El sistema muestra sección de "Autorizaciones"

    And El usuario selecciona opción de "Reporte de gastos"
    And El sistema muestra pantalla de "Reporte de gastos"

    And El usuario selecciona un reporte de gastos con estatus = "Pendiente de autorizar"
    And El sistema muestra el reporte de gastos con estatus = "Pendiente de autorizar"
    And El usuario da click en botón "Autorizar" reporte de gastos
    And El sistema muestra modal de "Autorización de reporte" de gastos
    And El usuario selecciona algún "AdminMaster" y da click en botón "Aceptar" autorización de reporte
    And El sistema muestra mensaje de completado con éxito"
    And El sistema muestra el reporte en estatus Pendiente por "AdminMaster"

    And El usuario da click en botón "Mi Cuenta"
    When El sistema muestra opciones de usuario
    And El usuario da click en botón de "Cerrar sesión"
    Then El sistema cierra la sesión y muestra la página de acceso

  Scenario: Autorización desde Reporte de gastos al ingresar como Admin Usuario
    And El usuario captura sus credenciales de "AdminUsuario" y da clic en Continuar
    When El sistema muestra el campo para capturar la contraseña
    And El usuario captura su contraseña de "AdminUsuario" y da clic en Iniciar sesión
    And El sistema muestra la pantalla principal con el mensaje de Bienvenida
    And El usuario da clic en Empresarial EdenRed
    And El sistema muestra módulo de "Dashboard"

    And El usuario selecciona módulo de "Mis gastos"
    And El sistema muestra por defecto sección de "Saldos"

    And El usuario selecciona sección de "Autorizaciones"
    And El sistema muestra sección de "Autorizaciones"

    And El usuario selecciona opción de "Reporte de gastos"
    And El sistema muestra pantalla de "Reporte de gastos"

    And El usuario selecciona un reporte de gastos con estatus = "Pendiente de autorizar"
    And El sistema muestra el reporte de gastos con estatus = "Pendiente de autorizar"
    And El usuario da click en botón "Autorizar" reporte de gastos
    And El sistema muestra modal de "Autorización de reporte" de gastos
    And El usuario selecciona algún "AdminMaster" y da click en botón "Aceptar" autorización de reporte
    And El sistema muestra mensaje de completado con éxito"
    And El sistema muestra el reporte en estatus Pendiente por "AdminUsuario"

    And El usuario da click en botón "Mi Cuenta"
    When El sistema muestra opciones de usuario
    And El usuario da click en botón de "Cerrar sesión"
    Then El sistema cierra la sesión y muestra la página de acceso