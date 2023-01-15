class CreateCows < ActiveRecord::Migration
  def change
    create_table :cows do |t|
      t.string :name
      t.references :farmer # t.integer farmer_id
      t.timestamps
    end
  end
end
