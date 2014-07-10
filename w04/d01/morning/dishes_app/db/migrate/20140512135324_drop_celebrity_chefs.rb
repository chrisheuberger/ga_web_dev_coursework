class DropCelebrityChefs < ActiveRecord::Migration
  def up
    drop_table :celebrity_chefs
  end
  def down
    create_table :celebrity_chefs do |t|
      t.string :name
      t.integer :age
      t.boolean :bleached_goatee
  end
  end
end
