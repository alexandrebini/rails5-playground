Feature: Managing articles

  As a blogger, I want to be able to manage my articles

  Background:
   Given it is currently 2018-05-19

  Scenario: Adding a published new article
    Given I sets up an article with the following information:
      | Published | Yes                                                                               |
      | Title     | FP vs OO                                                                          |
      | Content   | I think this comes from the notion that FP and OO are somehow mutually exclusive. |
      | Image     | article.jpg                                                                       |
    Then I should see "Your article was added successfully"
    And the following articles should be listed:
      | CreatedAt        | Published | Title    | Content                                    |
      | 2018-05-19 00:00 | Yes       | FP vs OO | I think this comes from the notion that... |

  Scenario: Adding a unpublished article
    Given I sets up an article with the following information:
      | Published | Yes      |
      | Title     | FP vs OO |
    Then I should see "Your article was added successfully"
    And the following articles should be listed:
      | CreatedAt        | Published | Title    | Content |
      | 2018-05-19 00:00 | No        | FP vs OO |         |

  Scenario: Adding a published article without title, content, or image
    Given I sets up an article with the following information:
      | Published | Yes |
      | Title     |     |
      | Content   |     |
    Then I should see "Title can't be blank"
    And I should see "Content can't be blank"
    And I should see "Image can't be blank"
