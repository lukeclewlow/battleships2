
Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Landing on page
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "Would you like to play Battleships?!"
    

  Scenario: Registration
    When I enter "Bill" within "Player 1"
  	Then I should see "Thank you Bill, you are now Player 1"
    Then I should see "You are player 1"    
    When I enter "Ben" within "Player 2"
    Then I should see "Thank you Ben, you are now Player 2"
    Then I should see "You are player 2"


