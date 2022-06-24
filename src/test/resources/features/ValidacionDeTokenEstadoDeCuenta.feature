#Language: en
#Implementación para la solución TER
#Realizado por: Maria Fernanda Muñiz Huerta
#Actualizado por: Maria Fernanda Muñiz Huerta

Feature: Validación de token "Estado de Cuenta"

    Background:
        Given El usuario ejecuta el navegador
        And El sistema muestra el navegador
        And El usuario captura la URL
        When El sistema muestra la página

    Scenario: Validar token "Estado de Cuenta" al ingresar como AdminMaster

        And El usuario captura sus credenciales de "AdminMaster" y da clic en Continuar
        When El sistema muestra el campo para capturar la contraseña
        And El usuario captura su contraseña de "AdminMaster" y da clic en Iniciar sesión
        And El sistema muestra la pantalla principal con el mensaje de Bienvenida

        When El usuario da clic en "Empresarial EdenRed"
        And El sistema muestra la pantalla principal de TER
        And El usuario selecciona el módulo de "Organización"
        And El sistema muestra por default la sección de "Gestionar fondos"
        And El usuario selecciona la sección de "Consultas"
        And El sistema muestra la sección de "Consultas"
        And El usuario da clic en "Estados de Cuenta"
        And El sistema muestra pantalla de "Autorizar Operación"
        And El usuario recibe correo electrónico que contiene token de 8 dígitos
        And El usuario ingresa el token y da clic en el botón "Continuar"
        And El sistema muestra pantalla "Estados de Cuenta"

        And El usuario da click en botón "Mi Cuenta"
        When El sistema muestra opciones de usuario
        And El usuario da click en botón de "Cerrar sesión"
        Then El sistema cierra la sesión y muestra la página de acceso
