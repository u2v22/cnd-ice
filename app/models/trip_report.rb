class TripReport < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :climb
  belongs_to :user
end
