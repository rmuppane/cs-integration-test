package com.redhat.internal.cases;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
/*@CucumberOptions( //
    features = "classpath:cs.feature", //
    format = {"pretty", "html:target/Destination"} //
)
@CucumberOptions( //
features = "classpath:cs.feature",
plugin = { "pretty", "html:target/cucumber-reports" }
)*/

@CucumberOptions( 
		features = "classpath:cs.feature",
		plugin = { "usage" }
		)
public class RunnerTest {

}