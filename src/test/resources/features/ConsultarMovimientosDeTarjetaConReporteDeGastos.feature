#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz

Feature: Consultar Movimientos de tarjetas con reporte de gastos

  Background:
    Given El usuario ejecuta el navegador
    And El sistema muestra el navegador
    And El usuario captura la URL
    When El sistema muestra la página

  Scenario: Consultar Movimientos de tarjetas con reporte de gastos al ingresar como Admin Master
    And El usuario captura sus credenciales de "AdminMaster" y da clic en Continuar
    When El sistema muestra el campo para capturar la contraseña
    And El usuario captura su contraseña de "AdminMaster" y da clic en Iniciar sesión
    And El sistema muestra la pantalla principal con el mensaje de Bienvenida
    And El usuario da clic en Empresarial EdenRed
    And El sistema muestra módulo de "Dashboard"

    And El usuario selecciona módulo de "Reportes"
    And El sistema muestra sección de "Reportes"

    And El usuario selecciona opción de "Movimientos de tarjeta con reportes de gastos"
    And El sistema muestra pantalla de "Movimientos de tarjeta con reportes de gastos"

    And El usuario selecciona rango de fechas de fecha actual hasta 90 días atrás
    And El usuario da click en botón "Filtrar" movimientos de tarjeta con reporte de gastos
    And El sistema muestra en la tabla de registros los movimientos de tarjeta con reporte de gastos
    And El usuario da click en botón "Descargar" movimientos de tarjeta con reporte de gastos
    And El sistema comienza la descarga de los movimientos de tarjeta

    And El usuario da click en botón "Mi Cuenta"
    When El sistema muestra opciones de usuario
    And El usuario da click en botón de "Cerrar sesión"
    Then El sistema cierra la sesión y muestra la página de acceso

  Scenario: Consultar Movimientos de tarjetas con reporte de gastos al ingresar como Admin Usuario
    And El usuario captura sus credenciales de "AdminUsuario" y da clic en Continuar
    When El sistema muestra el campo para capturar la contraseña
    And El usuario captura su contraseña de "AdminUsuario" y da clic en Iniciar sesión
    And El sistema muestra la pantalla principal con el mensaje de Bienvenida
    And El usuario da clic en Empresarial EdenRed
    And El sistema muestra módulo de "Dashboard"

    And El usuario selecciona módulo de "Reportes"
    And El sistema muestra sección de "Reportes"

    And El usuario selecciona opción de "Movimientos de tarjeta con reportes de gastos"
    And El sistema muestra pantalla de "Movimientos de tarjeta con reportes de gastos"

    And El usuario selecciona rango de fechas de fecha actual hasta 90 días atrás
    And El usuario da click en botón "Filtrar" movimientos de tarjeta con reporte de gastos
    And El sistema muestra en la tabla de registros los movimientos de tarjeta con reporte de gastos
    And El usuario da click en botón "Descargar" movimientos de tarjeta con reporte de gastos
    And El sistema comienza la descarga de los movimientos de tarjeta

    And El usuario da click en botón "Mi Cuenta"
    When El sistema muestra opciones de usuario
    And El usuario da click en botón de "Cerrar sesión"
    Then El sistema cierra la sesión y muestra la página de acceso
