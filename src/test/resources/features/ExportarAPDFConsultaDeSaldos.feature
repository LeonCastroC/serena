#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz

Feature: Exportar a PDF la consulta de saldos

  Background:
    Given El usuario ejecuta el navegador
    And El sistema muestra el navegador
    And El usuario captura la URL
    When El sistema muestra la página

  Scenario : Exportar a PDF la consulta de saldos al ingresar como Admin Master
    And El usuario captura sus credenciales de "AdminMaster" y da clic en Continuar
    When El sistema muestra el campo para capturar la contraseña
    And El usuario captura su contraseña de "AdminMaster" y da clic en Iniciar sesión
    And El sistema muestra la pantalla principal con el mensaje de Bienvenida
    And El usuario da clic en Empresarial EdenRed
    And El sistema muestra módulo de "Dashboard"

    And El usuario selecciona módulo de "Tarjetas"
    And El sistema muestra por defecto sección de "Gestionar de saldos"

    And El usuario selecciona sección de "Consultas" de tarjetas
    And El sistema muestra sección de "Consultas" de tarjetas
    And El usuario da click en botón "Saldos" de tarjetas
    And El sistema muestra pantalla de "Saldos" de tarjetas
    And El usuario da click en botón "exportar a PDF" consulta de saldos
    And El sistema comienza la descarga de consulta de saldos en "Formato PDF"

