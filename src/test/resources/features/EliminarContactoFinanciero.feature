#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz

Feature: Eliminar un contacto financiero

  Background:
    Given El usuario cuenta con las credenciales de acceso a TER
    When El usuario ejecuta el navegador
    And El sistema muestra el navegador
    And El usuario captura la URL de la solución
    And El sistema muestra la solución TER

  Scenario: Eliminar un contacto financiero al ingresar como Admin Master
    When El usuario captura sus credenciales de "AdminMaster" y da clic en Continuar
    And El sistema valida el usuario y muestra el campo para capturar la contraseña
    And El usuario captura el "Contraseña" y da clic en Iniciar sesión
    And El sistema muestra listado de opciones para el "Admin Master"
    And El usuario da clic en  Empresarial EdenRed
    When El sistema muestra la pantalla principal de TER
    And El usuario selecciona módulo de "Configuración"
    And El sistema muestra módulo de "Configuración"
    And El usuario selecciona sección de "Mi organización"
    And El sistema muestra sección de "Mi organización"
    And El usuario selecciona "Contactos financieros"
    And El sistema muestra un grid con la información de un contacto financiero
    When El usuario da clic en icono de "bote de basura" de un contacto financiero
    And El sistema muestra el modal de "Eliminar contacto financiero"
    And El usuario selecciona "aceptar" en el modal de "Eliminar contacto financiero"
    Then El sistema ya no muestra el contacto que fue eliminado
