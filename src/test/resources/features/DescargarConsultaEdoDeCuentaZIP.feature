#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz

Feature: Descarga de consulta de Estados de cuentas a .ZIP

  Background:
    Given El usuario ejecuta el navegador
    And El sistema muestra el navegador
    And El usuario captura la URL
    When El sistema muestra la página

  Scenario: Descarga de consulta de Estados de cuentas a .ZIP al ingresar como Admin Master
    And El usuario captura sus credenciales de "AdminMaster" y da clic en Continuar
    When El sistema muestra el campo para capturar la contraseña
    And El usuario captura su contraseña de "AdminMaster" y da clic en Iniciar sesión
    And El sistema muestra la pantalla principal con el mensaje de Bienvenida
    And El usuario da clic en Empresarial EdenRed
    And El sistema muestra módulo de "Dashboard"

    And El usuario selecciona módulo de "Organización"
    And El sistema muestra por defecto sección de "Gestionar fondos"

    And El usuario selecciona sección de "Consultas" de fondos
    And El sistema muestra sección de "Consultas" de fondos

    And El usuario selecciona opción de "Estados de cuenta"
    And El sistema muestra pantalla de "Solicitud de token"
    And El usuario ingresa a su correo electrónico para visualizar el token
    And El sistema muestra el correo con el token para ver estados de cuenta
    And El usuario ingresa el token enviado por correo y da click en Continuar
    And El usuario da click en Descargar estado de cuenta a ".ZIP"
    Then El sistema comienza la descarga del archivo en formato ".ZIP"

    And El usuario da click en botón "Mi Cuenta"
    When El sistema muestra opciones de usuario
    And El usuario da click en botón de "Cerrar sesión"
    Then El sistema cierra la sesión y muestra la página de acceso
