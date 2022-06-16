#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz

Feature: Asignar fondos

  Background:
    Given El usuario cuenta con las credenciales de acceso a TER como "ADMINMASTER"
    When El usuario ejecuta el navegador
    And El sistema muestra el navegador
    And El usuario captura la URL de la solución
    And El sistema muestra la solución TER

  Scenario Outline: Validar que se muestre contacto financiero
    When El usuario captura sus credenciales de "AdminMaster" y da clic en Continuar
    And El sistema valida el usuario y muestra el campo para capturar la contraseña
    And El usuario captura el "Contraseña" y da clic en Iniciar sesión
    And El sistema muestra listado de opciones para el "Admin Master"
    And El usuario selecciona Empresarial EdenRed y da clic en Continuar
    When El sistema muestra la pantalla principal de TER

    When El usuario selecciona Empresarial EdenRed y da clic en Continuar
    And Se muestra la pantalla principal de TER
    When El usuario selecciona sección de "Organización"
    And El usuario selecciona opción de "Gestionar fondos"
    And El usuario visualiza la sección de "Gestionar fondos"
    And El usuario selecciona "Asignar"
    And El usuario da clic en campo "Monto a asignar" e ingresa "<cantidad>" a asignar
    And El usuario da clic en observaciones e ingresa un "<comentario>"
    And El usuario da clic en botón "Continuar"
    And El usuario da clic en botón "Procesar"
    And El usuario da clic en botón "OK"
    Then El usuario visualiza que los fondos aumentan en el departamento
    And Los fondos en la cuenta principal disminuyen con respecto a la cantidad asignada
    Examples:
      | cantidad | comentario |
