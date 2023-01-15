class CreateLinesStations < ActiveRecord::Migration
  def change
    create_table :lines_stations do |t|
      t.references :station
      t.references :line
    end
  end
end
