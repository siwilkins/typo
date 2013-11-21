Feature: Merge Articles
  As a blog administrator
  In order to merge similar articles
  I want to be able to merge articles in a blog

  Background:
    Given the blog is set up
    And the following articles exist:
      | id  | title     | body                 | state     | type    |
      | 123 | Article 1 | I am an article      | published | Article |
      | 456 | Article 2 | I am another article | published | Article |
    And I am logged into the admin panel

  Scenario: Merge articles
    Given I am on the first article edit page
    And I fill in "merge_with" with "456"
    And I press "Merge"
    Then I should be on the admin content page
    And I should see "Article 1"
    And I should not see "Article 2"

