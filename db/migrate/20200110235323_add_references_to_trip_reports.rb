class AddReferencesToTripReports < ActiveRecord::Migration[5.2]
  def change
    add_reference :trip_reports, :climb, foreign_key: true
    add_reference :trip_reports, :user, foreign_key: true
  end
end
