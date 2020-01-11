class AddPhotoToTripReport < ActiveRecord::Migration[5.2]
  def change
    add_column :trip_reports, :photo, :string
  end
end
