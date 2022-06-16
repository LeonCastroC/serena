@trello
Feature: Validar que el usuario pueda ingresar a la página web de Trello
  -Como usuario quiero ingresar a la página web de Trello


  Scenario: Validar que se pueda iniciar sesión en trello
    Given El sistema muestra página de Trello
    When El usuario ingresa su "Usuario"
    And El usuario da clic en "Continuar"

    And El usuario da clic en "Iniciar Sesión"
   # And El usuario ingresa su "Contraseña"

