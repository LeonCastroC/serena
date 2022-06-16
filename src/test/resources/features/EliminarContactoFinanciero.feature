#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz

Feature: Eliminar un contacto financiero

  Background:
    Given El usuario cuenta con las credenciales de acceso a TER como "ADMINMASTER"
    When El usuario ejecuta el navegador
    And El sistema muestra el navegador
    And El usuario captura la URL de la solución
    And El sistema muestra la solución TER

  Scenario: Eliminar un contacto financiero accesando como ADMINMASTER
    When El usuario captura sus credenciales de "AdminMaster" y da clic en Continuar
    And El sistema valida el usuario y muestra el campo para capturar la contraseña
    And El usuario captura el "Contraseña" y da clic en Iniciar sesión
    And El sistema muestra listado de opciones para el "Admin Master"
    And El usuario selecciona Empresarial EdenRed y da clic en Continuar
    When El sistema muestra la pantalla principal de TER

    When El usuario selecciona sección de "Configuración"
    And El usuario selecciona opción de "Mi organización"
    And El usuario selecciona "Contactos financieros"
    And El usuario visualiza grid con la informacion de un contacto financiero
    When El usuario selecciona icono de "bote de basura"
    And El usuario selecciona "aceptar" en el modal de Eliminar contacto
    Then Se cierra el modal y se borra el contacto seleccionado