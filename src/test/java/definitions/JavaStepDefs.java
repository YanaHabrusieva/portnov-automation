package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;

public class JavaStepDefs {
    @Given("I write first java step")
    public void iWriteFirstJavaStep() {
        System.out.println("Welcome to the basic Java");
        String firstName="Yana";
        String lastName="Habrusieva";
        System.out.println("My name is "+firstName+" "+lastName);
    }

    @And("I print {string} in console")
    public void iPrintInConsole(String txt) {
        System.out.println(txt);
        System.out.println(txt.length());
        System.out.println(txt.toLowerCase());
        System.out.println(txt.toUpperCase());
    }

    @And("I do action with {string} and {string}")
    public void iDoActionWithAnd(String arg0, String arg1) {
        System.out.println("First parametr is: "+arg0);
        System.out.println(arg0+" is equal to "+arg1+"?"+(arg0==arg1));
        System.out.println("Is apple equal to orange? "+arg0.equals(arg1));
    }

    @And("I compare {string} and {string}")
    public void iCompareAnd(String arg0, String arg1) {
        if (arg0.equalsIgnoreCase(arg1)) {
            System.out.println("They equal");
        }
        else {System.out.println("They are not equal");}}

    @Given("I run operators with {int} and {int}")
    public void iRunOperatorsWithAnd(int arg0, int arg1) {
        System.out.println("First number is:"+ arg0);
        System.out.println("First number is:"+ arg1);
        if (arg0<arg1) {
            System.out.println();
            System.out.println("First number is less then second");
        }
        else {
            System.out.println("First number is greater");

        }
    }

    @And("I sum operators with {int} and {int}")
    public void iSumOperatorsWithAnd(int arg0, int arg1) {
        System.out.println("First number is:"+arg0);
        System.out.println("Second number is:"+arg1);
        System.out.println(arg0 +"+"+ arg1 +"="+(arg0+arg1));

    int num1=5;
    int num2=2;
    System.out.println ("The sum is "+(num1 + num2));
    }


    @Given("I print arrays")
    public void iPrintArrays() {
        String[] groceryList={"milk","apple","cheese","cucumber"};
        //System.out.println(groceryList[0]);
        //System.out.println(groceryList[3]);
        //Use for loop to print all array`s values based on index

        for (int i=0; i<groceryList.length;i++)
        {System.out.println(groceryList[i]);}

        // for each loop that works with array`s values
        for (String elem:groceryList)
        {System.out.println(elem);}

        Integer[] numberList={1,2,3,4};
        for (Integer elem2:numberList)
        {System.out.println(elem2);}

    }
}
