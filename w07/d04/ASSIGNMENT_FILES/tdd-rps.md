# TDD: Rock, Paper, Scissors

Create a Jasmine test suite to help you create the game Rock, Paper, Scissors. The rules are explained from small to big. Read them carefully and make sure there are no hidden or unclear requirements. If anything smells fishy... Ask!

## Guidelines
### Code-writing
* The absolute first thing you need to do is set up Jasmine in a new directory.
* This might end up being a portfolio piece, so consider creating a new git repo for this under your projects directory.
* Do not use console.log. Just return strings where needed.

### Meta-code-writing
* First make it work, then make it right, then make it small, then make it fast. 
* Red-Green-Refactor. Don't forget the refactor step. You don't HAVE to refactor at EVERY step, but you should always CONSIDER whether you need to refactor.

### Code management
* Commit after every test goes green.
* Commit after every refactor.
* Do not push too often. You may want to do a git reset and undo a commit or two if you realize you went down an unhappy path. If you find yourself wanting to reset/undo after you push, you'll want to check out the 'git revert' command, which creates a new commit with a set of changes to undo a particular commit.

## The rules of the game:

* It is a two-player game
* There are three possible moves:
	* Rock
	* Paper
	* Scissors
* Winning conditions:
	* Rock crushes Scissors
	* Scissors cut Paper
	* Paper covers Rock
* A player wins the game if they have three sequential victories
* In case of a draw or a loss, the sequence is reset
* In case of a loss, the other player's winning sequence is incremented by one
* Once the game is won, attempting to play further moves results in a message indicating that a game has to be started before more moves can be played.
* If you try to play a move before you start a game, you should get a message telling you that a game has to be started before moves can be played.


### BONUS

Implement Rock-Paper-Scissors-Lizard-Spock :

* Scissors cut paper
* Scissors decapitate lizard
* Paper covers rock
* Paper disproves Spock
* Rock crushes lizard
* Rock crushes scissors
* Lizard poisons Spock
* Lizard eats paper
* Spock smashes scissors
* Spock vaporizes rock

### BONUS
* Display the appropriate verb as shown by the above list when returning the result.

### BONUS
* Hook it to an HTML page!
* It would be very cool if you had records of the sequences of moves in each game on the page, too.

### BONUS
* You did test-drive the HTML hook, didn't you? If not, don't worry, the hangman screencasts will give you a feel for how to do this. Then you should come back to this and TDD adding it to the HTML page.
