class Climb < ApplicationRecord
  has_many :trip_reports, dependent: :destroy
  belongs_to :favorites, optional: true
  has_paper_trail

  validates :name, :latitude, :longitude, :grade, :approach, :avi, presence: true
end
