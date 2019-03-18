class SearchResultPage
    include PageObject

    #Object Repository
    span(:searchResult, :class => 'result-count')


          def verifySearchPageTitle
               searchPageTitle = $browser.title
               if (searchPageTitle.eql?"&#x27;watir&#x27; on SlideShare")
                 puts "Search Page Title Matched"
                else puts "Search Page Title Mismatched"
               end
          end


          def verifySearchResult
                result = self.searchResult
                if (result.eql?"Page 1 of 603 results for watir")
                  puts "Result verified. Test case pass"
                else puts "Result verified. Test case Fail"
                end

          end

end