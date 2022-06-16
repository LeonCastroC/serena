package steps;

import io.cucumber.java.After;
import io.cucumber.java.AfterStep;
import io.cucumber.java.Scenario;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.devtools.v85.webaudio.model.AutomationRate;
import org.testng.annotations.AfterTest;
import pages.utils.DriverManager;
import pages.utils.TomaEvidencia;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

public class AfterActions {
    TomaEvidencia tomaEvidencia = new TomaEvidencia();
    private static WebDriver driver;


    @AfterStep
    public void takeSS(Scenario scenario) throws Exception {
        tomaEvidencia.tomarEvidenciaFoto();
    }

    @After
    public void tearDown() {
        WebDriver driver = DriverManager.getDriver();
        if (driver != null) {
            driver.close();
            driver.quit();
        }
    }

}
