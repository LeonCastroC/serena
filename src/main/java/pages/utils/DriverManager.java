package pages.utils;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;


public class DriverManager {
    private static WebDriver driver;
    public static WebDriver getDriver() {

        return driver;
    }

    public static WebDriver setupDriver() {
        System.setProperty("webdriver.chrome.driver", "drivers/chromedriver.exe");
        driver  = new ChromeDriver();
        driver.get("https://yopmail.com/es/");
        driver.manage().window().maximize();

        return driver;
    }

}
