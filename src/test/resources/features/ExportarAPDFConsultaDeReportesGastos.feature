#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz

Feature: Exportar a PDF la consulta de Reportes de Gastos

  Background:
    Given El usuario ejecuta el navegador
    And El sistema muestra el navegador
    And El usuario captura la URL
    When El sistema muestra la página

  Scenario: Exportar a PDF la consulta de Reportes de Gastos al ingresar como Admin Master
    And El usuario captura sus credenciales de "AdminMaster" y da clic en Continuar
    When El sistema muestra el campo para capturar la contraseña
    And El usuario captura su contraseña de "AdminMaster" y da clic en Iniciar sesión
    And El sistema muestra la pantalla principal con el mensaje de Bienvenida
    And El usuario da clic en Empresarial EdenRed
    And El sistema muestra módulo de "Dashboard"

    And El usuario selecciona módulo de "Tarjetas"
    And El sistema muestra por defecto sección de "Gestionar de saldos"

    And El usuario selecciona sección de "Consultas" de Tarjetas
    And El sistema muestra sección de "Consultas" de Tarjetas
    And El usuario da click en botón "Gastos" de tarjetas
    And El sistema muestra pantalla de "Reporte de gastos"
    And El usuario da click en botón "exportar a PDF" consulta de reporte de gastos
    And El sistema comienza la descarga de reporte de gastos en "Formato PDF"

    And El usuario da click en botón "Mi Cuenta"
    When El sistema muestra opciones de usuario
    And El usuario da click en botón de "Cerrar sesión"
    Then El sistema cierra la sesión y muestra la página de acceso
