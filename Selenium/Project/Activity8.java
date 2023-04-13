package Project;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;
import java.util.List;

public class Activity8 {
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
        driver.findElement(By.linkText("Accounts")).click();
        Thread.sleep(3000);
        int row = driver.findElements(By.xpath("//input[@title='Select this row']")).size();
        System.out.println("Rows:" +row);
        for (int i=1; i<=5; i++) {
            String Name=driver.findElement(By.xpath("(//tr[@class='oddListRowS1']//td/b/a)["+i+"]")).getText();

            System.out.println(Name);
          }
        driver.quit();

    }
}