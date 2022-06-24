#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz

Feature: Editar Regla de uso cambiando los canales de pago

  Background:
    Given El usuario ejecuta el navegador
    And El sistema muestra el navegador
    And El usuario captura la URL
    When El sistema muestra la página

  Scenario: Editar Regla de uso cambiando los canales de pago al ingresar como Admin Master
    And El usuario captura sus credenciales de "AdminMaster" y da clic en Continuar
    When El sistema muestra el campo para capturar la contraseña
    And El usuario captura su contraseña de "AdminMaster" y da clic en Iniciar sesión
    And El sistema muestra la pantalla principal con el mensaje de Bienvenida

    And El usuario da clic en Empresarial EdenRed
    And El sistema muestra módulo de "Dashboard"

    And El usuario selecciona módulo de "Tarjetas"
    And El sistema muestra por defecto sección de "Gestionar de saldos"

    And El usuario selecciona sección de "Administración" de Tarjetas
    And El sistema muestra sección de "Administración" de Tarjetas
    And El usuario da click en botón "Reglas"
    And El sistema muestra pantalla de "Reglas de uso"
    And El usuario da click en icono de "lápiz" para editar una regla
    And El sistema muestra los datos de la regla seleccionada
    And El usuario selecciona los canales de acceso
    And El usuario cambia el territorio de nacional a internacional
    And El usuario da clic en botón de "aceptar"
    Then El sistema muestra habilitadas las acciones de "Editar" y "Habilitar" en la regla modificada

    And El usuario da click en botón "Mi Cuenta"
    When El sistema muestra opciones de usuario
    And El usuario da click en botón de "Cerrar sesión"
    Then El sistema cierra la sesión y muestra la página de acceso