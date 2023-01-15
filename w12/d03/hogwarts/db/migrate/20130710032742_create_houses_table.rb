class CreateHousesTable < ActiveRecord::Migration
  def change
    create_table :house do |t|
      t.string :name
      t.references :students

      t.timestamps
    end
  end
end
