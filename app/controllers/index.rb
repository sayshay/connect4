get '/' do
  erb :index
end

get '/move/:id' do
  column = get_column(params[:id])
  peice = set_peice
  place_peice_in_column(column, peice)
end


def get_column(column_id)
  Board.find(column_id)
end

def place_peice_in_column(column, peice)
  peice_index = column.split("").count("0") - 1
  column[peice_index] = peice
end

def set_peice
  peice_container = ["1","2"]
  peice_index = 0

end
