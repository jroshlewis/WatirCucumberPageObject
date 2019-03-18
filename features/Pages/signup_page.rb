class SignupPage1
      include PageObject

  # Object Repository for Signup page
  link(:joinNow, :text => 'Join now')









 # Actions

  #verify page title
      def verifySignupPageTitle
        pageurl = $browser.url
        if (pageurl.eql?"https://www.slideshare.net/w/signup")
          puts "Signup page URL matched"
         else puts "Signup page URL mismatched"
        end
      end

      def verifySignupPage2
          self.joinNow
          SignupPage2.new($browser)

      end



end