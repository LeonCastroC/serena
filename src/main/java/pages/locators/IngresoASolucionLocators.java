package pages.locators;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class IngresoASolucionLocators {

    @FindBy( how= How.ID, using ="UserName")
    public static WebElement userNameTextField;
}
