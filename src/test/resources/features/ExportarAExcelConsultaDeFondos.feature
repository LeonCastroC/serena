#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz

Feature: Exportar a excel la consulta de fondos

  Background:
    Given El usuario cuenta con las credenciales de acceso a TER
    When El usuario ejecuta el navegador
    And El sistema muestra el navegador
    And El usuario captura la URL de la solución
    And El sistema muestra la solución TER


  Scenario : Exportar a excel la consulta de fondos al ingresar como Admin Master
    When El usuario captura sus credenciales de "AdminMaster" y da clic en Continuar
    And El sistema valida el usuario y muestra el campo para capturar la contraseña
    And El usuario captura el "Contraseña" y da clic en Iniciar sesión
    And El sistema muestra listado de opciones para el "Admin Master"
    And El usuario selecciona Empresarial EdenRed y da clic en Continuar
    When El sistema muestra la pantalla principal de TER
    And El usuario selecciona módulo de "Organización"
    And El sistema muestra por default sección de "Gestionar fondos"
    And El usuario selecciona sección de "Consultas"
    And El sistema muestra sección de "Consultas"
    And El usuario da clic en "Fondos"
    And El sistema muestra pantalla de "Fondos"
    And El usuario da  clic en botón "exportar a excel"
    Then El sistema comienza la descarga del archivo