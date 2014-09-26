


//remove this eventually
buildBoard();

$('.column').on('click', function(){

  console.log($(this).attr('id'));

  $.ajax({
    type: 'post',
    url: '/move',
    dataType: 'json',
    data: {column: $(this).attr('id')}

  }).done(function(serverData){

    boardState = boardPrepare(serverData)
    displayBoard(boardState);

  }).always(function(){

  })

})


setInterval(function(){
  alert("Hello")
}, 3000);



$('.reset-button').on('click', function(){

})







var boardPrepare = function(boardStringArray){

  boardCharacterNestedArray = $.map(boardStringArray, function(val, i){

    var newColumn = []
    var newAry = val.split('')

    newAry.forEach(function(x){  x = parseInt(x) })

    newColumn.push(newAry)

    return newColumn
  })

  return boardCharacterNestedArray
}
// var testBoard = ["012000", "012012","111111","000000","222222","121212","012012"]
// testBoard = boardPrepare(testBoard);


