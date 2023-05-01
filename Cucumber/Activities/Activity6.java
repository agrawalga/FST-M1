package testRunner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

//@RunWith(Cucumber.class)
//@CucumberOptions(
//        features = "src/test/java/Features",
//        glue = {"StepDefinitions"},
//        tags = "@SimpleAlert",
//        plugin = {"pretty"},
//        monochrome = true
//)
//
//public class Activity6 {
//   
//}

//@RunWith(Cucumber.class)
//@CucumberOptions(
//        features = "src/test/java/Features",
//        glue = {"StepDefinitions"},
//        tags = "@SimpleAlert",
//        plugin = {"html: test-reports"},
//        monochrome = true
//)
//
//public class Activity6 {}

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/java/Features",
        glue = {"StepDefinitions"},
        tags = "@SimpleAlert",
        plugin = {"json: test-reports/json-report.json"},
        monochrome = true
)

public class Activity6 {}