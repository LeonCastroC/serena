#Language: en
#Implementación para la solución TER
#Realizado por: Vanessa de la Cruz
#Actualizado por: Vanessa de la Cruz


Feature: Ingreso a la solución TER
  -Como usuario quiero ingresar a la solución TER para visualizar las opciones que tengo de acuerdo al rol de acceso

  Scenario: Ingresar a la solución TER como ADMIN MASTER
    Given El usuario cuenta con las credenciales de acceso a TER
    And El usuario ejecuta el navegador
    When El sistema muestra el navegador
    And El usuario captura la URL de la solución
    When El sistema muestra la solución TER
    And El usuario captura el "Usuario" y da clic en Continuar
    And El sistema valida el usuario y muestra el campo para capturar la contraseña
    And El usuario captura la "Contraseña" y da clic en Iniciar sesión
    When El sistema muestra listado de opciones para el tipo de usuario
    And El usuario selecciona Empresarial EdenRed y da clic en Continuar
    Then Se muestra la pantalla principal de TER

