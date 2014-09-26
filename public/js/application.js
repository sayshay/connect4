


//remove this eventually
buildBoard();

$('.column').on('click', function(){

  console.log($(this).attr('id'));

  $.ajax({
    type: 'post',
    url: '/move/:id',
    dataType: 'json',
    data: {column: $(this).attr('id'), player: }

  }).done(function(serverData){

    boardState = boardPrepare(serverData)
    displayBoard(boardState);

  }).always(function(){

  })

})


var testBoard = ["012000", "012012","111111","000000","222222","121212","012012"]

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
testBoard = boardPrepare(testBoard);
displayBoard(testBoard);
console.log(testBoard)

// setUpBoard(){
//   buildBoard();
//   pickPlayerTurn();
// }();

playerTurn = 1;

// while(gameOver = false){
//   function Turn (){
//     collectMove();
//     function ajaxMagic(){

      // sendAjaxRequest({player: 1, column: 0 });


//     }();
//     switchPlayerTurn();
//   }();
// }


// var sendAjaxRequest = function(routeUrl){
//   $.ajax({
//   type: 'post',
//   url: routeUrl.toString(),
//   dataType: 'json',

//   }).done(function(serverData){

//     displayBoard(serverData.boardState);

//   }).fail(function(){

//   }).always(function(){

//   });
// };



// while(gameOver = false){

//   player1Turn(

//     submitMove();
//   );

//   player2Turn(function(){
//     setInterval(function(){
//       $.ajax({
//       })
//         .done(function(){
//           buildBoard()

//         })
//         .fail(function(){

//         })
//         .always(function(){

//         })


//     }, 2000);

//   })

// }






