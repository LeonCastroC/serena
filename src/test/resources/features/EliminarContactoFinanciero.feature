#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz

Feature: Eliminar un contacto financiero

  Background:
    Given El usuario ejecuta el navegador
    And El sistema muestra el navegador
    And El usuario captura la URL
    When El sistema muestra la página

  Scenario: Eliminar un contacto financiero al ingresar como Admin Master
    And El usuario captura sus credenciales de "AdminMaster" y da clic en Continuar
    When El sistema muestra el campo para capturar la contraseña
    And El usuario captura su contraseña de "AdminMaster" y da clic en Iniciar sesión
    And El sistema muestra la pantalla principal con el mensaje de Bienvenida
    And El usuario da clic en Empresarial EdenRed
    And El sistema muestra módulo de "Dashboard"

    And El usuario selecciona módulo de "Configuración"
    And El sistema muestra por defecto sección de "Facturación"

     And El usuario selecciona sección de "Mi organización"
    And El sistema muestra sección de "Mi organización"

    And El usuario selecciona selecciona opción de "Contactos financieros"
    When El sistema muestra un grid con la información de contactos financieros

    And El usuario da click en icono de "bote de basura" de un contacto financiero
    And El sistema muestra el modal de "Eliminar contacto financiero"
    And El usuario da click en botón "Aceptar" en el modal de eliminar contacto financiero
    And El sistema ya no muestra el contacto que fue eliminado

    And El usuario da click en botón "Mi Cuenta"
    When El sistema muestra opciones de usuario
    And El usuario da click en botón de "Cerrar sesión"
    Then El sistema cierra la sesión y muestra la página de acceso