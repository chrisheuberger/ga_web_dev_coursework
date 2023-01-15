class CreateHousesTable < ActiveRecord::Migration
  def up
    create_table :house do
      t.string :name
      t.references :students
    end
  end

  def down
  end
end
