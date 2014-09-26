
var buildBoard = function(){
  for(var i = 0; i <7 ; i++){
    $('#board').append('<div class="column"></div>');

    for(var j = 0; j <6 ; j++){
      $('#board .column:last-child').append('<div class="spot"></div>');
    };
  };
};

var displayBoard = function(boardstate){

  for (var i = 1; i < 7; i ++){
    for (var j = 1; j < 6; j ++){
      $('#board .column:nth-child(' + (i).toString() + ') .spot:nth-child(' + (j).toString() + ')').css('background-color', 'purple');
      // var x = '#board .column:nth-child(' + 1.toString() + ') .spot:nth-child(' + 1.toString() + ')'
      // $(x).css('background-color', 'black');

    }
  }
};


// $('#board .column:nth-child(1)').css('background-color', 'red')

// $('.column .spot:nth-child(1)').css('background-color', 'green');
// $('#board .column:nth-child(1) .spot:nth-child(1)')
