
Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Landing on page
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "Would you like to play Battleships?!"
    

  Scenario: Registration
  	When I type in name
  	Then I should see "Thank you Bill, you are now registered"
