class CreateStudentsTable < ActiveRecord::Migration
  def change
    create_table :students do
      t.string :name
      t.integer :house_id

      t.timestamps
    end
  end
end




