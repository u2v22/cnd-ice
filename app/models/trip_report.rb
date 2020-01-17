class TripReport < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :climb
  belongs_to :user

  STATUS = ['Climb IN', 'Not IN', 'Sketchy', 'Unknown']
end
