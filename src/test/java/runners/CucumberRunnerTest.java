package runners;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;
import pages.utils.GeneraDriver;

import static java.lang.Thread.sleep;


@CucumberOptions(
 features = { "./src/test/resources/features/IngresoATrello.feature"},
         glue = {"steps"},
         plugin = {"summary","pretty", "html:target/cucumber-reports/cucumber-pretty"},
         //"json:target/cucumber-reports/CucumberTestReport.json",
         //"rerun:target/cucumber-reports/rerun.txt"
        monochrome = true,
        tags = ""
         )

public class CucumberRunnerTest extends AbstractTestNGCucumberTests {

    public WebDriver driver;
    GeneraDriver generaDriver = new GeneraDriver();

    @AfterTest
    public void tearDown() {

    }
}
