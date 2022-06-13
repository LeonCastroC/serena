package pages.utils;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;

public class GeneraDriver {
    public static fileProperties archivo = new fileProperties();
    public static WebDriver chromeDriver;
    public static WebDriver firefoxDriver;
    public static WebDriver edgeDriver;
    public static WebDriver iexplorerDriver;

    public WebDriver generaChromeDriver () {
        chromeDriver = new ChromeDriver();
        String driverPathChrome = "drivers/chromedriver.exe";
        System.setProperty("webdriver.chrome.driver", driverPathChrome);
        chromeDriver.get(archivo.getProperty().getProperty("trelloURL"));
        return chromeDriver;
    }

    public static WebDriver generaFirefoxDriver () {
        firefoxDriver = new FirefoxDriver();
        String driverPathFirefox = "drivers/geckodriver.exe";
        System.setProperty("drivers/geckodriver.exe", driverPathFirefox);
        firefoxDriver.get(archivo.getProperty().getProperty("url"));
        return firefoxDriver;
    }

    public static WebDriver generaEdge () {
        edgeDriver = new EdgeDriver();
        String driverPathEdge = "drivers/edgedriver.exe";
        System.setProperty("webdriver.edge.driver", driverPathEdge);
        edgeDriver.get(archivo.getProperty().getProperty("url"));
        return edgeDriver;
    }

    public static WebDriver generaInternetExplorer () {
        iexplorerDriver = new InternetExplorerDriver();
        String driverPathExplorer = "drivers/IEDriverServer.exe";
        System.setProperty("webdriver.ie.driver", driverPathExplorer);
        iexplorerDriver.get(archivo.getProperty().getProperty("url"));
        return iexplorerDriver;
    }


}
