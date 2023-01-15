function rotateImages(interval) {
    var rock = $('.templates .rps.rock').clone();
    var paper = $('.templates .rps.paper').clone();
    var scissors = $('.templates .rps.scissors').clone();
    var computerMove = $('.computer-move');
    function showPaperAfterInterval() {
        setTimeout(function() {
            computerMove.html(paper);
        }, interval);
    }
    computerMove.html(rock);
    setTimeout(function() {
        computerMove.html(scissors);
        showPaperAfterInterval();
    }, interval);
}

function computerChoice() {
    var rps = { 0: 'rock', 1: 'paper', 2: 'scissors' };
    var choice = rps[Math.floor(Math.random() * 3)];
    return $('.templates .rps.' + choice).clone();
}

function displayComputerChoice(image, callback) {
    var fastInterval = 210;
    var slowInterval = 510;
    var originalRotation = setInterval(rotateImages, fastInterval, fastInterval / 3);
    function showComputerChoiceAfterInterval() {
        setTimeout(function() {
            clearInterval(newRotation);
            $('.computer-move').html(image);
            if(callback) {
                callback();
            }
        }, slowInterval * 2);
    }

    setTimeout(function() {
        clearInterval(originalRotation);
        newRotation = setInterval(rotateImages, slowInterval, slowInterval / 3);
        showComputerChoiceAfterInterval();
    }, fastInterval * 4);
}

$(function() {
    var image = computerChoice();
    displayComputerChoice(image);
});
