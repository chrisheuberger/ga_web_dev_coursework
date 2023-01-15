class CreateWalks < ActiveRecord::Migration
  def change
    create_table :walks do |t|

      t.references :dog
      t.references :dog_walker

      t.string :destination
      t.date :day
      t.boolean :is_success

      t.timestamps
    end
  end
end
