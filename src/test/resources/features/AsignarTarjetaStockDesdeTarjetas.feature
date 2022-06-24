#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz

Feature: Asignar Tarjeta stock desde Tarjetas

  Background:
    Given El usuario ejecuta el navegador
    And El sistema muestra el navegador
    And El usuario captura la URL
    When El sistema muestra la página

  Scenario: Asignar Tarjeta stock desde Tarjetas al ingresar como Admin Usuario
    And El usuario captura sus credenciales de "AdminUsuario" y da clic en Continuar
    When El sistema muestra el campo para capturar la contraseña
    And El usuario captura su contraseña de "AdminUsuario" y da clic en Iniciar sesión
    And El sistema muestra la pantalla principal con el mensaje de Bienvenida
    And El usuario da clic en Empresarial EdenRed
    And El sistema muestra módulo de "Dashboard"

    And El usuario selecciona módulo de "Tarjetas"
    And El sistema muestra por defecto sección de "Gestionar de saldos"

    And El usuario selecciona sección de "Administración" de tarjetas
    And El sistema muestra sección de "Administración" de tarjetas

    And El usuario da click en botón "Asignaciones" de tarjetas
    And El sistema muestra apartado de "Asignaciones" de tarjetas
    And El usuario selecciona tipo de tarjeta "Stock"
    And El usuario llena los campos necesarios del apartado "Tarjeta"
    And El sistema muestra el botón de "Siguiente" habilitado
    And El usuario da clic en botón "Siguiente" para asignar tarjeta
    And El sistema muestra apartado "Resumen de nuevo usuario"
    And El usuario da clic en checkbox "De acuerdo"
    And El sistema muestra el botón de "Siguiente" habilitado
    And El usuario da clic en botón "Siguiente" para asignar tarjeta
    And El sistema muestra apartado de "Resumen de alta de nuevo usuario"
    And El usuario da clic en botón "Finalizar"
    And El sistema muestra mensaje de confirmación de "Alta de nuevo usuario"

    And El usuario da click en botón "Mi Cuenta"
    When El sistema muestra opciones de usuario
    And El usuario da click en botón de "Cerrar sesión"
    Then El sistema cierra la sesión y muestra la página de acceso