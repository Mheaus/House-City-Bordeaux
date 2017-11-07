class Room < ApplicationRecord
  belongs_to :flat

  has_attachments :photos, maximum: 8
end
