class Climb < ApplicationRecord
  has_many :trip_reports, dependent: :destroy
  belongs_to :favorites, optional: true
end
