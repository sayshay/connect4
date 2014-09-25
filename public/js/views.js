
var buildBoard = function(){
  for(var i = 0; i <=7 ; i++){
    $('.board').append('div').addClass('column')

    for(var i = 0; i <=7 ; i++){
      $('.column').append('div').addClass('spot')
    }
  }
}
