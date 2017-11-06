class Room < ApplicationRecord
  belongs_to :flat
  mount_uploaders :photos, PhotoUploader
end
