Feature: Define Karate Variables
  # <GherkinKeyword> <def> <variable_name> =<value>
  # * <def> <variable_name> = <value>
  # We can only use variable inside Scenario
  Background:
    * def app_name = "Google Chrome"
    * def page_load_timeOut = 20
  Scenario: To create the variable
    Given def var_int = 10
    And def var_String = "Karate"
    Then print "int variable " , var_int
    And print  "String variable " , var_String
    * def var_int_2 = var_int+10
    And print "New Variable" , var_int_2
    * print app_name
    * print page_load_timeOut


  Scenario: To Access the variable
    Given def var_int = 20
    And def var_String = "Selenium"
    Then print "int variable " , var_int
    And print  "String variable " , var_String
    * def var_int_2 = var_int+10
    And print "New Variable" , var_int_2
    * print app_name
    * print page_load_timeOut
