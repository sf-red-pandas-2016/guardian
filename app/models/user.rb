class User < ApplicationRecord
  has_many :events
  has_many :friends
  has_many :drones
end
