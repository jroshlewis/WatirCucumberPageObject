class LoginPage
     include PageObject

      # object Repository
      text_field(:userLogin, :id => 'user_login')
      text_field(:password, :id => 'user_password')
      checkbox(:rememberMe, :id => 'remember')
      button(:login, :id => 'login_from_loginpage')
      div(:errorMsg, :text => 'Incorrect username/email or password.')


  #Actions
  def verify_pageTitle
    loginPageTitle = $browser.title
      puts loginPageTitle
    if (loginPageTitle.eql?"Log in to SlideShare")
      puts "Login Page title matched"
     else puts " Login page title mismatched"
    end
  end

  def verifyInvalidLogin(username, password)
        self.userLogin = username
        self.password = password
        #self.rememberMe
        self.login
  end

  def verifyErrorMessage
      self.errorMsg
      if(errorMsg.eql?"Incorrect username/email or password.")
        puts "Error Message Verified. Testcase pass"
       else puts "Error message verification failed. Testcase failed"
      end
  end

end