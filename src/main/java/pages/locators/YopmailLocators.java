package pages.locators;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class YopmailLocators {

    @FindBy( how= How.ID, using ="login")
    public static WebElement userNameTextField;

    @FindBy( how= How.CSS, using =".f36")
    public static WebElement loginButton;

    @FindBy( how= How.ID, using ="refresh")
    public static WebElement refreshButton;

    @FindBy( how= How.XPATH, using ="//span[2]")
    public static WebElement emailButton;

    @FindBy( how= How.CSS, using ="#mail > div > div > table > tbody > tr:nth-child(14) > td:nth-child(2) > p > span")
    public static WebElement tokenValue;
}
