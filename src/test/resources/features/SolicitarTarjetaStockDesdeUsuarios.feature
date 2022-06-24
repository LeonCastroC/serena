#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz

Feature: Solicitar Tarjeta Stock desde Organización | Administración | Usuarios

  Background:
    Given El usuario ejecuta el navegador
    And El sistema muestra el navegador
    And El usuario captura la URL
    When El sistema muestra la página

  Scenario: Solicitar Tarjeta Stock desde Organización| Admin | Usuarios  al ingresar como Admin Master
    And El usuario captura sus credenciales de "AdminMaster" y da clic en Continuar
    When El sistema muestra el campo para capturar la contraseña
    And El usuario captura su contraseña de "AdminMaster" y da clic en Iniciar sesión
    And El sistema muestra la pantalla principal con el mensaje de Bienvenida
    And El usuario da clic en Empresarial EdenRed
    And El sistema muestra módulo de "Dashboard"

    And El usuario selecciona módulo de "Organización"
    And El sistema muestra por defecto sección de "Gestionar fondos"

    And El usuario selecciona sección de "Administración" de organización
    And El sistema muestra sección de "Administración" de organización

    And El usuario selecciona opción de "Usuarios"
    And El sistema muestra pantalla de "Usuarios"
    And El usuario da clic en botón "Nuevos usuarios"
    And El sistema muestra apartado de "Nuevo usuario"
    And El usuario da clic en botón "Siguiente" para crear nuevo usuario
    And El sistema muestra formulario de datos para crear nuevo usuario
    And El usuario llena el formulario de datos para crear nuevo usuario
    And El sistema muestra el botón de "Siguiente" habilitado
    And El usuario da clic en botón "Siguiente" para crear nuevo usuario
    And El sistema muestra apartado de tarjeta para crear nuevo usuario
    And El usuario selecciona tarjeta "Stock"
    And El usuario llena los campos necesarios para crear nuevo usuario
    And El sistema muestra el botón de "Siguiente" habilitado
    And El usuario da clic en botón "Siguiente" para crear nuevo usuario
    And El sistema muestra apartado "Resumen de nuevo usuario"
    And El usuario da clic en checkbox "De acuerdo"
    And El sistema muestra el botón de "Siguiente" habilitado
    And El usuario da clic en botón "Siguiente" para crear nuevo usuario
    And El sistema muestra apartado de "Resumen de alta de nuevo usuario"
    And El usuario da clic en botón "Finalizar"
    Then El sistema muestra mensaje de confirmación de "Alta de nuevo usuario"

    And El usuario da click en botón "Mi Cuenta"
    When El sistema muestra opciones de usuario
    And El usuario da click en botón de "Cerrar sesión"
    Then El sistema cierra la sesión y muestra la página de acceso