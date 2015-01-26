Feature: Merge Articles
  As a blog administrator
  I dont want non-logged in users merging articles
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following articles exist
    | id | title    | body          |
    | 3  | Foobar   | LoremIpsum    |
    | 4  | Foobar 2 | LoremIpsuma 2 |
    
  Scenario: When articles are merged, the merged article should contain the text of both previous articles
  Given I am on the article page for "Foobar"
  Then I should see "LoremIpsum"
  When I fill in "merge_with" with "4"
  And I press "Merge"
  Then I should see "LoremIpsum LoremIpsuma 2"
