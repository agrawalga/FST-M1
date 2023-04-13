package Project;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

public class Activity6 {
    public static void main(String[] args) throws InterruptedException {
        WebDriver driver = new FirefoxDriver();
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
        driver.get("http://alchemy.hguy.co/crm");
        driver.findElement(By.id("user_name")).click();
        driver.findElement(By.id("user_name")).sendKeys("admin");
        driver.findElement(By.id("username_password")).click();
        driver.findElement(By.id("username_password")).sendKeys("pa$$w0rd");
        driver.findElement(By.id("bigbutton")).click();
        Thread.sleep(4000);
        driver.findElement(By.xpath("//div[@id='toolbar']")).click();
        Thread.sleep(3000);
        driver.findElement(By.xpath("//span/a[@id='grouptab_3']")).isDisplayed();
        System.out.println("Activities Menu is visible");
        driver.quit();

    }
}
