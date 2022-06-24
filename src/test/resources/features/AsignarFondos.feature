#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz

Feature: Asignar fondos

  Background:
    Given El usuario ejecuta el navegador
    And El sistema muestra el navegador
    And El usuario captura la URL
    When El sistema muestra la página

  Scenario Outline: Validar que se muestre contacto financiero al ingresar como Admin Master
    And El usuario captura sus credenciales de "AdminMaster" y da clic en Continuar
    When El sistema muestra el campo para capturar la contraseña
    And El usuario captura su contraseña de "AdminMaster" y da clic en Iniciar sesión
    And El sistema muestra la pantalla principal con el mensaje de Bienvenida
    And El usuario da clic en Empresarial EdenRed
    And El sistema muestra módulo de "Dashboard"

    And El usuario selecciona módulo de "Organización"
    And El sistema muestra por defecto sección de "Gestionar fondos"

    And El usuario da clic en botón de "Gestionar fondos"
    And El sistema muestra por defecto pantalla de "Solicitar fondos"
    And El usuario da clic en "Asignar" fondos
    And El sistema despliega campos correspondientes a la opción de "Asignar" fondos
    And El usuario da clic en campo "Monto a asignar" e ingresa "<cantidad>" a asignar
    And El usuario da clic en observaciones e ingresa un "<comentario>"
    And El sistema muestra campo "Continuar" activo
    And El usuario da clic en botón "Continuar" asignación de fondos
    And El sistema muestra sección de "Confirmación de asignación" de fondos
    And El usuario da clic en botón "Procesar" asignación de fondos
    And El sistema muestra pantalla de "Proceso de asignación" de fondos
    And El usuario da clic en botón "OK" de pantalla de Proceso de asignación de fondos
    And El sistema muestra el aumento de fondos en el departamento de destino
    And El sistema muestra que los fondos en la cuenta principal disminuyen con respecto a la cantidad asignada

    And El usuario da click en botón "Mi Cuenta"
    When El sistema muestra opciones de usuario
    And El usuario da click en botón de "Cerrar sesión"
    Then El sistema cierra la sesión y muestra la página de acceso

    Examples:
      | cantidad | comentario |


