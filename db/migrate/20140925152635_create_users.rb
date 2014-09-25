class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |b|
      b.string :name
      b.timestamps
    end
  end
end
