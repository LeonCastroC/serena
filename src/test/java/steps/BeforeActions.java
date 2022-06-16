package steps;

import io.cucumber.java.Before;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import pages.utils.DriverManager;

public class BeforeActions {

    @Before
    public static void setUp() {
        System.out.println("Before");
        //System.setProperty("webdriver.chrome.driver", "drivers/chromedriver.exe");
        WebDriver driver = DriverManager.setupDriver();
    }



}
