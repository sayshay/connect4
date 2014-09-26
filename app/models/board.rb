class Board < ActiveRecord::Base
  # Remember to create a migration!
  has_many :games
  has_many :users, through: :games

def self.get_column(column_id)
   Board.find(column_id)
end

def self.place_peice_in_column(column, piece)
  piece_index = column.column.split("").count("0")
  if piece_index > 0
    array = column.column.split('')
    array[(piece_index-1)] = piece
    column.update(column: array.join(''))
 end
end

def self.determine_turn
  index = 1
  move_tally = 0
  7.times {
    column = Board.find(index).column.split("")
    move_tally += column.count("1") + column.count("2")
    index+=1
  }
  if move_tally%2 == 0
    whos_move = "1"
  else
    whos_move = "2"
  end
  whos_move
end

  def self.check_column_winner
    my_columns = Board.all
    my_columns.each do |column_obj|
      if column_obj.column.include?("1111") || column_obj.column.include?("2222")
        return true
      end
    end
    false
  end

  def self.check_row_winner
    my_columns = Board.all.sort
    columns_array = []
    my_columns.each do |column_obj|
      columns_array << column_obj.column.split('')
    end
    rows_array = columns_array.transpose
    rows_array.each do |row|
      if row.join('').include?("1111") || row.join('').include?("2222")
        return true
      end
    end
    false
  end
end

