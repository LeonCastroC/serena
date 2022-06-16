package pages.utils;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.*;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import static java.lang.Thread.sleep;

public class TomaEvidencia {
    private int counterStep = 1;
    private static WebDriver driver;

    public void tomarEvidenciaFoto() throws IOException {
        WebDriver driver = DriverManager.getDriver();
        SimpleDateFormat formatter = new SimpleDateFormat("_ddMMyy_HHmmss");
        Date date = new Date();
        File file = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
        FileUtils.copyFile(file, new File("./src/Evidencias/Imagenes/paso"+counterStep+formatter.format(date)+".png"));
        counterStep += 1;

    }
}
