describe('RPS Game', function() {
    it('paper beats rock', function() {
        var winningMove = shoot("paper", "rock");
        expect(winningMove).toEqual("paper");
    });
    it('rock beats scissors', function() {
        var winningMove = shoot("rock", "scissors");
        expect(winningMove).toEqual("rock");
    });
    it('paper loses to scissors', function() {
        var winningMove = shoot("paper", "scissors");
        expect(winningMove).toEqual("scissors");
    });
    it('equal moves are a draw', function() {
        var winningMove = shoot("paper", "paper");
        expect(winningMove).toEqual(false);
    });

});


/*
        var firstPlayerWins = doesBeat("paper", "rock"); // true
        var paperBeatsRock = evaluate("paper", "rock"); // true
        var whoWins = wins("paper", "rock"); // "paper"

  */
