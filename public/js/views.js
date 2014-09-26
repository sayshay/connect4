
var buildBoard = function(){
  for(var i = 0; i <7 ; i++){
    $('#board').append('<div class="column"></div>');

    for(var j = 0; j <6 ; j++){
      $('#board .column:last-child').append('<div class="spot"></div>');
    };
  };
};


var displayBoard = function(boardstate){
  var classes_hash = {
    "0": '.empty-spot',
    "1": ".player-one-pieces",
    "2": '.player-two-pieces'
  }

  for (var i = 1; i < 8; i ++){
    for (var j = 1; j < 7; j ++){
      // $('#board .column:nth-child(' + (i).toString() + ') .spot:nth-child(' + (j).toString() + ')').css('background-color', 'purple');
      $('#board .column:nth-child(' + (i).toString() + ') .spot:nth-child(' + (j).toString() + ')').addClass(
            classes_hash[
              boardstate[i][j]
            ]
          );
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
