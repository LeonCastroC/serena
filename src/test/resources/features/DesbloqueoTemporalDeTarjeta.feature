#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz

Feature: Desbloqueo temporal de tarjeta

  Background:
    Given El usuario ejecuta el navegador
    And El sistema muestra el navegador
    And El usuario captura la URL
    When El sistema muestra la página

  Scenario: Desbloqueo temporal de tarjeta al ingresar como  Admin Usuario
    And El usuario captura sus credenciales de "AdminUsuario" y da clic en Continuar
    When El sistema muestra el campo para capturar la contraseña
    And El usuario captura su contraseña de "AdminUsuario" y da clic en Iniciar sesión
    And El sistema muestra la pantalla principal con el mensaje de Bienvenida
    And El usuario da clic en Empresarial EdenRed
    And El sistema muestra módulo de "Dashboard"

    And El usuario selecciona módulo de "Mi Cuenta"
    And El sistema muestra la Tarjeta "bloqueada" por usuario
    And El usuario da click en switch para "desbloquear" tarjeta
    And El sistema muestra tarjeta desbloqueada

    And El usuario da click en botón "Mi Cuenta"
    When El sistema muestra opciones de usuario
    And El usuario da click en botón de "Cerrar sesión"
    Then El sistema cierra la sesión y muestra la página de acceso

  Scenario: Desbloqueo temporal de tarjeta al ingresar como usuario
    And El usuario captura sus credenciales de "Usuario" y da clic en Continuar
    When El sistema muestra el campo para capturar la contraseña
    And El usuario captura su contraseña de "Usuario" y da clic en Iniciar sesión
    And El sistema muestra la pantalla principal con el mensaje de Bienvenida
    And El usuario da clic en Empresarial EdenRed
    And El sistema muestra módulo de "Mi cuenta"

    And El sistema muestra la Tarjeta "bloqueada" por usuario
    And El usuario da click en switch para "desbloquear" tarjeta
    And El sistema muestra tarjeta desbloqueada

    And El usuario da click en botón "Mi Cuenta"
    When El sistema muestra opciones de usuario
    And El usuario da click en botón de "Cerrar sesión"
    Then El sistema cierra la sesión y muestra la página de acceso