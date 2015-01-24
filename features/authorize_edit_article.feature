Feature: Write Articles as non-logged in dude
  As a blog administrator
  I dont want non-logged in users merging articles

  Background:
    Given the blog is set up
    And the following articles exist
    | id | title    | body         |
    | 1  | Foobar   | LoremIpsum   |
    | 2  | Foobar 2 | LoremIpsum 2 |

  Scenario: A non-admin cannot merge articles
  Given I am on the article page for "Foobar"
  Then I should be on the login page
