package steps;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import pages.actions.IngresoASolucionActions;
import pages.actions.IngresoATrelloActions;

public class IngresoATrello {

        IngresoATrelloActions ingresoATrelloActions = new IngresoATrelloActions();
        @Given("El sistema muestra página de Trello")
        public void elSistemaMuestraPáginaDeTrello() throws InterruptedException {
                ingresoATrelloActions.seeTrelloPage();
        }
        @When("El usuario ingresa su {string}")
        public void elUsuarioIngresaSu(String arg0) {
                switch (arg0){
                        case "Usuario":
                                ingresoATrelloActions.sendUserEmail("uatmxn11522m22pscs@yopmail.com");
                                break;
                        case "Contraseña":
                                ingresoATrelloActions.sendUserPwd("Claro123.");
                                break;
                }
        }

        @And("El usuario da clic en {string}")
        public void elUsuarioDaClicEn(String arg0) throws InterruptedException {
                switch (arg0){
                        case "Registrarse":
                                ingresoATrelloActions.clickRegisterButton();
                                break;
                        case "Continuar":
                                ingresoATrelloActions.clickContinueButton();
                                break;
                        case "Iniciar Sesión":
                                ingresoATrelloActions.clickLoginButton();
                                break;
                }

        }
}
