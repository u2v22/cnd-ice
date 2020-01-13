class AddPhotosToTripReport < ActiveRecord::Migration[5.2]
  def change
    add_column :trip_reports, :photos, :string
  end
end
