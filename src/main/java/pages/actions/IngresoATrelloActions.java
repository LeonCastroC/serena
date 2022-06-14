package pages.actions;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;
import pages.locators.IngresoASolucionLocators;
import pages.locators.IngresoATrelloLocators;
import pages.utils.GeneraDriver;
import pages.utils.ManejoDeControlador;

public class IngresoATrelloActions {
    WebDriver driver=null;
    IngresoATrelloLocators ingresoATrelloLocators;

    public IngresoATrelloActions(){
        this.ingresoATrelloLocators = new IngresoATrelloLocators();
        PageFactory.initElements(ManejoDeControlador.getDriver(), ingresoATrelloLocators);
    }

    public void seeTrelloPage(){
        assert(ingresoATrelloLocators.userNameTextField).isDisplayed();
        ingresoATrelloLocators.userNameTextField.click();
    }

    public void sendUserEmail(String userName){
        ingresoATrelloLocators.userNameTextField.sendKeys(userName);
    }

}
