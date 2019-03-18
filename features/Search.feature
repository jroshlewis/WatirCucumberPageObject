Feature: Search Functionality with Slideshare website

  Background:
        Given The user is on the home page of Slideshare website

  Scenario: Search with valid input
          When The user enters valid input on search text box
          And Clicks on search button
          Then Search result as per search input should be displayed to the user.


  Scenario: Verify Login Link
          When The user clicks on login link
          Then Login form should be displayed to the user

  Scenario: Login with invalid data
          When The user clicks on login link
          And The user enters invalid usename and valid password
          And Clicks on login button
          Then Error message should be displayed to the user

  Scenario: Verify Signup link
          When The user clicks on Signup link
          Then The signup page should be displayed

  Scenario: Invalid Signup with Slideshare website
          When The user clicks on Signup link
          And Clicks on Join now link
          And Enters invalid email and valid username and password
          And Clicks on Join now button
          Then Error message for invalid email address should be displayed to the user






