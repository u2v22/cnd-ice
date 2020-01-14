class Climb < ApplicationRecord
  has_many :trip_reports, dependent: :destroy

end
