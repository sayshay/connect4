class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :games
  has_many :boards, through: :games
end
