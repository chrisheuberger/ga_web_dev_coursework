class CreateDogWalkers < ActiveRecord::Migration
  def change
    create_table :dog_walkers do |t|
      t.string :name
      t.string :hair
      t.integer :walking_pace

      t.timestamps
    end
  end
end
