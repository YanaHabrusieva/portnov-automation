package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class WebDriverStepDefs {
    @Given("I go to {string} page and print details")
    public void iGoToPageAndPrintDetails(String page) {
        /*getDriver().get("https://www.google.com/");
        System.out.println(getDriver().getTitle());
        System.out.println(getDriver().getCurrentUrl());*/
        if (page.equalsIgnoreCase("sample")) {
            getDriver().get("http://skryabin.com/webdriver/html/sample.html");
            System.out.println(getDriver().getTitle());
            System.out.println(getDriver().getCurrentUrl());

        }else if (page.equalsIgnoreCase("google")){
            getDriver().get("https://www.google.com/");
            System.out.println(getDriver().getTitle());
            System.out.println(getDriver().getCurrentUrl());
        }else {System.out.println("Unknown page"+getDriver().getCurrentUrl());}
    }

    @And("I go back and forward, then refresh page")
    public void iGoBackAndForwardThenRefreshPage() {
        getDriver().navigate().to("https://www.yahoo.com/");
        System.out.println(getDriver().getTitle());
        getDriver().navigate().back();
        System.out.println(getDriver().getTitle());
        getDriver().navigate().forward();
        System.out.println(getDriver().getTitle());
        getDriver().navigate().refresh();
        System.out.println(getDriver().getTitle());
    }

    @Given("I go to {string} page and print some details")
    public void iGoToPageAndPrintSomeDetails(String arg0) {
        getDriver().get("http://skryabin.com/webdriver/html/sample.html");
        System.out.println("The page title is "+getDriver().getTitle());
    }

    @When("I fill out first name {string} and last name {string}")
    public void iFillOutFirstNameAndLastName(String firstname, String lastname) {
        getDriver().findElement(By.xpath("//input[@id='name']")).click();
        getDriver().findElement(By.xpath("//input[@id='firstName']")).sendKeys(firstname);
        getDriver().findElement(By.xpath("//input[@id='lastName']")).sendKeys(lastname);
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
    }

    @And("I fill out required fields {string}, {string}, {string}, {string}")
    public void iFillOutRequiredFields(String username, String email, String pasword, String confpas) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@name='username']")).sendKeys(username);
        getDriver().findElement(By.xpath("//input[@name='email']")).sendKeys(email);
        getDriver().findElement(By.xpath("//input[@id='password']")).sendKeys(pasword);
        getDriver().findElement(By.xpath("//input[@id='confirmPassword']")).sendKeys(confpas);
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//input[@name='agreedToPrivacyPolicy']")).click();
        getDriver().findElement(By.xpath("//button[@id='formSubmit']")).submit();
    }

    @Then("I assert submitted data")
    public void iAssertSubmittedData() {
        WebElement resultLegend= getDriver().findElement(By.xpath("//legend[@class='applicationResult']"));
        assertThat(resultLegend.isDisplayed()).isTrue();
        String actualAgreed = getDriver().findElement(By.xpath("//b[@name='agreedToPrivacyPolicy']")).getText();
        assertThat(actualAgreed).isEqualToIgnoringCase("true");
    }
}
