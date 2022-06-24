#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz

Feature:Transferir saldo entre tarjetas, desde botón "Transferir"

  Background:
    Given El usuario ejecuta el navegador
    And El sistema muestra el navegador
    And El usuario captura la URL
    When El sistema muestra la página

  Scenario Outline: Transferir saldo entre tarjetas, desde botón "Transferir" al ingresar como Admin Master
    And El usuario captura sus credenciales de "AdminMaster" y da clic en Continuar
    When El sistema muestra el campo para capturar la contraseña
    And El usuario captura su contraseña de "AdminMaster" y da clic en Iniciar sesión
    And El sistema muestra la pantalla principal con el mensaje de Bienvenida
    And El usuario da clic en Empresarial EdenRed
    And El sistema muestra módulo de "Dashboard"

    And El usuario selecciona módulo de "Tarjetas"
    And El sistema muestra por defecto sección de "Gestionar de saldos"

    And El usuario selecciona "transferir" en las acciones de una tarjeta
    And El sistema muestra pantalla para transferir
    And El usuario selecciona "<Monto>" a transferir
    And El usuario ingresa "<Comentarios>"
    And El usuario busca tarjeta por MaskedPad
    And El usuario da click en botón "Transferir"
    And El sistema mostrara modal de transferencia exitosa
    And El usuario da click en botón "OK" de transferencia exitosa
    And El sistema muestra el nuevo saldo de la tarjeta

    And El usuario da click en botón "Mi Cuenta"
    When El sistema muestra opciones de usuario
    And El usuario da click en botón de "Cerrar sesión"
    Then El sistema cierra la sesión y muestra la página de acceso

    Examples:
      | Monto | Comentarios |
