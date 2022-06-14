package pages.locators;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class IngresoATrelloLocators {

    @FindBy( how= How.CSS, using =".HlPFP > .UiEmailSignupstyles__InputEmail-sc-9nggyw-1")
    public static WebElement userNameTextField;

    @FindBy( how= How.CSS, using =".gToSzH > button")
    public static WebElement registerButton;

    @FindBy( how= How.XPATH, using ="//*[@id='password']")
    public static WebElement userPassword;

    @FindBy( how= How.XPATH, using ="/html/body/div[1]/div/div/div/div[2]/div[2]/div/section/div[2]/form/div[2]/button/span")
    public static WebElement loginButton;
}
