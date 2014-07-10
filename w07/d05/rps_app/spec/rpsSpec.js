describe("Rock, Paper, Scissors", function(){
  it('has outcome', function(){
    var outcome = move("rock", "rock");
    expect(outcome).not.toBeNull();
  });
  it('paper beats rock', function() {
      var winningMove = move("paper", "rock");
      expect(winningMove).toEqual("paper");
  });
  it('rock beats scissors', function() {
      var winningMove = move("rock", "scissors");
      expect(winningMove).toEqual("rock");
  });
  it('paper loses to scissors', function() {
      var winningMove = move("paper", "scissors");
      expect(winningMove).toEqual("scissors");
  });
  it('equal moves are a draw', function() {
      var winningMove = move("paper", "paper");
      expect(winningMove).toEqual(false);
  });
  it('player has a score', function(){
      expect(player1.score.class).toEqual(integer)
  });
  it('draw resets both palyers scores to zero', function() {
      var tie = move("paper", "paper");
      expect(player1.score).toEqual(0);
      expect(player2.score).toEqual(0);
  });
  it('player with winningMove is winningPlayer', function(){
     var winningPlayer = result(player1, player2);
     expect(winningPlayer).toEqual(player1);
  });
  it('score of winningPlayer goes up by one', function(){
    var winningPlayer = player1;
    var win = move("scissors", "paper");
    expect(player1.score).toEqual(player1.score+1);
  });
  it('score of losingPlayer goes to zero', function(){
    var losingPlayer = player2;
    var lose = move("paper", "scissors");
    expect(player2.score).toEqual(0);
  });
  it('player with 3 wins is champion', function(){
    var player1 = winningPlayer;
    expect(champion).toEqual(player1);
  });
  it('when there is a champion, game ends', function(){
    var player1 = champion;
    expect(gameOn).toEqual(false);
  });
  it('new game must be started before moves are made', function(){
    var gameOn = false;
    expect(game).toEqual(off);
  });
});
