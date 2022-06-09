Feature: Validar el acceso a la solución TER
  - Yo como ADMINMASTER requiero ingresar a la solución TER

  Scenario: Validar que se ingrese a la solución TER
    Given El usuario cuenta con las credenciales de acceso a TER
    And El usuario ejecuta el navegador
    When El sistema muestra el navegador
    And El usuario captura la URL de la solución
    When El sistema muestra la solución TER
    And El usuario captura el "<Usuario>" y da clic en Continuar
    And El sistema valida el usuario y muestra el campo para capturar la contraseña
    And El usuario captura el "<Password>" y da clic en Iniciar sesión
    When El sistema muestra listado de opciones para el tipo de usuario
    And El usuario selecciona Empresarial EdenRed y da clic en Continuar
    Then Se muestra la pantalla principal de TER

    #Examples:
    #  |Usuario | Password  |
    #  |CASLEO | MiPassword |
    #  |Usuario2 | MiSegundoPassword |

    Scenario: Validar que un usuario desconocido no ingrese a la solución de TER
      Given El usuario cuenta con las credenciales de acceso a TER
      And El usuario ejecuta el navegador
      When El sistema muestra el navegador
      And El usuario captura la URL de la solución
      When El sistema muestra la solución TER
      And El usuario captura el "<Usuario>" y da clic en Continuar
      Then Se muestra el mensaje El usuario suministrado no es válido
      #Examples:
      #  | Usuario |
      #  |CASLEO |
      #  |DePrueba |