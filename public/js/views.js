
var buildBoard = function(){
  for(var i = 0; i <7 ; i++){
    $('#board').append('<div class="column"></div>');

    for(var j = 0; j <6 ; j++){
      $('#board .column:last-child').append('<div class="spot"></div>');
    };
  };
}();
