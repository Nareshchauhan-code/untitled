Feature: Java Script Function use in Feature file
  Scenario: To use Java Script Function
    * def getValue = function(){ return 10;}
    Then print "Function value : " , getValue()

    # Generate the random value

  * def getRandomeValue = function() { return Math.floor((100)* Math.random());}
    Then print "Function value : " , getRandomeValue()

        # Generate the random value
    * def getRandomevaluetwo = function(){ return Math.floor((Math.random() * 100) + 1)}
    Then print "Function value : " , getRandomevaluetwo()

    # Function with Argument

  * def argumentFunction = function(arg1){ return "Hello" + arg1 }
    Then print "Function value : " , argumentFunction(" World")