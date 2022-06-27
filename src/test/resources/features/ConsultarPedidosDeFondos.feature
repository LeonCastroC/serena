#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz

Feature: Exportar a excel la consulta de fondos

  Background:
    Given El usuario ejecuta el navegador
    And El sistema muestra el navegador
    And El usuario captura la URL
    When El sistema muestra la página

  Scenario Outline: Exportar a excel la consulta de fondos al ingresar como Admin Master
    And El usuario captura sus credenciales de "AdminMaster" y da clic en Continuar
    When El sistema muestra el campo para capturar la contraseña
    And El usuario captura su contraseña de "AdminMaster" y da clic en Iniciar sesión
    And El sistema muestra la pantalla principal con el mensaje de Bienvenida
    And El usuario da clic en Empresarial EdenRed
    And El sistema muestra módulo de "Dashboard"

    And El usuario selecciona módulo de "Organización"
    And El sistema muestra por defecto sección de "Gestionar fondos"

    And El usuario selecciona sección de "Consultas" de fondos
    And El sistema muestra sección de "Consultas" de fondos

    And El usuario selecciona opción de "Pedidos de fondos"
    And El sistema muestra pantalla de "Pedidos de fondos"

    And El usuario ingresa un "<número de pedido>" válido
    And El usuario da clic en botón "Filtrar"
    And El sistema muestra una tabla actualizada con respecto al "<número de pedido>" filtrado
    And El usuario borra el número de pedido y selecciona un "<status>"
    And El usuario da click en botón "Filtrar"
    And El sistema muestra una tabla actualizada con respecto al "<status>" filtrado

    And El usuario da click en botón "Mi Cuenta"
    When El sistema muestra opciones de usuario
    And El usuario da click en botón de "Cerrar sesión"
    Then El sistema cierra la sesión y muestra la página de acceso


    Examples:
      | número de pedido | status |
      | 94752763| Procesado |

