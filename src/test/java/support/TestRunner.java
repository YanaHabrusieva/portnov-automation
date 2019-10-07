package support;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"pretty", "html:target/cucumber", "json:target/cucumber/report.json"},
        features = "src/test/resources/features",
        glue = {"definitions", "support"},
        tags = {"@predefined"} // same as VM option -Dcucumber.options="--tags @predefined"
)
public class TestRunner {
    @BeforeClass //precondition
    public static void setup() {
        System.out.println("BeforeAll");
    }

    @AfterClass// everything need to be closed
    public static void teardown() {
        System.out.println("AfterAll");
    }
}
