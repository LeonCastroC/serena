#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz

Feature: Exportar a Excel la Consulta de Transacciones en Tarjetas | Consultas | Transacciones

  Background:
    Given El usuario ejecuta el navegador
    And El sistema muestra el navegador
    And El usuario captura la URL
    When El sistema muestra la página

  Scenario: Exportar a Excel la Consulta de Transacciones en Tarjetas | Consultas | Transacciones
            al ingresar como Admin Master

    And El usuario captura sus credenciales de "AdminMaster" y da clic en Continuar
    When El sistema muestra el campo para capturar la contraseña
    And El usuario captura su contraseña de "AdminMaster" y da clic en Iniciar sesión
    And El sistema muestra la pantalla principal con el mensaje de Bienvenida

    And El usuario da clic en Empresarial EdenRed
    And El sistema muestra módulo de "Dashboard"

    And El usuario selecciona módulo de "Tarjetas"
    And El sistema muestra por defecto sección de "Gestionar de saldos"

    And El usuario selecciona sección de "Consultas" de Tarjetas
    And El sistema muestra sección de "Consultas" de Tarjetas
    And El usuario da click en botón "Transacciones" de tarjetas
    And El sistema muestra pantalla de "Transacciones" de tarjetas
    And El usuario selecciona el rango de búsqueda desde-hasta
    And El usuario da click en botón "Filtrar" en transacciones
    And El sistema muestra la información de "transacciones" en la tabla acorde a las fechas seleccionadas
    And El usuario da click en botón "exportar a Excel" consulta de transacciones
    And El sistema comienza la descarga de consulta de transacciones en "Formato excel"

    And El usuario da click en botón "Mi Cuenta"
    When El sistema muestra opciones de usuario
    And El usuario da click en botón de "Cerrar sesión"
    Then El sistema cierra la sesión y muestra la página de acceso