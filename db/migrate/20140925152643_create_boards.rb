class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |b|
      b.string :column
      b.integer :player_move
      b.timestamps
    end
  end
end
