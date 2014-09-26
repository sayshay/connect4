
var buildBoard = function(){
  for(var i = 0; i <7 ; i++){
    $('#board').append('<div class="column" id="' +   i.toString()  + '"></div>');

    for(var j = 0; j <6 ; j++){
      $('#board .column:last-child').append('<div class="spot"></div>');
    };
  };
};


var displayBoard = function(boardstate){

  var classes = ['empty-spot', "player-one-pieces", 'player-two-pieces']

  for (var i = 0; i < 7; i ++){
    for (var j = 0; j < 6; j ++){
      $('#board .column:nth-child(' + (i+1).toString() + ') .spot:nth-child(' + (j+1).toString() + ')')
        .addClass(
          classes[
            boardstate[i][j]
          ]
        );
        console.log(boardstate[i][j]);
    }
  }
};

// boardstate: [
//               [
//                 "0","1","2"
//               ]
//             ]

// $('#board .column:nth-child(1)').css('background-color', 'red')

// $('.column .spot:nth-child(1)').css('background-color', 'green');
// $('#board .column:nth-child(1) .spot:nth-child(1)')
