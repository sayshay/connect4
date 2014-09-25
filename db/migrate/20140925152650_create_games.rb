class CreateGames < ActiveRecord::Migration
  def change
      create_table :games do |b|
        b.integer :user_id
        b.integer :board_id
        b.timestamps
      end
  end
end
