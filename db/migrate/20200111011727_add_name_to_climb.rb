class AddNameToClimb < ActiveRecord::Migration[5.2]
  def change
    add_column :climbs, :name, :string
  end
end
