class SignupPage2
    include PageObject


    #object Repository
      text_field(:email, :id => 'j-user-email')
      text_field(:username, :id => 'j-user-login')
      text_field(:password, :id => 'j-user-password')
      checkbox(:i)
      button(:joinNow, :text => 'Join now')
       small(:errorMsg, :text => 'Email is invalid.')



  # Actions
          def verifySignupPage2Title
            sP2title = $browser.title
            if (sP2title.eql?"Join SlideShare")
              puts "Signup page 2 title matched"
            else puts "Signup page 2 title mismatched"
            end

          end



          def enterCredentials(email, username, password)
                self.email = email
                self.username = username
                self.password = password

          end

          def clickOnJoinNowButton
                self.joinNow
          end

          def verifyErrorMessage
              errorMsg= self.errorMsg
              if(errorMsg.eql?"Email is invalid.")
                puts "Error Message verified. Testcase pass"
               else puts "Test case fail"
              end
          end

end