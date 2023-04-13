package Project;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

public class Activity2 {
    public static void main(String[] args) throws InterruptedException {
    WebDriver driver = new FirefoxDriver();
    WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
        driver.get("http://alchemy.hguy.co/crm");
       String URL= driver.findElement(By.xpath("//a[@title='SuiteCRM']")).getAttribute("href");
        System.out.println("Image Header url:" +URL);
        Thread.sleep(3000);
        driver.quit();

    }
}
