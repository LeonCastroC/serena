@trello
Feature: Validar que el usuario pueda ingresar a la página web de Trello
  -Como usuario quiero ingresar a la página web de Trello


  Scenario: Validar que se pueda iniciar sesión en yopmail
    Given El sistema muestra página de Yopmail
    When El usuario ingresa su "Correo" de yopmail
    And El usuario da clic en botón "Revisar correo"
    And El usuario visualiza su correo yopmail
    And El usuario da clic en el email de edenred
    And El usuario da clic en el valor del token enviado
   # And El usuario ingresa su "Contraseña"

