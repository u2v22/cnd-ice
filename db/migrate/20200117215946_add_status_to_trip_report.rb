class AddStatusToTripReport < ActiveRecord::Migration[5.2]
  def change
    add_column :trip_reports, :status, :string, default: 'Status Unknown'
  end
end
