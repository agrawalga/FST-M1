package StepDefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

public class LoginTestSteps4 {
    WebDriver driver;
    WebDriverWait wait;

    @Given("^User is on Login page.$")
    public void login_Page() {
        WebDriverManager.firefoxdriver().setup();
        driver = new FirefoxDriver();
        wait = new WebDriverWait(driver, Duration.ofSeconds(10));

        //Open browser
        driver.get("https://www.training-support.net/selenium/login-form");
    }



//    @When("^User enters username and password$")
//    public void enterCredentials()  {
//        //Enter username
//        driver.findElement(By.id("username")).sendKeys("admin");
//        //Enter password
//        driver.findElement(By.id("password")).sendKeys("password");
//        //Click Login
//        driver.findElement(By.xpath("//button[@type='submit']")).click();
//    }

    @When("^User enters \"(.*)\" and \"(.*)\"$")
    public void user_enters(String username1, String password1) {

        //driver.findElement(By.id("username")).sendKeys(username1);
        driver.findElement(By.xpath("//input[@id='username']")).sendKeys(username1);
        driver.findElement(By.id("password")).sendKeys(password1);
        //driver.findElement(By.id())
        //Click Login
        driver.findElement(By.xpath("//button[@type='submit']")).click();
    }
    @Then("^Read the page title and confirmation message.$")
    public void readTitleAndHeading() {
        wait.until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id("action-confirmation")));

        String pageTitle = driver.getTitle();
        String confirmMessage = driver.findElement(By.id("action-confirmation")).getText();

        System.out.println("Page title is: " + pageTitle);
        System.out.println("Login message is: " + confirmMessage);
    }
    @And("^Close the Firefox Browser$")
    public void closeBrowser() {
        driver.close();
    }


}
