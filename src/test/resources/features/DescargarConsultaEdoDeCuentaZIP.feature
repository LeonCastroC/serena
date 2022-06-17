#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz

Feature: Descarga de consulta de Estados de cuentas a .ZIP

  Background:
    Given El usuario cuenta con las credenciales de acceso a TER
    When El usuario ejecuta el navegador
    And El sistema muestra el navegador
    And El usuario captura la URL de la solución
    And El sistema muestra la solución TER

  Scenario: Descarga de consulta de Estados de cuentas a .ZIP al ingresar como Admin Master
    When El usuario captura sus credenciales de "AdminMaster" y da clic en Continuar
    And El sistema valida el usuario y muestra el campo para capturar la contraseña
    And El usuario captura el "Contraseña" y da clic en Iniciar sesión
    And El sistema muestra listado de opciones para el "Admin Master"
    And El usuario da clic en  Empresarial EdenRed
    When El sistema muestra la pantalla principal de TER
    And El usuario selecciona módulo de "Organización"
    And El sistema muestra por default sección de "Gestionar fondos"
    And El usuario selecciona sección de "Consultas"
    And El sistema muestra sección de "Consultas"
    And El usuario da clic en "Estados de cuenta"
    And El sistema muestra pantalla de "Solicitud de token"
    And El usuario ingresa a su correo electrónico para visualizar el token
    And El sistema muestra el correo con el token para ver estados de cuenta
    And El usuario ingresa el token enviado por correo y da click en Continuar
    And El usuario da click en Descargar estado de cuenta a ".ZIP"
    Then El sistema comienza la descarga del archivo en formato ".ZIP"
