get '/' do
  erb :index
end

post '/move' do
  # real_index = params[:column].to_i +1

  index = params[:column].to_i
  index += 1

  column = Board.get_column(index)
  piece = Board.determine_turn
  Board.place_peice_in_column(column, piece)
  answer = Board.check_row_winner || Board.check_column_winner || Board.check_diagonals
  content_type :json
  json = {board: Board.all.sort.map{|column| column.column},complete: answer, winner: piece}.to_json
end

get '/refresh' do
  json = {board: Board.all.sort.map{|column| column.column}}.to_json
end


get '/reset' do
  `rake db:reset`
  `rake db:seed`
  json = {board: Board.all.sort.map{|column| column.column}.to_json
end
