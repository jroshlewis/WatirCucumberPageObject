require 'watir'
require 'webdrivers'
require 'page-object'

=begin
  if ENV [firefox]
         browser = Watir::Browser.new :firefox

   else  browser = Watir::Browser.new
  end

=end



        Before do
          browser = Watir::Browser.new :firefox
          $browser = browser

          $browser.window.maximize
          $browser.cookies.clear

          $browser.goto("https://www.slideshare.net/")
        end






        After   do
          $browser.close
        end