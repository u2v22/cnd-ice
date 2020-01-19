class Climb < ApplicationRecord
  has_many :trip_reports, dependent: :destroy

  scope :status, -> (status) { where status: status }
  scope :grade, -> (grade) { where grade: grade }
  scope :location, -> (region) { where region: region }
  scope :contains, -> (grade) { where("grade like ?", "%#{M}%") }
  scope :avi, -> (avi) { where avi: avi }
end
