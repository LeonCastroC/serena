package steps;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import pages.actions.YopmailActions;

public class Yopmail {

    YopmailActions yopmailActions = new YopmailActions();

    @Given("El sistema muestra página de Yopmail")
    public void elSistemaMuestraPáginaDeTrello()throws InterruptedException {
        yopmailActions.seeYopmailPage();
    }

    @When("El usuario ingresa su {string} de yopmail")
    public void elUsuarioIngresaSu(String arg0) {
        switch (arg0){
            case "Correo":
                yopmailActions.sendUserEmail("uatmxn11522m22pscs@yopmail.com");
                break;
        }
    }

    @And("El usuario da clic en botón {string}")
    public void elUsuarioDaClicEn(String arg0) throws InterruptedException {
        switch (arg0){
            case "Revisar correo":
                yopmailActions.clickLoginButton();
                break;
        }
    }

    @And("El usuario visualiza su correo yopmail")
    public void elUsuarioVisualizaSuCorreoYopmail() throws InterruptedException {
        yopmailActions.seeYopmailEmailPage();
    }

    @And("El usuario da clic en el email de edenred")
    public void elUsuarioDaClicEnElEmailDeEdenred() {
        yopmailActions.clickEmailButton();
    }

    @And("El usuario da clic en el valor del token enviado")
    public void elUsuarioDaClicEnElValorDelTokenEnviado() {
        yopmailActions.tokenValueText();
    }
}
