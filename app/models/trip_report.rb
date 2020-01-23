class TripReport < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :climb
  belongs_to :user

  STATUS = ['IN', 'not IN', 'Sketchy', 'Status Unknown']

  validates :date, :status, presence: true
  validates :content, length: { minimum: 50, maximum: 1000 }

  validate :date_cannot_be_in_the_past

  def date_cannot_be_in_the_past
    if date > Date.today
      errors.add(:date, "Can't create a TR for a future date")
    end
  end
end
