#require 'page-object'
class HomePage
  include PageObject

      # object Repository
      text_field(:searchBox, :id => 'nav-search-query')
      button(:searchButton, :type => 'submit')
      link(:uploadLink, :text => 'Upload')
      link(:loginLink, :id => 'login')
      link(:signupLink, :id => 'signup')
      link(:presentationCourses, :text => 'Presentation Courses')


      def verifyTitle
        title = $browser.title

        if (title.eql?"Share and Discover Knowledge on LinkedIn SlideShare")
          puts "Title matched."
         else puts "Title mismatch."
        end
      end

      def enterSearchInput(searchInput)
       self.searchBox = searchInput
      end

      def clickSearchButton
        self.searchButton
        SearchResultPage.new($browser)
      end


      def verifyLoginLink
          self.loginLink
          LoginPage.new($browser)
      end


      def verifySignupLink
            self.signupLink
            SignupPage1.new($browser)
      end









end