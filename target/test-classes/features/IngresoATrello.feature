@trello
Feature: Validar que el usuario pueda ingresar a la página web de Trello
  -Como usuario quiero ingresar a la página web de Trello


  Scenario: Validar que se ingrese a la solución TER
    Given Se ingresa la URL de Trello en el navegador
    And Se ingresa "usuario" y dar clic en Continuar
    #And Se ingresa "<Contraseña>" y dar clic en Iniciar Sesión
    #Then Dar clic en Empresarial Edenred
