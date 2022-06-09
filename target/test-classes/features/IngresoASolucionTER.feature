Feature: Validar que se ingrese a la solución TER
  -Como administrador master quiero ingresar a la solución TER

  Scenario Outline: Validar que se ingrese a la solución TER
    Given Se ingresa la URL correspondiente en el navegador
    And Se ingresa "<Usuario>" y dar clic en Continuar
    And Se ingresa "<Contraseña>" y dar clic en Iniciar Sesión
    Then Dar clic en Empresarial Edenred

    Examples:
      | Usuario | Contraseña|
      | nayeli.delacruz@mtpinternational.mx | mtp123.|
