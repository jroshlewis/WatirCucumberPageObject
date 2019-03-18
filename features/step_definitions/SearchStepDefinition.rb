
Given /^The user is on the home page of Slideshare website$/ do
        @homePage = HomePage.new($browser)

        @homePage.verifyTitle

end


When /^The user enters valid input on search text box$/ do
        @homePage.enterSearchInput("watir")
end


And /^Clicks on search button$/ do
      @searchResultPage = @homePage.clickSearchButton
end

Then /^Search result as per search input should be displayed to the user.$/ do
      @searchResultPage.verifySearchResult
end

#Scenario 2
When /^The user clicks on login link$/ do
      @loginPage = @homePage.verifyLoginLink
end

Then /^Login form should be displayed to the user$/ do
      @loginPage.verify_pageTitle
end


#Scenario 3
And /^The user enters invalid usename and valid password$/ do


end

And /^Clicks on login button$/ do
      @loginPage.verifyInvalidLogin("edsa","jsdl3r")
end

Then /^Error message should be displayed to the user$/ do
      @loginPage.verifyErrorMessage
end


#Scenario 4
When /^The user clicks on Signup link$/ do
  @signupPage1 = @homePage.verifySignupLink
end

Then /^The signup page should be displayed$/ do
      @signupPage1.verifySignupPageTitle
end

#Scenario 5
And /^Clicks on Join now link$/ do
   @signupPage2 = @signupPage1.verifySignupPage2
   @signupPage2.verifySignupPage2Title
end

And /^Enters invalid email and valid username and password$/ do
      @signupPage2.enterCredentials("sdfs", "sdfdss", "asdd121")
end

And /^Clicks on Join now button$/ do
      @signupPage2.clickOnJoinNowButton

end
Then /^Error message for invalid email address should be displayed to the user$/ do
      @signupPage2.verifyErrorMessage
end
