//******************** MODEL ********************//
function Board(){
	this.rows = [[],[],[],[],[],[]];
	this.columns = [[],[],[],[],[],[],[]];
	this.players = [];
};

Board.prototype = {
	addPiece: function(column){
		var newPiece;
		var newRow = this.columns[column].length;
		var domPosition;
		var checkVals;


		if (this.columns[column].length >= 6){
			console.log("adios")
		}
		else {
			console.log("whatup");
			newPiece = new Piece(currentColor);
			this.rows[newRow][column] = newPiece
			// this.rows[newRow].splice(column, 0, newPiece);
			// this.rows[newRow].push(newPiece);
			this.columns[column].push(newPiece);

			domPosition = $('.'+rowKeys[newRow]+'.'+ (column + 1))
			updateColor(domPosition, currentColor)

			checkVals = domPosition.attr('class').split(/\s+/)
			newPiece.values = checkVals


			checkWinner(checkVals, this)
			switchColor()
		}
	}
}

function Piece(color){
	this.color = color;
	this.values = []
};


//************************************************//









//********************* VIEW *********************//

function drawBoard(){
	var createBoard = $('#board')
	var rowClasses = ['a','b','c','d','e','f']
	for (var i = 1; i < 7; i++){
		createBoard.append('<tr id="row' + i + '"></tr>')
		var newRow = $('#row' + i)
		for (var col = 1; col < 8; col++){
			newRow.append('<td class="' + rowClasses[rowClasses.length - 1] + ' ' + col + '" data-column-id="' + (col -1) + '"></td>')
		}
		rowClasses.pop()
	}
}

function updateColor(dom, color){
dom.css('background-color', color)
}


//************************************************//














//********************* CONTROLLER *********************//
$(document).ready(function() {
	drawBoard();
	addDiagonals();
	gameBoard = new Board();
	addClickEventListener();
	rowKeys = ['a', 'b', 'c', 'd', 'e', 'f']
	currentColor = "red";
	player1 = prompt("Please enter the name of player 1", "type name here");
	player2 = prompt("Please enter the name of player 2", "type name here");

	$('#welcome').innerHTML = "Welcome to our JS Connect Four Game, " + player1 + " and " + player2 + ".";

});


function resetBoard() {
		$("#board").empty();
	drawBoard();
	addDiagonals();
	gameBoard = new Board();
	addClickEventListener();
	currentColor = "red";
}



//*****************************************************//


// add to the document.ready function above

function addClickEventListener() {
	for (var i = 0; i < 7; i++) { // 7 references num board columns
		$('.' + (i +1)).on("click", function(){ // i references column classes
			// console.log(this.attr)
        var clickIndex = $(this).data("column-id")
        console.log(clickIndex)
					gameBoard.addPiece(clickIndex); //i references row
		})
	}
}

function removeClickEventListener() {
	$("td").off();
}



// Remember usage .data()
//  <p data-foo>  </p>
// $("p").data("foo")


//*****************************************************//
function switchColor(){
	if (currentColor === "red"){
		currentColor = "black";
	}	else {
			currentColor = "red";
		}
}

function checkWinner(values, board){
	var checks = [[],[],[],[]]
	var currentVal
	for (var i = 0; i < values.length; i ++){    // iterates through the check values passed as argument
		currentVal = values[i]

		for (var row = 0; row < 6; row++){    // iterates through each row of the board object passed as argument

			for (var piece = 0; piece < board.rows[row].length; piece++){    // iterates through every piece in the currently checked row
				var pieceObject = board.rows[row][piece]
				// debugger
				if (pieceObject != undefined){
					if (pieceObject.values.indexOf(currentVal) >= 0){
						checks[i].push(pieceObject.color);
					}
				}
			}
		}
		console.log(checks[i])
	}
// debugger
	for (var i = 0; i < checks.length; i ++){
		// console.log (checks[i]);
		var count = 1
		var typeOfWin
		var previousColor = ""
		for (var color = 0; color < checks[i].length; color ++){

			if (checks[i][color] == previousColor){
				count += 1;
				if (count == 4){
					var gameWinner
					var loser
					if(currentColor == "red") {
						gameWinner = player1;
						loser = player2;
						console.log("current color is red")
					} else {
						gameWinner = player2;
						loser = player1;
						console.log("current color is black")
					}

					if (i == 0) {
						typeOfWin = "horizontally";
					} else if (i == 1) {
						typeOfWin = "vertically";
					} else {
						typeOfWin = "diagonally"
					}
						alert("Congratulations, " + gameWinner + "!!!  You beat " + loser + " by connecting 4 pieces " + typeOfWin + "!!!")
						removeClickEventListener();
					}
				} else {
				count = 1
			}
			previousColor = checks[i][color]
		}
	}
}



function addDiagonals() {
	//row 1
	$('.a.1').addClass("d3a");
	$('.a.2').addClass("d4a");
	$('.a.3').addClass("d5a");
	$('.a.4').addClass("d6a d1b");
	$('.a.5').addClass("d2b");
	$('.a.6').addClass("d3b");
	$('.a.7').addClass("d4b");
	//row 2
	$('.b.1').addClass("d2a");
	$('.b.2').addClass("d3a");
	$('.b.3').addClass("d4a d1b");
	$('.b.4').addClass("d5a d2b");
	$('.b.5').addClass("d6a d3b");
	$('.b.6').addClass("d4b");
	$('.b.7').addClass("d5b");
	//row 3
	$('.c.1').addClass("d1a");
	$('.c.2').addClass("d2a d1b");
	$('.c.3').addClass("d3a d2b");
	$('.c.4').addClass("d4a d3b");
	$('.c.5').addClass("d5a d4b");
	$('.c.6').addClass("d6a d5b");
	$('.c.7').addClass("d6b");
	//row 4
	$('.d.1').addClass("d1b");
	$('.d.2').addClass("d1a d2b");
	$('.d.3').addClass("d2a d3b");
	$('.d.4').addClass("d3a d4b");
	$('.d.5').addClass("d4a d5b");
	$('.d.6').addClass("d5a d6b");
	$('.d.7').addClass("d6a");
	//row 5
	$('.e.1').addClass("d2b");
	$('.e.2').addClass("d3b");
	$('.e.3').addClass("d1a d4b");
	$('.e.4').addClass("d2a d5b");
	$('.e.5').addClass("d3a d6b");
	$('.e.6').addClass("d4a");
	$('.e.7').addClass("d5a");
	//row 6
	$('.f.1').addClass("d3b");
	$('.f.2').addClass("d4b");
	$('.f.3').addClass("d5b");
	$('.f.4').addClass("d6b d1a");
	$('.f.5').addClass("d2a");
	$('.f.6').addClass("d3a");
	$('.f.7').addClass("d4a");

};


