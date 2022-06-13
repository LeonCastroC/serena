package runners;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;
import org.checkerframework.checker.units.qual.A;
import org.junit.runner.RunWith;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;
import pages.utils.GeneraDriver;

import static java.lang.Thread.sleep;


@CucumberOptions(
 features = { "serena/src/test/resources/features/IngresoATrello.feature"},
         glue = {"steps"},
         plugin = {"pretty", "html:target/cucumber-reports/cucumber-pretty"},
         //"json:target/cucumber-reports/CucumberTestReport.json",
         //"rerun:target/cucumber-reports/rerun.txt"
        monochrome = true,
        tags = ""
         )

public class TestNGCucumberRunner extends AbstractTestNGCucumberTests {

    public WebDriver driver;
    GeneraDriver generaDriver = new GeneraDriver();

    @BeforeTest
    public void setUp(){
        System.out.println("hi");
        //generaDriver.generaChromeDriver();
        System.setProperty("webdriver.chrome.driver", "drivers/chromedriver.exe");
        driver  = new ChromeDriver();
        driver.get("https://www.trello.com/");
        driver.manage().window().maximize();
    }


    @Test
    public void test() throws InterruptedException {
        sleep(5000);
        driver.findElement(By.cssSelector(".HlPFP > .UiEmailSignupstyles__InputEmail-sc-9nggyw-1")).click();
        sleep(2000);
        driver.findElement(By.cssSelector(".HlPFP > .UiEmailSignupstyles__InputEmail-sc-9nggyw-1")).sendKeys("usuario");
        sleep(2000);
        driver.findElement(By.cssSelector(".gToSzH > button")).click();

    }

    @AfterTest
    public void tearDown() {
        if (driver != null) {
            driver.close();
            driver.quit();
        }
    }
}
