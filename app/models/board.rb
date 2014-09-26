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
def self.check_diagonals
  board = Board.all.sort
  ds = []
  board.each do |col_obj|
    ds << col_obj.column
  end
  d1 = ds[0][2] + ds[1][3] + ds[2][4] + ds[3][5]
  d2 = ds[0][1] + ds[1][2] + ds[2][3] + ds[3][4] + ds[4][5]
  d3 = ds[0][0] + ds[1][1] + ds[2][2] + ds[3][3] + ds[4][4] + ds[5][5]
  d4 = ds[1][0] + ds[2][1] + ds[3][2] + ds[4][3] + ds[5][4] + ds[6][5]
  d5 = ds[2][0] + ds[3][1] + ds[4][2] + ds[5][3] + ds[6][4]
  d6 = ds[3][0] + ds[4][1] + ds[5][2] + ds[6][3]

  d7 = ds[6][2] + ds[5][3] + ds[4][4] + ds[3][5]
  d8 = ds[6][1] + ds[5][2] + ds[4][3] + ds[3][4] + ds[2][5]
  d9 = ds[6][0] + ds[5][1] + ds[4][2] + ds[3][3] + ds[2][4] + ds[1][5]
  d10 = ds[5][0] + ds[4][1] + ds[3][2] + ds[2][3] + ds[1][4] + ds[0][5]
  d11 = ds[4][0] + ds[3][1] + ds[2][2] + ds[1][3] + ds[0][4]
  d12 = ds[3][0] + ds[2][1] + ds[1][2] + ds[0][3]
  da = []
  da << d1 << d2 << d3 << d4 << d5 << d6 << d7 << d8 << d9 << d10 << d11 << d12
  p d1
  p d2
  p d3
  p d4
  p d5
  p d6
  da.each do |diagonal|
    if diagonal.include?("1111") || diagonal.include?("2222")
      return true
    end
  end
    false
end

end

