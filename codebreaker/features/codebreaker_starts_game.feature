Feature: code-braeker starts game

    AS a code-braeker
    I want to start a game
    So that I can brake the code

  Scenario: start game
    Given I am not yet playing
    When I start a new game
    Then I should see "Welcome to Codebraker!"
    And I shold see "Enter guess"