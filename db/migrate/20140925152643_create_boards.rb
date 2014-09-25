class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |b|
      b.string :column
      b.timestamps
    end
  end
end
