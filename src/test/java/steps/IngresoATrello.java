package steps;

import io.cucumber.java.en.Given;
import pages.actions.IngresoASolucionActions;
import pages.actions.IngresoATrelloActions;

public class IngresoATrello {

        IngresoATrelloActions ingresoATrelloActions = new IngresoATrelloActions();

        @Given("Se ingresa la URL de Trello en el navegador")
        public void ingresoAUrl() throws InterruptedException {
                ingresoATrelloActions.seeTrelloPage();
        }
}
