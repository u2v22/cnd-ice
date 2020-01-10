class CreateClimbs < ActiveRecord::Migration[5.2]
  def change
    create_table :climbs do |t|
      t.text :description
      t.string :avi
      t.string :approach
      t.string :grade
      t.string :region
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
