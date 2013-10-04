$(document).ready(function() {

    var canvas = $("#gameCanvas");
    var context = canvas.get(0).getContext("2d");
    context.font = "bold 30px 'courier new'"
    //context.textAlign = 'center';
  

    // Canvas dimensions
    var canvasWidth = canvas.width();
    var canvasHeight = canvas.height();
    var paused = true;
    
    // create a game object which keeps track of sentences, sentenceNumber, correctCount, etc
    var Game = function() {
        
        this.getSentences = function(level) {
            // lines is an array of sentences
            var result = false;
            var textFile = "/game/sentences" + level + ".html";
            $.ajax({
                url: textFile, 
                success: function(text) { result = text; },
                async: false
            });
            return result.split("\n");
        }

        this.sentenceNumber = 0;
        this.level = 0;
        this.sentences = this.getSentences(1);
        this.points = 0;

        this.addPoints = function() {
            this.points += 5;
            gameElements.gameDisplay.updateScore(this.points);
        }
        
        this.getUserLetter = function(e) {
            var charCode = e.which; // charCode will contain the code of the character inputted
            var letter = String.fromCharCode(charCode); // theChar will contain the actual character
            return letter;
        }

        this.clearCanvas = function() {
          context.clearRect(0, 0, canvasWidth, 210);
        }

        this.showNextSentence = function(newLevel) {
            if (newLevel === true) { this.sentenceNumber = 0; }
            else { this.sentenceNumber += 1; }
            gameElements.sentence = new Sentence(gameElements.game.sentences[gameElements.game.sentenceNumber]);
            this.clearCanvas();
            gameElements.cover.restartCover();
            gameElements.sentence.redraw();
        }

        this.newLevel = function(level) {
            gameElements.gameDisplay.updateLevel(); 
            this.sentences = this.getSentences(level);
            this.showNextSentence(true);
        }
    }

    var GameDisplay = function() {
        var _this = this;
        this.updateScore = function(points) {
            // update the UI to display the new score
            $("#score").html(points);
        }

        this.updateLevel = function() {
            console.log("you're in a new level");
        }

        $(".levelBox").click(function() {
            var level = this.id.split("_")[1];        
            gameElements.game.newLevel(level); 
        });
    }


    var go = true
    $( "#stopAnimation" ).click(function() {
        go = false;
    });

    var Cover = function() {
        this.x = canvasWidth/2 - 25;
        this.initialY = canvasHeight - 50;
        this.y = this.initialY; 
        this.boundary = 210;

        this.setState = function() {
            context.fillStyle = "rgba(0, 195, 209, 1)"; 
        }

        this.update = function() {
            this.setState();
            context.clearRect(0, this.boundary, canvasWidth, canvasHeight);
            context.fillRect(this.x, this.y, 50, 50);
            this.y = this.y - 1;
            if (this.y < (gameElements.sentence.y - 10)) 
            {
                gameElements.game.showNextSentence();
                this.restartCover();
            }
        }

        this.restartCover = function() {
            this.y = this.initialY; 
        }
    }

    var Sentence = function(sentenceString) {
        this.sentenceString = sentenceString; 
        this.correctCount = 0;
        this.y = 200;
        this.x = canvasWidth - 10;

        this.getLetters = function() {
            var letters = sentenceString.split("");
            return letters;
        }

        this.letters = this.getLetters();

        this.setState = function() {
            context.fillStyle = "rgba(45, 39, 97, 1)"; 
        }

        this.redraw = function() {
            this.setState();
            context.fillText (sentenceString, this.x, this.y);
        }

        this.getCurrentSnippet = function() {
            return this.letters.slice(0, this.correctCount).join("");
        }
    }

    var Highlighter = function() {
        this.width = 0;

        this.setState = function() {
            context.fillStyle = "rgba(255, 204, 0, 0.5)"; 
        }

        this.highlight = function(currentSnippet) {
            this.width = -(context.measureText(currentSnippet).width);
            this.setState();
            context.fillRect(gameElements.sentence.x, 175, this.width, 30);
        }
    }

    var InputHandler = function() {
        this.handleCorrectInput = function() {
            gameElements.game.clearCanvas();
            gameElements.sentence.redraw();
            gameElements.sentence.correctCount += 1;
            currentSnippet = gameElements.sentence.getCurrentSnippet();
            gameElements.highlighter.highlight(currentSnippet);
            // user completes a sentence
        }

        // check if user has completed the sentence such that a new sentence is necessary
        this.checkForNextSentence = function() {
            if (gameElements.sentence.correctCount === gameElements.sentence.letters.length)
            {
                gameElements.game.showNextSentence(); 
                gameElements.game.addPoints();
            }  
            return gameElements.sentence;
        }

        this.handleIncorrectInput = function() {
          console.log("wrong letter");
        }
    }
 
    Elements = function() {
        this.game = new Game();
        this.sentence = new Sentence(this.game.sentences[this.game.sentenceNumber]);
        this.inputHandler = new InputHandler();
        this.highlighter = new Highlighter();
        this.cover = new Cover();
        this.gameDisplay = new GameDisplay();
    }
    // global object which contains all of the game elements
    gameElements = new Elements();
    
    function runGame() {
        
        gameElements.sentence.redraw();

        function moveCover() {
            gameElements.cover.update(); 
            if (go === true) { setTimeout(moveCover, 33); }
        };

        moveCover();

        if (!paused)
        {
            $(window).keypress(function(e) {
                var letter = gameElements.game.getUserLetter(e);
                // prevent scrolling when space bar is hit
                if (letter === " ")
                    e.preventDefault();
                if (letter === gameElements.sentence.letters[gameElements.sentence.correctCount])
                {
                    gameElements.inputHandler.handleCorrectInput();
                    gameElements.inputHandler.checkForNextSentence();
                    console.log("points: " + gameElements.game.points);
                }
                // if the wrong letter in input
                else
                {
                    gameElements.inputHandler.handleIncorrectInput(); 
                }
            });
        }
    }

    function init(){
        setUpUi();
        runGame();
    }

    function setUpUi(){
       var startButton = $("#startButton");
       var stopButton = $("#stopButton");

       stopButton.hide();
       
       startButton.click(function(){
         $(this).hide();
         stopButton.show();
         paused = false;
         runGame();
       });

       stopButton.click(function(){
         $(this).hide();
         startButton.show();
         paused = true;
         // unbind the keydown listener
         $(window).unbind("keypress");
       });
    }

    init();

});

