class Flat < ApplicationRecord
  has_attachments :photos
  has_many :insights
  has_many :rooms
end
