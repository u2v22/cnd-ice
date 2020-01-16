class AddStatusToClimbs < ActiveRecord::Migration[5.2]
  def change
    add_column :climbs, :status, :string, default: "unknown"
  end
end
