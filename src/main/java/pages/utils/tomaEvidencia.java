package pages.utils;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.*;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import static java.lang.Thread.sleep;

public class tomaEvidencia {
    private int counterStep = 1;
    private static WebDriver driver;

    public void tomaEvidenciaFoto() throws Exception {
        SimpleDateFormat formatter = new SimpleDateFormat("_dd-MM-yyyy_HH:mm:ss");
        Date date = new Date();
        File file = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
        FileUtils.copyFile(file, new File("./src/evidence/images"+
                "/paso "+counterStep+formatter.format(date)+".png"));
        counterStep += 1;
    }

    public void tomaEvidenciaFoto(int segundos) throws Exception {
        segundos  = segundos * 1000;
        SimpleDateFormat formatter = new SimpleDateFormat("_dd-MM-yyyy_HH:mm:ss");
        Date date = new Date();
        File file = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
        FileUtils.copyFile(file, new File("./src/evidence/images"+
                "/paso "+counterStep+formatter.format(date)+".png"));
        counterStep += 1;
        sleep(segundos);
    }
}
