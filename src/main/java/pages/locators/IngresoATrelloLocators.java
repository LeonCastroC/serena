package pages.locators;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class IngresoATrelloLocators {
    @FindBy( how= How.CSS, using =".Stack-sc-98g4c-0 span")
    public static WebElement singUpButton;

    @FindBy( how= How.CSS, using =".HlPFP > .UiEmailSignupstyles__InputEmail-sc-9nggyw-1")
    public static WebElement userNameTextField;

    @FindBy( how= How.CSS, using =".gToSzH > button")
    public static WebElement registerButton;

    @FindBy( how= How.XPATH, using ="//*[@id='password']")
    public static WebElement userPassword;

    @FindBy( how= How.ID, using ="signup-submit")
    public static WebElement loginButton;
}
