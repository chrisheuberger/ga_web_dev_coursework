function shoot(moveA, moveB) {
    var winningRules = {
        'rock': 'scissors',
        'paper': 'rock',
        'scissors': 'paper'
    }
    if(winningRules[moveA] == moveB) {
        return moveA;
    }
    if(winningRules[moveB] == moveA) {
        return moveB;
    }
    return false;
}

function computerChooses() {
    var randomNumber = Math.floor(Math.random() * 3);
    var rps = {0: 'rock', 1: 'paper', 2: 'scissors'};
    return rps[randomNumber];
}

function showResult(userChoice, computerChoice) {
    var result = shoot(userChoice, computerChoice);
//    If only shoot did not return false...
//    $('.game .result').html(result + ' WINS! OH YEAH OH YEAH OH YEAH GIMME $20');
    if(result === userChoice) {
        $('.game .result').html("YOU WIN!");
    } else if(computerChoice === result) {
        $('.game .result').html("YOU LOSE!");
    } else {
        $('.game .result').html("TRY AGAIN!");
    }
}

$(function() {
    var choices = ['rock', 'paper', 'scissors'];
    $.each(choices, function(index, userChoice) {
        var buttonSelector = $('.choices .button.' + userChoice);
        function play() {
            var userDisplay = $('.templates .rps.' + userChoice).clone();
            $('.user-choice').html(userDisplay);
            var computerChoice = computerChooses();
            var computerDisplay = $('.templates .rps.' + computerChoice).clone();
            $('.computer-choice').html(computerDisplay);
            $('.announcer').html("VERSUS!");
            showResult(userChoice, computerChoice);
        }
        buttonSelector.on('click', play);
    });
});
