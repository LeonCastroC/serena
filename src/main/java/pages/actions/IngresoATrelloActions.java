package pages.actions;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;
import pages.locators.IngresoATrelloLocators;
import pages.utils.DriverManager;

import static java.lang.Thread.sleep;

public class IngresoATrelloActions {
    WebDriver driver=null;
    IngresoATrelloLocators ingresoATrelloLocators;

    public IngresoATrelloActions(){
        this.ingresoATrelloLocators = new IngresoATrelloLocators();
        PageFactory.initElements(DriverManager.getDriver(), ingresoATrelloLocators);
    }

    public void seeTrelloPage() throws InterruptedException {
        sleep(3000);

        assert(ingresoATrelloLocators.userNameTextField).isDisplayed();
        sleep(1000);
        //ingresoATrelloLocators.singUpButton.click();
        ingresoATrelloLocators.userNameTextField.click();
    }
    public void clickRegisterButton(){
        ingresoATrelloLocators.singUpButton.click();
    }

    public void sendUserEmail(String userName){
        ingresoATrelloLocators.userNameTextField.sendKeys(userName);
    }

    public void clickContinueButton(){
        ingresoATrelloLocators.registerButton.click();
    }
    public void sendUserPwd(String userPwd){
        ingresoATrelloLocators.userPassword.sendKeys(userPwd);
    }

    public void clickLoginButton() throws InterruptedException {
        ingresoATrelloLocators.loginButton.click();
        sleep(1000);
    }
}
