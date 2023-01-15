class DropChefs < ActiveRecord::Migration
  # The `change` method is insufficient

  # def change
  #   drop_table :celebrity_chefs
  # end

  def up
    drop_table :celebrity_chefs
  end

  def down
    create_table :celebrity_chefs do |t|
      t.string :name
      t.integer :age
      t.boolean :bleached_goatee
      t.timestamps
    end
  end
end
