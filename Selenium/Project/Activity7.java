package Project;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

public class Activity7 {
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
        Actions act = new Actions(driver);
        WebElement Salesmenu = driver.findElement(By.xpath("//span/a[@id='grouptab_0']"));
        act.moveToElement(Salesmenu).build().perform();
        driver.findElement(By.linkText("Leads")).click();
        Thread.sleep(3000);

        driver.findElement(By.xpath("//tbody/tr[1]/td[10]/span[1]/span[1]")).click();
        Thread.sleep(2000);

            String Mobile=driver.findElement(By.xpath("//div[@id='ui-id-5']//span")).getText();
            System.out.println("Mobile Number is:" +Mobile);
            driver.quit();



    }
}
