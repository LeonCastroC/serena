package pages.actions;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;
import pages.locators.IngresoATrelloLocators;
import pages.locators.YopmailLocators;
import pages.utils.DriverManager;

import static java.lang.Thread.sleep;

public class YopmailActions {
    WebDriver driver=null;
    YopmailLocators yopmailLocators;

    public YopmailActions(){
        this.yopmailLocators = new YopmailLocators();
        PageFactory.initElements(DriverManager.getDriver(), yopmailLocators);
    }

    public void seeYopmailPage() throws InterruptedException {
        sleep(3000);

        assert(yopmailLocators.userNameTextField).isDisplayed();
        sleep(1000);
        //ingresoATrelloLocators.singUpButton.click();
        yopmailLocators.userNameTextField.click();
    }

    public void sendUserEmail(String userName){
        yopmailLocators.userNameTextField.sendKeys(userName);
    }

    public void clickLoginButton() throws InterruptedException {
        yopmailLocators.loginButton.click();
        sleep(1000);
    }
    public void seeYopmailEmailPage() throws InterruptedException {
        sleep(3000);

        assert(yopmailLocators.refreshButton).isDisplayed();
        sleep(1000);
    }

    public void clickEmailButton() {
        yopmailLocators.emailButton.click();
        String token;
        token = yopmailLocators.emailButton.getText();
        System.out.println(token);

    }

    public void tokenValueText() {
        yopmailLocators.tokenValue.click();
        String token;
        token = yopmailLocators.tokenValue.getText();
        System.out.println(token);

    }
}
