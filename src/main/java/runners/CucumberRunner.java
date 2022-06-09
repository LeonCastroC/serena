package runners;

import io.cucumber.testng.CucumberOptions;


@CucumberOptions(
 features = "src/main/java/resources/features",
         glue = {"steps"},
         tags = "@MXN-42",
         plugin = {
         "pretty",
         "html:target/cucumber-reports/cucumber-pretty",
         "json:target/cucumber-reports/CucumberTestReport.json",
         "rerun:target/cucumber-reports/rerun.txt"
         })

public class CucumberRunner {
}
