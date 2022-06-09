package pages.actions;

import org.openqa.selenium.WebDriver;
import pages.locators.IngresoASolucionLocators;

public class IngresoASolucionActions {

    WebDriver driver=null;
    IngresoASolucionLocators ingresoASolucionLocators;

    public IngresoASolucionActions(){
        this.driver=driver;
        this.ingresoASolucionLocators = new IngresoASolucionLocators();
    }


    public void seeSolutionsPage() throws InterruptedException {
        assert(ingresoASolucionLocators.userNameTextField).isDisplayed();
       ingresoASolucionLocators.userNameTextField.click();
    }

}
