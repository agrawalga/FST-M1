package Project;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.WebDriverWait;
import java.time.Duration;

public class Activity1 {
    public static void main(String[] args){
        //WebDriverManager.firefoxdriver().setup();
        WebDriver driver = new FirefoxDriver();
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
        driver.get("http://alchemy.hguy.co/crm");
        System.out.println("Page title is: " + driver.getTitle());
        if(driver.getTitle().equals("SuiteCRM")) {
            System.out.println("Matched");
            driver.quit();
        }

        }

}
