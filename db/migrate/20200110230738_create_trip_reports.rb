class CreateTripReports < ActiveRecord::Migration[5.2]
  def change
    create_table :trip_reports do |t|
      t.date :date
      t.text :content

      t.timestamps
    end
  end
end
