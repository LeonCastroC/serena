package steps;

import io.cucumber.java.en.Given;
import pages.actions.IngresoASolucionActions;

public class IngresoASolucionTER {
        IngresoASolucionActions ingresoASolucionActions = new IngresoASolucionActions();

        @Given("Se ingresa la URL correspondiente en el navegador")
        public void ingresoAUrl() throws InterruptedException {
                ingresoASolucionActions.seeSolutionsPage();
        }

}
