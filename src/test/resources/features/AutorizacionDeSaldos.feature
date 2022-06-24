#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz

Feature: Autorización de saldos

  Background:
    Given El usuario ejecuta el navegador
    And El sistema muestra el navegador
    And El usuario captura la URL
    When El sistema muestra la página

  Scenario: Autorización de saldos al ingresar como Admin Master
    And El usuario captura sus credenciales de "AdminMaster" y da clic en Continuar
    When El sistema muestra el campo para capturar la contraseña
    And El usuario captura su contraseña de "AdminMaster" y da clic en Iniciar sesión
    And El sistema muestra la pantalla principal con el mensaje de Bienvenida
    And El usuario da clic en Empresarial EdenRed
    And El sistema muestra módulo de "Dashboard"

    And El usuario selecciona módulo de "Mis gastos"
    And El sistema muestra por defecto sección de "Saldos"

    And El usuario selecciona opción de "Saldos"
    And El sistema muestra pantalla de "Autorización de saldo"

    And El usuario da click en botón "Autorizar" dentro de los registros de solicitudes
    And El sistema muestra modal de "Autorización de saldo"
    And El usuario selecciona un administrador y da click en botón "Aceptar"
    Then El sistema muestra mensaje de confirmación de "Autorización de saldo"

    And El usuario da click en botón "Mi Cuenta"
    When El sistema muestra opciones de usuario
    And El usuario da click en botón de "Cerrar sesión"
    Then El sistema cierra la sesión y muestra la página de acceso