#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz

Feature: Devolución de fondos

  Background:
    Given El usuario ejecuta el navegador
    And El sistema muestra el navegador
    And El usuario captura la URL
    When El sistema muestra la página

  Scenario Outline: Devolver todos los fondos al ingresar como Admin Master
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
    And El usuario da clic en "Devolver" fondos
    And El sistema despliega campos correspondientes a la opción de "Devolver" fondos
    And El usuario selecciona tipo de devolución como "Devolución total"
    And El usuario da clic en observaciones e ingresa un "<comentario>"
    And El sistema muestra campo "Continuar" activo
    And El usuario da clic en botón "Continuar" devolución de fondos
    And El sistema muestra sección de "Confirmación de devolución" de fondos
    And El usuario da clic en botón "Procesar" devolución de fondos
    And El sistema muestra pantalla de "Proceso de devolución" de fondos
    And El usuario da clic en botón "OK" de pantalla de Proceso de devolución de fondos
    Then El sistema muestra el aumento de fondos en el departamento de destino
    And El sistema muestra la disminución de fondos en el departamiento de origen

    And El usuario da click en botón "Mi Cuenta"
    When El sistema muestra opciones de usuario
    And El usuario da click en botón de "Cerrar sesión"
    Then El sistema cierra la sesión y muestra la página de acceso

    Examples:
      | comentario |


