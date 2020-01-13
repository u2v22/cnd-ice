class TripReport < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  mount_uploaders :photos, PhotoUploader
  belongs_to :climb
  belongs_to :user
end
