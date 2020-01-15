class AddStatusToClimbs < ActiveRecord::Migration[5.2]
  def change
    add_column :climbs, :status, :string
  end
end
