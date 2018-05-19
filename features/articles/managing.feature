Feature: Managing articles

  As a blogger I want to be able to manage my articles

  Background:
   Given it is currently 2018-05-19

  Scenario: Adding a new article
    Given I sets up a article with the following information:
      | Published | Yes                                                                               |
      | Title     | FP vs OO                                                                          |
      | Headline  | I think this comes from the notion that FP and OO are somehow mutually exclusive. |
      | Image     | article.jpg                                                                       |
    Then I should see "Your article was added successfully"
    And the following articles should be listed:
      | CreatedAt        | Published | Title    |
      | 2018-05-19 00:00 | Yes       | FP vs OO |
