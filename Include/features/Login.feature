#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@HighPriority
Feature: Login
  User can login
  
  @Positive
  Scenario Outline: User successfully login
    Given user is on login page
    When user input <username> as username
    And user input <password> as password
    And user click login button
    Then user verify login result

    Examples: 
      | username | password | status  |
      | Admin    | admin123 | Success |
 
      
      