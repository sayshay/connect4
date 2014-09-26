get '/' do
  erb :index
end

get '/move/:id' do
  column = Board.get_column(params[:id])
  piece = Board.determine_turn
  Board.place_peice_in_column(column, piece)
  content_type :json
  Board.all.sort.map{|column| column.column}.to_json
end
