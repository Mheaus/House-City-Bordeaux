class Flat < ApplicationRecord
  has_many :insights
  has_many :rooms
end
