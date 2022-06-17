#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz

Feature: Asignar fondos

  Background:
    Given El usuario cuenta con las credenciales de acceso a TER
    When El usuario ejecuta el navegador
    And El sistema muestra el navegador
    And El usuario captura la URL de la solución
    And El sistema muestra la solución TER

  Scenario Outline: Validar que se muestre contacto financiero al ingresar como Admin Master
    When El usuario captura sus credenciales de "AdminMaster" y da clic en Continuar
    And El sistema valida el usuario y muestra el campo para capturar la contraseña
    And El usuario captura el "Contraseña" y da clic en Iniciar sesión
    And El sistema muestra listado de opciones para el "Admin Master"
    And El usuario da clic en  Empresarial EdenRed
    When El sistema muestra la pantalla principal de TER
    And El usuario selecciona módulo de "Organización"
    And El sistema muestra por default sección de "Gestionar fondos"
    And El usuario da clic en botón de "Gestionar fondos"
    And El sistema muestra subsección de "Gestionar fondos"
    And El usuario selecciona "Asignar"
    And El sistema despliega campos correspondientes a la opción de "Asignar"
    And El usuario da clic en campo "Monto a asignar" e ingresa "<cantidad>" a asignar
    And El usuario da clic en observaciones e ingresa un "<comentario>"
    And El sistema muestra campo "Continuar" activo
    And El usuario da clic en botón "Continuar"
    And El sistema muestra sección de "Confirmación de asignación" de fondos
    And El usuario da clic en botón "Procesar"
    And El sistema muestra pantalla de "Proceso de asignación" de fondos
    And El usuario da clic en botón "OK" de pantalla de Proceso de asignación de fondos
    Then El sistema muestra el aumento de fondos en el departamento de destino
    And El sistema muestra que los fondos en la cuenta principal disminuyen con respecto a la cantidad asignada

    Examples:
      | cantidad | comentario |
