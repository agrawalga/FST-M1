package testRunner;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/java/Features",
        glue = {"StepDefinitions"},
        tags = "@activity4",
        publish= true
)
//@RunWith(Cucumber.class)
//@CucumberOptions(
//        features = "src/test/java/Features/Activity3.feature",
//        glue = {"StepDefinitions"},
//        tags = "@SimpleAlert",
//        plugin = {"pretty"},
//        monochrome = true
//)
public class ActivitiesRunner {
    //empty
}