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

public class LoginTestStepsAct5 {
    WebDriver driver;
    WebDriverWait wait;

    @Given("^User is on the Login page1$")
    public void login_Page() {
        WebDriverManager.firefoxdriver().setup();
        driver = new FirefoxDriver();
        wait = new WebDriverWait(driver, Duration.ofSeconds(10));

        //Open browser
        driver.get("https://www.training-support.net/selenium/login-form");
    }

    @When("^User enters the \"(.*)\" and \"(.*)\"$")
    public void user_enters(String username, String password) {

        //driver.findElement(By.id("username")).sendKeys(username1);
        driver.findElement(By.xpath("//input[@id='username']")).sendKeys(username);
        driver.findElement(By.id("password")).sendKeys(password);
        //driver.findElement(By.id())
        //Click Login
        driver.findElement(By.xpath("//button[@type='submit']")).click();
    }


    @Then("^Read the page title and confirmation messages.$")
    public void readTitleAndHeading() {
        wait.until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id("action-confirmation")));

        //Read the page title and heading
        String pageTitle = driver.getTitle();
        String confirmMessage = driver.findElement(By.id("action-confirmation")).getText();

        //Print the page title and heading
        System.out.println("Page title is: " + pageTitle);
        System.out.println("Login message is: " + confirmMessage);

        if(confirmMessage.contains("admin")) {
            Assert.assertEquals(confirmMessage, "Welcome Back, admin");
        } else {
            Assert.assertEquals(confirmMessage, "Invalid Credentials");
        }
    }

    @And("^User Close the Browser.$")
    public void closeBrowser() {
        driver.close();
    }

}
